module TranslationCenter
  class ApplicationController < ActionController::Base
    include LoginSystem

    helper_method :current_user

    def authenticate_user!
      return true if current_user != nil
      redirect_to login_path
    end

  end
end  