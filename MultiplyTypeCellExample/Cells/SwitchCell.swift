//
//  SwitchCell.swift
//  MultiplyTypeCellExample
//
//  Created by demothreen on 13.02.2022.
//

import UIKit

final class SwitchCellItem: CellItem {
  var item: MenuItem

  init(_ item: MenuItem) {
    self.item = item
  }

  func register(for tableview: UITableView) {
    tableview.registerCell(SwitchCell.self)
  }

  func dequeue(for tableview: UITableView, at indexPath: IndexPath) -> UITableViewCell {
    let cell = tableview.dequeueCell(SwitchCell.self, for: indexPath)
    cell.selectionStyle = .none
    cell.configureWith(item)
    return cell
  }
}

class SwitchCell: UITableViewCell {
  private var titleName: UILabel = UILabel()
  var switchView: UISwitch = UISwitch(frame: .zero)

  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    accessoryView = switchView
    tintColor = .black
  }

  func configureWith(_ item: MenuItem, lenght: [String] = [], selected: Int = 0) {
    textLabel!.text = item.title
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
