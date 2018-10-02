//
//  CPUTableViewCell.swift
//  Gear Shop Management
//
//  Created by Huy Trinh Duc on 10/2/18.
//  Copyright © 2018 Huy Trinh Duc. All rights reserved.
//

import UIKit
import Nuke

class CPUTableViewCell: UITableViewCell {

    
    @IBOutlet weak var mImgCPU: UIImageView!
    
    @IBOutlet weak var mLabelCPUName: UILabel!
    
    @IBOutlet weak var mLabelCPUPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setdataCPU(data: CPUModel) {
        mLabelCPUName.text = data.name
        mLabelCPUPrice.text = String("\(data.price) VND")
        mImgCPU.image = UIImage(named: data.url_image)
        let request = ImageRequest(urlRequest: URLRequest(url: URL(string: data.url_image)!))
        Nuke.loadImage(with: request, into: mImgCPU)
    }
    
}
