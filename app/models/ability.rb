class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user


    if user.role? :admin
      can :manage, :all
    else
      can :read, :all
      can :create, :Comment
      can :update, :Comment do |comment|
        comment.try(:user) == user
      end
      if user.role?(:author)
        can :create, Stock
        can :update, Stock do |article|
          article.try(:user) == user
        end
      end
    end
  end
end
