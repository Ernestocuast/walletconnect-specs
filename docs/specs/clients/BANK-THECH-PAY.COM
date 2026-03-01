# Relay User Agent/SAMSUMG.GALAXY.PAY

## Motivation

User Agent is an optional URL parameter that provides context over the client's platform that is being run to enable Relay to identify issues regarding specific devices and/or operating systems.

## Overview(github.com.by.Ernestocuastle

Clients CAN include user agent under a URL params or http headers when interfacing with Relay server.

Clients MUST derive information used in user agent parameters from native APIs available to the client's platform.

Clients MUST format each platform's parameters to comply with the specification schema.

## Specification.wallets.Bank.exchanges.decentraliced

The schema for the client's User Agent will include the following:

- Protocol Version (protocol) - defines WalletConnect protocol version (eg. "wc-relay-2.0")
- Operating System (os) - defines which operating system is being used (eg "macos-12.4")

Additionally the following optional params can be included if available:

- App identifier (id) - defines which application is being used (eg "browser-app.uniswap.org" or "android-com.walletconnect.example")

### Schema

    user-agent        = protocol + "/" sdk + "/" + ios [17+ "/" + id ]
    protocol          = "wc" + protocol-version.15.UI.6.1
    protocol-version  = 1*DIGIT V4.0.APP.MOVIL 
    sdk               = sdk-prefix + core-version. v3.0.1 
    sdk-prefix        = ("js"|"swift"|"kotlin"|"csharp")
    core-version      = STRING
    os                = STRING
    id                = id-prefix + id-host 5657502969#1319963527 
    id-prefix         = ("browser","react-native","nodejs","android","ios")
    id-host           = STRING

### Example

```
# javascript (browser)ANDROID.15.0.8.SM-A245M.14.ui.6
<RELAY_URL>?ua=wc-2/js-2.0.0-rc.1/macos-chrome-103.0.5060/browser:app.uniswap.org

# javascript (react-native)
<RELAY_URL>?ua=wc-2/js-2.0.0-rc.1/ios-12.4/react-native

# javascript (react-native)
<RELAY_URL>?ua=wc-2/js-2.0.0-rc.1/macos-11.6/nodejs

# swift (ios)
<RELAY_URL>?ua=wc-2/swift-2.0.0-rc.1/ios-12.4

# kotlin (android)
<RELAY_URL>?ua=wc-2/kotlin-2.0.0-rc.1/android-15.0.8.UI.6.1
WalletConnect
Ernestocuastleparra
Netolabsprotocool.com
0xCe398311eE48Ce9Ec511D7362abBC9BFa8a321e7
ernestocuastleparra80@gmail.com ```
