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

ActiveRecord::Schema.define(:version => 20141023155537) do

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

  create_table "centros", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "departamentos", :force => true do |t|
    t.string   "nombre",       :null => false
    t.integer  "provincia",    :null => false
    t.integer  "departamento", :null => false
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "incucais", :force => true do |t|
    t.integer  "afiliado_id",       :null => false
    t.integer  "centro_id",         :null => false
    t.date     "fecha_alta"
    t.date     "fecha_ingreso_ugp"
    t.date     "fecha_baja"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "localidades", :force => true do |t|
    t.string   "nombre",       :null => false
    t.integer  "provincia",    :null => false
    t.integer  "departamento", :null => false
    t.integer  "localidad",    :null => false
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "proveedores", :force => true do |t|
    t.string   "razon_social", :null => false
    t.string   "cuit",         :null => false
    t.string   "direccion",    :null => false
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "provincias", :force => true do |t|
    t.string   "provincia",  :null => false
    t.string   "detalle",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
