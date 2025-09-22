import 'package:activepro/layout/instalist.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_symbols_icons/symbols.dart';

class Insta extends StatelessWidget {
  const Insta({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return  Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Instagram",style: GoogleFonts.lobster(
                          fontSize: 32,
                          color: Colors.white,
                          fontWeight: FontWeight.w100

                          )),
                           Row(
                            
                            children: [
                                Icon(Symbols.favorite,size: w *0.06,color: Colors.white, ),
                               SizedBox(width: w*0.04,),
                               Icon(Symbols.send,size: w *0.06,color:Colors.white,),
                            ],
                          )
                      ],
                    ),
                 
                   
                  
                  ],
                ),
                ),
            ),
         
             SliverToBoxAdapter(
              child: SizedBox(height: h *0.2,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Status(),
              ),
              ),
              
            ),
              SliverToBoxAdapter(
              child: SizedBox(height: h * 0.04,),
            ),
             SliverToBoxAdapter(
              child:  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(2),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                 gradient:  LinearGradient(
                               begin: Alignment.topLeft,
                               end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFfeda75), // yellow
                            Color(0xFFfa7e1e), // orange
                            Color(0xFFd62976), // pink
                            Color(0xFF962fbf), // purple
                            Color(0xFF4f5bd5), // blue
                          ],
                        ),
                              ) ,
                              child: const CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage('assets/images/web2.jpg'),
                              ),
                            ),
                            SizedBox(width: w * 0.009,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("adndrewtate",style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: w * 0.03,
                                ),),
                                 Text("Sponsored",style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: w * 0.02,
                                ),),
                              
                              ],
                              
                            ),
                              
                          ],
                        ),
                        const Icon(Icons.more_horiz,color: Colors.white,)
                      ],
                    ),
                     SizedBox(height: h * 0.020,),
                    SizedBox(
                      height: 300,
                      width: w * 10,
                      child: Image.asset("assets/images/web1.jpg",
                      fit: BoxFit.fill,
                      ),

                    ),
                    SizedBox(height: h*0.010,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                             Icon(Symbols.favorite,size: w *0.04,color: Colors.white, ),
                             SizedBox(width: w*0.010,),
                              Icon(Symbols.message_rounded,size: w *0.04,color: Colors.white, ),
                                   SizedBox(width: w*0.010,),
                                   Icon(Symbols.send,size: w *0.04,color:Colors.white,),
                          ],
                        ),
                          Icon(Symbols.save_alt_sharp,size: w *0.04,color:Colors.white,),
                      ],
                    )
                  ],
                ),
              ),
            ),
              SliverToBoxAdapter(
              child:  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(2),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                 gradient:  LinearGradient(
                               begin: Alignment.topLeft,
                               end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFfeda75), // yellow
                            Color(0xFFfa7e1e), // orange
                            Color(0xFFd62976), // pink
                            Color(0xFF962fbf), // purple
                            Color(0xFF4f5bd5), // blue
                          ],
                        ),
                              ) ,
                              child: const CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage('assets/images/web9.jpg'),
                              ),
                            ),
                            SizedBox(width: w * 0.009,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("adndrewtate",style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: w * 0.03,
                                ),),
                                 Text("Sponsored",style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: w * 0.02,
                                ),),
                              
                              ],
                              
                            ),
                              
                          ],
                        ),
                        const Icon(Icons.more_horiz,color: Colors.white,)
                      ],
                    ),
                      SizedBox(height: h * 0.020,),
                    SizedBox(
                      height: 300,
                      width: w * 10,
                      child: Image.asset("assets/images/web3.jpg",
                      fit: BoxFit.fill,
                      ),

                    ),
                    SizedBox(height: h*0.010,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                             Icon(Symbols.favorite,size: w *0.08,color: Colors.white, ),
                             SizedBox(width: w*0.010,),
                              Icon(Symbols.message_rounded,size: w *0.08,color: Colors.white, ),
                                   SizedBox(width: w*0.010,),
                                   Icon(Symbols.send,size: w *0.08,color:Colors.white,),
                          ],
                        ),
                          Icon(Symbols.save_alt_sharp,size: w *0.08,color:Colors.white,),
                      ],
                    )
                  ],
                ),
              ),
            ),
              SliverToBoxAdapter(
              child:  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(2),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                 gradient:  LinearGradient(
                               begin: Alignment.topLeft,
                               end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFfeda75), // yellow
                            Color(0xFFfa7e1e), // orange
                            Color(0xFFd62976), // pink
                            Color(0xFF962fbf), // purple
                            Color(0xFF4f5bd5), // blue
                          ],
                        ),
                              ) ,
                              child: const CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage('assets/images/web6.jpg'),
                              ),
                            ),
                            SizedBox(width: w * 0.009,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("adndrewtate",style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: w * 0.03,
                                ),),
                                 Text("Sponsored",style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: w * 0.02,
                                ),),
                              
                              ],
                              
                            ),
                              
                          ],
                        ),
                        const Icon(Icons.more_horiz,color: Colors.white,)
                      ],
                    ),
                      SizedBox(height: h * 0.020,),
                    SizedBox(
                      height: 300,
                      width: w * 10,
                      child: Image.asset("assets/images/web8.jpg",
                      fit: BoxFit.fill,
                      ),

                    ),
                    SizedBox(height: h*0.010,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                             Icon(Symbols.favorite,size: w *0.04,color: Colors.white, ),
                             SizedBox(width: w*0.010,),
                              Icon(Symbols.message_rounded,size: w *0.04,color: Colors.white, ),
                                   SizedBox(width: w*0.010,),
                                   Icon(Symbols.send,size: w *0.04,color:Colors.white,),
                          ],
                        ),
                          Icon(Symbols.save_alt_sharp,size: w *0.04,color:Colors.white,),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        )
        ),
    );
  }
}