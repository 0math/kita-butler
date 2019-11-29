class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @kindergardens = Kindergarden.all
  end

  def dashboard
    @kids = current_user.kids
    @favourites = current_user.favourites
  end
end
