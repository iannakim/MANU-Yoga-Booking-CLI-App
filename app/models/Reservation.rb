class Reservation < ActiveRecord::Base

    belongs_to :student
    belongs_to :yogaclass


    # def all
    # self.find_by(student_id: ###)
    # end
end
