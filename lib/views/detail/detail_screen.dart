import 'package:flutter/material.dart';
import 'package:owala_app/models/products_model.dart';
import 'package:owala_app/utils/consts.dart';
import 'package:owala_app/views/detail/components/fav_button.dart';

class DetailScreen extends StatefulWidget {
  final ProductsModel product;

  const DetailScreen({super.key, required this.product});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int quantity = 1;
  int selectedSize = 0; 
  int selectedImage = 0;

  @override
  void initState() {
    super.initState();
    selectedSize = widget.product.size; 
  }

 
  final List<int> sizes = [38, 39, 40, 41, 42, 43];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: widget.product.color,
      appBar: AppBar(
        backgroundColor: widget.product.color,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: textColor),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined, color: textColor),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.4,
            child: Center(
              child: Image.asset(
                widget.product.image,
                fit: BoxFit.contain,
              ),
            ),
          ),

          Expanded(
            child: Container(
              padding: const EdgeInsets.all(defaultPadding),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.product.title,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: textColor,
                        ),
                      ),
                      FavButton(product: widget.product),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "New Balance Shoes", // bisa kamu ganti kalau ada kategori di model
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    widget.product.getFormattedPrice(),
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),

                  const SizedBox(height: 16),
                  const Text(
                    "Select Size",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 45,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: sizes.length,
                      itemBuilder: (context, index) {
                        int sizeVal = sizes[index];
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedSize = sizeVal;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 6),
                            width: 45,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: selectedSize == sizeVal
                                  ? primaryColor
                                  : Colors.white,
                              border: Border.all(
                                color:
                                    const Color.fromARGB(255, 198, 198, 198),
                              ),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "$sizeVal",
                              style: TextStyle(
                                color: selectedSize == sizeVal
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  const SizedBox(height: 16),
                  Text(
                    widget.product.description,
                    style: TextStyle(color: Colors.grey.shade700),
                  ),

                  const Spacer(),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.remove),
                              onPressed: () {
                                if (quantity > 1) {
                                  setState(() {
                                    quantity--;
                                  });
                                }
                              },
                            ),
                            Text(
                              "$quantity",
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () {
                                setState(() {
                                  quantity++;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {
                          },
                          child: const Text(
                            "Add to cart",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
