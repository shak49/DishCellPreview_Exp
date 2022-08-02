//
//  DishCell.swift
//  DishCellPreview_Exp
//
//  Created by Shak Feizi on 8/2/22.
//

import Foundation
import SwiftUI


struct DishCell: View {
    var dish: Dish
    
    var body: some View {
        HStack {
            Image(dish.imageURL)
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
            VStack(alignment: .leading) {
                Text(dish.name)
                Text(String(format: "$%.2f", dish.price))
                    .foregroundColor(.red)
            }
        }
        .padding(5)
    }
}

struct DishCell_Preview: PreviewProvider {
    static var previews: some View {
        DishCell(dish: Dish.all()[0])
            .previewLayout(.sizeThatFits)
            .environment(\.sizeCategory, .extraLarge)
            //.previewDevice("iPhone SE")
            .colorScheme(.dark)
        
        // Dynamic Font Sizes
//        Group {
//            DishCell()
//                .previewLayout(.sizeThatFits)
//                .environment(\.sizeCategory, .extraSmall)
//            DishCell()
//                .previewLayout(.sizeThatFits)
//                .environment(\.sizeCategory, .extraLarge)
//            DishCell()
//                .previewLayout(.sizeThatFits)
//                .environment(\.sizeCategory, .extraExtraLarge)
//            DishCell()
//                .previewLayout(.sizeThatFits)
//                .environment(\.sizeCategory, .extraExtraExtraLarge)
//        }
    }
}
