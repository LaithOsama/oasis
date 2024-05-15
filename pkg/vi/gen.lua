cflags{
}

exe('vi', { 
 'vi.c',
})

file('bin/vi', '755', '$outdir/vi')
fetch 'git'
