# Kanban Board

A tracking app for tasks where users can create, edit, and move tasks between different columns (e.g. "To Do", "In Progress", "Done").

# Authentication
Our app will use Google SignIn Authentication method, no need to register manually.

# Database
We're using Firebase firestore to record the data in real-time, so the task changes between board can synchronize immedieately.

# Architeture
As most crucial part of the app development the DDD (Domain-Driven Design) is chosen to shape our app because it's clear definition on each layer, which is will have four layer as follows
- "Presentation"
    which is handle all of the widgets and state of the Widget's.
    As the output of the "Business Logic" this layer will directly associated with Application layer 

- "Application"
    the role of this layer is to perform the business logic using the BLoC StateManagement.
    This layer will be associated with Presentation layer, which is will output the process of the business logic

- "Domain"
    this layer will contain all entities of our app and will not depend to any other layers instead the other layers
    will depends on this "Domain" layer

- "Infrastructure"
    This layer will hold the data transfers both "remote" or "local", each data call will be covered on a "repository" class

# State Managemet
State management using BLoC with Freezed while also implement the code generation to save some of lines, which is also support
for union types and pattern-matching.

# Routing
auto_route with it's code generation will handle our overall routing app.

# Testing
The app is tested with the support of Mockito package with code generation.

# APK file
- https://drive.google.com/drive/folders/1Q6IlcobEZbmtcPzeVvutXv84MVNnCOm_?usp=sharing

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
