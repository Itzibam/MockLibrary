//
//  BooksViewController.swift
//  MockLibrary
//
//  Created by Itzel Ibanez on 01/02/22.
//

import Foundation

import UIKit

// class BooksViewController : UIViewController{
    
//    var width = UIScreen.main.bounds.width
//    var height = UIScreen.main.bounds.height
//    var dataSource : BookObject
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
        
  //      view.backgroundColor =.red
        
//        getData()
//        initUI()
//    }
    
//    func initUI(){
//
        
//    }
    
    
    func getData(){
        // MARK: Terror
        
        let baldor = Book(bookTitle: "Algebra de Baldor", author: "Al Juarismi", category: "Terror", price: 435.0, rate: "1 estrella de 5", description: "Un clasico que debe estar en la biblioteca de todo estudiante con ganas de aprender Algebra", frontPageBook: "portadaBaldor")
        
        let crepusculo = Book(bookTitle: "Crepusculo", author: "Stephanie Meyer", category: "Terror", price: 369.0, rate: "5 estrellas de 5", description: "Hay tres cosas de las que estoy completamente segura. Primera, Edward es un vampiro. Segunda, una parte de él se muere por beber mi sangre. Y tercera, estoy total y perdidamente enamorada de él.", frontPageBook: "portadaCrepusculo")
        
        let jsForDummies = Book(bookTitle: "JavaScript for Dummies", author: "Emily A. Vanderveer", category: "Terror", price: 662.0, rate: "4 estrellas de 5", description: "Go from beginner to builder quickly with this hands-on JavaScript guide Coding with JavaScript For Dummies provides easy, hands-on instruction for anyone looking to learn this popular client-side language", frontPageBook: "portadaJSForDummies")
        
//        MARK: DRAMA
        
        let losAngeles = Book(bookTitle: "Donde habitan los Angeles", author: "Claudia Celis", category: "Drama", price: 95.0, rate: "4 estrellas de 5", description: "Durante las vacaciones, Pancho y otros sobrinos de Tacho y Chabela llenan de alegría la casa familiar de San Miguel. En esas breves temporadas, los tíos olvidan la tristeza que la muerte de su hijo les dejó. Cuando las vacaciones llegan a su fin, todos los sobrinos vuelven a su hogar, pero en una ocasión Pancho no lo hace: abandonado por su madre, atractiva viuda, y después de esperarla mucho tiempo, se convierte en el hijo de sus tíos.", frontPageBook: "portadaDondeHabitanLosAngeles")
        
        let alguimista = Book(bookTitle: "El Alquimista", author: "Paulo Coelho", category: "Drama", price: 279.0, rate: "4 estrellas de 5", description: "Cuando una persona desea realmente algo, el Universo entero conspira para que pueda realizar su sueño.Con este enriquecedor viaje por las arenas del desierto, Paulo Coelho recrea un símbolo hermoso y revelador de la vida, el hombre ysus sueños.", frontPageBook: "portadaElAlquimista")
        
        let intMuerte = Book(bookTitle: "Las intermitencias de la muerte", author: "Jose Saramago", category: "Drama", price: 219.0, rate: "3 de 5 estrellas", description: "En un país cuyo nombre no será mencionado, se produce algo nunca visto: la muerte decide suspender su trabajo letal, la gente deja de morir...", frontPageBook: "portadaIntermitenciasMuerte")
        
//        MARK: Novela Ficcion
        
        let lordOfRings = Book(bookTitle: "El señor de los anillos: La comunidad del anillo", author: "J.R.R. Tolkien", category: "Novela Ficcion", price: 192.0, rate: "5 estrellas de 5", description: "En la adormecida e idílica comarca, un joven hobbit recibe un encargo: custodiar el anillo único y emprender el viaje para su destrucción en las grietas del destino. Acompañado por un mago, hombres, elfos y enanos, atravesará la tierra media y se internará en las sombras de Mordor, perseguido siempre por las huestes de Sauron, el señor oscuro, dispuesto a recuperar su creación para establecer el dominio definitivo del mal.", frontPageBook: "portadaSeñorAnillos")
        
        let harryPotter = Book(bookTitle: "Harry Potter y la Piedra Filosofal", author: "J.K. Rowling", category: "Novela Ficcion", price: 299.0, rate: "5 estrellas de 5", description: "Con las manos temblorosas, Harry le dio la vuelta al sobre y vio un sello de lacre púrpura con un escudo de armas: un león, un águila, un tejón y una serpiente, que rodeaban una gran letra H.»Harry Potter nunca ha oído hablar de Hogwarts cuando en el felpudo del número 4 de Privet Drive empieza a caer una lluvia de sobres de pergamino amarillento, con la dirección escrita con tinta verde y un sello de lacre púrpura. Y aunque los horribles tíos de Harry se apresuran a confiscar las cartas, el día que Harry cumple once años un hombre gigantesco llamado Rubeus Hagrid, cuyos ojos brillan como escarabajos negros, irrumpe con una noticia extraordinaria: Harry Potter es un mago, y le han concedido una plaza en el ColegioHogwarts de Magia y Hechicería.", frontPageBook: "portadaHP")
        

        
//        MARK: Mindfullness
        
        let deja = Book(bookTitle: "Deja de Ser Tu", author: "Joe Dispenza", category: "Mindfullness", price: 138.0, rate: "3 estrellas de 5", description: "Joe Dispenza saltó a la fama en nuestro país tras participar en la película ¿Y tú qué sabes?, un documental sobre la sobrecogedora capacidad de la mente para transformar la realidad que corrió de mano en mano sin ninguna publicidad, gracias al boca oreja. Ahora, el popularísimo científico y autor de Desarrolla tu cerebro profundiza en todos aquellos temas que tanto nos cautivaron -física cuántica, neurociencia, biología y genética- para enseñarnos a reprogramar el cerebro y ampliar nuestro marco de realidad.", frontPageBook: "portadaDeja")
        
        let carajo = Book(bookTitle: "El sutil arte de que te importe un carajo", author: "Mark Manson", category: "Mindfullness", price: 433.0, rate: "5 estrellas de 5", description: "Manson nos aconseja que reconozcamos nuestras limitaciones y las aceptemos. Esto es, según él, el verdadero origen del empoderamiento. Una vez que abrazamos nuestros temores, faltas e incertidumbres, una vez que dejamos de huir y evadir y empezamos a confrontar las verdades dolorosas, podemos comenzar a encontrar el valor, la perseverancia, la honestidad, la responsabilidad, la curiosidad y el perdón que buscamos. Este manifiesto es una refrescante bofetada, para que podamos empezar a llevar vidas más satisfechas y con los pies en la tierra.", frontPageBook: "portadaCarajo")
        
        let nada = Book(bookTitle: "Nada es tan Terrible", author: "Rafael Santandreu", category: "Mindfullness", price: 89.0, rate: "2 estrellas de 5", description: "Nada es tan terrible, el nuevo libro de Rafael Santandreu, es el manual de autoterapia más completo basado en la psicología cognitiva, la escuela terapéutica más eficaz y científica", frontPageBook: "portadaNada")
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
//}
