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
        ContactListView(contacts: contacts)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
