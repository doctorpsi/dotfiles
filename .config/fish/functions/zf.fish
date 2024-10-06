function zf -d "Search for academic PDFs by author, title, journal, institution"
    fd . ~/Zotero/ -e pdf \
| fast-p \
    | fzf --read0 --reverse -e -d '\t'  \
        --preview-window right --preview '
            set v $(echo {q} | tr " " "|");
            echo -e {1}"\n"{2} | grep -E "^|$v" -i --color=always;
        ' \
     | cut -z -f 1 | tr -d '\n' | xargs -r --null xdg-open > /dev/null 2> /dev/null
end
