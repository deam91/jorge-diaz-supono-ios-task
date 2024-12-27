# Supono iOS Task

A SwiftUI-based iOS application that demonstrates modern iOS development practices and UI implementation.

## Features

- Onboarding flow with animated transitions
- Birthday input screen with custom number pad
- Clean and modern UI design
- Custom navigation handling
- Responsive layout supporting various iOS devices

## Technical Details

### Architecture
- Built with SwiftUI
- Follows MVVM pattern
- Uses native iOS navigation
- Supports iOS 18.1+

### Key Components

1. **ContentView**
   - Main landing screen with parallax background
   - Custom button styling
   - Navigation to birthday input

2. **BirthdayView**
   - Custom number input fields
   - Progress indicator
   - Dismissible navigation
   - Input validation

## Development Setup

1. Clone the repository
2. Open `SuponoApp.xcodeproj` in Xcode
3. Build and run the project

## Testing

The project includes both unit tests and UI tests:
- Unit tests in `SuponoAppTests`
- UI tests in `SuponoAppUITests`

## Requirements

- Xcode 15+
- iOS 18.1+
- Swift 5.0
