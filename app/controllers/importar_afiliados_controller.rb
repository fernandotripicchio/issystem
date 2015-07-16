class ImportarAfiliadosController < ApplicationController
  def importar

  end

  def importar_bajas

  end

  def save_importar
       Afiliado.transaction do
         unless params[:excel_file].blank?
                @afiliados = Afiliado.import( params[:excel_file] )
                if @afiliados[:result]
                         flash[:notice] = "Los afiliados se importaron con exito"
                         redirect_to afiliados_path
                else
                   flash[:error] = @afiliados[:errors]
                   redirect_to afiliados_path
                end
        else
               flash[:error] = "Adjunte un archivo excel"
               redirect_to afiliados_path
        end
       end #Transaction
  end

  def save_importar_bajas
       Afiliado.transaction do
         unless params[:excel_file].blank?
                @afiliados = Afiliado.import_bajas( params[:excel_file] )
                if @afiliados[:result]
                         flash[:notice] = "Las bajas de  afiliados se importaron con exito"
                         redirect_to afiliados_path
                else
                   flash[:error] = @afiliados[:errors]
                   redirect_to afiliados_path
                end
        else
               flash[:error] = "Adjunte un archivo excel"
               redirect_to afiliados_path
        end
       end #Transaction
  end
end
