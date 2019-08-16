class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @accepted = Accepted.where(user: current_user)
    @until_yossi = "#{(100.0 - current_user.pita.to_f)}%"
  end

  def profile
  end
end

