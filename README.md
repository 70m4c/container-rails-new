# Container: Rails New

The sole purpose of this project is to generate OCI "Docker" containers that
can be used to generate new [Ruby on Rails](https://rubyonrails.org/) projects.

## Creating a New Rails Project

The following command will create a new Rails project using default settings.
Make sure to replace `<directory>` with the relative directory path where you
want your project generated. You may specify `.` to use the current directory.

```sh
docker run --rm -v ${PWD}:/base -u $(id -u):$(id -g) 70m4c/rails-new <directory>
```

You are also free to add any standard `rails new` flag. In this example, we set
`--database` and `--css`:

```sh
docker run --rm -v ${PWD}:/base -u $(id -u):$(id -g) 70m4c/rails-new \
--database=postgresql \
--css=postcss \
<directory>
```

Unlike the default `rails new` command, Bundler is **NOT** run by this
container.
