
// Premiere fonction du TP2
print("Ecrire une fonction qui affiche les x premiers nombres pairs ou impairs")
func xpremiersnombres(ofType type: String, x: Int) {
  var count = 0
  var number = 1

  while count < x {
      if type == "pair" && number % 2 == 0 {
          print(number)
          count += 1
      } else if type == "impair" && number % 2 != 0 {
          print(number)
          count += 1
      }
      number += 1
  }
}

print("Affiche les 10 premiers nombres pairs")
xpremiersnombres(ofType: "pair", x: 10) 
print("Affiche les 10 premiers nombres impairs")
xpremiersnombres(ofType: "impair", x: 10) 


// Deuxiéme fonction du TP2
print("\nEcrire une fonction qui affiche les x premiers nombres de la suite Fibonacci")

func Fibo(_ n: Int) -> [Int] {
  if n <= 0 {
      return []
  } else if n == 1 {
      return [0]
  } else if n == 2 {
      return [0, 1]
  }

  var seq = [0, 1]
  while seq.count < n {
  let nombSuiv = seq[seq.count - 1] + seq[seq.count - 2]
    seq.append(nombSuiv)
  }
  return seq
}

print(Fibo(12)) 

// Troisiéme fonction du TP2
print("\nEcrire une fonction qui calcule le factoriel d’un nombre x, utiliser 10 par défaut si aucun nombre n’est spécifié")

func factorial(_ x: Int = 10) -> Int {
  var result = 1
  for i in 1...x {
      result *= i
  }
  return result
}

print(factorial(10)) 


// Quatriéme fonction du TP2
print("\nEcrire une fonction qui affiche les x premiers nombres premiers")

func Fpremier(_ number: Int) -> Bool {
  if number <= 1 {
      return false
  }
  if number <= 3 {
      return true
  }
  var i = 2
  while i * i <= number {
      if number % i == 0 {
          return false
      }
      i += 1
  }
  return true
}

func NombrePremier(_ x: Int) {
  var count = 0
  var number = 2 // On commence par le premier nombre premier

  while count < x {
      if Fpremier(number) {
          print(number)
          count += 1
      }
      number += 1
  }
}

NombrePremier(8) // Affiche les 8 premiers nombres premiers
