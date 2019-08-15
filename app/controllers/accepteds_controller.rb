class AcceptedsController < ApplicationController
  before_action :set_mesima, only: [:create, :update]
  before_action :set_accepted, only: [:update]
  def create
    @accepted = Accepted.new(user_id: current_user.id, mesima_id: @mesima.id, status: "accepted")
    @accepted.save
    redirect_to dashboard_path
  end

  def update
    @accepted.update(status: "completed")
    current_user.pita += @mesima.worth
    redirect_to dashboard_path
  end

  private

  def set_mesima
    @mesima = Mesima.find(params[:mesima_id])
  end

  def set_accepted
    @accepted = Accepted.find(params[:id])
  end
end
