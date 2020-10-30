class AddPlaylistIdToRequests < ActiveRecord::Migration[6.0]
  def change
    add_column :requests, :playlist_id, :integer
  end
end
