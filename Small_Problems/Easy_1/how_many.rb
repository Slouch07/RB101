vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  occurences = {}
  array.uniq.each { |item| occurences[item] = array.count(item) }

  occurences.each { |key, value| puts "#{key} => #{value}" }
end

count_occurrences(vehicles)