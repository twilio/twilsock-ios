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
            url: "https://github.com/twilio/twilsock-ios/releases/download/v0.0.2/twilio-twilsock-ios-0.0.2.zip",
            checksum: "e581727847f520cdee92c418d63217d44f366c33054d555403a3f0976e964009"
        ),
        .binaryTarget(
            name: "TwilioCommonLib",
            url: "https://github.com/twilio/twilsock-ios/releases/download/v0.0.2/twilio-commonLib-ios-0.0.2.zip",
            checksum: "bfd4d5c998caa053ddcb01a35ce47e57d66f2032a36bb95ccbf325a0d57c9d68"
        ),
        .binaryTarget(
            name: "TwilioStateMachine",
            url: "https://github.com/twilio/twilsock-ios/releases/download/v0.0.2/twilio-stateMachine-ios-0.0.2.zip",
            checksum: "f9585ba87ec5c27b0e4372195d883c33664c868bde5465c102cb2caa220ba9c1"
        )
    ]
)
