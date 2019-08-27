class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :gelande_id
      t.date :date
      t.string :title
      t.string :text
      t.string :how
      

      t.timestamps
    end
  end
end
