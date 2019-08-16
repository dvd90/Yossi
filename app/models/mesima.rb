class Mesima < ApplicationRecord
  has_many :users, through: :accepteds
  validates :category, inclusion: { in: ["Food", "Activity", "Hutzpa"] }


 def self.set_difficulty(mesima)
    if mesima <= 5
      return "Easy"
    elsif mesima >= 6 && mesima < 10
      return "Moderate"
    else
      return "Hard"
    end
  end
end
