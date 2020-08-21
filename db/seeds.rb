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





####################################################  Yoga Classes #############################################################################################



###################################################################### CHELSEA LOCATION ######################################################################
chelsea_hot_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hot Yoga (all-levels)", location: "Chelsea, NY", time: "August 21, 2020 8:00am - 9:00am")
chelsea_bikram_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Bikram Yoga (all-levels)", location: "Chelsea, NY", time: "August 21, 2020 11:00am - 12:00pm")
chelsea_kids_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Kids Yoga (ages 4-10) ", location: "Chelsea, NY", time: "August 21, 2020 3:00pm - 4:00pm")
chelsea_pregnancy_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Pregnancy Yoga", location: "Chelsea, NY", time: "August 21, 2020 6:00pm - 7:00pm")
chelsea_vinyasa_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Vinyasa Yoga (Beg - Int)", location: "Chelsea, NY", time: "August 21, 2020 7:30:00pm - 8:30pm")

chelsea_hot_yoga2 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hot Yoga (all-levels)", location: "Chelsea, NY", time: "August 22, 2020 8:00am - 9:00am")
chelsea_bikram_yoga2 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Bikram Yoga (Int - Adv)", location: "Chelsea, NY", time: "August 22, 2020 11:00am - 12:00pm")
chelsea_kids_yoga2 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Kids Yoga (ages 11-16)", location: "Chelsea, NY", time: "August 22, 2020 3:00pm - 4:00pm")
chelsea_pregnancy_yoga2 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Pregnancy Yoga", location: "Chelsea, NY", time: "August 22, 2020 6:00pm - 7:00pm")
chelsea_vinyasa_yoga2 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Vinyasa Yoga (Beg - Int)", location: "Chelsea, NY", time: "August 22, 2020 7:30:00pm - 8:30pm")

chelsea_hot_yoga3 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hot Yoga (all-levels)", location: "Chelsea, NY", time: "August 24, 2020 8:00am - 9:00am")
chelsea_bikram_yoga3 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Bikram Yoga (all-levels)", location: "Chelsea, NY", time: "August 24, 2020 11:00am - 12:00pm")
chelsea_kids_yoga3 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Kids Yoga (ages 4-10)", location: "Chelsea, NY", time: "August 24, 2020 3:00pm - 4:00pm")
chelsea_pregnancy_yoga3 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Pregnancy Yoga", location: "Chelsea, NY", time: "August 24, 2020 6:00pm - 7:00pm")
chelsea_vinyasa_yoga3 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Vinyasa Yoga (Int - Adv)", location: "Chelsea, NY", time: "August 24, 2020 7:30:00pm - 8:30pm")

chelsea_hot_yoga4 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hot Yoga (Int - Adv)", location: "Chelsea, NY", time: "August 25, 2020 8:00am - 9:00am")
chelsea_bikram_yoga4 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Bikram Yoga (all-levels)", location: "Chelsea, NY", time: "August 25, 2020 11:00am - 12:00pm")
chelsea_kids_yoga4 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Kids Yoga (ages 11-16)", location: "Chelsea, NY", time: "August 25, 2020 3:00pm - 4:00pm")
chelsea_pregnancy_yoga4 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Pregnancy Yoga", location: "Chelsea, NY", time: "August 25, 2020 6:00pm - 7:00pm")
chelsea_vinyasa_yoga4 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Vinyasa Yoga (Int - Adv)", location: "Chelsea, NY", time: "August 25, 2020 7:30:00pm - 8:30pm")


######################################################################### UWS LOCATION ##########################################################################
uws_kids_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Kids Yoga (ages 4-10) ", location: "Upper West Side, NY", time: "August 21, 2020 8:00am - 9:00am")
uws_pregnancy_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Pregnancy Yoga", location: "Upper West Side, NY", time: "August 13, 2020 11:00am - 12:00pm")
uws_bikram_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Bikram Yoga (Int - Adv)", location: "Upper West Side, NY", time: "August 21, 2020 3:00pm - 4:00pm")
uws_vinyasa_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Vinyasa Yoga (Beg - Int) ", location: "Upper West Side, NY", time: "August 21, 2020 6:00pm - 7:00pm")
uws_hot_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hot Yoga (all-levels", location: "Upper West Side, NY", time: "August 21, 2020 7:30:00pm - 8:30pm")

uws_kids_yoga2 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Kids Yoga (ages 11-16)", location: "Upper West Side, NY", time: "August 22, 2020 8:00am - 9:00am")
uws_pregnancy_yoga2 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Pregnancy Yoga", location: "Upper West Side, NY", time: "August 22, 2020 11:00am - 12:00pm")
uws_bikram_yoga2 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Bikram Yoga (Beg - Int)", location: "Upper West Side, NY", time: "August 22, 2020 3:00pm - 4:00pm")
uws_vinyasa_yoga2 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Vinyasa Yoga (Beg - Int)", location: "Upper West Side, NY", time: "August 22, 2020 6:00pm - 7:00pm")
uws_hot_yoga2 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hot Yoga (all-levels) ", location: "Upper West Side, NY", time: "August 22, 2020 7:30:00pm - 8:30pm")

uws_bikram_yoga3 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Bikram Yoga (all-levels)", location: "Upper West Side, NY", time: "August 23, 2020 1:00pm - 2:00pm")
uws_vinyasa_yoga3 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Vinyasa Yoga (Beg - Int) ", location: "Upper West Side, NY", time: "August 23, 2020 3:00pm - 4:00pm")
uws_hot_yoga3 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hot Yoga (all-levels)", location: "Upper West Side, NY", time: "August 23, 2020 5:30:00pm - 6:30pm")

uws_kids_yoga4 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Kids Yoga (ages 4-10)", location: "Upper West Side, NY", time: "August 24, 2020 8:00am - 9:00am")
uws_pregnancy_yoga4 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Pregnancy Yoga", location: "Upper West Side, NY", time: "August 24, 2020 11:00am - 12:00pm")
uws_bikram_yoga4 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Bikram Yoga (all-levels)", location: "Upper West Side, NY", time: "August 24, 2020 3:00pm - 4:00pm")
uws_vinyasa_yoga4 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Vinyasa Yoga (Int - Adv)", location: "Upper West Side, NY", time: "August 24, 2020 6:00pm - 7:00pm")
uws_hot_yoga4 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hot Yoga (all-levels)", location: "Upper West Side, NY", time: "August 24, 2020 7:30:00pm - 8:30pm")

uws_kids_yoga5 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Kids Yoga (ages 11-16)", location: "Upper West Side, NY", time: "August 25, 2020 8:00am - 9:00am")
uws_pregnancy_yoga5 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Pregnancy Yoga", location: "Upper West Side, NY", time: "August 25, 2020 11:00am - 12:00pm")
uws_bikram_yoga5 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Bikram Yoga (all-levels)", location: "Upper West Side, NY", time: "August 25, 2020 3:00pm - 4:00pm")
uws_vinyasa_yoga5 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Vinyasa Yoga (Beg - Int)", location: "Upper West Side, NY", time: "August 25, 2020 6:00pm - 7:00pm")
uws_hot_yoga5 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hot Yoga (all-levels)", location: "Upper West Side, NY", time: "August 25, 2020 7:30:00pm - 8:30pm")


######################################################################## BROOKLYN LOCATION ########################################################################
bk_hatha_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hatha Yoga (Beg - Int)", location:"Williamsburg, BK", time: "August 21, 2020 8:00am - 9:00am")
bk_pregnancy_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Pregnancy Yoga", location: "Williamsburg, BK", time: "August 21, 2020 11:00am - 12:00pm")
bk_bikram_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Bikram Yoga (Int - Adv)", location: "Williamsburg, BK", time: "August 21, 2020 3:00pm - 4:00pm")
bk_hot_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hot Yoga (all-levels)", location: "Williamsburg, BK", time: "August 21, 2020 6:00pm - 7:00pm")


bk_hatha_yoga2 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hatha Yoga (Beg - Int)", location:"Williamsburg, BK", time: "August 22, 2020 8:00am - 9:00am")
bk_pregnancy_yoga2 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Pregnancy Yoga", location: "Williamsburg, BK", time: "August 22, 2020 11:00am - 12:00pm")
bk_bikram_yoga2 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Bikram Yoga (Int - Adv)", location: "Williamsburg, BK", time: "August 22, 2020 3:00pm - 4:00pm")
bk_hot_yoga2 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hot Yoga (all-levels)", location: "Williamsburg, BK", time: "August 22, 2020 6:00pm - 7:00pm")


bk_hatha_yoga3 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hatha Yoga (all-levels)", location:"Williamsburg, BK", time: "August 25, 2020 8:00am - 9:00am")
bk_pregnancy_yoga3 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Pregnancy Yoga", location: "Williamsburg, BK", time: "August 25, 2020 11:00am - 12:00pm")
bk_bikram_yoga3 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Bikram Yoga (Beg - Int)", location: "Williamsburg, BK", time: "August 25, 2020 3:00pm - 4:00pm")
bk_hot_yoga3 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hot Yoga (all-levels)", location: "Williamsburg, BK", time: "August 25, 2020 6:00pm - 7:00pm")


bk_hatha_yoga4 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hatha Yoga (Beg - Int)", location:"Williamsburg, BK", time: "August 26, 2020 8:00am - 9:00am")
bk_pregnancy_yoga4 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Pregnancy Yoga", location: "Williamsburg, BK", time: "August 26, 2020 11:00am - 12:00pm")
bk_bikram_yoga4 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Bikram Yoga (all-levels)", location: "Williamsburg, BK", time: "August 26, 2020 3:00pm - 4:00pm")
bk_hot_yoga4 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hot Yoga (all-levels)", location: "Williamsburg, BK", time: "August 26, 2020 6:00pm - 7:00pm")


bk_hatha_yoga5 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hatha Yoga (all-levels)", location:"Williamsburg, BK", time: "August 27, 2020 8:00am - 9:00am")
bk_pregnancy_yoga5 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Pregnancy Yoga", location: "Williamsburg, BK", time: "August 27, 2020 11:00am - 12:00pm")
bk_bikram_yoga5 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Bikram Yoga (Beg - Int)", location: "Williamsburg, BK", time: "August 27, 2020 3:00pm - 4:00pm")
bk_hot_yoga5 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hot Yoga (Beg - Int)", location: "Williamsburg, BK", time: "August 27, 2020 6:00pm - 7:00pm")


bk_hatha_yoga6 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hatha Yoga (Int - Adv)", location:"Williamsburg, BK", time: "August 28, 2020 8:00am - 9:00am")
bk_pregnancy_yoga6 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Pregnancy Yoga", location: "Williamsburg, BK", time: "August 28, 2020 11:00am - 12:00pm")
bk_bikram_yoga6 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Bikram Yoga (Beg - Int)", location: "Williamsburg, BK", time: "August 28, 2020 3:00pm - 4:00pm")
bk_hot_yoga6 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hot Yoga (all-levels)", location: "Williamsburg, BK", time: "August 28, 2020 6:00pm - 7:00pm")


########################################################################### LIC LOCATION #########################################################################
lic_hatha_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hatha Yoga (Beg - Int)", location:"Long Island City, Queens", time: "August 21, 2020 8:00am - 9:00am")
lic_hot_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hot Yoga (all-levels)", location: "Long Island City, Queens", time: "August 21, 2020 11:00am - 12:00pm")
lic_kids_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Kids Yoga (ages 11-16)", location: "Long Island City, Queens", time: "August 21, 2020 3:00pm - 4:00pm")
lic_vinyasa_yoga1 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Vinyasa Yoga (Int - Adv)", location: "Long Island City, Queens", time: "August 21, 2020 6:00pm - 7:00pm")


lic_hatha_yoga2 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hatha Yoga (all-levels)", location:"Long Island City, Queens", time: "August 21, 2020 8:00am - 9:00am")
lic_hot_yoga2 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hot Yoga (Int - Adv)", location: "Long Island City, Queens", time: "August 21, 2020 11:00am - 12:00pm")
lic_kids_yoga2 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Kids Yoga (ages 4-10)", location: "Long Island City, Queens", time: "August 21, 2020 3:00pm - 4:00pm")
lic_vinyasa_yoga2 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Vinyasa Yoga (all-levels)", location: "Long Island City, Queens", time: "August 21, 2020 6:00pm - 7:00pm")


lic_hatha_yoga3 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hatha Yoga (Int - Adv)", location:"Long Island City, Queens", time: "August 23, 2020 8:00am - 9:00am")
lic_hot_yoga3 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hot Yoga (all-levels)", location: "Long Island City, Queens", time: "August 23, 2020 11:00am - 12:00pm")
lic_kids_yoga3 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Kids Yoga (ages 11-16)", location: "Long Island City, Queens", time: "August 23, 2020 3:00pm - 4:00pm")
lic_vinyasa_yoga3 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Vinyasa Yoga (Beg - Int)", location: "Long Island City, Queens", time: "August 23, 2020 6:00pm - 7:00pm")


lic_hatha_yoga4 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hatha Yoga (Int - Adv)", location:"Long Island City, Queens", time: "August 225, 2020 8:00am - 9:00am")
lic_hot_yoga4 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hot Yoga (Beg - Int)", location: "Long Island City, Queens", time: "August 25, 2020 11:00am - 12:00pm")
lic_kids_yoga4 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Kids Yoga (ages 4-10)", location: "Long Island City, Queens", time: "August 25, 2020 3:00pm - 4:00pm")
lic_vinyasa_yoga4 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Vinyasa Yoga (Int - Adv)", location: "Long Island City, Queens", time: "August 25, 2020 6:00pm - 7:00pm")


lic_hatha_yoga5 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hatha Yoga (Beg - Int)", location:"Long Island City, Queens", time: "August 26, 2020 8:00am - 9:00am")
lic_hot_yoga5 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hot Yoga (all-levels)", location: "Long Island City, Queens", time: "August 26, 2020 11:00am - 12:00pm")
lic_kids_yoga5 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Kids Yoga (ages 4-10)", location: "Long Island City, Queens", time: "August 26, 2020 3:00pm - 4:00pm")
lic_vinyasa_yoga5 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Vinyasa Yoga (Beg - Int)", location: "Long Island City, Queens", time: "August 26, 2020 6:00pm - 7:00pm")


lic_hatha_yoga6 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hatha Yoga (all-levels)", location:"Long Island City, Queens", time: "August 28, 2020 8:00am - 9:00am")
lic_hot_yoga6 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Hot Yoga (all-levels)", location: "Long Island City, Queens", time: "August 28, 2020 11:00am - 12:00pm")
lic_kids_yoga6 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Kids Yoga (ages 4-10)", location: "Long Island City, Queens", time: "August 28, 2020 3:00pm - 4:00pm")
lic_vinyasa_yoga6 = YogaClass.create(instructor_id: Instructor.all.sample.id, name: "Vinyasa Yoga (Int - Adv)", location: "Long Island City, Queens", time: "August 28, 2020 6:00pm - 7:00pm")



########################################################### Reservation ############################################################

booking1 = Reservation.create(student_id: Student.all.sample.id, yoga_class_id: YogaClass.all.sample.id)
booking2 = Reservation.create(student_id: Student.all.sample.id, yoga_class_id: YogaClass.all.sample.id) 
booking3 = Reservation.create(student_id: Student.all.sample.id, yoga_class_id: YogaClass.all.sample.id)
booking4 = Reservation.create(student_id: Student.all.sample.id, yoga_class_id: YogaClass.all.sample.id) 




puts "🔥 🔥 🔥 🔥 "