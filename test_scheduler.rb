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
	
	end #class