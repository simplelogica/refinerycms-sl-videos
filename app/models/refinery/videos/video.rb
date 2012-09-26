module Refinery
  module Videos
    class Video < Refinery::Core::BaseModel
      self.table_name = 'refinery_videos'

      attr_accessible :title, :url, :position

      acts_as_indexed :fields => [:title, :url]

      validates :title, :presence => true, :uniqueness => true
    end
  end
end
