# MapotempoRubocop

This is Mapotempo's rubocop rules for all its projects. 

## Installation

Add this line to your application's Gemfile:

```ruby
  gem 'mapotempo_rubocop', github: 'Mapotempo/mapotempo_rubocop'
```

And then execute:

    $ bundle install


Create a `.rubocop.yml` file at root of your project and add the following lines in it 

```yml
inherit_gem:
  mapotempo_rubocop:
    - rubocop-default.yml
```

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
