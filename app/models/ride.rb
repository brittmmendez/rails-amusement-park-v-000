class Ride < ActiveRecord::Base
  belongs_to :attraction
  belongs_to :user

  def take_ride
      if !ticket_check && !height_check
        "Sorry. You do not have enough tickets to ride the #{self.attraction.name}. You are not tall enough to ride the #{self.attraction.name}."
      elsif !ticket_check
        "Sorry. You do not have enough tickets to ride the #{self.attraction.name}."
      elsif !height_check
        "Sorry. You are not tall enough to ride the #{self.attraction.name}."
      else
        update_tickets
        update_nausea
        update_happiness
        "Thanks for riding the #{self.attraction.name}!"
      end
  end

  def ticket_check
    self.user.tickets >= self.attraction.tickets
  end

  def height_check
    self.user.height >= self.attraction.min_height
  end

  def update_tickets
    ticket_count= self.user.tickets - self.attraction.tickets
    self.user.tickets=ticket_count
    self.user.save
  end

  def update_nausea
    nausea_count= self.user.nausea + self.attraction.nausea_rating
    self.user.nausea = nausea_count
    self.user.save
  end

  def update_happiness
    happiness_count= self.user.happiness + self.attraction.happiness_rating
    self.user.happiness=happiness_count
    self.user.save
  end




end
