class StoreBoardInformation
      neighborhood =
    {[0,0] => false,
      [0,1] => false,
      [0,2] => false,
      [1,0] => false,
       [1,1] => true,
        [1,2] => false,
         [2,0] => false,
          [2,1] => false,
           [2,2] => false
    }
#    start_over
end

class StoreCellInformation
  attr_reader :state, :position

  def initialize(state, position)
    @state = state
    @position = position
  end


def change_state
  @state = !state
end

def
#    find_neighbors
#    check_neighbor
  end


describe StoreCellInformation do
  subject {StoreCellInformation.new(true, [1, 1])}

  it 'should check state' do
    subject.state.should == true
  end
  it 'should change state' do
    subject.change_state
    subject.state.should == false
  end
it 'should find neighbors' do
  subject.find_neighbors.should == [[0,0], [0,1], [0,2], [1,0], [1,2], [2,0], [2,1],[2,2]]
end

end