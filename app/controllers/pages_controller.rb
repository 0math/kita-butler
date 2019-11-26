class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :dashboard]

  def home
    @kindergardens = Kindergarden.all
  end

  def dashboard
  end
end
