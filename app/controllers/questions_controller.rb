class QuestionsController < ApplicationController

	def vote
		value = params[:type] == "up" ? 1 : -1
		@question = Question.find(params[:id])
		@question.add_or_update_evaluation(:votes, value, current_user)
        redirect_to :back, notice: "Takk for stemmen"
	end
end
