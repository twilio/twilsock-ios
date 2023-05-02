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
            url: "https://sdk.twilio.com/ios/twilsock/releases/2.0.0/twilio-twilsock-ios-2.0.0.zip",
            checksum: "9291bfd26e8fe0bd08c90ddfc634b2a0ea7046a1fe8646a9adb1d4172339d69e"
        ),
        .binaryTarget(
            name: "TwilioCommonLib",
            url: "https://sdk.twilio.com/ios/twilsock/releases/2.0.0/twilio-commonLib-ios-2.0.0.zip",
            checksum: "4a5423f84266a93529e03dde46a15368178e2de415e57a40ffe7b7f0c4954f55"
        ),
        .binaryTarget(
            name: "TwilioStateMachine",
            url: "https://sdk.twilio.com/ios/twilsock/releases/2.0.0/twilio-stateMachine-ios-2.0.0.zip",
            checksum: "0ccb1f1619038c44347db004ade67274da96fd4f473913b4d24df13c430e3576"
        )
    ]
)
