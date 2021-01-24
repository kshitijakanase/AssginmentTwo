//
//  ViewController.swift
//  AssginmentTwo
//
//  Created by Coditas on 23/01/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    let urlString = "https://mobiletest-hackathon.herokuapp.com/getdata/"
    func jsonDownload (){
        let url = URL(string: urlString )
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if data != nil{
                let decoder = JSONDecoder()
                do{
                    let userInformation = try decoder.decode(products.self, from: data!)
                    print(userInformation)
                }
                catch{
                    print("ERROR",error.localizedDescription)
                }
            }else{
                print("Data is nil")
            }
        }.resume()
    }
    @IBOutlet var collectionView:UICollectionView!
    
}
extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:  "CollectionViewCell", for: indexPath) as! CollectionViewCell
        //cell.productImage
        return cell
    }
    
    
}

