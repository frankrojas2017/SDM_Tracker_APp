class ModuleTypesController < InheritedResources::Base

  private

    def module_type_params
      params.require(:module_type).permit(:name)
    end
end

