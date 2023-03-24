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
            checksum: "181b4e8960ade2bc7b335068a82c82dd9ce3506f28f9ed27b182d593085cb3f5"
        ),
        .binaryTarget(
            name: "TwilioCommonLib",
            url: "https://sdk.twilio.com/ios/twilsock/releases/1.0.0/twilio-commonLib-ios-1.0.0.zip",
            checksum: "8ab90dc83f38bcad4a30c42b6b64c7a4007aa0a82ccfdfcda47c7ecdeb41db51"
        ),
        .binaryTarget(
            name: "TwilioStateMachine",
            url: "https://sdk.twilio.com/ios/twilsock/releases/1.0.0/twilio-stateMachine-ios-1.0.0.zip",
            checksum: "381ed0b8dba859aed13b0e0a72820a34cbe6e82c5fb516ad2d87691640e942a1"
        )
    ]
)
