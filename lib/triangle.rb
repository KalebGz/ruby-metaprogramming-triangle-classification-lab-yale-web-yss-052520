class Triangle
  attr_reader :s1, :s2, :s3

  def initialize(s1, s2, s3)
    @s1, @s2, @s3 = s1, s2, s3
  end
  
  def kind
    if (( (s1 + s2) <= s3 || (s2 + s3) <= s1 || (s3 + s1) <= s2) || !([s1, s2, s3].all? {|val| val > 0} ))
      # begin
          raise TriangleError
    #   rescue TriangleError => error
    #     puts error.message
    # end
    # else
      end
      (return :equilateral) if(s1 == s2 && s1 == s3)
      return :isosceles if (s1 == s2 || s1 == s3 || s2 == s3)
      :scalene
    # end
  end
  
  class TriangleError < StandardError

    # def message
    #   "Incorrect parameterw were given"
    # end
  
  end
end

