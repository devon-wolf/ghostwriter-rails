class CommentsController < ApplicationController
	def create
		@document = Document.find(params[:document_id])
		@comment = @document.comments.create(comment_params)
		redirect_to document_path(@document)
	end

	private
		def comment_params
			params.require(:comment).permit(:commenter, :body. :status)
		end
end
