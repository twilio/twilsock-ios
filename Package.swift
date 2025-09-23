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
            url: "https://github.com/twilio/twilsock-ios/releases/download/v3.0.1/twilio-twilsock-ios-3.0.1.zip",
            checksum: "f8bf06fbba9e96b9b82d39a6bdf9e699ba2318172b937903ef208fe092b213af"
        ),
        .binaryTarget(
            name: "TwilioCommonLib",
            url: "https://github.com/twilio/twilsock-ios/releases/download/v3.0.1/twilio-commonLib-ios-3.0.1.zip",
            checksum: "db3a93548b90248d9285879841935029b1ee0f81c26c30d23333bf2dd8372a03"
        ),
        .binaryTarget(
            name: "TwilioStateMachine",
            url: "https://github.com/twilio/twilsock-ios/releases/download/v3.0.1/twilio-stateMachine-ios-3.0.1.zip",
            checksum: "91c96df2822669ef3a97aaaa87268652fe52d807a004e25ec954e8ff89ba12c7"
        )
    ]
)
