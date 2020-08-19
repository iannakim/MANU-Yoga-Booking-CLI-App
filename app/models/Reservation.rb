class Reservation < ActiveRecord::Base

    belongs_to :student
    belongs_to :yogaclass


    def find_by(student)
    
    # if return == 0, display option: "Book a New Yoga Class"
    #add menu choice - Back to Main Menu
    end
end
