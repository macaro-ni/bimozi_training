class ApplicationController < ActionController::Base
  # before_action :authenticate_user!, except: [:top]

private
  def
  after_sign_out_path_for(resource_or_scope)
      if resource_or_scope == :member
          root_path
      elsif resource_or_scope == :admin
          admin_session_path
      else
          root_path
      end
  end

end
