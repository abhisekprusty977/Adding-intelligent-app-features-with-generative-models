import SwiftUI

struct LandmarkHorizontalListView: View {
    let landmarkList: [Landmark]

    var body: some View {
        GeometryReader { geometry in
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: FoundationModelsTripPlannerApp.Padding.standard) {
                    ForEach(landmarkList) { landmark in
                        NavigationLink(destination: TripPlanningView(landmark: landmark)) {
                            LandmarkListItemView(landmark: landmark)
                                .frame(width: geometry.size.height * 1.4, height: geometry.size.height)
                        }
                        .buttonStyle(.plain)
                    }
                }
                .safeAreaPadding(FoundationModelsTripPlannerApp.Padding.standard)
            }
            .ignoresSafeArea()
        }
    }
}
