class Triangle
  @@sides = []

  def initialize(sideone, sidetwo, sidethree)
    @@sides = []
    @@sides << sideone
    @@sides << sidetwo
    @@sides << sidethree
  end

  def kind
    triangle_sides = @@sides.sort
      if @@sides.one? {|side| side <= 0}
        raise TriangleError
      elsif @@sides.all? {|side| side == 0} 
        raise TriangleError
      elsif @@sides.sort[0] + @@sides.sort[1] <= @@sides.sort[2]
      raise TriangleError
      else
        case @@sides.uniq.size
          when 1 then 
            :equilateral
          when 2 then 
            :isosceles
          else
            :scalene
          end
        end
      end
      
  class TriangleError < StandardError
  end

end
