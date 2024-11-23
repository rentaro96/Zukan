//
//  ViewController.swift
//  Zukan
//
//  Created by 鈴木廉太郎 on 2024/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var detailsLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    var animalArray: [Animal] = [
        Animal(name:"キリン",details:"アフリカのサバンナに住んでいる。舌がとても高い。頭に生えた角も特徴的。", imageName: "kirin.jpg"),
        Animal (name:"オウサマペンギン",details:"キングペンギンとも呼ばれる。南極の島々に生息し、魚類やイカなどを食べる。", imageName:"penguin.jpg"),
        Animal (name:"カンガルー",details:"オーストラリア固有の動物で、お腹に袋を持つ有袋類の一種。走るのが速い。",imageName:"kangaroo.jpg"),
        ]
    var index: Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func next() {
        
        if index == animalArray.count - 1 {
            index = 0
        }else {
            index  += 1
        }
        setUI()
    }
    @IBAction func back() {
        if index == 0 {
            index = animalArray.count - 1
        } else {
            index -= 1
            
        }
        setUI()
        
    }
    
    func setUI(){
        imageView.image = animalArray[index].getImage()
        nameLabel.text = animalArray[index].name
        detailsLabel.text = animalArray[index].details
        
    }


}

