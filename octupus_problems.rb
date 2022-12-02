ARRAY = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
'fiiiissshhhhhh']

def sluggish_octopus(array)
    array.each_with_index do |ele1, idx1|
        longest_ele = true
        array.each_with_index do |ele2, idx2|
            if ele1.length < ele2.length
                longest_ele = false
            end 
        end
        return ele1 if longest_ele == true
    end 
end 

p sluggish_octopus(ARRAY)

class Array
    def merge_sort(&prc)
        return self if self.length < 2
        prc = prc || Proc.new { |a, b| a <=> b}

        mid = self.length/2
        left = self[0...mid].merge_sort(&prc)
        right = self[mid..-1].merge_sort(&prc)

        Array.merge(left, right, &prc)
    end 

    private
    def self.merge(left, right, &prc)
        sorted = []

        until left.empty? || right.empty?
            case prc.call(left[0], right[0])
            when -1 
                sorted << left.shift
            when 0
                sorted << left.shift
            when 1
                sorted << right.shift
            end 
        end 
        sorted + left + right
    end 
end 

def domininant_octopus(array)
    prc = Proc.new { |a, b| b.length <=> a.length}
    array.merge_sort(&prc)[0]
end 

p domininant_octopus(ARRAY)

def clever_octopus(array)
    longest = 0
    longest_ele = " "
    array.each do |ele|
        if ele.length > longest 
            longest = ele.length 
            longest_ele = ele
        end
    end 
   
longest_ele
end 

p clever_octopus(ARRAY)
