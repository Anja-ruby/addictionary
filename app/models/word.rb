class Word < ActiveRecord::Base
  attr_accessible :angielskie, :polskie
  validates_presence_of :polskie
  validates_presence_of :angielskie
end
