class SessionsController < ApplicationController

  def create

    user = User.find_or_create_by(:uid => request.env['omniauth.auth']['uid'])
    user.name = auth['info']['name']
    session[:user_id] = user[:id]

  end

end
