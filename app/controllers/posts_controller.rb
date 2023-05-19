class PostsController < ApplicationController

    def new
      @post = Post.new
    end
  
    def create
      @post = Post.new
      @place = Place.find_by({ "id" => params["id"] })
      @post["title"] = params["post"]["title"]
      @post["description"] = params["post"]["description"]
      @post.save  
      redirect_to "/places/"
    end
end
