import SwiftUI

struct LandmarkListItemView: View {
    let landmark: Landmark

    var body: some View {
        GeometryReader { geometry in
            Image(landmark.thumbnailImageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: geometry.size.width, height: geometry.size.height)
                .overlay {
                    ReadabilityRoundedRectangle()
                }
                .clipped()
                .cornerRadius(16.0)
                .overlay(alignment: .bottom) {
                    Text(landmark.name)
                        .font(.title3)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .padding(.bottom, 8.0)
                }
        }
    }
}
