class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :date
      t.string :location
      t.text :description
      t.integer :creator_id

      t.timestamps
    end
  end
end
