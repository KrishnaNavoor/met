class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :work_phone
      t.string :mobile
      t.string :title

      t.timestamps
    end
  end
end
