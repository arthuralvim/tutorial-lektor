# lektor-tutorial

```bash
$ pipenv install --dev
```

```bash
$ lektor quickstart
```


```bash
Lektor Quickstart
=================

This wizard will generate a new basic project with some sensible defaults for
getting started quickly.  We just need to go through a few questions so that
the project is set up correctly for you.

Step 1:
| A project needs a name.  The name is primarily used for the admin UI and
| some other places to refer to your project to not get confused if multiple
| projects exist.  You can change this at any later point.
> Project Name: mulektor

Step 2:
| Your name.  This is used in a few places in the default template to refer to
| in the default copyright messages.
> Author Name [Arthur Alvim]:

Step 3:
| This is the path where the project will be located.  You can move a project
| around later if you do not like the path.  If you provide a relative path it
| will be relative to the working directory.
> Project Path [/path/arthuralvim/work/lektor-tutorial/mulektor]:

Step 4:
| Do you want to generate a basic blog module?  If you enable this the models
| for a very basic blog will be generated.
> Add Basic Blog [Y/n]: n

That's all. Create project? [Y/n] y
```

```bash
$ cd mulektor
$ lektor server -f webpack
```

```bash
$ export LEKTOR_DEPLOY_USERNAME=arthuralvim
$ export LEKTOR_DEPLOY_PASSWORD=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
```

```bash
$ lektor build && lektor deploy ghpages
```

```bash
$ mkdir `git rev-parse --short HEAD`
$ lektor build --output-path /path/arthuralvim/work/lektor-tutorial/`git rev-parse --short HEAD`
$ lektor server --output-path /path/arthuralvim/work/lektor-tutorial/`git rev-parse --short HEAD`
``
