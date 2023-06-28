# your code here
class Stack

    def initialize(limit = '')
        @stack = []

        @limit = limit
    end

    def push(value)
        if full?
            raise 'Stack Overflow'
        else
            @stack << value
        end
    end

    def pop
        @stack.pop
    end

    def peek
        @stack[-1]
    end

    def size
        @stack.size
    end

    def empty?
        @stack.size == 0
    end

    def full?
       @limit && @stack.size == @limit
    end

    def search(value)
        index = 0
        while index < @stack.size do
            if @stack[index] == value
                return (@stack.size - 1) - index 
            end
            index += 1
        end
        -1
    end
end