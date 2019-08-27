class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.integer :age
      t.string :sex
      t.string :job
      t.string :address
      t.string :introduce

      t.timestamps
    end
  end
end
