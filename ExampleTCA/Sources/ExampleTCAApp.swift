
import ComposableArchitecture
import SwiftUI

@main
struct ExampleTCAApp: App {
    
    let store: StoreOf<Feature> = .init(initialState: .init(), reducer: { Feature() })
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

@Reducer
struct Feature: Reducer {}
