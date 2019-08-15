class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @accepted = Accepted.where(user: current_user)
  end

  def profile
  end
end

