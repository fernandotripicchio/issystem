class Afiliado < ActiveRecord::Base
   attr_accessible :apellido_nombre, :documento_nro, :documento_tipo, :beneficio,
                   :clave_excaja, :clave_numero, :clave_coparticipe, :clave_parentezco,
                   :ley_aplicada, :sexo, :estado_civil, :tipo_documento, :numero_documento,:clave_tipo
                   
   
  def numero_afiliado
    self.clave_excaja.to_s +  self.clave_tipo.to_s + self.clave_numero.to_s
  end 
  
  #import users from Excel file
  def self.open_spreadsheet(file)
      case File.extname(file.original_filename)
          when '.xls' then  Roo::Excel.new(file.path, nil, :ignore)
          when '.xlsx' then Roo::Excelx.new(file.path, nil, :ignore)
          else raise "Unknown file type: #{file.original_filename}"
      end
  end  
  
  def self.import(file)
      spreadsheet = open_spreadsheet(file)
      header = spreadsheet.row(1)
      
      result_afiliados = { :result => false, :afiliados => [], :errors => "" }
      afiliados = [] 
      fails = false
      
      (2..spreadsheet.last_row).each do |i|
            row   = spreadsheet.row(i)
            afiliado_row = Hash.new
            afiliado_row[:clave_excaja]      = "#{row[0].to_s}"
            afiliado_row[:clave_tipo]        = "#{row[1].to_s}"
            afiliado_row[:clave_numero]      = "#{row[2].to_s}"
            afiliado_row[:clave_coparticipe] = "#{row[3].to_s}"
            afiliado_row[:clave_parentezco]  = "#{row[4].to_s}"
            afiliado_row[:ley_aplicada]      = "#{row[5].to_s}"
            afiliado_row[:apellido_nombre]   = "#{row[6].to_s}"
            afiliado_row[:sexo]              = "#{row[7].to_s}"                                                                                    
            afiliado_row[:estado_civil]      = "#{row[8].to_s}"
            afiliado_row[:tipo_documento]    = "#{row[9].to_s}"
            afiliado_row[:numero_documento]  = "#{row[10].to_s}"
            afiliado  = Afiliado.where(:numero_documento => afiliado_row[:numero_documento] ).first()

            if afiliado.blank?
                afiliados << Afiliado.create(afiliado_row)
            else
               #Actualizar Afiliado
            end
            
            # if user.valid?
                # users << user
            # else
                # result_users[:result] =  false
                # result_users[:errors] =  "Error in Row #{i}: " + user.errors.full_messages.join(" - ")
                # fails = true
                # break            
            # end
       end
       
       unless fails
          result_afiliados[:afiliados]  = afiliados
          result_afiliados[:result] = true               
       end
                      
       result_afiliados      
  end    
end
