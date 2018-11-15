class TargetController < ApplicationController
  before_action: set_target, only: [:edit, :show]
  def new
    target = Target.new
  end

  def create
  end

  def index
    @targets = Target.all
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

  private

  def set_target
    @target = Target.find(params[:id])
  end
end
