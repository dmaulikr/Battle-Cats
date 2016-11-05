
struct Cat {

  class Rocket: MinMax { let power = 50 }
  
  enum Status { case alive, dead }
  
  var
  age:         Int = 1,
  name:        String,
  status:      Status = .alive,
  
  rocket =  Rocket(min: 0, max: 5),
  lives  =  MinMax(min: 0, max: 9),
  hp     =  MinMax(min: 0, max: 50)
  
   let
  AP    = 40,
  DEF   = 20,
  MAXHP = 50
  
  init(name: String){self.name = name }
  
  mutating func fireRocket(inout at victim: Cat) {
    if rocket.c > 0 {rocket.c -= 1} else { return }
    let dmg_amount = (AP-victim.DEF)
    victim.takeDamage(dmg_amount)
    // Do SKNode stuff here...
  }
  
  mutating func takeDamage(amount: Int){
    hp.c -= amount

    if hp.c    <= 0 { lives.c -= 1 }
    if lives.c <= 0 { status = .dead }
  }
}
