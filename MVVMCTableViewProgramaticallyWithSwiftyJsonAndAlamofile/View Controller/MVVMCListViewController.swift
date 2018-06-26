//
//  MVVMCListViewController.swift
//  MVVMCTableViewProgramaticallyWithSwiftyJsonAndAlamofile
//
//  Created by Shaikat on 25/6/18.
//  Copyright © 2018 Shaikat. All rights reserved.
//

import UIKit

class MVVMCListViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    
    let identifier = "ListTableViewCell"
   // private var listtableView : UITableView!
    
    let listTableView : UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    
    // access the view model in this view controller
    var viewModel : MVVMCListViewModelProtocol?{
        willSet{
            viewModel?.delegate = nil
        }
        didSet{
            viewModel?.delegate = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // view.backgroundColor = .red
        //adding the tableview to the viewController
        self.view.addSubview(listTableView)
        //Enable Auto Layout on contactsTableView by setting translatesAutoresizingMaskIntoConstraints to false
        listTableView.translatesAutoresizingMaskIntoConstraints = false
        //top contraint for tabvleview with the view
        listTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        //left contraint for tabvleview with the view
        listTableView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
        //right contraint for tabvleview with the view
        listTableView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
        //bottom contraint for tabvleview with the view
        listTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        listTableView.delegate = self
        listTableView.dataSource = self
        
        listTableView.estimatedRowHeight = 200
        listTableView.rowHeight = UITableViewAutomaticDimension
        
        viewModel?.getData()
        listTableView.register(ListTableViewCell.self, forCellReuseIdentifier: "ListTableViewCell")
        
       // self.view.addSubview(listTableView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension MVVMCListViewController : MVVMCListViewModelDelegate{
    func startFetchingData() {
        print("Data Loading")
    }
    
    func dataLoadingFail() {
        print("Data Loading Failed")
    }
    
    func dataLoadingSuccess() {
        DispatchQueue.main.async {
            self.listTableView.reloadData()
        }
    }
    
    
}



extension MVVMCListViewController{
    // tableview delegates
    // MARK: - Table view data source
    
     func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return viewModel?.numberOfSection() ?? 0
        
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return viewModel?.numberOfRow() ?? 0
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let data = viewModel?.dataForCell(index: indexPath.row) {
            let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! ListTableViewCell
            cell.showDataInCell(item: data)
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 200
//    }
    
}

