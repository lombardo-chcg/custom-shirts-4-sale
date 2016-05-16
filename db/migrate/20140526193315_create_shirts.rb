class CreateShirts < ActiveRecord::Migration
  def change
    create_table :shirts do |t|
      t.integer :designer_id
      t.float   :price
      t.string  :content
      
      t.timestamps(null: false)
    end
  end
end
