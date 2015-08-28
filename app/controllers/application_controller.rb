class ApplicationController < ActionController::Base
  
  def authorize
  
    if user = authenticate_with_http_basic { |username, password|
        if username == "username" && password == "password"
          true
        else
          false
        end
      }

    else
      respond_to do |format|
        format.html { redirect_to :root }
        format.xml  { head :unauthorized }
        format.json { head :unauthorized }
      end
    end
  end
end
