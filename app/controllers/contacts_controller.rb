class ContactsController < InheritedResources::Base

  private

    def contact_params
      params.require(:contact).permit(:last_name, :first_name, :address, :business_phone, :country, :mobile_phone, :email, :primary, :fax_number, :billing, :customer_id)
    end
end

