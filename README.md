### SQL Introduction
_(For best results view this file in 'Preview' by right-clicking the file in VScode and selecting 'Open preview')_
### Morning

We are going to create a database for an Italian recipe website. The meals on our website will be divided up like so...
- Courses (Starter, Main, Dessert, Drink)
- Dishes (Minestrone, Pepperoni Pizza, Pistachio gelato etc...)
- Dish-types (Fish, Pizza, Pasta, Wine, Ice-cream, Soup etc...)

Each Dish will have a single Course and a single Dish-type. For example, Minestrone will have a Course of 'Starter' and will have a Dish-type of 'Soup'.
As in any recipe book, there will be many possible dishes for each Course and multiple dishes for each Dish-type. This gives us a good reason for us to separate them out into their own tables.

#### Tasks
1. Create the schema for Courses, Dishes and Types.
2. Insert a few Courses.
3. Insert a few Types.
4. Insert a few Dishes which belong to a course and have one type.
5. Write queries to fetch all your types.
6. Write queries to fetch all your courses.
7. Write queries to fetch all your dishes.
8. Write a query to fetch all the dishes for a certain course.
9. Write a query to fetch all the dishes of a certain type.

### Afternoon

Dishes also have many ingredients. I could think of many Italian recipes within all our courses or types which contain olive oil or tomatoes. This gives us good reason to extract these out into their own ingredients table. Imagine how many times our database would contain 'olive oil' or 'tomato' if we didn't have a separate ingredients table?! Also consider how much more work our SQL server would have to do to 'Find me all recipes which use olive oil, tomato and garlic'.

Now our data set becomes a little more complicated as we now need a Many to Many Relationship. To handle many to relationships in our database we will need to use a Junction Table. These links explain a little bit more about Many to Many Relationships and  Junction Tables. 
- [Many to many relationships & Junction Tables](https://dzone.com/articles/how-to-handle-a-many-to-many-relationship-in-datab).
- [Another example of Junction Tables](https://megocode3.wordpress.com/2008/01/04/understanding-a-sql-junction-table/).

#### Tasks
1. Create the schema for ingredients.
2. Insert some ingredients into your table. You may now want to simplify your earlier data set to just have two or three recipes.
3. Write a query which returns a recipe by its name with all the ingredients needed to cook that recipe.

#### Advanced Queries
1. Find all the Dishes which use a certain ingredient.
2. Find all the Dishes which use one or more of a certain set of ingredients.
3. Find all the Dishes of a certain Course or Dish-type which use one or more of a certain set of Ingredients.


### Advanced task
Your final challenge is to create a table for Methods used and integrate this with your existing tables. Bear in mind that ingredients can be cooked using a variety of methods depending on which dish they are being used in, and each method can be used on any number of ingredients. For example 'Poach' could be a Method that applied to fish or eggs; 'Whisk' could apply to eggs in one recipe, but not to eggs in another.

Once you have created your tables you should try and implement the following queries:
1. Find all of the Methods used for Dishes of a specific Course.
2. Find all of the Ingredients that use a specific Method.
3. Find all of the Ingredients that use more than 2 Methods.
4. Find all of the Ingredients for a specific Dish and the relevant Methods used for those Ingredients.

### Super advanced task
Write a query to find all the Dishes of a Dish-Type which use one or more of a certain set of Ingredients but which also don't include another Ingredient. You should display all of the Ingredients for the qualifying Dishes. For example, vegetable dishes that include garlic or tomatoes but not mushrooms:
<table>
<tr>
<td><b>Dish-type</b></td>
<td><b>Course</b></td>
<td><b>Dish</b></td>
<td><b>Ingredient</b></td>
</tr>
<tr>
<td>Vegetable</td>
<td>Starter</td>
<td>Gaspacho</td>
<td>Tomato</td>
</tr>
<tr>
<td>Vegetable</td>
<td>Starter</td>
<td>Gaspacho</td>
<td>Garlic</td>
</tr>
<tr>
<td>Vegetable</td>
<td>Starter</td>
<td>Gaspacho</td>
<td>Basil</td>
</tr>
<tr>
<td>Vegetable</td>
<td>Main</td>
<td>Tomato Ravioli</td>
<td>Tomato</td>
</tr>
<tr>
<td>Vegetable</td>
<td>Main</td>
<td>Tomato Ravioli</td>
<td>Olive oil</td>
</tr>
<tr>
<td>Vegetable</td>
<td>Main</td>
<td>Tomato Ravioli</td>
<td>Garlic</td>
</tr>
<tr>
<td>etc...</td>
<td>etc...</td>
<td>etc...</td>
<td>etc...</td>
</tr>
</table>


**FINAL TASK**
Write a query challenge for another pair. You can be as awkward as you want
