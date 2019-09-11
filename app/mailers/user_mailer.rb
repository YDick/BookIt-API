class UserMailer < ApplicationMailer
    default from: 'thebookitapp@gmail.com'

    def invite
        @email = params[:user][:recipientEmail]
        @invitee = params[:user][:recipientName]
        @name = params[:name]
        @message = params[:user][:message]
        mail(to: @email, subject: @name +' invites you to BookIt!')
    end
end
