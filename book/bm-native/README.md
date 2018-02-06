# BookMonkey Mobile (NativeScript)

This app was directly derived from an Angular web application example in this repo:
https://github.com/book-monkey2-build/iteration-3-http
Only the markup had to be substantially changed. The components and modules are almost the same and the service layer is entirely untouched.


## Screenshots for visual reference:

<img src="https://github.com/angular-buch/book-monkey-nativescript/blob/master/screenshots/home_nexus.png" width="285" alt="Home"/>
<img src="https://github.com/angular-buch/book-monkey-nativescript/blob/master/screenshots/list_nexus.png" width="285" alt="Book list"/>
<img src="https://github.com/angular-buch/book-monkey-nativescript/blob/master/screenshots/details_nexus.png" width="285" alt="Book Details"/>


## Setup

Clone the repository

```
git clone https://github.com/angular-buch/book-monkey-nativescript.git
cd book-monkey-nativescript
```

Install nativescript:

```
npm install -g nativescript
```

If you're unsure about setting up your Android SDK or Xcode please refer to this guide: http://docs.nativescript.org/angular/start/quick-setup

Then run  
`tns platform add android` OR  
`tns platform add ios`

and then `npm install`

All set! You can now run the app using

* `tns run <PLATFORM>` (which requires a connected device) or 
* `tns run <PLATFORM> --emulator` (which requires a running emulator)

In example, the following command runs the project on the android emulator:

```
tns run android --emulator
```

Run `tns device` and/or run `tns doctor` to check your setup.
