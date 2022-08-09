class CreatePlaylists < ActiveRecord::Migration[7.0]
  def change
    create_table :playlists do |t|
      t.string :title
      t.string :song_link

      t.timestamps
    end
  end
end
