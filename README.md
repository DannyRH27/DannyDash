View the [live site](https://dannydash.herokuapp.com).

# DannyDash
DannyDash is an on-demand prepared food delivery service inspired by [live site](https://doordash.com) that estimates the amount of time it will take for Danny to delivery food to you by walking. It was implemented using the following technologies:

+ **Frontend**: React.js, Redux
+ **Backend**: PostgreSQL Database, Ruby on Rails
+ **Others**: JavaScript, Amazon S3, Google Geocoding API, Google Maps Javascript API, Google Distance Matrix API, Omniauth Facebook API,

## Table of Contents
+ [Logistics Dispatch System](https://github.com/DannyRH27/DannyDash#logistics-dispatch-system)
+ [Facebook Omni-Authorization](https://github.com/DannyRH27/DannyDash/#facebook-omni-authorization)
+ [Dynamic Search](https://github.com/DannyRH27/DannyDash/#dynamic-search)

## Logistics Dispatch System
<img src="https://dannydash-seeds.s3-us-west-1.amazonaws.com/ReadMe/Dispatch.png" width="1000">

The Logistics Dispatch System is implemented using Google's Geocoding, Distance Matrix, and Maps Javascript APIs. <br/><br/>
First, the Geocoding API will take the current user's address and the destination store address and return latitude/longitude coordinates for both. <br/><br/>
Next, the store coordinates are set as the origin and the user's coordinates are set as the destination in the Distance Matric API inputs and will return, duration and distance. <br/><br/>
Finally, the Maps Javascript API will initialize an instance of Google Maps and use the coordinates to create two markers on the map. ETA will be calculated by manipulating the returned duration and incrementing it with a DateTime Object.
```
  calculateDispatchDistance(order) {
    const { updateOrder } = this.props;
    function callback(response, status) {
      if (status == "OK") {
        var origins = response.originAddresses;
        var destinations = response.destinationAddresses;

        for (var i = 0; i < origins.length; i++) {
          var results = response.rows[i].elements;
          for (var j = 0; j < results.length; j++) {
            var element = results[j];
            var distance = element.distance.text;
            var durationText = element.duration.text;
            var duration = element.duration.value;
            var from = origins[i];
            var to = destinations[j];
          }
        }
        var date = new Date(order.createdAt);
        date.setMinutes(date.getMinutes() + duration / 60);
        var minutes = date.getMinutes();
        var hours = date.getHours();
        var ampm = hours >= 12 ? "pm" : "am";
        hours = hours % 12;
        hours = hours ? hours : 12; // the hour '0' should be '12'
        minutes = minutes < 10 ? "0" + minutes : minutes;
        var strTime = hours + ":" + minutes + " " + ampm;
        if (order.deliveryEta === null) {
          const newOrder = Object.assign({}, order)
          newOrder.deliveryEta = strTime
          newOrder.deliveredDate = date
          updateOrder(newOrder)
        }
        

        this.setState({ duration: duration });
        this.setState({ ETA: strTime });
        this.setState({ durationText: durationText });
        this.setState({ distance: distance });
        this.setState({ deliveryDate: date })
        this.initMap(order);

      }
    }
    const { currentUser } = this.props;
    var origin1 = order.store.address;
    var destinationA = currentUser.address;

    var service = new google.maps.DistanceMatrixService();
    service.getDistanceMatrix(
      {
        origins: [origin1],
        destinations: [destinationA],
        travelMode: "WALKING",
        unitSystem: google.maps.UnitSystem.IMPERIAL,
      },
      callback.bind(this)
    );
  }

  initMap(order) {
    const { currentUser } = this.props;
    var location = { lat: 37.75383, lng: -122.401772 };
    var map = new google.maps.Map(document.getElementById("order-map"), {
      zoom: 15,
      center: location,
    });
    var geocoder = new google.maps.Geocoder();
    geocoder.geocode({ address: currentUser.address }, function (
      results,
      status
    ) {
      var homeMark = <img src="https://dannydash-seeds.s3-us-west-1.amazonaws.com/Home.png" alt=""/>
      map.setCenter(results[0].geometry.location);
      var marker = new google.maps.Marker({
        map: map,
        position: results[0].geometry.location,
      });
      this.setState({address: results[0].formatted_address})
    // }
    }.bind(this))

    geocoder.geocode({ address: order.store.address }, function (
      results,
      status
    ) {
      if (status == google.maps.GeocoderStatus.OK) {
        var storeMark = <img src="https://dannydash-seeds.s3-us-west-1.amazonaws.com/Store.png" alt=""/>
        var marker = new google.maps.Marker({
          map: map,
          position: results[0].geometry.location,
        });
      }
    }.bind(this))
  }
```
## Facebook Omni-Authorization
<p align="center">
  <img src="https://dannydash-seeds.s3-us-west-1.amazonaws.com/ReadMe/FBLogin.png" width="1000">
</p>
<p align="center">
  <img src="https://dannydash-seeds.s3-us-west-1.amazonaws.com/ReadMe/FBPermission2.png" width="500">
</p>
DannyDash allows you sign in or signup for a user account using your Facebook credentials.
<br>

Omni-Authorization is achieved through Facebook Login API. When the Continue with Facebook button is hit, a script runs that redirects to Facebook to ask for information based on your Facebook login credentials. Once authorized, the
Omniauth Controller determines the Facebook API route has been hit and proceeds to generate a user with the information provided. If successful, the user will be created and redirected to the home page. On failure, the account will not be created and the user will be redirected back to the splash page.
<br/>
<br/>
Async FB API Call
```
<script>
      window.fbAsyncInit = function() {
        FB.init({
          appId      : '175499983639989',
          cookie     : true,
          xfbml      : true,
          version    : 'v6.0'
        });
          
        FB.AppEvents.logPageView();   
          
      };

  (function(d, s, id){
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) {return;}
    js = d.createElement(s); js.id = id;
    js.src = "https://connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));
</script>

<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v6.0&appId=175499983639989&autoLogAppEvents=1"></script>
```
<br/>
Omni-Authorization Callback Controller Facebook Route
<br/>
<br/>

```
def facebook
    @user = User.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
        login!(@user)
        redirect_to "#/home"
        @cart = @user.cart || Cart.create(customer_id: @user.id)
        sign_in @user, event: :authentication
        set_flash_message(:notice, :success, kind: "Facebook") if is_navigational_format?
    else
        session["devise.facebook_data"] = request.env["omniauth.auth"]
        redirect_to new_user_registration_url
    end

end

def failure
    redirect_to root_path
end
```

## Dynamic Search
<p align="center">
  <img src="https://dannydash-seeds.s3-us-west-1.amazonaws.com/ReadMe/SearchDropdown2.png" width=300>
</p>
<p align="center">
  <img src="https://dannydash-seeds.s3-us-west-1.amazonaws.com/ReadMe/SearchIndex.png" width=1000>
</p>
Search stores for quick navigation! See the first five stores that match, or view all results! <br/>
Search is implemented using query strings taken from the URL to scan the database for queries.
<br/>
<br/>
AJAX Call
<br/>

```
search(fragment) {
  $.ajax({
    method: "GET",
    url: `/api/stores/search/`,
    data: { fragment: fragment },
  }).then((res) => {
    this.setState({ searchResults: res });
  });
}
```

<br/>
Store Controller Search Route
<br/>

```

def search
  fragment = params[:fragment]
  @stores = Store.where("name ilike ?", "%#{fragment}%")
  render :search
end

```

## Contact
+ Danny Huang: 
[Github](https://github.com/DannyRH27) 
[LinkedIn](https://www.linkedin.com/in/dannyrhuang/)