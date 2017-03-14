require "minitest/autorun"
require_relative "scheduler.rb"
#require_relative "schedulera.rb"

class TestScheduler < Minitest::Test

		# def test_one_equal_one
		# 	assert_equal(1,1)
		# end

		def test_master_student_list_Megan
			test_schedule= Schedule.new
			file_name = "megan_smith.csv"
			assert_equal([["Smith","Megan","Coding","Robotics","EMT","Fire_fighting"]],test_schedule.student_list(file_name))
		end

		def test_master_student_list_Jeff
			test_schedule= Schedule.new
			file_name = "jeff_fox.csv"
			assert_equal([["Fox","Jeff","Fire_fighting","Coding","EMT","Robotics"]],test_schedule.student_list(file_name))
		end

		def test_master_student_list_Clarisa
			test_schedule= Schedule.new
			file_name = "Clarisa_Darling.csv"
			assert_equal([["Darling","Clarisa","coding","robotics","fire_fighting","emt"]],test_schedule.student_list(file_name))
		end

		def test_class_list
			test_schedule= Schedule.new
			class_file = "classes.csv"
			assert_equal([["Coding",15],["Robotics",25],["Fire_fighting",50],["EMT",30]],test_schedule.class_list(class_file))
		end

		def test_class_list_two
			test_schedule= Schedule.new
			class_file = "classb.csv"
			assert_equal([["Dish_washing",24],["Mining",13],["Culinary_arts",45],["Lawn_care",26]],test_schedule.class_list(class_file))
		end

		def test_student_include_one
			test_schedule= Schedule.new
			# student = Array.new
			student_list = [["Darling", "Clarisa", "Coding", "Robotics", "Fire_fighting", "EMT"],["Stevens","Daren","Coding","Robotics","Fire_fighting","EMT"],["Fox", "Jeff", "Fire_fighting", "Coding", "EMT", "Robotics"],["Smith","Megan","Coding","Robotics","EMT","Fire_fighting"]]
			assert_includes([["Darling", "Clarisa", "Coding", "Robotics", "Fire_fighting", "EMT"],["Stevens","Daren","Coding","Robotics","Fire_fighting","EMT"],["Fox", "Jeff", "Fire_fighting", "Coding", "EMT", "Robotics"],["Smith","Megan","Coding","Robotics","EMT","Fire_fighting"]],test_schedule.student(student_list))

		end #test_student_include_one

		def test_student_scheduler_clarisa
			test_schedule= Schedule.new
			student =["Darling","Clarisa","Coding","Robotics","Fire_fighting","EMT"]
			class_list = [["Coding",15],["Robotics",25],["Fire_fighting",50],["EMT",30]]
			assert_equal([["Darling","Clarisa","Coding",4]],test_schedule.student_schedule(student,class_list))
		end

		def test_student_scheduler_Daren
			test_schedule= Schedule.new
			student =["Stevens","Daren","Coding","Robotics","Fire_fighting","EMT"]
			class_list = [["Coding",0],["Robotics",25],["Fire_fighting",50],["EMT",30]]
			assert_equal([["Stevens","Daren","Robotics",3]],test_schedule.student_schedule(student,class_list))
		end

		def test_student_scheduler_jeff
			test_schedule= Schedule.new
			student =["Fox","Jeff","Fire_fighting","Coding","EMT","Robotics"]
			class_list = [["Coding",0],["Robotics",25],["Fire_fighting",0],["EMT",30]]
			assert_equal([["Fox","Jeff","EMT",2]],test_schedule.student_schedule(student,class_list))
		end

		def test_student_scheduler_multiple
			test_schedule= Schedule.new
			student =["Smith","Megan","Coding","Robotics","EMT","Fire_fighting"]
			class_list = [["Coding",0],["Robotics",0],["Fire_fighting",05],["EMT",0]]
			assert_equal([["Smith","Megan","Fire_fighting",1]],test_schedule.student_schedule(student,class_list))
			student =["Darling","Clarisa","Coding","Robotics","Fire_fighting","EMT"]
			class_list = [["Coding",15],["Robotics",25],["Fire_fighting",50],["EMT",30]]
			assert_equal([["Smith","Megan","Fire_fighting",1],["Darling","Clarisa","Coding",4]],test_schedule.student_schedule(student,class_list))
			student =["Stevens","Daren","Coding","Robotics","Fire_fighting","EMT"]
			class_list = [["Coding",0],["Robotics",25],["Fire_fighting",50],["EMT",30]]
			assert_equal([["Smith","Megan","Fire_fighting",1],["Darling","Clarisa","Coding",4],["Stevens","Daren","Robotics",3]],test_schedule.student_schedule(student,class_list))
			student =["Fox","Jeff","Fire_fighting","Coding","EMT","Robotics"]
			class_list = [["Coding",0],["Robotics",25],["Fire_fighting",0],["EMT",30]]
			assert_equal([["Smith","Megan","Fire_fighting",1],["Darling","Clarisa","Coding",4],["Stevens","Daren","Robotics",3],["Fox","Jeff","EMT",2]],test_schedule.student_schedule(student,class_list))
		end

		def test_grand_score_one
			test_schedule= Schedule.new
			students_schedule =  [["Monk","Adrian","EMT",4],["Bundy","Al","EMT",2],["Keaton","Alex","Robotics",3],["McBeal","Ally","Coding",4],["Sipowicz","Andy","Fire_fighting",4]]
			assert_equal(17,test_schedule.grand_score(students_schedule))
		end

		def test_grand_score_two
			test_schedule= Schedule.new
			students_schedule =  [["Monk","Adrian","EMT",4],["Bundy","Al","EMT",4],["Keaton","Alex","Robotics",4],["McBeal","Ally","Coding",4],["Sipowicz","Andy","Fire_fighting",4]]
			assert_equal(20,test_schedule.grand_score(students_schedule))
		end

		def test_grand_score_three
			test_schedule= Schedule.new
			students_schedule =  [["Monk","Adrian","EMT",1], ["Bundy","Al","EMT",2], ["Keaton","Alex","EMT",3], ["McBeal","Ally","Coding",2],["Sipowicz","Andy","Robotics",2], ["Taylor","Andy","EMT",3], ["Marie","Ann","Coding",4],["Fonzereli","Author","Coding",4]]
			assert_equal(21,test_schedule.grand_score(students_schedule))
		end

		def test_grand_score_three
			test_schedule= Schedule.new
			students_schedule =  [["Pembleton","Frank","EMT",3], ["Crane","Frasier","Robotics",1], ["Sanford","Fred","Fire_fighting",2],["Cast","Freida","Coding",2], ["Jefferson","George","Coding",2], ["Grissom","Gil","EMT",2], ["Addams","Gomez","Fire_fighting",4], ["Munster","Herman","EMT",3], ["Simpson","Homer","Fire_fighting",4], ["Caine","Horatio","Coding",1]]
			assert_equal(24,test_schedule.grand_score(students_schedule))
		end
				def test_grand_score_four
			test_schedule= Schedule.new
			students_schedule =  ["Fever","Johnny","Robotics",2],["Bartlet","Josiah","EMT",2],["Defazio","Laverne","Fire_fighting",4],["Briscoe","Lennie","Coding",3],["Grant","Lou","Fire_fighting",1],["DePalma","Louie","Robotics",2],["Columbo","Lt.","EMT",1],["Kojak","Theo","Lt.",2],["Ricardo","Lucy","Coding",2]
			assert_equal(19,test_schedule.grand_score(students_schedule))
		end


	end #class