# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.has_role? :admin
      can :manage, :all
    elsif user.has_role? :psicologo
      #can :create, Psicologo
      can :update, Psicologo
      can :update, Paciente
      can :update, Sessao
      can :read, :all
    else
      can :read, :all
    end
  end
end
