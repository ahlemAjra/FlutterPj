class Dish {
  final String name;
  final String description;
  final String emoji;
  final List<String> ingredients;
  final String cookingInstructions;

  Dish({
    required this.name,
    required this.description,
    required this.emoji,
    required this.ingredients,
    required this.cookingInstructions,
  });
}

class Country {
  final int number;
  final String name;
  final String flag;
  final String famousFor;
  final String description;
  final String emoji;
  final List<Dish> dishes;

  Country({
    required this.number,
    required this.name,
    required this.flag,
    required this.famousFor,
    required this.description,
    required this.emoji,
    required this.dishes,
  });
}

final List<Country> countries = [
  Country(
    number: 1,
    name: 'Italy',
    flag: '🇮🇹',
    famousFor: 'Pizza, pasta, risotto, gelato',
    description: 'Simple ingredients, perfect flavors 🤌',
    emoji: '🇮🇹',
    dishes: [
      Dish(
        name: 'Pizza Margherita',
        description: 'Classic pizza with tomato, mozzarella, and basil',
        emoji: '🍕',
        ingredients: ['Flour', 'Tomato', 'Mozzarella', 'Basil', 'Olive oil'],
        cookingInstructions:
            'Prepare dough and let rise. Spread tomato sauce on base. Add fresh mozzarella and basil. Bake at 250°C for 12-15 minutes until crust is golden.',
      ),
      Dish(
        name: 'Pasta Carbonara',
        description: 'Creamy pasta with guanciale, egg, and pecorino',
        emoji: '🍝',
        ingredients: [
          'Pasta',
          'Guanciale',
          'Egg',
          'Pecorino cheese',
          'Black pepper',
        ],
        cookingInstructions:
            'Cook pasta al dente. Fry guanciale until crispy. Whisk eggs with pecorino cheese. Toss hot pasta with guanciale and fat, then add egg mixture off heat while stirring.',
      ),
      Dish(
        name: 'Risotto al Tartufo',
        description: 'Creamy risotto with black truffles',
        emoji: '🍚',
        ingredients: ['Arborio rice', 'Black truffle', 'Butter', 'Parmesan'],
        cookingInstructions:
            'Toast rice briefly. Add hot broth gradually while stirring constantly for 18-20 minutes. Finish with butter and Parmesan. Shave fresh black truffles on top before serving.',
      ),
      Dish(
        name: 'Gelato',
        description: 'Creamy Italian ice cream',
        emoji: '🍦',
        ingredients: ['Milk', 'Cream', 'Sugar', 'Vanilla', 'Chocolate'],
        cookingInstructions:
            'Heat milk and cream, whisk with egg yolks and sugar. Cool mixture. Churn in gelato machine for 30-45 minutes until creamy. Freeze for 2-3 hours before serving.',
      ),
    ],
  ),
  Country(
    number: 2,
    name: 'France',
    flag: '🇫🇷',
    famousFor: 'Croissants, cheese, sauces, pastries',
    description: 'The heart of fine dining and gastronomy 🥐🧀',
    emoji: '🇫🇷',
    dishes: [
      Dish(
        name: 'Croissants',
        description: 'Buttery, flaky pastry',
        emoji: '🥐',
        ingredients: ['Flour', 'Butter', 'Yeast', 'Salt', 'Water'],
        cookingInstructions:
            'Prepare dough and laminate with cold butter through several folds. Rest between folds. Shape into crescents and proof. Brush with egg wash and bake at 200°C for 20-25 minutes.',
      ),
      Dish(
        name: 'Escargots',
        description: 'Snails with garlic and parsley butter',
        emoji: '🐌',
        ingredients: ['Snails', 'Butter', 'Garlic', 'Parsley'],
        cookingInstructions:
            'Place snails in shells. Fill with compound garlic-parsley butter. Bake in oven at 200°C for 8-10 minutes until bubbling. Serve hot with crusty bread for dipping.',
      ),
      Dish(
        name: 'Coq au Vin',
        description: 'Chicken braised in red wine',
        emoji: '🍗',
        ingredients: [
          'Chicken',
          'Red wine',
          'Pearl onions',
          'Mushrooms',
          'Bacon',
        ],
        cookingInstructions:
            'Brown chicken and bacon, sauté vegetables. Deglaze with red wine, add broth and herbs. Braise covered at 160°C for 90 minutes until chicken is tender and flavors meld beautifully.',
      ),
      Dish(
        name: 'French Cheese',
        description: 'Various artisanal cheeses',
        emoji: '🧀',
        ingredients: ['Milk', 'Salt', 'Culture', 'Rennet', 'Herbs'],
        cookingInstructions:
            'Heat milk and add culture and rennet, let curds form. Cut curds and cook gently. Mold and drain, then salt. Age for weeks to months in proper temperature conditions.',
      ),
    ],
  ),
  Country(
    number: 3,
    name: 'Japan',
    flag: '🇯🇵',
    famousFor: 'Sushi, ramen, tempura',
    description: 'Beautiful, balanced, and precise 🍣',
    emoji: '🇯🇵',
    dishes: [
      Dish(
        name: 'Sushi',
        description: 'Rice and fresh seafood',
        emoji: '🍣',
        ingredients: ['Rice', 'Seafood', 'Nori', 'Vinegar', 'Wasabi'],
        cookingInstructions:
            'Cook rice and season with vinegar, sugar, salt. Lay nori on mat, spread rice, add fresh seafood and vegetables. Roll tightly and slice with wet knife into 6-8 pieces.',
      ),
      Dish(
        name: 'Ramen',
        description: 'Noodles in rich broth',
        emoji: '🍜',
        ingredients: ['Wheat noodles', 'Broth', 'Egg', 'Pork', 'Green onion'],
        cookingInstructions:
            'Simmer pork and aromatics for hours to make rich broth. Cook noodles separately. Boil eggs. Assemble in bowl with hot broth and top with noodles, egg, and green onion.',
      ),
      Dish(
        name: 'Tempura',
        description: 'Battered and fried vegetables and seafood',
        emoji: '🍤',
        ingredients: ['Flour', 'Egg', 'Vegetables', 'Seafood', 'Oil'],
        cookingInstructions:
            'Make light batter with cold water and flour. Heat oil to 180°C. Dip vegetables and seafood in batter. Fry 2-3 minutes until golden and crispy. Serve immediately with dipping sauce.',
      ),
      Dish(
        name: 'Okonomiyaki',
        description: 'Savory pancake with cabbage',
        emoji: '🥞',
        ingredients: ['Flour', 'Eggs', 'Cabbage', 'Pork', 'Okonomiyaki sauce'],
        cookingInstructions:
            'Mix batter with shredded cabbage and layer with pork. Cook on griddle 4-5 minutes per side until golden. Drizzle with sauce and mayo, top with bonito flakes.',
      ),
    ],
  ),
  Country(
    number: 4,
    name: 'Mexico',
    flag: '🇲🇽',
    famousFor: 'Tacos, mole, enchiladas',
    description: 'Bold flavors, spices, and traditions 🌮🔥',
    emoji: '🇲🇽',
    dishes: [
      Dish(
        name: 'Tacos',
        description: 'Tortillas with various fillings',
        emoji: '🌮',
        ingredients: ['Tortillas', 'Meat', 'Onion', 'Cilantro', 'Lime'],
        cookingInstructions:
            'Grill or pan-fry meat until cooked and slightly charred. Warm tortillas on griddle. Assemble with meat, raw onion, cilantro. Squeeze fresh lime juice and serve immediately.',
      ),
      Dish(
        name: 'Mole',
        description: 'Complex sauce with chocolate and spices',
        emoji: '🍲',
        ingredients: ['Chiles', 'Chocolate', 'Spices', 'Chicken', 'Tomato'],
        cookingInstructions:
            'Toast dried chiles and grind with spices, nuts, and chocolate. Simmer sauce for 30 minutes. Add cooked shredded chicken and simmer another 20 minutes until flavors fully develop.',
      ),
      Dish(
        name: 'Enchiladas',
        description: 'Rolled tortillas with sauce and cheese',
        emoji: '🌯',
        ingredients: ['Tortillas', 'Cheese', 'Sauce', 'Chicken', 'Cream'],
        cookingInstructions:
            'Dip tortillas in sauce, fill with chicken and cheese. Roll and arrange in baking dish. Cover with remaining sauce and cheese. Bake at 180°C for 25-30 minutes until bubbly.',
      ),
      Dish(
        name: 'Guacamole',
        description: 'Avocado-based dip',
        emoji: '🥑',
        ingredients: ['Avocado', 'Lime', 'Cilantro', 'Tomato', 'Onion'],
        cookingInstructions:
            'Halve avocados and scoop flesh into bowl. Mash to desired consistency. Mix in lime juice, onion, cilantro, and tomato. Season with salt and serve immediately with tortilla chips.',
      ),
    ],
  ),
  Country(
    number: 5,
    name: 'China',
    flag: '🇨🇳',
    famousFor: 'Dim sum, noodles, Peking duck',
    description: 'Huge variety across regions 🥟',
    emoji: '🇨🇳',
    dishes: [
      Dish(
        name: 'Dim Sum',
        description: 'Small steamed or fried dumplings',
        emoji: '🥟',
        ingredients: ['Flour', 'Pork', 'Shrimp', 'Mushroom', 'Soy sauce'],
        cookingInstructions:
            'Make dumpling wrappers from flour dough. Fill with pork, shrimp, and mushroom mixture. Seal edges. Steam in bamboo baskets for 8-10 minutes. Serve hot with soy sauce.',
      ),
      Dish(
        name: 'Peking Duck',
        description: 'Roasted duck with crispy skin',
        emoji: '🦆',
        ingredients: ['Duck', 'Hoisin sauce', 'Cucumber', 'Scallion', 'Flour'],
        cookingInstructions:
            'Hang duck to air-dry for several hours. Roast at high temperature until skin is crispy. Carve thin slices. Serve with thin pancakes, hoisin sauce, cucumber, and scallion.',
      ),
      Dish(
        name: 'Chow Mein',
        description: 'Stir-fried noodles',
        emoji: '🍜',
        ingredients: [
          'Egg noodles',
          'Vegetables',
          'Soy sauce',
          'Garlic',
          'Oil',
        ],
        cookingInstructions:
            'Cook noodles until slightly underdone. Heat wok or large pan. Stir-fry garlic and vegetables quickly. Add noodles and soy sauce, toss until well combined and heated through.',
      ),
      Dish(
        name: 'Kung Pao Chicken',
        description: 'Spicy chicken with peanuts',
        emoji: '🍗',
        ingredients: ['Chicken', 'Peanuts', 'Chili', 'Soy sauce', 'Ginger'],
        cookingInstructions:
            'Cut chicken into small cubes. Stir-fry chicken and vegetables in hot wok. Add sauce with soy, vinegar, and chili. Toss in peanuts at the end. Serve over steamed rice.',
      ),
    ],
  ),
  Country(
    number: 6,
    name: 'India',
    flag: '🇮🇳',
    famousFor: 'Curry, biryani, naan',
    description: 'Rich spices and unforgettable aromas 🌶️✨',
    emoji: '🇮🇳',
    dishes: [
      Dish(
        name: 'Butter Chicken',
        description: 'Creamy tomato-based curry',
        emoji: '🍗',
        ingredients: ['Chicken', 'Butter', 'Tomato', 'Cream', 'Spices'],
        cookingInstructions:
            'Marinate and grill chicken, set aside. Sauté spices and tomatoes, add cream and butter. Simmer chicken in sauce for 15 minutes. Serve with rice or naan bread.',
      ),
      Dish(
        name: 'Biryani',
        description: 'Fragrant rice with meat',
        emoji: '🍚',
        ingredients: ['Basmati rice', 'Meat', 'Yogurt', 'Spices', 'Saffron'],
        cookingInstructions:
            'Marinate meat in yogurt and spices. Layer marinated meat with partially cooked rice. Top with saffron soaked in milk. Cover and cook on low heat for 45 minutes.',
      ),
      Dish(
        name: 'Naan',
        description: 'Soft flatbread',
        emoji: '🍞',
        ingredients: ['Flour', 'Yogurt', 'Yeast', 'Salt', 'Butter'],
        cookingInstructions:
            'Mix dough with yogurt and yeast, let rise 2 hours. Roll into oval shapes. Cook in tandoor or very hot skillet 2-3 minutes per side until puffed and charred.',
      ),
      Dish(
        name: 'Samosa',
        description: 'Fried pastry with savory filling',
        emoji: '🥟',
        ingredients: ['Flour', 'Potatoes', 'Peas', 'Spices', 'Oil'],
        cookingInstructions:
            'Make pastry dough and let rest. Cook spiced potato and pea filling. Fill pastry triangles and fold tightly. Deep fry at 170°C until golden and crispy.',
      ),
    ],
  ),
  Country(
    number: 7,
    name: 'Thailand',
    flag: '🇹🇭',
    famousFor: 'Pad Thai, green curry, tom yum',
    description: 'Perfect balance of sweet, spicy, sour 🍜',
    emoji: '🇹🇭',
    dishes: [
      Dish(
        name: 'Pad Thai',
        description: 'Stir-fried noodles with shrimp',
        emoji: '🍜',
        ingredients: ['Rice noodles', 'Shrimp', 'Egg', 'Bean sprouts', 'Lime'],
        cookingInstructions:
            'Soak noodles in water. Stir-fry shrimp until pink. Push to side, scramble egg. Add noodles and sauce. Toss everything together. Top with peanuts and fresh lime.',
      ),
      Dish(
        name: 'Green Curry',
        description: 'Spicy coconut curry',
        emoji: '🥒',
        ingredients: ['Coconut milk', 'Green chili', 'Chicken', 'Basil'],
        cookingInstructions:
            'Make paste from green chilies, garlic, and herbs. Fry paste in oil. Add coconut milk and chicken. Simmer 15 minutes. Add basil leaves just before serving.',
      ),
      Dish(
        name: 'Tom Yum',
        description: 'Spicy and sour soup',
        emoji: '🍲',
        ingredients: ['Shrimp', 'Lemongrass', 'Lime', 'Chili', 'Mushroom'],
        cookingInstructions:
            'Simmer lemongrass and galangal in stock for 5 minutes. Add shrimp and mushrooms, cook until shrimp is pink. Season with lime juice, fish sauce, and chili paste.',
      ),
      Dish(
        name: 'Mango Sticky Rice',
        description: 'Sweet dessert with sticky rice',
        emoji: '🥭',
        ingredients: ['Sticky rice', 'Mango', 'Coconut milk', 'Sugar'],
        cookingInstructions:
            'Cook sticky rice in pot. Heat coconut milk with sugar and salt, pour over hot rice. Let soak 15 minutes. Serve with sliced fresh mango on the side.',
      ),
    ],
  ),
  Country(
    number: 8,
    name: 'Spain',
    flag: '🇪🇸',
    famousFor: 'Paella, tapas, jamón',
    description: 'Social food made for sharing 🥘',
    emoji: '🇪🇸',
    dishes: [
      Dish(
        name: 'Paella',
        description: 'Saffron rice with seafood and vegetables',
        emoji: '🥘',
        ingredients: ['Rice', 'Saffron', 'Seafood', 'Vegetables', 'Broth'],
        cookingInstructions:
            'Sauté vegetables in paella pan. Add rice and toast briefly. Pour hot saffron broth over rice. Cook 18-20 minutes without stirring until rice absorbs liquid and seafood is cooked.',
      ),
      Dish(
        name: 'Tapas',
        description: 'Small plates to share',
        emoji: '🍽️',
        ingredients: ['Cheese', 'Cured meats', 'Olives', 'Bread', 'Various'],
        cookingInstructions:
            'Slice cured meats and cheeses. Toast bread lightly. Arrange olives, marinated vegetables, and prepared ingredients on small plates. Serve at room temperature with wine.',
      ),
      Dish(
        name: 'Jamón Serrano',
        description: 'Dry-cured ham',
        emoji: '🍖',
        ingredients: ['Pork', 'Salt', 'Time'],
        cookingInstructions:
            'Salt pork leg generously and let cure in cool environment. Rinse salt after 1 week per kilogram. Hang in cool, dry place for 12-36 months until properly aged and sliceable.',
      ),
      Dish(
        name: 'Gazpacho',
        description: 'Cold tomato soup',
        emoji: '🍅',
        ingredients: ['Tomato', 'Cucumber', 'Olive oil', 'Vinegar', 'Bread'],
        cookingInstructions:
            'Blend tomatoes, cucumber, garlic, and bread with olive oil and vinegar. Pass through sieve for smooth consistency. Chill for at least 2 hours. Serve cold with ice.',
      ),
    ],
  ),
  Country(
    number: 9,
    name: 'Turkey',
    flag: '🇹🇷',
    famousFor: 'Kebab, baklava, meze',
    description: 'A bridge between East & West flavors 🥙🍯',
    emoji: '🇹🇷',
    dishes: [
      Dish(
        name: 'Kebab',
        description: 'Grilled meat skewers',
        emoji: '🥙',
        ingredients: ['Meat', 'Onion', 'Pepper', 'Spices', 'Bread'],
        cookingInstructions:
            'Cut meat into chunks and marinate in spices and yogurt for 2 hours. Thread onto skewers alternating with vegetables. Grill over charcoal until cooked through and charred.',
      ),
      Dish(
        name: 'Baklava',
        description: 'Phyllo pastry with honey and nuts',
        emoji: '🍯',
        ingredients: ['Phyllo dough', 'Nuts', 'Honey', 'Butter', 'Cinnamon'],
        cookingInstructions:
            'Layer phyllo sheets with melted butter and chopped nuts. Cut into triangles. Bake at 180°C for 30-40 minutes until golden. Immediately pour hot honey syrup over hot baklava.',
      ),
      Dish(
        name: 'Meze',
        description: 'Variety of small appetizers',
        emoji: '🍽️',
        ingredients: [
          'Hummus',
          'Baba ganoush',
          'Olives',
          'Bread',
          'Vegetables',
        ],
        cookingInstructions:
            'Prepare or gather hummus and baba ganoush. Arrange with marinated olives, fresh vegetables, and bread. Drizzle with olive oil. Serve at room temperature as appetizer.',
      ),
      Dish(
        name: 'Pita Bread',
        description: 'Soft flatbread',
        emoji: '🥙',
        ingredients: ['Flour', 'Yeast', 'Water', 'Salt', 'Oil'],
        cookingInstructions:
            'Mix dough and let rise 1 hour. Divide into 8 portions and roll into rounds. Let rise 30 minutes. Bake at 230°C for 3-4 minutes until puffed and lightly browned.',
      ),
    ],
  ),
  Country(
    number: 10,
    name: 'Tunisia',
    flag: '🇹🇳',
    famousFor: 'Couscous, brik, ojja, harissa',
    description: 'Spicy, Mediterranean, and deeply soulful 🇹🇳',
    emoji: '🇹🇳',
    dishes: [
      Dish(
        name: 'Couscous',
        description: 'Steamed semolina with vegetables and meat',
        emoji: '🍚',
        ingredients: ['Semolina', 'Meat', 'Vegetables', 'Broth', 'Spices'],
        cookingInstructions:
            'Stew meat and vegetables with spices. Steam couscous grains with butter in separate pot. Fluff with fork. Combine and serve with broth for dipping and flavor.',
      ),
      Dish(
        name: 'Brik',
        description: 'Fried pastry with egg and tuna',
        emoji: '🥟',
        ingredients: ['Pastry', 'Egg', 'Tuna', 'Harissa', 'Oil'],
        cookingInstructions:
            'Place pastry sheet in palm, fill with tuna and harissa, crack egg in center. Fold into triangle carefully. Deep fry at 180°C for 2-3 minutes until golden and crispy.',
      ),
      Dish(
        name: 'Harissa',
        description: 'Spicy red chili paste',
        emoji: '🌶️',
        ingredients: ['Red chili', 'Garlic', 'Caraway', 'Salt', 'Oil'],
        cookingInstructions:
            'Toast caraway seeds. Soak dried chilies in hot water. Blend chilies with garlic, caraway, and salt. Mix in olive oil. Store in jar covered with oil for extended shelf life.',
      ),
      Dish(
        name: 'Shakshuka',
        description: 'Eggs in tomato and pepper sauce',
        emoji: '🍳',
        ingredients: ['Eggs', 'Tomato', 'Pepper', 'Spices', 'Onion'],
        cookingInstructions:
            'Sauté onions and peppers, add crushed tomatoes and spices. Simmer 10 minutes. Create well in sauce and crack egg into each. Cover and cook until whites set but yolks remain soft.',
      ),
    ],
  ),
];
