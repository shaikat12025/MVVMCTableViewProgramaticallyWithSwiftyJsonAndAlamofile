//
//  MVVMCListViewModelProtocol.swift
//  MVVMCTableViewProgramaticallyWithSwiftyJsonAndAlamofile
//
//  Created by Shaikat on 25/6/18.
//  Copyright © 2018 Shaikat. All rights reserved.
//

import Foundation
import UIKit
protocol MVVMCListViewModelDelegate: class {
    func startFetchingData()
    func dataLoadingFail()
    func dataLoadingSuccess()
}

protocol MVVMCListViewModelProtocol {
    var delegate: MVVMCListViewModelDelegate? { get set }
    var list: [MVVMCListModel] { get }
    func numberOfRow() -> Int
    func numberOfSection() -> Int
    func dataForCell(index: Int) -> MVVMCListModel?
    func getData()
    
}
