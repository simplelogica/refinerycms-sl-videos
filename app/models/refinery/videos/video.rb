module Refinery
  module Videos
    class Video < Refinery::Core::BaseModel
      self.table_name = 'refinery_videos'

      extend FriendlyId
      friendly_id :friendly_id_source, :use => [:slugged]

      attr_accessible :title, :video_url, :video_text, :custom_url, :position

      acts_as_indexed :fields => [:title, :video_text]

      validates :title, :presence => true, :uniqueness => true
      validates :video_url, :presence => true

      def friendly_id_source
        custom_url.presence || title
      end
    end
  end
end
