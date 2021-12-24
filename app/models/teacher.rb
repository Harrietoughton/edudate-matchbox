# frozen_string_literal: true

class Teacher < ApplicationRecord
  has_many :edudates
  has_many :date_events, through: :edudates
  as_enum :gender, %i[male female]
  as_enum :age, %i[under_thirty_nine forty_plus]
end
