class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    arr = []
    temp = "#{self.actors[0][:first_name]} #{self.actors[0][:last_name]} - #{self.name}"
    arr << temp
  end

end

