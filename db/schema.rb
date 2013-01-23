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

ActiveRecord::Schema.define(:version => 20121110225921) do

  create_table "egreso_presupuesto_mensuals", :force => true do |t|
    t.integer  "item_id"
    t.float    "precio"
    t.integer  "presupuesto_mensual_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "egreso_presupuesto_mensuals", ["item_id"], :name => "index_egreso_presupuesto_mensuals_on_item_id"
  add_index "egreso_presupuesto_mensuals", ["presupuesto_mensual_id"], :name => "index_egreso_presupuesto_mensuals_on_presupuesto_mensual_id"

  create_table "ejecucion_egresos", :force => true do |t|
    t.float    "precio"
    t.integer  "forma_de_pago_al_contado_id"
    t.integer  "forma_de_pago_al_credito_id"
    t.integer  "egreso_presupuesto_mensual_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ejecucion_egresos", ["egreso_presupuesto_mensual_id"], :name => "index_ejecucion_egresos_on_egreso_presupuesto_mensual_id"
  add_index "ejecucion_egresos", ["forma_de_pago_al_contado_id"], :name => "index_ejecucion_egresos_on_forma_de_pago_al_contado_id"
  add_index "ejecucion_egresos", ["forma_de_pago_al_credito_id"], :name => "index_ejecucion_egresos_on_forma_de_pago_al_credito_id"

  create_table "ejecucion_ingresos", :force => true do |t|
    t.float    "precio"
    t.integer  "forma_de_pago_al_contado_id"
    t.integer  "forma_de_pago_al_credito_id"
    t.integer  "ingreso_presupuesto_mensual_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ejecucion_ingresos", ["forma_de_pago_al_contado_id"], :name => "index_ejecucion_ingresos_on_forma_de_pago_al_contado_id"
  add_index "ejecucion_ingresos", ["forma_de_pago_al_credito_id"], :name => "index_ejecucion_ingresos_on_forma_de_pago_al_credito_id"
  add_index "ejecucion_ingresos", ["ingreso_presupuesto_mensual_id"], :name => "index_ejecucion_ingresos_on_ingreso_presupuesto_mensual_id"

  create_table "elementos", :force => true do |t|
    t.string   "nombre"
    t.string   "controlador"
    t.integer  "seccion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "elementos", ["seccion_id"], :name => "index_elementos_on_seccion_id"

  create_table "elementos_rols", :id => false, :force => true do |t|
    t.integer "rol_id"
    t.integer "elemento_id"
  end

  create_table "empresas", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "financiadors", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "forma_de_pago_al_contados", :force => true do |t|
    t.string   "nombre"
    t.integer  "tipo_de_forma_de_pago_id"
    t.integer  "financiador_id"
    t.integer  "moneda_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "forma_de_pago_al_contados", ["financiador_id"], :name => "index_forma_de_pago_al_contados_on_financiador_id"
  add_index "forma_de_pago_al_contados", ["moneda_id"], :name => "index_forma_de_pago_al_contados_on_moneda_id"
  add_index "forma_de_pago_al_contados", ["tipo_de_forma_de_pago_id"], :name => "index_forma_de_pago_al_contados_on_tipo_de_forma_de_pago_id"

  create_table "forma_de_pago_al_contados_items", :id => false, :force => true do |t|
    t.integer "forma_de_pago_al_contado_id"
    t.integer "item_id"
  end

  create_table "forma_de_pago_al_creditos", :force => true do |t|
    t.string   "nombre"
    t.integer  "tipo_de_forma_de_pago_id"
    t.integer  "financiador_id"
    t.integer  "moneda_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "forma_de_pago_al_creditos", ["financiador_id"], :name => "index_forma_de_pago_al_creditos_on_financiador_id"
  add_index "forma_de_pago_al_creditos", ["moneda_id"], :name => "index_forma_de_pago_al_creditos_on_moneda_id"
  add_index "forma_de_pago_al_creditos", ["tipo_de_forma_de_pago_id"], :name => "index_forma_de_pago_al_creditos_on_tipo_de_forma_de_pago_id"

  create_table "forma_de_pago_al_creditos_items", :id => false, :force => true do |t|
    t.integer "forma_de_pago_al_credito_id"
    t.integer "item_id"
  end

  create_table "ingreso_presupuesto_mensuals", :force => true do |t|
    t.integer  "item_id"
    t.float    "precio"
    t.integer  "presupuesto_mensual_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ingreso_presupuesto_mensuals", ["item_id"], :name => "index_ingreso_presupuesto_mensuals_on_item_id"
  add_index "ingreso_presupuesto_mensuals", ["presupuesto_mensual_id"], :name => "index_ingreso_presupuesto_mensuals_on_presupuesto_mensual_id"

  create_table "items", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "monedas", :force => true do |t|
    t.string   "nombre"
    t.string   "simbolo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "presupuesto_mensuals", :force => true do |t|
    t.integer  "tipo_de_presupuesto_id"
    t.date     "periodo"
    t.integer  "moneda_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "presupuesto_mensuals", ["moneda_id"], :name => "index_presupuesto_mensuals_on_moneda_id"
  add_index "presupuesto_mensuals", ["tipo_de_presupuesto_id"], :name => "index_presupuesto_mensuals_on_tipo_de_presupuesto_id"

  create_table "rols", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rols_usuarios", :id => false, :force => true do |t|
    t.integer "rol_id"
    t.integer "usuario_id"
  end

  create_table "seccions", :force => true do |t|
    t.string   "nombre"
    t.integer  "empresa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "seccions", ["empresa_id"], :name => "index_seccions_on_empresa_id"

  create_table "tipo_de_forma_de_pagos", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_de_presupuestos", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", :force => true do |t|
    t.string   "nombreusuario"
    t.string   "clave"
    t.string   "nombre"
    t.string   "apellidopaterno"
    t.string   "apellidomaterno"
    t.boolean  "activo"
    t.integer  "empresa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "usuarios", ["empresa_id"], :name => "index_usuarios_on_empresa_id"

end
