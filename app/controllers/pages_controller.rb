class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @kindergardens = Kindergarden.all
  end

  def dashboard
    @kids = current_user.kids
    @favourites = current_user.favourites
    @declined_reservations = current_user.reservations.where(kindergarden_id: @kindergarden, status: 'Declined')
    @all_reservations = current_user.reservations.where(kindergarden_id: @kindergarden)
  end
end
