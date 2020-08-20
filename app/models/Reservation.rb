class Reservation < ActiveRecord::Base

    belongs_to :student
    belongs_to :yoga_class


    

    def find_by(student)
    
    # if return == 0, display option: "Book a New Yoga Class"
    #add menu choice - Back to Main Menu
    end
end
