//
//  RealmManager.swift
//  FinanceProject
//
//  Created by Anna Radoutska on 06.12.2021.
//

import RealmSwift

class RealmManager {
     
    // using singleton
    
    static let shared = RealmManager()
    
        var localRealm = try! Realm()
      
    private init () {}
    
    func saveFinanceModel (model: FinanceModel) {
        try! localRealm.write {
            localRealm.add(model)
        }
    }
    
}
        
