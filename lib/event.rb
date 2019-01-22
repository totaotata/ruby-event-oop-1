require "pry"
require 'time'

class Event
attr_accessor :start_date, :length, :title, :attendees, :email
  def initialize(start_date, length, title, attendees)
    @title = title
    @start_date = Time.parse(start_date)
    @length = length
    @attendees = attendees
  end
  def postpone_24h
    @start_date = @start_date + 24*60*60
  end
  def end_date
    @start_date = @start_date + @length
  end
  def is_past
  t = Time.now
    if (@start_date < t)
      true
    else
      false
    end
  end
  def is_future
    !self.is_past
  end
  def is_soon
    thirty_min = 3*60
    alert = Time.now - thirty_min
    if (@start_date >= alert)
      puts "C'est dans moins de 30 minutes !!!"
    else
      "Tu as encore le temps"
    end
  end
  def to_s
    puts "Titre : #{@title}"
    puts "Date de début : #{@start_date}"
    puts "Durée : #{@length} minutes"
    @attendees = @attendees.join(", ")
    puts "Invités : #{@attendees}"
  end
end
#binding.pry
#puts "end of file"
