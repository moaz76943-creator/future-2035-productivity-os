/// Phone makers whose battery saving is stricter than stock Android.
enum BatteryBrand { xiaomi, oppo, samsung, huawei, vivo, other }

BatteryBrand batteryBrandOf(String manufacturer) {
  final m = manufacturer.toLowerCase();
  bool any(List<String> names) => names.any(m.contains);
  if (any(['xiaomi', 'redmi', 'poco'])) return BatteryBrand.xiaomi;
  if (any(['oppo', 'realme', 'oneplus'])) return BatteryBrand.oppo;
  if (m.contains('samsung')) return BatteryBrand.samsung;
  if (any(['huawei', 'honor'])) return BatteryBrand.huawei;
  if (any(['vivo', 'iqoo'])) return BatteryBrand.vivo;
  return BatteryBrand.other;
}
