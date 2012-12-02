class RegistrationsController < Devise::RegistrationsController

  def create
    @user = User.find_by_email(params["user"]["email"])
    if @user
      flash[:notice] = "We'll keep you posted!"
      sign_in_and_redirect @user, :event => :authentication
    else
      params["user"].update({:password => Devise.friendly_token[0,20]})
      super
    end
  end
end
