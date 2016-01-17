+++
Categories = []
Description = "A very simple example of how to use wt."
Tags = []
draft = false
date = "2015-07-22T23:45:36-05:00"
title = "Usage"
weight = 2
front = true
+++

Start by installing Bourbon. Install docs are [here](http://bourbon.io/). If you already have a working copy of Ruby, use the gem tool to install bourbon.

```
gem install bourbon
```

Let's create a basic Sass stylesheet in the project folder. Create `style.scss` in a project folder.

project/style.scss
```
@import "vendor/bourbon/bourbon";

h1 {
  font-family: $helvetica;
  font-size: golden-ratio(14px,  1);
}
```

Now, create a vendor folder and run `bourbon install` in it. There should now be `project/vendor/bourbon/_bourbon.scss` among other files.

There are a number of output formats for wellington: stdout, file, and http. By default, it will output to stdout. To specify a location to create CSS files, use the `-b` cli argument. We'll redirect output to a build directory. Note: output files are named after the Sass file they are generated from ie. style.scss becomes style.css.

```
cd project
wt -b build style.scss
```

The following file will be created `build/style.css`. The output should look something like this:

```
/* line 3, project/style.scss */
h1 {
  font-family: "Helvetica Neue", "Helvetica", "Roboto", "Arial", sans-serif;
  font-size: 22.652px; }
```

That's it, you're now up and running with wt!


Let's say we don't like adding vendor across all the files. Well you can tell wt other locations to look for Sass files.

Change style.scss to this:

project/style.scss
```
@import "bourbon/bourbon";

h1 {
  font-family: $helvetica;
  font-size: golden-ratio(14px,  1);
}
```

If we run the same `wt -b build style.scss` an error will be reported.

```
2015/07/22 23:54:09 main.go:208: Error > project/style.scss:1
file to import not found or unreadable: bourbon/bourbon
```

Tell Wellington where to find this file.

```
% wt -b build -p vendor style.scss
Rebuilt: style.scss
2015/07/22 23:54:55 main.go:95: Compilation took: 27.461ms
```

Success!
