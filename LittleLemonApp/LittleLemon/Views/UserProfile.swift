//
//  UserProfile.swift
//  LittleLemon
//
//  Created by Andrew Park on 6/28/24.
//

import SwiftUI

struct UserProfile: View {
    let firstName = UserDefaults.standard.string(forKey: kFirstName) ?? ""
    let lastName = UserDefaults.standard.string(forKey: kLastName) ?? ""
    let email = UserDefaults.standard.string(forKey: kEmail) ?? ""
    
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack {
            Text("Personal Information")
                .font(.headline)

            Image("profile-image-placeholder")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .padding()
            
            Text("First name: \(firstName)")
            
            Text("Last name: \(lastName)")
            
            Text("Email: \(email)")

            Button("Logout") {
                UserDefaults.standard.set(false, forKey: kIsLoggedIn)
                self.presentation.wrappedValue.dismiss()
            }
            Spacer()
        }
    }
}

#Preview {
    UserProfile()
}
