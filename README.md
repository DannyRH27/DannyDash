View the [live site](https://dannydash.herokuapp.com).

# DannyDash
<p align="center">
  <img src="https://distansing-dev.s3-us-west-1.amazonaws.com/splash.png" width="1200">
</p>
DannyDash is an on-demand prepared food delivery service inspired by [live site](https://doordash.com) that estimates the amount of time it will take for Danny to delivery food to you by walking. It was implemented using the following technologies:

+ **Frontend**: React.js, Redux
+ **Backend**: PostgreSQL Database, Ruby on Rails
+ **Others**: JavaScript, Amazon S3, Google Geocoding API, Google Maps Javascript API, Google Distance Matrix API, Omniauth Facebook API,

## Table of Contents
+ [Logistics Dispatch System](https://github.com/DannyRH27/DannyDash#dispatch)
+ [Facebook Omni-Authorization](https://github.com/DannyRH27/DannyDash/#facebook-omni-authorization)
+ [Live Chat](https://github.com/tjmccabe/DistanSing#live-chat)
+ [Dynamic Search](https://github.com/tjmccabe/DistanSing#dynamic-search)

## Dispatch
### Artists
As an artist, host your own events by navigating to your profile page and click the <img src="https://distansing-dev.s3-us-west-1.amazonaws.com/create_event_button.png" width="80"> button. 

<img src="https://distansing-dev.s3-us-west-1.amazonaws.com/create_event.png" width="500">

Fill in some basic information, such as an event name, the ticket price, and when the event will be held. *We don't need to worry about the 'where' since we will all be virtual!* Once the countdown reaches zero, click the <img src="https://distansing-dev.s3-us-west-1.amazonaws.com/event_go_live.png" width="100"> button and start streaming!

### Users
As a user, feel free to browse and discover events that peak your interest. Log in to purchase a ticket and secure your spot! See a list of your purchased events (and even refund a ticket!) by navigating to your profile. Once the event countdown reaches zero, just wait for the artist to start streaming, and you will be redirected to the event!

## Facebook Omni-Authorization
<p align="center">
  <img src="https://dannydash-seeds.s3-us-west-1.amazonaws.com/ReadMe/FBLogin.png" width="1000">
</p>
<p align="center">
  <img src="https://dannydash-seeds.s3-us-west-1.amazonaws.com/ReadMe/FBPermission.png" width="1000">
</p>
DannyDash allows you sign in or signup for a user account using your Facebook credentials.
<br>

Omni-Authorization is achieved through Facebook Login API. When the login with Facebook button is hit, a script runs that redirects to Facebook to ask for information based on your Facebook login credentials. Once authorized, the
Omniauth Controller determines the Facebook route has been hit and proceeds to generate a user with the information provided. If successful, the user will be created and redirected to the home page. On failure, the account will not be created and the user will be redirected back to the splash page.

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

## Live Chat
<p align="center">
  <img src="https://distansing-dev.s3-us-west-1.amazonaws.com/live_chat.png" width="400">
</p>
Interact with artist or your fans during an event using our real-time chat. Use the preloaded emojis to express your enjoyment!

## Dynamic Search
<p align="center">
  <img src="https://distansing-dev.s3-us-west-1.amazonaws.com/search.png" width="400">
</p>
Search artists or events using the search bar for quick navigation! See the first five artists/events that match, or view all results!

## Contact
+ TJ McCabe: 
[Github](https://github.com/tjmccabe/) 
[LinkedIn](https://www.linkedin.com/in/tj-mccabe/)
+ Darrick Yong: 
[Github](https://github.com/darrickyong/) 
[LinkedIn](https://www.linkedin.com/in/darrickyong/)
+ Danny Huang: 
[Github](https://github.com/DannyRH27) 
[LinkedIn](https://www.linkedin.com/in/dannyrhuang/)
+ Glen Park: 
[Github](https://github.com/glenpark00) 
[LinkedIn](https://www.linkedin.com/in/glen-park-20ab961a9/)
