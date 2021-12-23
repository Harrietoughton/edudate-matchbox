# frozen_string_literal: true

class DateEvent < ApplicationRecord
  has_many :edudates
  has_many :teachers, through: :edudates
end
