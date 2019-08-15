class Accepted < ApplicationRecord
  belongs_to :user
  belongs_to :mesima
  validates :status, inclusion: { in: ["accepted", "completed"] }
end
