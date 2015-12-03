class SessionController < ApplicationController
  
  # GET /session
  def login
  end

  # POST /session
  def authenticate
  end

  # DELETE /session
  def logout
  end

  # GET /session/attempt
  def new_attempt
    @attempt = Attempt.new
    # TODO: autofill judge name
    # @attempt.juddge_name 
  end

  # GET /session/attempt/confirm
  def confirm
    @attempt = Attempt.new

    @attempt.team_id = params[:team_id]
    @attempt.course_id = params[:course_id]
    @attempt.points = params[:points]
    @attempt.completion_time = params[:completion_time]
    @attempt.judge_name = params[:judge_name]

    if not @attempt.valid?
      render :new_attempt
    end
  end

  # POST /session/attempt
  def create_attempt
    @attempt = Attempt.new

    @attempt.team_id = params[:team_id]
    @attempt.course_id = params[:course_id]
    @attempt.points = params[:points]
    @attempt.completion_time = params[:completion_time]
    @attempt.judge_name = params[:judge_name]
    reject = params[:reject].eql? '1'

    if !reject and @attempt.save
      redirect_to '/session/attempt', notice: 'Attempt was successfully created.'
    else
      render 'new_attempt'
    end
  end

  # GET /session/team/1
  def view_team
  end

  # GET /session/winners
  def winners
  end

end
