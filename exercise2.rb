require 'rspec'

class Cell
  attr_accessor :world, :x, :y

  def initialize(world, x=0, y=0)
    @world = world
    @x = x
    @y = y
    world.cells << self
  end

  def die!
    world.cells -= [self]
  end

  def dead?
    !world.cells.include?(self)
  end

  def alive?
    world.cells.include?(self)
  end

  def neighbors
    @neighbors = []
    world.cells.each do |cell|
      #has a cell to the north
      if self.x == cell.x && self.y == cell.y - 1
        @neighbors << cell
      end

      #has a cell to the north east
      if self.x == cell.x - 1 && self.y == cell.y - 1
        @neighbors << cell
      end

      #has a cell to the west
      if self.x == cell.x - 1 && self.y == cell.y
        @neighbors << cell
      end

      #has a cell to the east
      if self.x == cell.x + 1 && self.y == cell.y
        @neighbors << cell
      end
    end

    @neighbors
  end

  def spawn_at(x, y)
    Cell.new(world, x, y)
  end
end

class World
  attr_accessor :cells

  def initialize
    @cells = []
  end

  def tick!
    cells.each do |cell|
      if cell.neighbors.count < 2
        cell.die!
      end
    end
  end
end

describe 'GameOfLife' do
  let(:world) { World.new }
  context 'utility methods' do
    subject { Cell.new(world) }
    it 'spawn relative to' do
      cell = subject.spawn_at(3,5)
      cell.is_a?(Cell).should be_true
      cell.x.should == 3
      cell.y.should == 5
      cell.world.should == subject.world
    end

    it 'detects a neighor to the north' do
      cell = subject.spawn_at(0, 1)
      subject.neighbors.count.should == 1
    end

    it 'detects a neighbor to the north east' do
      cell = subject.spawn_at(1,1)
      subject.neighbors.count.should == 1
    end

    it 'detects a neighbor to the left' do
      cell = subject.spawn_at(-1,0)
      subject.neighbors.count.should == 1
    end

    it 'detects a neighbor to the right' do
      cell = subject.spawn_at(1,0)
      subject.neighbors.count.should == 1
    end

    it 'dies' do
      subject.die!
      subject.world.cells.should_not include(subject)
    end
  end
  it '#rule 1 - should die if there are less than 2 live neighbors' do
    cell = Cell.new(world)
    new_cell = cell.spawn_at(2,0)
    world.tick!
    cell.should be_dead
  end
  it '#rule 2 - should live if there are 2 or 3 live neighbors ' do
    cell = Cell.new(world)
    new_cell = cell.spawn_at(1,0)
    new_cell2 = cell.spawn_at(-1,0)
    world.tick!
    cell.should be_alive
  end
end