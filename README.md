# Volute Krater

A child theme for the [*Volute Krater*](https://www.volutekrater.org) literary magazine,
built on [Twenty Twenty-Five](https://wordpress.org/themes/twentytwentyfive/).

The child theme inherits Twenty Twenty-Five's block templates and adds its own palette,
typography, and link styles through `theme.json` and `style.css`.

This theme extends [Twenty Twenty-Five](https://wordpress.org/themes/twentytwentyfive/).

## Installation

1. Install and activate Twenty Twenty-Five in WordPress.
2. Copy this folder to `wp-content/themes/volute-krater`.
3. Activate **Volute Krater** under **Appearance > Themes > Add New**.

The parent theme must remain installed for the child theme to work.

## Git hooks

Enable the versioned commit hook once after cloning:

```sh
git config core.hooksPath .githooks
```

The hook adds the `Assisted-by: GitHub Copilot` trailer to commits that do not
already contain it.

## License

Volute Krater is licensed under the GNU General Public License v2.0 or later
(`GPL-2.0-or-later`), like WordPress and the Twenty Twenty-Five parent theme.
See [LICENSE](LICENSE) for the license notice and the link to the complete
official license text.
