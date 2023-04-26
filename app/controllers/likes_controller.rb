class LikesController < ApplicationController
    def create
            work = Work.find params[:work_id]
            @like = work.likes.build(user_id: current_user.id)
            if @like.save
            else
                flash[:error] = "There was an error"
        end
            redirect_to @work
    end

    def update
    like = Like.find params[:id]
    like.update like_params
    redirect_to work
    end

    def show
        @work.Work.find params[:id]
        @like_count = @work.likes.count
        redirect_to @work
    end

end

private
def like_params
    params.require(:like).permit(work_id :@work.id user_id: current_user_id)
end
