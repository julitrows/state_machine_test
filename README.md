This is a simple repo with two models to showcase the states_machine gem warning messages with Ruby 2.7

```
1. Clone the repo
2. make sure you're on Ruby 2.7
3. bundle install
4. yarn install
4. rails db:crate db:migrate
5. rake
```

Should give you this output:

```
rake
Running via Spring preloader in process 61408
Run options: --seed 57873

# Running:

/Users/julio/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/state_machines-0.5.0/lib/state_machines/event.rb:224: warning: Using the last argument as keyword parameters is deprecated; maybe ** should be added to the call
/Users/julio/code/state_machine_test/app/models/car.rb:10: warning: The called method `ignite' is defined here
.

Finished in 0.122189s, 8.1840 runs/s, 24.5521 assertions/s.
1 runs, 3 assertions, 0 failures, 0 errors, 0 skips
```

This showcases how the way the bang methods are defined in states machines call the non-bang versions with `*args` and need to change to `**args`
