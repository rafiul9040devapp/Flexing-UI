import 'package:dio/dio.dart';
import 'package:flexing/model/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final ScrollController _scrollController = ScrollController();
  final Dio dio = Dio();
  List<Product> products = [];
  late int totalProduct;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    getProducts();
    _scrollController.addListener((loadMoreData));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tech Store',
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 30.sp,
              color: Colors.white),
        ),
      ),
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        child: ListView.separated(
          itemCount: products.length,
          physics: const AlwaysScrollableScrollPhysics(),
          shrinkWrap: false,
          controller: _scrollController,
          itemBuilder: (context, index) {
            final product = products[index];
            return Column(
              children: [
                ListTile(
                  tileColor: Colors.white24,
                  leading: Text(
                    product.id.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 25.sp,
                        color: Colors.white),
                  ),
                  title: Text(
                    product.title ?? 'N/A',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18.sp,
                        color: Colors.white),
                  ),
                  subtitle: Text(
                    '\$${product.price}',
                    style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontSize: 14.sp,
                        color: Colors.white),
                  ),
                  trailing: Image.network(
                    product.thumbnail ??
                        'https://dummyimage.com/640x360/fff/aaa',
                    fit: BoxFit.cover,
                    width: 100.w,
                  ),
                ),
                if (index == products.length - 1 && isLoading)
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: SpinKitThreeBounce(
                      color: Colors.redAccent,
                    ),
                  ),
              ],
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              color: Colors.white12,
              height: 2.h,
              thickness: 1.w,
            );
          },
        ),
      ),
    );
  }

  void loadMoreData() {
    if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent &&
        products.length < totalProduct) {
      getProducts();
    }
  }

  Future<void> getProducts() async {
    try {
     setState(() {
       isLoading = true;
     });

      final response = await dio.get(
          'https://dummyjson.com/products?limit=15&skip=${products.length}&select=title,price,thumbnail');

      if (response.hashCode == 200) {}
      final List data = response.data['products'];
      totalProduct = response.data['total'];
      final List<Product> responseProduct =
          data.map((product) => Product.fromJson(product)).toList();
      setState(() {
        isLoading = false;
        products.addAll(responseProduct);
      });
    } catch (e) {
      print(e.toString());
    }
  }
}
