//
//  DBManager.swift
//  FitBag
//
//  Created by Bianca Campos on 2018-12-02.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

import UIKit

class DBManager: NSObject {
    static let shared: DBManager = DBManager()
    let databaseFileName = "fitBag.db"
    var pathToDatabase: String!
    var database: FMDatabase!

    override init() {
        super.init()
        let documentsDirectory = (NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as NSString) as String
        pathToDatabase = documentsDirectory.appending("/\(databaseFileName)")
    }

    
    func createDatabase() -> Bool {
        var created = false
        if !FileManager.default.fileExists(atPath: pathToDatabase) {
            database = FMDatabase(path: pathToDatabase!)
            
            if database != nil {
                // Open the database.
                if database.open() {
                    
                }
                else {
                    print("Could not open the database.")
                    database.close()
                }
            }
        }
        
        return created
    }
    

    func openDatabase() -> Bool {
        if database == nil {
            if FileManager.default.fileExists(atPath: pathToDatabase) {
                database = FMDatabase(path: pathToDatabase)
            }
        }
        
        if database != nil {
            if database.open() {
                return true
            }
        }
        
        return false
    }
}
