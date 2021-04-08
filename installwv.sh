#!/system/bin/sh
rm -r /data/app/com.google.android.webview*
mkdir /data/app/com.google.android.webview-1
cd /data/app/com.google.android.webview-1
cp :/storage/emulated/0/Download/webview.apk ./base.apk
unzip base.apk 'lib/armeabi-v7a'
mv lib/armeabi-v7a lib/arm
# Do the following 2 lines only if you're on an ARM64 ROM
unzip base.apk 'lib/arm64-v8a'
mv lib/arm64-v8a lib/arm
#
find . -type f -exec chmod 644 {} +
find . -type d -exec chmod 755 {} +
find . -exec chown 1000.1000 {} +