class AdjustmentsController < InheritedResources::Base

  private

    def adjustment_params
      params.require(:adjustment).permit(:quote_number_id, :reason, :price)
    end
end

