ActiveAdmin.register Customer do

permit_params :kms_version_id, :name, :division, :site, :mailing_address, :project_code
end