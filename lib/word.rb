class Word
 attr_accessible :angielskie, :polskie
 attr_accessor :angielskie, :polskie

  def edible?
	!polskie
  end

  def expired!
   self.expired = true
  end

end