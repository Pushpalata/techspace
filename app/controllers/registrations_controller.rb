# Fix "unpermitted parameters"  devise & rails 4 strong parameters issue
# registrations_controller.rb
class RegistrationsController < Devise::RegistrationsController

  def sign_up_params
     params.require(:user).permit(:email, :name, :password, :confirm_password)
  end
  
end
