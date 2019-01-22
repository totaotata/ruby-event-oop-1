require "pry"
class User
attr_accessor :email, :name
@@user_array = Array.new

  def initialize(email)
    @email = email
    @@user_array <<  self
    #@name = name
    #"#{@name}" + ": " +
  end

  def self.all
    return @@user_array
  end

  def self.find_by_email(mail)
    @@user_array.each do |user|
      return user if user.email == mail
    end
  end
end

#binding.pry
#puts "end of file"
