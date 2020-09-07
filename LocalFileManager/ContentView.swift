//
//  ContentView.swift
//  LocalFileManager
//
//  Created by Kyl Chiang on 2020/9/7.
//  Copyright © 2020 Play4Act Studio. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var recipeInfo: RecipeInfo
    
    var body: some View {
        List(recipeInfo.pizzaList) { pizza in
            VStack(alignment: .leading, spacing: 8) {
                Text("\(pizza.title)")
                    .font(.headline)
                Text("\(pizza.dataDescription)")
                    .font(.body)
                Text("\(pizza.price)")
                    .font(.subheadline)
                    .bold()
                    .foregroundColor(Color.red)
            }
        }.onAppear(perform: setUI)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(RecipeInfo())
    }
}

extension ContentView {
    private func setUI() {
        if let result = LocalFileManager.getDummyData(fileName: "pizzaDummy") {
            if result.code == 200, let pizzas = result.data {
                recipeInfo.pizzaList = pizzas
            }
        }
    }
}
