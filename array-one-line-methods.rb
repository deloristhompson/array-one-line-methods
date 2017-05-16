## Accessing elements within our `names` array:
names = ["\nJohn", "Hannah", "Mark", "Sam", "Anna", "Sandra", "Susan", "Julie", "Yanni", "Eve", "Sunny", "Matt\n"]

# 1. Retrieve the first name from the `names` array.
  puts "\nFirst name: #{names.first}"
# 2. Retrieve the second name from the `names` array.
  puts "\nSecond name: #{names[1]}"
# 3. Retrieve the third name from the `names` array.
  puts "\nThird name: #{names[2]}"

# 4. Retrieve the last name from the `names` array.
  puts "\nLast name: #{names[-1]}"
# 5. Retrieve the second-to-last name from the `names` array.
  puts "\nsecond-to-last name: #{names[-2]}"

# 6. Create a new array with the first two elements in the `names` array.
first_two_names = []
first_two_names << "John"
first_two_names << "Hannah"
  puts "\nFirst new array: #{first_two_names}"

# 7. Create a new array with the first four elements in the `names` array.
first_four_elements = first_two_names.flatten
first_four_elements << "Mark"
first_four_elements << "Same"
  puts "\nsecond new array: #{first_four_elements}"


## Manipulating the `names` array:
# 1. Add your name to the `names` array.
  puts names << "Deloris"
# 2. Replace the first element in the array with your best friend's name.
names[0] = "Janie-Alice"
  puts "\nBest friend: #{names[0]}\nUpdated List:"
  puts names
# 3. Reassign the last element in the array with the name of your arch-nemesis.
names[-1] = "Loki"
  puts "\nArch-nemesis: #{names[-1]}\nUpdated List:"
  puts names

## Asking questions about our `names` array:
# 1. How many names are on the list?
total_names = names.count
  puts "\nThere are: #{total_names}"

# 2. Who is the third name on the list?
  puts "\nThe third name on the list: #{names[2]}"

# 3. Output each name and where it occurs in the array.
names.each_with_index do |name, index|
  puts "\n#{name}:#{index}"
end

# 4. Sort the names in alphabetical order.
  puts "\nNames sorted:"
  puts names.sort

# 5. Sort the names by smallest number of characters to largest.
smallest_to_longest_names = names.sort_by.each do |sort| sort.length
end
  puts "\nNames Sorted by Length"
  puts smallest_to_longest_names

# 6. Supply the sum of all the characters in the list of names.
  print "\nLength="
  puts names.join.length

# 7. Do any of the names start with "y"?
start_with_y = names.find_all do |y|
  if y.include?("Y")
   puts "\nNames Starting with Y: #{y}"
  end
end

# 8. Are all of the names 3 characters long or larger?
three_characters_or_more = names.all? do |longer|
   longer.length >= 3
end

if three_characters_or_more
  puts "\nAll names check out"
else
  puts "\nOne or more name found with less than 3 characters"
end

# 9. Using the `names` array, create a new array containing only palindrome names.
palindromes = names.select {|name| name.downcase == name.reverse.downcase}
  puts "\nPalindrome names: #{palindromes}"

# 10. Find the first name that starts with "S".
first_s = names.select do |name|
  name.start_with?("S")
end
  puts "\nFirst S name: #{first_s[0]}"

# 11. Create a new array containing names that start with "S".
s_array = names.select {|names| names.start_with?("S")}
  puts "Names that start with S:"
  puts s_array

# 12. Create a new array of names ending with a vowel.
ends_in_vowel = names.select do |name|
  name.end_with?("a","e","i","o","u","y")
end
  puts "\nNames ending in vowel:"
 puts ends_in_vowel

# 13. Divide the names into groups of 3.
  print "\nNames grouped by 3:"
names.each_slice(3) {|three| puts "\n#{three}"}
