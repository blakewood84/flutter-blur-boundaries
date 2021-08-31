# flutter_blur_hash

When using ImageFiltered and ImageFilter.blur() with sigmaX and sigmaY greater than 0, you are left with a pixalated border around the edges. To remove this we stretch the image and also use TileMode.decal inside of the ImageFilter.blur() constructor.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
