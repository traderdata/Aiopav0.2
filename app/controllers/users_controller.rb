class UsersController < ApplicationController
  before_action :require_login, :except => [:signin,:new, :signinprocess, :signup, :signupprocess]
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def signin
    render layout: false
  end

  def signup
    render layout: false
  end

  def signout
    session.delete(:suplier_id)
    session.delete(:user_id)
    redirect_to :signin
  end

  def signupprocess
    #first we should check if the company exists
    Suplier.transaction do
      @suplier = Suplier.new

      @suplier.name=params.fetch(:company)
      if @suplier.save

        #we must register the admin user now
        @user = User.new
        @user.firstname = 'Admin'
        @user.lastname = 'Admin'
        @user.email = params.fetch(:email)
        @user.password='123'
        @user.role='A'

        if @user.save
          redirect_to :signin
        else
          redirect_to :signup, alert: @suplier.errors
          end
      else
        redirect_to :signup, flash: { errors: @suplier.errors }
      end
    end



  end

  def signinprocess
    @password = params.fetch(:password)
    @email = params.fetch(:email)

    #first we should check if the company exists
    @company = Suplier.find_by_name(params.fetch(:company))

    #salvando cookie
    if params.has_key?(:remember)
      cookies[:suplier] = params.fetch(:company)
      cookies[:email] = params.fetch(:email)
    end

    if @company.nil?
      redirect_to :signin, alert: 'Are you sure this is the Company name?'
    else
      #check login password and suplier
      @user = User.where(email: @email, password: @password, suplier_id: @company.id)
      if @user.count > 0
        session[:suplier_id] = @company.id
        session[:user_id] = @user.first.id
        session[:user_role] = @user.first.role

        redirect_to '/dashboard/index'
      else
        redirect_to :signin, alert: 'Wrong username/password'
      end
    end
  end

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    if session[:suplier_id].nil?
      @user.suplier_id = 1
    else
      @user.suplier_id = session[:suplier_id]
    end

    if @user.save
      redirect_to users_path
    else
      render :new
    end

  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
      if @user.update(user_params)
        redirect_to users_path
      else
        render :edit
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:firstname, :lastname, :email, :login, :password, :phone, :suplier_id, :password_confirmation, :role)
    end
end
