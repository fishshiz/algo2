require_relative 'p05_hash_map'

def can_string_be_palindrome?(string) 
  map = HashMap.new
  string.chars.each do |char|
    map.set(char, string.chars.count(char))
  end
  count = 0
  map.each do |bucket|

    if bucket[1] == 1 && count == 1
        return false
    elsif bucket[1] == 1
        count += 1
    end
end
true
    

end
