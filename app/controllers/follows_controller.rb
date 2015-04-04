class FollowsController < ApplicationController
  def index
    @follows = current_user.follows
    @follow = Follow.new
  end
end
