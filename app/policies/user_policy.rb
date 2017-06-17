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
    update?
  end

  def update?
    record == user || user.admin?
  end

  def destroy?
    user.admin?
  end
end
