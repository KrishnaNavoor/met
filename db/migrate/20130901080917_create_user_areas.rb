class CreateUserAreas < ActiveRecord::Migration
  def change
    create_table :user_areas do |t|
      t.integer :area_id
      t.integer :type_id
      t.integer :user_id

      t.timestamps
    end
  end
end
