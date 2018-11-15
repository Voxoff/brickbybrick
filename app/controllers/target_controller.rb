class TargetController < ApplicationController
  before_action :set_target, only: [:edit, :show]

  def create
    user = current_user
    target = Target.create(target_params)
    if user && target
      target.user == user
      render :json { target: target}
    else
      render :json { error: "good messages come later"}
    end
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

  def target_params
    params.permit(:target, :savings)
  end
end
