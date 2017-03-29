require "minitest/autorun"
require_relative "scheduler.rb"
#require_relative "schedulera.rb"

class TestScheduler < Minitest::Test

		# def test_one_equal_one
		# 	assert_equal(1,1)
		# end

		def test_master_student_list_Megan
			current_schedule= Schedule.new
			file_name = "megan_smith.csv"
			assert_equal([["Smith","Megan","Coding","Robotics","EMT","Fire_fighting"]],current_schedule.student_list(file_name))
		end

		# def test_master_student_list_Jeff
		# 	current_schedule= Schedule.new
		# 	file_name = "jeff_fox.csv"
		# 	assert_equal([["Fox","Jeff","Fire_fighting","Coding","EMT","Robotics"]],current_schedule.student_list(file_name))
		# end

		# def test_master_student_list_Clarisa
		# 	current_schedule= Schedule.new
		# 	file_name = "Clarisa_Darling.csv"
		# 	assert_equal([["Darling","Clarisa","coding","robotics","fire_fighting","emt"]],current_schedule.student_list(file_name))
		# end

		# def test_class_list
		# 	current_schedule= Schedule.new
		# 	class_file = "classes.csv"
		# 	assert_equal([["Coding",15],["Robotics",25],["Fire_fighting",50],["EMT",30]],current_schedule.class_list(class_file))
		# end

		# def test_class_list_two
		# 	current_schedule= Schedule.new
		# 	class_file = "classb.csv"
		# 	assert_equal([["Dish_washing",24],["Mining",13],["Culinary_arts",45],["Lawn_care",26]],current_schedule.class_list(class_file))
		# end

		# def test_student_include_one
		# 	current_schedule= Schedule.new
		# 	# student = Array.new
		# 	student_list = [["Darling", "Clarisa", "Coding", "Robotics", "Fire_fighting", "EMT"],["Stevens","Daren","Coding","Robotics","Fire_fighting","EMT"],["Fox", "Jeff", "Fire_fighting", "Coding", "EMT", "Robotics"],["Smith","Megan","Coding","Robotics","EMT","Fire_fighting"]]
		# 	assert_includes([["Darling", "Clarisa", "Coding", "Robotics", "Fire_fighting", "EMT"],["Stevens","Daren","Coding","Robotics","Fire_fighting","EMT"],["Fox", "Jeff", "Fire_fighting", "Coding", "EMT", "Robotics"],["Smith","Megan","Coding","Robotics","EMT","Fire_fighting"]],current_schedule.student(student_list))

		# end #test_student_include_one

		# def test_student_scheduler_clarisa
		# 	current_schedule= Schedule.new
		# 	student =["Darling","Clarisa","Coding","Robotics","Fire_fighting","EMT"]
		# 	class_list = [["Coding",15],["Robotics",25],["Fire_fighting",50],["EMT",30]]
		# 	assert_equal([["Darling","Clarisa","Coding",4]],current_schedule.student_schedule(student,class_list))
		# end

		# def test_student_scheduler_Daren
		# 	current_schedule= Schedule.new
		# 	student =["Stevens","Daren","Coding","Robotics","Fire_fighting","EMT"]
		# 	class_list = [["Coding",0],["Robotics",25],["Fire_fighting",50],["EMT",30]]
		# 	assert_equal([["Stevens","Daren","Robotics",3]],current_schedule.student_schedule(student,class_list))
		# end

		# def test_student_scheduler_jeff
		# 	current_schedule= Schedule.new
		# 	student =["Fox","Jeff","Fire_fighting","Coding","EMT","Robotics"]
		# 	class_list = [["Coding",0],["Robotics",25],["Fire_fighting",0],["EMT",30]]
		# 	assert_equal([["Fox","Jeff","EMT",2]],current_schedule.student_schedule(student,class_list))
		# end

		# def test_student_scheduler_multiple
		# 	current_schedule= Schedule.new
		# 	student =["Smith","Megan","Coding","Robotics","EMT","Fire_fighting"]
		# 	class_list = [["Coding",0],["Robotics",0],["Fire_fighting",05],["EMT",0]]
		# 	assert_equal([["Smith","Megan","Fire_fighting",1]],current_schedule.student_schedule(student,class_list))
		# 	student =["Darling","Clarisa","Coding","Robotics","Fire_fighting","EMT"]
		# 	class_list = [["Coding",15],["Robotics",25],["Fire_fighting",50],["EMT",30]]
		# 	assert_equal([["Smith","Megan","Fire_fighting",1],["Darling","Clarisa","Coding",4]],current_schedule.student_schedule(student,class_list))
		# 	student =["Stevens","Daren","Coding","Robotics","Fire_fighting","EMT"]
		# 	class_list = [["Coding",0],["Robotics",25],["Fire_fighting",50],["EMT",30]]
		# 	assert_equal([["Smith","Megan","Fire_fighting",1],["Darling","Clarisa","Coding",4],["Stevens","Daren","Robotics",3]],current_schedule.student_schedule(student,class_list))
		# 	student =["Fox","Jeff","Fire_fighting","Coding","EMT","Robotics"]
		# 	class_list = [["Coding",0],["Robotics",25],["Fire_fighting",0],["EMT",30]]
		# 	assert_equal([["Smith","Megan","Fire_fighting",1],["Darling","Clarisa","Coding",4],["Stevens","Daren","Robotics",3],["Fox","Jeff","EMT",2]],current_schedule.student_schedule(student,class_list))
		# end

		# def test_schedule_score_one
		# 	current_schedule= Schedule.new
		# 	students_schedule =  [["Monk","Adrian","EMT",4],["Bundy","Al","EMT",2],["Keaton","Alex","Robotics",3],["McBeal","Ally","Coding",4],["Sipowicz","Andy","Fire_fighting",4]]
		# 	assert_equal(17,current_schedule.schedule_score(students_schedule))
		# end

		# def test_schedule_score_two
		# 	current_schedule= Schedule.new
		# 	students_schedule =  [["Monk","Adrian","EMT",4],["Bundy","Al","EMT",4],["Keaton","Alex","Robotics",4],["McBeal","Ally","Coding",4],["Sipowicz","Andy","Fire_fighting",4]]
		# 	assert_equal(20,current_schedule.schedule_score(students_schedule))
		# end

		# def test_schedule_score_three
		# 	current_schedule= Schedule.new
		# 	students_schedule =  [["Monk","Adrian","EMT",1], ["Bundy","Al","EMT",2], ["Keaton","Alex","EMT",3], ["McBeal","Ally","Coding",2],["Sipowicz","Andy","Robotics",2], ["Taylor","Andy","EMT",3], ["Marie","Ann","Coding",4],["Fonzereli","Author","Coding",4]]
		# 	assert_equal(21,current_schedule.schedule_score(students_schedule))
		# end

		# def test_schedule_score_three
		# 	current_schedule= Schedule.new
		# 	students_schedule =  [["Pembleton","Frank","EMT",3], ["Crane","Frasier","Robotics",1], ["Sanford","Fred","Fire_fighting",2],["Cast","Freida","Coding",2], ["Jefferson","George","Coding",2], ["Grissom","Gil","EMT",2], ["Addams","Gomez","Fire_fighting",4], ["Munster","Herman","EMT",3], ["Simpson","Homer","Fire_fighting",4], ["Caine","Horatio","Coding",1]]
		# 	assert_equal(24,current_schedule.schedule_score(students_schedule))
		# end
		# def test_schedule_score_four
		# 	current_schedule= Schedule.new
		# 	students_schedule =  ["Fever","Johnny","Robotics",2],["Bartlet","Josiah","EMT",2],["Defazio","Laverne","Fire_fighting",4],["Briscoe","Lennie","Coding",3],["Grant","Lou","Fire_fighting",1],["DePalma","Louie","Robotics",2],["Columbo","Lt.","EMT",1],["Kojak","Theo","Lt.",2],["Ricardo","Lucy","Coding",2]
		# 	assert_equal(19,current_schedule.schedule_score(students_schedule))
		# end

		# def test_csv_file_one
		# 	current_schedule= Schedule.new
		# 	make_file = "for_testing1.csv"
		# 	students_schedule = [["Monk","Adrian","EMT",1]]
		# 	current_schedule.output_schedule(make_file,students_schedule)
		# 	actual_csv = File.open(make_file).read
		# 	expected_csv = "Monk,Adrian,EMT,1\n"
		# 	assert_equal(expected_csv,actual_csv)
		# end
		# def test_csv_file_two
		# 	current_schedule= Schedule.new
		# 	make_file = "for_testing2.csv"
		# 	students_schedule = [["Ross","Doug","Robotics",3]]
		# 	current_schedule.output_schedule(make_file,students_schedule)
		# 	actual_csv = File.open(make_file).read
		# 	expected_csv = "Ross,Doug,Robotics,3\n"
		# 	assert_equal(expected_csv,actual_csv)
		# end

		# def test_csv_file_three
		# 	current_schedule= Schedule.new
		# 	make_file = "for_testing3.csv"
		# 	students_schedule = [["Munster","Herman","EMT",3]]
		# 	current_schedule.output_schedule(make_file,students_schedule)
		# 	actual_csv = File.open(make_file).read
		# 	expected_csv = "Munster,Herman,EMT,3\n"
		# 	assert_equal(expected_csv,actual_csv)
		# end
		# def test_csv_file_four
		# 	current_schedule= Schedule.new
		# 	make_file = "for_testing4.csv"
		# 	students_schedule = [["Wayne","Bruce","Fire_fighting",4], ["Kent","Clark","EMT",3]]
		# 	current_schedule.output_schedule(make_file,students_schedule)
		# 	actual_csv = File.open(make_file).read
		# 	expected_csv = "Wayne,Bruce,Fire_fighting,4\nKent,Clark,EMT,3\n"
		# 	assert_equal(expected_csv,actual_csv)
		# end


	end #class