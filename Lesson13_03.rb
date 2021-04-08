class Student
  def initialize(name)
    @name = name
  end
  def avg(math, english)
    p @name,(math + english) / 2
  end
end

a001 = Student.new("Sato")
a001.avg(30,70)