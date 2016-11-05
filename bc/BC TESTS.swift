//
//  bc.swift
//  bc
//
//  Created by Dude Guy  on 11/5/16.
//  Copyright © 2016 Dude Guy . All rights reserved.
//

import XCTest

class bc: XCTestCase {
    
  
  /// Test death
  func testTakeDamage() {
    var boots = Cat(name: "boots")
    
  
  
  }
  /// Rockets firing and out of ammo
  func testFireRocket() {
    
    // Rockets fire
    var boots = Cat(name: "boots")
    var fluffy = Cat(name: "fluffy")
    var initialHP = fluffy.hp.c
    boots.fireRocket(at: &fluffy)
    XCTAssert(fluffy.hp.c < initialHP)
    
    // Rockets don't fire
    boots.rocket.c = 0
    initialHP = fluffy.hp.c
    boots.fireRocket(at: &fluffy)
    XCTAssert(fluffy.hp.c == initialHP)
    
  }
  
  
  /// Get through the whole thing without bad access
    func testMinMaxCrashes() {
   
      // Init 1
      var z = MinMax(min: -2, max: 0); _=z
          z = MinMax(min: -1, max: 0)
          z = MinMax(min: -1, max: 1)
          z = MinMax(min:  0, max: 5)
          z = MinMax(min:  1, max: 5)
      // Init 2
          z = MinMax(count: 0, max: 5)
          z = MinMax(count: 2, max: 5)
          z = MinMax(count: 5, max: 5)

      // Init 3
          z = MinMax(count: -2, min: -5, max: 5)
          z = MinMax(count: 0, min: -1, max: 5)
          z = MinMax(count: 1, min: 1, max: 5)
          z = MinMax(count: 3, min: 1, max: 5)
          z = MinMax(count: 5, min: 1, max: 5)
      
      let finished = true; XCTAssert(finished)
    }
  
  override func setUp() {
        super.setUp()
      
      // Put setup code here. 
      // This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here.
        //This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
  
  
}

