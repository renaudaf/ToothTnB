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
    record.user == user
  end

  def deny?
    record.user == user
  end
end
