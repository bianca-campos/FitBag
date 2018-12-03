//
//  ViewController.swift
//  FitBag
//
//  Created by Bianca Campos on 2018-10-25.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

import UIKit
import SQLite3

class ViewController: UIViewController {
    //        Refer to persistentContainer
    private let appDelegate = UIApplication.shared.delegate as! AppDelegate
    //        Create the context
    private let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    override func viewDidLoad() {
        super.viewDidLoad()
        checkDataBase()
        
    }
    
    func checkDataBase(){
        print("check database...")//log
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let url = documentsDirectory.appendingPathComponent("fitBag.db")
        let filePath = url.path
        let database = FMDatabase(url: url)
        // Load the existing database
        if(FileManager.default.fileExists(atPath: filePath)){  // just use String when you have to check for existence of your file
            _ = NSData(contentsOf: url)  // use URL instead of String
            print("Not found, copy one!!!")
        }else{
            print("DB file exist")
        }
        if database.open(){
            let query = "SELECT * FROM typeBaggage"
            let result: FMResultSet? = database.executeQuery(query, withArgumentsIn: [""])
            if result?.next() == true{
                print(result?.object(forColumn: "type"))
            }
        }
        
    }


}

