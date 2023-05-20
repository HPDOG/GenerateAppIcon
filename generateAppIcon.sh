#!/bin/bash -e


cd "$DIR"/"$folderName"

sourceIconName="icon.png"
sourceLaunchImageName="launchImage.png"

command -v convert >/dev/null 2>&1 || { echo >&2 "I require imagemagick but it's not installed.  Aborting."; exit 1; }

iconPath="Assets.xcassets/AppIcon.appiconset"
launchImagePath="Assets.xcassets/LaunchImage.launchimage"

mkdir -p "$iconPath"
mkdir -p "$launchImagePath"

convert $sourceIconName -resize 20x20 $iconPath/20.png
convert $sourceIconName -resize 29x29 $iconPath/29.png
convert $sourceIconName -resize 40x40 $iconPath/40.png
convert $sourceIconName -resize 50x50 $iconPath/50.png
convert $sourceIconName -resize 57x57 $iconPath/57.png
convert $sourceIconName -resize 58x58 $iconPath/58.png
convert $sourceIconName -resize 60x60 $iconPath/60.png
convert $sourceIconName -resize 72x72 $iconPath/72.png
convert $sourceIconName -resize 76x76 $iconPath/76.png
convert $sourceIconName -resize 80x80 $iconPath/80.png
convert $sourceIconName -resize 87x87 $iconPath/87.png
convert $sourceIconName -resize 100x100 $iconPath/100.png
convert $sourceIconName -resize 114x114 $iconPath/114.png
convert $sourceIconName -resize 120x120 $iconPath/120.png
convert $sourceIconName -resize 144x144 $iconPath/144.png
convert $sourceIconName -resize 152x152 $iconPath/152.png
convert $sourceIconName -resize 167x167 $iconPath/167.png
convert $sourceIconName -resize 180x180 $iconPath/180.png
convert $sourceIconName -resize 1024x1024 $iconPath/1024.png

cat > "$iconPath/Contents.json" << EOF
{
  "images":[
  {
    "size":"60x60",
    "expected-size":"180",
    "filename":"180.png",
    "folder":"Assets.xcassets/AppIcon.appiconset/",
    "idiom":"iphone",
    "scale":"3x"
  },
  {
    "size":"40x40",
    "expected-size":"80",
    "filename":"80.png",
    "folder":"Assets.xcassets/AppIcon.appiconset/",
    "idiom":"iphone",
    "scale":"2x"
  },
  {
    "size":"40x40",
    "expected-size":"120",
    "filename":"120.png",
    "folder":"Assets.xcassets/AppIcon.appiconset/",
    "idiom":"iphone",
    "scale":"3x"
  },
  {
    "size":"60x60",
    "expected-size":"120",
    "filename":"120.png",
    "folder":"Assets.xcassets/AppIcon.appiconset/",
    "idiom":"iphone",
    "scale":"2x"
  },
  {
    "size":"57x57",
    "expected-size":"57",
    "filename":"57.png",
    "folder":"Assets.xcassets/AppIcon.appiconset/",
    "idiom":"iphone",
    "scale":"1x"
  },
  {
    "size":"29x29",
    "expected-size":"58",
    "filename":"58.png",
    "folder":"Assets.xcassets/AppIcon.appiconset/",
    "idiom":"iphone",
    "scale":"2x"
  },
  {
    "size":"29x29",
    "expected-size":"29",
    "filename":"29.png",
    "folder":"Assets.xcassets/AppIcon.appiconset/",
    "idiom":"iphone",
    "scale":"1x"
  },
  {
    "size":"29x29",
    "expected-size":"87",
    "filename":"87.png",
    "folder":"Assets.xcassets/AppIcon.appiconset/",
    "idiom":"iphone",
    "scale":"3x"
  },
  {
    "size":"57x57",
    "expected-size":"114",
    "filename":"114.png",
    "folder":"Assets.xcassets/AppIcon.appiconset/",
    "idiom":"iphone",
    "scale":"2x"
  },
  {
    "size":"20x20",
    "expected-size":"40",
    "filename":"40.png",
    "folder":"Assets.xcassets/AppIcon.appiconset/",
    "idiom":"iphone",
    "scale":"2x"
  },
  {
    "size":"20x20",
    "expected-size":"60",
    "filename":"60.png",
    "folder":"Assets.xcassets/AppIcon.appiconset/",
    "idiom":"iphone",
    "scale":"3x"
  },
  {
    "size":"1024x1024",
    "filename":"1024.png",
    "expected-size":"1024",
    "idiom":"ios-marketing",
    "folder":"Assets.xcassets/AppIcon.appiconset/",
    "scale":"1x"
  },
  {
    "size":"40x40",
    "expected-size":"80",
    "filename":"80.png",
    "folder":"Assets.xcassets/AppIcon.appiconset/",
    "idiom":"ipad",
    "scale":"2x"
  },
  {
    "size":"72x72",
    "expected-size":"72",
    "filename":"72.png",
    "folder":"Assets.xcassets/AppIcon.appiconset/",
    "idiom":"ipad",
    "scale":"1x"
  },
  {
    "size":"76x76",
    "expected-size":"152",
    "filename":"152.png",
    "folder":"Assets.xcassets/AppIcon.appiconset/",
    "idiom":"ipad",
    "scale":"2x"
  },
  {
    "size":"50x50",
    "expected-size":"100",
    "filename":"100.png",
    "folder":"Assets.xcassets/AppIcon.appiconset/",
    "idiom":"ipad",
    "scale":"2x"
  },
  {
    "size":"29x29",
    "expected-size":"58",
    "filename":"58.png",
    "folder":"Assets.xcassets/AppIcon.appiconset/",
    "idiom":"ipad",
    "scale":"2x"
  },
  {
    "size":"76x76",
    "expected-size":"76",
    "filename":"76.png",
    "folder":"Assets.xcassets/AppIcon.appiconset/",
    "idiom":"ipad",
    "scale":"1x"
  },
  {
    "size":"29x29",
    "expected-size":"29",
    "filename":"29.png",
    "folder":"Assets.xcassets/AppIcon.appiconset/",
    "idiom":"ipad",
    "scale":"1x"
  },
  {
    "size":"50x50",
    "expected-size":"50",
    "filename":"50.png",
    "folder":"Assets.xcassets/AppIcon.appiconset/",
    "idiom":"ipad",
    "scale":"1x"
  },
  {
    "size":"72x72",
    "expected-size":"144",
    "filename":"144.png",
    "folder":"Assets.xcassets/AppIcon.appiconset/",
    "idiom":"ipad",
    "scale":"2x"
  },
  {
    "size":"40x40",
    "expected-size":"40",
    "filename":"40.png",
    "folder":"Assets.xcassets/AppIcon.appiconset/",
    "idiom":"ipad",
    "scale":"1x"
  },
  {
    "size":"83.5x83.5",
    "expected-size":"167",
    "filename":"167.png",
    "folder":"Assets.xcassets/AppIcon.appiconset/",
    "idiom":"ipad",
    "scale":"2x"
  },
  {
    "size":"20x20",
    "expected-size":"20",
    "filename":"20.png",
    "folder":"Assets.xcassets/AppIcon.appiconset/",
    "idiom":"ipad",
    "scale":"1x"
  },
  {
    "size":"20x20",
    "expected-size":"40",
    "filename":"40.png",
    "folder":"Assets.xcassets/AppIcon.appiconset/",
    "idiom":"ipad",
    "scale":"2x"
  }]}

EOF


convert $sourceLaunchImageName -resize 750x1334\! $launchImagePath/750x1334.png
convert $sourceLaunchImageName -resize 1125x2436\! $launchImagePath/1125x2436.png
convert $sourceLaunchImageName -resize 1242x2208\! $launchImagePath/1242x2208.png


cat > "$launchImagePath/Contents.json" << EOF
{
  "images" : [
    {
      "extent" : "full-screen",
      "filename" : "1125x2436.png",
      "idiom" : "iphone",
      "minimum-system-version" : "11.0",
      "orientation" : "portrait",
      "scale" : "3x",
      "subtype" : "2436h"
    },
    {
      "extent" : "full-screen",
      "idiom" : "iphone",
      "minimum-system-version" : "11.0",
      "orientation" : "landscape",
      "scale" : "3x",
      "subtype" : "2436h"
    },
    {
      "extent" : "full-screen",
      "filename" : "1242x2208.png",
      "idiom" : "iphone",
      "minimum-system-version" : "8.0",
      "orientation" : "portrait",
      "scale" : "3x",
      "subtype" : "736h"
    },
    {
      "extent" : "full-screen",
      "idiom" : "iphone",
      "minimum-system-version" : "8.0",
      "orientation" : "landscape",
      "scale" : "3x",
      "subtype" : "736h"
    },
    {
      "extent" : "full-screen",
      "filename" : "750x1334.png",
      "idiom" : "iphone",
      "minimum-system-version" : "8.0",
      "orientation" : "portrait",
      "scale" : "2x",
      "subtype" : "667h"
    },
    {
      "extent" : "full-screen",
      "idiom" : "iphone",
      "minimum-system-version" : "7.0",
      "orientation" : "portrait",
      "scale" : "2x"
    },
    {
      "extent" : "full-screen",
      "idiom" : "iphone",
      "minimum-system-version" : "7.0",
      "orientation" : "portrait",
      "scale" : "2x",
      "subtype" : "retina4"
    },
    {
      "extent" : "full-screen",
      "idiom" : "ipad",
      "minimum-system-version" : "7.0",
      "orientation" : "portrait",
      "scale" : "1x"
    },
    {
      "extent" : "full-screen",
      "idiom" : "ipad",
      "minimum-system-version" : "7.0",
      "orientation" : "landscape",
      "scale" : "1x"
    },
    {
      "extent" : "full-screen",
      "idiom" : "ipad",
      "minimum-system-version" : "7.0",
      "orientation" : "portrait",
      "scale" : "2x"
    },
    {
      "extent" : "full-screen",
      "idiom" : "ipad",
      "minimum-system-version" : "7.0",
      "orientation" : "landscape",
      "scale" : "2x"
    }
  ],
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}


EOF

