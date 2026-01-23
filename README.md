# risovach

risovach. test task

## Getting Started
While developing run:
```bash
flutter pub run build_runner watch --delete-conflicting-outputs 
```

Before building apk run:
```bash
flutter pub get
```

```bash
flutter pub run build_runner build --delete-conflicting-outputs 
```

To build apk run:
```bash
flutter build apk --release 
```
## Notes
I couldn't afford Firebase storage so I save images as List<int> that slows app performance.

App contains some hardcode. 

Previously at work I used Firebase for app notifications because backend of the app was written by myself on Laravel of GoLang.

Drawing board was a big challenge to figure it out. I still haven't fully figured out so the app contains hardcode.


## Аrchitecture
lib:
 - core:
   - error - app failures
   - theme - app theme
   - widgets - contains most used widgets
 - data:
   - repository - realization of domain/repository
 - domain:
   - entities - contains entities
   - repository - repository of data related functions
 - presentation:
   - bloc - contains states of the appearance
   - routes - routes of the app
   - screens - screens of the app
 - sl.dart - service locator - basically global variables (singleton)


