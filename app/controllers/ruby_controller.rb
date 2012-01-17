class RubyController < ApplicationController


  def index

    first = ['Enemy', 'Warrior', 'Cagefight', 'Skull', 'Winner', 'Hulk', 'Goliath', 'Fighter', 'Soldier', 'Mercenary', 'Shogun', 'Ninja', 'Killer']  
    second = ['Face', 'Palm', 'Death', 'Bone', 'Terror', 'Macho', 'Chest', 'Abs', 'Torso', 'Rip', 'Eye', 'Head', "'Roid"]
    third = ['Strike', 'Smash', 'Punch', 'Smack', 'Slap', 'Thump', 'Crunch', 'Hurt', 'Burn', 'Destroy', 'Pound', 'Rake']
    fourth = ['Pro', 'Elite', '6000', '7000', 'Evo!', 'Ultimate', 'Complete', 'Max', 'XXX']
    
    @supplement_name = first[rand(first.length)-1] + " " + second[rand(second.length)-1] + third[rand(third.length)-1] + " " + fourth[rand(fourth.length)-1]
    if @supplement_name.length > 24
      @supplement_name = second[rand(second.length)-1] + third[rand(third.length)-1] + " " + fourth[rand(fourth.length)-1]
    end
    
    @number_ingredients = 5
    measures = [' handfuls of ', ' pinches of ', ' measures of ', ' pints of ', ' Kilograms of ']
    ingredients = ['Shark spleen', 'Giant squid heart', 'Warrior monk hair', 'Yeti pelvis', 'Marmot claw', 'Wrestler arm hair', 'Hell fire', 'Italian flair', 'Street fighter spittle' ]

    @select_measures = measures.sample(@number_ingredients)
    @select_ingredients = ingredients.sample(@number_ingredients)

    @usage = [' mouthfuls ', ' gulgs ', ' gulps ', ' swigs ', ' heaped teaspoons ', ' shots ', 'servings ', 'pints ']
    @interval = [' meal ', ' sneeze ', ' session ', ' blue moon ', ' solar eclipse ', ' lunar eclipse ']

    @instructions = "Take " + (rand(20)+1).to_s + " " + @usage[rand(@usage.length-1)] + "after every" + @interval[rand(@interval.length-1)] 

  end

end
