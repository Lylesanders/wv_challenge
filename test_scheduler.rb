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
	
	end #class