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