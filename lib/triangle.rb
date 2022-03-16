require 'pry'

class Triangle
  # write code here
  def initialize(one,two,three)
    @one = one
    @two = two
    @three = three
    @sides = [one, two, three]
  end
  def kind
    sorted = @sides.sort
    if @sides.filter{|s| s>0}.length < 3
      raise TriangleError
    elsif sorted[0] + sorted[1] <= sorted[2]
      raise TriangleError
    else
      unique = sorted.uniq.length
      if unique == 3
        :scalene
      elsif unique == 2
        :isosceles
      else
        :equilateral
      end
    end
  end

  class TriangleError < StandardError
  
  end

end

tri = Triangle.new(1,0,-1)

#binding.pry
0