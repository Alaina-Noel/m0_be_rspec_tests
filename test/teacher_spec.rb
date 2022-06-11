require 'rspec'
#Line 1 pulls in rspec & gives it access to this file & vice versa.
require './lib/teacher'
#Line 3 links this file to a file called teacher that is located in the lib directory

describe Teacher do
  it 'is an instance of teacher' do
    teacher = Teacher.new('Sydney', 27)
    expect(teacher).to be_a Teacher
  end
  #Lines 6-10 are testing if an object created from the teacher
  #class is indeed a teacher.

  it 'has a name' do
    teacher = Teacher.new('Sydney', 27)
    expect(teacher.name).to eq 'Sydney'
  end
  #Lines 14-17 are testing if an object created from the Teacher class is given
  # the name Sydney that it obtains that name.


  it 'has an age' do
    teacher = Teacher.new('Sydney', 27)
    expect(teacher.age).to eq 27
  end

#Lines 22-25 are testing if an object created from the Teacher class
#is given the age  27 that it obtains that age.

  it 'can get older' do
    teacher = Teacher.new('Sydney', 27)
    teacher.gets_older
    expect(teacher.age).to eq 28
  end
  #Lines 30-34 are testing if we obtain an object created from the Teacher
  #class called Sydney & if we have some method called get_older that is also
  #created in the class Teacher & we call that method on a Teacher object called
  # teacher then the method works as expected & adds one year to the teacher's
  #age 27 to now be 28.
end
