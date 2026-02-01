import SwiftUI

@main
struct FoundationModelsTripPlannerApp: App {
    private var modelData = ModelData.shared

    var body: some Scene {
        WindowGroup {
            LandmarksView()
                .environment(modelData)
        }
    }
}
