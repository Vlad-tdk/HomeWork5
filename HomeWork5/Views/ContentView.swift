//
//  ContentView.swift
//  HomeWork5
//
//  Created by Vlad on 17.12.23..
//

import SwiftUI

struct ContentView: View {
    
    private let contacts = Person.getContactList()
    
    var body: some View {
        TabView {
            ContactListView(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("Contacts")
                }
            
            SectionsList(contacts: contacts)
                .tabItem {
                    Image(systemName: "phone.arrow.up.right.circle")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
