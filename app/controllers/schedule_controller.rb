class ScheduleController < ApplicationController

  def new
    event1 = eval(params[:event1])
    event2 = eval(params[:event2])
    event3 = eval(params[:event3])
    event4 = eval(params[:event4])
    p "GOT YOUR STUFF #{event1}, #{event2}"
  end

end
