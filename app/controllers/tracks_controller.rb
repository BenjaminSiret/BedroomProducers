class TracksController < ApplicationController
  before_action :find_track, only: [ :show, :edit, :update, :destroy ]

  def index
    @tracks = Track.all
  end

  def show
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
  end

  def update
    @track.update(track_params)
    redirect_to track_path(@track)
  end

  def destroy
    @track.destroy
    redirect_to user_path(current_user)
  end

  private

  def track_params
    params.require(:track).permit(:title, :description, :url, :audio_file)
  end

  def find_track
    @track = Track.find(params[:id])
  end
end
