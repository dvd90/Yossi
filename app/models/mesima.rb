class Mesima < ApplicationRecord
  has_many :users, through: :accepteds
  validates :category, inclusion: { in: ["food", "activity", "attitude"] }
end
