class Ability
  include CanCan::Ability
  def initialize(user)
    user ||= User.new
    if user.client?
      can :manage, Task, user_id: user.id
    elsif user.admin?
      can :manage, Task
    else
      can :read, :all
    end
  end
end
