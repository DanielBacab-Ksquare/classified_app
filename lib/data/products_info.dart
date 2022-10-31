class ProductsInfo {
  final List _ads = [
    {
      "title": "iPhone 11 for sale",
      "price": 12000.0,
      "images": [
        "images/iphone11_1.jpg",
        "images/iphone11_2.jpg",
        "images/iphone11_3.jpg",
        "images/iphone11_4.jpg",
        "images/iphone11_5.jpg",
        "images/iphone11_6.jpg",
        "images/iphone11_7.jpg",
        "images/iphone11_8.jpg",
      ],
      "fromUser": true,
      "sellerName": "Daniel",
      "time": 18,
      "contactNumber": 529798765432,
      "description":
          "New iPhone 11 (2019). Processor: Apple A13 Bionic (7 nm+), RAM: 4 GB, Storage: 64 GB, 128 GB, 256 GB, Camera: 12 MP (wide) + 12 MP (ultrawide)"
    },
    {
      "title": "iPhone 12 for sale",
      "price": 15000.0,
      "images": [
        "images/iphone12_1.jpg",
        "images/iphone12_2.jpg",
        "images/iphone12_3.jpg",
      ],
      "fromUser": false,
      "sellerName": "Sundar",
      "time": 28,
      "contactNumber": 9876543210,
      "description":
          "New iPhone 12 (2020). Processor: Apple A14 Bionic,  Storage: 64 GB, 128 GB, 256 GB, Camera: 12 MP (wide) + 12 MP (ultrawide), Display: 6.1 inches"
    },
    {
      "title": "Used Macbook for sale",
      "price": 26000.0,
      "images": [
        "images/mac_1.jpg",
        "images/mac_2.jpg",
        "images/mac_3.jpg",
        "images/mac_4.jpg",
        "images/mac_5.jpg",
        "images/mac_6.jpg",
        "images/mac_7.jpg",
        "images/mac_8.jpg",
      ],
      "fromUser": true,
      "sellerName": "Daniel",
      "time": 12,
      "contactNumber": 529798765432,
      "description":
          "Used Macbook. Apple M2 chip, Media engine, 13.3-inch (diagonal) LED-backlit display with IPS technology, 8GB unified memory, 256GB SSD"
    },
    {
      "title": "Chevrolet spark 2022",
      "price": 150000.0,
      "images": [
        "images/spark_1.jpg",
        "images/spark_2.jpg",
        "images/spark_3.jpg",
      ],
      "fromUser": false,
      "sellerName": "Roberto",
      "time": 8,
      "contactNumber": 9987619856,
      "description":
          "Used Chevroled spark, 2022 model. red color, fuel efficient, ABS brakes, compact, 4 star safety and 1500 mileage."
    },
    {
      "title": "Xiaomi POCO X3 Pro",
      "price": 5000.0,
      "images": [
        "images/poco_1.jpg",
        "images/poco_2.jpg",
        "images/poco_3.jpg",
      ],
      "fromUser": false,
      "sellerName": "Cesar",
      "time": 2,
      "contactNumber": 9815619856,
      "description":
          "Used Xiaomi Poco X3 Pro, Ice Blue color, Qualcomm Snapdragon 860 processor, 128GB of storage, 6GB of RAM, 6.67-inch 120 Hz IPS screen, 5,160 mAh battery"
    },
    {
      "title": "Echo Dot",
      "price": 800.0,
      "images": [
        "images/echo_1.jpg",
        "images/echo_2.jpg",
        "images/echo_3.jpg",
      ],
      "fromUser": false,
      "sellerName": "Estrella",
      "time": 23,
      "contactNumber": 9922585655,
      "description":
          "Echo Dot new third generation. smart speaker that is controlled by voice and connects you with Alexa over Wi-Fi. Bluetooth connection or 3.5 mm cable to listen to music."
    },
    {
      "title": "Acer Nitro 5",
      "price": 20000.0,
      "images": [
        "images/nitro_1.jpg",
        "images/nitro_2.jpg",
        "images/nitro_3.jpg",
      ],
      "fromUser": false,
      "sellerName": "Fernando",
      "time": 15,
      "contactNumber": 9744895678,
      "description":
          "Powerful laptop for any purpose. Intel® Core™ i7-11800H processor Octa-core 2.30 GHz, NVIDIA® GeForce RTX™ 3050Ti with 4 GB dedicated memory, 16 GB, DDR4 SDRAM, 512 GB SSD."
    },
    {
      "title": "Used Playstation 5",
      "price": 9000.0,
      "images": [
        "images/ps_1.jpg",
        "images/ps_2.jpg",
        "images/ps_3.jpg",
        "images/ps_4.jpg",
        "images/ps_5.jpg",
        "images/ps_6.jpg",
        "images/ps_7.jpg",
        "images/ps_8.jpg",
      ],
      "fromUser": true,
      "sellerName": "Daniel",
      "time": 7,
      "contactNumber": 529798765432,
      "description":
          "Beautiful Playstation 5 with less than 6 months of use. version with disc player, 4k resolution, 825GB of storage, includes 2 Dualsense controls with adaptive triggers and haptic feedback"
    },
  ];

  List userList() {
    List userListAdd = [];
    for (int i = 0; i < _ads.length; i++) {
      if (_ads[i]["fromUser"] == true) {
        userListAdd.add(_ads[i]);
      }
    }
    return userListAdd;
  }

  List get ads {
    return _ads;
  }
}
