class Teacher
 attr_reader :name, :age

 def initialize(name, age)
     @name = name
     @age = age
 end

 def gets_older
     @age += 1
 end

end
