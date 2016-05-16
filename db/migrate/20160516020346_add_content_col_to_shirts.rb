class AddContentColToShirts < ActiveRecord::Migration
  def change
    add_column(:shirts, :design, :string) 
  end
end
