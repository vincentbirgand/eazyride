class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def index?
    return true
  end
  def show?
    return true
  end
  def new?
    create?
  end
  def create?
    return true
  end
  # On n'update uniquement son propre profil
  # def update?
  #   record.user == user
  # end
end
