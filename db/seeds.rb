Recipe.destroy_all

banana_bread = Recipe.create(
  title: "Chocolate Chip Banana Bread",
  description: [
    "Preheat the oven to 350ºF. Prepare a 9x5 baking pan by lining it with parchment or foil and lightly spraying with nonstick spray.",
    "Preheat the oven to 350ºF. Prepare a 9x5 loaf baking pan by lining it with parchment or foil and lightly spraying nonstick spray.",
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
