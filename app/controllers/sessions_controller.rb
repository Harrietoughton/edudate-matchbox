# frozen_string_literal: true

class SessionsController < ApplicationController
  # makes a post request and then the action runs
  include CurrentUserConcern

  def create
    user = User
           .find_by(username: params['user']['username']
      .try(:authenticate, params['user']['password']))

    if user
      session[:user_id] = user.id
      render json: {
        status: :created,
        logged_in: true,
        user: user
      }
    else
      render json: { status: 401 } # 401 is universal http code if a user is not authenticated
    end
  end

  def logged_in
    # check to see if a current_user is available first
    if @current_user
      render json: {
        logged_in: true,
        user: @current_user
      }
    else
      render json: {
        logged_in: false
      }
    end
  end

  def logout
    reset_session
    render json: { status: 200, logged_out: true }
  end
end
