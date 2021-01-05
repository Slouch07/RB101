# A method that takes an Array of numbers, and returns an Array with the same number of elements, 
# and each element has the running total from the original Array.

def running_total(arr)
  arr_totals = []
  count = 0
  num_arr.select do |x|
    if arr_totals.empty?
      arr_totals << x
    else
      arr_totals << x + arr_totals[count]
      count += 1
    end
  end
  arr_totals
end

# def running_total(num_arr)
#   count = 0
#   num_arr.map { |n| count += n }
# end


p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
