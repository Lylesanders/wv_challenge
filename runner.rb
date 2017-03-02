require_relative 'scheduler'

current_schedule = Schedule.new
@top_five = [["z",1],["x",2],["y",3],["w",4],["v",5]]
current_schedule.sort_top_five(@top_five)
current_schedule.weighted_schedule(@scheduled)
