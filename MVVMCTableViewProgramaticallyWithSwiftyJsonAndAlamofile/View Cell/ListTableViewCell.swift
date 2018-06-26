//
//  ListTableViewCell.swift
//  MVVMCTableViewProgramaticallyWithSwiftyJsonAndAlamofile
//
//  Created by Shaikat on 25/6/18.
//  Copyright © 2018 Shaikat. All rights reserved.
//

import UIKit

class ListTableViewCell: UITableViewCell {
    
    let contactContainerView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        //this will make sure its children do not go out of the boundary
        view.clipsToBounds = true
        //view.backgroundColor = UIColor.blue
        return view
    }()
    
    let contactLabel : UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 13)
        label.textColor = UIColor.black
        label.textAlignment = NSTextAlignment.right
        label.backgroundColor = .cyan
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let idResultOutlet : UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 13)
        label.textColor = UIColor.black
        label.textAlignment = NSTextAlignment.left
         label.backgroundColor = .green
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    let nameContainerView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        //this will make sure its children do not go out of the boundary
        view.clipsToBounds = true
        view.backgroundColor = UIColor.blue
        return view
    }()
    
    
    
    let nameOutlet: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 13)
        label.textColor = UIColor.black
        label.textAlignment = NSTextAlignment.left
        label.backgroundColor = .green
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let nameResultOutlet: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 13)
        label.textColor = UIColor.black
        label.textAlignment = NSTextAlignment.right
        label.numberOfLines = 0
        label.sizeToFit()
        label.backgroundColor = .red
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let userNameContainerView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        //this will make sure its children do not go out of the boundary
        view.clipsToBounds = true
        view.backgroundColor = UIColor.cyan
        return view
    }()
    
    
    
    let userNameOutlet: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 13)
        label.textColor = UIColor.black
        label.textAlignment = NSTextAlignment.left
        label.backgroundColor = .green
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let userNameResultOutlet: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 13)
        label.textColor = UIColor.black
        label.textAlignment = NSTextAlignment.right
        label.numberOfLines = 0
        label.sizeToFit()
        label.backgroundColor = .red
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let emailContainerView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        //this will make sure its children do not go out of the boundary
        view.clipsToBounds = true
        view.backgroundColor = UIColor.cyan
        return view
    }()
    
    
    
    let emailOutlet: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 13)
        label.textColor = UIColor.black
        label.textAlignment = NSTextAlignment.left
        label.backgroundColor = .green
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let emailResultOutlet: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 13)
        label.textColor = UIColor.black
        label.numberOfLines = 0
        label.sizeToFit()
        label.textAlignment = NSTextAlignment.right
        label.backgroundColor = .red
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //address
    let addressContainerView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        //this will make sure its children do not go out of the boundary
        view.clipsToBounds = true
        view.backgroundColor = UIColor.cyan
        return view
    }()
    
    
    
    let addressOutlet: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 13)
        label.textColor = UIColor.black
        label.textAlignment = NSTextAlignment.left
        label.backgroundColor = .green
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let addressResultOutlet: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 13)
        label.textColor = UIColor.black
        label.numberOfLines = 0
        label.sizeToFit()
        label.textAlignment = NSTextAlignment.right
        label.backgroundColor = .red
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //company
    let companyContainerView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        //this will make sure its children do not go out of the boundary
        view.clipsToBounds = true
        view.backgroundColor = UIColor.cyan
        return view
    }()
    
    
    
    let companyOutlet: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 13)
        label.textColor = UIColor.black
        label.textAlignment = NSTextAlignment.left
        label.backgroundColor = .green
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let companyResultOutlet: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 13)
        label.textColor = UIColor.black
        label.numberOfLines = 0
        label.sizeToFit()
        label.textAlignment = NSTextAlignment.right
        label.backgroundColor = .red
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //company adress
    let companyAddressContainerView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        //this will make sure its children do not go out of the boundary
        view.clipsToBounds = true
        view.backgroundColor = UIColor.cyan
        return view
    }()
    
    
    
    let companyAddressOutlet: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 13)
        label.textColor = UIColor.black
        label.textAlignment = NSTextAlignment.left
        label.backgroundColor = .green
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let companyAddressResultOutlet: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 13)
        label.textColor = UIColor.black
        label.numberOfLines = 0
        label.sizeToFit()
        label.textAlignment = NSTextAlignment.right
        label.backgroundColor = .red
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    
    
    
    // show the data in the cell
    func showDataInCell(item: MVVMCListModel){
        contactLabel.text = "Contact"
        idResultOutlet.text = String(describing: (item.id) ?? 0)
        nameOutlet.text = "Name:"
        nameResultOutlet.text = item.name ?? ""
        userNameOutlet.text = "User Name:"
        userNameResultOutlet.text = item.userName ?? ""
        emailOutlet.text = "Email:"
        emailResultOutlet.text = item.email ?? ""
        addressOutlet.text = "Address:"
        addressResultOutlet.text = ((item.address?.suite) ?? "") + "," + ((item.address?.street) ?? "")
        companyOutlet.text = "Company:"
        companyResultOutlet.text = ((item.company?.name) ?? "")
        companyAddressOutlet.text = "Company Address:"
        companyAddressResultOutlet.text = ((item.company?.bs) ?? "")
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setUpTableviewCell()
        
    }
    
    func setUpTableviewCell(){
        self.contentView.addSubview(contactContainerView)
        //contactContainerView.translatesAutoresizingMaskIntoConstraints = false
        
        // contact Container constraints
        contactContainerView.heightAnchor.constraint(equalTo: self.contentView.heightAnchor, multiplier: 0.1).isActive = true
        contactContainerView.widthAnchor.constraint(equalTo: self.contentView.widthAnchor, multiplier: 0.3).isActive = true
        // contactcontainerview auto layout
        contactContainerView.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor).isActive = true
        contactContainerView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 2).isActive = true
        
        
        contactContainerView.addSubview(contactLabel)
        contactContainerView.addSubview(idResultOutlet)
        
        contactLabel.heightAnchor.constraint(equalTo: self.contactContainerView.heightAnchor, multiplier: 1).isActive = true
        contactLabel.widthAnchor.constraint(equalTo: self.contactContainerView.widthAnchor, multiplier: 0.5).isActive = true
        
        contactLabel.topAnchor.constraint(equalTo:self.contactContainerView.topAnchor).isActive = true
        contactLabel.leadingAnchor.constraint(equalTo:self.contactContainerView.leadingAnchor).isActive = true
        contactLabel.trailingAnchor.constraint(equalTo: idResultOutlet.leadingAnchor, constant: -4).isActive = true
       
      
        
        // id result contraint
        idResultOutlet.heightAnchor.constraint(equalTo: self.contactContainerView.heightAnchor, multiplier: 1).isActive = true
        idResultOutlet.widthAnchor.constraint(equalTo: self.contactContainerView.widthAnchor, multiplier: 0.5).isActive = true
        idResultOutlet.topAnchor.constraint(equalTo:contactLabel.topAnchor).isActive = true
        idResultOutlet.bottomAnchor.constraint(equalTo: self.contactContainerView.bottomAnchor).isActive = true

        
        
        self.contentView.addSubview(nameContainerView)
         contactContainerView.bottomAnchor.constraint(equalTo: nameContainerView.topAnchor, constant: -8).isActive = true
        // name container view coinstraint
        nameContainerView.heightAnchor.constraint(equalTo: self.contentView.heightAnchor, multiplier: 0.1).isActive = true
        nameContainerView.topAnchor.constraint(equalTo: contactContainerView.bottomAnchor, constant: 2).isActive = true
        nameContainerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8).isActive = true
        nameContainerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8).isActive = true
     
        nameContainerView.addSubview(nameOutlet)
        nameContainerView.addSubview(nameResultOutlet)
        
        nameOutlet.leadingAnchor.constraint(equalTo: nameContainerView.leadingAnchor, constant: 8).isActive = true
        nameOutlet.topAnchor.constraint(equalTo: nameContainerView.topAnchor, constant: 2).isActive = true
        nameOutlet.bottomAnchor.constraint(equalTo: nameContainerView.bottomAnchor, constant: -2).isActive = true
        nameOutlet.trailingAnchor.constraint(greaterThanOrEqualTo: nameResultOutlet.leadingAnchor, constant: -16).isActive = true
        
       // name result contraint
        
        nameResultOutlet.trailingAnchor.constraint(equalTo: nameContainerView.trailingAnchor, constant: -8).isActive = true
        nameResultOutlet.topAnchor.constraint(equalTo: nameOutlet.topAnchor).isActive = true

        
        self.contentView.addSubview(userNameContainerView)
        
        nameContainerView.bottomAnchor.constraint(equalTo: userNameContainerView.topAnchor, constant: -8).isActive = true
        userNameContainerView.leadingAnchor.constraint(equalTo: nameContainerView.leadingAnchor).isActive = true
        userNameContainerView.trailingAnchor.constraint(equalTo: nameContainerView.trailingAnchor).isActive = true
       
        userNameContainerView.heightAnchor.constraint(equalTo: nameContainerView.heightAnchor).isActive = true
        userNameContainerView.widthAnchor.constraint(equalTo: nameContainerView.widthAnchor).isActive = true
        
        userNameContainerView.addSubview(userNameOutlet)
        userNameContainerView.addSubview(userNameResultOutlet)
        
        //username outlet constraint
        userNameOutlet.leadingAnchor.constraint(equalTo: userNameContainerView.leadingAnchor, constant: 8).isActive = true
        userNameOutlet.topAnchor.constraint(equalTo: userNameContainerView.topAnchor, constant: 2).isActive = true
        userNameOutlet.bottomAnchor.constraint(equalTo: userNameContainerView.bottomAnchor, constant: -2).isActive = true
        userNameOutlet.trailingAnchor.constraint(greaterThanOrEqualTo: userNameResultOutlet.leadingAnchor, constant: -16).isActive = true
        
        // username result contraint
        userNameResultOutlet.trailingAnchor.constraint(equalTo: userNameContainerView.trailingAnchor, constant: -8).isActive = true
        userNameResultOutlet.topAnchor.constraint(equalTo: userNameOutlet.topAnchor).isActive = true
        
        // email constraints
        
        self.contentView.addSubview(emailContainerView)
        userNameContainerView.bottomAnchor.constraint(equalTo: emailContainerView.topAnchor, constant: -8).isActive = true
        emailContainerView.leadingAnchor.constraint(equalTo: userNameContainerView.leadingAnchor).isActive = true
        emailContainerView.trailingAnchor.constraint(equalTo: userNameContainerView.trailingAnchor).isActive = true
        
        emailContainerView.heightAnchor.constraint(equalTo: userNameContainerView.heightAnchor).isActive = true
        emailContainerView.widthAnchor.constraint(equalTo: userNameContainerView.widthAnchor).isActive = true

        
        emailContainerView.addSubview(emailOutlet)
        emailContainerView.addSubview(emailResultOutlet)
        
        // email outlet constraint
        emailOutlet.leadingAnchor.constraint(equalTo: emailContainerView.leadingAnchor, constant: 8).isActive = true
        emailOutlet.topAnchor.constraint(equalTo: emailContainerView.topAnchor, constant: 2).isActive = true
        emailOutlet.bottomAnchor.constraint(equalTo: emailContainerView.bottomAnchor, constant: -2).isActive = true
        emailOutlet.trailingAnchor.constraint(greaterThanOrEqualTo: emailResultOutlet.leadingAnchor, constant: -16).isActive = true
        
        
        // email result contraint
        emailResultOutlet.trailingAnchor.constraint(equalTo: emailContainerView.trailingAnchor, constant: -8).isActive = true
        emailResultOutlet.topAnchor.constraint(equalTo: emailOutlet.topAnchor).isActive = true
        
        
        //address container constraint
        self.contentView.addSubview(addressContainerView)
        emailContainerView.bottomAnchor.constraint(equalTo: addressContainerView.topAnchor, constant: -8).isActive = true
        addressContainerView.leadingAnchor.constraint(equalTo: emailContainerView.leadingAnchor).isActive = true
        addressContainerView.trailingAnchor.constraint(equalTo: emailContainerView.trailingAnchor).isActive = true
        
        addressContainerView.heightAnchor.constraint(equalTo: emailContainerView.heightAnchor).isActive = true
        addressContainerView.widthAnchor.constraint(equalTo: emailContainerView.widthAnchor).isActive = true
        
        addressContainerView.addSubview(addressOutlet)
        addressContainerView.addSubview(addressResultOutlet)
        
        // address outlet constraint
        
        addressOutlet.leadingAnchor.constraint(equalTo: addressContainerView.leadingAnchor, constant: 8).isActive = true
        addressOutlet.topAnchor.constraint(equalTo: addressContainerView.topAnchor, constant: 2).isActive = true
        addressOutlet.bottomAnchor.constraint(equalTo: addressContainerView.bottomAnchor, constant: -2).isActive = true

        addressOutlet.trailingAnchor.constraint(greaterThanOrEqualTo: addressResultOutlet.leadingAnchor, constant: -16).isActive = true
        
        // address result contraint
        addressResultOutlet.trailingAnchor.constraint(equalTo: addressContainerView.trailingAnchor, constant: -8).isActive = true
        addressResultOutlet.topAnchor.constraint(equalTo: addressOutlet.topAnchor).isActive = true
        
        // company container constraints
        self.contentView.addSubview(companyContainerView)
        addressContainerView.bottomAnchor.constraint(equalTo: companyContainerView.topAnchor, constant: -8).isActive = true
        companyContainerView.leadingAnchor.constraint(equalTo: addressContainerView.leadingAnchor).isActive = true
        companyContainerView.trailingAnchor.constraint(equalTo: addressContainerView.trailingAnchor).isActive = true
        
        companyContainerView.heightAnchor.constraint(equalTo: addressContainerView.heightAnchor).isActive = true
        companyContainerView.widthAnchor.constraint(equalTo: addressContainerView.widthAnchor).isActive = true
        
        companyContainerView.addSubview(companyOutlet)
        companyContainerView.addSubview(companyResultOutlet)
        
        //company outlet constraints
        companyOutlet.leadingAnchor.constraint(equalTo: companyContainerView.leadingAnchor, constant: 8).isActive = true
        companyOutlet.topAnchor.constraint(equalTo: companyContainerView.topAnchor, constant: 2).isActive = true
        companyOutlet.bottomAnchor.constraint(equalTo: companyContainerView.bottomAnchor, constant: -2).isActive = true

        companyOutlet.trailingAnchor.constraint(greaterThanOrEqualTo: companyResultOutlet.leadingAnchor, constant: -16).isActive = true
        
        // company result contraint
        companyResultOutlet.trailingAnchor.constraint(equalTo: companyContainerView.trailingAnchor, constant: -8).isActive = true
        companyResultOutlet.topAnchor.constraint(equalTo: companyOutlet.topAnchor).isActive = true
        
        
        // company address container constraints
        self.contentView.addSubview(companyAddressContainerView)
        companyContainerView.bottomAnchor.constraint(equalTo: companyAddressContainerView.topAnchor, constant: -8).isActive = true
        companyAddressContainerView.leadingAnchor.constraint(equalTo: companyContainerView.leadingAnchor).isActive = true
        companyAddressContainerView.trailingAnchor.constraint(equalTo: companyContainerView.trailingAnchor).isActive = true
        
        companyAddressContainerView.heightAnchor.constraint(equalTo: companyContainerView.heightAnchor).isActive = true
        companyAddressContainerView.widthAnchor.constraint(equalTo: companyContainerView.widthAnchor).isActive = true
        companyAddressContainerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8).isActive = true
        
        companyAddressContainerView.addSubview(companyAddressOutlet)
        companyAddressContainerView.addSubview(companyAddressResultOutlet)
        
        //company address outlet constraints
        companyAddressOutlet.leadingAnchor.constraint(equalTo: companyAddressContainerView.leadingAnchor, constant: 8).isActive = true
        companyAddressOutlet.topAnchor.constraint(equalTo: companyAddressContainerView.topAnchor, constant: 2).isActive = true
        companyAddressOutlet.bottomAnchor.constraint(equalTo: companyAddressContainerView.bottomAnchor, constant: -2).isActive = true
        
        companyAddressOutlet.trailingAnchor.constraint(greaterThanOrEqualTo: companyAddressResultOutlet.leadingAnchor, constant: -16).isActive = true
        
        // company address result contraint
        companyAddressResultOutlet.trailingAnchor.constraint(equalTo: companyAddressContainerView.trailingAnchor, constant: -8).isActive = true
        companyAddressResultOutlet.leadingAnchor.constraint(greaterThanOrEqualTo: companyAddressOutlet.trailingAnchor, constant: -8).isActive = true
        companyAddressResultOutlet.topAnchor.constraint(equalTo: companyAddressOutlet.topAnchor).isActive = true
        
        
        
        
        
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
    }
    
    
}



