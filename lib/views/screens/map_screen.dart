import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:web_dasher/controllers/utills/app_colors.dart';
import 'package:web_dasher/controllers/utills/app_textStyles.dart';
import 'package:web_dasher/views/screens/pickupscreen.dart';
import 'package:web_dasher/views/widgets/search_customtextfield_screen.dart';
import 'package:web_dasher/views/widgets/small_common_button.dart';

// ignore: must_be_immutable
class MapViewScreen extends StatefulWidget {
  bool? isItem;
  String? imageUrl;
  String? title;

  MapViewScreen({super.key, this.isItem, this.imageUrl, this.title});

  @override
  State<MapViewScreen> createState() => _MapViewScreenState();
}

class _MapViewScreenState extends State<MapViewScreen> {
  List<String> images = [
    "assets/png/audio.png",
    "assets/png/automative.png",
    "assets/png/farming.png",
    "assets/png/construction.png",
    "assets/png/power.png",
  ];

  List<String> profileNames = [
    "Audio",
    "Automotive",
    "Farming",
    "Construction",
    "Power",
  ];

  RxInt selectedIndex = 0.obs;
  var markers = <Marker>{}.obs;

  // final CalendarController calendarController = Get.put(CalendarController());
  // final RangeController rangeController = Get.put(RangeController());
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late GoogleMapController _controller;

  // final EquipmentController equipmentController = Get.find<EquipmentController>();
  // final FilterBottomSheetController filterBottomSheetController = Get.find<FilterBottomSheetController>();

  @override
  void initState() {
    // callMethod();
    super.initState();
  }

  // Future<void> callMethod() async {
  //   print('start congrats');

  //   for (int i = 0; i < (equipmentController.getAllEquipmentData.value?.equipments?.length ?? 0); i++) {
  //     print('mid congrats');

  //     Equipment equipment = equipmentController.getAllEquipmentData.value!.equipments![i];
  //     Location? location = equipmentController.getAllEquipmentData.value?.equipments?[i].location;

  //     if (location != null) {
  //       // Load the custom marker icon from assets
  //       final BitmapDescriptor customIcon = await BitmapDescriptor.fromAssetImage(
  //         const ImageConfiguration(size: Size(5, 5)), // Set the size of the icon
  //         'assets/png/drillEquipment.png', // Path to your asset image
  //       );

  //       // Add a new marker for each equipment
  //       markers.add(
  //         Marker(
  //           markerId: MarkerId('Equipment ${i + 1}'),
  //           position: LatLng(location.lat ?? 0.0, location.long ?? 0.0),
  //           icon: customIcon, // Use the custom icon here
  //           infoWindow: InfoWindow(
  //             title: equipment.location?.address ?? 'Equipment ${i + 1}',
  //           ),
  //         ),
  //       );
  //       print('end congrats');
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: mediaQuerySize.height,
          width: mediaQuerySize.width,
          child: Expanded(
            child: Stack(
              children: [
                // Google Map at the bottom
                GoogleMap(
                  initialCameraPosition: const CameraPosition(
                    target: LatLng(37.42796133580664, -122.085749655962),
                    zoom: 14.4746,
                  ),
                  onMapCreated: (GoogleMapController controller) {
                    _controller = controller;
                  },
                  markers: markers, // Set the markers to the map
                ),

                // Positioned widget on top of the map
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.h),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: const Icon(
                              Icons.arrow_back,
                              color: AppColors.blackColor,
                            ),
                          ),
                          SizedBox(height: 1.5.h),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SearchCustomTextFormField(
                                isPrefix: false,
                                suffixIcon: Image.asset(
                                  'assets/pngs/search_icon.png',
                                  fit: BoxFit.cover,
                                ),
                                hintText: 'Search here',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 1.h),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          titleList.length,
                          (index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.whiteColor,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                  child: Text(titleList[index]),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),

                widget.isItem ?? false
                    ? Positioned(
                        bottom: 10, // Adjust as needed
                        left: 0,
                        right: 0,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2.h),
                          child: GestureDetector(
                            onTap: () {
                              // Get.to(() => ShowEquipmentNameProfile(
                              //       id: '',
                              //     ));
                            },
                            child: Container(
                              padding: EdgeInsets.only(right: 2.w, top: 10, bottom: 10, left: 8),
                              margin: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    spreadRadius: 0,
                                    blurRadius: 8,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: mediaQuerySize.height * 0.19,
                                    width: 120,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), image: DecorationImage(image: AssetImage(widget.imageUrl ?? ''))),
                                  ),
                                  SizedBox(width: 2.h),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              RatingBar(
                                                filledIcon: Icons.star,
                                                filledColor: AppColors.ratingColor,
                                                size: 18,
                                                emptyIcon: Icons.star_border,
                                                onRatingChanged: (value) => debugPrint('$value'),
                                                initialRating: 5,
                                                maxRating: 5,
                                              ),
                                              SizedBox(width: 1.h),
                                              Text("5.0", style: AppTextStyles().lightTextStyle()),
                                              Spacer(),
                                              Padding(
                                                padding: const EdgeInsets.only(right: 9.0),
                                                child: Icon(Icons.share),
                                              )
                                            ],
                                          ),
                                          SizedBox(height: mediaQuerySize.height * 0.004.h),
                                          Text(
                                            widget.title ?? '',
                                            style: AppTextStyles().mediumTextStyle(fontSize: 14),
                                          ),
                                          SizedBox(height: mediaQuerySize.height * 0.004.h),
                                          Text(
                                            "A5mall, Shuwaikh industrial, Kuwait",
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              color: Colors.grey,
                                            ),
                                            textAlign: TextAlign.left,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          SizedBox(height: mediaQuerySize.height * 0.004.h),
                                          SmallCommonButton(
                                            title: 'Open',
                                            color: Colors.transparent,
                                            isBorder: true,
                                            borderColor: Colors.green,
                                            textColor: Colors.green,
                                          ),
                                          SizedBox(height: mediaQuerySize.height * 0.008.h),
                                          Row(
                                            children: [
                                              GestureDetector(
                                                child: SmallCommonButton(
                                                  iconImageUrl: 'assets/pngs/buy_img.png',
                                                  title: 'Buy',
                                                  isIcon: true,
                                                  isBorder: false,
                                                  textColor: AppColors.whiteColor,
                                                ),
                                              ),
                                              SizedBox(width: mediaQuerySize.height * 0.008.h),
                                              GestureDetector(
                                                onTap: () {},
                                                child: SmallCommonButton(
                                                  isIcon: true,
                                                  iconImageUrl: 'assets/pngs/pickup_img.png',
                                                  title: 'Pickup',
                                                  isBorder: false,
                                                  textColor: Colors.white,
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    : SizedBox()
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<String> titleList = ['Stories', 'Business', 'Restaurants', 'School'];
}
