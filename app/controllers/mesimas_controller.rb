class MesimasController < ApplicationController
  before_action :set_mesima, only: [:show]

  def index
    # @mesimas = Mesima.all
    @food_mesima = Mesima.where(category: 'Food')[0..2]
    @activity_mesima = Mesima.where(category: 'Activity')[0..2]
    @attitude_mesima = Mesima.where(category: 'Hutzpa')[0..2]
  end

  def show
    user = Accepted.where.not(user: current_user).where(mesima: @mesima)
    @users = user.count > 0 ? user.map(&:user) : 'No other users'
    @acc = Accepted.where(user:current_user, mesima: @mesima).first
  end

  private

  def set_mesima
    @mesima = Mesima.find(params[:id])
  end
end

