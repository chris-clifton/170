# "Getting Started"

## Issues
- Sinatra v 2.4.1 wouldn't work with sinatracontlib
  - ran `gem uninstall sinatra`, which prompted me to a short list of versions of sinatra to uninstall
  - choose the version the stack trace complained about
  - run bundle install
  - seemed to work fine

- later had issues with `control + c` not closing sinatra.  Apparently sinatra and rack together become "unstoppable"
  - from terminal run `sudo kill `sudo lsof -t -i:4567``
    - now, when I try to start the sinatra server, I get the complaint that "someone is already performing on port 4567"
    - run the kill command again, restarted computer for clean slate 
  - `gem install thin` seems to have resolved the double performance on port 4567 and got `control + c` working at terminal
  - trying to run `bundle install` every time before starting up sinatra server

## Templates

**Templates** are files that contain text that is converted into HTML before being sent to a user's browser in a response
  - There are a lot of different templating languages and they all provide different ways to define what HTML to generate and how to embed dynamic values
  