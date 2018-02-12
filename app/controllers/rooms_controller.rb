class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to rooms_path, notice: "La habitación ha sido creada con éxito"
    else
      render :new #vuelve al formulario de creación de habitación
    end
  end

  def edit
    @room = Room.find(params[:id])
  end

  def update
    @room = Room.find(params[:id])
    if @room.update(room_params)
      redirect_to rooms_path, notice: "La habitación ha sido modificado con éxito"
    else
      render :edit #vuelve al formulario de edición de habitación
    end
  end

  def destroy
  @room = Room.find(params[:id])
  @room.destroy

  redirect_to rooms_path, notice: "La habitación fué eliminada con éxito"
end

  protected
    def room_params
      params.require(:room).permit(:title, :description, :beds, :guests, :image_url, :price_per_night)
    end
end
