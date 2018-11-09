//
//  SalesCellTableViewCell.swift
//  NEWW OBS
//
//  Created by Michael Baaske on 29.10.18.
//  Copyright © 2018 Michael Baaske. All rights reserved.
//

import UIKit

class SalesCellTableViewCell: UITableViewCell {
    
    let dataFilePath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first?.appendingPathComponent("Item.plist")
    
    var warenkörbe = Warenkörbe()

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    var tableView: UITableView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
//    
//    
//    @IBAction func stepperAction(_ sender: UIStepper) {
//        buyStat.purchaseAmount = sender.value
//        self.purchaseAmount.text = String(sender.value)
//    }

    
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
}
