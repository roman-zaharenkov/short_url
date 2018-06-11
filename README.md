# README

## Requirements:

* ruby 2.4+
* MySQL server

## Setup:

```
gem install bundler
bundle
rake db:migrate

rails s
```

## Specs:

In order to run spces you have to install `chromedriver` first (e.g. `brew install chromedriver`for Mac OS).


```
rspec
```

or

```
rake spec
```

or

```
rake spec:unit && rake spec:feature
```

## TODO:

* Create background job for clicks tracking;
* Configure rubocop;
* Configure TravisCI;
* Consider NoSQL solution for storing clicks.
