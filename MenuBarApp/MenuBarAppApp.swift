//
//  MenuBarAppApp.swift
//  MenuBarApp
//
//  Created by Atalias Raniel on 02/12/25.
//

import SwiftUI

@main
struct MenuBarApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        Settings {
            EmptyView()
        }
    }
}
