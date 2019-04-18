fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
=> "fiiiissshhhhhh"

# Sluggish Octo O(n^2)
def sluggish_octo(arr)
    longest_length = 0
    longest_fish = true
    (0...fish.length-1).each do |i|
        (0...fish.length).each do |j|
            if fish.length > longest_length
                longest_length = fish.length
                longest_fish = fish
            end
        end
    end
    longest_fish
end

# Dominant Octo O(nlogn)




# Clever Octo O(n)
    def clever_octo(arr) 
        longest_length = 0
        longest_fish = true
        arr.each do |fish|
            x = fish.length 
            if x > longest_length
                longest_length = x
                longest_fish = fish
            end
        end
        longest_fish
    end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

    # SlowDance

    def slow_dance(direction, tiles_array)
        tiles_array.each_with_index do |dir, i|
            return i if dir == direction
        end
    end

    def constant_dance(direction)
        tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
        idx = tiles_array.index(direction)
    end