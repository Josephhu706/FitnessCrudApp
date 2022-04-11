User.destroy_all
#store user in local variable that we can associate them at the end
u1 = User.create :email => 'jonesy@ga.co', :password => 'chicken', :admin => true #make this person the admin from the start in seed data
u2 = User.create :email => 'craigsy@ga.co', :password => 'chicken'

puts "#{User.count} users"

Card.destroy_all
c1 = Card.create :title => "Acidic Slime", :price => '7.08', :rarity => "rare", :image=>"https://c1.scryfall.com/file/scryfall-cards/normal/front/1/e/1e6bd3fa-0d07-4519-b67f-67867ad13c89.jpg?1640462152", :release=>"2020-08-19", :oracle=>"Deathtouch (Any amount of damage this deals to a creature is enough to destroy it.)\nWhen Acidic Slime enters the battlefield, destroy target artifact, enchantment, or land."
c2 = Card.create :title => "Acidic Slime", :price => '7.08', :rarity => "rare", :image=>"https://c1.scryfall.com/file/scryfall-cards/normal/front/1/e/1e6bd3fa-0d07-4519-b67f-67867ad13c89.jpg?1640462152", :release=>"2020-08-19", :oracle=>"Deathtouch (Any amount of damage this deals to a creature is enough to destroy it.)\nWhen Acidic Slime enters the battlefield, destroy target artifact, enchantment, or land."
c3 = Card.create :title => "Acidic Slime", :price => '7.08', :rarity => "rare", :image=>"https://c1.scryfall.com/file/scryfall-cards/normal/front/1/e/1e6bd3fa-0d07-4519-b67f-67867ad13c89.jpg?1640462152", :release=>"2020-08-19", :oracle=>"Deathtouch (Any amount of damage this deals to a creature is enough to destroy it.)\nWhen Acidic Slime enters the battlefield, destroy target artifact, enchantment, or land."
c4 = Card.create :title => "Hero's Downfall", :price => '3.30', :rarity => "rare", :image=>"https://c1.scryfall.com/file/scryfall-cards/normal/front/e/d/ed96b05d-b2ca-4c8f-969b-cac9b4562fab.jpg?1636900809", :release=>"2021-06-21", :oracle=>"Destroy target creature or planeswalker."
c5 = Card.create :title => "Hero's Downfall", :price => '3.30', :rarity => "rare", :image=>"https://c1.scryfall.com/file/scryfall-cards/normal/front/e/d/ed96b05d-b2ca-4c8f-969b-cac9b4562fab.jpg?1636900809", :release=>"2021-06-21", :oracle=>"Destroy target creature or planeswalker."
c6 = Card.create :title => "Hero's Downfall", :price => '3.30', :rarity => "rare", :image=>"https://c1.scryfall.com/file/scryfall-cards/normal/front/e/d/ed96b05d-b2ca-4c8f-969b-cac9b4562fab.jpg?1636900809", :release=>"2021-06-21", :oracle=>"Destroy target creature or planeswalker."
c7 = Card.create :title => 'Chun-Li, Countless Kicks', :price => '29.99', :rarity => "rare", :image=>"https://c1.scryfall.com/file/scryfall-cards/normal/front/c/2/c22ee4a5-c74b-46eb-b709-808ebc803757.jpg?1645144717", :release=>"2022-02-18",:oracle=>"Multikicker {W/U}\nWhen Chun-Li enters the battlefield, exile up to X target instant cards from your graveyard, where X is the number of times Chun-Li was kicked. Put a kick counter on each of them.\nLightning Kick — Whenever Chun-Li attacks, copy each exiled card you own with a kick counter on it. You may cast the copies."
c8 = Card.create :title => 'Chun-Li, Countless Kicks', :price => '29.99', :rarity => "rare", :image=>"https://c1.scryfall.com/file/scryfall-cards/normal/front/c/2/c22ee4a5-c74b-46eb-b709-808ebc803757.jpg?1645144717", :release=>"2022-02-18",:oracle=>"Multikicker {W/U}\nWhen Chun-Li enters the battlefield, exile up to X target instant cards from your graveyard, where X is the number of times Chun-Li was kicked. Put a kick counter on each of them.\nLightning Kick — Whenever Chun-Li attacks, copy each exiled card you own with a kick counter on it. You may cast the copies."
c9 = Card.create :title => 'Chun-Li, Countless Kicks', :price => '29.99', :rarity => "rare", :image=>"https://c1.scryfall.com/file/scryfall-cards/normal/front/c/2/c22ee4a5-c74b-46eb-b709-808ebc803757.jpg?1645144717", :release=>"2022-02-18",:oracle=>"Multikicker {W/U}\nWhen Chun-Li enters the battlefield, exile up to X target instant cards from your graveyard, where X is the number of times Chun-Li was kicked. Put a kick counter on each of them.\nLightning Kick — Whenever Chun-Li attacks, copy each exiled card you own with a kick counter on it. You may cast the copies."
c10 = Card.create :title => 'Admonition Angel', :price => '16.02', :rarity => "mythic", :image=>"https://c1.scryfall.com/file/scryfall-cards/normal/front/4/8/4800ebc2-d5a7-4c26-a2f7-943a540ae47e.jpg?1607117193", :release=>"2020-09-30", :oracle=>"Flying\nLandfall — Whenever a land enters the battlefield under your control, you may exile target nonland permanent other than Admonition Angel.\nWhen Admonition Angel leaves the battlefield, return all cards exiled with it to the battlefield under their owners' control"
c11 = Card.create :title => 'Admonition Angel', :price => '16.02', :rarity => "mythic", :image=>"https://c1.scryfall.com/file/scryfall-cards/normal/front/4/8/4800ebc2-d5a7-4c26-a2f7-943a540ae47e.jpg?1607117193", :release=>"2020-09-30", :oracle=>"Flying\nLandfall — Whenever a land enters the battlefield under your control, you may exile target nonland permanent other than Admonition Angel.\nWhen Admonition Angel leaves the battlefield, return all cards exiled with it to the battlefield under their owners' control"
c12 = Card.create :title => 'Admonition Angel', :price => '16.02', :rarity => "mythic", :image=>"https://c1.scryfall.com/file/scryfall-cards/normal/front/4/8/4800ebc2-d5a7-4c26-a2f7-943a540ae47e.jpg?1607117193", :release=>"2020-09-30", :oracle=>"Flying\nLandfall — Whenever a land enters the battlefield under your control, you may exile target nonland permanent other than Admonition Angel.\nWhen Admonition Angel leaves the battlefield, return all cards exiled with it to the battlefield under their owners' control"
puts "#{Card.count} cards"

Decklist.destroy_all
d1 = Decklist.create :name => 'Breya Artifact'
d2 = Decklist.create :name => 'Sahlili Artifact'
d3 = Decklist.create :name => 'Atraxa'
d4 = Decklist.create :name => 'One Punch Angel'

puts "#{Decklist.count} decklists"
u1.cards << c1 
u2.cards << c12 
puts "Decklists and Cards"

d1.cards << c7 << c8 << c9
d2.cards << c10 << c11 << c12
d3.cards << c1 << c2<< c3
d4.cards << c4 << c5 << c6 

puts "Decklists and Users"

u1.decklists << d1 << d2
u2.decklists << d3 << d4

