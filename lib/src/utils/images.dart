enum AssetImages { tinder, google }

const assetPath = 'modules/second_class/assets';

extension AssetImagesPath on AssetImages {
  String get path {
    switch (this) {
      case AssetImages.tinder:
        return '$assetPath/tinder_logo.png';
      case AssetImages.google:
        return '$assetPath/google_logo.png';
    }
  }
}
