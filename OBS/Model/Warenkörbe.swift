//
//  Warenkörbe.swift
//  NEW OBS
//
//  Created by Michael Baaske on 23.10.18.
//  Copyright © 2018 Michael Baaske. All rights reserved.
//

import Foundation

class Warenkörbe: Codable {
    
    var shiftStarted = false
    
    // MARK: - Warenkörbe
    
    // Artikel
    var kopfhörerWarenkorbCount = 0
    var caprisunWarenkorbCount = 0
    var softdrinksWarenkorbCount = 0
    var coffeeWarenkorbCount = 0
    var beerWarenkorbCount = 0
    var sektWarenkorbCount = 0
    var wine6WarenkorbCount = 0
    var redbullWarenkorbCount = 0
    var miniatureWarenkorbCount = 0
    var tapasWarenkorbCount = 0
    var sandwichWarenkorbCount = 0
    var lastOrderSandwichWarenkorbCount = 0
    var snacks150WarenkorbCount = 0
    var snacks200WarenkorbCount = 0
    var snacks250WarenkorbCount = 0
    var snacks400WarenkorbCount = 0
    
    //Deals
    var dealSandwichWarenkorbCount = 0
    var dealSnackWarenkorbCount = 0
    var dealTapasWarenkorbCount = 0
    var longdrinkDealWarenkorbCount = 0
    var happyDealWarenkorbCount = 0
    var dealCoffeeWarenkorbCount = 0
    
    //Aktueller Warenkorb
    var aktuellerWarenkorbArtikel = [String]()
    var aktuellerWarenkorbPreis = [Double]()
    var aktuellerWarenkorbCount = [Int]()
    var aktuellerEndPrice = Double()
    
    //Tägliche Verkäufe Artikel
    var kopfhörerDailySalesCount = 0
    var caprisunDailySalesCount = 0
    var softdrinksDailySalesCount = 0
    var coffeeDailySalesCount = 0
    var beerDailySalesCount = 0
    var sektDailySalesCount = 0
    var wine6DailySalesCount = 0
    var redbullDailySalesCount = 0
    var miniatureDailySalesCount = 0
    var tapasDailySalesCount = 0
    var sandwichDailySalesCount = 0
    var lastOrderSandwichDailySalesCount = 0
    var snacks150DailySalesCount = 0
    var snacks200DailySalesCount = 0
    var snacks250DailySalesCount = 0
    var snacks400DailySalesCount = 0

    //Tägliche Verkäufe Deals
    var dealSandwichDailySalesCount = 0
    var dealSnackDailySalesCount = 0
    var dealTapasDailySalesCount = 0
    var longdrinkDealDailySalesCount = 0
    var happyDealDailySalesCount = 0
    var dealCoffeeDailySalesCount = 0
    
    //Täglicher Warenkorb
    var täglicherWarenkorbArtikel = [String]()
    var täglicherWarenkorbPreis = [Double]()
    var täglicherWarenkorbCount = [Int]()
    var täglicherEndPrice = Double()
    
    
    // MARK: - Configure Aktuelle Items
    
    func configureItems() {
        
        if kopfhörerWarenkorbCount != 0 {
            appendAktuellerWarenkorb(_name: "Kopfhörer", _artikelCount: kopfhörerWarenkorbCount, _price: 3.5)
        }
        if caprisunWarenkorbCount != 0 {
            appendAktuellerWarenkorb(_name: "Capri-Sun", _artikelCount: caprisunWarenkorbCount, _price: 1.0)
        }
        if softdrinksWarenkorbCount != 0 {
            appendAktuellerWarenkorb(_name: "Softdrinks", _artikelCount: softdrinksWarenkorbCount, _price: 2.5)
        }
        if coffeeWarenkorbCount != 0 {
            appendAktuellerWarenkorb(_name: "Kaffe/Tee", _artikelCount: coffeeWarenkorbCount, _price: 2.0)
        }
        if beerWarenkorbCount != 0 {
            appendAktuellerWarenkorb(_name: "Bier", _artikelCount: beerWarenkorbCount, _price: 3.0)
        }
        if sektWarenkorbCount != 0 {
            appendAktuellerWarenkorb(_name: "Sekt/Wein €5,00", _artikelCount: sektWarenkorbCount, _price: 5.0)
        }
        if wine6WarenkorbCount != 0 {
            appendAktuellerWarenkorb(_name: "Wein €6,00", _artikelCount: wine6WarenkorbCount, _price: 6.0)
        }
        if redbullWarenkorbCount != 0 {
            appendAktuellerWarenkorb(_name: "Red Bull", _artikelCount: redbullWarenkorbCount, _price: 3.0)
        }
        if miniatureWarenkorbCount != 0 {
            appendAktuellerWarenkorb(_name: "Miniaturen", _artikelCount: miniatureWarenkorbCount, _price: 5.0)
        }
        if tapasWarenkorbCount != 0 {
            appendAktuellerWarenkorb(_name: "Tapas", _artikelCount: tapasWarenkorbCount, _price: 6.5)
        }
        if sandwichWarenkorbCount != 0 {
            appendAktuellerWarenkorb(_name: "Sandwich", _artikelCount: sandwichWarenkorbCount, _price: 5.0)
        }
        if lastOrderSandwichWarenkorbCount != 0 {
            appendAktuellerWarenkorb(_name: "Sandwich Last Order", _artikelCount: lastOrderSandwichWarenkorbCount, _price: 3.0)
        }
        if snacks150WarenkorbCount != 0 {
            appendAktuellerWarenkorb(_name: "Snacks €1,50", _artikelCount: snacks150WarenkorbCount, _price: 1.5)
        }
        if snacks200WarenkorbCount != 0 {
            appendAktuellerWarenkorb(_name: "Snacks €2,00", _artikelCount: snacks200WarenkorbCount, _price: 2.0)
        }
        if snacks250WarenkorbCount != 0 {
            appendAktuellerWarenkorb(_name: "Snacks €2,50", _artikelCount: snacks250WarenkorbCount, _price: 2.5)
        }
        if snacks400WarenkorbCount != 0 {
            appendAktuellerWarenkorb(_name: "Snacks €4,00", _artikelCount: snacks400WarenkorbCount, _price: 4.0)
        }
        if dealSandwichWarenkorbCount != 0 {
            appendAktuellerWarenkorb(_name: "Sandwich-Deal", _artikelCount: dealSandwichWarenkorbCount, _price: 6.5)
        }
        if dealSnackWarenkorbCount != 0 {
            appendAktuellerWarenkorb(_name: "Snack Deal", _artikelCount: dealSnackWarenkorbCount, _price: 3.5)
        }
        if dealTapasWarenkorbCount != 0 {
            appendAktuellerWarenkorb(_name: "Tapas Deal", _artikelCount: dealTapasWarenkorbCount, _price: 11.5)
        }
        if longdrinkDealWarenkorbCount != 0 {
            appendAktuellerWarenkorb(_name: "Longdrink Deal", _artikelCount: longdrinkDealWarenkorbCount, _price: 6.5)
        }
        if happyDealWarenkorbCount != 0 {
            appendAktuellerWarenkorb(_name: "Happy Deal", _artikelCount: happyDealWarenkorbCount, _price: 5.5)
        }
        if dealCoffeeWarenkorbCount != 0 {
            appendAktuellerWarenkorb(_name: "Coffee Deal", _artikelCount: dealCoffeeWarenkorbCount, _price: 3.5)
        }
        
    }
    
    func appendAktuellerWarenkorb(_name: String, _artikelCount: Int, _price: Double) {
        aktuellerWarenkorbArtikel.append(_name)
        aktuellerWarenkorbPreis.append(Double(_artikelCount) * _price)
        aktuellerWarenkorbCount.append(_artikelCount)
        aktuellerEndPrice += (Double(_artikelCount) * _price)
    }
    
    func backToSales() {
        aktuellerWarenkorbArtikel.removeAll()
        aktuellerWarenkorbPreis.removeAll()
        aktuellerWarenkorbCount.removeAll()
        aktuellerEndPrice = 0        
    }
    
    
    // MARK: - Sales to Daily Sales
    
    func itemsToDailySales() {
        
        kopfhörerDailySalesCount += kopfhörerWarenkorbCount
        kopfhörerWarenkorbCount = 0
        caprisunDailySalesCount += caprisunWarenkorbCount
        caprisunWarenkorbCount = 0
        softdrinksDailySalesCount += softdrinksWarenkorbCount
        softdrinksWarenkorbCount = 0
        coffeeDailySalesCount += coffeeWarenkorbCount
        coffeeWarenkorbCount = 0
        beerDailySalesCount += beerWarenkorbCount
        beerWarenkorbCount = 0
        sektDailySalesCount += sektWarenkorbCount
        sektWarenkorbCount = 0
        wine6DailySalesCount += wine6WarenkorbCount
        wine6WarenkorbCount = 0
        redbullDailySalesCount += redbullWarenkorbCount
        redbullWarenkorbCount = 0
        miniatureDailySalesCount += miniatureWarenkorbCount
        miniatureWarenkorbCount = 0
        tapasDailySalesCount += tapasWarenkorbCount
        tapasWarenkorbCount = 0
        sandwichDailySalesCount += sandwichWarenkorbCount
        sandwichWarenkorbCount = 0
        lastOrderSandwichDailySalesCount += lastOrderSandwichWarenkorbCount
        lastOrderSandwichWarenkorbCount = 0
        snacks150DailySalesCount += snacks150WarenkorbCount
        snacks150WarenkorbCount = 0
        snacks200DailySalesCount += snacks200WarenkorbCount
        snacks200WarenkorbCount = 0
        snacks250DailySalesCount += snacks250WarenkorbCount
        snacks250WarenkorbCount = 0
        snacks400DailySalesCount += snacks400WarenkorbCount
        snacks400WarenkorbCount = 0
        
        //Tägliche Verkäufe Deals
        dealSandwichDailySalesCount += dealSandwichWarenkorbCount
        dealSandwichWarenkorbCount = 0
        dealSnackDailySalesCount += dealSnackWarenkorbCount
        dealSnackWarenkorbCount = 0
        dealTapasDailySalesCount += dealTapasWarenkorbCount
        dealTapasWarenkorbCount = 0
        longdrinkDealDailySalesCount += longdrinkDealWarenkorbCount
        longdrinkDealWarenkorbCount = 0
        happyDealDailySalesCount += happyDealWarenkorbCount
        happyDealWarenkorbCount = 0
        dealCoffeeDailySalesCount += dealCoffeeWarenkorbCount
        dealCoffeeWarenkorbCount = 0
        
        aktuellerWarenkorbArtikel.removeAll()
        aktuellerWarenkorbPreis.removeAll()
        aktuellerWarenkorbCount.removeAll()
        aktuellerEndPrice = 0
    }
    
    // MARK: - Configure Daily Items
    
    func configureDailyItems() {
        
        if kopfhörerDailySalesCount != 0 {
            appendTäglicherWarenkorb(_name: "Kopfhörer", _artikelCount: kopfhörerWarenkorbCount, _price: 3.5)
        }
        if caprisunDailySalesCount != 0 {
            appendTäglicherWarenkorb(_name: "Capri-Sun", _artikelCount: caprisunDailySalesCount, _price: 1.0)
        }
        if softdrinksDailySalesCount != 0 {
            appendTäglicherWarenkorb(_name: "Softdrinks", _artikelCount: softdrinksDailySalesCount, _price: 2.5)
        }
        if coffeeDailySalesCount != 0 {
            appendTäglicherWarenkorb(_name: "Kaffe/Tee", _artikelCount: coffeeDailySalesCount, _price: 2.0)
        }
        if beerDailySalesCount != 0 {
            appendTäglicherWarenkorb(_name: "Bier", _artikelCount: beerDailySalesCount, _price: 3.0)
        }
        if sektDailySalesCount != 0 {
            appendTäglicherWarenkorb(_name: "Sekt/Wein €5,00", _artikelCount: sektDailySalesCount, _price: 5.0)
        }
        if wine6DailySalesCount != 0 {
            appendTäglicherWarenkorb(_name: "Wein €6,00", _artikelCount: wine6DailySalesCount, _price: 6.0)
        }
        if redbullDailySalesCount != 0 {
            appendTäglicherWarenkorb(_name: "Red Bull", _artikelCount: redbullDailySalesCount, _price: 3.0)
        }
        if miniatureDailySalesCount != 0 {
            appendTäglicherWarenkorb(_name: "Miniaturen", _artikelCount: miniatureDailySalesCount, _price: 5.0)
        }
        if tapasDailySalesCount != 0 {
            appendTäglicherWarenkorb(_name: "Tapas", _artikelCount: tapasDailySalesCount, _price: 6.5)
        }
        if sandwichDailySalesCount != 0 {
            appendTäglicherWarenkorb(_name: "Sandwich", _artikelCount: sandwichDailySalesCount, _price: 5.0)
        }
        if lastOrderSandwichDailySalesCount != 0 {
            appendTäglicherWarenkorb(_name: "Sandwich Last Order", _artikelCount: lastOrderSandwichDailySalesCount, _price: 3.0)
        }
        if snacks150DailySalesCount != 0 {
            appendTäglicherWarenkorb(_name: "Snacks €1,50", _artikelCount: snacks150DailySalesCount, _price: 1.5)
        }
        if snacks200DailySalesCount != 0 {
            appendTäglicherWarenkorb(_name: "Snacks €2,00", _artikelCount: snacks200DailySalesCount, _price: 2.0)
        }
        if snacks250DailySalesCount != 0 {
            appendTäglicherWarenkorb(_name: "Snacks €2,50", _artikelCount: snacks250DailySalesCount, _price: 2.5)
        }
        if snacks400DailySalesCount != 0 {
            appendTäglicherWarenkorb(_name: "Snacks €4,00", _artikelCount: snacks400DailySalesCount, _price: 4.0)
        }
        if dealSandwichDailySalesCount != 0 {
            appendTäglicherWarenkorb(_name: "Sandwich-Deal", _artikelCount: dealSandwichDailySalesCount, _price: 6.5)
        }
        if dealSnackDailySalesCount != 0 {
            appendTäglicherWarenkorb(_name: "Snack Deal", _artikelCount: dealSnackDailySalesCount, _price: 3.5)
        }
        if dealTapasDailySalesCount != 0 {
            appendTäglicherWarenkorb(_name: "Tapas Deal", _artikelCount: dealTapasDailySalesCount, _price: 11.5)
        }
        if longdrinkDealDailySalesCount != 0 {
            appendTäglicherWarenkorb(_name: "Longdrink Deal", _artikelCount: longdrinkDealDailySalesCount, _price: 6.5)
        }
        if happyDealDailySalesCount != 0 {
            appendTäglicherWarenkorb(_name: "Happy Deal", _artikelCount: happyDealDailySalesCount, _price: 5.5)
        }
        if dealCoffeeDailySalesCount != 0 {
            appendTäglicherWarenkorb(_name: "Coffee Deal", _artikelCount: dealCoffeeDailySalesCount, _price: 3.5)
        }
        
    }
    
    func appendTäglicherWarenkorb(_name: String, _artikelCount: Int, _price: Double) {
        täglicherWarenkorbArtikel.append(_name)
        täglicherWarenkorbPreis.append(Double(_artikelCount) * _price)
        täglicherWarenkorbCount.append(_artikelCount)
        täglicherEndPrice += (Double(_artikelCount) * _price)
    }
    
    func removeDailySales() {
        
        kopfhörerDailySalesCount = 0
        caprisunDailySalesCount = 0
        softdrinksDailySalesCount = 0
        coffeeDailySalesCount = 0
        beerDailySalesCount = 0
        sektDailySalesCount = 0
        wine6DailySalesCount = 0
        redbullDailySalesCount = 0
        miniatureDailySalesCount = 0
        tapasDailySalesCount = 0
        sandwichDailySalesCount = 0
        lastOrderSandwichDailySalesCount = 0
        snacks150DailySalesCount = 0
        snacks200DailySalesCount = 0
        snacks250DailySalesCount = 0
        snacks400DailySalesCount = 0
        
        dealSandwichDailySalesCount = 0
        dealSnackDailySalesCount = 0
        dealTapasDailySalesCount = 0
        longdrinkDealDailySalesCount = 0
        happyDealDailySalesCount = 0
        dealCoffeeDailySalesCount = 0
        
        täglicherWarenkorbArtikel.removeAll()
        täglicherWarenkorbPreis.removeAll()
        täglicherWarenkorbCount.removeAll()
        aktuellerWarenkorbArtikel.removeAll()
        aktuellerWarenkorbPreis.removeAll()
        aktuellerWarenkorbCount.removeAll()
        täglicherEndPrice = 0
        aktuellerEndPrice = 0
        
        shiftStarted = false
    }

}
