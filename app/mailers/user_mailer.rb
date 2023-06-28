class UserMailer < ApplicationMailer
    default from: 'info@sinder.ai'
  
    def password_reset_email
      @user = params[:user]
      @token = params[:token]
      # @url  = "http://localhost:4000/reset_password/#{@token}"
      @url  = "https://sinder.ai/#{@token}"
      mail(to: @user.email, subject: 'Password reset instructions')
    end  

    def user_signup_email
      @from = params[:user]

      mail(from: @from.email, to: "info@sinder.ai", subject: 'User signup instructions')
    end
  end
  