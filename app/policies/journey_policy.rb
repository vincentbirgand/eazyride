class JourneyPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where("seat_available > ?", 0).order(created_at: :desc)
    end
  end
  def index?
    return true
  end
  def new?
    return true
  end
  def show?
    return true
  end
end
