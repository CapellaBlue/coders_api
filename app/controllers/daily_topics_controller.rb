class DailyTopicsController < ApplicationController
  before_action :set_daily_topic, only: [:show, :update, :destroy]

  # GET /daily_topics
  def index
    @daily_topics = DailyTopic.all.reverse

    render json: @daily_topics
  end

  # GET /daily_topics/1
  def show
    render json: @daily_topic
  end

  # POST /daily_topics
  def create
    @daily_topic = DailyTopic.new(daily_topic_params)

    if @daily_topic.save
      render json: @daily_topic, status: :created, location: @daily_topic
    else
      render json: @daily_topic.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /daily_topics/1
  def update
    if @daily_topic.update(daily_topic_params)
      render json: @daily_topic
    else
      render json: @daily_topic.errors, status: :unprocessable_entity
    end
  end

  # DELETE /daily_topics/1
  def destroy
    @daily_topic.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_topic
      @daily_topic = DailyTopic.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def daily_topic_params
      params.require(:daily_topic).permit(:content)
    end
end
