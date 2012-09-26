module Refinery
  module Videos
    class Video < Refinery::Core::BaseModel
      self.table_name = 'refinery_videos'

      extend FriendlyId
      friendly_id :friendly_id_source, :use => [:slugged]

      attr_accessible :title, :video_url, :custom_url, :position

      acts_as_indexed :fields => [:title, :url]

      validates :title, :presence => true, :uniqueness => true

      def friendly_id_source
        custom_url.presence || title
      end
    end
  end
end
