#!/bin/bash
set -e

if cd flutter 
then 
    cd .. 
else 
    git clone --branch "2.10.5" https://github.com/flutter/flutter.git 
fi

flutter/bin/flutter config --enable-web
flutter/bin/flutter pub get
# flutter/bin/flutter pub run build_runner build --delete-conflicting-outputs 
flutter/bin/flutter build web --web-renderer html --release