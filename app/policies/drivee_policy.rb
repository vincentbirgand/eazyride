class DriveePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    return true
  end

  def new?
    create?
  end
  def create?
    record.journey.user != user
  end
end
