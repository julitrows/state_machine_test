This is a simple repo with two models to showcase the states_machine gem warning messages with Ruby 2.7 as explained here: https://github.com/state-machines/state_machines/issues/82

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
> rake
Running via Spring preloader in process 80655
Run options: --seed 42267

# Running:

/Users/julio/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/state_machines-0.5.0/lib/state_machines/event.rb:224: warning: Using the last argument as keyword parameters is deprecated; maybe ** should be added to the call
/Users/julio/code/state_machine_test/app/models/car.rb:9: warning: The called method `ignite' is defined here
/Users/julio/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/state_machines-0.5.0/lib/state_machines/event.rb:224: warning: Using the last argument as keyword parameters is deprecated; maybe ** should be added to the call
/Users/julio/code/state_machine_test/app/models/car.rb:14: warning: The called method `park' is defined here
..

Finished in 0.151957s, 13.1616 runs/s, 19.7424 assertions/s.
2 runs, 3 assertions, 0 failures, 0 errors, 0 skips
```

This showcases how the way the bang methods are defined in states machines call the non-bang versions with `*args` and need to change to `**args`
