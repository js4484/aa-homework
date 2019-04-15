require_relative "errors.rb"

class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = []
    self.place_stones
  end

  def place_stones
    (0..13).each do |i|
      if i == 6 || i == 13
        cups << []
      else
        cups << [:stone, :stone, :stone, :stone]
      end
    end
    true
  end

  def valid_move?(start_pos)
    raise StartingCupIsEmptyError if start_pos == 0
    raise InvalidStartCupError if start_pos < 1 || start_pos > 12
    
    return true if start_pos.between?(1, 6) && start_pos.between?(7, 12) && !@cups[start_pos].empty?
    false
  end

  def make_move(start_pos, current_player_name)
    stone_num = cups[start_pos].length
    cups[start_pos] = []
    if start_pos.between?(0,5)
      # i = 1
      # placed = 0

      # until placed == stone_num
      #   unless cups[i]


      plus_1 = start_pos + 1
      plus_4 = start_pos + 4
      (plus_1..plus_4).each do |idx|
        cups[idx] << :stone
      end
    else

      
    end
    # (self.cups[plus_1]..cups[plus_4]).each do |cup|
    #   cup << :stone
    # end

    
    
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
