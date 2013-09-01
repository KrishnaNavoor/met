class CreateSystems < ActiveRecord::Migration
  def change
    create_table :systems do |t|
      t.string :name
      t.integer :area_id

      t.timestamps
    end
  end
end
