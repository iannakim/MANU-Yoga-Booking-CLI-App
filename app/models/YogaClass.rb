class YogaClass < ActiveRecord::Base
 
  has_many :reservations
  has_many :students, through: :reservations
  belongs_to :instructor



end
