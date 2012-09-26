class CreateVideosVideos < ActiveRecord::Migration

  def up
    create_table Refinery::Videos::Video.table_name do |t|
      t.string :title
      t.string :video_url
      t.string :custom_url
      t.integer :position
      t.string :slug

      t.timestamps
    end

    add_index Refinery::Videos::Video.table_name, :slug
  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-videos"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/videos/videos"})
    end

    drop_table Refinery::Videos::Video.table_name

  end

end
