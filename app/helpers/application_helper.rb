# frozen_string_literal: true

module ApplicationHelper

  def navigation_bar_links

    links = ''

    if current_user.nil?
      links += user_not_signed_in_links
    else
      if current_user.admin?
        links += admin_user_links
      end

      links += user_signed_in_links
    end

    links
  end

  # Used to displaya Bootstrap's SVG icon's within HTML.
  def icon(icon, options = {})
    file = File.read("node_modules/bootstrap-icons/icons/#{icon}.svg")
    doc = Nokogiri::HTML::DocumentFragment.parse file
    svg = doc.at_css('svg')

    # Add any of Bootstrap's classes, if provided.
    svg['class'] += ' ' + options[:class] if options[:class].present?

    doc.to_html.html_safe
  end

  private

  def user_not_signed_in_links
    links = ''

    links += link_to 'Sign Up', new_user_registration_path, class: 'navigation-bar-block'
    links += link_to 'Login', new_user_session_path, class: 'navigation-bar-block'

    links
  end

  def admin_user_links
    links = ''

    links += link_to 'Admin Dashboard', root_path, class: 'navigation-bar-block'

    links
  end

  def user_signed_in_links
    links = ''

    links += link_to 'Edit Profile', edit_user_registration_path, class: 'navigation-bar-block'
    links += link_to 'Logout', destroy_user_session_path, method: :delete, class: 'navigation-bar-block'

    links
  end
end
