class DocumentsController < ApplicationController
  def index
    @documents = Document.all
  end

  def show
    @document = Document.find(params[:id])
  end

  def new
    @document = Document.new
  end

  def create
    @document = Document.new(document_params)

    if @document.save
      redirect_to @document
    else
      render :new
    end
  end

  def edit
    @document = Document.find(params[:id])
  end

  def update
    @document = Document.find(params[:id])

    if @document.update(document_params)
      redirect_to @document
    else
      render :edit
    end
  end

  private
  def document_params
    params.require(:document).permit(:title, :body)
  end

end
