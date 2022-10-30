class ProductsInfo {
  final List _ads = [
    {
      "title": "iPhone 11 for sale",
      "price": 12000.0,
      "images": [
        "images/iphone11_1.jpg",
        "images/iphone11_2.jpg",
        "images/iphone11_3.jpg",
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
      "title": "Macbook for sale",
      "price": 26000.0,
      "images": [
        "images/mac_1.jpg",
        "images/mac_2.jpg",
        "images/mac_3.jpg",
      ],
      "fromUser": true,
      "sellerName": "Daniel",
      "time": 12,
      "contactNumber": 529798765432,
      "description":
          "Used Macbook. Apple M2 chip, Media engine, 13.3-inch (diagonal) LED-backlit display with IPS technology, 8GB unified memory, 256GB SSD"
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
