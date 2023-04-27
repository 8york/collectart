class WorksController < ApplicationController
  def index
    @works = Work.all
  end

  def new
    @work = Work.new
  end

  def create  
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      work = Work.new work_params
      work.user_id = @current_user.id
      work.image_url = req["public_id"]
      work.save
    end
    redirect_to work
  end
  
  def edit
    @work = Work.find params[:id]
  end

  def update
    work = Work.find params[:id]
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      work.image_url = req["public_id"]
      work.update work_params
    end 
    redirect_to work
  end

  def show
    @work = Work.find params[:id]
    @newLike = Like.new
    @like = Like.find_by(:work_id => @work.id, :user_id => @current_user.id)

    @likes_count = @work.likes.count
    @current_user_has_already_liked = Like.exists?(:work_id => @work.id, :user_id => @current_user.id)
  end
  

  def destroy
    work = Work.find params[:id]
    work.destroy
    redirect_to works_path
  end

  private
  def work_params
    params.require(:work).permit(:user_id, :image_url, :title, :height, :width, :medium)
  end
end
