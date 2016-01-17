+++
Categories = []
Description = ""
Tags = []
draft = false
date = "2015-07-23T00:12:42-05:00"
title = "Large Projects"
+++

Wellington was created to solve problems using Sass in large projects. So you are in good company! By switching to Wellington, you should find that your project compiles significantly faster. Some benchmarks are provided on [github](https://github.com/wellington/wellington#speed-matters).

Wellington has built in functionality to compile Sass to CSS and to watch directories for changes in your Sass. Changing files will automatically trigger rebuilds of the parent Sass stylesheet. For now, we'll focus on compiling Sass sheets to CSS.

Note: The following requires Wellington 1.0 which can be installed via `brew install --HEAD wellington` today. Release coming soon!

If you need help installing wellington, see [install page](//getwt.io/docs/install/)

Let's get familiar with the commands. Type `wt compile`.


```
% wt compile
Reading from stdin, -h for help
```

By default, wt reads from stdin. This is useful for chaining wt in tool pipelines, but not great for this example. Let's instead give wt a project config file to read from.

```
% wt compile -c config.rb
```

config.rb
```
#directory with sass files
sass_dir = "sass"
#directory with image files
images_dir = "im/sass"
#fonts directory
fonts_dir = "font-face"
#build directory
css_dir = "build"
#location for sprites
generated_images_dir = "build/im"
```

You should customize this to the setup of your project. `css_dir` is the location wt will put the built Sass files. `generated_images_dir` will place sprites in this diretory, and so on.

After running this command, you will see the output of wellington working

```
2015/07/23 00:31:39 sprite.go:406: Created sprite: build/im/273098.png
Rebuilt: sass/_pages/home.scss
2015/07/23 00:31:39 sprite.go:406: Created sprite: build/im/5108bf.png
Rebuilt: sass/_pages/join.scss
Rebuilt: sass/_pages/rachael-ray.scss
2015/07/23 00:31:39 sprite.go:406: Created sprite: build/im/8b9e72.png
Rebuilt: sass/_pages/settings.scss
Rebuilt: sass/_tests/RMN-15068/post_slide_styles.scss
Rebuilt: sass/_tests/RMN-15068/post_slide_styles_touch.scss
2015/07/23 00:31:40 sprite.go:406: Created sprite: build/im/18e4a2.png
2015/07/23 00:31:40 sprite.go:406: Created sprite: build/im/599200.png
```

After this runs, the compiled Sass stylesheets will be in `build/`. For local development, swap `compile` with `watch`. After the initial compile, wellington will watch your Sass directories for changes and automatically compile.
