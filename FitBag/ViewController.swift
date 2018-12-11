//
//  ViewController.swift
//  FitBag
//
//  Created by Bianca Campos on 2018-10-25.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var airlinesTableView: UITableView!
    
    var airlines2: [Airlines] = []
    
    static var airlines = ["Air Canada", "WestJet", "Air Transat", "American Airlines", "Delta Air Lines", "United Airlines", "Hawaiian Airlines", "Azul Linhas Aéreas", "Gol Linhas Aéreas", "LATAM Airlines", "Emirates", "Etihad Airways", "Alitalia", "Japan Airlines", "All Nippon Airways", "Lufthansa"]
    
    static var images = ["airCanada", "westjet", "AirTransat", "aa", "delta", "united", "ha", "airCanada", "airCanada", "airCanada", "airCanada", "airCanada", "airCanada", "airCanada", "airCanada", "airCanada", "airCanada"]
    
    static var measurePersonalIn = ["17 x 13x 6", //Air Canada
                                    "16 x 13 x 6", //WestJet
                                    "No info", //Air Transat
                                    "18 x 14 x 8", //American Airlines
                                    "No info", //Delta Air Lines
                                    "17 x 10 x 9", //United Airlines
                                    "No info", //Hawaiian Airlines
                                    "No info", //Azul Linhas Aéreas
                                    "16 x 10 x 22", //Gol Linhas Aéreas
                                    "18 x 14 x 8", //LATAM Airlines
                                    "No info", //Emirates
                                    "No info", //Etihad Airways
                                    "No info", //Alitalia
                                    "18 x 14 x 8", //Japan Airlines
                                    "No info", //all nippon airways
                                    "No info" //Lufthansa
                                    ]
    
    static var measureCarryOnIn = ["21.5 x 15.5 x 9", //Air Canada
                                   "21 x 15 x 9", //WestJet
                                   "9 x 16 x 20", //Air Transat
                                   "22 x 14 x 9", //American Airlines
                                   "22 x 14 x 9", //Delta Air Lines
                                   "22 x 14 x 9", //United Airlines
                                   "22 x 14 x 9", //Hawaiian Airlines
                                   "48.2", //Azul Linhas Aéreas
                                   "16 x 10 x 22", //Gol Linhas Aéreas
                                   "21 x 13 x 9", //LATAM Airlines
                                   "22 x 15 x 8", //Emirates
                                   "No info", //Etihad Airways
                                   "No info", //Alitalia
                                   "22 x 16 x 10", //Japan Airlines
                                   "22 x 16 x 10", //all nippon airways
                                   "No info" //Lufthansa
                                   ]
    
    static var measureLuggageIn = ["62", //Air Canada
                                   "62", //WestJet
                                   "62", //Air Transat
                                   "62", //American Airlines
                                   "62", //Delta Air Lines
                                   "62", //United Airlines
                                   "62", //Hawaiian Airlines
                                   "No info", //Azul Linhas Aéreas
                                   "20 x 11 x 31", //Gol Linhas Aéreas
                                   "No info", //LATAM Airlines
                                   "59", //Emirates
                                   "No info", //Etihad Airways
                                   "No info", //Alitalia
                                   "No info", //Japan Airlines
                                   "No info", //all nippon airways
                                   "No info" //Lufthansa
                                   ]
    
    static var measurePersonalCm = ["43 x 33 x 16",//Air Canada
                                    "41 x 33 x 15", //WestJet
                                    "No info", //Air Transat
                                    "45 x 35 x 20", //American Airlines
                                    "No info", //Delta Air Lines
                                    "43 x 25 x 22", //United Airlines
                                    "No info", //Hawaiian Airlines
                                    "No info", //Azul Linhas Aéreas
                                    "40 x 25 x 55", //Gol Linhas Aéreas
                                    "45 x 35 x 20", //LATAM Airlines
                                    "No info", //Emirates
                                    "No info", //Etihad Airways
                                    "No info", //Alitalia
                                    "45 x 35 x 20", //Japan Airlines
                                    "No info", //all nippon airways
                                    "40 x 30 x 10" //Lufthansa
                                    ]
    
    static var measureCarryOnCm = ["55 x 40 x 23",//Air Canada
                                   "53 x 38 x 23", //WestJet
                                   "23 x 40 x 51", //Air Transat
                                   "56 x 36 x 23", //American Airlines
                                   "56 x 35 x 23", //Delta Air Lines
                                   "56 x 35 x 22", //United Airlines
                                   "56 x 36 x 23", //Hawaiian Airlines
                                   "115", //Azul Linhas Aéreas
                                   "40 x 25 x 55", //Gol Linhas Aéreas
                                   "55 x 35 x 25", //LATAM Airlines
                                   "55 x 38 x 20", //Emirates
                                   "50 x 40 x 25", //Etihad Airways
                                   "55 x 35 x 25", //Alitalia
                                   "55 x 40 x 25", //Japan Airlines
                                   "55 x 40 x 25", //all nippon airways
                                   "55 x 40 x 23" //Lufthansa
                                   ]
    
    static var measureLuggageCm = ["158",//Air Canada
                                   "157", //WestJet
                                   "158", //Air Transat
                                   "158", //American Airlines
                                   "157", //Delta Air Lines
                                   "158", //United Airlines
                                   "157", //Hawaiian Airlines
                                   "157", //Azul Linhas Aéreas
                                   "50 x 28 x 80", //Gol Linhas Aéreas
                                   "158", //LATAM Airlines
                                   "150", //Emirates
                                   "70 x 50 x 38", //Etihad Airways
                                   "158", //Alitalia
                                   "203", //Japan Airlines
                                   "158", //all nippon airways
                                   "158" //Lufthansa
                                   ]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        airlinesTableView.dataSource = self
        airlines2 = createAirlinesArray()
        
    }
    

    
    func createAirlinesArray() -> [Airlines]{
        var tempAirlinesArray: [Airlines] = []
        
        let airline1 = Airlines(imageAirline: #imageLiteral(resourceName: "airCanada"), nameAirline: "Air Canada")
        let airline2 = Airlines(imageAirline: #imageLiteral(resourceName: "westjet"), nameAirline: "WestJet")
        let airline3 = Airlines(imageAirline: #imageLiteral(resourceName: "AirTransat"), nameAirline: "Air Transat")
        let airline4 = Airlines(imageAirline: #imageLiteral(resourceName: "aa"), nameAirline: "American Airlines")
        let airline5 = Airlines(imageAirline: #imageLiteral(resourceName: "delta"), nameAirline: "Delta Air Lines")
        let airline6 = Airlines(imageAirline: #imageLiteral(resourceName: "united"), nameAirline: "United Airlines")
        let airline7 = Airlines(imageAirline: #imageLiteral(resourceName: "ha"), nameAirline: "Hawaiian Airlines")
        let airline8 = Airlines(imageAirline: #imageLiteral(resourceName: "airCanada"), nameAirline: "Azul Linhas Aéreas")
        let airline9 = Airlines(imageAirline: #imageLiteral(resourceName: "airCanada"), nameAirline: "Gol Linhas Aéreas")
        let airline10 = Airlines(imageAirline: #imageLiteral(resourceName: "airCanada"), nameAirline: "LATAM Airlines")
        let airline11 = Airlines(imageAirline: #imageLiteral(resourceName: "airCanada"), nameAirline: "Emirates")
        let airline12 = Airlines(imageAirline: #imageLiteral(resourceName: "airCanada"), nameAirline: "Etihad Airways")
        let airline13 = Airlines(imageAirline: #imageLiteral(resourceName: "airCanada"), nameAirline: "Alitalia")
        let airline14 = Airlines(imageAirline: #imageLiteral(resourceName: "airCanada"), nameAirline: "Japan Airlines")
        let airline15 = Airlines(imageAirline: #imageLiteral(resourceName: "airCanada"), nameAirline: "All Nippon Airways")
        let airline16 = Airlines(imageAirline: #imageLiteral(resourceName: "airCanada"), nameAirline: "Lufthansa")
        
        tempAirlinesArray.append(airline1)
        tempAirlinesArray.append(airline2)
        tempAirlinesArray.append(airline3)
        tempAirlinesArray.append(airline4)
        tempAirlinesArray.append(airline5)
        tempAirlinesArray.append(airline6)
        tempAirlinesArray.append(airline7)
        tempAirlinesArray.append(airline8)
        tempAirlinesArray.append(airline9)
        tempAirlinesArray.append(airline10)
        tempAirlinesArray.append(airline11)
        tempAirlinesArray.append(airline12)
        tempAirlinesArray.append(airline13)
        tempAirlinesArray.append(airline14)
        tempAirlinesArray.append(airline15)
        tempAirlinesArray.append(airline16)
        
        return tempAirlinesArray
        
    }
    
    @IBAction func unwindToViewController(_ sender: UIStoryboardSegue){}
    
//    Baggage
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Baggage", let detailVC =  segue.destination as? TypeBaggageViewController{
            if let cell = sender as? AirlinesTableViewCell, let indexPath = airlinesTableView.indexPath(for: cell){
                let selectedIndex = indexPath.row
                let airlineCompany = ViewController.airlines[selectedIndex]
                let imgAirline = ViewController.images[selectedIndex]
                let personalIn = ViewController.measurePersonalIn[selectedIndex]
                let personalCm = ViewController.measurePersonalCm[selectedIndex]
                let carryOnIn = ViewController.measureCarryOnIn[selectedIndex]
                let carryOnCm = ViewController.measureCarryOnCm[selectedIndex]
                let luggageIn = ViewController.measureLuggageIn[selectedIndex]
                let luggageCm = ViewController.measureLuggageCm[selectedIndex]
    
                detailVC.airlineStr = airlineCompany
                detailVC.imageStr = imgAirline
                detailVC.personalInStr = personalIn
                detailVC.personalCmStr = personalCm
                detailVC.carryonInStr = carryOnIn
                detailVC.carryonCmStr = carryOnCm
                detailVC.luggageInStr = luggageIn
                detailVC.luggageCmStr = luggageCm
                
            }
        }
    }
    }


extension ViewController: UITableViewDataSource {
    // how many rows?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ViewController.airlines.count
    }
    // how many sections?
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // how to display (cell)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! AirlinesTableViewCell
        let airlineImg = airlines2[indexPath.row]
        
        cell.setAirlines(airlines: airlineImg)
//        cell.airlineName.text = ViewController.airlines[indexPath.row]
//        cell.nameImageStr = ViewController.airlines[indexPath.row]
        
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    
}

