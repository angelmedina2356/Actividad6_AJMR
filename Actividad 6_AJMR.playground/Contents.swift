import UIKit
/*:
# Playground - Actividad 6
* Operadores personalizados
* Subscripts
* Control de errores

*/


/*: 
### Operadores personalizados
A) Crear el operador para realizar la potencia de el valor "a" a la potencia "b" en valores enteros
*/
infix operator +++
func +++ (a:Int, b:Int) -> Double
{
    let pota = Double(a)
    let potb = Double(b)
    
    return pow(pota, potb)
}
2 +++ 8

//: B) Crear el operador |> para ordenar la colección [2,5,3,4] de menor a mayor
var colec = [2, 5, 3, 4]
prefix operator |>
prefix func |> (colec:Array<Int>) -> Array<Int>
{
    return colec.sorted()
}
|>colec



/*:
### Subscripts
A) Del conjunto de datos en el Array [2,3,4,5], crear el subscript para modificar los valores multiplicados por el valor 2 y extraer al valor dado un índice.
*/
class Data{
    var value:[Int]
    init(a:[Int])
    {
        self.value = a
    }
    subscript (idx: Int) -> Int
    {
        get
        {
            return value [idx]
        }
        set(newValue)
        {
            value[idx] = value[idx]; newValue
        }
    }
}
let valor1 = Data(a: colec)

valor1[2]
valor1[3] = 7
colec
valor1.value






//: B) Crear el Struct para definir u obtener la posición  para los personaje de tipo Enemigo donde cada posición es de tipo CGPoint aplicnado subscritps
struct position {
    var position:CGPoint
    init(p:CGPoint) {
        self.position = p
    }
    subscript(idx:Int) -> CGPoint
    {
        get
        {
            return self.position
        }
        set(newValue)
        {
            self.position = newValue
        }
    }
}

var posicion = position (p: CGPoint(x: 7.0, y: 10.0))
posicion.position
posicion.position = CGPoint (x: 7.0, y:10.0)

/*:
### Control de Errores
A) Crear la función ExisteValor en la cual se reciba como parámetro el valor a buscar dentro de un colección ["A":1, "B":2,"C":3]
*/
var coleccion = ["A":1, "B":2, "C":3]
func ExisteValor (findvalue:String)
{
    guard let exist = coleccion [findvalue] else {
        print("No esta ese valor")
        return
    }
    print("Si está \(exist)")
}
ExisteValor(findvalue: "B")
coleccion ["J"]








