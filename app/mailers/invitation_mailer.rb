class InvitationMailer < ApplicationMailer

  def invitation(user)
    @user = user
    mail(to: @user.email , subject: "Welcome")
  end

end
