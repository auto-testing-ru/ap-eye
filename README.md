# AP Eye

Synopsis
------
When you run your test this lib will create Log Monitor Window.
![AP Eye - Log Monitor](http://content.screencast.com/users/ilyubin/folders/Jing/media/7a558430-1459-4b22-8aa1-e46394e772a2/2015-08-13_0330.png)

Installation instructions
------
Add to GemFile
```
gem 'gosu'
gem 'ApEye'
```

Using instructions
------
To the `spec_helper.ru` add follow:
```
require 'apeye'
ApEye::start
```

## Credits

For any question write to <igor.lyubin@auto-testing.ru>