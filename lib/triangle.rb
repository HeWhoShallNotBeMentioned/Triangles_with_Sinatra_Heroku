class Triangle
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  define_method(:triangle?) do
      if @side1.+(@side2) >= @side3
        true
      else
        false
      end
  end

  define_method(:triangle_type) do
    if @side1 == (@side2 && @side3)
      "Equilateral Triangle"
    elsif @side1 == @side2 ||
          @side1 == @side3 ||
          @side2 == @side3
          "Isosceles Triangle"
    elsif @side1 != (@side2 && @side3)
      "Scalene Triangle"
    end
  end
end
