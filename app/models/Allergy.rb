class Allergy #✅#✅#✅
    attr_reader :user, :ingredient
    @@all = []
    def initialize(user, ingredient)
        @user = user
        @ingredient = ingredient

        self.class.all << self
    end

    def self.all 
        @@all
    end
end


