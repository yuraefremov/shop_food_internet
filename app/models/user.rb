# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :timeoutable, :trackable,
         :recoverable, :rememberable, :validatable, :confirmable
end
