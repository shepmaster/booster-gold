# typed: strict
# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!


# LOL where should this go?
# Removes field_with_errors from form builder
ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  html_tag.html_safe
end
