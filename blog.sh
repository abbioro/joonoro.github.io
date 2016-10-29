#!/usr/bin/env bash
# Copyright (c) 2016 Joonatan O'Rourke
# Static blog generator written in bash.

MARKDOWN=markdown

shopt -s globstar

# The title is the first line in the post. Strip the first two
# characters to only give us the name.
get_title() {
    title=$(sed -n 1p "$1")
    echo -n ${title:2}
}

# The title is the second line in the post. Strip all asterisks
# (emphasis markers).
get_date() {
    date=$(sed -n 2p "$1")
    echo -n $(echo $date | sed 's/\*//g')
}

# Sets the title of the page. First arg is the filename, second is the
# title.
set_title() {
    sed -i -e "s/TITLE/$2/g" "$1"
}

# Add an index entry for a filename (first arg).
add_index_entry() {
    noext="$(dirname $filename)/$(basename $filename .html)"
    echo "<div class=\"container\">" >> index.html
    echo "<div class=\"date\">$(get_date $1)</div>" >> index.html
    echo "<div class=\"title\"><a href=\"$noext\">$(get_title $1)</a></div>" \
	 >> index.html
    echo "</div>" >> index.html
}

# Generate a page for a post. Also appends a link to the index.
generate_page() {
    echo "Generating $1"
    filename=$(echo $1 | sed 's/.md/.html/')
    cat static/header.html > $filename
    $MARKDOWN $1 >> $filename
    cat static/footer.html >> $filename
    set_title $filename "$(get_title $1) | Joonatan's Blog"
}

# Generate the blog. The index is generated as it generates the pages
# for individual posts.
generate_blog() {
    cat static/header.html > index.html
    # Only do subdirectories, top-level ones are done
    # manually. Globstar gives us the files in chronological order,
    # but we want them in the opposite order so reverse with ls.
    echo "<ul>" >> index.html
    for post in $(ls -r **/*/*.md); do
	generate_page "$post"
	add_index_entry "$post"
    done
    echo "</ul>" >> index.html
    cat static/footer.html >> index.html
    set_title index.html "Joonatan's Blog"
    generate_page "about.md"
}

generate_blog
