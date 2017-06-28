ActiveAdmin.register AgreementType do
  permit_params :name
  menu parent: 'Types & Lists'
end
