#yo: Street-oriented programming in Ruby

Shake those classes baby! Have you ever felt like bored after you wrote a
snippet like this?

    class Person
      attr_accessor :name, :age, :mood, :money
    end

Just `gem install yo` or put `gem 'yo'` in your Gemfile, put your badass face
and type this:

    require 'yo'

    class Person
      extend Yo

      so i think it goes like this

      defnly he shud have an accessor 'name'
      a person also has a property 'age', yeah

      ya should know he has some freakin 'money', too
      prolly he demands some privacy on da 'money', yo

      he might as well have a pretty badass 'mood'
      but you never know inthis neighborhood

      but hey maybe its all bullshit, so
      we better get going bro

      shake it baby, yeah

    end

You can check it's all flawlessly working:

    john = Person.new
    john.name = "John"
    john.name # => "John"

    john.age = 29
    john.age # => 29

    john.money = "$3"
    john.money # => "$3"

    john.mood = :badass
    john.mood # => :badass

Now that's some street-oriented programming!

##Install

    gem install yo

... or if you use Bundler:

    gem 'yo'

##Contribute!

* Fork the project.
* Make your feature addition or bug fix.
* Add specs for it. This is important so I don't break it in a future
  version unintentionally.
* Commit, do not mess with rakefile, version, or history.
  If you want to have your own version, that is fine but bump version
  in a commit by itself I can ignore when I pull.
* Send me a pull request. Bonus points for topic branches.

## Copyright

Copyright (c) 2011 Josep M. Bach. See LICENSE for details.
