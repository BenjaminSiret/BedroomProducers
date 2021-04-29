class CreateTracks < ActiveRecord::Migration[6.1]
  def change
    create_table :tracks do |t|
      t.string :title
      t.string :url
      t.string :audio_file
      t.datetime :created
      t.datetime :updated
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
