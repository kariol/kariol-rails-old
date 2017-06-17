class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def show?
    true
  end

  def edit?
    record == user || user.admin?
  end

  def update?
    edit?
  end

  def destroy?
    user.admin?
  end
end
