class User #✅#✅#✅
    attr_reader :name, :allergens

    @@all = []
    def initialize(name)
        @name = name
        self.class.all << self
    end
    ##CLASS
    def self.all #✅
        @@all
    end
    ##Helper
    def recipe_cards #✅
        #retrieves all recipe cards that are associated with a particular user
        RecipeCard.all.select{|rc_instance| rc_instance.user == self}
    end

    def allergies #✅
        #retrieves all allergy instances associated with a particular user
        Allergy.all.select{|allergy_instance| allergy_instance.user == self}
    end

    def ranked_recipe_cards #lowest rating to to highest
        self.recipe_cards.sort_by{|rc_instance| rc_instance.rating}
    end 
    ## Main Methods
    def recipes #✅
        #retrieves all of a user's recipes
        self.recipe_cards.map {|rc_instance| rc_instance.recipe.name}
    end

    def add_recipe_card(recipe,date,rating) #✅
        RecipeCard.new(self,recipe,date,rating)
    end

    def declare_allergy(ingredient) #✅
        Allergy.new(self, ingredient)
    end

    def allergens #✅
        #retrieves the names of the ingredients a particular user is allergic to
        self.allergies.map{|allergy_instance| allergy_instance.ingredient.name}
        
    end

    def top_three_recipes #✅
        top_three_recipe_cards = self.ranked_recipe_cards.reverse.slice(0,3)
        top_three_recipe_cards.map.with_index(1) do |rc_instance, index| 
            "#{index}. " + rc_instance.recipe.name 
        end
    end

    def most_recent_recipe #✅
        self.recipe_cards[-1].recipe.name
    end
end

