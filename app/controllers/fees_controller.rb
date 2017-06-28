class FeesController < InheritedResources::Base

  private

    def fee_params
      params.require(:fee).permit(:quote_id, :fee_type_id, :price)
    end
end

