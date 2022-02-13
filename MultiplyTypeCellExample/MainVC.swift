//
//  ViewController.swift
//  MultiplyTypeCellExample
//
//  Created by demothreen on 13.02.2022.
//

import UIKit
import SnapKit

class MainVC: UIViewController {
  private var tableView: UITableView = BaseTableView(viewModel: BaseVM())

  override func viewDidLoad() {
    super.viewDidLoad()
    title = "Main screen"
    setTableView()
  }

  private func setTableView() {
    view.addSubview(tableView)
    tableView.snp.makeConstraints { $0.edges.equalToSuperview() }
  }
}
