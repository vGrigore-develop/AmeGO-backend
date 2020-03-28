# frozen_string_literal: true

# user model
class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :hashed_password, presence: true
  validates :phone_number, presence: true, uniqueness: true
  validates :gender, presence: true

  validates :summary, presence: true
end
