//
//  Onboarding.swift
//  LittleLemon
//
//  Created by Andrew Park on 6/28/24.
//

import SwiftUI

let kFirstName = "first name key"
let kLastName = "last name key"
let kEmail = "email key"
let kIsLoggedIn = "kIsLoggedIn key"

struct Onboarding: View {
    @State var firstName = ""
    @State var lastName = ""
    @State var email = ""

    @State var isLoggedIn = false
    
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: Home(), isActive: $isLoggedIn) {
                    EmptyView()
                }
                
                TextField("First Name", text: $firstName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                TextField("Last Name", text: $lastName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                TextField("Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button("Register") {
                    if !firstName.isEmpty && !lastName.isEmpty && !email.isEmpty {
                        // MARK: if isValidEmail(email) -> check if email is valid before storing the details and navigating to Home screen
                        UserDefaults.standard.set(firstName, forKey: kFirstName)
                        UserDefaults.standard.set(lastName, forKey: kLastName)
                        UserDefaults.standard.set(email, forKey: kEmail)
                        UserDefaults.standard.set(isLoggedIn, forKey: kIsLoggedIn)
                        
                        // Navigation to HomeScreen()
                        isLoggedIn = true
                        
                    } else {
                        // Handle the case when any field is empty (i.e. show an alert)
                    }
                }
                .background(Color(.systemYellow))
                
                
            }
            .onAppear() {
                if UserDefaults.standard.bool(forKey: kIsLoggedIn) {
                    isLoggedIn = true
                    
                }
            }
        }
    }
}

#Preview {
    Onboarding()
}
