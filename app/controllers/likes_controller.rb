class LikesController < ApplicationController
    def new
    end
    def create
        params[:like][:user_id] = work.id
        @like = Like.new like_params
        if @like.save
            redirect_to @work, notice: "you liked it"
        else
            #if the like is not saved in the server
            redirect_to @work, alert: 'unable to like'
    end

    def update
    like = Likes.find params[:id]
    like.update like_params
    redirect_to work
    end

    def show
        @work.Work.find prams[:id]
        @like_count = like.where(work_id: @work_id).count
        redirect_to @work
    end

end

private
def like_params
    params.require(:like).permit(:user_id, :work_id)
end
