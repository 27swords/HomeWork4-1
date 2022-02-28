//
//  main.swift
//  HomeWork4-3
//
//  Created by Alexander Chervoncev on 25.02.22.
//

import Foundation

class Car {
    
    enum CarEngineStatus {
        case launched
        case turdenOff
    }
    enum CarWindowsStatus {
        case open
        case close
    }
    enum CarTrunkStatus {
        case putInTrunk
        case takeFromTrunk
    }
    
    let carModel: String
    let carYearRelease: Int
    var carEngine: CarEngineStatus
    var carWindows: CarWindowsStatus
    var carTrunk: CarTrunkStatus
    
    init(carModel: String,
         carYearRelease: Int,
         carEngine: CarEngineStatus,
         carWindows: CarWindowsStatus,
         carTrunk: CarTrunkStatus){
        self.carModel = carModel
        self.carYearRelease = carYearRelease
        self.carEngine = carEngine
        self.carWindows = carWindows
        self.carTrunk = carTrunk
    }
    
    func carEngineAction(type: CarEngineStatus) {
        switch type {
        case .launched:
            carEngine = .launched
            print("the engine is running")
        case .turdenOff:
            carEngine = .turdenOff
            print("the engine is off")
        }
    }
    func carWindowsAction(type: CarWindowsStatus) {
        switch type {
        case .open:
            carWindows = .open
            print("Windows open")
        case .close:
            carWindows = .close
            print("Windows close")
        }
    }
    func carTrunkAction(type: CarTrunkStatus) {
        switch type {
        case .putInTrunk:
            carTrunk = .putInTrunk
            print("placed in the trunk")
        case.takeFromTrunk:
            carTrunk = .takeFromTrunk
            print("the trunk is empty")
        }
    }
    func status() {}
}

final class SportCar: Car {
    
    enum CarHatchStatus {
        case open
        case close
    }
    
    var carHatch: CarHatchStatus
    
    init(carModel: String,
         carYearRelease: Int,
         carEngine: CarEngineStatus,
         carWindows: CarWindowsStatus,
         carTrunk: CarTrunkStatus,
         carHatch: CarHatchStatus) {
        self.carHatch = carHatch
        
        super.init(carModel: carModel,
                   carYearRelease: carYearRelease,
                   carEngine: carEngine,
                   carWindows: carWindows,
                   carTrunk: carTrunk)
    }
    
    override func status() {
        print("""
              Car description:
              
              model: \(carModel)
              Year Release: \(carYearRelease)
              Engine: \(carEngine)
              Windows: \(carWindows)
              Trunk: \(carTrunk)
              Hatch: \(carHatch)
              """)
    }
}

var sportCar = SportCar(carModel: "Nissan",
                        carYearRelease: 2020,
                        carEngine: .turdenOff,
                        carWindows: .close,
                        carTrunk: .takeFromTrunk,
                        carHatch: .open)

sportCar.status()

sportCar.carWindowsAction(type: .open)
sportCar.carEngineAction(type: .launched)
sportCar.carTrunkAction(type: .putInTrunk)

print("+++++++++++++++++++++++")

final class TruckCar: Car {
    
    enum carCruiseControlStatus {
        case on
        case off
    }

    var carCruiseControl: carCruiseControlStatus

    init(carModel: String,
         carYearRelease: Int,
         carEngine: CarEngineStatus,
         carWindows: CarWindowsStatus,
         carTrunk: CarTrunkStatus,
         carCruiseControl: carCruiseControlStatus) {
        self.carCruiseControl = carCruiseControl
        super.init(carModel: carModel,
                   carYearRelease: carYearRelease,
                   carEngine: carEngine,
                   carWindows: carWindows,
                   carTrunk: carTrunk)
    }

    override func status() {
        print("""
              Car description:
              
              model: \(carModel)
              Year Release: \(carYearRelease)
              Engine: \(carEngine)
              Windows: \(carWindows)
              Trunk: \(carTrunk)
              Cruise Control: \(carCruiseControl)
              """)
    }
}

var truck = TruckCar(carModel: "Volvo",
                     carYearRelease: 2021,
                     carEngine: .launched,
                     carWindows: .close,
                     carTrunk: .takeFromTrunk,
                     carCruiseControl: .on)

truck.status()

truck.carTrunkAction(type: .putInTrunk)
truck.carEngineAction(type: .turdenOff)
truck.carWindowsAction(type: .open)


