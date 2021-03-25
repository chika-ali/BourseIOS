//
//  ContentView.swift
//  Bourse
//
//  Created by    CHIKA Ali on 11/03/2021.
//

import SwiftUI

struct ContentView: View {
    let x:[BourseModdel]
    var body: some View {
        
        
        List(x){variable in
            HStack{
                VStack(alignment: .leading, spacing: 6){
                    Text(variable.code)
                        
                        Text(variable.name)
                            
                        .foregroundColor(Color.secondary)
                        //.multilineTextAlignment(.)
                    Spacer()
                        
                    
                }
               Spacer()
                Image(variable.image)
                    .resizable()
                    .aspectRatio(contentMode:.fit)
                    .frame(width: 70, height: 70 )
                //Spacer()
                
                    
                    
                
                VStack{
                    Text("\(variable.value,specifier: "%.2f")")
                        .padding()
                    if variable.variation > 0
                    {
                    Text("\(variable.variation,specifier: "%+.1f")")
                        .foregroundColor(.green)
                    }
                    else {
                        Text("\(variable.variation,specifier: "%.2f")")
                            .foregroundColor(.red)
                        
                    }
                }
                
            }
            
        }
        //.padding()
        }
            
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(x:tableauBourse)
                .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
                
                
            ContentView(x:tableauBourse)
            ContentView(x:tableauBourse)
        }
    }
}
