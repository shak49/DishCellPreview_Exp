//
//  DishCell.swift
//  DishCellPreview_Exp
//
//  Created by Shak Feizi on 8/2/22.
//

import Foundation
import SwiftUI


struct DishCell: View {
    
    var body: some View {
        HStack {
            Image("001")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
            VStack(alignment: .leading) {
                Text("Vegie Pizza")
                Text("$15")
            }
        }
        .padding()
    }
}

struct DishCell_Preview: PreviewProvider {
    static var previews: some View {
        DishCell()
            .previewLayout(.sizeThatFits)
    }
}
