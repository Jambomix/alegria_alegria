class GarotasController < ApplicationController
  def search
    if (params[:tag] && params[:tag].empty? == false)
      @garotas = Garota.tagged_with(params[:tag]).paginate(:page=>params[:page])
    else 
      #@garotas = Garota.find :all, :limit=>5
      @garotas = Garota.paginate(:page=>params[:page])
    end
  end

  def edit
    if params[:id]
      @garota = Garota.find_by_id(params[:id])
    end
  end

  def save
    if params[:id]
      @garota = Garota.find_by_id(params[:id])
      if @garota
        @garota.tag_list = params[:tag_list].split(',')
        @garota.save
      end
    end

    redirect_to '/'
  end

end
