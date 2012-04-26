class EscritoriosController < ApplicationController
  def index
    @escritorios = Escritorio.order("nome")
  end
  
  def show
    @escritorio = Escritorio.find(params [:id])
  end
  
  def new
    @escritorio = Escritorio.new
  end
  
  def create
    @escritorio = Escritorio.new(params[:escritorio])
    if @escritorio.save
      redirect_to(:action => "show", :id => @escritorio)
    else
      render :action => "new"
    end
  end
  
  def edit
    @escritorio = Escritorio.find(params[:id])
  end
  
  def update
    @escritorio = Escritorio.find(params[:id])
    if @escritorio.update_attributes(params[:escritorio])
      redirect_to(:action => "show", :id => @escritorio)
    else
      render :action => "edit"
    end  
  end
  
  def destroy
    @escritorio = Escritorio.find(params[:id])
    @escritorio.destroy
    
    redirect_to(:action => "index")
  end
end
