class Ingredients #✅#✅#✅
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name

        self.class.all << self
    end

    def self.all
        @@all
    end

    def self.most_common_allergen
        allergens = Allergy.all.map{|allergy_instance| allergy_instance.ingredient}
        allergens.max_by {|ingredient_instance| allergens.count(ingredient_instance)}
    end

end


