# Exercise 1 Stack

class Stack
    def initialize
        @people = []
    end

    def push(el)
        @people.push(el)
    end

    def pop
        @people.pop
    end

    def peek
        @people.last
    end
  end

  #Exercise 2 Queue
class Queue
    def initialize
        @people = []
    end 

    def enqueue(el)
        @people.push(el)
    end 

    def dequeue
        @people.shift
    end 

    def peek
        @people.first
    end 
end 

# Exercise 3 Map
class Map
    def initialize
        @underlying_array = []
    end 

    def set(key, value)
        @underlying_array.each_with_index do |pairs, idx|
            if pairs[0] == key
               return @underlying_array[idx] = [key, value]
            end 
        end 

        @underlying_array << [key, value]
    end 
    
    def get(key)
        @underlying_array.each do |pairs|
            if pairs[0] == key
                return pairs[1]
            end 
        end 
        nil
    end 

    def delete(key)
        value = get(key)
        @underlying_array.reject! { |pairs| pairs[0] == key}
        value
    end

    def show(value)
        deep_dup(@underlying_array)
    end

    def deep_dup(arr)
        arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
    end
end 
