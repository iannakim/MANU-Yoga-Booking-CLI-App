require 'tty-prompt'
require 'pry'

class Interface

  attr_reader :prompt
  attr_accessor :student, :instructor, :yoga_class, :reservation


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
      menu.choice "🌵 Log in", -> {log_in}
      menu.choice "🌵 Sign up", -> {create_user}
      menu.choice "🌵 About mānu", -> {about_page}
    end
  end
  

  def log_in
    system "clear"
    studentInfo = TTY::Prompt.new.ask("Enter Username: ")
    user_found = Student.all.find_by(name: studentInfo)
      if Student.all.exclude?(user_found)
        log_in_error
      else
        puts "\nLog in successful!\n"
        sleep 0.5
      end
        self.student = user_found
        self.main_menu
  end


    def log_in_error
       prompt.select ("Sorry, that username doesn't exist.") do |menu|
        menu.choice "Try Again", -> {log_in} 
        menu.choice "Go Back", -> {bye}
        end 
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
      hello, #{student.name}!
      \n
      \n"
      prompt.select("What would you like to do?") do |menu|
        menu.choice "View My Upcoming Yoga Classes", -> {display_all_reservation}
        menu.choice "Book a New Yoga Class", -> {book_new_class}
        menu.choice "View All Locations", -> {all_location}
        menu.choice "Log out", -> {byebye}
      end
  end
    

  def all_my_reservations
    student.reservations.map {|res| "#{res.id}-[#{res.yoga_class.time}] - [#{res.yoga_class.location}] Session: #{res.yoga_class.name} - Instructor: #{res.yoga_class.instructor.name}"}
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
      if all_my_reservations.length == 0
        puts "You don't have any upcoming classes."
      else
        puts all_my_reservations
      end
      prompt.select("What would you like to do?") do |menu|
        menu.choice "Book a new class", -> {book_new_class}
        menu.choice "Change reservation", -> {change_res}
        menu.choice "Delete reservation", -> {delete_res}
        menu.choice "Back to main menu", -> {main_menu}
      end
  end



  def change_res
    system "clear"
    choices = @prompt.select("Select the class you would like to change:", all_my_reservations)
    update_the_old(choices.split("-")[0])
    prompt.select("") do |menu|
      menu.choice "Cancel", -> {main_menu}
    end
  end



  def update_the_old(res_id_str)
    system "clear"
    res_id = res_id_str.to_i
    yoga_locations = YogaClass.all.map(&:location).uniq
    choices = @prompt.select("Please Select the location of Your *New* Class:", yoga_locations) 
    new_location_selected(choices, res_id)
    prompt.select("") do |menu|
      menu.choice "Cancel, go back to menu", -> {main_menu}
    end
  end



  def new_location_selected(the_new_location, res_id)
    all_the_yoga = YogaClass.all.select {|yoga| yoga.location == the_new_location}
      prompt.select("Choose Your *New* Class:") do |menu|
        all_the_yoga.each do |yoga_class|
          menu.choice yoga_class.name + " -- " + yoga_class.time + " -- " + yoga_class.instructor.name, -> {confirm_new_booking(yoga_class, res_id)}
        end
        menu.choice "Back to menu", -> {main_menu}
      end
  end



  def confirm_new_booking(new_class, res_id)
    system "clear"
    puts new_class.time + " -- " + new_class.location + " -- " + new_class.name + " -- " + new_class.instructor.name
    prompt.select ("Are you sure you want to make this change?") do |menu|
      menu.choice "Yes, I confirm! Change my reservation", -> {overwrite_my_res(new_class, res_id)}
      menu.choice "No, back to main menu.", -> {self.main_menu}
      end
  end



  def overwrite_my_res(new_yoga_class, res_id)
    orig_res = Reservation.all.find_by({:id => res_id})
    updated_res = orig_res.update({:yoga_class_id => new_yoga_class.id})
    updated_res
  end



  def delete_res
    system "clear"
    choices = @prompt.select("Select the class you would like to CANCEL:", all_my_reservations)
    res_id = (choices.split("-")[0]).to_i
    system "clear"
    prompt.select ("Are you sure you want to CANCEL this class?") do |menu|
      menu.choice "Yes!", -> {delete_confirmed(res_id)}
      menu.choice "Nope, back to Menu", -> {self.main_menu}
    end
  end


  def delete_confirmed(res_id)
    system "clear"
    found_res = Reservation.find_by(id: res_id)
    found_res.destroy
    system "clear"
    puts "Succesfully Cancelled!"
    sleep 2
    main_menu
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
        prompt.select("Choose Your Class:") do |menu|
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
    if Reservation.find_by(student_id: self.student.id , yoga_class_id: yoga_class.id)
      puts "You've already booked this yoga session!"
    else
      puts "\n\n\nYour Reservation is Complete!\n\nWe can't wait to get down with you, Yogi!\n\n\n"
    returnReservationValue = Reservation.create(student_id: self.student.id , yoga_class_id: yoga_class.id)
    end
    sleep 2
    prompt.select ("What Would You like to do next?") do |menu|
      menu.choice "Book a New Yoga class", ->{book_new_class}
      menu.choice "View My Upcoming Yoga Classes", -> {display_all_reservation}
      menu.choice "Back to Main Menu", -> {self.main_menu}
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
    \n🧘🏾 did you know that mānu means 'to float' in the maori language? 🧘🏾‍♂️
    \n
    \n"
    sleep 2
    puts "mānu is a virtual class booking app that allows users to\nsearch for and book our yoga classes at a click of a button.\nWe're currently accepting new students at all our locations and\nlimitng our class sizes to no more than 10 per class in order to\nprovide safe social distancing for all our students and instructors.\nAll students are required to wear a mask inside our studios at this\ntime and if you have any questions, feel free to reach out to us any\ntime. Thank you and we look forward to seeing you soon!\n\n-mānu team" 
    sleep 3
    prompt.select("") do |menu|
      menu.choice "Back", -> {bye}
    end

  end



  def byebye
    system "clear"
    exit!
  end

  def bye 
  system "clear"
    Interface.new.welcome
  end

end #end for class

