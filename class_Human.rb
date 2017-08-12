class Human

attr_accessor :name, :first_name,:surname, :second_name, :age_year

def initialize(name)
@name=name
@first_name=first_name
@surname=surname
@second_name=second_name
@age_year=age_year
end

def get_name
puts "#{@name}'s name is #{@first_name}"
end

def count_age
@age=(Time.now).year-@age_year
puts "His age is #{@age}"
end

def head?
self.kind_of? SchoolHead
end

end

class SchoolHead < Human

def get_name
	basic_getname=super
puts "#{basic_getname}#{@second_name}"
end


end

class Student < Human

end

class LazyStudent < Student

def get_name
puts "#{@name}'s name is moron-#{@first_name}"
end

end 

head1=SchoolHead.new("Schoolhead")
head1.first_name="Vladislav"
head1.second_name="Semenovich"
head1.surname="Krasnopupov"
head1.age_year=1978
head1.get_name
head1.count_age
head1.head?

student1=Student.new("Student")
student1.first_name="Peter"
student1.age_year=1988
student1.get_name
student1.count_age
student1.head?

lazy_student1=LazyStudent.new("Lazy student")
lazy_student1.first_name="Boris"
lazy_student1.age_year=1990
lazy_student1.get_name
lazy_student1.count_age
lazy_student1.head?