//
//  FructusApp.swift
//  Fructus
//
//  Created by Kasthuri Tandavarayane on 9/11/2023.
//

import SwiftUI

@main
struct FructusApp: App {
    // isOnboarding" is a key, used to store the bool value
    
    @AppStorage("isOnboarding") var isOnboarding = true
    
    var body: some Scene {
        
        WindowGroup {
            
            if isOnboarding {
               OnboardingView()
            } 
            else{
                ContentView()
                
            }
        }
    }
}
