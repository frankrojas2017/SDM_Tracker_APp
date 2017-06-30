ActiveAdmin.register Customer do

permit_params :kms_version_id, :name, :division, :site, :mailing_address, :project_code
menu parent: 'Businesses & People'

# index do
#   # id_column
#   # column :customer_title
#   # actions

  action_item only: :show do
    link_to 'New Customer', action: :new
  end
  action_item only: :show do
    link_to 'All Customers', action: :index
  end
# end

  # show do
  #   attributes_table do
  #     row :title
  #     row :image do |ad|
  #       div do
  #         'Hello'
  #       end
  #     end
  #   end
  #   active_admin_comments
  # end
end