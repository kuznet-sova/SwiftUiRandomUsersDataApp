//
//  PersonListView.swift
//  SwiftUiRandomUsersDataApp
//
//  Created by Ирина Кузнецова on 04.08.2020.
//  Copyright © 2020 Irina Kuznetsova. All rights reserved.
//

import SwiftUI

struct ContactListView: View {
    let contacts: Contact
    
    var body: some View {
        NavigationView {
//            List(contacts) {
//
//            }
            Text("\(contacts.fullName)")
                .navigationBarTitle("Contact list")
        }
    }
}

struct PersonListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(contacts: Contact.init(name: "Name", surname: "Surname", email: "Email", phoneNumber: "Phone"))
    }
}
