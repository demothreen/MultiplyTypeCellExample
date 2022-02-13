//
//  BaseSectionHeaderView.swift
//  MultiplyTypeCellExample
//
//  Created by demothreen on 13.02.2022.
//

import UIKit

class BaseSectionHeaderView: UIView {
  private var title: UILabel = {
    let label = UILabel()
    label.font = UIFont.systemFont(ofSize: 14)
    label.textColor = .gray
    return label
  }()

  init(title: String) {
    super.init(frame: .zero)
    self.title.text = title
    backgroundColor = .lightGray
    setTitle()
  }

  private func setTitle() {
    addSubview(title)
    title.snp.makeConstraints { make in
      make.top.bottom.equalToSuperview().inset(15)
      make.left.equalToSuperview().inset(22)
      make.width.equalToSuperview()
    }
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

