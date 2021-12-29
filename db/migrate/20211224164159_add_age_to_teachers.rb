# frozen_string_literal: true

class AddAgeToTeachers < ActiveRecord::Migration[6.0]
  def change
    add_column :teachers, :age, :string
  end
end
