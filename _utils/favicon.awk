#!/usr/bin/awk -f

# ---------
# Functions
# ---------
function read_file(file) {
    text = ""
    while (getline line <file)
        text = text "\n" line
    close(file)
    return text
}
function join(array, start, end, sep,    result, i)
{
    if (sep == "")
       sep = " "
    else if (sep == SUBSEP) # magic value
       sep = ""
    result = array[start]
    for (i = start + 1; i <= end; i++)
        result = result sep array[i]
    return result
}

# ----------------
# Script directory
# ----------------
BEGIN {
        "ps -p "PROCINFO["pid"]" -ocommand=" | getline cmdline
        nf=split(cmdline,fields," ")
        path_len = split(fields[3],path_list,"/")
        script_dir = join(path_list, 1, paht_len - 1, "/") "/"
      }

# ------------------
# Actual replacement
# ------------------
{ gsub("</head>", "\n" read_file(script_dir "favicon.html") "\n\n</head>") }1
