banana_bread = Recipe.find_or_create_by(
  title: "Chocolate Chip Banana Bread",
  description: [
    "Preheat the oven to 350ºF. Prepare a 9x5 baking pan by lining it with parchment or foil and lightly spraying with nonstick spray.",
    "Mash the bananas with a fork or whisk. Whisk in the sugar, egg, vanilla, and vegetable oil.",
    "Mix in the flour, baking powder, baking soda, cinnamon, and salt. The batter will be lumpy.",
    "Fold in the chocolate chips.",
    "Pour the batter into the prepared baking pan (top with more chocolate chips if you want). Bake for 55-60 minutes (start checking for doneness with a toothpick at 55 minutes). Let cool."
  ],
  category: "Bread",
  cook_time: "1 HOUR 5 MINUTES"
)

banana_bread.ingredients.find_or_create_by(title: "Overripe Bananas", quantity: "3-4", unit: "medium")
banana_bread.ingredients.find_or_create_by(title: "Sugar", quantity: ".75", unit: "cups")
banana_bread.ingredients.find_or_create_by(title: "Egg", quantity: "1", unit: "large")
banana_bread.ingredients.find_or_create_by(title: "Vanilla", quantity: "1", unit: "teaspoons")
banana_bread.ingredients.find_or_create_by(title: "Vegetable Oil", quantity: ".25", unit: "cups")
banana_bread.ingredients.find_or_create_by(title: "All Purpose Flour", quantity: "1.5", unit: "cups")
banana_bread.ingredients.find_or_create_by(title: "Baking Powder", quantity: "1.25", unit: "teaspoons")
banana_bread.ingredients.find_or_create_by(title: "Baking Soda", quantity: ".5", unit: "teaspoons")
banana_bread.ingredients.find_or_create_by(title: "Cinnamon", quantity: "1", unit: "dash")
banana_bread.ingredients.find_or_create_by(title: "Salt", quantity: ".125", unit: "teaspoons")
banana_bread.ingredients.find_or_create_by(title: "Chocolate Chips", quantity: "1", unit: "cups")

fluffy_pan = Recipe.find_or_create_by(
  title: "Fluffy Fluffy Pancakes",
  description: [
    "Combine flour, sugar, salt, and baking powder into a bowl and mix well.",
    "In a separate bowl, mix the egg, milk, vanilla, and melted butter together. Be careful not to use hot, melted butter, as that may end up cooking your eggs!",
    "Pour the wet ingredient mixture into the dry ingredients and stir till mostly incorporated. The batter should be thick and a little lumpy, but without any visible streaks of flour. If it is too thick to work with, add a little milk. Set the batter aside for 5-10 minutes.",
    "Heat a heavy-bottomed, non-stick pan over a low-medium heat and coat it with oil. Use a ¼ cup measure to scoop and drop the batter into the pan so that you get evenly-sized pancakes.",
    "Cook until the first side is golden brown, or until the top surface forms bubbles. Flip and repeat on the other side. Adjust heat accordingly. Serve while still hot."
  ],
  category: "Pancakes",
  cook_time: "15 MINUTES"
)

fluffy_pan.ingredients.find_or_create_by(title: "All-Purpose Flour", quantity: "1", unit: "cups")
fluffy_pan.ingredients.find_or_create_by(title: "Baking Powder", quantity: "2", unit: "teaspoons")
fluffy_pan.ingredients.find_or_create_by(title: "Salt", quantity: "1", unit: "pinch")
fluffy_pan.ingredients.find_or_create_by(title: "White Sugar", quantity: "2", unit: "tablespoons")
fluffy_pan.ingredients.find_or_create_by(title: "Milk", quantity: ".75", unit: "cups")
fluffy_pan.ingredients.find_or_create_by(title: "Milk", quantity: "2", unit: "teaspoons")
fluffy_pan.ingredients.find_or_create_by(title: "Egg", quantity: "1", unit: "Large")
fluffy_pan.ingredients.find_or_create_by(title: "Unsalted Butter", quantity: "2", unit: "tablespoons")
fluffy_pan.ingredients.find_or_create_by(title: "Pure Vanilla Extract", quantity: "1", unit: "teaspoons")
fluffy_pan.ingredients.find_or_create_by(title: "Canola Oil", quantity: "for cooking", unit: "")

chocalate_chip_cookies = Recipe.find_or_create_by(
  title: "chocolate chip cookies",
  description: [
    "Preheat oven to 375° F.",
    "Combine flour, baking soda and salt in small bowl. Beat butter, granulated sugar, brown sugar and vanilla extract in large mixer bowl until creamy. Add eggs, one at a time, beating well after each addition. Gradually beat in flour mixture. Stir in morsels and nuts. Drop by rounded tablespoon onto ungreased baking sheets.",
    "Bake for 9 to 11 minutes or until golden brown. Cool on baking sheets for 2 minutes; remove to wire racks to cool completely."
  ],
  category: "Cookies",
  cook_time: "15 MINUTES"
)

chocalate_chip_cookies.ingredients.find_or_create_by(title: "All-Purpose Flour", quantity: "2.25", unit: "cups")
chocalate_chip_cookies.ingredients.find_or_create_by(title: "Baking Soda", quantity: "1", unit: "teaspoons")
chocalate_chip_cookies.ingredients.find_or_create_by(title: "Salt", quantity: "1", unit: "teaspoons")
chocalate_chip_cookies.ingredients.find_or_create_by(title: "Butter (softened)", quantity: "1", unit: "cups")
chocalate_chip_cookies.ingredients.find_or_create_by(title: "Granulated Sugar", quantity: ".75", unit: "cups")
chocalate_chip_cookies.ingredients.find_or_create_by(title: "Brown Sugar (packed)", quantity: ".75", unit: "cups")
chocalate_chip_cookies.ingredients.find_or_create_by(title: "Vanilla Extract", quantity: "1", unit: "teaspoons")
chocalate_chip_cookies.ingredients.find_or_create_by(title: "Egg", quantity: "2", unit: "Large")
chocalate_chip_cookies.ingredients.find_or_create_by(title: "Nestle Toll House Semi-Sweet Chocolate Morsels", quantity: "2", unit: "cups")
chocalate_chip_cookies.ingredients.find_or_create_by(title: "Chopped Nuts", quantity: "1", unit: "cups")


blueberry_muffin = Recipe.find_or_create_by(
  title: "Jordan Marsh's Blueberry Muffins",
  description: [
    "Preheat the oven to 375.",
    "Cream the butter and 1 1/4 cups sugar until light.",
    "Add the eggs, one at a time, beating well after each addition. Add vanilla.",
    "Sift together the flour, salt and baking powder, and add to the creamed mixture alternately with the milk.",
    "Crush 1/2 cup blueberries with a fork, and mix into the batter. Fold in the remaining whole berries.",
    "Line a 12 cup standard muffin tin with cupcake liners, and fill with batter. Sprinkle the 3 teaspoons sugar over the tops of the muffins, and bake at 375 degrees for about 30-35 minutes.",
    "Remove muffins from tin and cool at least 30 minutes. Store, uncovered, or the muffins will be too moist the second day, if they last that long."
  ],
  category: "Muffin",
  cook_time: "25-30 MINUTES"
)

blueberry_muffin.ingredients.find_or_create_by(title: "Butter (softened)", quantity: ".5", unit: "cups")
blueberry_muffin.ingredients.find_or_create_by(title: "Sugar", quantity: "1.25", unit: "cups")
blueberry_muffin.ingredients.find_or_create_by(title: "Egg", quantity: "2", unit: "Large")
blueberry_muffin.ingredients.find_or_create_by(title: "Vanilla Extract", quantity: "1", unit: "teaspoons")
blueberry_muffin.ingredients.find_or_create_by(title: "Flour", quantity: "2", unit: "cups")
blueberry_muffin.ingredients.find_or_create_by(title: "Salt", quantity: ".5", unit: "teaspoons")
blueberry_muffin.ingredients.find_or_create_by(title: "Baking Powder", quantity: "2", unit: "teaspoons")
blueberry_muffin.ingredients.find_or_create_by(title: "Milk", quantity: ".5", unit: "cups")
blueberry_muffin.ingredients.find_or_create_by(title: "Blueberries", quantity: "2", unit: "cups")
blueberry_muffin.ingredients.find_or_create_by(title: "Sugar", quantity: "3", unit: "teaspoons")


brazilan_carrot_cake = Recipe.find_or_create_by(
  title: "Joana's Brazilian Carrot Cake",
  description: [
    "Preheat - 400F.",
    "Cut carrots into 4 pieces.",
    "Add oil, eggs and carrots to blender, blend until it becomes a liquid then add sugar.",
    "Keep blending and add flour slowly until thoroughly mixed.",
    "Lastly, add the Baking Powder. Use a spoon to fold into mixture.",
    "Add oil to the cakepan and place all the mix into it. Bake for about 40 min",
    "For the Topper: Add all the ingredients to a pan and let it boil over low heat, mixing once in a while, until it changes consistency(about 20 min). Pour it over the cake and let cool."
  ],
  category: "cake",
  cook_time: "40 MINUTES"
)

brazilan_carrot_cake.ingredients.find_or_create_by(title: "Carrots", quantity: "3", unit: "Medium")
brazilan_carrot_cake.ingredients.find_or_create_by(title: "Sugar", quantity: "2", unit: "cups")
brazilan_carrot_cake.ingredients.find_or_create_by(title: "All-Purpose Flour", quantity: "2", unit: "cups")
brazilan_carrot_cake.ingredients.find_or_create_by(title: "Oil", quantity: "1", unit: "cup")
brazilan_carrot_cake.ingredients.find_or_create_by(title: "Egg", quantity: "4", unit: "Large")
brazilan_carrot_cake.ingredients.find_or_create_by(title: "Baking Powder", quantity: "1", unit: "tablespoon")
brazilan_carrot_cake.ingredients.find_or_create_by(title: "Topper: Milk", quantity: "1.5", unit: "cups")
brazilan_carrot_cake.ingredients.find_or_create_by(title: "Topper: Chocolate Powder", quantity: "1", unit: "cup")
brazilan_carrot_cake.ingredients.find_or_create_by(title: "Topper: Corn Starch", quantity: ".5", unit: "cups")

easy_vanilla_cake = Recipe.find_or_create_by(
  title: "Easy Vanilla Cake",
  description: [
    "Preheat oven to 180 C (350 F) standard / 160 C (320 F) fan-forced. Grease and line three 6-inch round cake pans with baking or parchment paper.",
    "In a large mixing bowl, add flour, sugar, baking powder and salt. Whisk briefly. Add butter and beat with an electric mixer on low speed, until butter is broken into small pea-sized pieces and completely covered in flour.",
    "Next, add eggs, one at a time, while continuing to mix on low speed. Then, pour in milk and vanilla. Start to beat on low speed and then turn up to medium speed. Finally, add Greek yogurt. Mixture should be creamy and smooth.",
    "Divide cake batter between prepared pans. Bake for approximately 25-30 minutes or until a skewer inserted in the middle comes out clean. Carefully transfer cakes to a wire rack to cool completely.",
    "To make the frosting, add butter to a large mixing bowl. Beat with an electric mixer for 2 minutes or until smooth and creamy. Add vanilla.",
    "Add 2 cups of sugar, along with 2 tablespoons of milk, and continue to beat. Add remaining 2 cups of sugar and beat briefly until smooth. If the frosting is too thick, add an extra tablespoon of milk.",
    "Spread frosting on one cake layer, add the cake layer on top. Repeat. Then cover top and sides with frosting."
  ],
  category: "cake",
  cook_time: "30 MINUTES"
)

easy_vanilla_cake.ingredients.find_or_create_by(title: "All Purpose Flour", quantity: "2.25", unit: "cups")
easy_vanilla_cake.ingredients.find_or_create_by(title: "Granulated Sugar", quantity: "1.25", unit: "cups")
easy_vanilla_cake.ingredients.find_or_create_by(title: "Baking Powder", quantity: "2.5", unit: "teaspoons")
easy_vanilla_cake.ingredients.find_or_create_by(title: "Salt", quantity: "1", unit: "pinch")
easy_vanilla_cake.ingredients.find_or_create_by(title: "Unsalted Butter", quantity: "1", unit: "cup")
easy_vanilla_cake.ingredients.find_or_create_by(title: "Eggs", quantity: "3", unit: "large")
easy_vanilla_cake.ingredients.find_or_create_by(title: "Whole Milk", quantity: "1", unit: "cup")
easy_vanilla_cake.ingredients.find_or_create_by(title: "Vanilla Extract", quantity: "2", unit: "teaspoons")
easy_vanilla_cake.ingredients.find_or_create_by(title: "Greek Yogurt", quantity: ".25", unit: "cups")
easy_vanilla_cake.ingredients.find_or_create_by(title: "Buttercream: Unsalted Butter", quantity: "1", unit: "cup")
easy_vanilla_cake.ingredients.find_or_create_by(title: "Buttercream: Vanilla Extract", quantity: "2", unit: "teaspoons")
easy_vanilla_cake.ingredients.find_or_create_by(title: "Buttercream: Powdered Sugar", quantity: "4", unit: "cups")
easy_vanilla_cake.ingredients.find_or_create_by(title: "Buttercream: Whole Milk", quantity: "3", unit: "tablespoons")

raspberry_ripple_cake = Recipe.find_or_create_by(
  title: "Raspberry Ripple Cake",
  description: [
    "Raspberry Cake: Grease and line a quarter sheet pan with baking or parchment paper. Preheat oven to 180 C (350 F) standard / 160 C (320 F) fan-forced.",
    "In a large mixing bowl, add butter, sugar and vanilla and beat with an electric mixer on medium speed until smooth and creamy. Add eggs, one at a time, and beat after each addition.",
    "In a separate bowl, add flour, baking powder and salt, and whisk briefly. Add half of the flour mix and all the milk and beat on a low speed until combined.",
    "Add remaining flour mix and sour cream and continue to mix on a low speed until just combined and a thick, creamy cake batter forms. Gently fold in raspberries by hand, being careful not to overmix.",
    "Pour cake batter into prepared cake pan and bake in the oven for approximately 30 minutes or until golden on the edges and a knife inserted in the middle comes out clean. Leave cake in pan to cool completely.",
    "Vanilla Buttercream: To make your frosting, roughly chop butter into cubes and place in a large mixing bowl. Beat with an electric mixer on medium speed for 1-2 minutes or until your butter is smooth and creamy. There should be no lumps. Scrape down the sides of the bowl.",
    "Add vanilla and beat briefly to combine. Then add 125 grams (1 cup) sugar. Beat on a low speed to combine, then turn up the speed to medium and mix for 30 seconds or so. Mixture should be thick and appear a little dry – this is fine.",
    "Next, add another 125 grams (1 cup) sugar, along with 1 tablespoon of milk. Beat on medium speed until combined. Scrape down the sides of the bowl.",
    "Add another 125 grams (1 cup) sugar, along with 1 tablespoon of milk. Beat on medium speed until mixture is thick and creamy.",
    "Finally, add remaining 125 grams (1 cup) sugar and beat on medium speed until mixture is smooth. Buttercream should be lovely and thick at this stage with no lumps. If the buttercream is too thick, add an extra tablespoon or two of milk.",
    "Raspberry sauce: In a small saucepan, add raspberries, sugar and water. Place on a low heat, and stir continuously, for 5-8 minutes until raspberries melt and a thick syrup forms. Add a squeeze of lemon to taste.",
    "Use a sieve to strain raspberry sauce and discard raspberry seeds. Raspberry sauce should be lovely and smooth.",
    "Milk soak: Combine milk and vanilla extract together.",
    "To assemble: Gently remove cooled cake from pan and remove baking paper. Cut out three 6-inch layers using a 6-inch cake ring. Note the diagram above – you’ll get two whole layers and then two halves.",
    "Place a 6-inch cake ring on a cake board or plate. Line the inside of the cake ring with a sheet of acetate. Place the two half pieces of cake at the bottom. Press down the cake firmly. If there are any gaps, use extra cake scraps to fill in the holes and press down very firmly to make one even layer.",
    "Spoon 1-2 tablespoons of the milk soak over the first cake layer. Add 1/3 of the vanilla buttercream and spread into one layer. Spoon over a few tablespoons of raspberry sauce. Add a handful of fresh raspberries.",
    "Add another layer of cake and press down firmly. Spoon over 1-2 tablespoons of milk. Add 1/3 of the vanilla buttercream. Spoon over a few tablespoons of raspberry sauce. Add a handful of fresh raspberries.",
    "Add final cake layer and press down firmly. Add the rest of the buttercream and the remaining raspberry sauce and fresh raspberries. Place cake in the fridge for at least 1 hour to set."
  ],
  category: "cake",
  cook_time: "30 MINUTES"
)

raspberry_ripple_cake.ingredients.find_or_create_by(title: "Cake: Unsalted Butter", quantity: "1", unit: "cup")
raspberry_ripple_cake.ingredients.find_or_create_by(title: "Cake: Granulated Sugar", quantity: "1", unit: "cup")
raspberry_ripple_cake.ingredients.find_or_create_by(title: "Cake: Vanilla Extract", quantity: "2", unit: "teaspoons")
raspberry_ripple_cake.ingredients.find_or_create_by(title: "Cake: Eggs", quantity: "3", unit: "large")
raspberry_ripple_cake.ingredients.find_or_create_by(title: "Cake: All Purpose Flour", quantity: "2.25", unit: "cups")
raspberry_ripple_cake.ingredients.find_or_create_by(title: "Cake: Baking Powder", quantity: "3", unit: "teaspoons")
raspberry_ripple_cake.ingredients.find_or_create_by(title: "Cake: Salt", quantity: "1", unit: "pinch")
raspberry_ripple_cake.ingredients.find_or_create_by(title: "Cake: Whole Milk", quantity: "1", unit: "cup")
raspberry_ripple_cake.ingredients.find_or_create_by(title: "Cake: Greek Yogurt", quantity: ".25", unit: "cups")
raspberry_ripple_cake.ingredients.find_or_create_by(title: "Cake: Frozen Raspberries", quantity: "1.5", unit: "cups")
raspberry_ripple_cake.ingredients.find_or_create_by(title: "Buttercream: Vanilla Extract", quantity: "2", unit: "teaspoons")
raspberry_ripple_cake.ingredients.find_or_create_by(title: "Buttercream: Powdered Sugar", quantity: "4", unit: "cups")
raspberry_ripple_cake.ingredients.find_or_create_by(title: "Buttercream: Whole Milk", quantity: "3", unit: "tablespoons")
raspberry_ripple_cake.ingredients.find_or_create_by(title: "Buttercream: Unsalted Butter", quantity: "1", unit: "cup")
raspberry_ripple_cake.ingredients.find_or_create_by(title: "Raspberry Sauce: Frozen Raspberries", quantity: "1.5", unit: "cups")
raspberry_ripple_cake.ingredients.find_or_create_by(title: "Raspberry Sauce: Granulated Sugar", quantity: "4", unit: "tablespoons")
raspberry_ripple_cake.ingredients.find_or_create_by(title: "Raspberry Sauce: Water", quantity: "1", unit: "tablespoon")
raspberry_ripple_cake.ingredients.find_or_create_by(title: "Raspberry Sauce: Fresh Lemon Juice", quantity: "1", unit: "squeeze")
raspberry_ripple_cake.ingredients.find_or_create_by(title: "Milk Soak: Whole Milk", quantity: ".5", unit: "cups")
raspberry_ripple_cake.ingredients.find_or_create_by(title: "Milk Soak: Vanilla Extract", quantity: "1", unit: "teaspoon")
raspberry_ripple_cake.ingredients.find_or_create_by(title: "Milk Soak: Raspberries", quantity: "2", unit: "cups")

lemon_blueberry_cake = Recipe.find_or_create_by(
  title: "Lemon Blueberry Cake",
  description: [
    "Preheat oven to 180 C (350 F) standard / 160 C (320 F) fan-forced. Grease and line two 8-inch round cake pans with baking or parchment paper.",
    "In a large mixing bowl, add flour, sugar, baking powder and salt. Whisk briefly. Add butter and beat with an electric mixer on low speed, until butter is broken into small pieces.",
    "Next, add lemon zest, eggs, milk and vanilla. Start to beat on low speed and then turn up to medium speed. Add lemon juice and continue to beat. Mixture should be creamy and smooth. Lastly, stir through the blueberries.",
    "Divide cake batter between your two prepared pans. Bake for approximately 30-35 minutes or until a skewer inserted in the middle comes out clean. Carefully transfer cakes to a wire rack to cool completely.",
    "To make the cream cheese frosting, add butter and cream cheese to a large mixing bowl. Beat with an electric mixer for 2-3 minutes until smooth and creamy.",
    "Add 2 cups of sugar, and continue to beat. Add remaining cup of sugar and lemon juice and beat briefly until smooth.",
    "Spread frosting on one cake layer, add the remaining cake layer on top. Cover top and sides with frosting. Decorate with fresh blueberries."
  ],
  category: "cake",
  cook_time: "35 MINUTES"
)

lemon_blueberry_cake.ingredients.find_or_create_by(title: "Cake: All Purpose Flour", quantity: "2.25", unit: "cups")
lemon_blueberry_cake.ingredients.find_or_create_by(title: "Cake: Granulated Sugar", quantity: "1.25", unit: "cups")
lemon_blueberry_cake.ingredients.find_or_create_by(title: "Cake: Baking Powder", quantity: "2.5", unit: "teaspoons")
lemon_blueberry_cake.ingredients.find_or_create_by(title: "Cake: Salt", quantity: "1", unit: "pinch")
lemon_blueberry_cake.ingredients.find_or_create_by(title: "Cake: Unsalted Butter", quantity: "1", unit: "cup")
lemon_blueberry_cake.ingredients.find_or_create_by(title: "Cake: Zest of Lemons", quantity: "2", unit: "lemons")
lemon_blueberry_cake.ingredients.find_or_create_by(title: "Cake: Eggs", quantity: "3", unit: "large")
lemon_blueberry_cake.ingredients.find_or_create_by(title: "Cake: Whole Milk", quantity: "1", unit: "cup")
lemon_blueberry_cake.ingredients.find_or_create_by(title: "Cake: Vanilla Extract", quantity: "1", unit: "teaspoon")
lemon_blueberry_cake.ingredients.find_or_create_by(title: "Cake: Lemon Juice", quantity: "4", unit: "tablespoons")
lemon_blueberry_cake.ingredients.find_or_create_by(title: "Cake: Fresh Blueberries", quantity: "1.25", unit: "cups")
lemon_blueberry_cake.ingredients.find_or_create_by(title: "Frosting: Unsalted Butter", quantity: ".25", unit: "cups")
lemon_blueberry_cake.ingredients.find_or_create_by(title: "Frosting: Cream Cheese", quantity: "1.25", unit: "cups")
lemon_blueberry_cake.ingredients.find_or_create_by(title: "Frosting: Powdered Sugar", quantity: "3", unit: "cups")
lemon_blueberry_cake.ingredients.find_or_create_by(title: "Frosting: Lemon Juice", quantity: "1", unit: "tablespoon")
lemon_blueberry_cake.ingredients.find_or_create_by(title: "Frosting: Extra Blueberries", quantity: "to", unit: "decorate")
