# ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# => "fiiiissshhhhhh"

# Sluggish Octopus
# O(n^2) time

def sluggish_oct(arr)
    res = arr[0]
    arr.each_with_index do |el, idx|
        arr.each_with_index do |el2, idx2|
            if idx < idx2 && el.length > el2.length
                res = el
            else
                res = el2
            end
        end
    end
    res
end

# p sluggish_oct(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])


# Dominant Octopus
# O(n log n) time

def dominant_oct(arr)
    prc = Proc.new {|a, b| a.length <=> b.length}
    arr.merge_sort(&prc)[-1]
end

class Array
    def merge_sort(&prc)
        prc ||= Proc.new {|a, b| a <=> b}
        return self if self.length <= 1

        mid = self.length / 2
        left = self[0...mid]
        right = self[mid..-1]
        left_sort = left.merge_sort(&prc)
        right_sort = right.merge_sort(&prc)
        Array.merge(left_sort, right_sort, &prc)
    end

    def self.merge(left, right, &prc)
        res = []
        until left.empty? || right.empty?
            if prc.call(left[0], right[0]) <= 0
                res << left.shift
            else
                res << right.shift
            end
        end
        res + left + right
    end
end

# p dominant_oct(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])


# Clever Octopus
# O(n) time

def clever_oct(arr)
    res = arr[0]
    (0...arr.length - 1).each do |i|
        res = arr[i+1] if arr[i].length < arr[i + 1].length 
    end
    res 
end

# p clever_oct(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])


tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

# Slow Dance
# O(n) time

def slow_dance(str, arr)
    arr.each_with_index do |el, i|
        return i if el == str
    end
end

# p slow_dance("right-up", tiles_array)


# Constant Dance!
# O(1) time

new_tiles_data_structure = {
    "up" => 0,
    "right-up" => 1,
    "right" => 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "lef-up" => 7
}
def fast_dance(str, new_tiles_data_structure)
    new_tiles_data_structure[str]
end

p fast_dance("up", new_tiles_data_structure)
# > 0

p fast_dance("right-down", new_tiles_data_structure)
# > 3
