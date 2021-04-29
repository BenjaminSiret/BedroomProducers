class RemoveCreatedFromTracks < ActiveRecord::Migration[6.1]
  def change
    remove_column :tracks, :created, :datetime
  end
end
