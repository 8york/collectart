User.destroy_all

u1 = User.create(:name => 'David Creed', :email => 'sendit@ga.co', :password => 'chicken')
u2 = User.create(:name => 'Jamie Mumford', :email => 'thankyou@ga.co', :password => 'chicken')
u3 = User.create(:name => 'Lincoln Austin', :email => 'goodone@ga.co', :password => 'chicken')
u4 = User.create(:name =>  'Tobias titz', :email => 'takeit@ga.co', :password => 'chicken')
u5 = User.create(:name => 'Amanda Wolf', :email => 'funny@ga.co', :password => 'chicken')
u6 = User.create(:name => 'Dhana Merrit', :email => 'breath@ga.co', :password => 'chicken')
puts "#{ User.count } works created."

Work.destroy_all

w1 = Work.create(:image => 'https://static.wixstatic.com/media/b9f64f_b6dc426cf8144862a17588b2278b4d42~mv2.jpg/v1/fill/w_768,h_812,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/b9f64f_b6dc426cf8144862a17588b2278b4d42~mv2.jpg', :title => 'Re-make:Re-Model', :height => '80cm', :width => '60cm', :medium => 'oil on board')
w2 = Work.create(:image => 'https://static.wixstatic.com/media/b9f64f_19101df4275940a78d0283c23edfd214.jpg/v1/crop/x_46,y_38,w_906,h_1309/fill/w_724,h_1036,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/b9f64f_19101df4275940a78d0283c23edfd214.jpg', :title => 'Meat Lady', :height => '100cm', :width => '40cm', :medium => 'oil on board')
w3 = Work.create(:image => 'https://www.janmurphygallery.com.au/wp-content/uploads/2022/03/AUS12288_1.jpg', :title => 'Space Invater', :height => 'unknown', :width => 'unknown', :medium => 'stainless stell, emanel')
w4 = Work.create(:image => 'https://www.janmurphygallery.com.au/wp-content/uploads/2022/03/AUS12346_1.jpg', :title => 'Interloper', :height => 'unknown', :width => 'unknown', :medium => 'stainless stell')
w5 = Work.create(:image => 'https://www.janmurphygallery.com.au/wp-content/uploads/2022/03/AUS12344.jpg', :title => 'Imperfect Pattern LII', :height => 'unknown', :width => 'unknown', :medium => 'cardboard')
w6 = Work.create(:image => '', :title => 'https://www.mandawolf.com/uploads/1/1/9/6/119677767/slips-edit1_orig.jpg', :height => 'unknown', :width => 'unknown', :medium => 'paper')
w7 = Work.create(:image => '', :title => 'https://www.mandawolf.com/uploads/1/1/9/6/119677767/slips-edit1_orig.jpg', :height => 'unknown', :width => 'unknown', :medium => 'paper')
w8 = Work.create(:image => '', :title => 'https://www.mandawolf.com/uploads/1/1/9/6/119677767/slips-edit1_orig.jpg', :height => 'unknown', :width => 'unknown', :medium => 'paper')
w9 = Work.create(:image => '', :title => 'https://www.mandawolf.com/uploads/1/1/9/6/119677767/slips-edit1_orig.jpg', :height => 'unknown', :width => 'unknown', :medium => 'paper')

puts "#{ Work.count } works created."


