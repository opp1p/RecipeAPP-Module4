//
//  ContentView.swift
//  Recipe List App
//
// 
//

import SwiftUI

struct RecipeListView: View {
    
    // Reference the view model
    @EnvironmentObject var model:RecipeModel
    
    var body: some View {
            
            NavigationView {
                VStack(alignment: .leading){
                    Text("All Recipes")
                        .font(.largeTitle).fontWeight(.bold)
                
                        ScrollView{
                        LazyVStack(alignment: .leading){
                                ForEach(model.recipes) { r in
                                    NavigationLink(
                                        destination: RecipeDetailView(recipe:r),
                                        label: {
                            // MARK: Row item
                            HStack(spacing: 20.0) {
                                Image(r.image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 50, height: 50, alignment: .center)
                                    .clipped()
                                    .cornerRadius(5)
                                Text(r.name).foregroundColor(.black)
                            }
                            
                        })
                        }
                    }
                }.navigationBarHidden(true)
                }.padding(.leading, 10)
            }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView().environmentObject(RecipeModel())
    }
}
