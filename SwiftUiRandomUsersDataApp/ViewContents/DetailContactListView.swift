//
//  DetailContactListView.swift
//  SwiftUiRandomUsersDataApp
//
//  Created by Ирина Кузнецова on 04.08.2020.
//  Copyright © 2020 Irina Kuznetsova. All rights reserved.
//

import SwiftUI

struct DetailContactListView: View {
    let contacts: [Contact]
    
    var body: some View {
        NavigationView {
            List{
                ForEach(contacts, id: \.name) { contact in
                    Section(header: Text("\(contact.fullName)")) {
                        HStack {
                            Image(systemName: "phone")
                                .foregroundColor(.blue)
                            Text("\(contact.phoneNumber)")
                        }
                        
                        HStack {
                            Image(systemName: "tray")
                                .foregroundColor(.blue)
                            Text("\(contact.email)")
                        }
                    }
                }
            }
            .navigationBarTitle("Detail contact list")
        }
    }
}

struct DetailContactListView_Previews: PreviewProvider {
    static var previews: some View {
        DetailContactListView(contacts: [Contact.init(name: "Name", surname: "Surname", email: "Email", phoneNumber: "Phone")])
    }
}
