class SubtitlesController < ApplicationController
  before_action :set_subtitle, only: [:show, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  # GET /subtitles
  def index
    @subtitles = Subtitle.all

    render json: @subtitles
  end

  # GET /subtitles/1
  def show
    render json: @subtitle
  end

  # POST /subtitles
  def create
    @subtitle = Subtitle.new(subtitle_params)
    @subtitle.user = current_user

    if @subtitle.save
      render json: @subtitle, status: :created, location: @subtitle
    else
      render json: @subtitle.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /subtitles/1
  def update
    if @subtitle.update(subtitle_params)
      render json: @subtitle
    else
      render json: @subtitle.errors, status: :unprocessable_entity
    end
  end

  # DELETE /subtitles/1
  def destroy
    @subtitle.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subtitle
      @subtitle = Subtitle.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def subtitle_params
      params.require(:subtitle).permit(:title, :votes, :user_id, :topic_id)
    end
end
