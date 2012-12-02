class RegistrationsController < Devise::RegistrationsController

  def create
    @user = User.find_or_initialize_by(email: params["user"]["email"])
    @user.password = Devise.friendly_token[0,20]
    if @user.save
      flash[:notice] = "We'll keep you posted!"
      sign_in_and_redirect @user, :event => :authentication
    else
      redirect_to root_path, notice: "Invalid email"
    end
  end
end
