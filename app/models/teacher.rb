# frozen_string_literal: true

class Teacher < ApplicationRecord
  has_many :edudates
  has_many :date_events, through: :edudates
end
