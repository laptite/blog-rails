class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comment
      t.integer :author_id
      t.integer :post_id

      t.timestamps
    end
  end
end
