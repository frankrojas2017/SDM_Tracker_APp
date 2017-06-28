class POsController < InheritedResources::Base

  private

    def po_params
      params.require(:po).permit(:po_number, :customer_id_id, :quote_number, :date_received, :amount)
    end
end

