Student.destroy_all
Instructor.destroy_all
Reservation.destroy_all
YogaClass.destroy_all
Student.reset_pk_sequence
Instructor.reset_pk_sequence
Reservation.reset_pk_sequence
YogaClass.reset_pk_sequence

############################ Instructors #############################
sunny = Instructor.create(name:"Sunny", weekend?: true)
alex = Instructor.create(name:"Alex", weekend?: true)
nate = Instructor.create(name: "Nate", weekend?: false)
chrissy = Instructor.create(name: "Chrissy", weekend?: false)
kristina = Instructor.create(name: "Kristina", weekend?: true)
hope = Instructor.create(name: "Hope", weekend?: false)
lin = Instructor.create(name: "Lin", weekend?: true)
mia = Instructor.create(name: "Mia", weekend?: true)
jessica = Instructor.create(name: "Jessica", weekend?: false)
john = Instructor.create(name: "John", weekend?: true)

########################### Student ######################################## 
elaine = Student.create(name: "Elaine", level: "advanced")
coco = Student.create(name: "Coco", level: "beginner")
patrick =Student.create(name: "Patrick", level: "beginner")
bill = Student.create(name: "Bill", level: "intermediate")
eva = Student.create(name: "Eva", level: "advanced")
dexter = Student.create(name: "Dexter", level: "intermediate")
sally = Student.create(name: "Sally", level: "beginner")
annabel = Student.create(name: "Annabel", level: "advanced")
joanne = Student.create(name: "Joanne", level: "beginner")

#####################################################  Yoga Class #########################################################################

############ CHELSEA LOCATION ############
chelsea_hot_yoga1  = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hot Yoga", location: "Chelsea, NY", time: "August 13, 2020 - 3pm")
chelsea_bikram_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Bikram Yoga", location: "Chelsea, NY", time: "August 13, 2020 - 3pm")
chelsea_kids_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Kids Yoga", location: "Chelsea, NY", time: "August 13, 2020 - 3pm")
chelsea_pregnancy_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Pregnancy Yoga", location: "Upper West Side, NY", time: "August 13, 2020 - 3pm")


############ UWS LOCATION ############
uws_kids_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Kids Yoga", location: "Upper West Side, NY", time: "August 13, 2020 - 3pm")
uws_pregnancy_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Pregnancy Yoga", location: "Upper West Side, NY", time: "August 13, 2020 - 3pm")
uws_bikram_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Bikram Yoga", location: "Upper West Side, NY", time: "August 13, 2020 - 3pm")
uws_vinyasa_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Vinyasa Yoga", location: "Upper West Side, NY", time: "August 13, 2020 - 3pm")


############ BROOKLYN LOCATION ############
bk_hatha_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hatha Yoga", location:"Williamsburg, BK", time: "August 13, 2020 - 3pm")
bk_pregnancy_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Pregnancy Yoga", location: "Williamsburg, BK", time: "August 13, 2020 - 3pm")
bk_bikram_yoga2 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Bikram Yoga", location: "Williamsburg, BK", time: "August 13, 2020 - 3pm")
bk_hot_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hot Yoga", location: "Williamsburg, BK", time: "August 13, 2020 - 3pm")


############ LIC LOCATION ############
lic_hatha_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hatha Yoga", location:"Long Island City, Queens", time: "August 13, 2020 - 3pm")
lic_hot_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hot Yoga", location: "Long Island City, Queens", time: "August 13, 2020 - 3pm")
lic_kids_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Kids Yoga", location: "Long Island City, Queens", time: "August 13, 2020 - 6pm")
lic_vinyasa_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Vinyasa Yoga", location: "Long Island City, Queens", time: "August 13, 2020 - 3pm")




########################################################### Reservation ############################################################

# booking1 = Reservation.create(student_id: Student.all.sample.id, yogaclass_id: YogaClass.all.sample.id)
# booking2 = Reservation.create(student_id: Student.all.sample.id, yogaclass_id: YogaClass.all.sample.id)
# booking3 = Reservation.create(student_id: Student.all.sample.id, yogaclass_id: YogaClass.all.sample.id)
# booking4 = Reservation.create(student_id: Student.all.sample.id, yogaclass_id: YogaClass.all.sample.id)
# booking5 = Reservation.create(student_id: Student.all.sample.id, yogaclass_id: YogaClass.all.sample.id)
# booking6 = Reservation.create(student_id: Student.all.sample.id, yogaclass_id: YogaClass.all.sample.id)
# booking7 = Reservation.create(student_id: Student.all.sample.id, yogaclass_id: YogaClass.all.sample.id)




puts "🔥 🔥 🔥 🔥 "