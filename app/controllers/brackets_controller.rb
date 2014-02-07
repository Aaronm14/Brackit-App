class BracketsController < ApplicationController
     #before_action :set_tournament
  before_action :set_bracket, only: [:show, :edit, :update, :destroy]

  # GET /brackets
  # GET /brackets.json
  def index
    @brackets = Bracket.all
  end

  # GET /brackets/1
  # GET /brackets/1.json
  def show
    #@teams = Team where
    @bracket = Bracket.find(params[:id])
    @teams = Team.where("age_group_id = ?", @bracket[:age_group_id])
    @games = Game.where("bracket_id = ?", @bracket[:id])

    @numTeams = @teams.count
    @numGames = @numTeams - 1
  end

  # GET /brackets/new
  def new
    @bracket = Bracket.new


  end

  # GET /brackets/1/edit
  def edit
  end

  def add_teams(bracket_params)
    @bracket = Bracket.find(params[:id])
    #@teams = Team.all
    @teams = Team.where("age_group_id=@bracket.age_group_id")
    @numTeams = @teams.count
  end

  # POST /brackets
  # POST /brackets.json
  def create
    @bracket = Bracket.new(bracket_params)
    # @bracket.save
    @teams = Team.where("age_group_id = ?", bracket_params[:age_group_id])
    @numTeams = @teams.count
    @numGames = @numTeams - 1

    @bracket.save

    @bracketTEST = bracket_params()
    @bracketId = @bracket.id

    n = @numTeams
    round = 1
    while n >= 1 do
      n = n / 2
      for n in 1..n
        @game = Game.new(bracket_id: @bracket.id, round: round, home_team_id: nil, away_team_id: nil)
        @game.save
      end
      round += 1
    end

    @games = Game.where("bracket_id = ?", @bracket.id)

    #render :action => 'add_teams'
    redirect_to @bracket, notice: 'Bracket created successfully!'
    #redirect_to add_teams(@bracket)

    #respond_to do |format|
      # magic TODO check validity, then conditionally rediriect ..with bracket_params

#      if @bracket.save
#        format.html { redirect_to @bracket, notice: 'Bracket was successfully created.' }
#        format.json { render action: 'show', status: :created, location: @bracket }
#      else
#        format.html { render action: 'new' }
#        format.json { render json: @bracket.errors, status: :unprocessable_entity }
#      end
#    end
  end

  # PATCH/PUT /brackets/1
  # PATCH/PUT /brackets/1.json
  def update
    respond_to do |format|
      if @bracket.update(bracket_params)
        format.html { redirect_to @bracket, notice: 'Bracket was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bracket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brackets/1
  # DELETE /brackets/1.json
  def destroy
    @bracket.destroy
    respond_to do |format|
      format.html { redirect_to brackets_url }
      format.json { head :no_content }
    end
  end

  private
     #def set_tournament
          #@tournament = Tournament.find(params[:tournament_id])
     #end

    # Use callbacks to share common setup or constraints between actions.
    def set_bracket
      @bracket = Bracket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bracket_params
      params.require(:bracket).permit(:id, :tournament_id, :age_group_id)
    end
end
