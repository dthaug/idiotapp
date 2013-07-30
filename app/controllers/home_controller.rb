class HomeController < ApplicationController
    def index
    @dilemmas = Dilemma.find_with_reputation(:votes, :all, order: 'votes desc')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dilemmas }
    end
  end
end
