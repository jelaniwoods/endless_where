class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :name
      t.date :born_on
      t.time :time_of_birth
      t.datetime :born_at
      t.integer :age
      t.decimal :height_in_inches

      t.timestamps
    end
  end
end
