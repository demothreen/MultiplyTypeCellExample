//
//  UITableViewCell.swift
//  MultiplyTypeCellExample
//
//  Created by demothreen on 13.02.2022.
//

import UIKit

extension UITableViewCell {
  func setDisclosureIndicator() {
    accessoryType = .disclosureIndicator
    let imgView = UIImageView(frame: CGRect(x: 0, y: 0, width: 15, height: 40))
    imgView.contentMode = .scaleAspectFit
    imgView.image = UIImage(named: "shevronRight")?.withRenderingMode(.alwaysTemplate)
    imgView.tintColor = .black
    accessoryView = imgView
  }
}
