# frozen_string_literal: true
if Rails.env=="production"
# where we define how the cookies are going to be structured
  Rails.application.config.session_store :cookie_store, key: '_edudate_app', domain: 'edudate.herokuapp.com'
else
  Rails.application.config.session_store :cookie_store, key: '_edudate_app'
end
