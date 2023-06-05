class Ability
  include CanCan::Ability
   def initialize(user)
    user ||= User.new #Guest user

    case user.role.name
    when 'Loan Officer'
      can :create, Loan
    when 'Underwriter'
      can :read, Loan
      can :update, Loan, status: 'review'
    when 'Administrator'
      can :manage, Loan
    end
   end
end