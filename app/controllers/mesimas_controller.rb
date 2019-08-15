class MesimasController < ApplicationController
  before_action :set_mesima, only: [:show]

  def index

  end

  def show
    # ...
  end

  private

  def set_mesima
    @mesima = Mesima.find(params[:id])
  end
end

