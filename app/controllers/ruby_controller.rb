class RubyController < ApplicationController


  def index

    first = ['Enemy', 'Warrior', 'Cagefight', 'Winner', 'Hulk', 'Goliath', 'Fighter', 'Soldier', 'Mercenary', 'Shogun', 'Ninja', 'Killer', 'Monster', 'Beast', 'Crippler', 'Samurai', 'Iron', 'Steel', 'Solid', 'Shaman', 'Emperor', 'Stone', 'Rhino', 'Rock' ]  
    second = ['Face', 'Palm', 'Death', 'Bone', 'Skull', 'Terror', 'Macho', 'Chest', 'Abs', 'Torso', 'Eye', 'Head', "'Roid", 'Nipple', 'Throat', 'Pec', 'Power', 'Mega', 'Gym', 'Powder' ]
    third = ['Strike', 'Smash', 'Punch', 'Smack', 'Slap', 'Thump', 'Crunch', 'Burn', 'Destroy', 'Pound', 'Rake', 'Chop', 'Poke', 'Slam', 'Pinch', 'Flick', 'Shove', 'Tweak', 'Assault', 'Harass']
    fourth = ['Pro', 'Elite', '6000', '7000', 'Evo!', 'Ultimate', 'Complete', 'Max', 'XXX', 'Semi-Pro', 'Extreme', 'Evolution', '3000']

    @supplement_name = first[rand(first.length)-1] + " " + second[rand(second.length)-1] + third[rand(third.length)-1] + " " + fourth[rand(fourth.length)-1]
    if @supplement_name.length > 24
      @supplement_name = second[rand(second.length)-1] + third[rand(third.length)-1] + " " + fourth[rand(fourth.length)-1]
    end
    
    @number_ingredients = 5
    measures = [' handfuls of ', ' pinches of ', ' measures of ', ' pints of ', ' kilograms of ', ' ounces of ']
    ingredients = ['Shark spleen', 'Giant squid heart', 'Warrior monk hair', 'Yeti pelvis', 'Marmot claw', 'Wrestler arm hair', 'Hell fire', 
	'Italian flair', 'Street fighter spittle', 'Diced Bulgarian bull testicle', 'Hair form the back of a Tibetan monk', 'Naval fluff', 
	"A French woman's arm hair", 'Sumo wrestlers sweat', 'Diced cauliflower ear', 'Seagull stomach lining', 'Pigeon skin', 'Mashed buffalo eye', 
	'Unicorn liver', 'Grated Rhino Appendix', 'English sarcasm', "Strongman's cartilage", "Mythical gnat's tooth", 'Alien drool', 
	"Arnold Schwarzenegger's ear wax", "A Russian's blood (warning: 50% Vodka)", "A Greek god's nasal hair", 'Absinthe', 'Tequila worms', "Sewer rat's tail",  
	"Minotaur's testicle", ' The finest Scotch - Straight up' ]
	
	
    @select_measures = measures.sample(@number_ingredients)
    @select_ingredients = ingredients.sample(@number_ingredients)

    @usage = [' mouthfuls ', ' glugs ', ' gulps ', ' swigs ', ' heaped teaspoons ', ' shots ', ' servings ', ' pints ', ' scoops ', ' tablespoons' ]
    @interval = [' meal ', ' sneeze ', ' session ', ' blue moon ', ' solar eclipse ', ' lunar eclipse ', ' blink of an eye ', ' sign ', ' every curse word ', ' shower ', ' bath ', ' hangover ', ' sleep ', ' work day ', ' video gaming session '  ]
    
    @instructions = "Take " + (rand(20)+1).to_s + " " + @usage[rand(@usage.length-1)] + "after every" + @interval[rand(@interval.length-1)] 

  end

end
