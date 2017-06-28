ActiveAdmin.register KmsVersion do
  menu false
  menu parent: 'Types & Lists'
permit_params :name
end
