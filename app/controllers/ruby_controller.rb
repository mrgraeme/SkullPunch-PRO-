class RubyController < ApplicationController
  
  
  def index
    
  first = ['Enemy', 'Warrior', 'Cagefight', 'Skull', 'Winner', 'Hulk', 'Goliath', 'Fighter', 'Soldier', 'Mercenary', 'Shogun', 'Ninja', 'Killer']  
  second = ['Face', 'Palm', 'Death', 'Bone', 'Terror', 'Macho', 'Chest', 'Abs', 'Torso', 'Rip', 'Eye', 'Head', "'Roid"]
  third = ['Strike', 'Smash', 'Punch', 'Smack', 'Slap', 'Thump', 'Crunch', 'Hurt', 'Burn', 'Destroy', 'Pound', 'Rake']
  fourth = ['Pro', 'Elite', '6000', '7000', 'Evo!', 'Ultimate', 'Complete', 'Max', 'XXX']
    @firstword = first[rand(first.length)-1]
    @secondword = second[rand(second.length)-1]
    @thirdword = third[rand(third.length)-1]
    @fourthword = fourth[rand(fourth.length)-1]
    
    
    measures = [' handfuls of ', ' pintches of ', ' measures of ', ' pints of ', ' Kilograms of ']
    ingredients = ['Shark spleen', 'Giant squid heart', 'Warrior monk hair', 'Yeti pelvis', 'Marmot claw', 'Wrestler arm hair', 'Hell fire', 'Italian flair', 'Street fighter spittle' ]
    
    @ingredient1 = rand(20).to_s + measures[rand(measures.length)-1] + ingredients[rand(ingredients.length)-1]
    @ingredient2 = rand(20).to_s + measures[rand(measures.length)-1] + ingredients[rand(ingredients.length)-1]
    @ingredient3 = rand(20).to_s + measures[rand(measures.length)-1] + ingredients[rand(ingredients.length)-1]
    @ingredient4 = rand(20).to_s + measures[rand(measures.length)-1] + ingredients[rand(ingredients.length)-1]
    
    
    
  end
  
end
