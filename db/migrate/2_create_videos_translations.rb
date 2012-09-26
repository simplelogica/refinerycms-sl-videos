class CreateVideosTranslations < ActiveRecord::Migration
  def up
    Refinery::Videos::Video.create_translation_table!({
      :title => :string,
      :video_text => :text,
      :video_url => :string,
      :custom_url => :string,
      :slug => :string
    }, {
      :migrate_data => true
    })
  end

  def down
    Refinery::Videos::Video.drop_translation_table! :migrate_data => true
  end
end
