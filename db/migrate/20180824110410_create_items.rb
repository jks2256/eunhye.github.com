class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
     belongs_to :user
      t.string :title
      t.text :content
      t.integer :price
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
