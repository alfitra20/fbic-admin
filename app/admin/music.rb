ActiveAdmin.register Music do
 permit_params :musicTitle, :artist_id, :album_id, :year


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
index do 

	column "Title", :musicTitle
	column "Year", :year
	column "Artist", :artist_id do |m|
 art = Artist.find(m.artist_id)
 link_to art.artistName, admin_artist_path(m.artist_id)

end
	column "Album", :album_id do |m|
 art = Album.find(m.album_id)
 link_to art.albumTitle, admin_album_path(m.album_id)

end
	column :created_at
	actions
end

end
