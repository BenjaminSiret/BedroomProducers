class TracksController < ApplicationController
  def index
    @tracks = Track.all
  end

  def show
    @track = Track.find(params[:id])
  end

  def new
    @track = Track.new
  end

  def create
    @track = Track.new(track_params)
    @track.user = current_user
    if @track.save
      redirect_to user_path(current_user)
    else
      render "new"
    end
  end

  def edit
    @track = Track.find(params[:id])
  end

  def update
    @track = Track.find(params[:id])
    @track.update(track_params)
    redirect_to track_path(@track)
  end

  def destroy
    @track = Track.find(params[:id])
    @track.destroy
    redirect_to user_path(current_user)
  end

  private

  def track_params
    params.require(:track).permit(:title, :description, :url, :audio_file)
  end
end
