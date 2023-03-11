//
//  ContentView.swift
//  Lesson-13-Challenge
//
//  Created by Marc Moxey on 2/5/23.
//

import SwiftUI


struct ContentView: View {
    
    @State var totalCredits = 1000
    @State var slotOne = 1
    @State var slotTwo = 1
    @State var slotThree = 1
 
    var body: some View {
        VStack {
            Spacer()
            Text("SwiftUI Slots!")
                .font(.headline)
            Spacer()
            
            Text("Credits:  \(totalCredits)")
            Spacer()
            HStack {
                
                Image("furit" + String(slotOne)).resizable().aspectRatio(contentMode: .fit)
                Image("furit" + String(slotTwo)).resizable().aspectRatio(contentMode: .fit)
                Image("furit" + String(slotThree)).resizable().aspectRatio(contentMode: .fit)
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Spacer()
            Button("Spin", action: {
                
                slotOne = Int.random(in: 1...3)
                slotTwo = Int.random(in: 1...3)
                slotThree = Int.random(in: 1...3)
                
                if (slotOne == slotTwo && slotTwo == slotThree) {
                    totalCredits += 15
                } else {
                    totalCredits -= 5
                }
                
            })
            .padding(.all)
            .background(Color.red)
            .foregroundColor(Color.white)
            .cornerRadius(10)
            Spacer()
        }
        
    }
}
     
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
