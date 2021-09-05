//
//  ContentView.swift
//  MySwiftUIApp
//
//  Created by Decagon on 5.9.21.
//

import SwiftUI

struct Data: Identifiable {
    var id = UUID()
    let title: String
    let imageName: String
    let imageDescription: String
    let imageTakenDate: String
}

struct ContentView: View {
    var items = [Data]()
    var body: some View {
        NavigationView {
            List(items) {data in
                NavigationLink(destination: DetailView(data: data)) {
                    HStack {
                        Image(data.imageName)
                            .resizable().frame(width: 100, height: 100, alignment: .center)
                            .cornerRadius(10.0)
                        Text(data.title)
                            .padding()
                            .foregroundColor(.blue)
                            .font(.title2)
                    }
                }
            }
            .navigationBarTitle("Books")
        }
    }
}

struct DetailView: View {
    var data: Data
    var body: some View {
        VStack{
            Image(data.imageName)
                .resizable().frame(width: 400, height: 400, alignment: .center)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(3.0)
            Text(data.imageDescription)
                .padding(5)
                .font(.title3)
            
            Spacer()
            
            Text(data.imageTakenDate)
                .padding(5)
            
        }
        .navigationBarTitle(data.title)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(items: [
            Data(title: "Earth", imageName: "Earth", imageDescription: "The earth book, The Clare book, The Clare book,The Clare book,The Clare book", imageTakenDate: "5/9/2021"),
            Data(title: "Clare", imageName: "Clare", imageDescription: "The Clare book", imageTakenDate: "5/9/2021"),
            Data(title: "Cosmic", imageName: "Cosmic", imageDescription: "The Cosmic book", imageTakenDate: "5/9/2021"),
            Data(title: "Elon", imageName: "Elon", imageDescription: "The Elon book", imageTakenDate: "5/9/2021"),
            Data(title: "Fire", imageName: "Fire", imageDescription: "The Fire book", imageTakenDate: "5/9/2021"),
            Data(title: "Foreign", imageName: "Foreign", imageDescription: "The Foreign book", imageTakenDate: "5/9/2021"),
            Data(title: "Freebie", imageName: "Freebie", imageDescription: "The Freebie book", imageTakenDate: "5/9/2021"),
            Data(title: "Great", imageName: "Great", imageDescription: "The Great book", imageTakenDate: "5/9/2021"),
            Data(title: "Lake", imageName: "Lake", imageDescription: "The Lake book", imageTakenDate: "5/9/2021"),
            Data(title: "Nikos", imageName: "Nikos", imageDescription: "The Nikos book", imageTakenDate: "5/9/2021"),
            Data(title: "What", imageName: "What", imageDescription: "The What book", imageTakenDate: "5/9/2021")
        ])
    }
}
