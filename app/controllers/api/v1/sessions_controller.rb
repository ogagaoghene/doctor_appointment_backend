class Api::V1::SessionsController < ApplicationController
  def create 
    user = User
            .find_by(name: params["user"]["name"])
            .try(:authenticate, params["user"]["name"])
  end 
end
