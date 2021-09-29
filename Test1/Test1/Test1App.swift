//
//  Test1App.swift
//  Test1
//
//  Created by FOI on 29.08.2021..
//

import SwiftUI

@main
struct Test1App: App {
    var body: some Scene {
        if #available(iOS 14.0, *) {
            WindowGroup {
                ContentView()
            }
        } else {
            // Fallback on earlier versions
        }
    }
}
