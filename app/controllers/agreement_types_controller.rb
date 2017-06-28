class AgreementTypesController < InheritedResources::Base

  private

    def agreement_type_params
      params.require(:agreement_type).permit(:name)
    end
end

