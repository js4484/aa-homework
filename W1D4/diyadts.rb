class Stack
    def initialize
      @stack = []
    end

    def push(el)
      @stack.push(el)
    end

    def pop
      @stack.pop
    end

    def peek
      return @stack[-1]
    end
end


class Queue
    def initialize
      @queue = []
    end

    def enqueue(el)
        @queue << el
    end

    def dequeue
        @stack.shift
    end

    def peek
        @stack[0]
    end
end

class Map
    def initialize
        @array = []
    end
    def set(key, value)
        keys = []
        @array.each do |sub|
            keys << sub[0]
            sub[1] = value if sub[0] == key
        end
        @array << [key, value] if !keys.include?(key)
    end
    def get(key)
        @array.each do |sub|
            return sub[1] if key == sub[0]
        end
    end
    def delete(key)
        @array.each.with_index do |sub, i|
           @array.delete_at(i) if key == sub[0]
        end
    end
    def show
        @array
    end
end