require 'pry'
require_relative '../config/environment'

u1 = User.new('rob')
u2 = User.new('alex')
u3 = User.new('jay')
u4 = User.new('rosa')

i1 = Ingredients.new('thyme')
i2 = Ingredients.new('basil')
i3 = Ingredients.new('ginger')
i4 = Ingredients.new('tumeric')
i5 = Ingredients.new('flour')
i6 = Ingredients.new('vegan meat')
i7 = Ingredients.new('salt')
i8 = Ingredients.new('pepper')
i9 = Ingredients.new('potato')

r1 = Recipe.new('chowder')
r2 = Recipe.new('chicken')
r3 = Recipe.new('mashed potatoes')
r4 = Recipe.new('spaghetti')
r5 = Recipe.new('meatballs')
r6 = Recipe.new('smoked salmon')

u4.declare_allergy(i6)
u4.declare_allergy(i4)
u3.declare_allergy(i4)
u2.declare_allergy(i4)
u1.declare_allergy(i1)

u4.add_recipe_card(r1,"october 30th",2)
u2.add_recipe_card(r6,'January 1st',5)
u3.add_recipe_card(r6,"june 7th",5)
u4.add_recipe_card(r6,'August 25th',10)
u3.add_recipe_card(r3,'May 29th',7)
u4.add_recipe_card(r2,'July 4th',8)
u4.add_recipe_card(r4,"september 28th", 4)

ri1 = RecipeIngredient.new(r2,i1)
ri2 = RecipeIngredient.new(r1,i2)
ri3 = RecipeIngredient.new(r3,i3)
ri4 = RecipeIngredient.new(r1,i4)
ri4 = RecipeIngredient.new(r2,i4)
ri4 = RecipeIngredient.new(r6,i6)
ri5 = RecipeIngredient.new(r2,i6)
ri6 = RecipeIngredient.new(r2,i8)
# ri7 = RecipeIngredient.new(r2,i7)
# ri8 = RecipeIngredient.new(r3,i1)
# ri9 = RecipeIngredient.new(r3,i2)
# ri10 = RecipeIngredient.new(r3,i7)


binding.pry
string = "thing"