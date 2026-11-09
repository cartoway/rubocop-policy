# RubocopPolicy
![Test](https://github.com/cartoway/rubocop-policy/actions/workflows/main.yml/badge.svg)
![Deliver](https://github.com/cartoway/rubocop-policy/actions/workflows/deliver.yml/badge.svg)

This is Cartoroute's rubocop rules for all its projects.

## Installation

Pin a release tag in your application's Gemfile (do not track `master` —
RuboCop upgrades are published as new tags):

```ruby
gem 'rubocop-policy', github: 'cartoway/rubocop-policy', tag: 'v0.3.0'
```

Or from RubyGems after a tagged deliver:

```ruby
gem 'rubocop-policy', '~> 0.3.0'
```

Then:

    $ bundle install

Create a `.rubocop.yml` at the project root:

```yml
inherit_gem:
  rubocop-policy:
    - rubocop-default.yml
```

### Upgrading

`v0.3.0` pins RuboCop `~> 1.92.0`.

1. Pick the next tag once published.
2. Bump `tag:` / the gem version constraint in the Gemfile.
3. Run `bundle update rubocop-policy` and fix new RuboCop offenses in that app.

---

Pour les utilisateurs de Sublime, aller dans `Preferences > Package Settings > Sublime Linter > Settings`
```yml
{
    "linters": {
        "rubocop": {
            "use_bundle_exec": true,
            "env": {
                "PATH": "~/.rbenv/shims:$PATH"
            },
        }
    }
}
```

Ajouter aussi le chemin exact du bundler. exemple : `~/.rbenv/shims/bundle`

```yml
{
    paths": {
	    "linux": ["~/npm_folder/bin", "~/.rbenv/shims", "~/.rbenv/shims/bundle"],
	    "osx": [],
	    "windows": []
	},
}
```
---


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
