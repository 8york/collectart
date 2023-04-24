User.destroy_all

david = User.create(:name => 'David Creed', :email => 'sendit@ga.co', :password => 'chicken')
jamie = User.create(:name => 'Jamie Mumford', :email => 'thankyou@ga.co', :password => 'chicken')
lincoln = User.create(:name => 'Lincoln Austin', :email => 'goodone@ga.co', :password => 'chicken')
tobias = User.create(:name =>  'Tobias titz', :email => 'takeit@ga.co', :password => 'chicken')
amanda = User.create(:name => 'Amanda Wolf', :email => 'funny@ga.co', :password => 'chicken')
dhana = User.create(:name => 'Dhana Merrit', :email => 'breath@ga.co', :password => 'chicken')
puts "#{ User.count } works created."

Work.destroy_all

w1 = Work.create(:user_id => jamie.id, :image_url => 'https://static.wixstatic.com/media/b9f64f_b6dc426cf8144862a17588b2278b4d42~mv2.jpg/v1/fill/w_768,h_812,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/b9f64f_b6dc426cf8144862a17588b2278b4d42~mv2.jpg', :title => 'Re-make:Re-Model', :height => '80cm', :width => '60cm', :medium => 'oil on board')
w2 = Work.create(:user_id => jamie.id, :image_url => 'https://static.wixstatic.com/media/b9f64f_19101df4275940a78d0283c23edfd214.jpg/v1/crop/x_46,y_38,w_906,h_1309/fill/w_724,h_1036,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/b9f64f_19101df4275940a78d0283c23edfd214.jpg', :title => 'Meat Lady', :height => '100cm', :width => '40cm', :medium => 'oil on board')
w3 = Work.create(:user_id => lincoln.id, :image_url => 'https://www.janmurphygallery.com.au/wp-content/uploads/2022/03/AUS12288_1.jpg', :title => 'Space Invater', :height => 'unknown', :width => 'unknown', :medium => 'stainless stell, emanel')
w4 = Work.create(:user_id => lincoln.id, :image_url => 'https://www.janmurphygallery.com.au/wp-content/uploads/2022/03/AUS12346_1.jpg', :title => 'Interloper', :height => 'unknown', :width => 'unknown', :medium => 'stainless stell')
w5 = Work.create(:user_id => lincoln.id, :image_url => 'https://www.janmurphygallery.com.au/wp-content/uploads/2022/03/AUS12344.jpg', :title => 'Imperfect Pattern LII', :height => 'unknown', :width => 'unknown', :medium => 'cardboard')
w6 = Work.create(:user_id => amanda.id, :image_url => 'https://www.mandawolf.com/uploads/1/1/9/6/119677767/slips-edit1_orig.jpg', :title => '', :height => 'unknown', :width => 'unknown', :medium => 'paper')
w7 = Work.create(:user_id => amanda.id, :image_url => 'https://www.mandawolf.com/uploads/1/1/9/6/119677767/slips-edit1_orig.jpg', :title => '', :height => 'unknown', :width => 'unknown', :medium => 'paper')
w8 = Work.create(:user_id => amanda.id, :image_url => 'https://www.mandawolf.com/uploads/1/1/9/6/119677767/slips-edit1_orig.jpg', :title => '', :height => 'unknown', :width => 'unknown', :medium => 'paper')
w9 = Work.create(:user_id => amanda.id, :image_url => 'https://www.mandawolf.com/uploads/1/1/9/6/119677767/slips-edit1_orig.jpg', :title => '', :height => 'unknown', :width => 'unknown', :medium => 'paper')

puts "#{ Work.count } works created."

Like.destroy_all

l1 = Like.create(:user_id => jamie.id, :work_id => w6.id, :rating => 4)
l2 = Like.create(:user_id => jamie.id, :work_id => w9.id, :rating => 5)
l3 = Like.create(:user_id => lincoln.id, :work_id => w6.id, :rating => 4)
