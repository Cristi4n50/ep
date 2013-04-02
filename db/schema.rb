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

ActiveRecord::Schema.define(:version => 20121127180405) do

  create_table "bordados", :force => true do |t|
    t.date     "fecha_envio"
    t.date     "fecha_llegada"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "datos_contactos", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "telefono"
    t.string   "direccion"
    t.string   "movil"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "disenos", :force => true do |t|
    t.string   "color"
    t.string   "talla"
    t.string   "corte"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "estampados", :force => true do |t|
    t.date     "fecha_envio"
    t.date     "fecha_llegada"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "nota", :force => true do |t|
    t.integer  "items"
    t.integer  "unidad"
    t.integer  "tipo_id"
    t.string   "num_documento_recibe"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "nota", ["tipo_id"], :name => "index_nota_on_tipo_id"

  create_table "produccions", :force => true do |t|
    t.date     "fecha_envio"
    t.date     "fecha_llegada"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "registro_compras", :force => true do |t|
    t.string   "descripcion_producto"
    t.integer  "valor_unidad"
    t.integer  "valor_total"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "solicituds", :force => true do |t|
    t.string   "cliente"
    t.date     "fecha_solicitud"
    t.string   "resolucion"
    t.string   "producto"
    t.integer  "cantidad"
    t.date     "fecha_aprobacion"
    t.string   "instructor"
    t.integer  "dias_faltantes"
    t.integer  "unidades_entregadas"
    t.integer  "saldo"
    t.date     "fecha_entrega_cliente"
    t.integer  "total"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "tipos", :force => true do |t|
    t.string   "nombre"
    t.string   "sigla"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "usuarios", :force => true do |t|
    t.string   "nombre1"
    t.string   "nombre2"
    t.string   "apellido1"
    t.string   "apellido2"
    t.string   "num_cedula"
    t.string   "usuario"
    t.string   "clave"
    t.string   "email"
    t.date     "fecha_nac"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
