# frozen_string_literal: true

class Edudate < ApplicationRecord
  belongs_to :teacher
  belongs_to :date_event
end
