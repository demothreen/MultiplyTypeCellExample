//
//  BaseVM.swift
//  MultiplyTypeCellExample
//
//  Created by demothreen on 13.02.2022.
//

import Foundation

class BaseVM {
  var sections: [MenuSection] = [
    MenuSection(
      title: "Cell's header first",
      items: [
        DisclosureCellItem(MenuItem(title: "first cell")),
        SwitchCellItem(MenuItem(title: "second cell")),
        DisclosureCellItem(MenuItem(title: "another cell"))
      ]
    ),
    MenuSection(
      title: "Cell's header second",
      items: [
        DisclosureCellItem(MenuItem(title: "first cell")),
        DisclosureCellItem(MenuItem(title: "second cell"))
      ]
    )
  ]
}
