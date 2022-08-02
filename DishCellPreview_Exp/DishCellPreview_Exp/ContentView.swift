//
//  ContentView.swift
//  DishCellPreview_Exp
//
//  Created by Shak Feizi on 8/2/22.
//

import SwiftUI

struct ContentView: View {
    let dishes = Dish.all()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(dishes, id: \.self) { dish in
                    DishCell(dish: dish)
                }
            }
            .listStyle(.plain)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .colorScheme(.dark)
    }
}
