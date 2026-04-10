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
            url: "https://github.com/twilio/twilsock-ios/releases/download/v3.0.0/twilio-twilsock-ios-3.0.0.zip",
            checksum: "aa80c8e97d9232e4c53a274f954ead1e648b913e12e120b3164349e9d51204cc"
        ),
        .binaryTarget(
            name: "TwilioCommonLib",
            url: "https://github.com/twilio/twilsock-ios/releases/download/v3.0.0/twilio-commonLib-ios-3.0.0.zip",
            checksum: "b53fd09c79ca2e86016fdc859ce77658abbb9dcddc24a7114bdf55754e2d672f"
        ),
        .binaryTarget(
            name: "TwilioStateMachine",
            url: "https://github.com/twilio/twilsock-ios/releases/download/v3.0.0/twilio-stateMachine-ios-3.0.0.zip",
            checksum: "d550f3e26b48f31fbbb987a2c1e0e8722c7df6467c1ebe75924bbebbe5e83953"
        )
    ]
)
