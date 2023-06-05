class User < ApplicationRecord
  # Include Devise modules
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  # Other model code...
  belongs_to :role
end