# frozen_string_literal: true

module ApplicationHelper
  # Used to embed Bootstrap's SVG icon's onto a webpage.
  def icon(icon, options = {})
    file = File.read("node_modules/bootstrap-icons/icons/#{icon}.svg")
    doc = Nokogiri::HTML::DocumentFragment.parse file
    svg = doc.at_css('svg')

    # Add any of Bootstrap's classes, if provided.
    svg['class'] += ' ' + options[:class] if options[:class].present?

    doc.to_html.html_safe
  end
end
