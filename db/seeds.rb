[User, Comment, Topic, Subtitle].each do |model|
  ActiveRecord::Base.connection.execute("TRUNCATE #{model.table_name} RESTART IDENTITY CASCADE")
end

User.create! username: 'Fab', email: 'ravaneliferreira@gmail.com', profile_pic: 'nothin yet', password: 'topkek', password_confirmation: 'topkek', karma: 999
