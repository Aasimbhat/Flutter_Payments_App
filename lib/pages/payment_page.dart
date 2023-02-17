import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_app/component/colors.dart';
import 'package:payment_app/widgets/buttons.dart';
import 'package:payment_app/widgets/large_buttons.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 80, left: 20, right: 20),
        height: h,
        width: w,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("images/paymentbackground.png"))),
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: h * 0.14,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage("images/success.png"))),
            ),
            Text(
              "Success !",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: AppColor.mainColor),
            ),
            Text(
              "Payment is Completed For 2 Bills",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColor.idColor),
            ),
            SizedBox(
              height: h * 0.045,
            ),
            Container(
              height: 160,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      width: 2, color: Colors.grey.withOpacity(0.5))),
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (_,index){
                   return Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 15, left: 20,bottom: 10),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.green),
                              child: Icon(
                                Icons.done,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "KenGen Power",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.mainColor),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                 Text(
                                  "id: 456799",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.idColor),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                             Column(
                               children: [
                                 Text(
                                  "",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.mainColor),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                 Text(
                                      "\$ 1238.00",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: AppColor.mainColor),
                                    ),
                               ],
                             ),
                          ],
                        ),
                       Divider(thickness: 2,color: Colors.grey.withOpacity(0.5),)
                      
                      ],
                    ),
                  );
                  }),
              ),
             
            ),
          SizedBox(
            height: h*0.02,
          ),
          Column(
            children: [
              Text(
                "Total Amount",style: TextStyle(
                  fontSize: 20,
                  color: AppColor.idColor

                ),
              ),
               SizedBox(
            height: 10,
          ),
               Text(
                "\$2345.09",style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: AppColor.mainColor

                ),
              ),
               SizedBox(
            height: h*0.13,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColor.mainColor
                ),
                child: AppButtons(icon: Icons.share_sharp,onTap: (){},iconColor: Colors.white,)),
              SizedBox(width: 80),
            Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColor.mainColor
                ),
              child:
            
             AppButtons(icon: Icons.print_outlined,onTap: (){},iconColor: Colors.white,))

            ],
          ),
          SizedBox(
            height: h*0.02,
          ),
          Container(
            margin: EdgeInsets.only(right: 18),
            child: AppLargeButton(text: "Done",
            onTap: (){
              Get.back();
            },
            
            )
            
            )
            ],
          )
          ],
        ),
      ),
    );
  }
}
