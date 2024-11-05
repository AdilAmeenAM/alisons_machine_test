import 'package:alisons_machine_test/feature/home/services/home_services.dart';
import 'package:alisons_machine_test/feature/home/view/widgets/pageview_widget.dart';
import 'package:alisons_machine_test/feature/home/view/widgets/product_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const routePath = '/home';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: HomeServices.getData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return const Center(
                child: Text('Cannot load home page, Try again'),
              );
            }

            final responseData = snapshot.data!;

            return SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset("assets/images/logo.png"),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset("assets/images/search.png"),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset("assets/images/love.png"),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset("assets/images/cart.png"),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      height: 200,
                      child: Placeholder(
                        color: Colors.grey,
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(16),
                            splashColor: Colors.red,
                            child: Ink(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                border:
                                    Border.all(width: .2, color: Colors.white),
                              ),
                              child: const Center(child: Text("Shop now")),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Our Brands",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 150,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (context, index) => const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: SizedBox(
                                  height: 150,
                                  width: 118,
                                  child: Placeholder(),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            "Suggested For You",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                          const ProductCardWidget(),
                          SizedBox(
                            height: 385,
                            child: PageView(
                              children: const [
                                PageviewWidget(),
                                PageviewWidget(),
                                PageviewWidget(),
                                PageviewWidget(),
                              ],
                            ),
                          ),
                          const Text(
                            "Best Sellers",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                          const ProductCardWidget(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
