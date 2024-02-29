//
//  String+Ext.swift
//  UNCropperImage
//
//  Created by Mạnh Lương on 08/02/2023.
//

import UIKit

extension String {
    func width(withFont font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: CGFloat.greatestFiniteMagnitude, height: CGFloat.greatestFiniteMagnitude)
        let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [.font: font], context: nil)

        return ceil(boundingBox.width)
    }
}
