class AddDimensionsToVideos < ActiveRecord::Migration

  def up
    add_column Refinery::Videos::Video.table_name, :width, :integer
    add_column Refinery::Videos::Video.table_name, :height, :integer
  end

  def down
    remove_column Refinery::Videos::Video.table_name, :width
    remove_column Refinery::Videos::Video.table_name, :height
  end

end
