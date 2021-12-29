# frozen_string_literal: true

class AddGenderToTeachers < ActiveRecord::Migration[6.0]
  def change
    add_column :teachers, :gender, :string
  end
end
