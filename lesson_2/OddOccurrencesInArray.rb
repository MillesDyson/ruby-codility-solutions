# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  count = a.group_by(&:itself).transform_values(&:count)
  key = count.select {|key, value| return key if value.odd?}
  return key
end