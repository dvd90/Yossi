class MesimasController < ApplicationController
  before_action :set_mesima, only: [:show]

  def index
    # @mesimas = Mesima.all
    @food_mesima = Mesima.where(category: 'food')[0..2]
    @activity_mesima = Mesima.where(category: 'activity')[0..2]
    @attitude_mesima = Mesima.where(category: 'attitude')[0..2]
  end

  def show
    user = Accepted.where.not(user: current_user).where(mesima: @mesima)
    @users = user.count > 0 ? user.map(&:user) : 'No other users'
  end

  private

  def set_mesima
    @mesima = Mesima.find(params[:id])
  end
end

