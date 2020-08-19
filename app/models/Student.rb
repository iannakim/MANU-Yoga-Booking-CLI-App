require 'tty-prompt'

class Student < ActiveRecord::Base

  has_many :reservations
  has_many :yogaclasses, through: :reservations
  has_many :instructors, through: :reservations


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
