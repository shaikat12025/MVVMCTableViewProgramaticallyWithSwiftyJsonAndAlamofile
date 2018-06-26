//
//  MVVMCListModel.swift
//  MVVMCTableViewProgramaticallyWithSwiftyJsonAndAlamofile
//
//  Created by Shaikat on 25/6/18.
//  Copyright © 2018 Shaikat. All rights reserved.
//


import Foundation
import SwiftyJSON

class MVVMCListModel{
    let id: Int?
    let name: String?
    let userName: String?
    let email: String?
    let address: Address?
    let phone: String?
    let website: String?
    let company : Company?
    
    class Company{
        var name: String? = nil
        var catchPhrase: String? = nil
        let bs: String?
        
        init(_ json : JSON) {
            name = json["name"].string
            catchPhrase = json["catchPhrase"].string
            bs = json["bs"].string
        }
    }
    
    class Address{
        let street:String?
        let suite : String?
        let city:String?
        let zipCode : String?
        let geo: Geo?
        
        class Geo{
            let lat: String?
            let lng: String?
            init(_ json : JSON) {
                lat = json["lat"].string
                lng = json["lng"].string
            }
        }
        init(_ json: JSON){
            street = json["street"].string
            suite  = json["suite"].string
            city = json["city"].string
            zipCode = json["zipcode"].string
            geo = Geo(json["geo"])
        }
    }
    
    init(_ json: JSON){
        id = json["id"].int
        name = json["name"].string
        address = Address(json["address"])
        email = json["email"].string
        phone = json["phone"].string
        userName = json["username"].string
        company = Company(json["company"])
        website = json["website"].string
    }
    
    //    init() {
    //        id = 123
    //        name = "labellabellabellabellabellabellabellabellabellabellabellabellabellabel"
    //      //  email = "labellabellabellabellabellabellabellabellabellabellabellabellabellabel"
    //         email = "email"
    //        address = Address(JSON())
    //        phone = ""
    //        //userName = "LabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabellabellabellabellabellabellabellabellabellabellabellabellabellabellabel"
    //         userName = "name "
    //        company = Company(JSON())
    //        website = ""
    //    }
}

