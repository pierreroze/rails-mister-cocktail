# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#INGREDIENTS
Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all


lemon = Ingredient.new(name: "Lemon")
ice = Ingredient.new(name: "Ice")
rum = Ingredient.new(name: "Rum")
mint = Ingredient.new(name: "Mint")
cachaca = Ingredient.new(name: "Cachaca")
orange_juice = Ingredient.new(name: "Orange juice")
vodka = Ingredient.new(name: "Vodka")
cramberry_juice = Ingredient.new(name: "Cramberry juice")

#SavingINGREDIENTS

lemon.save
ice.save
rum.save
mint.save
cachaca.save
orange_juice.save
vodka.save
cramberry_juice.save

#COCKTAILS

mojito = Cocktail.new(name: "Mojito")
caipirinha = Cocktail.new(name: "Caipirinha")
sex_on_the_beach = Cocktail.new(name: "Sex on the beach")

mojito.save
caipirinha.save
sex_on_the_beach.save

#Mojito
Dose.create({
description: "Slowly drop 4 ice blocks in the bottom of the Glass",
ingredient_id: ice.id,
cocktail_id: mojito.id
})

Dose.create({
description: "Cut 3 mint leaves",
ingredient_id: mint.id,
cocktail_id: mojito.id
})
Dose.create({
description: "Slowly introduce 6cl of Cuba Rum",
ingredient_id: rum.id,
cocktail_id: mojito.id
})
Dose.create({
description: "Cut 2 lemon, i small bites",
ingredient_id: lemon.id,
cocktail_id: mojito.id
})

#Caipirinha

Dose.create({
description: "Slowly drop 5 ice blocks in the bottom of the glass",
ingredient_id: ice.id,
cocktail_id: caipirinha.id
})
Dose.create({
description: "Cute 5 lemon and make them dans in the bottom of the glass",
ingredient_id: lemon,
cocktail_id: caipirinha.id
})
Dose.create({
description: "fill up the cup with Cachaca",
ingredient_id: cachaca.id,
cocktail_id: caipirinha.id
})

#Sex On the Beacj

Dose.create({
description: "Slowly fill up the bottom of the glass with couple of ice cubs",
ingredient_id: ice.id,
cocktail_id: sex_on_the_beach.id
})
Dose.create({
description: "Slowly introduce 6cl of Vodka",
ingredient_id: vodka.id,
cocktail_id: sex_on_the_beach.id
})
Dose.create({
description: "Introduce 15cl of Orange Juice",
ingredient_id: orange_juice.id,
cocktail_id: sex_on_the_beach.id
})
Dose.create({
description: "Fill up the glass with Cramberry juice",
ingredient_id: cramberry_juice.id,
cocktail_id: sex_on_the_beach.id
})


