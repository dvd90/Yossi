class MesimasController < ApplicationController
  before_action :set_mesima, only: [:show]

  def index
    @mesimas = Mesima.all
  end

  def show
  end

  private

  def set_mesima
    @mesima = Mesima.find(params[:id])
  end
end

