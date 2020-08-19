class Instructor < ActiveRecord::Base
    
    has_many :yogaclasses
    has_many :reservations, through: :yogaclasses
    has_many :students, through: :yogaclasses
    
    end
    