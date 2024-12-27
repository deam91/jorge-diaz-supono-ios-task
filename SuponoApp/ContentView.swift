//
//  ContentView.swift
//  SuponoApp
//
//  Created by Deam on 26/12/24.
//

import SwiftUI

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect, byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                // Background color and image
                Color(red: 0.2, green: 0.1, blue: 0.3)
                    .ignoresSafeArea()

                Image("background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()

                VStack(spacing: 0) {
                    Spacer()

                    VStack(spacing: 32) {
                        // Title and subtitle
                        VStack(spacing: 8) {
                            Text("Are you ready for\nyour test?")
                                .font(.system(size: 32, weight: .bold))
                                .multilineTextAlignment(.center)
                                .foregroundColor(.white)

                            Text("Start now by creating your profile and connect!")
                                .font(.system(size: 16))
                                .foregroundColor(.white.opacity(0.7))
                        }

                        // Continue button
                        HStack {
                            Spacer()
                            NavigationLink(destination: BirthdayView()) {
                                Text("Continue")
                                    .font(.system(size: 17, weight: .semibold))
                                    .padding(.horizontal, 120)
                                    .frame(height: 56)
                                    .background(.white)
                                    .foregroundColor(.black)
                                    .cornerRadius(28)
                            }
                            Spacer()
                        }
                        .padding(.bottom, 32)
                    }
                    .padding(.top, 32)
                    .frame(width: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 28)
                            .cornerRadius(28, corners: [.topLeft, .topRight])  // Only round top corners
                            .foregroundColor(.black)
                    )
                }
                .ignoresSafeArea()
            }
        }
    }
}

#Preview {
    ContentView()
}
