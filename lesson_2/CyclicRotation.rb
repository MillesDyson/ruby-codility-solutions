# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a, k)
  return a if a.empty? 
  k.times do 
    last_digit = a[-1]
    a.pop()
    a.unshift(last_digit)
  end
  return a
end