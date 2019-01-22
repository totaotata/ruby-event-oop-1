require "pry"
require_relative 'event'

class EventCreator
  def initialize
  puts "Salut, tu veux créer un événement ? Cool ! "
  puts "Commençons, quel est le nom de l'événement ?"
  @title = gets.chomp

  puts "Super, quand aura-t-il lieu"
  @start_date = gets.chomp

  puts "Au top, combien de temps en minutes va-t-il durer ?"
  @length = gets.chomp

  puts "Génial, qui va participer ? Balance leurs emails"
  @attendees = gets.chomp.split(" ; ")

  puts "Super, c'est noté, à bientôt !"
  def display
    puts "Titre : #{@title}"
    puts "Date de début : #{@start_date}"
    puts "Durée : #{@length} minutes"
    @attendees = @attendees
    puts "Invités : #{@attendees}"
  end
end
end
