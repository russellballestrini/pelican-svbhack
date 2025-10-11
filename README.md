# SVBHACK

My fork of pelican-svbhack is a responsive theme for [Pelican](http://getpelican.com), it is a hack of a svbtle-like theme.

## DEMO

You can see the [theme in action](http://russell.ballestrini.net/).

![theme screenshot](https://github.com/russellballestrini/pelican-svbhack/raw/master/screenshot.png)

## FEATURES

- responsive design with mobile and desktop layouts
- dark mode (default) with light mode toggle
- theme preference saved to localStorage
- right sidebar table of contents on article pages (desktop only)
- syntax highlighting for pre blocks
- supports Google Analytics
- supports Plausible Analytics
- supports Remarkbox comments
- supports UncloseAI widget integration
- custom list of links

## KNOWN ISSUES

- no IE testing
- no custom menu

## INSTALL

Clone the [repository](https://github.com/russellballestrini/pelican-svbhack), edit your `pelicanconf.py` and modify the `THEME` variable to make it point to the downloaded theme location.

## PELICANCONF.PY

Supports a number of common global variables but patches are welcomed if you need better support.

### Analytics & Services

- `GOOGLE_ANALYTICS` - set to your UA-XYZ code to enable Google Analytics tracking

- `PLAUSIBLE_ANALYTICS` - set to your plausible domain name to enable Plausible Analytics

- `REMARKBOX` - set to true to enable [Remarkbox.com](http://www.remarkbox.com) comments in articles

### Appearance

- `USER_LOGO_URL` - replace the logo placeholder by putting your logo in content/images/your_logo.png and setting this to `SITEURL + '/static/images/your_logo.png'`

- `TAGLINE` - text rendered right below the logo

### Development

When developing locally, set: `SITEURL = http://localhost:8000`

### Third-Party Integrations

The theme automatically supports [UncloseAI](https://uncloseai.com) widget integration via the included script tag in base.html. The widget styling adapts to the dark/light theme automatically.

## MODIFICATIONS

- Accent color can be changed by editing `@accent` in `./static/css/style.less`.
- A different Pygmentize theme can be used by editing `./Makefile` and running `make pygments`.

## AUTHOR

pelican-svbhack is authored by Giulio Fidente. Russell Ballestrini forked this to create this branch.

## LICENSE

Released under MIT License, full details in `LICENSE` file.
