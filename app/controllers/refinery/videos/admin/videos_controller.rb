module Refinery
  module Videos
    module Admin
      class VideosController < ::Refinery::AdminController

        crudify :'refinery/videos/video', :xhr_paging => true,
                :order => "created_at DESC", :sortable => false

      end
    end
  end
end
