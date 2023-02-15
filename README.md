
# Nasa Madia App

Ce projet Flutter est basé sur Google Map et sur l'API officiel de la Nasa.

Le but ici est de permettre d'avoir une vu satellite de n'importe quel endroit de la terre via Google Map. De plus il est possible de lire des articles de la Nasa. Il sera également possible de télécharger de superbe photo réalisé par des télescope, sattelite ou photographe.



## Installation

Pour l'utilisation du projet je vous conseil d'utiliser fvm. La version actuel de Flutter est 3.3.10

## API Reference

Site de la Nasa : https://api.nasa.gov/#recovery

Il vous faudra générer une clé d'API et l'ajouter au fichier : nasa-media/assets/cfg/app_settings.json

#### Obtenir tous les medias

```http
  GET /planetary/apod
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `api_key` | `string` | **Required**. Clé API |
| `count`   | `int`    | **Required**. Nombre d'articles souhaités |


#### Initialiser Google Map

Je vous invite à suivre ce Tutoriel pour générer une Clé API :

Pour utiliser Google Maps dans l'application Flutter nasa-media, vous devez configurer un projet d'API avec [Google Maps Platform](https://mapsplatform.google.com/?hl=fr), en suivant les instructions des pages [Utiliser la clé API du SDK Maps pour Android](https://developers.google.com/maps/documentation/android-sdk/get-api-key?hl=fr), [Utiliser la clé API du SDK Maps pour iOS](https://developers.google.com/maps/documentation/ios-sdk/get-api-key?hl=fr) 

###

#### Ajouter une clé API pour une application Android


Pour ajouter une clé API à l'application Android, modifiez le fichier AndroidManifest.xml dans android/app/src/main. Ajoutez une seule entrée meta-data contenant la clé API (créée à l'étape précédente) dans le nœud application.

```xml
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.example.google_maps_in_flutter">
    <application
        android:label="google_maps_in_flutter"
        android:icon="@mipmap/ic_launcher">

        <!-- TODO: Add your Google Maps API key here -->
        <meta-data android:name="com.google.android.geo.API_KEY"
               android:value="YOUR-KEY-HERE"/>

        <activity
            android:name=".MainActivity"
            android:launchMode="singleTop"
            android:theme="@style/LaunchTheme"
            android:configChanges="orientation|keyboardHidden|keyboard|screenSize|smallestScreenSize|locale|layoutDirection|fontScale|screenLayout|density|uiMode"
            android:hardwareAccelerated="true"
            android:windowSoftInputMode="adjustResize">
            <meta-data
              android:name="io.flutter.embedding.android.NormalTheme"
              android:resource="@style/NormalTheme"
              />
            <meta-data
              android:name="io.flutter.embedding.android.SplashScreenDrawable"
              android:resource="@drawable/launch_background"
              />
            <intent-filter>
                <action android:name="android.intent.action.MAIN"/>
                <category android:name="android.intent.category.LAUNCHER"/>
            </intent-filter>
        </activity>
        <meta-data
            android:name="flutterEmbedding"
            android:value="2" />
    </application>
</manifest>
```

###

#### Ajouter une clé API pour une application IOS

Pour ajouter une clé API à l'application iOS, modifiez le fichier AppDelegate.swift dans ios/Runner. Contrairement à Android, ajouter une clé API sur iOS nécessite de modifier le code source de l'application Runner. AppDelegate est le singleton principal qui fait partie du processus d'initialisation de l'application.

Vous devez apporter deux modifications à ce fichier. Tout d'abord, ajoutez une instruction #import pour extraire les en-têtes Google Maps, puis appelez la méthode provideAPIKey() du singleton GMSServices. Cette clé API permet à Google Maps de diffuser correctement les tuiles de carte.

```swift

import UIKit
import Flutter
import GoogleMaps  // Add this import

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

    // TODO: Add your Google Maps API key
    GMSServices.provideAPIKey("YOUR-API-KEY")

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}

```