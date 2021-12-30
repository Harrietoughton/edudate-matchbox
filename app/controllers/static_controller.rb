# frozen_string_literal: true

class StaticController < ApplicationController
  def home
    render json: { status: 'Edudate is working!' }
  end
end
