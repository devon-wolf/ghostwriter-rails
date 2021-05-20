class DocsController < ApplicationController
  def index
    @docs = Document.all
  end

  def show
    @document = Document.find(params[:id])
  end
  
end
