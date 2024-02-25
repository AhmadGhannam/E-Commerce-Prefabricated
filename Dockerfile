FROM cirrusci/flutter:2.2.3

WORKDIR /app

COPY pubspec.yaml .


RUN flutter pub get

COPY . .

RUN flutter build apk --release