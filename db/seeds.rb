Recipe.destroy_all

banana_bread = Recipe.create(
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

banana_bread.ingredients.create(title: "Overripe Bananas", quantity: "3-4", unit: "medium")
banana_bread.ingredients.create(title: "Sugar", quantity: ".75", unit: "cups")
banana_bread.ingredients.create(title: "Egg", quantity: "1", unit: "large")
banana_bread.ingredients.create(title: "Vanilla", quantity: "1", unit: "teaspoons")
banana_bread.ingredients.create(title: "Vegetable Oil", quantity: ".25", unit: "cups")
banana_bread.ingredients.create(title: "All Purpose Flour", quantity: "1.5", unit: "cups")
banana_bread.ingredients.create(title: "Baking Powder", quantity: "1.25", unit: "teaspoons")
banana_bread.ingredients.create(title: "Baking Soda", quantity: ".5", unit: "teaspoons")
banana_bread.ingredients.create(title: "Cinnamon", quantity: "1", unit: "dash")
banana_bread.ingredients.create(title: "Salt", quantity: ".125", unit: "teaspoons")
banana_bread.ingredients.create(title: "Chocolate Chips", quantity: "1", unit: "cups")

fluffy_pan = Recipe.create(
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

fluffy_pan.ingredients.create(title: "All-Purpose Flour", quantity: "1", unit: "cups")
fluffy_pan.ingredients.create(title: "Baking Powder", quantity: "2", unit: "teaspoons")
fluffy_pan.ingredients.create(title: "Salt", quantity: "1", unit: "pinch")
fluffy_pan.ingredients.create(title: "White Sugar", quantity: "2", unit: "tablespoons")
fluffy_pan.ingredients.create(title: "Milk", quantity: ".75", unit: "cups")
fluffy_pan.ingredients.create(title: "Milk", quantity: "2", unit: "teaspoons")
fluffy_pan.ingredients.create(title: "Egg", quantity: "1", unit: "Large")
fluffy_pan.ingredients.create(title: "Unsalted Butter", quantity: "2", unit: "tablespoons")
fluffy_pan.ingredients.create(title: "Pure Vanilla Extract", quantity: "1", unit: "teaspoons")
fluffy_pan.ingredients.create(title: "Canola Oil", quantity: "for cooking", unit: "")

chocalate_chip_cookies = Recipe.create(
  title: "chocolate chip cookies",
  description: [
    "Preheat oven to 375° F.",
    "Combine flour, baking soda and salt in small bowl. Beat butter, granulated sugar, brown sugar and vanilla extract in large mixer bowl until creamy. Add eggs, one at a time, beating well after each addition. Gradually beat in flour mixture. Stir in morsels and nuts. Drop by rounded tablespoon onto ungreased baking sheets.",
    "Bake for 9 to 11 minutes or until golden brown. Cool on baking sheets for 2 minutes; remove to wire racks to cool completely."
  ],
  category: "Cookies",
  cook_time: "15 MINUTES"
)

chocalate_chip_cookies.ingredients.create(title: "All-Purpose Flour", quantity: "2.25", unit: "cups")
chocalate_chip_cookies.ingredients.create(title: "Baking Soda", quantity: "1", unit: "teaspoons")
chocalate_chip_cookies.ingredients.create(title: "Salt", quantity: "1", unit: "teaspoons")
chocalate_chip_cookies.ingredients.create(title: "Butter (softened)", quantity: "1", unit: "cups")
chocalate_chip_cookies.ingredients.create(title: "Granulated Sugar", quantity: ".75", unit: "cups")
chocalate_chip_cookies.ingredients.create(title: "Brown Sugar (packed)", quantity: ".75", unit: "cups")
chocalate_chip_cookies.ingredients.create(title: "Vanilla Extract", quantity: "1", unit: "teaspoons")
chocalate_chip_cookies.ingredients.create(title: "Egg", quantity: "2", unit: "Large")
chocalate_chip_cookies.ingredients.create(title: "Nestle Toll House Semi-Sweet Chocolate Morsels", quantity: "2", unit: "cups")
chocalate_chip_cookies.ingredients.create(title: "Chopped Nuts", quantity: "1", unit: "cups")


blueberry_muffin = Recipe.create(
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

blueberry_muffin.ingredients.create(title: "Butter (softened)", quantity: ".5", unit: "cups")
blueberry_muffin.ingredients.create(title: "Sugar", quantity: "1.25", unit: "cups")
blueberry_muffin.ingredients.create(title: "Egg", quantity: "2", unit: "Large")
blueberry_muffin.ingredients.create(title: "Vanilla Extract", quantity: "1", unit: "teaspoons")
blueberry_muffin.ingredients.create(title: "Flour", quantity: "2", unit: "cups")
blueberry_muffin.ingredients.create(title: "Salt", quantity: ".5", unit: "teaspoons")
blueberry_muffin.ingredients.create(title: "Baking Powder", quantity: "2", unit: "teaspoons")
blueberry_muffin.ingredients.create(title: "Milk", quantity: ".5", unit: "cups")
blueberry_muffin.ingredients.create(title: "Blueberries", quantity: "2", unit: "cups")
blueberry_muffin.ingredients.create(title: "Sugar", quantity: "3", unit: "teaspoons")


brazilan_carrot_cake = Recipe.create(
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

brazilan_carrot_cake.ingredients.create(title: "Carrots", quantity: "3", unit: "Medium")
brazilan_carrot_cake.ingredients.create(title: "Sugar", quantity: "2", unit: "cups")
brazilan_carrot_cake.ingredients.create(title: "All-Purpose Flour", quantity: "2", unit: "cups")
brazilan_carrot_cake.ingredients.create(title: "Oil", quantity: "1", unit: "cup")
brazilan_carrot_cake.ingredients.create(title: "Egg", quantity: "4", unit: "Large")
brazilan_carrot_cake.ingredients.create(title: "Baking Powder", quantity: "1", unit: "tablespoon")
brazilan_carrot_cake.ingredients.create(title: "Topper: Milk", quantity: "1.5", unit: "cups")
brazilan_carrot_cake.ingredients.create(title: "Topper: Chocolate Powder", quantity: "1", unit: "cup")
brazilan_carrot_cake.ingredients.create(title: "Corn Starch", quantity: ".5", unit: "cups")


image_1 = blueberry_muffin.images.create(title: "bb muffin 1")
blob_1 = "eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBCZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--ec3cc9135459e0e034bd4a0a981c6ede2f3a08b6"
image_1.recipe_image.attach(blob_1)

image_2 = blueberry_muffin.images.create(title: "bb muffin 2")
blob_2 = "eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBCdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--5d7df1454ac2e950f75ca240e0a8c7b493c65e28"
image_2.recipe_image.attach(blob_2)

image_3 = blueberry_muffin.images.create(title: "bb muffin 3")
blob_3 = "eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBDUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--705f55bca3cf18a0a95df23ee440412d31f27cba"
image_2.recipe_image.attach(blob_3)

# image_1 = banana_ bread.images.create(title: "Jerry")
# blob_1 = "eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBCZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--ed40020b1ecfc726be945d171b29316c2a683a20"
# image_1.recipe_image.attach(blob_1)
