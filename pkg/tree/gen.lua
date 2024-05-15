cflags{
        '-Wall', '-O2',
}

exe('tree', { 
 'color.c',
 'file.c',
 'filter.c',
 'hash.c',
 'html.c',
 'info.c',
 'json.c',
 'list.c',
 'strverscmp.c',
 'tree.c',
 'unix.c',
 'xml.c',
})
file('bin/tree', '755', '$outdir/tree')
man{'doc/tree.1'}

fetch 'curl'
