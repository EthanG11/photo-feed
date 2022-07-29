class PagesController < ApplicationController
    def index
        flickr = Flickr.new
        if(params[:flickr_id])
        @photos = flickr.people.getPhotos(user_id: params["flickr_id"])
        end
    end

   
end
