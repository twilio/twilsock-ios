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
            url: "https://sdk.twilio.com/ios/twilsock/releases/2.0.4/twilio-twilsock-ios-2.0.4.zip",
            checksum: "a2fd0b529094198f9e0194c9d9aa580806ce095a47cd606c67e3b4523ccb8d3b"
        ),
        .binaryTarget(
            name: "TwilioCommonLib",
            url: "https://sdk.twilio.com/ios/twilsock/releases/2.0.4/twilio-commonLib-ios-2.0.4.zip",
            checksum: "30edd906d4224f99aa5fa67d054db627440c0b277ae2f85f4345b418bbd0145d"
        ),
        .binaryTarget(
            name: "TwilioStateMachine",
            url: "https://sdk.twilio.com/ios/twilsock/releases/2.0.4/twilio-stateMachine-ios-2.0.4.zip",
            checksum: "0dab24cb9bcc84a0dbd35f0aecbff49eb4e69cd0ad1ac6d19f6ff9ce71c85b7b"
        )
    ]
)
