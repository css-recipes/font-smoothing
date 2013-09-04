# FontSmoothing [![Build Status](https://secure.travis-ci.org/css-recipes/font-smoothing.png?branch=master)](http://travis-ci.org/css-recipes/font-smoothing)

> Font smoothing for OS X.

## Getting Started

If you haven't used [css-recipes](http://css-recipes.putaindecode.io/) before, be sure to check out the [Getting Started](http://css-recipes.putaindecode.io/getting-started) guide, as it explains consume the recipes using Bower. Once you're familiar with that process, you may install this recipe with this command:

```shell
bower install css-recipe-font-smoothing --save-dev
```

Once the recipe has been installed (& assuming `bower_components` folder is in your Sass import paths), it may be enabled inside your Sass file with this line:

```scss
@import "css-recipe-font-smoothing/index"
```

Read more below to find alternative way to use this recipe.


## Component purpose

This recipe is available as CSS & Sass (scss).
It's advised to use this one with Sass placeholder.

## Browser support

_This recipe only works for OS X since Windows has a different font rendering method._

Works for Safari 4+ & Firefox 25+.

## CSS classes

### `crp-FontSmoothing` && `crp-FontSmoothing--on`

Enable font-smoothing.

### `crp-FontSmoothing-off`

Disable font-smoothing.

## Sass placeholders

Same as classes.

## Sass mixin

### `crp-FontSmoothing()`

#### Options

##### `$value`

Use `$value` to enable or disable font smoothing.

- `true`, `on`, `antialiased` or `grayscale` to enable.
- `false`, `off`, `subpixel-antialiased` or `auto` to disable.

### Usage examples

#### CSS use

```html
<div class="crp-FontSmoothing">I'm smooth</div>

<div class="crp-FontSmoothing">I'm smooth <span class="crp-FontSmoothing--off">but not me</span></div>
```

#### Sass use

_This recipes requires Sass `~3.2.0` or libsass `~0.?`_

##### Generating classes

Before importing the file, you can eventually enable css classes like this:

```sass
$crp-classes: true
@import "css-recipe-font-smoothing/index";
```

Just remember that placeholders should be available as well.

##### Mixins use

```sass
.org-Component {
    @include crp-FontSmoothing(on);
}
```

## Release History

 * 2013-09-04   v0.1.0   First release

---

Recipe submitted by ["MoOx" Maxime Thirouin](http://moox.io)