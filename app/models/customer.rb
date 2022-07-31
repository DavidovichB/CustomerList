class Customer < ApplicationRecord
  enum status: %i(active blocked)

  validates :name, :phone_number, :body, presence: true
end
