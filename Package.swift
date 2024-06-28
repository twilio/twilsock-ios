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
            url: "https://github.com/twilio/twilsock-ios/releases/download/v2.1.1/twilio-twilsock-ios-2.1.1-rc2.zip",
            checksum: "6caf68c7cbb37256c23a3cf5313441efb012d02067807c2e42dae178676d6d4b"
        ),
        .binaryTarget(
            name: "TwilioCommonLib",
            url: "https://github.com/twilio/twilsock-ios/releases/download/v2.1.1/twilio-commonLib-ios-2.1.1-rc2.zip",
            checksum: "2119c357d10cb3737759df55d2d5a0c748fb368e9734ca36c8d0354ad9749399"
        ),
        .binaryTarget(
            name: "TwilioStateMachine",
            url: "https://github.com/twilio/twilsock-ios/releases/download/v2.1.1/twilio-stateMachine-ios-2.1.1-rc2.zip",
            checksum: "a276071372cca51ac9fb83c198460310c8faa47fa1df57801ef0cf15557bb9ee"
        )
    ]
)
