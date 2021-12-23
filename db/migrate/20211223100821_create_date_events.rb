# frozen_string_literal: true

# class comment
class CreateDateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :date_events do |t|
      t.datetime :time
      t.boolean :teacher_1_liked
      t.boolean :teacher_2_liked

      t.timestamps
    end
  end
end
