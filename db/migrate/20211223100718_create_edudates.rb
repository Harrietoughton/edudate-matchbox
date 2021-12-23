class CreateEdudates < ActiveRecord::Migration[6.0]
  def change
    create_table :edudates do |t|
      t.references :teacher, null: false, foreign_key: true
      t.references :date_event, null: false, foreign_key: true
      t.datetime :date

      t.timestamps
    end
  end
end
