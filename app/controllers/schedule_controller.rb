class ScheduleController < ApplicationController

  def new
    event1 = eval(params[:event1])
    event2 = eval(params[:event2])
    event3 = eval(params[:event3])
    event4 = eval(params[:event4])
    events = [event1, event2, event3, event4]

 
    sorted_events = events.sort! { | x, y | x[:end] <=> y[:end] }
    p "YOUR SORTED EVENTS #{sorted_events}"
  end

end
