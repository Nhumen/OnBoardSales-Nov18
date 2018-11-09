//
//  SalesVC.swift
//  NEWW OBS
//
//  Created by Michael Baaske on 23.10.18.
//  Copyright © 2018 Michael Baaske. All rights reserved.
//

import UIKit

class SalesVC: UIViewController {
  
    @IBOutlet weak var kopfhörerCount: UILabel!
    @IBOutlet weak var capriSunCount: UILabel!
    @IBOutlet weak var softdrinksCount: UILabel!
    @IBOutlet weak var coffeeCount: UILabel!
    @IBOutlet weak var beerCount: UILabel!
    @IBOutlet weak var sektCount: UILabel!
    @IBOutlet weak var wine6Count: UILabel!
    @IBOutlet weak var redbullCount: UILabel!
    @IBOutlet weak var miniatureCount: UILabel!
    @IBOutlet weak var tapasCount: UILabel!
    @IBOutlet weak var sandwichCount: UILabel!
    @IBOutlet weak var lastOrderSandwichCount: UILabel!
    @IBOutlet weak var snacks150Count: UILabel!
    @IBOutlet weak var snacks200Count: UILabel!
    @IBOutlet weak var snacks250Count: UILabel!
    @IBOutlet weak var snacks400Count: UILabel!
    
    @IBOutlet weak var dealSandwichCount: UILabel!
    @IBOutlet weak var dealSnackCount: UILabel!
    @IBOutlet weak var dealTapasCount: UILabel!
    @IBOutlet weak var longdrinkDealCount: UILabel!
    @IBOutlet weak var dealCoffeeCount: UILabel!
    @IBOutlet weak var happyDealCount: UILabel!

    var isSelected : Bool = false
    
    // MARK: - Items verknüpfen
    var warenkörbe = Warenkörbe()
    
    let dataFilePath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first?.appendingPathComponent("Item.plist")
    
    //MARK: - App Start
    override func viewDidLoad() {
        super.viewDidLoad()
        loadItems()
        reloadCountLabels()
        warenkörbe.shiftStarted = true
        saveItems()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        warenkörbe.backToSales()
        saveItems()
        loadItems()
        reloadCountLabels()        
    }
    
    // MARK: - Actions
    
    @IBAction func AddItemButtonTapped(_ sender: UIButton) {
        
        if isSelected == false {
            if sender.tag == 1 {
                warenkörbe.kopfhörerWarenkorbCount += 1
                kopfhörerCount.text = String(warenkörbe.kopfhörerWarenkorbCount)
            } else if sender.tag == 2 {
                warenkörbe.caprisunWarenkorbCount += 1
                capriSunCount.text = String(warenkörbe.caprisunWarenkorbCount)
            } else if sender.tag == 3 {
                warenkörbe.softdrinksWarenkorbCount += 1
                softdrinksCount.text = String(warenkörbe.softdrinksWarenkorbCount)
            } else if sender.tag == 4 {
                warenkörbe.coffeeWarenkorbCount += 1
                coffeeCount.text = String(warenkörbe.coffeeWarenkorbCount)
            } else if sender.tag == 5 {
                warenkörbe.beerWarenkorbCount += 1
                beerCount.text = String(warenkörbe.beerWarenkorbCount)
            } else if sender.tag == 6 {
                warenkörbe.sektWarenkorbCount += 1
                sektCount.text = String(warenkörbe.sektWarenkorbCount)
            } else if sender.tag == 7 {
                warenkörbe.wine6WarenkorbCount += 1
                wine6Count.text = String(warenkörbe.wine6WarenkorbCount)
            } else if sender.tag == 8 {
                warenkörbe.redbullWarenkorbCount += 1
                redbullCount.text = String(warenkörbe.redbullWarenkorbCount)
            } else if sender.tag == 9 {
                warenkörbe.miniatureWarenkorbCount += 1
                miniatureCount.text = String(warenkörbe.miniatureWarenkorbCount)
            } else if sender.tag == 10 {
                warenkörbe.tapasWarenkorbCount += 1
                tapasCount.text = String(warenkörbe.tapasWarenkorbCount)
            } else if sender.tag == 11 {
                warenkörbe.sandwichWarenkorbCount += 1
                sandwichCount.text = String(warenkörbe.sandwichWarenkorbCount)
            } else if sender.tag == 12 {
                warenkörbe.lastOrderSandwichWarenkorbCount += 1
                lastOrderSandwichCount.text = String(warenkörbe.lastOrderSandwichWarenkorbCount)
            } else if sender.tag == 13 {
                warenkörbe.snacks150WarenkorbCount += 1
                snacks150Count.text = String(warenkörbe.snacks150WarenkorbCount)
            } else if sender.tag == 14 {
                warenkörbe.snacks200WarenkorbCount += 1
                snacks200Count.text = String(warenkörbe.snacks200WarenkorbCount)
            } else if sender.tag == 15 {
                warenkörbe.snacks250WarenkorbCount += 1
                snacks250Count.text = String(warenkörbe.snacks250WarenkorbCount)
            } else if sender.tag == 16 {
                warenkörbe.snacks400WarenkorbCount += 1
                snacks400Count.text = String(warenkörbe.snacks400WarenkorbCount)
            } else if sender.tag == 17 {
                warenkörbe.dealSandwichWarenkorbCount += 1
                dealSandwichCount.text = String(warenkörbe.dealSandwichWarenkorbCount)
            } else if sender.tag == 18 {
                warenkörbe.dealSnackWarenkorbCount += 1
                dealSnackCount.text = String(warenkörbe.dealSnackWarenkorbCount)
            } else if sender.tag == 19 {
                warenkörbe.dealTapasWarenkorbCount += 1
                dealTapasCount.text = String(warenkörbe.dealTapasWarenkorbCount)
            } else if sender.tag == 20 {
                warenkörbe.longdrinkDealWarenkorbCount += 1
                longdrinkDealCount.text = String(warenkörbe.longdrinkDealWarenkorbCount)
            } else if sender.tag == 21 {
                warenkörbe.happyDealWarenkorbCount += 1
                happyDealCount.text = String(warenkörbe.happyDealWarenkorbCount)
            } else if sender.tag == 22 {
                warenkörbe.dealCoffeeWarenkorbCount += 1
                dealCoffeeCount.text = String(warenkörbe.dealCoffeeWarenkorbCount)
            }
        }

        if isSelected == true {
            if sender.tag == 1 && warenkörbe.kopfhörerWarenkorbCount != 0 {
                warenkörbe.kopfhörerWarenkorbCount -= 1
                kopfhörerCount.text = String(warenkörbe.kopfhörerWarenkorbCount)
            } else if sender.tag == 2 && warenkörbe.caprisunWarenkorbCount != 0 {
                warenkörbe.caprisunWarenkorbCount -= 1
                capriSunCount.text = String(warenkörbe.caprisunWarenkorbCount)
            } else if sender.tag == 3 && warenkörbe.softdrinksWarenkorbCount != 0 {
                warenkörbe.softdrinksWarenkorbCount -= 1
                softdrinksCount.text = String(warenkörbe.softdrinksWarenkorbCount)
            } else if sender.tag == 4 && warenkörbe.coffeeWarenkorbCount != 0 {
                warenkörbe.coffeeWarenkorbCount -= 1
                coffeeCount.text = String(warenkörbe.coffeeWarenkorbCount)
            } else if sender.tag == 5 && warenkörbe.beerWarenkorbCount != 0 {
                warenkörbe.beerWarenkorbCount -= 1
                beerCount.text = String(warenkörbe.beerWarenkorbCount)
            } else if sender.tag == 6 && warenkörbe.sektWarenkorbCount != 0 {
                warenkörbe.sektWarenkorbCount -= 1
                sektCount.text = String(warenkörbe.sektWarenkorbCount)
            } else if sender.tag == 7 && warenkörbe.wine6WarenkorbCount != 0 {
                warenkörbe.wine6WarenkorbCount -= 1
                wine6Count.text = String(warenkörbe.wine6WarenkorbCount)
            } else if sender.tag == 8 && warenkörbe.redbullWarenkorbCount != 0 {
                warenkörbe.redbullWarenkorbCount -= 1
                redbullCount.text = String(warenkörbe.redbullWarenkorbCount)
            } else if sender.tag == 9 && warenkörbe.miniatureWarenkorbCount != 0 {
                warenkörbe.miniatureWarenkorbCount -= 1
                miniatureCount.text = String(warenkörbe.miniatureWarenkorbCount)
            } else if sender.tag == 10 && warenkörbe.tapasWarenkorbCount != 0 {
                warenkörbe.tapasWarenkorbCount -= 1
                tapasCount.text = String(warenkörbe.tapasWarenkorbCount)
            } else if sender.tag == 11 && warenkörbe.sandwichWarenkorbCount != 0 {
                warenkörbe.sandwichWarenkorbCount -= 1
                sandwichCount.text = String(warenkörbe.sandwichWarenkorbCount)
            } else if sender.tag == 12 && warenkörbe.lastOrderSandwichWarenkorbCount != 0 {
                warenkörbe.lastOrderSandwichWarenkorbCount -= 1
                lastOrderSandwichCount.text = String(warenkörbe.lastOrderSandwichWarenkorbCount)
            } else if sender.tag == 13 && warenkörbe.snacks150WarenkorbCount != 0 {
                warenkörbe.snacks150WarenkorbCount -= 1
                snacks150Count.text = String(warenkörbe.snacks150WarenkorbCount)
            } else if sender.tag == 14 && warenkörbe.snacks200WarenkorbCount != 0 {
                warenkörbe.snacks200WarenkorbCount -= 1
                snacks200Count.text = String(warenkörbe.snacks200WarenkorbCount)
            } else if sender.tag == 15 && warenkörbe.snacks250WarenkorbCount != 0 {
                warenkörbe.snacks250WarenkorbCount -= 1
                snacks250Count.text = String(warenkörbe.snacks250WarenkorbCount)
            } else if sender.tag == 16 && warenkörbe.snacks400WarenkorbCount != 0 {
                warenkörbe.snacks400WarenkorbCount -= 1
                snacks400Count.text = String(warenkörbe.snacks400WarenkorbCount)
            } else if sender.tag == 17 && warenkörbe.dealSandwichWarenkorbCount != 0 {
                warenkörbe.dealSandwichWarenkorbCount -= 1
                dealSandwichCount.text = String(warenkörbe.dealSandwichWarenkorbCount)
            } else if sender.tag == 18 && warenkörbe.dealSnackWarenkorbCount != 0 {
                warenkörbe.dealSnackWarenkorbCount -= 1
                dealSnackCount.text = String(warenkörbe.dealSnackWarenkorbCount)
            } else if sender.tag == 19 && warenkörbe.dealTapasWarenkorbCount != 0 {
                warenkörbe.dealTapasWarenkorbCount -= 1
                dealTapasCount.text = String(warenkörbe.dealTapasWarenkorbCount)
            } else if sender.tag == 20 && warenkörbe.longdrinkDealWarenkorbCount != 0 {
                warenkörbe.longdrinkDealWarenkorbCount -= 1
                longdrinkDealCount.text = String(warenkörbe.longdrinkDealWarenkorbCount)
            } else if sender.tag == 21 && warenkörbe.happyDealWarenkorbCount != 0 {
                warenkörbe.happyDealWarenkorbCount -= 1
                happyDealCount.text = String(warenkörbe.happyDealWarenkorbCount)
            } else if sender.tag == 22 && warenkörbe.dealCoffeeWarenkorbCount != 0 {
                warenkörbe.dealCoffeeWarenkorbCount -= 1
                dealCoffeeCount.text = String(warenkörbe.dealCoffeeWarenkorbCount)
            }
        }
        
        makeDeals()
        reloadCountLabels()
        saveItems()
        
    }
    
    @IBAction func minusButtonTapped(_ sender: UIButton) {
            if isSelected == false {
                sender.isSelected = true
                isSelected = true
            } else {
                sender.isSelected = false
                isSelected = false
            }
    }
    
    // MARK: - Make Deals
    
    func makeDeals() {
        
        if warenkörbe.softdrinksWarenkorbCount >= 2 && warenkörbe.snacks150WarenkorbCount >= 1 {
            warenkörbe.softdrinksWarenkorbCount -= 2
            warenkörbe.snacks150WarenkorbCount -= 1
            warenkörbe.happyDealWarenkorbCount += 1
            happyDealCount.text = String(warenkörbe.happyDealWarenkorbCount)
            
        }
        if warenkörbe.coffeeWarenkorbCount >= 1 && warenkörbe.snacks250WarenkorbCount >= 1 {
            warenkörbe.coffeeWarenkorbCount -= 1
            warenkörbe.snacks250WarenkorbCount -= 1
            warenkörbe.dealCoffeeWarenkorbCount += 1
            dealCoffeeCount.text = String(warenkörbe.dealCoffeeWarenkorbCount)
        }
        if warenkörbe.softdrinksWarenkorbCount >= 1 && warenkörbe.sandwichWarenkorbCount >= 1 {
            warenkörbe.softdrinksWarenkorbCount -= 1
            warenkörbe.sandwichWarenkorbCount -= 1
            warenkörbe.dealSandwichWarenkorbCount += 1
            dealSandwichCount.text = String(warenkörbe.dealSandwichWarenkorbCount)
        }
        if warenkörbe.softdrinksWarenkorbCount >= 1 && warenkörbe.miniatureWarenkorbCount >= 1 {
            warenkörbe.softdrinksWarenkorbCount -= 1
            warenkörbe.miniatureWarenkorbCount -= 1
            warenkörbe.longdrinkDealWarenkorbCount += 1
            longdrinkDealCount.text = String(warenkörbe.longdrinkDealWarenkorbCount)
        }
        if warenkörbe.tapasWarenkorbCount >= 1 && warenkörbe.wine6WarenkorbCount >= 1 {
            warenkörbe.tapasWarenkorbCount -= 1
            warenkörbe.wine6WarenkorbCount -= 1
            warenkörbe.dealTapasWarenkorbCount += 1
            dealTapasCount.text = String(warenkörbe.dealTapasWarenkorbCount)
        }
        if warenkörbe.beerWarenkorbCount >= 1 && warenkörbe.snacks150WarenkorbCount >= 1 {
            warenkörbe.beerWarenkorbCount -= 1
            warenkörbe.snacks150WarenkorbCount -= 1
            warenkörbe.dealSnackWarenkorbCount += 1
            dealSnackCount.text = String(warenkörbe.dealSnackWarenkorbCount)
        }
    }
    
    // MARK: - Reload Count Labels
    func reloadCountLabels() {
        kopfhörerCount.text = String(warenkörbe.kopfhörerWarenkorbCount)
        capriSunCount.text = String(warenkörbe.caprisunWarenkorbCount)
        softdrinksCount.text = String(warenkörbe.softdrinksWarenkorbCount)
        coffeeCount.text = String(warenkörbe.coffeeWarenkorbCount)
        beerCount.text = String(warenkörbe.beerWarenkorbCount)
        sektCount.text = String(warenkörbe.sektWarenkorbCount)
        wine6Count.text = String(warenkörbe.wine6WarenkorbCount)
        redbullCount.text = String(warenkörbe.redbullWarenkorbCount)
        miniatureCount.text = String(warenkörbe.miniatureWarenkorbCount)
        tapasCount.text = String(warenkörbe.tapasWarenkorbCount)
        sandwichCount.text = String(warenkörbe.sandwichWarenkorbCount)
        lastOrderSandwichCount.text = String(warenkörbe.lastOrderSandwichWarenkorbCount)
        snacks150Count.text = String(warenkörbe.snacks150WarenkorbCount)
        snacks200Count.text = String(warenkörbe.snacks200WarenkorbCount)
        snacks250Count.text = String(warenkörbe.snacks250WarenkorbCount)
        snacks400Count.text = String(warenkörbe.snacks400WarenkorbCount)
        dealSandwichCount.text = String(warenkörbe.dealSandwichWarenkorbCount)
        dealSnackCount.text = String(warenkörbe.dealSnackWarenkorbCount)
        dealTapasCount.text = String(warenkörbe.dealTapasWarenkorbCount)
        longdrinkDealCount.text = String(warenkörbe.longdrinkDealWarenkorbCount)
        happyDealCount.text = String(warenkörbe.happyDealWarenkorbCount)
        dealCoffeeCount.text = String(warenkörbe.dealCoffeeWarenkorbCount)
        print(kopfhörerCount)
    }
    
    // MARK: - Button Actions
  
    @IBAction func toCartTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "toWarenkorb", sender: self)
    }
    @IBAction func toDailySalesTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "toDailySales", sender: self)
    }
    
    // MARK: - Daten speichern/laden
    
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

