//
//  UITableView.swift
//  MultiplyTypeCellExample
//
//  Created by demothreen on 13.02.2022.
//

import UIKit

extension UITableView {
  func registerCell<Cell: UITableViewCell>(_ cell: Cell.Type) {
    register(Cell.self, forCellReuseIdentifier: reuseIdentifier(for: cell))
  }

  private func reuseIdentifier<Cell: UITableViewCell>(for cell: Cell.Type) -> String {
    String(describing: cell)
  }

  func dequeueCell<Cell: UITableViewCell>(_ cell: Cell.Type, for indexPath: IndexPath) -> Cell {
    return dequeueReusableCell(withIdentifier: String(describing: cell), for: indexPath) as! Cell
  }
}
