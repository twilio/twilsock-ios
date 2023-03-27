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
            url: "https://sdk.twilio.com/ios/twilsock/releases/1.0.0/twilio-twilsock-ios-1.0.0.zip",
            checksum: "f783cedb93fa7268dde1a22266431ebd0b275d36d0245dd6a5389582bae18402"
        ),
        .binaryTarget(
            name: "TwilioCommonLib",
            url: "https://sdk.twilio.com/ios/twilsock/releases/1.0.0/twilio-commonLib-ios-1.0.0.zip",
            checksum: "2cd6b96c36a680a1511ca48da076e43a294f8fd99ed51a73a61b07a9630e71af"
        ),
        .binaryTarget(
            name: "TwilioStateMachine",
            url: "https://sdk.twilio.com/ios/twilsock/releases/1.0.0/twilio-stateMachine-ios-1.0.0.zip",
            checksum: "75f5307e48b0d9bf9436d1d73b66eb7f63c81ccaf0364d103db2d011c8430920"
        )
    ]
)
