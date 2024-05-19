import 'package:flutter/material.dart';

class DietPlan extends StatelessWidget {
  const DietPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFDE638A),
        appBar: AppBar(
          backgroundColor: Color(0xFFDE638A),
          title: Container(
            margin: EdgeInsets.only(top: 13.0),
            child: Row(
              children: [
                Image.asset(
                  'icon.png',
                  height: 50,
                  width: 50,
                ),
                SizedBox(width: 400),
                Text(
                  'Diet Plans',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildCard(
                  title: 'Healthy Diet',
                  content: _buildRichText('''**Daily Caloric Intake**
- Women: 1,800-2,200
- Men: 2,200-2,800

**Food Groups**
- Vegetables: Spinach, broccoli, carrots
- Fruits: Berries, citrus, apples
- Proteins: Chicken, fish, lentils, eggs
- Grains: Quinoa, brown rice, oats
- Dairy: Greek yogurt, low-fat milk
- Fats: Avocado, nuts, seeds, olive oil

**Sample Meal Plan**
Breakfast: Smoothie + toast with egg
Snack: Apple + almonds
Lunch: Chicken salad + whole-grain bread
Snack: Carrots + hummus
Dinner: Salmon + quinoa + broccoli
Snack: Greek yogurt + berries

**Tips**
- Variety, portion control, hydration, limit sugars and salt, regular meals, physical activity.'''),
                ),
                SizedBox(height: 16),
                _buildCard(
                  title: 'Weight Loss',
                  content: _buildRichText('''**Daily Caloric Intake**
- Women: 1,200 - 1,500
- Men: 1,500 - 1,800

**Food Groups**
- Vegetables: Spinach, broccoli, peppers
- Fruits: Berries, citrus, apples
- Proteins: Chicken, fish, lentils, tofu
- Grains: Quinoa, brown rice, oats
- Dairy: Greek yogurt, almond milk
- Fats: Avocado, nuts, chia seeds

**Sample Meal Plan**
Breakfast: Greek yogurt + berries + chia seeds
Snack: Apple + almonds
Lunch: Salad + chicken + quinoa
Snack: Carrots + hummus
Dinner: Salmon + broccoli + brown rice
Snack: Small banana

**Tips**
- Portion control, hydration, regular meals, balanced diet, limit processed foods.'''),
                ),
                SizedBox(height: 16),
                _buildCard(
                  title: 'Weight Gain',
                  content: _buildRichText('''**Daily Caloric Intake**
- Women: 2,000-2,500
- Men: 2,500-3,000

**Food Groups**
- Vegetables: Potatoes, corn, peas
- Fruits: Bananas, mangoes, dried fruits
- Proteins: Chicken, beef, salmon, lentils
- Grains: Quinoa, brown rice, oats
- Dairy: Full-fat yogurt, whole milk
- Fats: Avocado, nuts, seeds, nut butters

**Sample Meal Plan**
Breakfast: Smoothie + toast with avocado
Snack: Trail mix
Lunch: Chicken sandwich + sweet potato fries
Snack: Smoothie with berries
Dinner: Steak + quinoa + broccoli
Snack: Greek yogurt + granola

**Tips**
- Frequent meals, calorie-dense snacks, smoothies, healthy fats, strength training.'''),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCard({required String title, required RichText content}) {
    return Card(
      color: Colors.pink,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8),
            content,
          ],
        ),
      ),
    );
  }

  RichText _buildRichText(String text) {
    List<TextSpan> spans = [];
    text.split('\n').forEach((line) {
      if (line.startsWith('**') && line.endsWith('**')) {
        spans.add(
          TextSpan(
            text: '${line.replaceAll('**', '')}\n',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),
          ),
        );
      } else {
        spans.add(
          TextSpan(
            text: '$line\n',
            style: TextStyle(color: Colors.white, fontSize: 13, height: 1.5),
          ),
        );
      }
    });

    return RichText(
      text: TextSpan(
        children: spans,
      ),
    );
  }
}