module Refinery
  module Videos
    class Video < Refinery::Core::BaseModel
      self.table_name = 'refinery_videos'

      attr_accessor :video_data

      translates :title, :video_text, :video_url, :custom_url, :slug

      extend FriendlyId
      friendly_id :friendly_id_source, :use => [:slugged, :globalize]

      attr_accessible :title, :video_url, :video_text, :custom_url, :position

      acts_as_indexed :fields => [:title, :video_text]

      validates :title, :presence => true, :uniqueness => true
      validates :video_url, :presence => true

      after_initialize :initialize_attributes
      before_validation :set_title_from_video, :if => 'title.blank?'

      delegate :thumbnail, :embed_html, :to => :video_data, :allow_nil => true

      def friendly_id_source
        custom_url.presence || title
      end

      def initialize_attributes
        self.load_video_data
      end

      def load_video_data
        self.video_data = self.video_url.blank? ? nil : (UnvlogIt.new(self.video_url) rescue nil)
      end

      def video_url= video_url
        self[:video_url] = video_url
        self.load_video_data
      end

      def set_title_from_video
        self.title = self.video_data.title unless self.video_data.blank?
      end
    end
  end
end
