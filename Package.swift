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
            url: "https://sdk.twilio.com/ios/twilsock/releases/2.0.3/twilio-twilsock-ios-2.0.3.zip",
            checksum: "281a1eac1661165fd93294b16d4f2896f599640a2ff9ef9bfd0874138e831bf6"
        ),
        .binaryTarget(
            name: "TwilioCommonLib",
            url: "https://sdk.twilio.com/ios/twilsock/releases/2.0.3/twilio-commonLib-ios-2.0.3.zip",
            checksum: "48a73fdc44e3c530b23b62492fe13029fa9c879079d56ea05e1efd0eec921f9a"
        ),
        .binaryTarget(
            name: "TwilioStateMachine",
            url: "https://sdk.twilio.com/ios/twilsock/releases/2.0.3/twilio-stateMachine-ios-2.0.3.zip",
            checksum: "e568451cd487f05754c10f35e86d6049a8cc13e1a59565262567b0bbbc482bce"
        )
    ]
)
