class RubyController < ApplicationController
  
  
  def index
    
  first = ['Enemy', 'Warrior', 'Cagefight', 'Skull', 'Winner', 'Hulk', 'Goliath', 'Fighter', 'Soldier', 'Mercenary', 'Shogun', 'Ninja', 'Killer']  
  second = ['Face', 'Palm', 'Death', 'Bone', 'Terror', 'Macho', 'Chest', 'Abs', 'Torso', 'Rip', 'Eye', 'Head', "'Roid"]
  third = ['Strike', 'Smash', 'Punch', 'Smack', 'Slap', 'Thump', 'Crunch', 'Hurt', 'Burn', 'Destroy', 'Pound', 'Rake']
  fourth = ['Pro', 'Elite', '6000', '7000', 'Evo!', 'Ultimate', 'Complete', 'Max', 'XXX']
    @firstword = first[rand(first.length)-1]
    @secondword = second[rand(second.length)-1]
    @thirdword = third[rand(third.length)-1]
    @fourthword = fourth[rand(first.length)-1]

  end
  
end
