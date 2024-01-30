//1. Создать перечисление с видами пиццы (хотя бы 4 - 5 кейсов)

enum PizzaType: String{
    case pepperoni = "Pepperoni Pizza"
    case cheese = "Cheese Pizza"
    case veggie = "Veggie Pizza"
    case bbqChicken = "BBQ Chicken Pizza"
    case meatLovers = "Meat Lovers Pizza"
    case margherita = "Margherita Pizza"
    case buffalo = "Buffalo Pizza"
    case hawaiian = "Hawaiian Pizza"
    case supreme = "Supreme Pizza"
    case theWorks = "The Works Pizza"
    case newYorkStyle = "New York Style Pizza"
    case chicagoDeepDish = "Chicago Deep Dish Pizza"
    case greekStyle = "Greek Style Pizza"
}

//2. Создать структуру пиццы, она должна содержать стоимость, вид пиццы, толстое или тонкое тесто и добавки (например, дополнительно добавить пепперони, помидоры, сыр). Вид пиццы должен быть вложенным типом для структуры пиццы. Подсказка: добавки лучше также сделать перечислением.
enum Additives: String{
    case cheeseMozzarella = "Mozzarella Cheese"
    case cheeseProvolone = "Provolone Cheese"
    case cheeseCheddar = "Cheddar Cheese"
    case cheeseParmesan = "Parmesan Cheese"
    case cheeseGouda = "Gouda Cheese"
    case tomatoes = "Tomatoes"
    case pepperoni = "Pepperoni"
    case salmon = "Salmon"
}


struct Pizza {
    var price: Double
    var type: PizzaType
    var isThickDough: Bool
    let additives: Additives
}


//3. Создать класс пиццерии, добавить массив с возможными пиццами. Переменная с массивом должна быть приватной. Массив задается в инициализаторе.
class Pizzeria{
    private var pizza: [Pizza]
    init(pizza: [Pizza]){
        self.pizza = pizza
    }

//4. Написать в классе пиццерии функции для добавления новой пиццы
    func addPizza(pizza: Pizza){
        self.pizza.append(pizza)
    }
    
//  и для получения всех доступных пицц.
    func getAllPizzas()-> [Pizza]{
        self.pizza
    }
}

//5. Создать экземпляр класса пиццерии и добавить в него несколько пицц.
var myPizzeria = Pizzeria(pizza: [])

var pizzaHawaiian = Pizza(price: 399.99, type: .hawaiian, isThickDough: true, additives: .pepperoni)
var pizzaPepperoni = Pizza(price: 500, type: .pepperoni, isThickDough: false, additives: .cheeseGouda)
var pizzaCheese = Pizza(price: 250.50, type: .cheese, isThickDough: true, additives: .tomatoes)
var pizzaChicagoDeepDish = Pizza(price: 400, type: .chicagoDeepDish, isThickDough: false, additives: .salmon)
myPizzeria.addPizza(pizza: pizzaHawaiian)
myPizzeria.addPizza(pizza: pizzaPepperoni)
myPizzeria.addPizza(pizza: pizzaCheese)
myPizzeria.addPizza(pizza: pizzaChicagoDeepDish)


print(myPizzeria.getAllPizzas(), "\n")

for pizz in myPizzeria.getAllPizzas(){
    print(pizz)
}
