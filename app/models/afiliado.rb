class Afiliado < ActiveRecord::Base
   attr_accessible :apellido_nombre, :documento_nro, :documento_tipo, :beneficio,
                   :clave_excaja, :clave_numero, :clave_coparticipe, :clave_parentezco,
                   :ley_aplicada, :sexo, :estado_civil, :tipo_documento, :numero_documento,:clave_tipo,
                   :fecha_nacimiento, :fecha_alta, :fecha_baja, :motivo,
                   :domicilio_calle, :incapacidad, :domicilio_nro, :domicilio_depto, :domicilio_cp, :domicilio_piso,
                   :codigo_provincia, :codigo_localidad, :codigo_departamento

  def numero_afiliado
    self.clave_excaja.to_s + "-" + self.clave_tipo.to_s + "-" + self.clave_numero.to_s + "-" + self.clave_coparticipe + "-" + self.ley_aplicada
  end 
  
  def documento
    self.tipo_documento + " " + self.numero_documento
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
            afiliado_row[:clave_excaja]      = row[0].to_i
            afiliado_row[:clave_tipo]        = row[1].to_i
            afiliado_row[:clave_numero]      = row[2].to_i
            afiliado_row[:clave_coparticipe] = row[3].to_i
            afiliado_row[:clave_parentezco]  = row[4].to_i
            afiliado_row[:ley_aplicada]      = row[5]
            afiliado_row[:apellido_nombre]   = row[6]
            afiliado_row[:sexo]              = row[7].to_s                                                                                    
            afiliado_row[:tipo_documento]    = row[9]
            afiliado_row[:numero_documento]  = row[10].to_i
            afiliado_row[:fecha_nacimiento]  = row[11]
            afiliado_row[:incapacidad]       = row[12].to_i
            
            afiliado_row[:fecha_alta]        = row[13]
            afiliado_row[:domicilio_calle]   = row[14]
            afiliado_row[:domicilio_nro]     = row[15]
            afiliado_row[:domicilio_piso]    = row[16]            
            afiliado_row[:domicilio_cp]      = row[17]
            afiliado_row[:codigo_provincia]       = row[18]
            afiliado_row[:codigo_departamento]    = row[19]
            afiliado_row[:codigo_localidad]       = row[20]                                    
                                    
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
