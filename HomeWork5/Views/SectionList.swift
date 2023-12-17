//
//  SectionList.swift
//  HomeWork5
//
//  Created by Vlad on 17.12.23..
//

import SwiftUI

struct SectionsList: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts) { person in
                Section(header: Text(person.fullName).font(.headline)) {
                    Label(person.phoneNumber, systemImage: "phone")
                    Label(person.email, systemImage: "tray")
                }
            }
            .listStyle(.plain)
            .navigationBarTitle("Contact List")
        }
    }
}

struct SectionsContactList_Previews: PreviewProvider {
    static var previews: some View {
        SectionsList(contacts: Person.getContactList())
    }
}
