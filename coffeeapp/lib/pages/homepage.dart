import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C110F),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffE4CF9A)),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.menu),
                        color: const Color(0xff1C110F),
                      ),
                    ),
                    //  logo text
                    const Text(
                      'CoffeeApp',
                      style: TextStyle(
                        fontSize: 24,
                        color: Color(0xffE4CF9A),
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffE4CF9A)),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.search),
                        color: const Color(0xff1C110F),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage('assets/banner.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 45,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffE4CF9A),
                      ),
                      child: const Center(
                        child: Text(
                          'Popular',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff1C110F),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color(0xffE4CF9A),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'Newest',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xffE4CF9A),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color(0xffE4CF9A),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'Recommanded',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xffE4CF9A),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 310,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    SizedBox(width: 20),
                    CustomProductWidhet(image: 'assets/post-1.png'),
                    CustomProductWidhet(image: 'assets/post-2.png'),
                    CustomProductWidhet(image: 'assets/post-3.png'),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Recommended',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xffE4CF9A),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text(
                        'View All',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffE4CF9A),
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomProductWidhet extends StatelessWidget {
  const CustomProductWidhet({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xff35291D),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 190,
            height: 190,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Indonesian Coffee',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xffE4CF9A),
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Coffee Beans',
            style: TextStyle(
              fontSize: 16,
              color: Color.fromARGB(255, 137, 126, 96),
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '\$ 20',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xffE4CF9A),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffE4CF9A),
                ),
                child: const Center(
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    color: Color(0xff1C110F),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
