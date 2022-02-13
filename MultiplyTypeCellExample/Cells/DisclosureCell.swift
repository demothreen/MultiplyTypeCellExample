//
//  File.swift
//  MultiplyTypeCellExample
//
//  Created by demothreen on 13.02.2022.
//

import UIKit

final class DisclosureCellItem: CellItem {
  var item: MenuItem

  init(_ item: MenuItem) {
    self.item = item
  }

  func register(for tableview: UITableView) {
    tableview.registerCell(DisclosureCell.self)
  }

  func dequeue(for tableview: UITableView, at indexPath: IndexPath) -> UITableViewCell {
    let cell = tableview.dequeueCell(DisclosureCell.self, for: indexPath)
    cell.selectionStyle = .none
    cell.configureWith(item)
    return cell
  }
}

class DisclosureCell: UITableViewCell {
  internal var titleName: UILabel = UILabel()

  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    setDisclosureIndicator()
    tintColor = .black
  }

  func configureWith(_ item: MenuItem) {
    textLabel!.text = item.title
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
