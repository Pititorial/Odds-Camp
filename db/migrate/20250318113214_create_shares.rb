class CreateShares < ActiveRecord::Migration[8.0]
  def change
    create_table :shares do |t|
      t.references :user, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true
      t.timestamps
    end

    add_index :shares, [ :user_id, :post_id ], unique: true
  end
end
