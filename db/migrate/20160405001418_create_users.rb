class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :image
      t.string :image_slug
      t.string :motto

      t.timestamps null: false
    end
  end
end
