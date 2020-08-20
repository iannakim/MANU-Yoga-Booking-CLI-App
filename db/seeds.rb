Student.destroy_all
Instructor.destroy_all
Reservation.destroy_all
YogaClass.destroy_all
Student.reset_pk_sequence
Instructor.reset_pk_sequence
Reservation.reset_pk_sequence
YogaClass.reset_pk_sequence


########################### Student ##################################################################################################
elaine = Student.create(name: "Elaine", level: "advanced") #1
coco = Student.create(name: "Coco", level: "beginner") #2
patrick =Student.create(name: "Patrick", level: "beginner") #3
bill = Student.create(name: "Bill", level: "intermediate") #4
eva = Student.create(name: "Eva", level: "advanced") #5

############################ Instructors ##################################################################################################
sunny = Instructor.create(name:"Sunny", weekend?: true) #1
alex = Instructor.create(name:"Alex", weekend?: true) #2
nate = Instructor.create(name: "Nate", weekend?: false) #3
chrissy = Instructor.create(name: "Chrissy", weekend?: false) #4
kristina = Instructor.create(name: "Kristina", weekend?: true) #5
hope = Instructor.create(name: "Hope", weekend?: false) #6
lin = Instructor.create(name: "Lin", weekend?: true) #7
mia = Instructor.create(name: "Mia", weekend?: true) #8
jessica = Instructor.create(name: "Jessica", weekend?: false) #9
john = Instructor.create(name: "John", weekend?: true) #10
homer = Instructor.create(name: "Homer", weekend?: false) #11
thor = Instructor.create(name: "Thor", weekend?: true) #12



#####################################################  Yoga Classes #########################################################################

################# CHELSEA LOCATION ##################################
chelsea_hot_yoga1  = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hot Yoga", location: "Chelsea, NY", time: "August 13, 2020 8:00am - 9:00am")
chelsea_bikram_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Bikram Yoga", location: "Chelsea, NY", time: "August 13, 2020 11:00am - 12:00pm")
chelsea_kids_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Kids Yoga", location: "Chelsea, NY", time: "August 13, 2020 3:00pm - 4:00pm")
chelsea_pregnancy_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Pregnancy Yoga", location: "Chelsea, NY", time: "August 13, 2020 6:00pm - 7:00pm")
chelsea_vinyasa_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Vinyasa Yoga", location: "Chelsea, NY", time: "August 13, 2020 7:30:00pm - 8:30pm")

################# UWS LOCATION ######################################
uws_kids_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Kids Yoga", location: "Upper West Side, NY", time: "August 13, 2020 8:00am - 9:00am")
uws_pregnancy_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Pregnancy Yoga", location: "Upper West Side, NY", time: "August 13, 2020 11:00am - 12:00pm")
uws_bikram_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Bikram Yoga", location: "Upper West Side, NY", time: "August 13, 2020 3:00pm - 4:00pm")
uws_vinyasa_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Vinyasa Yoga", location: "Upper West Side, NY", time: "August 13, 2020 6:00pm - 7:00pm")
uws_hot_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hot Yoga", location: "Upper West Side, NY", time: "August 13, 2020 7:30:00pm - 8:30pm")

################ BROOKLYN LOCATION ####################################
bk_hatha_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hatha Yoga", location:"Williamsburg, BK", time: "August 13, 2020 8:00am - 9:00am")
bk_pregnancy_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Pregnancy Yoga", location: "Williamsburg, BK", time: "August 13, 2020 11:00am - 12:00pm")
bk_bikram_yoga2 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Bikram Yoga", location: "Williamsburg, BK", time: "August 13, 2020 3:00pm - 4:00pm")
bk_hot_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hot Yoga", location: "Williamsburg, BK", time: "August 13, 2020 6:00pm - 7:00pm")


################# LIC LOCATION ##########################################
lic_hatha_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hatha Yoga", location:"Long Island City, Queens", time: "August 13, 2020 8:00am - 9:00am")
lic_hot_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hot Yoga", location: "Long Island City, Queens", time: "August 13, 2020 11:00am - 12:00pm")
lic_kids_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Kids Yoga", location: "Long Island City, Queens", time: "August 13, 2020 3:00pm - 4:00pm")
lic_vinyasa_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Vinyasa Yoga", location: "Long Island City, Queens", time: "August 13, 2020 6:00pm - 7:00pm")




########################################################### Reservation ############################################################

booking1 = Reservation.create(student_id: Student.all.sample.id, yoga_class_id: YogaClass.all.sample.id) #coco - uws/bikram
booking2 = Reservation.create(student_id: Student.all.sample.id, yoga_class_id: YogaClass.all.sample.id) #coco - lic/hot
booking3 = Reservation.create(student_id: Student.all.sample.id, yoga_class_id: YogaClass.all.sample.id) #eva - uws/bikram
booking4 = Reservation.create(student_id: Student.all.sample.id, yoga_class_id: YogaClass.all.sample.id) #eva - chelsea/vinyasa




puts "🔥 🔥 🔥 🔥 "