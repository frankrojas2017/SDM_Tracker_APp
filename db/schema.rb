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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170616200050) do

  create_table "active_admin_comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "namespace"
    t.text     "body",          limit: 65535
    t.string   "resource_type"
    t.integer  "resource_id"
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree
  end

  create_table "adjustments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "quote_id"
    t.string   "reason"
    t.decimal  "price",      precision: 10
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["quote_id"], name: "index_adjustments_on_quote_id", using: :btree
  end

  create_table "admin_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "agreement_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "agreements", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "agreement_type_id"
    t.date     "start_date"
    t.date     "end_date"
    t.boolean  "approved"
    t.string   "link"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["agreement_type_id"], name: "index_agreements_on_agreement_type_id", using: :btree
  end

  create_table "contacts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "address"
    t.string   "business_phone"
    t.string   "country"
    t.string   "mobile_phone"
    t.string   "email"
    t.boolean  "primary"
    t.string   "fax_number"
    t.boolean  "billing"
    t.integer  "customer_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["customer_id"], name: "index_contacts_on_customer_id", using: :btree
  end

  create_table "customers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "division"
    t.string   "site"
    t.string   "mailing_address"
    t.integer  "kms_version_id"
    t.string   "project_code"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["kms_version_id"], name: "index_customers_on_kms_version_id", using: :btree
  end

  create_table "fee_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fees", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "quote_id"
    t.integer  "fee_type_id"
    t.decimal  "price",       precision: 10
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["fee_type_id"], name: "index_fees_on_fee_type_id", using: :btree
    t.index ["quote_id"], name: "index_fees_on_quote_id", using: :btree
  end

  create_table "invoices", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "invoice_number"
    t.date     "date_sent"
    t.integer  "po_id"
    t.boolean  "paid"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["po_id"], name: "index_invoices_on_po_id", using: :btree
  end

  create_table "kms_versions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "module_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "customer_id"
    t.integer  "quote_id"
    t.date     "date_received"
    t.decimal  "amount",        precision: 10
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["customer_id"], name: "index_pos_on_customer_id", using: :btree
    t.index ["quote_id"], name: "index_pos_on_quote_id", using: :btree
  end

  create_table "posts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.text     "body",         limit: 65535
    t.datetime "published_at"
    t.integer  "user_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["user_id"], name: "index_posts_on_user_id", using: :btree
  end

  create_table "product_modules", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "module_type_id"
    t.integer  "customer_id"
    t.integer  "po_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["customer_id"], name: "index_product_modules_on_customer_id", using: :btree
    t.index ["module_type_id"], name: "index_product_modules_on_module_type_id", using: :btree
    t.index ["po_id"], name: "index_product_modules_on_po_id", using: :btree
  end

  create_table "quotes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "customer_id"
    t.date     "quote_date"
    t.date     "valid_to"
    t.decimal  "total",       precision: 10
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["customer_id"], name: "index_quotes_on_customer_id", using: :btree
  end

  create_table "services", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "quote_id"
    t.string   "Service_type"
    t.integer  "quantity"
    t.decimal  "price",           precision: 10
    t.decimal  "service_total",   precision: 10
    t.date     "term_start"
    t.date     "term_end"
    t.string   "term_length"
    t.decimal  "annual_increase", precision: 10
    t.string   "CRM_Number"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["quote_id"], name: "index_services_on_quote_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "adjustments", "quotes"
  add_foreign_key "agreements", "agreement_types"
  add_foreign_key "contacts", "customers"
  add_foreign_key "customers", "kms_versions"
  add_foreign_key "fees", "fee_types"
  add_foreign_key "fees", "quotes"
  add_foreign_key "invoices", "pos"
  add_foreign_key "pos", "customers"
  add_foreign_key "pos", "quotes"
  add_foreign_key "posts", "users"
  add_foreign_key "product_modules", "customers"
  add_foreign_key "product_modules", "module_types"
  add_foreign_key "product_modules", "pos"
  add_foreign_key "quotes", "customers"
  add_foreign_key "services", "quotes"
end
