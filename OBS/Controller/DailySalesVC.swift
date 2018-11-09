//
//  DailySalesViewController.swift
//  NEWW OBS
//
//  Created by Michael Baaske on 23.10.18.
//  Copyright © 2018 Michael Baaske. All rights reserved.
//

import UIKit

class DailySalesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var dailySalesTV: UITableView!
    @IBOutlet weak var endPriceLabel: UILabel!
    
    var warenkörbe = Warenkörbe()
    
    let dataFilePath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first?.appendingPathComponent("Item.plist")

    override func viewDidLoad() {
        super.viewDidLoad()
        dailySalesTV.delegate = self
        dailySalesTV.dataSource = self
        loadItems()
        warenkörbe.configureDailyItems()
        endPriceLabel.text = "€" + String(format:"%.2f", warenkörbe.täglicherEndPrice)
        
        dailySalesTV.register(UINib(nibName: "DailySalesCell", bundle: nil), forCellReuseIdentifier: "dailySalesCell")
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        print(warenkörbe.täglicherWarenkorbArtikel.count)
        return warenkörbe.täglicherWarenkorbArtikel.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dailySalesCell", for: indexPath) as! DailySalesCell
        let artikel = warenkörbe.täglicherWarenkorbArtikel[indexPath.row]
        let count = String(warenkörbe.täglicherWarenkorbCount[indexPath.row])
        let preis = String(format:"%.2f", warenkörbe.täglicherWarenkorbPreis[indexPath.row])
        cell.nameLabel.text = artikel
        cell.countLabel.text = "x" + count
        cell.priceLabel.text = "€" + preis
        
        return cell
    }
    
    // MARK: - Navigation

//    In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//
//    }
 
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        warenkörbe.removeDailySales()
        saveItems()
    }
    
    @IBAction func finishShiftTapped(_ sender: UIButton) {
        let alert = UIAlertController(title: "End of Day", message: "Are you sure to finish shift? All sales will be removed.", preferredStyle: .alert)
        let action = UIAlertAction(title: "Finish Shift", style: .destructive) { (alertAction) in
            self.finishShift()
        }
        let cancel = UIAlertAction(title: "Cancel", style: .cancel) { (alertAction) in
            
        }
        alert.addAction(action)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
        
        
    }
    
    func finishShift() {
        performSegue(withIdentifier: "toHome", sender: self)
    }
    
}
