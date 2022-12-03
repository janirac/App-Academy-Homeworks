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