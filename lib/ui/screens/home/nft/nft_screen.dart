import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nft_app/ui/screens/home/nft/nft_view_model.dart';
import 'package:nft_app/ui/shared/title_style.dart';
import 'package:nft_app/ui/widgets/collection_item.dart';
import 'package:nft_app/ui/widgets/popular_nft_item.dart';
import 'package:stacked/stacked.dart';

class NFTScreen extends StatelessWidget {
  const NFTScreen({Key? key}) : super(key: key);

  Widget buildCategory(String category,bool isSelect,Function onClick) {
    return InkWell(
      onTap: (){
        onClick();
      },
      child: Text(category,style: titleStylePrimary.copyWith(fontSize: 17,
      color: isSelect? Colors.black:Colors.black.withOpacity(0.45),
      fontWeight: FontWeight.w700
    ),),);
  }

  @override
  Widget build(BuildContext context) {
    final popularItems = [
      {
        "asset":"popular1.png",
        "title":"Rebels-NightCard#",
        "time":"04h 09m 12s",
        "price":"10.01"
      },
      {
        "asset":"popular2.png",
        "title":"Rebels-NightCard#",
        "time":"04h 09m 12s",
        "price":"10.01"
      }
    ];

    final collections = [
      {
        "asset":"collection1.png",
        "author":"@jailyn1509",
        "name":"Bored Ape Yacht Club",
        "content":"5,4563",
        "variation":"+23,00%",
        "badge":1

      },
      {
        "asset":"collection2.png",
        "author":"@Dejah09",
        "name":"Dejah Zulauf",
        "content":"5,0157",
        "variation":"-31,20%",
        "badge":2

      },

      {
        "asset":"collection3.png",
        "author":"@jailyn1509",
        "name":"Jailyn Crona",
        "content":"5,4563",
        "variation":"+23,00%",
        "badge":3

      }
    ];



    return ViewModelBuilder<NFTViewModel>.reactive(
      viewModelBuilder: ()=> NFTViewModel(),
      builder: (context, model,child) {
        return SafeArea(child: CustomScrollView(
          slivers: [
            SliverPadding(padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            sliver: SliverToBoxAdapter(child: Row(
              children: [
                Expanded(child: buildCategory("Popular",model.currentCategoryIndex ==0, (){
                  model.setCurrentCategory(0);
                })),

                Expanded(child: buildCategory("Market",model.currentCategoryIndex ==1, (){
                  model.setCurrentCategory(1);
                })),

                 Expanded(child: buildCategory("Primanry",model.currentCategoryIndex ==2, (){
                  model.setCurrentCategory(2);
                })),
                
                Expanded(child: IconButton(onPressed: (){}, 
                    icon: const Icon(CupertinoIcons.search,color: Colors.black,)))


              ],
            ),),),


            SliverToBoxAdapter(child: SizedBox(
              height: 360,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                Map<String,dynamic> item = popularItems[index];
                return PopularNFTItem(asset: item["asset"],
                    title: item["title"],
                    time: item["time"],
                    price: item["price"]);
              },itemCount: popularItems.length,),
            ),),

            SliverPadding(padding: const EdgeInsets.only(left: 20,right:20,top: 20,bottom: 10),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Top Collections",style: titleStyleHeading.copyWith(
                  fontSize: 16
                ),),
                InkWell(onTap: (){},
                child: Text("View all",style: titleStylePrimary.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500
                ),),)
              ],),
            ),),
            SliverList(delegate: SliverChildBuilderDelegate((context,index){
              Map<String,dynamic> collection = collections[index];
              return CollectionItem(asset: collection["asset"],
                  author: collection["author"],
                  content: collection["content"],
                  variation: collection["variation"],
                  name: collection["name"],
                  badge: collection["badge"]);
            },childCount: collections.length))

          ],
        ));
      }
    );
  }
}
