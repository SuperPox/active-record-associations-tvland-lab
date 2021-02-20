require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

    def full_name
        temp = "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        arr = []
        temp = "#{self.characters[0][:name]} - #{self.shows[0][:name]}"
        arr << temp
    end



end