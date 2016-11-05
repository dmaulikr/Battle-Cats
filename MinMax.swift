//
//
//


class MinMax {
  
  // Stay procedural :) but mutable!! glorious mutability!!
  
  let min:  Int
  let max:  Int
  
  // TODO: Run tests for this!
  private func idiotDeveloperCheck() {
    if min == max{ fatalError("min is max")}
    if min > max { fatalError("min is greater than max")}
    if max < min { fatalError("max is less than min")}
    minMaxCheck(c)
  }
  // TODO: Run tests for this!
  private func minMaxCheck(number: Int) {
    if number < min { fatalError("error, count less than min") }
    if number > max { fatalError("error, count more than max") }
  }
  
  // TODO: Run tests for this!
  /// Count / Current
  var c: Int {  didSet { minMaxCheck(c) } }


  // TODO: Run tests for this!
  init(min: Int, max: Int) { self.min = min; self.max = max; c = max;          idiotDeveloperCheck()}
  init(max: Int) { self.min = 0; self.max = max; c = max;                      idiotDeveloperCheck()}
  init(count: Int, max: Int) { self.max = max; self.min = 0; self.c = count; idiotDeveloperCheck()}
  init(count: Int, min: Int, max: Int) { self.max = max; self.min = min; self.c = count; idiotDeveloperCheck()}
}
