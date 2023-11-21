# IRB Test
## Steps to reproduce

```
$ bundle install
$ bundle exec irb
irb(main):001> require './test.rb'
irb(main):002> Test.new.exec
```

### Actual behavior

It raise mutiple error `Encoding::ConverterNotFoundError` and actural exception of `SQLite3::CantOpenException`.

```
$ bundle exec irb
irb(main):001> require './test.rb'
irb(main):002> Test.new.exec
1
2
3
...
246
247
248
bundler: failed to load command: irb (/Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/bin/irb)
/Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb.rb:678:in `initialize': code converter not found (ASCII-8BIT to UTF-8) (Encoding::ConverterNotFoundError)
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb.rb:678:in `new'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb.rb:678:in `encode_with_invalid_byte_sequence'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb.rb:723:in `handle_exception'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb.rb:529:in `rescue in block (2 levels) in eval_input'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb.rb:509:in `block (2 levels) in eval_input'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb.rb:823:in `signal_status'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb.rb:508:in `block in eval_input'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb.rb:590:in `block in each_top_level_statement'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb.rb:585:in `loop'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb.rb:585:in `each_top_level_statement'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb.rb:507:in `eval_input'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb.rb:494:in `block in run'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb.rb:493:in `catch'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb.rb:493:in `run'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb.rb:395:in `start'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/exe/irb:9:in `<top (required)>'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/bin/irb:25:in `load'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/bin/irb:25:in `<top (required)>'
	from /Users/taketo/.rbenv/versions/3.2.2/lib/ruby/3.2.0/bundler/cli/exec.rb:58:in `load'
	from /Users/taketo/.rbenv/versions/3.2.2/lib/ruby/3.2.0/bundler/cli/exec.rb:58:in `kernel_load'
	from /Users/taketo/.rbenv/versions/3.2.2/lib/ruby/3.2.0/bundler/cli/exec.rb:23:in `run'
	from /Users/taketo/.rbenv/versions/3.2.2/lib/ruby/3.2.0/bundler/cli.rb:492:in `exec'
	from /Users/taketo/.rbenv/versions/3.2.2/lib/ruby/3.2.0/bundler/vendor/thor/lib/thor/command.rb:27:in `run'
	from /Users/taketo/.rbenv/versions/3.2.2/lib/ruby/3.2.0/bundler/vendor/thor/lib/thor/invocation.rb:127:in `invoke_command'
	from /Users/taketo/.rbenv/versions/3.2.2/lib/ruby/3.2.0/bundler/vendor/thor/lib/thor.rb:392:in `dispatch'
	from /Users/taketo/.rbenv/versions/3.2.2/lib/ruby/3.2.0/bundler/cli.rb:34:in `dispatch'
	from /Users/taketo/.rbenv/versions/3.2.2/lib/ruby/3.2.0/bundler/vendor/thor/lib/thor/base.rb:485:in `start'
	from /Users/taketo/.rbenv/versions/3.2.2/lib/ruby/3.2.0/bundler/cli.rb:28:in `start'
	from /Users/taketo/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/bundler-2.4.10/libexec/bundle:45:in `block in <top (required)>'
	from /Users/taketo/.rbenv/versions/3.2.2/lib/ruby/3.2.0/bundler/friendly_errors.rb:117:in `with_friendly_errors'
	from /Users/taketo/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/bundler-2.4.10/libexec/bundle:33:in `<top (required)>'
	from /Users/taketo/.rbenv/versions/3.2.2/bin/bundle:25:in `load'
	from /Users/taketo/.rbenv/versions/3.2.2/bin/bundle:25:in `<main>'
/Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/sqlite3-1.6.8-arm64-darwin/lib/sqlite3/database.rb:105:in `open_v2': unable to open database file (SQLite3::CantOpenException)
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/sqlite3-1.6.8-arm64-darwin/lib/sqlite3/database.rb:105:in `initialize'
	from /Users/taketo/irb-test/test.rb:12:in `new'
	from /Users/taketo/irb-test/test.rb:12:in `select'
	from /Users/taketo/irb-test/test.rb:7:in `block in exec'
	from /Users/taketo/irb-test/test.rb:5:in `each'
	from /Users/taketo/irb-test/test.rb:5:in `exec'
	from (irb):2:in `<top (required)>'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb/workspace.rb:117:in `eval'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb/workspace.rb:117:in `evaluate'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb/context.rb:562:in `evaluate'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb.rb:515:in `block (2 levels) in eval_input'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb.rb:823:in `signal_status'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb.rb:508:in `block in eval_input'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb.rb:590:in `block in each_top_level_statement'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb.rb:585:in `loop'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb.rb:585:in `each_top_level_statement'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb.rb:507:in `eval_input'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb.rb:494:in `block in run'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb.rb:493:in `catch'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb.rb:493:in `run'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb.rb:395:in `start'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/exe/irb:9:in `<top (required)>'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/bin/irb:25:in `load'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/bin/irb:25:in `<top (required)>'
	from /Users/taketo/.rbenv/versions/3.2.2/lib/ruby/3.2.0/bundler/cli/exec.rb:58:in `load'
	from /Users/taketo/.rbenv/versions/3.2.2/lib/ruby/3.2.0/bundler/cli/exec.rb:58:in `kernel_load'
	from /Users/taketo/.rbenv/versions/3.2.2/lib/ruby/3.2.0/bundler/cli/exec.rb:23:in `run'
	from /Users/taketo/.rbenv/versions/3.2.2/lib/ruby/3.2.0/bundler/cli.rb:492:in `exec'
	from /Users/taketo/.rbenv/versions/3.2.2/lib/ruby/3.2.0/bundler/vendor/thor/lib/thor/command.rb:27:in `run'
	from /Users/taketo/.rbenv/versions/3.2.2/lib/ruby/3.2.0/bundler/vendor/thor/lib/thor/invocation.rb:127:in `invoke_command'
	from /Users/taketo/.rbenv/versions/3.2.2/lib/ruby/3.2.0/bundler/vendor/thor/lib/thor.rb:392:in `dispatch'
	from /Users/taketo/.rbenv/versions/3.2.2/lib/ruby/3.2.0/bundler/cli.rb:34:in `dispatch'
	from /Users/taketo/.rbenv/versions/3.2.2/lib/ruby/3.2.0/bundler/vendor/thor/lib/thor/base.rb:485:in `start'
	from /Users/taketo/.rbenv/versions/3.2.2/lib/ruby/3.2.0/bundler/cli.rb:28:in `start'
	from /Users/taketo/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/bundler-2.4.10/libexec/bundle:45:in `block in <top (required)>'
	from /Users/taketo/.rbenv/versions/3.2.2/lib/ruby/3.2.0/bundler/friendly_errors.rb:117:in `with_friendly_errors'
	from /Users/taketo/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/bundler-2.4.10/libexec/bundle:33:in `<top (required)>'
	from /Users/taketo/.rbenv/versions/3.2.2/bin/bundle:25:in `load'
	from /Users/taketo/.rbenv/versions/3.2.2/bin/bundle:25:in `<main>'
$
```


### Expected behavior

It raise only sqlite3 exception of `SQLite3::CantOpenException`.

```
$ bundle exec irb
irb(main):001> require './test.rb'
irb(main):002> Test.new.exec
1
2
3
...
246
247
248
/Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/sqlite3-1.6.8-arm64-darwin/lib/sqlite3/database.rb:105:in `open_v2': unable to open database file (SQLite3::CantOpenException)
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/sqlite3-1.6.8-arm64-darwin/lib/sqlite3/database.rb:105:in `initialize'
	from /Users/taketo/irb-test/test.rb:12:in `new'
	from /Users/taketo/irb-test/test.rb:12:in `select'
	from /Users/taketo/irb-test/test.rb:7:in `block in exec'
	from /Users/taketo/irb-test/test.rb:5:in `each'
	from /Users/taketo/irb-test/test.rb:5:in `exec'
	from (irb):2:in `<top (required)>'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb/workspace.rb:117:in `eval'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb/workspace.rb:117:in `evaluate'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb/context.rb:562:in `evaluate'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb.rb:515:in `block (2 levels) in eval_input'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb.rb:823:in `signal_status'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb.rb:508:in `block in eval_input'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb.rb:590:in `block in each_top_level_statement'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb.rb:585:in `loop'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb.rb:585:in `each_top_level_statement'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb.rb:507:in `eval_input'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb.rb:494:in `block in run'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb.rb:493:in `catch'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb.rb:493:in `run'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/lib/irb.rb:395:in `start'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/gems/irb-1.9.1/exe/irb:9:in `<top (required)>'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/bin/irb:25:in `load'
	from /Users/taketo/irb-test/tmp/bundle/ruby/3.2.0/bin/irb:25:in `<top (required)>'
	from /Users/taketo/.rbenv/versions/3.2.2/lib/ruby/3.2.0/bundler/cli/exec.rb:58:in `load'
	from /Users/taketo/.rbenv/versions/3.2.2/lib/ruby/3.2.0/bundler/cli/exec.rb:58:in `kernel_load'
	from /Users/taketo/.rbenv/versions/3.2.2/lib/ruby/3.2.0/bundler/cli/exec.rb:23:in `run'
	from /Users/taketo/.rbenv/versions/3.2.2/lib/ruby/3.2.0/bundler/cli.rb:492:in `exec'
	from /Users/taketo/.rbenv/versions/3.2.2/lib/ruby/3.2.0/bundler/vendor/thor/lib/thor/command.rb:27:in `run'
	from /Users/taketo/.rbenv/versions/3.2.2/lib/ruby/3.2.0/bundler/vendor/thor/lib/thor/invocation.rb:127:in `invoke_command'
	from /Users/taketo/.rbenv/versions/3.2.2/lib/ruby/3.2.0/bundler/vendor/thor/lib/thor.rb:392:in `dispatch'
	from /Users/taketo/.rbenv/versions/3.2.2/lib/ruby/3.2.0/bundler/cli.rb:34:in `dispatch'
	from /Users/taketo/.rbenv/versions/3.2.2/lib/ruby/3.2.0/bundler/vendor/thor/lib/thor/base.rb:485:in `start'
	from /Users/taketo/.rbenv/versions/3.2.2/lib/ruby/3.2.0/bundler/cli.rb:28:in `start'
	from /Users/taketo/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/bundler-2.4.10/libexec/bundle:45:in `block in <top (required)>'
	from /Users/taketo/.rbenv/versions/3.2.2/lib/ruby/3.2.0/bundler/friendly_errors.rb:117:in `with_friendly_errors'
	from /Users/taketo/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/bundler-2.4.10/libexec/bundle:33:in `<top (required)>'
	from /Users/taketo/.rbenv/versions/3.2.2/bin/bundle:25:in `load'
	from /Users/taketo/.rbenv/versions/3.2.2/bin/bundle:25:in `<main>'
```

## Result of irb_info
```
> irb_info
Ruby version: 3.2.2
IRB version: irb 1.9.1 (2023-11-21)
InputMethod: RelineInputMethod with Reline 0.4.0
Completion: Autocomplete, RegexpCompletor
RUBY_PLATFORM: arm64-darwin23
LANG env: ja_JP.UTF-8
East Asian Ambiguous Width: 1
```
