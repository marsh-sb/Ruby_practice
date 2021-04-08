class Student
  def initialize(name)
    @name = name
  end

  def avg(math, english)
    (math + english) / 2
  end

  attr_accessor :name
end

a001 = Student.new('Sato')
p a001.name, a001.avg(30, 70)

a002 = Student.new('Suzuki')
p a002.name, a002.avg(90, 80)
