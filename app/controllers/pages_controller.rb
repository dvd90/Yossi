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



 # t.string "email", default: "", null: false
 #    t.string "encrypted_password", default: "", null: false
 #    t.string "reset_password_token"
 #    t.datetime "reset_password_sent_at"
 #    t.datetime "remember_created_at"
 #    t.datetime "created_at", null: false
 #    t.datetime "updated_at", null: false
 #    t.string "username"
 #    t.datetime "alyah_date"
 #    t.integer "pita", default: 0
 #    t.string "avatar"
