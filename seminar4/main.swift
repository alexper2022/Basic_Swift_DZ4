//1. Создать перечисление с видами пиццы (хотя бы 4 - 5 кейсов)
//2. Создать структуру пиццы, она должна содержать стоимость, вид пиццы, толстое или тонкое тесто и добавки (например, дополнительно добавить пепперони, помидоры, сыр). Вид пиццы должен быть вложенным типом для структуры пиццы. Подсказка: добавки лучше также сделать перечислением.
struct Pizza {
    enum PizzaType{
        case pepperoni
        case cheese
        case veggie
        case bbqChicken
        case meatLovers
        case margherita
        case buffalo
        case hawaiian
        case supreme
        case theWorks
        case newYorkStyle
        case chicagoDeepDish
        case greekStyle
    }
    
    enum Additives{
        case cheeseMozzarella
        case cheeseProvolone
        case cheeseCheddar
        case cheeseParmesan
        case cheeseGouda
        case tomatoes
        case pepperoni
        case salmon
    }
    
    var price: Double
    var type: PizzaType
    var isThickDough: Bool
    var additives: Additives
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

let pizzaHawaiian = Pizza(price: 399.99, type: .hawaiian, isThickDough: true, additives: .pepperoni)
var pizzaPepperoni = Pizza(price: 500, type: .hawaiian, isThickDough: false, additives: .cheeseGouda)
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
