require "minitest/autorun"
require_relative "scheduler.rb"

class TestScheduler < Minitest::Test

	def test_one_equal_one
		assert_equal(1,1)
	end

	def test_first_student#(student,class_list)
		test_schedule = Schedule.new
		class_list = [["coding",26], ["robotics",12],["fire_fighting",30],["emt",15]]
		student = ["Clarisa Darling","coding","robotics","fire_fighting","emt"]
		assert_equal(["Clarisa Darling","coding",1],test_schedule.scheduler(@student,@class_list))
	end #test_first_student

end #class TestScheduler
