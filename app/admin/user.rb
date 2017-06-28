ActiveAdmin.register User do
permit_params :name, :email
menu parent: 'Manage Users'
end
