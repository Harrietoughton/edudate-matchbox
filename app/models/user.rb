# frozen_string_literal: true

class User < ApplicationRecord
  # tells the user model that the password_digest field needs to be encyrpted when stored in the DB
  has_secure_password

  validates_presence_of :username
  validates_uniqueness_of :username
end
