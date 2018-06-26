//
//  MVVMCListViewModel.swift
//  MVVMCTableViewProgramaticallyWithSwiftyJsonAndAlamofile
//
//  Created by Shaikat on 25/6/18.
//  Copyright © 2018 Shaikat. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class MVVMCListViewModel: MVVMCListViewModelProtocol{
    var delegate: MVVMCListViewModelDelegate?
    
    var list: [MVVMCListModel] = []
    
    func numberOfRow() -> Int {
        return list.count
    }
    
    func numberOfSection() -> Int {
        return 1
    }
    
    func dataForCell(index: Int) -> MVVMCListModel? {
        if index <= list.count - 1{
            return list[index]
        }
        return nil
        
    }
    
    func getData() {
        let url = RestAPI.baseURL
        delegate?.startFetchingData()
        
        Alamofire.request(url, method: .get).responseJSON { response in
            print(response)
            
            if response.result.value != nil {
                switch response.result{
                case .failure(let error):
                    self.delegate?.dataLoadingFail()
                case .success(let value):
                    let json = JSON(value)
                    var array: [MVVMCListModel] = []
                    if let arrayResult = json.array{
                        arrayResult.forEach({ (json) in
                            array.append(MVVMCListModel(json))
                        })
                    }
                    
                    self.list = array
                    // self.list.append(MVVMCListModel())
                    self.delegate?.dataLoadingSuccess()
                    
                }
            }
            else {
                print("Data not found")
            }
            
        }
    }
    
    
    
    
    
}

