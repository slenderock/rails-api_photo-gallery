module Api::V1
  class PhotosController < ApiController
    # GET /photos
    def index
      render json: Photo.all
    end

    # GET /photos/1
    def show
      render json: Photo.find(params[:id])
    end
  end
end
