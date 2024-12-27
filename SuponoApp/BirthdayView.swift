import SwiftUI

struct BirthdayView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var day = ""
    @State private var month = ""
    @State private var year = ""

    var body: some View {
        ZStack {
            // Background color and image
            Color(red: 0.2, green: 0.1, blue: 0.3)
                .ignoresSafeArea()

            // Move VStack to front
            VStack(spacing: 32) {
                // Header
                HStack {
                    Button(action: { dismiss() }) {
                        Image(systemName: "xmark")
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundColor(.white)
                            .frame(width: 44, height: 44)
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                    .stroke(Color.white.opacity(0.2), lineWidth: 1)
                            )
                    }

                    Spacer()

                    Text("25%")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(.white)
                        .frame(width: 44, height: 44)
                        .overlay(
                            Circle()
                                .stroke(Color.white.opacity(0.2), lineWidth: 1)
                        )
                }
                .padding(.horizontal, 16)

                VStack(spacing: 24) {
                    Text("When's your\nbirthday?")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 32, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.horizontal, 24)

                    // Date fields
                    HStack(spacing: 16) {
                        VStack {
                            TextField("", text: $day)
                                .keyboardType(.numberPad)
                                .textFieldStyle(.plain)
                                .multilineTextAlignment(.center)
                                .font(.system(size: 32, weight: .bold))
                                .foregroundColor(.white)
                                .frame(width: 80, height: 80)
                                .background(Color.black.opacity(0.3))
                                .cornerRadius(16)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 16)
                                        .stroke(Color.white.opacity(0.4), lineWidth: 1)
                                )

                            Text("Day")
                                .font(.system(size: 15))
                                .foregroundColor(.white.opacity(0.8))
                        }

                        VStack {
                            TextField("", text: $month)
                                .keyboardType(.numberPad)
                                .textFieldStyle(.plain)
                                .multilineTextAlignment(.center)
                                .font(.system(size: 32, weight: .bold))
                                .foregroundColor(.white)
                                .frame(width: 80, height: 80)
                                .background(Color.black.opacity(0.3))
                                .cornerRadius(16)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 16)
                                        .stroke(Color.white.opacity(0.4), lineWidth: 1)
                                )

                            Text("Month")
                                .font(.system(size: 15))
                                .foregroundColor(.white.opacity(0.8))
                        }

                        VStack {
                            TextField("", text: $year)
                                .keyboardType(.numberPad)
                                .textFieldStyle(.plain)
                                .multilineTextAlignment(.center)
                                .font(.system(size: 32, weight: .bold))
                                .foregroundColor(.white)
                                .frame(width: 120, height: 80)
                                .background(Color.black.opacity(0.3))
                                .cornerRadius(16)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 16)
                                        .stroke(Color.white.opacity(0.4), lineWidth: 1)
                                )

                            Text("Year")
                                .font(.system(size: 15))
                                .foregroundColor(.white.opacity(0.8))
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 24)
                }
                Spacer()
            }
            .zIndex(1)  // Ensure VStack is on top

//            Image("background")
//                .resizable()
//                .aspectRatio(contentMode: .fill)
//                .ignoresSafeArea()
//                .zIndex(0)
        }
        .navigationBarHidden(true)
    }

    private func letters(for number: Int) -> String {
        let letterMap = [
            2: "ABC", 3: "DEF", 4: "GHI", 5: "JKL",
            6: "MNO", 7: "PQRS", 8: "TUV", 9: "WXYZ",
        ]
        return letterMap[number] ?? ""
    }

    private func appendDigit(_ digit: String) {
        if day.count < 2 {
            day += digit
        } else if month.count < 2 {
            month += digit
        } else if year.count < 4 {
            year += digit
        }
    }

    private func deleteDigit() {
        if year.count > 0 {
            year.removeLast()
        } else if month.count > 0 {
            month.removeLast()
        } else if day.count > 0 {
            day.removeLast()
        }
    }
}

#Preview {
    BirthdayView()
}
