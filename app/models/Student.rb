require 'tty-prompt'

class Student < ActiveRecord::Base

  has_many :reservations
  has_many :yogaclasses, through: :reservations
  has_many :instructors, through: :reservations


  def self.log_in
    3.times {
      studentInfo = TTY::Prompt.new.ask("Type in your Username:")
      found = Student.all.find_by(name: studentInfo)
      if !found
        puts "Sorry, that username doesn't exit. Try again."
        # Student.find_by(name: studentInfo)
      else
        puts "Log in success!"
        break
      end
    }
    if !found
      puts "Hmm... We couldn't find you.\nTry again later or sign up!"
      sleep 5
      Interface.byebye
    end
  end
  


  def self.register
    studentInfo = TTY::Prompt.new.ask("Create a new username:")
    levelInfo =  TTY::Prompt.new.ask("What is your yoga level?\n(Beginner - Intermediate - Advanced)")
    
    if Student.find_by(name: studentInfo)
     puts "Sorry, that username is already taken!"
    else
      Student.create(name: studentInfo, level: levelInfo)
    end
  end
    


end
