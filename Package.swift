// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "TwilioTwilsockLib",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "TwilioTwilsockLib",
            targets: ["TwilioTwilsockLibTarget"]),
    ],
    targets: [
        .target(
          name: "TwilioTwilsockLibTarget",
          dependencies: [
              .target(name: "TwilioTwilsockLib"),
              .target(name: "TwilioCommonLib"),
              .target(name: "TwilioStateMachine") 
          ],
          path: "Dummy"
        ),
        .binaryTarget(
            name: "TwilioTwilsockLib",
            url: "https://sdk.twilio.com/ios/twilsock/releases/2.0.1/twilio-twilsock-ios-2.0.1.zip",
            checksum: "05fe16e995c101c363f2cc39741841d2750ed30829022744b6164c2c0fe2589b"
        ),
        .binaryTarget(
            name: "TwilioCommonLib",
            url: "https://sdk.twilio.com/ios/twilsock/releases/2.0.1/twilio-commonLib-ios-2.0.1.zip",
            checksum: "df90b90c6095c86233ca6a255423481e8610d84e674bfa0876e991bb95530f8d"
        ),
        .binaryTarget(
            name: "TwilioStateMachine",
            url: "https://sdk.twilio.com/ios/twilsock/releases/2.0.1/twilio-stateMachine-ios-2.0.1.zip",
            checksum: "5290a6d0209e8783d8d9d80cbe6a1cd1247db4bd079249c606c714f70ddc7ca5"
        )
    ]
)
