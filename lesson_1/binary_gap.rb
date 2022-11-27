# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(n)
    binary = n.to_s(2)
    max_gap = 0
    curr_gap = 0
    binary.each_char do |c|
      if c === "0"
        curr_gap += 1
      else
        max_gap = [max_gap, curr_gap].max
        curr_gap = 0
      end
    end
    return max_gap
  end