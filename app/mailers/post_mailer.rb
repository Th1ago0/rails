class PostMailer < ApplicationMailer
    def new_post
        @post = params[:post]
        mail(to: "notificacao@post.com", subjet:"New post was created")
    end
end
