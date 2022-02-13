//
//  CellItem.swift
//  MultiplyTypeCellExample
//
//  Created by demothreen on 13.02.2022.
//

import UIKit

protocol CellItem: AnyObject {
  func register(for tableview: UITableView)
  func dequeue(for tableview: UITableView, at indexPath: IndexPath) -> UITableViewCell
}
