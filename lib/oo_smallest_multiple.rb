class SmallestMultiple
  attr_accessor :num
  def initialize(num)
    self.num = num
  end

  def lcm
    m = 1
    answer = 0
    loop do 
      multiple = num * m
      if (1..num).to_a.all? {|n| multiple % n == 0}
        answer = multiple
        break
      end
      m = m + 1
    end
    answer    
  end
  
end