class AgreementsController < InheritedResources::Base

  private

    def agreement_params
      params.require(:agreement).permit(:agreement_type_id, :start_date, :end_date, :approved, :link)
    end
end

