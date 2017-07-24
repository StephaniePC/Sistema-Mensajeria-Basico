class MensajesController < ApplicationController
	def index
	@mensajes = Mensaje.all
	 @mensajes = Mensaje.search(params[:search])
	
	end 

	 def show
    @mensajes = Mensaje.find(params[:id])
  end

	def new 
 @mensajes = Mensaje.new
	end

	def create
		 @mensajes = Mensaje.new(mensaje_params)
  if @mensajes.save
  	
    redirect_to @mensajes 
  else
    render 'new'
  end
	end 
	
  	
	def edit
	@mensajes = Mensaje.find(params[:id]) 
	end

	def update
@mensajes = Mensaje.find(params[:id]) 
	if @mensajes.update(mensaje_params) 
    redirect_to @mensajes 
      else
    render 'edit'
  end
	end 

	def destroy
  @mensajes = Mensaje.find(params[:id])
  @mensajes.destroy
 
  redirect_to mensajes_path 
end

private 
	def mensaje_params
    params.require(:mensaje).permit(:De, :Para, :Contenid)
  end

end
