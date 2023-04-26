class LikesController < ApplicationController

    def create
        @work = Work.find(params[:work_id])
        @like = Like.create(work: @work, user: @current_user)
        if @like.save
        redirect_to(work_path(@work.id))
        else
            flash[:error] = "there was an error"
            redirect_to work_path
        end
    end

    # def update
    # like = Like.find params[:id]
    # like.update like_params
    # redirect_to work
    # end

    # def show
    #     @work.Work.find params[:id]
    #     @like_count = @work.likes.count
    #     redirect_to @work
    # end

end

private
def like_params
    params.require(:like).permit(work_id :@work.id user_id: current_user_id)
end
