require 'rspec'
#Line 3 pulls in rspec & gives it access to this file & vice versa.
require './lib/mermaid'
#Line 5 links this file to a file called mermaid that is located in the lib directory

describe Mermaid do
  it 'is an instance of mermaid' do
    mermaid = Mermaid.new('Sereia')
    expect(mermaid).to be_a Mermaid
  end
  #Lines 8-12 are testing if an object created from the Mermaid class is indeed a mermaid.

  it 'has a name' do
    mermaid = Mermaid.new('Sereia')
    expect(mermaid.name).to eq 'Sereia'
  end
  #Lines 15-18 are testing if an object created from the Mermaid class is given the name  Sereia that it obtains that name.


  it 'has an age' do
    mermaid = Mermaid.new('Sereia')
    expect(mermaid.age).to eq 22
  end

    #Lines 22-25 are testing if an object created from the Mermaid class is given the age  22 that it obtains that age.

  it 'has can get older' do
    mermaid = Mermaid.new('Sereia')
    mermaid.get_older
    expect(mermaid.age).to eq 23
  end
  #Lines 29-32 are testing if we obtain an object created from the Mermaid class called Sereia & if we have some method called get_older that is also created in the class Mermaid & we call that method on a Mermaid object called mermaid then the method works as expected & adds one year to the mermaid's age 22 to now be 23.
end
```
