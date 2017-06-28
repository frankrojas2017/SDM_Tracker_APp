class FeeTypesController < InheritedResources::Base

  private

    def fee_type_params
      params.require(:fee_type).permit(:name)
    end
end

