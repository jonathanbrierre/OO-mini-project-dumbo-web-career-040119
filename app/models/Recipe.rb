class Recipe #✅#✅#✅
    attr_reader :name

    @@all = []
    def initialize(name)
        @name = name
        
        self.class.all << self
    end
    ##class methods
    def self.all 
        @@all
    end

    def self.most_popular #✅
        # should return the recipe instance with the highest 
        # number of users (the recipe that has the most recipe cards)
        recipes_used = RecipeCard.all.map{|rc_instance| rc_instance.recipe}
        recipes_used.max_by{|recipe_instance| recipes_used.count(recipe_instance) }
    end

    ## helper methods
    def recipe_cards
        RecipeCard.all.select{|rc_instance| rc_instance.recipe == self}
        #returns an array of recipe card instances associated with this recipe
    end

    def recipe_ingredient 
        RecipeIngredient.all.select{|ri_instance| ri_instance.recipe == self}
        #returns an array of recipe ingredient instances associated with a recipe
    end

    def known_allergies
        Allergy.all.select do |allergy_instance|
            self.ingredients.include?(allergy_instance.ingredient.name)
        end
        #returns an array of all the documented allergy instances that are associated with an 
        #ingredient in a particular recipe
    end
    ##main methods
    def users #✅
        self.recipe_cards.map{|rc_instance| rc_instance.user.name}
        #returns an array of users that have the recipe card a particular recipe
        #is associated with
    end

    def ingredients #✅
        self.recipe_ingredient.map{|ri_instance| ri_instance.ingredient.name}
        #returns an array of ingredient instances that are associated with this recipe
    end

    def add_ingredients(ingredients) #✅
        ingredients.each{|ingredient_instance| RecipeIngredient.new(self,ingredient_instance)}
        # should take an array of ingredient instances as an argument, 
        # and associate each of those ingredients with this recipe
    end

    def allergens #✅
        # should return all of the `Ingredient`s in a particular recipe 
        # that are allergens for `User`s in our system. 
        allergens = self.known_allergies.map{|allergy_instance| allergy_instance.ingredient.name}
        allergens.uniq
    end

end


