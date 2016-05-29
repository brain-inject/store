User.create!([
  {email: "joe@gmail.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2016-05-28 23:31:42", last_sign_in_at: "2016-05-23 23:24:20", current_sign_in_ip: "::1", last_sign_in_ip: "::1"},
  {email: "jackson@gmail.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2016-05-28 23:31:42", last_sign_in_at: "2016-05-23 23:24:20", current_sign_in_ip: "::1", last_sign_in_ip: "::1"},
  {email: "admin@nerd.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2016-05-28 23:31:42", last_sign_in_at: "2016-05-23 23:24:20", current_sign_in_ip: "::1", last_sign_in_ip: "::1", admin: true}
])
CategorizedNovelty.create!([
  {novelty_id: 1, category_id: 1},
  {novelty_id: 5, category_id: 1},
  {novelty_id: 6, category_id: 1},
  {novelty_id: 1, category_id: 2},
  {novelty_id: 2, category_id: 2},
  {novelty_id: 4, category_id: 2},
  {novelty_id: 5, category_id: 2},
  {novelty_id: 6, category_id: 2},
  {novelty_id: 1, category_id: 3},
  {novelty_id: 3, category_id: 3},
  {novelty_id: 4, category_id: 3},
  {novelty_id: 6, category_id: 3},
  {novelty_id: 3, category_id: 4},
  {novelty_id: 2, category_id: 5},
  {novelty_id: 3, category_id: 5},
  {novelty_id: 1, category_id: 6},
  {novelty_id: 3, category_id: 6},
  {novelty_id: 4, category_id: 6},
  {novelty_id: 5, category_id: 6}
])
Category.create!([
  {name: "Movie"},
  {name: "Television"},
  {name: "Book"},
  {name: "Game"},
  {name: "Practical"},
  {name: "Display Item"}
])
Image.create!([
  {url: "https://i.ytimg.com/vi/p2iUzSjyue0/maxresdefault.jpg", novelty_id: 1},
  {url: "http://ecx.images-amazon.com/images/I/61xFcKGhXRL._SY355_.jpg", novelty_id: 2},
  {url: "https://s-media-cache-ak0.pinimg.com/736x/9c/15/7b/9c157bea5331463f9c539cbce739a4b8.jpg", novelty_id: 3},
  {url: "http://i120.photobucket.com/albums/o176/d_jedi1/Who/qmx-10thdoctorsonic-1.jpg", novelty_id: 4},
  {url: "http://cdn.shopify.com/s/files/1/0289/1534/products/MalPistol_MP-1_1756x988_e53f9448-81ec-41de-9369-4cbad64f18f5_1024x1024.jpg?v=1401915776", novelty_id: 5},
  {url: "https://s-media-cache-ak0.pinimg.com/236x/a8/16/c3/a816c38829341399ca2e391b066b1fd3.jpg", novelty_id: 6},
  {url: "http://25.media.tumblr.com/d2456964024018fd930338c099371104/tumblr_n2m73lTx2Q1svn82uo1_400.gif", novelty_id: 1},
  {url: "https://farm4.staticflickr.com/3063/2436642077_604fff5249_m.jpg", novelty_id: 1}
])
Novelty.create!([
  {name: "Lightsabers", description: "Part laser, part samuri sword, all awesome. The lightsaber is an elogant weapon for a more civilized age, not nearly as clumsy as a blaster", price: 270, supplier_id: 1},
  {name: "WNYX Mug", description: "Get your morning news once you wake up with a cup of joe from... well Joe. He made it with his homemade duct tape", price: 2, supplier_id: 1},
  {name: "DnD Dice set", description: "Take down mighty dragons with this timeless set of 20 sided wonders", price: 57, supplier_id: 1},
  {name: "Sonic Screwdriver", description: "The Doctor's sciencey magic wand to get out of tight spots. Note: does not work on wood", price: 9, supplier_id: 3},
  {name: "Space Cowboy Laser Gun", description: "This weapon has no other description than, Shiney!", price: 170, supplier_id: 2},
  {name: "Hitchhiker's Guide to the Galexy", description: "In many of the more relaxed civilizations on the Outer Eastern Rim of the Galaxy, the Hitch-Hiker's Guide has already supplanted the great Encyclopaedia Galactica as the standard repository of all knowledge and wisdom, for though it has many omissions and contains much that is apocryphal, or at least wildly inaccurate, it scores over the older, more pedestrian work in two important respects. First, it is slightly cheaper; and secondly it has the words DON'T PANIC inscribed in large friendly letters on its cover.", price: 42, supplier_id: 2}
])
Supplier.create!([
  {name: "Joe's Geek Shack", email: "jumpinjoe@aol.com", phone: "567-555-0101"},
  {name: "Grungy Tom on The Corner", email: "tommyboy@yahoo.com", phone: "700-555-1111"},
  {name: "Rupert Montegomery", email: "youknowtheguy@yahoo.com", phone: "222-222-2222"}
])
