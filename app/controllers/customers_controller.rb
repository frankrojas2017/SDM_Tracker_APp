class CustomersController < InheritedResources::Base

  show do
    attributes_table do
      row :title

    end
  end

  private

    def customer_params
      params.require(:customer).permit(:name, :division, :site, :mailing_address, :kms_version_id, :project_code)
    end
end

