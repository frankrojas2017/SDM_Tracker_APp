class ServicesController < InheritedResources::Base

  private

    def service_params
      params.require(:service).permit(:quote_number_id, :Service_type, :quantity, :price, :service_total, :term_start, :term_end, :term_length, :annual_increase, :CRM_Number)
    end
end

