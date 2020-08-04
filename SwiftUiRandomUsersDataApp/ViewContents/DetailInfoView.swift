//
//  DetailInfoView.swift
//  SwiftUiRandomUsersDataApp
//
//  Created by Ирина Кузнецова on 04.08.2020.
//  Copyright © 2020 Irina Kuznetsova. All rights reserved.
//

import SwiftUI

struct DetailInfoView: View {
    let contacts: Contact
    
    var body: some View {
        Form {
            Text("Phone: \(contacts.phoneNumber)")
            Text("Email: \(contacts.email)")
        }
        .navigationBarTitle("\(contacts.fullName)", displayMode: .inline)
    }
}

struct DetailInfoView_Previews: PreviewProvider {
    static var previews: some View {
        DetailInfoView(contacts: Contact.init(name: "Name", surname: "Surname", email: "Email", phoneNumber: "Phone"))
    }
}
