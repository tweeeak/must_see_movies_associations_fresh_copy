class Director < ActiveRecord::Base
  #ADDING DIRECTOR VALIDATIONS
  validates :name, :presence => true, :uniqueness => { :scope => :dob }
  #Adding has many relationships to retrieve movies based on directors
  has_many :movies, :class_name => "Movie", :foreign_key => "director_id"
end
