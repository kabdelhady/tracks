module TranslationCenter
  class ApplicationController < ActionController::Base
    include LoginSystem

    helper_method :current_user

    def authenticate_user!
      return true if current_user != nil
      session['return-to'] = '/translation_center'
      redirect_to '/login'
    end

  end
end  