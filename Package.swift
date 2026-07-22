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
          path: "dummy"
        ),
        .binaryTarget(
            name: "TwilioTwilsockLib",
            url: "https://github.com/twilio/twilsock-ios/releases/download/v3.0.2/twilio-twilsock-ios-3.0.2.zip",
            checksum: "1c814aa8a9b096d2adc6434f6153e76e4be004b490cca07f92b88b237aa5a288"
        ),
        .binaryTarget(
            name: "TwilioCommonLib",
            url: "https://github.com/twilio/twilsock-ios/releases/download/v3.0.2/twilio-commonLib-ios-3.0.2.zip",
            checksum: "a5481208fb1837ecccdb45349af06e584d0831f6ea5da7705e989f04e74e808c"
        ),
        .binaryTarget(
            name: "TwilioStateMachine",
            url: "https://github.com/twilio/twilsock-ios/releases/download/v3.0.2/twilio-stateMachine-ios-3.0.2.zip",
            checksum: "eadf6ed40ec448fe233a865227911c43880ba5a1265e8905878ff2595f23910f"
        )
    ]
)
