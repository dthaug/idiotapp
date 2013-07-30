class DilemmasController < ApplicationController
 before_filter :authenticate_user!, except: [:index, :show]

  def index
    @dilemmas = Dilemma.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dilemmas }
    end
  end

  def show
    @dilemma = Dilemma.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dilemma }
    end
  end


  def new
    @dilemma = current_user.dilemmas.new
    @question = 2.times { @dilemma.questions.build }

  end

  def create
    @dilemma = current_user.dilemmas.new(params[:dilemma])

    respond_to do |format|
      if @dilemma.save
        format.html { redirect_to @dilemma, notice: 'Dilemma was successfully created.' }
        format.json { render json: @dilemma, status: :created, location: @dilemma }
      else
        format.html { render action: "new" }
        format.json { render json: @dilemma.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @dilemma = current_user.dilemmas.find(params[:id])
    @dilemma.destroy

    respond_to do |format|
      format.html { redirect_to dilemmas_url }
      format.json { head :no_content }
    end
  end

end
