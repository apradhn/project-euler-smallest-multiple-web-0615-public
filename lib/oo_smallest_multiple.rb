class SmallestMultiple
  attr_accessor :num
  def initialize(num)
    self.num = num
  end

  def lcm
  m = 1
  answer = 0
  multiple = num * num - 1 * num - 2
  loop do 
    if (num / 2..num).to_a.all? {|n| multiple % n == 0}
      answer = multiple
      break
    end
    m = m + 1
    multiple = num * m
  end
  answer 
  end
  
end