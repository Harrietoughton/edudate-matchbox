# frozen_string_literal: true

class ApplicationController < ActionController::Base
  # skip CSRF token match check because we have an API here - it's already taken care of
  skip_before_action :verify_authenticity_token
end
