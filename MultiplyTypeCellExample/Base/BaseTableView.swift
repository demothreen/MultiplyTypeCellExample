//
//  BaseTableView.swift
//  MultiplyTypeCellExample
//
//  Created by demothreen on 13.02.2022.
//

import UIKit

class BaseTableView: UITableView, UITableViewDataSource, UITableViewDelegate {
  private let sectionHeight: CGFloat = 40.0
  private var viewModel: BaseVM

  init(viewModel: BaseVM) {
    self.viewModel = viewModel
    super.init(frame: .zero, style: .plain)
    self.setUI()
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  private func setUI() {
    dataSource = self
    delegate = self
    viewModel.sections.forEach { block in
      block.items.forEach { $0.register(for: self) }
    }
  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return viewModel.sections[section].items.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let item = viewModel.sections[indexPath.section].items[indexPath.row]
    return item.dequeue(for: tableView, at: indexPath)
  }

  func numberOfSections(in tableView: UITableView) -> Int {
    return viewModel.sections.count
  }

  func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    return BaseSectionHeaderView(title: viewModel.sections[section].title.uppercased())
  }

  func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    return sectionHeight
  }
}
