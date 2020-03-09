class CreateWalks < ActiveRecord::Migration[6.0]
  def change
    create_table :walks do |t|
      t.integer :dog_id
      t.integer :volunteer_id
      t.integer :duration
      t.date :date

      t.timestamps
    end
  end
end
