require 'word'

describe Word do
   
   subject { Word.new }

   it "is edible" do
     Word.new.edible?.should be_true
   end

  it "expired!" do
     word = Word.new
     word.expired!
     word.expired.should be_true
   end
end