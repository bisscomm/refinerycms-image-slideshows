if defined?(Refinery::User)
  Refinery::User.all.each do |user|
    if user.plugins.where(:name => 'refinerycms-image_slideshows').blank?
      user.plugins.create(:name => 'refinerycms-image_slideshows',
                          :position => (user.plugins.maximum(:position) || -1) +1)
    end
  end
end