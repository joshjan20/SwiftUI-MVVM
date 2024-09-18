# SwiftUI_MVVM

This project demonstrates the implementation of the **MVVM (Model-View-ViewModel)** architectural pattern in **SwiftUI**. It is structured into distinct layers of `Networking`, `Model`, and `View` to clearly separate responsibilities and promote clean, maintainable, and testable code.

## Project Structure

### 1. **Networking**
The `Networking` layer handles API communication and data fetching. Each class is designed to handle specific tasks related to network operations.

- **APIError**:  
  A model representing various error states that could occur during network requests. This class encapsulates error details such as invalid response, connection issues, or data formatting issues.

- **APIMockService**:  
  A mock service for simulating network requests and responses. It is used primarily for testing purposes without requiring real network interactions.

- **APIService**:  
  The main service responsible for handling real network requests. It communicates with the actual API endpoint, parses the responses, and returns data to the application.

- **APIServiceProtocol**:  
  A protocol that defines the interface for the API service. It allows for better testability and the use of mock services during testing. The actual implementation can be provided by either `APIService` or `APIMockService`.

- **BreedFetcher**:  
  The view model that interacts with the API service to fetch breed data. It holds the data and logic required to provide the necessary information to the views, such as the list of breeds.

### 2. **Model**
The `Model` layer holds data structures that define the application's domain.

- **Breed**:  
  A model representing a breed of a cat or dog (depending on the project’s theme). This structure holds attributes such as the breed name, origin, and any other related metadata.

- **BreedImage**:  
  A model representing an image of a breed. This structure holds attributes like image URL and related metadata necessary for displaying breed images.

### 3. **View**
The `View` layer is responsible for the UI, created using SwiftUI. Each view interacts with its corresponding view model to display dynamic data.

- **BreedDetailView**:  
  Displays detailed information about a specific breed, including the breed image, name, origin, and other characteristics.

- **BreedListView**:  
  Displays a list of all breeds fetched by the `BreedFetcher`. Each breed is represented by a row in the list.

- **BreedRow**:  
  Represents a single row in the `BreedListView`, showing the breed's name and image in a compact format.

- **ErrorView**:  
  A reusable view that is displayed when an error occurs during data fetching. It provides a user-friendly message indicating what went wrong.

- **LoadingView**:  
  A reusable view that shows a loading indicator while data is being fetched. It keeps the user informed of the ongoing operation in a non-disruptive way.

- **ContentView**:  
  The main entry point of the app. It acts as a container for different views and coordinates how they interact.

### 4. **APIConstants**
Contains constant values related to the API, such as base URLs, API endpoints, or query parameters. This ensures that the API-related configuration is centralized and easy to update.

### 5. **Assets & Preview Content**
- **Assets**:  
  A folder containing images, icons, and other visual assets used in the project.
- **Preview Content**:  
  Contains preview data or images for SwiftUI previews, making it easier to visualize UI components in Xcode's preview pane.

## SwiftUI + MVVM Design Pattern

This project is a prime example of using **MVVM** with **SwiftUI**. Each layer of the MVVM pattern plays a distinct role:

- **Model**: Represents the app's data structures.
- **View**: Displays the UI elements and interacts with ViewModel.
- **ViewModel**: Provides data and handles business logic for the view.

The `ViewModel` observes changes in the model and updates the `View` accordingly. In this project, **SwiftUI's state management** (like `@State`, `@Published`, and `ObservableObject`) is used to propagate changes efficiently.

## How to Run

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/SwiftUI_MVVM.git
2. Open the project in Xcode:
  open SwiftUI_MVVM.xcodeproj
  
3. Build and run the project in an iOS simulator or on a real device.

## Future Improvements
- Add Unit tests for the ViewModel and Networking layer.
- Implement persistence using CoreData or similar solutions for offline mode.
- Enhance error handling with user-friendly retry mechanisms.


