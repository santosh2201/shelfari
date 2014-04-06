class PagesController < ApplicationController
  
  def add
  	@book = Book.all
  	@id = params[:id]
  	#render :text => @id.inspect
  	if @id.blank?
		@empty=1
  	else
  		@empty=0
  		@editbook = Book.find(@id)
  	end		   	
  end
  
  def delete
  	@id = params[:id]
  	Book.delete(@id)
  	redirect_to :action => 'index'
  end	

  def index
  	@book = Book.all
  	render:index
  end

  def edit
  	@id = params[:id]
  	if @id.blank?
  		Book.create(:book_name => params[:bookName], :author_name => params[:authorName], :read => params[:read])	
  	else
  		@book = Book.find(@id)
  		@book.book_name = params[:bookName]
  		@book.author_name = params[:authorName]
  		@book.read = params[:read]
  		@book.save
  	end
  	redirect_to :action => 'index'
  end
  
end
