class Ahoy::Store < Ahoy::DatabaseStore
  # Tell Ahoy Matey the name of the classes of the visit and event models since these are not the default values.
  def visit_model
    Visit
  end

  def event_model
    Event
  end
end

Ahoy.api = false # Set to true for JavaScript tracking.
Ahoy.track_bots = true # Do track bots.
Ahoy.visit_duration = 30.minutes # Create a new visit after 30 minutes of inactivity. Same as devise's logout period for inactivity.
Ahoy.cookie_domain = :all # Track visits across all subdomains.
