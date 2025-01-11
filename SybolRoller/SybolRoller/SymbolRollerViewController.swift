//
//  SymbolRollerViewController.swift
//  SybolRoller
//
//  Created by YangJeongMu on 12/31/24.
//

import UIKit

class SymbolRollerViewController: UIViewController {
    
    let symbols: [String] = ["sun.min", "moon", "cloud", "wind", "snowflake"]
    
    @IBOutlet weak var imageView: UIImageView!

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reload()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    func reload() {
        let symbol = symbols.randomElement()!
        imageView.image = UIImage(systemName: symbol)
        label.text = symbol
    }
    @IBAction func buttonTapped(_ sender: Any) {
        reload()

    }
}
