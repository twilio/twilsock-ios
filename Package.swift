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
            url: "https://sdk.twilio.com/ios/twilsock/releases/2.0.2/twilio-twilsock-ios-2.0.2.zip",
            checksum: "910f00969a73f3c753ea2cf0babee420ccf811604154a59ed031ceadd444c715"
        ),
        .binaryTarget(
            name: "TwilioCommonLib",
            url: "https://sdk.twilio.com/ios/twilsock/releases/2.0.2/twilio-commonLib-ios-2.0.2.zip",
            checksum: "ec90e2cf021336d5a8b2df2ac0dc1d788a98b22a71ba6556e01515a7ff87a33e"
        ),
        .binaryTarget(
            name: "TwilioStateMachine",
            url: "https://sdk.twilio.com/ios/twilsock/releases/2.0.2/twilio-stateMachine-ios-2.0.2.zip",
            checksum: "4c528088516081829a03b68bc46dec909aa6dc0d2792f4bf75cc02915ca808a9"
        )
    ]
)
