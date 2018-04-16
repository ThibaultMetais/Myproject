class UsersController < ApplicationController

    def new
      @user = User.new
    end

    def create
      @user = User.new(user_params)
      @company = Company.find_by_name(params[:company][:company_name])
      if @company != nil
      @user.company_id = @company.id
        if @user.save
          session[:user_id] = @user.id
          redirect_to '/'
        else
          flash[:notice] = "There was a problem, please check your awnsers and try again"
          redirect_to '/users/new'
        end
      else
        flash[:notice] = "Company doesn't exists!"
        redirect_to '/users/new'
      end
    end

    private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

end
