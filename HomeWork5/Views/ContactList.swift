//
//  ContactList.swift
//  HomeWork5
//
//  Created by Vlad on 17.12.23..
//

import SwiftUI

struct ContactListView: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts) { person in
                NavigationLink(
                    person.fullName,
                    destination: PersonFullName(person: person)
                )
            }
            .listStyle(.plain)
            .navigationBarTitle("Contact List")
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(contacts: Person.getContactList())
    }
}
