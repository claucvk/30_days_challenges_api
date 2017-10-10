class ChallengesController < ProtectedController
  before_action :set_challenge, only: [:show, :update, :destroy]

  # GET /challenges
  def index
    @challenges = current_user.challenges
    #@challenges = Challenge.where(:user_id => params[:user_id])
    render json: @challenges
end

  # GET /challenges/1
  def show
    @challenge = current_user.challenges.find(params[:id])
    render json: @challenge
  end

  # POST /challenges
  def create
    @challenge = current_user.challenges.build(challenge_params)
    if @challenge.save
      render json: @challenge, status: :created, location: @challenge
    else
      puts @challenge
      render json: @challenge.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /challenges/1
  def update
    @challenge = current_user.challenges.find(params[:id])
    if @challenge.update(challenge_params)
     render json: @challenge
    else
      render json: @challenge.errors, status: :unprocessable_entity
    end
  end

  # DELETE /challenges/1
  def destroy
    @challenge = current_user.challenges.find(params[:id])
    @challenge.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_challenge
      @challenge = current_user.challenges.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def challenge_params
      params.require(:challenge).permit(:name, :goal, :start_day, :end_day, :status, :user_id)
    end
end
