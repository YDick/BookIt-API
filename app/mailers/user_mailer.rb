class UserMailer < ApplicationMailer
    default from: 'thebookitapp@gmail.com'

    def invite
        @email = 'ydick1998@gmail.com'
        @name = params[:user][:name]
        # @invitee = params[]
        mail(to: @email, subject: @name +' invites you to BookIt!')
    end

end
