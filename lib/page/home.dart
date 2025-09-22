import 'package:activepro/layout/avater.dart';
import 'package:activepro/layout/cards.dart';
import 'package:activepro/layout/color.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.background,
      
      body: SafeArea(
        child: CustomScrollView(
          slivers: [

            SliverAppBar(
              floating: true,
              backgroundColor: AppColors.background,
              pinned: true,
              expandedHeight: 100,
             
              flexibleSpace: FlexibleSpaceBar(
                 background: Container(
                    color:AppColors.background ,
                    
                  ),
                  centerTitle: false,
                  titlePadding: const EdgeInsets.only(left: 8, bottom: 16,top: 16),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                            radius: 20,
                            backgroundColor: AppColors.accentBlue,
                    ),
                    const SizedBox(width: 8,),
                    Text('Hello, Onyebuchi',style: TextStyle(
                  color: Colors.white,
                  fontSize: w *0.04,
                  fontWeight: FontWeight.bold,
                 
                ),),
                  ],
                )
              ),

            ),
            /// Wallet Balance Section
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(w * 0.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// Balance texts
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Your Wallet Balance",
                          style: TextStyle(
                            color: AppColors.disabledText,
                            fontWeight: FontWeight.bold,
                            fontSize: w * 0.02 + 4,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          "\$25,500.20",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: w * 0.06,
                          ),
                        ),
                      ],
                    ),

                    /// Add Money Button
                    Container(
                      width: 80,
                      height: 50,
                      decoration: BoxDecoration(
                        color: AppColors.disabledText,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    
                        child: IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/fund');
                          },
                          icon: const Icon(Icons.add),
                          color: Colors.white,
                        ),
                      
                    ),
                  ],
                ),
              ),
            ),

            /// Spacing
            SliverToBoxAdapter(child: SizedBox(height: h * 0.04)),

            /// Horizontal Cards Section
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 200,
                child: CardScroll(), // ✅ Your horizontal card list
              ),
            ),

            /// Extra Spacing
            const SliverToBoxAdapter(child: SizedBox(height: 24)),
            SliverToBoxAdapter(
               child: Padding(
                 padding: const EdgeInsets.all(16.0),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: AppColors.disabledText,
                            borderRadius: BorderRadius.circular(50)
                          ),
                          
                          child: const Center(
                            child: Icon(Icons.save_alt,color: Colors.white,)
                          ),
                        ),
                        const SizedBox(height: 5,),
                          const Text('Top up',style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12
                            ),),
                      ],
                    ),
                     Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: AppColors.disabledText,
                            borderRadius: BorderRadius.circular(50)
                          ),
                          
                          child: const Center(
                            child: Icon(Icons.data_array,color: Colors.white,)
                          ),
                        ),
                        const SizedBox(height: 5,),
                          const Text('swap',style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12
                            ),),
                      ],
                    ),
                     Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: AppColors.disabledText,
                            borderRadius: BorderRadius.circular(50)
                          ),
                          
                          child: const Center(
                            child: Icon(Icons.send,color: Colors.white,)
                          ),
                        ),
                        const SizedBox(height: 5,),
                          const Text('Send',style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12
                            ),),
                      ],
                    ),
                     Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: AppColors.disabledText,
                            borderRadius: BorderRadius.circular(50)
                          ),
                          
                          child: const Center(
                            child: Icon(Icons.indeterminate_check_box_outlined,color: Colors.white,)
                          ),
                        ),
                        const SizedBox(height: 5,),
                          const Text('Request',style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12
                            ),),
                      ],
                    )
                  ],
                 ),
               ),
            ),
            
            const SliverToBoxAdapter(
              child: SizedBox(height: 10,),
            ),
           
              const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Text('Quick Send To',style:  TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
              ),
            ),
    const SliverToBoxAdapter(
              child: SizedBox(height: 10,),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 70,
                child: Avater(),
              ),
            ),
            /// Example: Transactions Section
            /// 
            const SliverToBoxAdapter(
              child: SizedBox(height: 15,),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: w * 0.04),
                child: Text(
                  "Recent Transactions",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: w * 0.045,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),

            /// Example transaction list
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => ListTile(
                  leading: CircleAvatar(
                    backgroundColor: AppColors.disabledText.withOpacity(0.2),
                    child: const Icon(Icons.payment, color: Colors.white),
                  ),
                  title: Text(
                    "Transaction #$index",
                    style: const TextStyle(color: Colors.white),
                  ),
                  subtitle: const Text(
                    "12 Sept 2025",
                    style: TextStyle(color: Colors.grey),
                  ),
                  trailing: Text(
                    index.isEven ? "-\$120.00" : "+\$450.00",
                    style: TextStyle(
                      color: index.isEven ? Colors.redAccent : Colors.greenAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                childCount: 10, // example count
              ),
            ),
          ],
        ),
      ),
    );
  }
}
