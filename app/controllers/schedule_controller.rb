class ScheduleController < ApplicationController

  def new
    event1 = eval(params[:event1])
    event2 = eval(params[:event2])
    event3 = eval(params[:event3])
    event4 = eval(params[:event4])
    events = [event1, event2, event3, event4]

 
    sorted_events = events.sort! { | x, y | x[:end] <=> y[:end] }
    p "YOUR SORTED EVENTS #{sorted_events}"
    grouped = []
    grouped.push(sorted_events[0])
    p "GROUPED HAS FIRST SORTED EVENT #{grouped}"
    for i in 1..sorted_events.length
      if(grouped[i-1].class == "Array")
        if(sorted_events[i][:start] < grouped[i-1].last[:end])
          grouped[i-1].push(sorted_events[i])
        else
          grouped.push(sorted_events[i])
        end
      else
        if(sorted_events[i][:start] < grouped[i-1][:end])
          blank = []
          blank.push(grouped[i-1])
          blank.push(sorted_events[i])
          # p "BLANK2 #{blank}"
          grouped[i-1] = blank
        else
          grouped.push(sorted_events[i])
        end
      end
      p "GROUPED SO FAR #{grouped}"
    end

  end

end
