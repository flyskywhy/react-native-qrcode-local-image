# @flyskywhy/react-native-qrcode-local-image

[![npm version](http://img.shields.io/npm/v/@flyskywhy/react-native-qrcode-local-image.svg?style=flat-square)](https://npmjs.org/package/@flyskywhy/react-native-qrcode-local-image "View this project on npm")
[![npm downloads](http://img.shields.io/npm/dm/@flyskywhy/react-native-qrcode-local-image.svg?style=flat-square)](https://npmjs.org/package/@flyskywhy/react-native-qrcode-local-image "View this project on npm")
[![npm licence](http://img.shields.io/npm/l/@flyskywhy/react-native-qrcode-local-image.svg?style=flat-square)](https://npmjs.org/package/@flyskywhy/react-native-qrcode-local-image "View this project on npm")
[![Platform](https://img.shields.io/badge/platform-ios%20%7C%20android-989898.svg?style=flat-square)](https://npmjs.org/package/@flyskywhy/react-native-qrcode-local-image "View this project on npm")

A local qrcode image parse for react-native, support for ios and android

## Installation
```sh
yarn add @flyskywhy/react-native-qrcode-local-image
```

## Usage

### Example
```js
'use strict';

var React = require('react');
var ReactNative = require('react-native');
var {
    StyleSheet,
    View,
    Text,
} = ReactNative;

var Button = require('@remobile/react-native-simple-button');
var QRCode = require('@flyskywhy/react-native-qrcode-local-image');


module.exports = React.createClass({
    getInitialState() {
        return {text: ''}
    },
    onPress() {
        QRCode.decode(!app.isandroid?'/Users/fang/Desktop/qr.png':'/sdcard/qr.png', (error, result)=>{
            this.setState({text: JSON.stringify({error, result})});
        });
    },
    render() {
        return (
            <View style={styles.container}>
                <Button onPress={this.onPress}>测试</Button>
                <Text>
                    {this.state.text}
                </Text>
            </View>
        );
    }
});


var styles = StyleSheet.create({
    container: {
        flex: 1,
        backgroundColor: 'transparent',
        justifyContent: 'space-around',
        paddingVertical: 150,
    },
});
```

### method
- `decode(path, callback)` path canbe local image or url


### see detail use
* https://github.com/remobile/react-native-template
