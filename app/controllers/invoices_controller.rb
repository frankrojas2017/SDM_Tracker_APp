class InvoicesController < InheritedResources::Base

  private

    def invoice_params
      params.require(:invoice).permit(:invoice_number, :date_sent, :po_number_id, :paid)
    end
end

