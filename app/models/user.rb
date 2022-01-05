# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # tells the user model that the password_digest field needs to be encyrpted when stored in the DB
  # has_secure_password

  validates_presence_of :username
  validates_uniqueness_of :username
end
