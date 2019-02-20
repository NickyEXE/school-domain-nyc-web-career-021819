# code here!
class School (name)
  attr_accessor :roster
  def initialize(name)
    @name = name
    @roster = {}
  end
  def add_student(name, grade)
    if @roster.has_key?(grade)
      @roster[grade].push(name)
    else
      @roster[grade] = [name]
    end
  end
  def grade(num)
    if @roster.has_key?(num)
      @roster[num]
    end
  end
  def sort
    newroster ={}
    @roster.each {|grade, students| ([grade] => students.sort) => newroster}
    @roster = newroster
  end
end