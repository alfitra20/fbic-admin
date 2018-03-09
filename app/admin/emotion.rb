ActiveAdmin.register Emotion do
 permit_params :emotionType
 config.filters = false

  index do

    column "Emotion", :emotionType

    column "Creation Date", :created_at
    column "Last Update", :updated_at

    actions
  end
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end






end
