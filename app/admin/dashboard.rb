ActiveAdmin.register_page "Dashboard" do



  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    # div class: "blank_slate_container", id: "dashboard_default_message" do
    #   span class: "blank_slate" do
    #     span I18n.t("active_admin.dashboard_welcome.welcome")
    #     small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #   end
    # end

    menu priority: 0, label: proc{ I18n.t("active_admin.dashboard") }
# section "Recent Adjustments" do
#   table_for Adjustment.order("price desc").limit(5) do
#     column "Reason for the Adjustment", :reason do |adjustment|
#       link_to adjustment.reason, [:admin, adjustment]
#     end
#     column :price, :sortable => :price do |adjustment|
#       div :class => "price" do
#         number_to_currency adjustment.price
#       end
#     end
#   end
#   strong {link_to "View All Adjustments", admin_adjustments_path}
# end
#     section "Recent Agreements" do
#       table_for Agreement.order("start_date desc").limit(5) do
#         column "Type of Agreement", :agreement_type
#         column :start_date
#         end
#       strong {link_to "View All Agreements", admin_agreements_path}
#     end
=begin
    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
      column do
        panel "Recent Agreements" do
          ul do
            Agreement.find_by_start_date(5)  do |agreement|
              li link_to(agreement.title, admin_agreement_path(agreement))
            end
          end
        end
      end
end
=end
    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
