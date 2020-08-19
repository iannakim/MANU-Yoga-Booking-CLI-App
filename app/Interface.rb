require 'tty-prompt'

class Interface

  attr_reader :prompt
  attr_accessor :student, :insturctor, :yogaclass, :reservation

  def initialize
      @prompt = TTY::Prompt.new
      # @prompt = TTY::Prompt.new(symbols: {marker: "→"})
  end

  def welcome
    puts "
    \n
    \n
    Welcome to mānu
    \n
    \n
    "
    prompt.select ("") do |menu|
      menu.choice "Log in", -> {log_in_helper}
      menu.choice "Sign up", -> {create_user_helper}
      menu.choice "What's Flow NYC?", -> {about_page}
    end
  end
  
  def about_page
    puts "Flow NYC is a virtual class booking app\nthat allows yogis to search for and book\nyoga classes at a click of a button."
    # add menu choice "Go Back"
  end

  def log_in_helper
    #
    #
    #
  end


  def create_user_helper
    personReturnValue =	Student.register()
      until personReturnValue
        personReturnValue = Student.register()
    end
      self.student = personReturnValue
    self.main_menu
    end
    
    def main_menu
      student.reload
      system "clear"
        puts "Welcome, #{student.name}!"
        prompt.select("What would you like to do?") do |menu|
          menu.choice "View My Upcoming Yoga Classes", -> {display_all_reservation}
          menu.choice "Book a New Yoga Class", -> {book_new_class}
          menu.choice "View all locations", -> {all_location}
          menu.choice "Log out", -> {byebye}
        end
      end
      
      def display_all_reservation
      #  all the students reservations
      #  if students reservation is false, put "You don't have any upcoming classes."
        Reservation.find_by(student_id: student.id)
      #add menu choice - Book a New Yoga Class
      #add menu choice - Back to Main Menu
      end


      def book_new_class
        system "clear"
        prompt.select ("Choose a Location:" ) do |menu|
          menu.choice "Chelsea, NY", -> {chelsea_location_selected}
          menu.choice "Upper West Side, NY", -> {uws_location_selected}
          menu.choice "Long Island City, Queens", -> {lic_location_selected}
          menu.choice "Williamsburg, BK", -> {bk_location_selected}
          menu.choice "Back to Main Menu", -> {self.main_menu}
        end
      end


      def chelsea_location_selected
        # YogaClass.all.map(&:location) == 

        #view all the times available for chelsea location#
      end



      def all_location
        system "clear"
         all_the_yoga = YogaClass.all.map(&:location).uniq
        prompt.select("Choose a Location", all_the_yoga)
        # # binding.pry
        # # puts YogaClass.all.map(&:location).uniq
        # #add menu choice - Back to Main Menu
        
      end



      def byebye
        system "clear"
        Interface.new.welcome
      end




end #end for class
