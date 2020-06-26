```javascript {
  entities: {
    stores: {
      1: {
        id: 1,
        name: 'Wok & Go',
        address: '2700 24th St, San Francisco, CA 94110',
        hours: 'LUNCH Monday - Friday 11:30AM - 2:30PM, DINNER Monday - Wednesday 5:30PM-10:00PM, Thursday 5:30PM- 
        11:00PM, Friday & Saturday 5:00PM-11:30PM, Sunday 5:00PM-10:00PM',
        description: 'Humble eatery serving traditional Chinese cuisine.',
        status: active,
        coordinate: {x: 37.7531, y: -122.4066},
        rating: 4.7,
        rating_count: 315,
        price_rating: '$'
      }
    },
    cart: { 
      contents: {
        1: {
          id: 1,
          name: "Salt & Pepper Wings",
          description: "Salt and pepper chicken wings are fried to a crunchy golden brown and then tossed in a garlic, red chili, white and black pepper mixture, that makes them flavorful and addictive.",
          photoURL: "/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBaVVCIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--bd0b7f11091251f1e27091f89b0f7c01b4ef4745/WokGo.jpg",
          price: "10.99",
          quantity: "1"
        }
      },
      customerId: 4,
      id: 1,
      storeId, 17
    },
    cartStore: {
      17: {
        id: 17,
        name: "Wok & Go"
        address: "2700 24th St, San Francisco, CA 94110",
        coordinate: {x: 37.7531, y: -122.4066},
        filters: ["Asian", "Fast Food", "Chinese],
        hours: ["10:00AM - 11:00PM"],
        photoUrls: ["/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBaVVCIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--bd0b7f11091251f1e27091f89b0f7c01b4ef4745/WokGo.jpg", "/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBaVVCIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--bd0b7f11091251f1e27091f89b0f7c01b4ef4745/WokGo.jpg"]
      }
    },
    filters: {
      22: {
        id: 22,
        filterTitle: "Convenience",
        photoURL: "/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBZ2dCIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--8b2d1cebfee84a8ff588e89a49adce6ba660274a/Convenience.jpg"
      }
    },
    menus: {
      1: {
        title: 'Popular Items',
        itemIds: [195]
      }
    },
    items: {
      195: {
        name: "Salt & Pepper Chicken Wings",
        description: "Salt and pepper chicken wings are fried to a crunchy golden brown and then tossed in a garlic, red chili, white and black pepper mixture, that makes them flavorful and addictive.",
        price: 10.99,
        photoUrl: "/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBaVVCIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--bd0b7f11091251f1e27091f89b0f7c01b4ef4745/WokGo.jpg"
      }
    },
    modalItem: {
      name: "Salt & Pepper Chicken Wings",
        description: "Salt and pepper chicken wings are fried to a crunchy golden brown and then tossed in a garlic, red chili, white and black pepper mixture, that makes them flavorful and addictive.",
        price: 10.99,
        photoUrl: "/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBaVVCIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--bd0b7f11091251f1e27091f89b0f7c01b4ef4745/WokGo.jpg"
    }
    },
    ui: {
      modal: true
    },
    errors: {
        session: [],
        store: []
    },
    session: {
        currentUser: {
          id: 2,
          fname: 'Glen',
          lname: 'Park',
          email: 'gpark@gmail.com',
          phone_number: '9494238483',
          address: '4321 Cool St., San Francisco 94110',
          currentOrder: 1,
      },
    }
  }