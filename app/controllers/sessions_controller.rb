class SessionsController < ApplicationController

  def create

    user = User.find_or_create_by(:uid => auth['uid'])
    user.name = auth['info']['name']

  end

end
