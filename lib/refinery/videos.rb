require 'refinerycms-core'
require 'acts_as_unvlogable'

module Refinery
  autoload :VideosGenerator, 'generators/refinery/videos_generator'

  module Videos
    require 'refinery/videos/engine'

    class << self
      attr_writer :root

      def root
        @root ||= Pathname.new(File.expand_path('../../../', __FILE__))
      end

      def factory_paths
        @factory_paths ||= [ root.join('spec', 'factories').to_s ]
      end
    end
  end
end
