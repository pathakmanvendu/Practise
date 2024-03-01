//
//  Forms.swift
//  Practise
//
//  Created by Manvendu Pathak on 27/02/24.
//

import SwiftUI

struct Forms: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var address = Address()
    @State private var address2 = Address()
    @State private var lessThanTwo = false
    @State private var username = ""
    @State private var password = ""
    var body: some View {
        NavigationStack {
            Form {
                Section("Names"){
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                }
                
                Section("Current Adress"){
                    TextField("Steet Address", text: $address.streat)
                    TextField("City", text: $address.city)
                    TextField("Postal Code", text: $address.postalCode)
                }
                
                Toggle(isOn: $lessThanTwo){
                    Text("Have you lived here for 2+ years:")
                    
                }
                
                if !lessThanTwo{
                    Section("Previous Address"){
                        TextField("Street Address", text: $address2.streat)
                        TextField("City", text: $address2.city)
                        TextField("Postal Code", text: $address2.postalCode)
                    }
                }
                
                Section {
                    TextField("Create Username", text: $username)
                    TextField("Create Password", text: $password)
                }
            }
            .navigationTitle("Sign Up")
        }
    }
}

struct Forms_Previews: PreviewProvider {
    static var previews: some View {
        Forms()
    }
}

struct Address {
    var streat: String  = ""
    var city: String = ""
    var postalCode: String = ""
}
