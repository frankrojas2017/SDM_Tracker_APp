class KmsVersionsController < InheritedResources::Base

  private

    def kms_version_params
      params.require(:kms_version).permit(:version)
    end
end

