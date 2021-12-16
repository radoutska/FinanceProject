//
//  FinanceModel.swift
//  FinanceProject
//
//  Created by Anna Radoutska on 06.12.2021.
//

import RealmSwift
import Foundation

/*class FinanceModel: Object {
    
    @Persisted var type: Bool = true
    @Persisted var category: String = ""
    @Persisted var transacDate = Date()
    @Persisted var amount: Int = 1
}
*/


class FinanceModel: Object {
    @Persisted var type: Bool
    @Persisted var category: String = ""
    @Persisted var amount: Int = 100
    @Persisted var data = Date()
}
