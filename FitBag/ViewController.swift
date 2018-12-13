//
//  ViewController.swift
//  FitBag
//
//  Created by Bianca Campos on 2018-10-25.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UISearchBarDelegate {

    @IBOutlet weak var airlinesTableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    var airlines2: [Airlines] = []
    var currentAirlines: [Airlines] = [] //update Table

    override func viewDidLoad() {
        super.viewDidLoad()
        airlinesTableView.dataSource = self
        currentAirlines = createAirlinesArray()
        setupSearchBar()
    }
    
    //    func to searchBar
    func setupSearchBar(){
        searchBar.delegate = self
    }
    //    Unwind and reload tableview
    @IBAction func unwindToViewController(_ sender: UIStoryboardSegue){
        currentAirlines = airlines2
        airlinesTableView.reloadData()
    }
    // clean selected line into tableview
    override func viewWillAppear(_ animated: Bool) {
        airlinesTableView.reloadData()
    }
    
    //    Segue to Baggage
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Baggage", let detailVC =  segue.destination as? TypeBaggageViewController{
            if let cell = sender as? AirlinesTableViewCell, let indexPath = airlinesTableView.indexPath(for: cell){
                let selectedIndex = indexPath.row
                let imgAirline = currentAirlines[selectedIndex].imageName
                let airlineCompany = currentAirlines[selectedIndex].nameAirline
                let personalIn = currentAirlines[selectedIndex].personalIn
                let personalCm = currentAirlines[selectedIndex].personalCm
                let carryOnIn = currentAirlines[selectedIndex].carryOnIn
                let carryOnCm = currentAirlines[selectedIndex].carryOnCm
                let luggageIn = currentAirlines[selectedIndex].luggageIn
                let luggageCm = currentAirlines[selectedIndex].luggageCm
                let site = currentAirlines[selectedIndex].website
                detailVC.imageStr = imgAirline
                detailVC.airlineStr = airlineCompany
                detailVC.personalInStr = personalIn
                detailVC.personalCmStr = personalCm
                detailVC.carryonInStr = carryOnIn
                detailVC.carryonCmStr = carryOnCm
                detailVC.luggageInStr = luggageIn
                detailVC.luggageCmStr = luggageCm
                detailVC.website = site
            }
        }
    }
    
//    Array info airlines
    func createAirlinesArray() -> [Airlines]{
        let airline1 = Airlines(imageAirline: #imageLiteral(resourceName: "airCanada"), imageName: "airCanada", nameAirline: "Air Canada", personalIn: "17 x 13x 6", personalCm: "43 x 33 x 16", carryOnIn: "21.5 x 15.5 x 9", carryOnCm: "55 x 40 x 23", luggageIn: "62", luggageCm: "158", website: "https://www.aircanada.com/ca/en/aco/home/plan/baggage.html")
        let airline2 = Airlines(imageAirline: #imageLiteral(resourceName: "westjet"), imageName: "westjet", nameAirline: "WestJet", personalIn: "16 x 13 x 6", personalCm: "41 x 33 x 15", carryOnIn: "21 x 15 x 9", carryOnCm: "53 x 38 x 23", luggageIn: "62", luggageCm: "157", website: "https://www.westjet.com/en-ca/travel-info/baggage/index")
        let airline3 = Airlines(imageAirline: #imageLiteral(resourceName: "AirTransat"), imageName: "AirTransat", nameAirline: "AirTransat", personalIn: "No info", personalCm: "No info", carryOnIn: "9 x 16 x 20", carryOnCm: "23 x 40 x 51", luggageIn: "62", luggageCm: "158", website: "https://www.airtransat.com/en-CA/Travel-information/Baggage/Weight-Dimensions")
        let airline4 = Airlines(imageAirline: #imageLiteral(resourceName: "aa"), imageName: "aa", nameAirline: "American Airlines", personalIn: "18 x 14 x 8", personalCm: "45 x 35 x 20", carryOnIn: "22 x 14 x 9", carryOnCm: "56 x 36 x 23", luggageIn: "62", luggageCm: "158", website: "https://www.aa.com/i18n/travel-info/baggage/checked-baggage-policy.jsp")
        let airline5 = Airlines(imageAirline: #imageLiteral(resourceName: "delta"), imageName: "delta", nameAirline: "Delta Air Lines", personalIn: "No info", personalCm: "No info", carryOnIn: "22 x 14 x 9", carryOnCm: "56 x 35 x 23", luggageIn: "62", luggageCm: "157", website: "https://www.delta.com/content/www/en_US/traveling-with-us/baggage/before-your-trip/checked.html/")
        let airline6 = Airlines(imageAirline: #imageLiteral(resourceName: "united"), imageName: "united", nameAirline: "United Airlines", personalIn: "17 x 10 x 9", personalCm: "43 x 25 x 22", carryOnIn: "22 x 14 x 9", carryOnCm: "56 x 35 x 22", luggageIn: "62", luggageCm: "158", website: "https://www.united.com/ual/en/us/fly/travel/baggage.html")
        let airline7 = Airlines(imageAirline: #imageLiteral(resourceName: "ha"), imageName: "ha", nameAirline: "Hawaiian Airlines", personalIn: "No info", personalCm: "No info", carryOnIn: "22 x 14 x 9", carryOnCm: "56 x 36 x 23", luggageIn: "62", luggageCm: "157", website: "https://www.hawaiianairlines.com/bagfees")
        let airline8 = Airlines(imageAirline: #imageLiteral(resourceName: "azul"), imageName: "azul", nameAirline: "Azul Linhas Aéreas", personalIn: "No info", personalCm: "No info", carryOnIn: "48.2", carryOnCm: "115", luggageIn: "No info", luggageCm: "157", website: "https://www.voeazul.com.br/en/for-your-trip/international-flights/your-baggage")
        let airline9 = Airlines(imageAirline: #imageLiteral(resourceName: "gol"), imageName: "gol", nameAirline: "Gol Linhas Aéreas", personalIn: "16 x 10 x 22", personalCm: "40 x 25 x 55", carryOnIn: "16 x 10 x 22", carryOnCm: "40 x 25 x 55", luggageIn: "20 x 11 x 31", luggageCm: "50 x 28 x 80", website: "https://www.voegol.com.br/en/information/travel-worry-free/checked-and-carry-on-baggage")
        let airline10 = Airlines(imageAirline: #imageLiteral(resourceName: "latam"), imageName: "latam", nameAirline: "LATAM Airlines", personalIn: "18 x 14 x 8", personalCm: "45 x 35 x 20", carryOnIn: "21 x 13 x 9", carryOnCm: "55 x 35 x 25", luggageIn: "No info", luggageCm: "158", website: "https://www.latam.com/en_us/travel-information/")
        let airline11 = Airlines(imageAirline: #imageLiteral(resourceName: "emirates"), imageName: "emirates", nameAirline: "Emirates", personalIn: "No info", personalCm: "No info", carryOnIn: "22 x 15 x 8", carryOnCm: "55 x 38 x 20", luggageIn: "59", luggageCm: "150", website: "https://www.emirates.com/english/before-you-fly/baggage/")
        let airline12 = Airlines(imageAirline:  #imageLiteral(resourceName: "etihad"), imageName: "etihad", nameAirline: "Etihad Airways", personalIn: "No info", personalCm: "No info", carryOnIn: "No info", carryOnCm: "50 x 40 x 25", luggageIn: "No info", luggageCm: "70 x 50 x 38", website: "https://www.etihad.com/en-ca/before-you-fly/baggage-information/allowances/")
        let airline13 = Airlines(imageAirline: #imageLiteral(resourceName: "alitalia"), imageName: "alitalia", nameAirline: "Alitalia", personalIn: "No info", personalCm: "No info", carryOnIn: "No info", carryOnCm: "55 x 35 x 25", luggageIn: "No info", luggageCm: "158", website: "https://www.alitalia.com/en_ca/fly-alitalia/baggage.html")
        let airline14 = Airlines(imageAirline: #imageLiteral(resourceName: "ja"), imageName: "ja", nameAirline: "Japan Airlines", personalIn: "18 x 14 x 8", personalCm: "45 x 35 x 20",  carryOnIn: "22 x 16 x 10", carryOnCm: "55 x 40 x 25", luggageIn: "No info", luggageCm: "203", website: "https://www.jal.co.jp/en/inter/baggage/")
        let airline15 = Airlines(imageAirline: #imageLiteral(resourceName: "ana"), imageName: "ana", nameAirline: "All Nippon Airways", personalIn: "No info", personalCm: "No info", carryOnIn: "22 x 16 x 10", carryOnCm: "55 x 40 x 25", luggageIn: "No info", luggageCm: "158", website: "https://www.ana.co.jp/en/ca/international/prepare/baggage/")
        let airline16 = Airlines(imageAirline: #imageLiteral(resourceName: "lufthansa"), imageName: "lufthansa", nameAirline: "Lufthansa", personalIn: "No info", personalCm: "40 x 30 x 10", carryOnIn: "No info", carryOnCm: "55 x 40 x 23", luggageIn: "No info", luggageCm: "158", website: "https://www.lufthansa.com/ca/en/Baggage-overview")
        airlines2.append(airline1)
        airlines2.append(airline2)
        airlines2.append(airline3)
        airlines2.append(airline4)
        airlines2.append(airline5)
        airlines2.append(airline6)
        airlines2.append(airline7)
        airlines2.append(airline8)
        airlines2.append(airline9)
        airlines2.append(airline10)
        airlines2.append(airline11)
        airlines2.append(airline12)
        airlines2.append(airline13)
        airlines2.append(airline14)
        airlines2.append(airline15)
        airlines2.append(airline16)
        return airlines2
    }
}


extension ViewController: UITableViewDataSource {
    // how many rows?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentAirlines.count
    }
    // how many sections?
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // how to display (cell)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! AirlinesTableViewCell
        let airlineImg = currentAirlines[indexPath.row]
        cell.setAirlines(airlines: airlineImg)
        return cell
    }
    
    // search bar
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        guard !searchText.isEmpty else{
            currentAirlines = airlines2
            airlinesTableView.reloadData()
            return
        }
        currentAirlines = airlines2.filter({airlines -> Bool in
            guard let text = searchBar.text else {return false}
            return airlines.nameAirline.lowercased().contains(text.lowercased())
        })
        airlinesTableView.reloadData()
    }
    
}

extension ViewController: UITableViewDelegate {

}

