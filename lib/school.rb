# code here!

class School

  @@all = []

  attr_accessor :roster, :school_name

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
    @@all << self
  end

  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end

  def grade(class_num)
    roster.map {|grade, students| students if grade == class_num}.compact.flatten # << code smell
  end

  def sort
    sorted_hash = {}
    roster.each {|grade, students| sorted_hash[grade] = students.sort}
    sorted_hash
  end

  def self.all
    @@all
  end

end
