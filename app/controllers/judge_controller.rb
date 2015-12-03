class JudgeController < ApplicationController

  before_action :authenticate_user!, except: [:home]

  # GET /
  def home
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
    unless params[:age_group].blank?
      t = Team.where(age_group: params[:age_group])
    else
      t = Team.all
    end
    
    @teams = t.sort_by{|t| [-t.score[:total], t.score[:latest]] }
  end

end
