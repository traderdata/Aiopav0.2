class ApplicationController < ActionController::Base

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :getCompany,:except => [:signinprocess, :signupprocess]
  before_action :require_login, :except => [:signin, :signinprocess, :signup, :signupprocess]


  def require_login
    if !session.has_key?(:user_id)
      redirect_to signin_path
    end
  end

  def getCompany

    if (request.subdomain!='www')

      if request.fullpath == '/signup'
        redirect_to root_url(:subdomain=>'www')
        else
        company = Suplier.find_by_name(request.subdomain)

        if !company.nil?
          session[:company_id] = company.id

        else
          redirect_to 'http://www.aiopa.com.br'#root_url(:subdomain=>'www')
        end
      end
    end

  end


end
