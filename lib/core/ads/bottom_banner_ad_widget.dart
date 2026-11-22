import "package:flutter/material.dart";
import "package:google_mobile_ads/google_mobile_ads.dart";

class BottomBannerAdWidget extends StatefulWidget {
  const BottomBannerAdWidget({
    super.key,
    this.useProductionUnit = false,
  });

  final bool useProductionUnit;

  static const String _testBannerUnitId = "ca-app-pub-3940256099942544/6300978111";
  static const String _prodBannerUnitId = "ca-app-pub-1427592517924252/7991944943";

  @override
  State<BottomBannerAdWidget> createState() => _BottomBannerAdWidgetState();
}

class _BottomBannerAdWidgetState extends State<BottomBannerAdWidget> {
  BannerAd? _bannerAd;
  bool _isLoaded = false;

  String get _adUnitId =>
      widget.useProductionUnit ? BottomBannerAdWidget._prodBannerUnitId : BottomBannerAdWidget._testBannerUnitId;

  @override
  void initState() {
    super.initState();
    _loadAd();
  }

  void _loadAd() {
    final ad = BannerAd(
      adUnitId: _adUnitId,
      size: AdSize.banner,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          if (!mounted) {
            ad.dispose();
            return;
          }
          setState(() {
            _bannerAd = ad as BannerAd;
            _isLoaded = true;
          });
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
          if (mounted) {
            setState(() {
              _bannerAd = null;
              _isLoaded = false;
            });
          }
        },
      ),
    );
    ad.load();
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isLoaded || _bannerAd == null) {
      return const SizedBox.shrink();
    }
    return SizedBox(
      width: _bannerAd!.size.width.toDouble(),
      height: _bannerAd!.size.height.toDouble(),
      child: AdWidget(ad: _bannerAd!),
    );
  }
}
