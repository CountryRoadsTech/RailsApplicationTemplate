# frozen_string_literal: true

module ApplicationHelper
  # Used to render the links within the top navigation bar.
  # The links change depending on if the current user is signed in or not.
  def user_navigation_bar_links
    if current_user.nil?
      not_signed_in_links
    else
      output = signed_in_links

      if current_user.admin?
        output += admin_links
      end

      output
    end
  end

  private

  def not_signed_in_links
    output = tag.li(class: 'p-2') do
      link_to 'Sign In', new_user_session_path
    end
    output += tag.li(class: 'p-2') do
        link_to 'Create an Account', new_user_registration_path
      end
  end

  def signed_in_links
    output = tag.li(class: 'p-2') do
      link_to 'Edit Profile', edit_user_registration_path
    end
    output += tag.li(class: 'p-2') do
        link_to 'Logout', destroy_user_session_path, method: :delete
      end
  end

  def admin_links
    tag.li(class: 'p-2') do
      link_to 'Admin Dashboard', root_path
    end
  end
end
