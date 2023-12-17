//
//  Person.swift
//  HomeWork5
//
//  Created by Vlad on 17.12.23..
//

import SwiftUI

struct PersonFullName: View {
    
    let person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill.checkmark")
                    .resizable()
                    .frame(width: 135, height: 100)
                    .padding()
                Spacer()
            }
                
            Label(person.phoneNumber, systemImage: "phone")
            Label(person.email, systemImage: "tray")
        }
        .navigationBarTitle(person.fullName)
    }
}

struct ContactDetails_Previews: PreviewProvider {
    static var previews: some View {
        PersonFullName(person: Person.getContactList().first!)
    }
}
