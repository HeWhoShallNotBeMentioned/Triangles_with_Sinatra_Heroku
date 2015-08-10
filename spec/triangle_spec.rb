require('rspec')
require('triangle')

describe(Triangle) do
  describe('#triangle?') do
    it("returns true if it is a triangle") do
      test_triangle = Triangle.new(1, 2, 3)
      expect(test_triangle.triangle?()).to(eq(true))
    end
  end

   describe('#triangle_type') do
     it("returns text saying it is a equilateral triangle") do
       test_triangle = Triangle.new(2, 2, 2)
       expect(test_triangle.triangle_type()).to(eq("Equilateral Triangle"))
     end

    it("returns text saying it is an isosceles triangle") do
      test_triangle = Triangle.new(2, 2, 3)
      expect(test_triangle.triangle_type()).to(eq("Isosceles Triangle"))
    end

    it("returns text saying it is a scalene triangle") do
      test_triangle = Triangle.new(4, 5, 6)
      expect(test_triangle.triangle_type()).to(eq("Scalene Triangle"))
    end

  end

end
