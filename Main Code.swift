//
//  App For Warehousing Building
//
//
//  Created by Dhruv on 15/01/24.
//

import SwiftUI

enum Screen
{
    case home
    case card
    case settings
    case signup
}

final class Tabroot : ObservableObject {
    
    @Published var screen : Screen = .home
    
    func change( to screen : Screen)
    {
        self.screen = screen
    }

}
@main
struct testappApp: App {
    
    @StateObject var root = Tabroot()
    var body: some Scene {
        WindowGroup {
            Login_Screen(root : Tabroot(), signuppage: false)
            //Directory_Setup()
        }
    }
}
