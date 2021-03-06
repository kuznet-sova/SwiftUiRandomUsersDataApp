//
//  ContentView.swift
//  SwiftUiRandomUsersDataApp
//
//  Created by Ирина Кузнецова on 04.08.2020.
//  Copyright © 2020 Irina Kuznetsova. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    private let contacts = Contact.getContactList()
    
    var body: some View {
        TabView {
            ContactListView(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Contact list")
            }
            
            DetailContactListView(contacts: contacts)
                .tabItem {
                    Image(systemName: "rectangle.stack.person.crop")
                    Text("Detail contact list")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
