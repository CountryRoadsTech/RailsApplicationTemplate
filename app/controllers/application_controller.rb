class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception # Enables protections against cross-site request forgery attacks.

  before_action :authenticate_user! # Requires all users be signed in before visiting any page on the website.

  include Pundit # Enables performing user authorization within controller actions.
  after_action :verify_authorized # Ensures user authorization was performed within all actions.
end
