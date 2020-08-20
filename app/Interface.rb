require 'tty-prompt'
require 'pry'

class Interface

  attr_reader :prompt
  attr_accessor :student, :insturctor, :yogaclass, :reservation


  def initialize
    @prompt = TTY::Prompt.new
    # @prompt = TTY::Prompt.new(symbols: {marker: "→"})
  end


  def welcome
    system "clear"
    puts "
    \n
    \n
    Welcome to mānu
    \n
    \n
    "
    prompt.select ("") do |menu|
      menu.choice "Log in", -> {log_in}
      menu.choice "Sign up", -> {create_user}
      menu.choice "About mānu", -> {about_page}
    end
  end
  

  def log_in
    system "clear"
    userReturnValue = Student.log_in()
      until userReturnValue
        userReturnValue = Student.log_in()
      end
    self.student = userReturnValue
    self.main_menu
  end


  def create_user
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
      puts "
      \n
      \n
      Welcome, #{student.name}!
      \n
      \n"
      prompt.select("What would you like to do?") do |menu|
        menu.choice "View My Upcoming Yoga Classes", -> {display_all_reservation}
        menu.choice "Book a New Yoga Class", -> {book_new_class}
        menu.choice "View Our Locations", -> {all_location}
        menu.choice "Log out", -> {byebye}
      end
  end
    
  # anna.reservations

  def all_my_reservations

    student.reservations.map {|res| puts "[#{res.yogaclass.time}] -- #{res.yogaclass.name} [#{res.yogaclass.location}] - Instructor Name: #{res.yogaclass.instructor.name}"}
    # .each do |res|
    #   my_yogaclass = YogaClass.all.find{|yoga_class| yoga_class.id == res.yogaclass_id}
    #   my_instructor = Instructor.all.find{|instructor| instructor.id == my_yogaclass.instructor_id}
    #   puts "[#{my_yogaclass.time}] -- #{my_yogaclass.name} [#{my_yogaclass.location}] - Instructor Name: #{my_instructor.name}"
    #   end
  end


  def display_all_reservation
    student.reload
    system "clear"
      puts "
      \n
      \n
      #{student.name}'s all upcoming classes:
      \n
      \n"
      # all_my_reservations = Reservation.all.select {|res| res.student_id == student.id}
      
      if all_my_reservations.length == 0
        puts "You don't have any upcoming classes."
      else
        all_my_reservations
        # all_my_reservations.each do |res|
        # my_yogaclass = YogaClass.all.find{|yoga_class| yoga_class.id == res.yogaclass_id}
        # my_instructor = Instructor.all.find{|instructor| instructor.id == my_yogaclass.instructor_id}
        # puts "[#{my_yogaclass.time}] -- #{my_yogaclass.name} [#{my_yogaclass.location}] - Instructor Name: #{my_instructor.name}"
        # end
      end
      prompt.select("What would you like to do?") do |menu|
        menu.choice "Book a New Class", -> {book_new_class}
        menu.choice "Change reservation", -> {change_helper}
        menu.choice "Delete reservation", -> {delete_helper}
        menu.choice "Back to menu", -> {main_menu}
      end
  end



  def change_helper
    system "clear"
    choices = @prompt.select("Select the class you would like to change:", all_my_reservations) 
    # update_the_old(choices)
  end

  def update_the_old(choice)
    system "clear"
    puts "replace function goes here"
  end

  def delete_helper
  end


  def book_new_class
    system "clear"
    yoga_locations = YogaClass.all.map(&:location).uniq
    choices = @prompt.select("Please Select a Location:", yoga_locations) 
    location_selected(choices)
    prompt.select("") do |menu|
      menu.choice "Back to Menu", -> {main_menu}
    end
  end


  def location_selected(selected_location)
    all_the_yoga = YogaClass.all.select {|yoga| yoga.location == selected_location}
        prompt.select("Please Select a Class:") do |menu|
          all_the_yoga.each do |yoga_studio|
            find_instructor = Instructor.all.find{|instructor| instructor.id == yoga_studio.instructor_id}
            menu.choice yoga_studio.name + " -- " + yoga_studio.time + " -- " + find_instructor.name, -> {confirm_booking(yoga_studio)}
          end
      end
  end



  def confirm_booking(yoga_class)
    prompt.select ("Are you sure you want to book this class?") do |menu|
    menu.choice "Yes!", -> {book_a_reservation(yoga_class)}
    menu.choice "Nope, back to Menu", -> {self.main_menu}
    end
  end



  def book_a_reservation(yoga_class)
    system "clear"
    puts "\n\n\nYour Reservation is Complete!\n\nWe can't wait to get down with you, Yogi!\n\n\n"
    returnReservationValue = Reservation.create(student_id: self.student.id , yogaclass_id: yoga_class.id)
    sleep 2
    prompt.select ("What Would You Like to do Next?") do |menu|
      menu.choice "Back to Main Menu", -> {self.main_menu}
      menu.choice "View My Upcoming Yoga Classes", -> {display_all_reservation}
      menu.choice "Log out", -> {byebye}
    end
  end



  def all_location
    system "clear"
    all_the_yoga = YogaClass.all.map(&:location).uniq
    prompt.select("Choose a Location:", all_the_yoga)
        # # binding.pry
        # # puts YogaClass.all.map(&:location).uniq
        # #add menu choice - Back to Main Menu
        
  end



  def about_page
    puts "
    \n
    \n
    did you know that mānu means 'to float' in maori language?
    \n
    \n"
    sleep 2
    puts "mānu is a virtual class booking app that allows\nusers to search for and book yoga classes at a click of a button.\nwe're currently accepting new students and limitng the sizes of\nour classes to meet the safety requirements due to covid-19.\nplease feel free to reach out if you have any questions!"
    sleep 3
    prompt.select("") do |menu|
      menu.choice "Back", -> {byebye}
    end

  end



  def byebye
    system "clear"
    Interface.new.welcome
  end




end #end for class

