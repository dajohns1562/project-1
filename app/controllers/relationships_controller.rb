class RelationshipsController < ApplicationController

def new
  @relationship = Relationship.new
end

def create
  @relationship = Relationship.create :followed_id => params[:followed_id], :follower_id => @current_user.id
  @current_user.relationships << @relationship
end

end
