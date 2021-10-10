//
//  RecipeFeaturedView.swift
//  Recipe List App
//
//  Created by Filippo Monti on 08/10/21.
//

import SwiftUI

struct RecipeFeaturedView: View {
    @EnvironmentObject var model:RecipeModel
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            Text("Featured Recipes").font(.largeTitle).fontWeight(.bold).padding(.leading, 10)
        GeometryReader { geo in
            TabView{
                ForEach (0..<model.recipes.count) { index in
                    if model.recipes[index].featured {
                    VStack(alignment: .leading){
                        
                        ZStack{
                            Rectangle().foregroundColor(.white)
                            VStack{
                            Image(model.recipes[index].image).resizable().aspectRatio(contentMode: .fill)
                        Text(model.recipes[index].name).foregroundColor(.black).padding(5)
                    }
                }.frame(width: geo.size.width - 40, height: geo.size.height - 190, alignment: .center).clipped().cornerRadius(10).shadow(radius: 10, x:-5 , y:5)
                        Text("Highlights").font(.headline)
                        Text("xxxx, xxxx")
                        Text("Time").font(.headline)
                        Text("xxxx, xxxx")
                        
                            }
                        }
                    }
            }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic)).indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            }
        }
    }
}

struct RecipeFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeaturedView().environmentObject(RecipeModel())
    }
}
