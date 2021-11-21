//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Søren Nielsen on 16/11/2021.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMenoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
