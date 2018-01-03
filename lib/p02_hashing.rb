class Fixnum
  # Fixnum#hash already implemented for you
end

class Array
  def hash
    self.map(&:to_s).join("").hash
  end
end

class String
  def hash
    self.chars.map { |ch| ch.ord }.map(&:to_s).join.to_i.hash
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    self.to_a.sort.hash
  end
end
