class Movie < ActiveRecord::Base
  #AHDCH Movie validations
  validates :director_id, :presence => true
  validates :title, :presence => true, :uniqueness => { :scope => :year }
  validates :year, :numericality => { :only_integer => true,  :less_than_or_equal_to => 2050, :greater_than_or_equal_to => 1870 }
  validates :duration, :numericality => { :only_integer => true,  :less_than_or_equal_to => 2764800, :greater_than_or_equal_to => 0}

  #Creating director method for finding movie director in the form m.director where m is a movie!!
  belongs_to :director, :class_name => "Director", :foreign_key => "director_id"
  has_many :characters
  has_many :actors, :through => :characters



end
