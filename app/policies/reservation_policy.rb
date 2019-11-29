class ReservationPolicy < ApplicationPolicy

  def new?
    true
  end

  def create?
    true
  end

  def update?
    true
  end
end
