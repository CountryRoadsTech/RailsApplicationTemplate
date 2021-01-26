# frozen_string_literal: true

class PagePolicy < ApplicationPolicy
  # All users can view the index of pages.
  def index?
    true
  end

  # All users can view a page.
  def show?
    true
  end

  # Only admin users can create a page.
  def create?
    user.try(:admin?)
  end

  # Only admin users can update a page.
  def update?
    user.try(:admin?)
  end

  # Only admin users can destroy a page.
  def destroy?
    user.try(:admin?)
  end
end
