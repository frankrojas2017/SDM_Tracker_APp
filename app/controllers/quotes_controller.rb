class QuotesController < InheritedResources::Base

  private

    def quote_params
      params.require(:quote).permit(:customer_id_id, :quote_number, :quote_date, :valid_to, :total)
    end
end

