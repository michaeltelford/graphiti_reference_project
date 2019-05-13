class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.text :body
      t.boolean :active

      t.timestamps
    end
  end
end
