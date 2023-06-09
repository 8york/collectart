class WorksController < ApplicationController
  def index
    @works = Work.all
  end

  def new
    @work = Work.new
  end

  def create
    work = Work.new work_params
    work.user_id = @current_user.id
    #if image exsits, use uplode from cloudinary, it is a required field but currently not working, may need JS?
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      work.image_url = req["public_id"]
    end
    work.save
    redirect_to work
  end
  
  def edit
    @work = Work.find params[:id]
  end

  def update
    work = Work.find params[:id]
    work.update work_params
    
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      work.image_url = req["public_id"]  
    end 
    work.save  
    redirect_to work_path
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
