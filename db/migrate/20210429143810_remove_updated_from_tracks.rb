class RemoveUpdatedFromTracks < ActiveRecord::Migration[6.1]
  def change
    remove_column :tracks, :updated, :datetime
  end
end
