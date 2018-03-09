ActiveAdmin.register Album do

 permit_params :albumTitle, :year, :artist_id

index do
column :albumTitle
column :year
column "Artist" do |m|
 art = Artist.find(m.artist_id).artistName

end
column "Creation Date", :created_at
column "Last Update", :updated_at

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

 actions
end

end
