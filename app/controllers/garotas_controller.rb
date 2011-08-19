class GarotasController < ApplicationController
  def search
    if (params[:tag] && params[:tag].empty? == false)
      @garotas = Garota.tagged_with(params[:tag])
    else 
      @garotas = Garota.find :all, :limit=>5
    end
  end

end
