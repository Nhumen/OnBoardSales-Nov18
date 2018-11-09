//
//  WarenkorbVC.swift
//  NEWW OBS
//
//  Created by Michael Baaske on 23.10.18.
//  Copyright © 2018 Michael Baaske. All rights reserved.
//

import UIKit

class WarenkorbVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var aktuellerWarenkorbTV: UITableView!
    @IBOutlet weak var endPriceLabel: UILabel!
    
    var warenkörbe = Warenkörbe()
    
    let dataFilePath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first?.appendingPathComponent("Item.plist")
        
    override func viewDidLoad() {
        super.viewDidLoad()
        aktuellerWarenkorbTV.delegate = self
        aktuellerWarenkorbTV.dataSource = self
        loadItems()
        warenkörbe.configureItems()
        endPriceLabel.text = "€" + String(format:"%.2f", warenkörbe.aktuellerEndPrice)
        
        aktuellerWarenkorbTV.register(UINib(nibName: "SalesCellTableViewCell", bundle: nil), forCellReuseIdentifier: "salesCell")
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    //    override func numberOfSections(in tableView: UITableView) -> Int {
    //        // #warning Incomplete implementation, return the number of sections
    //        return warenkorb.count
    //    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return warenkörbe.aktuellerWarenkorbCount.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "salesCell", for: indexPath) as! SalesCellTableViewCell
        let artikel = String(warenkörbe.aktuellerWarenkorbArtikel[indexPath.row])
        let count = String(warenkörbe.aktuellerWarenkorbCount[indexPath.row])
        let preis = String(format:"%.2f", warenkörbe.aktuellerWarenkorbPreis[indexPath.row])
        cell.nameLabel.text = artikel
        cell.countLabel.text = "x" + count
        cell.priceLabel.text = "€" + preis
        
        saveItems()
        loadItems()
//        warenkörbe.configureItems()
        return cell
    }
    
    // MARK: - Load Data
    
    // MARK: - Daten speichern
    
    func saveItems() {
        
        let encoder = PropertyListEncoder()
        
        do {
            let data = try encoder.encode(warenkörbe)
            try data.write(to: dataFilePath!)
        } catch {
            print("Fehler", error)
        }
    }
    
    func loadItems() {
        
        if let data = try? Data(contentsOf: dataFilePath!) {
            let decoder = PropertyListDecoder()
            do {
                warenkörbe = try decoder.decode(Warenkörbe.self, from: data)
            } catch {
                print("Fehler", error)
            }
        }
        
    }
    
    @IBAction func paidButtonTapped(_ sender: UIButton) {
        warenkörbe.itemsToDailySales()
        saveItems()
        
//        dismiss(animated: true, completion: nil)
        performSegue(withIdentifier: "backToSales", sender: self)
    }
    

}
