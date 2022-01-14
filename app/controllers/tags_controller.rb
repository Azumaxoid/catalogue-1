class TagsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @tags = TagSelector.call
    render json: { "tags": @tags }
  #  render json: {tags: [{name:”hoge”, count: 10}]}
  end
end