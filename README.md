
# react-native-react-native-reparentable

## Getting started

`$ npm install react-native-react-native-reparentable --save`

### Mostly automatic installation

`$ react-native link react-native-react-native-reparentable`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-react-native-reparentable` and add `RNReactNativeReparentable.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNReactNativeReparentable.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNReactNativeReparentablePackage;` to the imports at the top of the file
  - Add `new RNReactNativeReparentablePackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-react-native-reparentable'
  	project(':react-native-react-native-reparentable').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-react-native-reparentable/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-react-native-reparentable')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNReactNativeReparentable.sln` in `node_modules/react-native-react-native-reparentable/windows/RNReactNativeReparentable.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using React.Native.Reparentable.RNReactNativeReparentable;` to the usings at the top of the file
  - Add `new RNReactNativeReparentablePackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNReactNativeReparentable from 'react-native-react-native-reparentable';

// TODO: What to do with the module?
RNReactNativeReparentable;
```
  