ActiveAdmin.register History do
 permit_params :playtime, :user_id, :music_id, :emotion_id
 #config.clear_action_items!

  index do

    column "Full Name", :user_id do |m|
 art = User.find(m.user_id)
 link_to art.display_name, admin_user_path(m.user_id)

end

 column "Emotion", :emotion_id do |m|
 art = Emotion.find(m.emotion_id)
 link_to art.emotionType, admin_emotion_path(m.emotion_id)
 end 


column "Music Title", :music_id do |m|
	art = Music.find(m.music_id)
	link_to art.musicTitle, admin_music_path(m.music_id)
end

column "Playing Time", :playtime

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
