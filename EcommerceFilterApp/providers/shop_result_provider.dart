import 'package:latihan/model/shop_results.dart';
import 'package:riverpod/riverpod.dart';

final shopResultProvider = FutureProvider<List<ShopResult>>((ref) async {
  await Future.delayed(Duration(seconds: 3));
  return [
    ShopResult(
      name: "MACBOOK PRO M1",
      price: "22.499.000",
      isSoldOut: false,
      vendor: 'Apple',
      img:
          'https://cdn.shopify.com/s/files/1/0593/0480/4531/products/MBPTL202013INM18CPU-8GPU-8GB2_COLOR-SILVER_CAPACITY-ALL_1000x.png?v=1631610729',
    ),
    ShopResult(
      name: "MacBook Air M1 (2020)",
      price: "16.500.000",
      isSoldOut: true,
      vendor: 'Apple',
      img:
          'https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1605038250/dkegwghkt3rfni4cjbtb.jpg',
    ),
    ShopResult(
      name: "Apple MacBook Air Pro (13.3 inci, M1 2020)",
      price: "34.305.000",
      isSoldOut: true,
      vendor: 'Apple',
      img:
          'data:image/jpeg;base64,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',
    ),
    ShopResult(
      name: "MacBook Air (13.3 inci, M1 2020)",
      price: "16.699.000",
      isSoldOut: false,
      vendor: 'Apple',
      img: 'https://cf.shopee.co.id/file/5672b1c86b33f5b134c29f281a388b29',
    ),
    ShopResult(
      name: "MACBOOK PRO M1",
      price: "22.499.000",
      isSoldOut: false,
      vendor: 'Apple',
      img:
          'https://cdn.shopify.com/s/files/1/0593/0480/4531/products/MBPTL202013INM18CPU-8GPU-8GB2_COLOR-SILVER_CAPACITY-ALL_1000x.png?v=1631610729',
    ),
    ShopResult(
      name: "MacBook Air M1 (2020)",
      price: "16.500.000",
      isSoldOut: true,
      vendor: 'Apple',
      img:
          'https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1605038250/dkegwghkt3rfni4cjbtb.jpg',
    ),
    ShopResult(
      name: "Apple MacBook Air Pro (13.3 inci, M1 2020)",
      price: "34.305.000",
      isSoldOut: true,
      vendor: 'Apple',
      img:
          'data:image/jpeg;base64,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',
    ),
    ShopResult(
      name: "MacBook Air (13.3 inci, M1 2020)",
      price: "16.699.000",
      isSoldOut: false,
      vendor: 'Apple',
      img: 'https://cf.shopee.co.id/file/5672b1c86b33f5b134c29f281a388b29',
    ),
  ];
  // return [];
});
