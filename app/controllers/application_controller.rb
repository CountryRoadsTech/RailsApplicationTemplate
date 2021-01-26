class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception # Enables protections against cross-site request forgery attacks.

  before_action :authenticate_user! # Requires all users be signed in before visiting any page on the website.
end
