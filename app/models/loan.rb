class Loan < ApplicationRecord
  validates :interest_rate, presence: true
  validates :status, inclusion: { in: ['Pending', 'Approved', 'Rejected'] }
  validates :name, presence: true
  validates :email, presence: true
  validates :amount, presence: true
  validates :interest_rate, presence: true
end
