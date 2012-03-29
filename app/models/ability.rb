class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)

    if user.admin?
      can :manage, :all
    else
      if user.teacher?
        can :manage, Page

        can :manage, WebSpace, :teacher_id => user.id
        can :read, WebSpace

        can :manage, Teacher, :id => user.id
        can :read, Teacher
        can :update, Teacher, :id => user.id
      else
        can :read, WebSpace
        can :read, Teacher
        can :read, Page
      end
    end
  end
end
