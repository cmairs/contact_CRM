class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here.
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities


    # sets abilities for users
    user ||= User.new # guest user (not logged in)

    if user.role == "default"
        can :manage, Contact, :account_id => user.account.id
        can :manage, User, :user_id => user.id
        can :manage, Account, :id => user.account.id
    else
        cannot :manage, :all # guest user (not logged in)
    end
  end
end