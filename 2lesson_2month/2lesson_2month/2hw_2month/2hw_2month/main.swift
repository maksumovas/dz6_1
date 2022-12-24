//
//  main.swift
//  2hw_2month
//
//  Created by Maksumova Sofia on 23/12/22.
//

import Foundation

//#1. Создать класс Магазин
//Свойства: Название, Площадь, Расположение, Часы работы, массив с товарами
//Создать класс Товар
//Свойства: Название товара, кол-во. Цена товара
//После чего путём наследования от класса Магазин создать следующие классы: Магазин автозапчастей, Магазин одежды и заполнить их соответствующими параметрами

//Так же в конце должен быть метод, который будет отображать следующую информацию:
//
//Название магазина. Площадь.
//Расположение. Часы работы.
//Наименование товара. Кол-во товара. Цена товара (Если у вас два и более одинаковых по названию товаров - соединить)
class Store{

    var products = [Product]()
    func addNewProduct(product: Product){
        products.append(product)
    }
    var name: String
    var square: Int
    var location: String
    var workscedule: String
    
   
    init(name: String, square: Int, location: String, workscedule: String) {
        self.name = name
        self.square = square
        self.location = location
        self.workscedule = workscedule
        }
    func getInfo(){
        print("Name: \(name), square: \(square), location: \(location), workscedule: \(workscedule)")
//        for i in products{
//            print("Name: \(i.name), quantity: \(i.quantity), price: \(i.price)")
//        }
    }
}

class Product{
    var name: String
    var quantity: Int
    var price: Int
    
    init(name: String, quantity: Int, price: Int) {
        self.name = name
        self.quantity = quantity
        self.price = price
    }
     func getInfo(){
        print("Product name: \(name), quantity: \(quantity), price: \(price)")
    }
}


class autoPartsStore: Store{
    
    var spares = [Product]()
    override func addNewProduct(product: Product){
        products.append(product)
    }
    var dayOf: String
    
     init(name: String, square: Int, location: String, workscedule: String, dayOf: String) {
        
         self.dayOf = dayOf
         
         super.init(name: name, square: square, location: location, workscedule: workscedule)
        
    }
   override func getInfo(){
        print("Store name: \(name), square: \(square), location: \(location), workscedule: \(workscedule), dayOf: \(dayOf)")
       for i in products{
           print("Product name: \(i.name), quantity: \(i.quantity), price: \(i.price)")
       }
    }
}

class clothingStore: Store{
    var clothes = [Product]()
    override func addNewProduct(product: Product){
        products.append(product)
    }
    var dayOf: String
    
    init(name: String, square: Int, location: String, workscedule: String, dayOf: String){
        
        self.dayOf = dayOf
        super.init(name: name, square: square, location: location, workscedule: workscedule)
    }
   override func getInfo(){
        print("Store name: \(name), square: \(square), location: \(location), workscedule: \(workscedule), dayOf: \(dayOf)")
       for i in products{
           print("Product name: \(i.name), quantity: \(i.quantity), price: \(i.price)")
       }
       
    }
}

var liptick = Product(name: "Lipstick", quantity: 1, price: 2500)


var battery = Product(name: "Battery", quantity: 1, price: 3500)


var tShirt = Product(name: "t-shirt", quantity: 1, price: 3000)



var autoParts = autoPartsStore(name: "Auto Zone", square: 150, location: "Toktogul st", workscedule: "9:00-21:00", dayOf: "Sunday")
autoParts.addNewProduct(product: battery)
autoParts.getInfo()

var clothes = clothingStore(name: "Nike", square: 180, location: "Erkindik st", workscedule: "9:00-21:00", dayOf: "Sunday")
clothes.addNewProduct(product: tShirt)
clothes.getInfo()

