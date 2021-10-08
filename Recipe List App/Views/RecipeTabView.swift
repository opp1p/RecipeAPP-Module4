//
//  RecipeTabView.swift
//  Recipe List App
//
//  Created by Filippo Monti on 06/10/21.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        TabView{
          
            Text("TabView").tabItem {
                VStack{
                    Image(systemName: "star.fill")
                    Text("Featured")
                }
            }
            
            RecipeListView().tabItem {
                VStack{
                    Image(systemName: "list.dash")
                    Text("List")
                }
            }
            
        }
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
