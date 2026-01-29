# TASKS

You'll see #warning("...") and little yellow triangles throughout this Xcode project. These are warning that the mentors created to help guide you through this exercise. Each warning is associated with a To Do item from this page. 
The numbering system is based on the day and the order in which you should complete the task. For example, 2.1 is a task you should complete on day 2 and it should be the first task you do. Feel free to delete the warning when you've completed the task.

## Day 1
### User Stories
 - As a customer who doesn’t know what they want, I want to see visual representations of all the available ice cream flavors and toppings so that I can choose one that looks appealing.
 
### To Do
- 1.1: Make a struct called `IceCream` that has the following properties: name, assetName. These should both be __Strings__.
- 1.2: Add a property called 'iceCream' to the IceCreamTileView that is of the type IceCream.
- 1.3: Add an __Image__ and use the iceCream's `assetName` property to show the image associated with a given ice cream.
- 1.4: Add a __Text__ with the iceCream's `name` property.
- 1.5: Add a __.background__ modifier to the VStack
- 1.6: Add a __RoundedRectangle__ to the background


### Resources
[HackingWithSwift - Structs](https://www.hackingwithswift.com/read/0/15/structs)

[HackingWithSwift - Custom Views](https://www.hackingwithswift.com/quick-start/swiftui/how-to-create-and-compose-custom-views)
 
 --- 
 ## Day 2
 ### User Stories
  - As a customer who doesn’t know what they want, I want to see visual representations of all the available ice cream flavors and toppings so that I can choose one that looks appealing.
  
### To Do
 - 2.1: Make an __array__ of Ice Creams (Strawberry, Chocolate, Vanilla) called `iceCreams`.
 - 2.2: 2.2: Make a Horizontal __ScrollView__ using a __ForEach__ loop and show a tile for each `IceCream` in the __array__ of IceCreams
 - 2.3: Add a __NavigationStack__ to the ContentView
 - 2.4: Make a __NavigationLink__. The _label_ should be our `IceCreamTileView` and the _destination_ should be our `CustomizationView`

### Resources
[HackingWithSwift - Arrays](https://www.hackingwithswift.com/read/0/6/arrays)

[HackingWithSwift - ForEach](https://www.hackingwithswift.com/quick-start/swiftui/how-to-create-views-in-a-loop-using-foreach)

The article below is a little bit outdated. We use `NavigationStack` instead of `NavigationView` now - it works the same way.

[HackingWithSwift - Navigation](https://www.hackingwithswift.com/articles/216/complete-guide-to-navigationview-in-swiftui) 

---
## Day 3
### User Stories
- As a customer, I want to choose from a variety of sprinkles, so that my ice cream is made the way I like it.
- As a customer, I want to choose whether my ice cream is served in a cone or a cup so that I can enjoy it the way I prefer.
- As a customer, I want to customize the size of my ice cream (single scoop, double scoop, etc.) so that I can get the right amount.
- As a customer, I want to add my name to the order so that when I pick it up, it feels personal and easy to identify.
- As a customer, I want to request a specific number of spoons so that I can share with my friends.

### To Do
- 3.1: Make a variable, __iceCream__, with the data type `IceCream`. Mark it as @State.
- 3.2: Add an __Image__ of the ice cream using the `assetName` property.
- 3.3: Make an __enum__ called `Scoops` with the cases: single, double, triple
- 3.4: Add a new property to the `IceCream` struct called scoops with the data type `Scoops`. Set the default value to single.
- 3.5: Add a __Picker__ so the user can select the scoops. (Tip: the picker should be bound to the `iceCream` variable. Don't make a new variable.)
- 3.6: Make the `Scoops` enum conform to the __protocol__ `String` and `CaseIterable`
- 3.7: Repeat 3.3 to 3.6 for `Sprinkles`
- 3.8: Add a new property, spoons, to the `IceCream` struct. Set the default value to 0.
- 3.9: Add a __Stepper__ so the user can increase or decrease the number of spoons they want. It should allow no less than 0 and no more than 3.
- 3.10: Add a new property, inCup, to the `IceCream` struct. Set the default value to false.
- 3.11: Add a __Toggle__ so the user can specify if they want their ice cream cone in a cup. 
- 3.12: Add a new state variable to the `CustomizationView` called `customerName`. 
- 3.13: Add a __TextField__ so the customer can enter their name. Bind this to the `customerName` variable.

### Resources
[HackingWithSwift - Enum](https://www.hackingwithswift.com/read/0/14/enumerations)

[HackingWithSwift - Picker](https://www.hackingwithswift.com/quick-start/swiftui/how-to-create-a-picker-and-read-values-from-it)

[HackingWithSwift - Stepper](https://www.hackingwithswift.com/quick-start/swiftui/how-to-create-a-stepper-and-read-values-from-it)

[HackingWithSwift - Toggle](https://www.hackingwithswift.com/quick-start/swiftui/how-to-create-a-toggle-switch)

[HackingWithSwift - TextField](https://www.hackingwithswift.com/books/ios-swiftui/reading-text-from-the-user-with-textfield)

---
## Day 4
### User Stories
- As a customer, I want to review my order and see the price so that I’m comfortable and confident with the order before submitting it.
- As a customer, I want to calculate the total price of my order (including tax) so that I know how much I’ll need to pay.

Below is the pricing logic:

__Size__
Single: 4
Double: 4.5
Triple: 5

__Sprinkles__
Chocolate sprinkes: 0.5
Rainbow sprinkles: 0.5

__Other__
Tax: 8%

### To Do

#### Order Review
- 4.1: Make a constant called ice cream with the data type `IceCream`. Do not provide a default value. Make a constant called customerName with the data type 'String' Do not provide a default value"
- 4.2: Add a __Text__ describing the ice cream in plain English
- 4.3: In the `CustomizationView`, add a __State__ variable called `showingSheet`. Initialize it with `false`
- 4.4: Add a __Sheet__ modifier to the `VStack`. Bind it to the `showingSheet` variable. Its content should be our new `OrderConfirmationView`.
- 4.5: Add a __Button__ that assigns the value `true` to the `showingSheet` variable.

#### Calculate Price
- 4.6: Add a __computed property__ called basePrice with the data type Double to the `Scoops` enum so each case has an associated price. 
- 4.7: Add a method to the `IceCream` struct called `calculatePrice`. It should return a Double. Use the pricing logic outlined in the User Stories section. 
- 4.8: Add a __Text__ that displays the price. Use the method we made `calculatePrice`. It should be formatted like US Currency (ex: $4.50)

### Resources
[HackingWithSwift - Computed Properties](https://www.hackingwithswift.com/sixty/7/2/computed-properties)

[HackingWithSwift - Sheets](https://www.hackingwithswift.com/quick-start/swiftui/how-to-present-a-new-view-using-sheets)

[HackingWithSwift - Functions](https://www.hackingwithswift.com/read/0/11/functions)

[HackingWithSwift - Conditionals](https://www.hackingwithswift.com/read/0/8/conditional-statements)

[HackingWithSwift - Buttons](https://www.hackingwithswift.com/books/ios-swiftui/buttons-and-images)

---
## Day 5
### User Stories
- As a customer, I want to describe my own special requests so that I can accommodate my needs. 

### To Do
- 5.1: In the `IceCream` struct make a new property called `specialRequests`. Make the data type an __Optional__ __String__
- 5.2: Make an @State private variable called specialRequest with the data type 'String' and initialize it with an empty string.
- 5.2.1: Add a function to the `CustomizationView` called `updateOrder`. If `specialRequest` is not empty, assign the value of `specialRequest` to the instance of `IceCream`.
- 5.3: Update the `OrderConfirmationView` so that it displays the special requests if any exist. If None exist don't show anything.
- 5.4: Add a text field to CustomizationView that will allow the customer to enter their special requests.
 
### Resources
[HackingWithSwift - Optionals](https://www.hackingwithswift.com/read/0/12/optionals)


## Day 6
Take some time today to review any of the concepts we covered over the past couple days.

Below are some BONUS user stories if you want to push yourself further.

### User Stories
- As a repeat customer, I want to earn points with every ice cream I purchase so that I can redeem points for a free ice crea in the future. 
- As a customer who knows what I want to order, I want to search all the drinks using the drink's name so that I don't have to spend time scrolling through all the ice cream options.

### To Do


### Resources
