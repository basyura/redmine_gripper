class GripesController < ApplicationController
  unloadable

  def index
    @gripes = Gripe.order('id desc')
    @gripe  = Gripe.new
  end

  def update
    gripe = Gripe.new(params[:gripe])
    gripe.user_id = User.current.id
    gripe.save

    redirect_to :action => 'index'
  end
end
