class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user

    if user.role == "admin"
      can :manage, :all
    else
      can :read, :all
      can :create, Comment
      can :update,:destroy, Comment do |comment|
        comment.try(:user) == user
      end

      can :create, Stock
      can :update,:destroy, Stock do |stock|
        stock.try(:user) == user
      end

    end
  end
end
