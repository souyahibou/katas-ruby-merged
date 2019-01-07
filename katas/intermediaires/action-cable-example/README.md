Action Cable Example
===

Let's build a chat with ActionCable!

This kata borrows heavily from [Sophie DeBenedetto's awesome tutorial on ActionCable](https://blog.heroku.com/archives/2016/5/9/real_time_rails_implementing_websockets_in_rails_5_with_action_cable).

This app is a small chat system: users can send messages on different channels. However, all the pages are static, which means you have to refresh the page to see if new messages have been posted.

The point of this kata is to fix that by using ActionCable.


## Setup

You'll need to be running ruby 2.3.0 (we recommend using [rbenv](https://github.com/rbenv/rbenv) to manage multiple versions of ruby).

ActionCable uses Redis to persist connection data. You can install Redis like this:
* For Mac OS: `brew install redis`
* For Linux:
```
wget http://download.redis.io/redis-stable.tar.gz
tar xvzf redis-stable.tar.gz
cd redis-stable
make
make install
```

We'll also be using PostgreSQL as our database. On Mac OS, you can install it with `brew install postgres`. You'll find instructions [here](https://wiki.postgresql.org/wiki/Detailed_installation_guides) for Linux.

And of course, once you've forked this repo, you need to run `bundle install`.

Create the database with `rake db:create`

Migrate the database with `rake db:migrate`

## Domain

The only objects we're dealing with are users, channels and messages. Check out the models and the `db/schema.rb` file to understand them.

## Using ActionCable

First, we need to modify the html so that sending the message happens by pressing Enter instead of submitting the form.
Add this to `app/assets/javascripts/chatrooms.js`:

```
$(document).ready(function() {
  submitNewMessage();
});

function submitNewMessage(){
  $('textarea#message_content').keydown(function(event) {
    if (event.keyCode == 13) {
        $('[data-send="message"]').click();
        $('[data-textarea="message"]').val(" ")
        return false;
     }
  });
}
```


Then, [follow the steps](https://blog.heroku.com/real_time_rails_implementing_websockets_in_rails_5_with_action_cable#step-1-establish-the-socket-connection-server-side) from the original article.

## Results

> note: app-name = action-cable-example.herokuapp

### Actions completed

- [x] Delete bd/migrate/...change column_name_in_users.rb
- [x] Check .ruby-version: use newest version than 2.3.0
- [x] Exec `$ bundle install || bundle update`
- [x] Exec `$ rails db:create && rails db:migrate`

* Step Establish the Socket Connection: Client-Side:

  - [x] add  `mount ActionCable.server => '/cable` inner config/routes.rb
  - [x] add  `config.action_cable.url = "ws://localhost:3000/cable"` inner config/development.rb
<details><summary>In Heroku</summary>
  <p>
  - [x] add  `config.web_socket_server_url = "wss://app-name/cable"` inner config/production.rb
  - [x] add  `config.action_cable.allowed_request_origins = ['https://app-name.com', 'http://app-name.com']` inner prod.rb:
  - [x] Update   URL Action Cable Redis(by Redis To Go) configuration inner config/cable.yml
    1. retrieve Redis To Go UR
    ``` bash
      $ heroku create action-cable-example-app
      $ heroku addons:add redistogo
      $ heroku config --app action-cable-example | grep REDISTOGO_URL
    ```
    2. update url inner config/cable.yml
    ```yml
    production:
      adapter: redis
      url: redis://redistogo:righturlkeygetonthefirststep.redistogo.com:9247/
    ```
  </p>
</details>
  - [x] add `<%= action_cable_meta_tag %>` inner views/layouts/application.html.erb
  - [x] Create(consumer) .js file inner app/assets/javascripts/channel if not already exits: like following:

    ```javascript
      // app/assets/javascripts/channels/chatrooms.js

      //= require cable
      //= require_self
      //= require_tree .

      this.App = {};
      App.cable = ActionCable.createConsumer();  
    ```

* Step Building the Channel
  - [x] Create(new channel) ...\_channel.rb file inner app/channels/: like following:

    ```ruby
      # app/channels/messages_channel.rb
      class MessagesChannel < ApplicationCable::Channel
        def subscribed
          stream_from 'messages'
        end
      end  
    ```
  - [x] Add (Broadcast to the Channel) `ActionCable.server.broadcast 'channel'(, attr: val)*; head: ok` on implted cntrlr: like following:

    ```ruby
      #  app/controllers/messages_controller.rb
      class MessagesController < ApplicationController

        def create
          message = Message.new(message_params)
          message.user = current_user
          if message.save
            ActionCable.server.broadcast 'messages', message: message.content, user: message.user.name  #added
            head :ok   #added
          else
            redirect_to chatroom_path(message.chatroom)
          end
        end

        ...
      end
  ```
  - [x] Create(subscriber) .js file inner app/assets/javascripts/channels/: like following:

    ```javascript
      // app/assets/javascripts/channels/messages.js
      App.messages = App.cable.subscriptions.create('MessagesChannel', {
        received: function(data) {
          $("#messages").removeClass('hidden')
          return $('#messages').append(this.renderMessage(data));
        },

        renderMessage: function(data) {
          return "<p> <b>" + data.user + ": </b>" + data.message + "</p>";
        }
      });
    ```

### How To Run

- clone this [repo](./)
- go to folder `cd action-cable-example`
- install gems `bundle install`
- migrate DB `rails db:create && rails db:migrate`
- run app locally `rails s`
- enjoy
