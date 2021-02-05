//
//  ContentView.swift
//  LoginUi
//
//  Created by MacBook on 05/02/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("assset login UI")
            .resizable()
            .edgesIgnoringSafeArea(.all)
            
            VStack{
                HandleView()
                FormBox()
            }
        }
    }
}

struct HandleView : View {
    var body: some View{
        VStack{
            Image(systemName: "tv")
            .resizable()
            .frame(width: 100, height: 100)
            .background(Color.black)
            .foregroundColor(Color.orange)
            .padding()
            .background(Color.black)
            .cornerRadius(20)
            
            
            Text("Hello User")
            .foregroundColor(Color.white)
            .bold()
            .padding(5)
        }
    }
}

struct FormBox : View {
    @State var username : String = ""
    @State var password : String = ""
    
    var body: some View{
        VStack (alignment: .leading){
            Text ("Username").font(.callout).bold()
            TextField("Username", text : $username )
                .textFieldStyle(RoundedBorderTextFieldStyle())
                
            
            Text ("Password").font(.callout).bold()
            SecureField("Password", text: $password)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            
            
            Button(action: {print("Hello Button")}) { Text("Button")
            }
                //  design button
            .padding()
            .background(Color.gray)
            .foregroundColor(Color.white)
            .cornerRadius(10)
            
        }
//        Design Vstack
        .padding(.all, 20)
        .background(Color.orange)
        .cornerRadius(10)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
