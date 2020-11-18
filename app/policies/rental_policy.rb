class RentalPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end


  def index?
    true
  end

  def show?
    true
  end

  def create?
    true
  end

  def accept?
    record.toothbrush.user_id == user.id
  end

  def deny?
    record.toothbrush.user_id == user.id
  end
end
