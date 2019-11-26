class KindergardenPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  def show?
    true
  end
end
