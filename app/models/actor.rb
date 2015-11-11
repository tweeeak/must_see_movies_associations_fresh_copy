class Actor < ActiveRecord::Base
  #AHDCH adding validations
  validates :name, :presence => true, :uniqueness => { :scope => :dob }
end
