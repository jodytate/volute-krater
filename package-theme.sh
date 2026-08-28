#!/bin/sh
set -eu

project_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
style_file="$project_dir/style.css"
archive_file="$project_dir/volute-krater.zip"
temporary_dir=$(mktemp -d)

cleanup() {
  rm -rf "$temporary_dir"
}
trap cleanup EXIT HUP INT TERM

current_version=$(sed -n 's/^ \* Version: //p' "$style_file")
case "$current_version" in
  *.*.*) ;;
  *)
    printf '%s\n' "Invalid theme version: $current_version" >&2
    exit 1
    ;;
esac

new_version=$(printf '%s\n' "$current_version" | awk -F. '{ printf "%d.%d.%d", $1, $2, $3 + 1 }')
package_dir="$temporary_dir/volute-krater"
mkdir -p "$package_dir"

for file in style.css theme.json functions.php LICENSE; do
  cp "$project_dir/$file" "$package_dir/$file"
done

sed -i.bak "s/^ \\* Version: .*/ * Version: $new_version/" "$package_dir/style.css"
rm -f "$package_dir/style.css.bak"

temporary_archive="$temporary_dir/volute-krater.zip"
(cd "$temporary_dir" && zip -qr "$temporary_archive" volute-krater)
mv "$package_dir/style.css" "$style_file"
mv "$temporary_archive" "$archive_file"
printf 'Packaged Volute Krater %s\n' "$new_version"
