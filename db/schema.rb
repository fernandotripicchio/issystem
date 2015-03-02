# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20150204111649) do

  create_table "afiliados", :force => true do |t|
    t.string   "apellido_nombre"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.string   "clave_excaja"
    t.string   "clave_numero"
    t.string   "clave_coparticipe"
    t.string   "clave_parentezco"
    t.string   "ley_aplicada"
    t.string   "sexo"
    t.string   "estado_civil"
    t.string   "tipo_documento"
    t.string   "numero_documento"
    t.string   "clave_tipo"
    t.boolean  "activo",              :default => true
    t.date     "fecha_nacimiento"
    t.date     "fecha_alta"
    t.date     "fecha_baja"
    t.integer  "motivo"
    t.string   "domicilio_calle"
    t.integer  "incapacidad"
    t.string   "domicilio_nro"
    t.string   "domicilio_piso"
    t.string   "domicilio_depto"
    t.string   "domicilio_cp"
    t.integer  "codigo_provincia"
    t.integer  "codigo_localidad"
    t.integer  "codigo_departamento"
  end

  create_table "auditoria", :force => true do |t|
    t.integer  "afiliado_id",      :null => false
    t.string   "localidad"
    t.date     "fecha"
    t.integer  "diagnostico_id"
    t.string   "motivo"
    t.boolean  "urgente"
    t.boolean  "autoriza"
    t.boolean  "laboratorio"
    t.boolean  "radiologia"
    t.boolean  "alta_complejidad"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "centros", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "credenciales", :force => true do |t|
    t.integer "Clave_Numero",                   :null => false
    t.string  "ApeNom",          :limit => 40
    t.integer "Numero_Doc"
    t.integer "Incapacidad"
    t.string  "Hospital",        :limit => 33
    t.string  "Medico",          :limit => 37
    t.string  "Urgencia",        :limit => 264
    t.string  "Localidad",       :limit => 27
    t.string  "Tel_Particular",  :limit => 21
    t.string  "Fecha_Impresión", :limit => 8
  end

  create_table "departamentos", :force => true do |t|
    t.string   "nombre",       :null => false
    t.integer  "provincia",    :null => false
    t.integer  "departamento", :null => false
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "diagnosticos", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "incucais", :force => true do |t|
    t.integer  "afiliado_id",       :null => false
    t.integer  "centro_id",         :null => false
    t.date     "fecha_alta"
    t.date     "fecha_ingreso_ugp"
    t.date     "fecha_baja"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "kilometros"
    t.string   "etiologia"
    t.integer  "edad"
  end

  create_table "localidades", :force => true do |t|
    t.integer  "provincia",     :null => false
    t.integer  "departamento",  :null => false
    t.integer  "localidad",     :null => false
    t.string   "codigo_postal"
    t.string   "nombre",        :null => false
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "medicamentos", :force => true do |t|
    t.string   "nombre"
    t.boolean  "estado",           :default => true
    t.string   "descripcion"
    t.string   "codigo_universal"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  create_table "medicos", :force => true do |t|
    t.string   "nombre",     :null => false
    t.string   "matricula",  :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ordenes", :force => true do |t|
    t.boolean  "estado",         :default => true
    t.date     "fecha"
    t.integer  "afiliado_id",                      :null => false
    t.integer  "medico_id",                        :null => false
    t.integer  "diagnostico_id",                   :null => false
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  create_table "padron", :force => true do |t|
    t.integer "Clave_ExCaja"
    t.integer "Clave_Tipo"
    t.integer "Clave_Numero"
    t.integer "Clave_Coparticipe"
    t.integer "Clave_Parentesco"
    t.string  "LeyAplicada",       :limit => 2
    t.string  "ApeNom",            :limit => 30
    t.string  "Sexo",              :limit => 1
    t.integer "EstCivil"
    t.string  "Tipo_Doc",          :limit => 2
    t.integer "Numero_Doc"
    t.string  "FeNac",             :limit => 10
    t.integer "Incapacidad"
    t.date    "Fech_Alta"
    t.string  "Dom_Calle",         :limit => 50
    t.integer "Dom_Nro"
    t.integer "Dom_Piso"
    t.string  "Dom_Dpto",          :limit => 3
    t.integer "Cod_Pos"
    t.integer "Cug_Pcia"
    t.integer "Cug_Dpto"
    t.integer "Cug_loc"
  end

  create_table "prestaciones", :force => true do |t|
    t.string   "nombre",     :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "proveedores", :force => true do |t|
    t.string   "razon_social",  :null => false
    t.string   "cuit",          :null => false
    t.string   "direccion",     :null => false
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.text     "observaciones"
  end

  create_table "provincias", :primary_key => "provincia", :force => true do |t|
    t.string "detalle", :limit => 19
  end

  create_table "registro_items", :force => true do |t|
    t.integer  "afiliado_id",            :null => false
    t.integer  "registro_prestacion_id", :null => false
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "registro_prestaciones", :force => true do |t|
    t.integer  "prestacion_id",  :null => false
    t.date     "fecha_factura",  :null => false
    t.integer  "numero_factura", :null => false
    t.string   "periodo",        :null => false
    t.integer  "proveedor_id",   :null => false
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.text     "observaciones"
    t.integer  "anio"
    t.integer  "afiliado_id",    :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "name",                   :default => "", :null => false
    t.string   "last_name",              :default => "", :null => false
    t.string   "movile"
    t.string   "address"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
