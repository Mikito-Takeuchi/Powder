class CreateGelandes < ActiveRecord::Migration[5.2]
  def change
    create_table :gelandes do |t|
      t.string :name
      t.string :address
      t.date :open_date
      t.date :close_date

      t.timestamps
    end
  end
end
