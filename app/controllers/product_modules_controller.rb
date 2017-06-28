class ProductModulesController < InheritedResources::Base

  private

    def product_module_params
      params.require(:product_module).permit(:module_type_id, :customer_id_id, :po_number_id)
    end
end

