class CreateUpvotes < ActiveRecord::Migration[6.1]
  def change
    create_table :upvotes do |t|
      t.references :track, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
