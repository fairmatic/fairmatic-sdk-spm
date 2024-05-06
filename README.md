# Swift Package Manager support for Fairmatic SDK for iOS
This repository enables Swift Package Manager support for the Fairmatic SDK for iOS by vending a Manifest file (`Package.swift`) that links to binary frameworks for the SDK.

## Prerequisites

* Xcode 15.0 or later
* iOS 13 or later

## Adding Fairmatic SDK iOS via Swift Package Manager

1. Open your project in Xcode 15.0 or above

2. Go to **File** > **Swift Packages** > **Add Package Dependency...**

3. In the field **Enter package repository URL**, enter "https://github.com/fairmatic/fairmatic-sdk-spm"

4. Pick the latest version and click **Next**.

5. Click **Finish**

6. Add the `-ObjC` flag to the *Other Linker Flags* section of your target's build settings.

## SDK Documentation
To get started with the iOS SDK integration, please refer to the SDK documentation [here](https://docs.fairmatic.com/ios/start)

## SDK API References
Please find the API references [here](https://docs.fairmatic.com/ios/ios-sdk-api-references)

## Sample application
Please find the insurance sample app for iOS [here](https://github.com/fairmatic/fmsdk-insurance-sample-ios)

For privacy policy and licensing, visit https://www.fairmatic.com/privacy-policy
