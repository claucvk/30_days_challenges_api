class DiariesController < ProtectedController
  before_action :set_diary, only: [:show, :update, :destroy]

  # GET /diaries
  def index
    @challenge = Challenge.find(params["challenge_id"])
    # @diaries = Diary.where(:challenge_id => params[:challenge_id])
    @diaries = @challenge.diaries

    render json: @diaries
  end

  # GET /diaries/1
  def show
    @diary = Diary.find(params[:id])
    render json: @diary
  end

  # POST /diaries
  def create
    @challenge = Challenge.find(diary_params["challenge_id"])
    # @diary = current_user.diaries.build(diary_params)
    @diary = @challenge.diaries.build(diary_params)

    if @diary.save
      render json: @diary, status: :created, location: @diary
    else
      puts @diary
      render json: @diary.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /diaries/1
  def update
    @diary = current_user.diaries.find(params[:id])
    if @diary.update(diary_params)
      head :no_content
    else
      render json: @diary.errors, status: :unprocessable_entity
    end
  end

  # DELETE /diaries/1
  def destroy
    @diary = Diary.find(params[:id])
    @diary.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diary
      @diary = Diary.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def diary_params
      params.require(:diary).permit(:day, :description, :status, :challenge_id)
    end
end
