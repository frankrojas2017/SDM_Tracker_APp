ActiveAdmin.register Agreement do
  permit_params :agreement_type_id, :start_date, :end_date, :approved, :link
  # form do |f|
  #   inputs "Agreement Details" do
  #     index do
  #     input "Type of Agreement", :agreement_type
  #     input :start_date
  #     input :end_date
  #     input :approved
  #     input :link
  #     end
  #   end
  #   actions
  # end
  index do
    column "Type of Agreement", :agreement_type
    column :start_date
    column :end_date
    column :approved
    column :link
    actions
  end

end
