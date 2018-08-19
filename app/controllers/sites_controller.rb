class SitesController < ApplicationController
  def about
  end

  def home
    @posts = Micropost.all
    
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end
end