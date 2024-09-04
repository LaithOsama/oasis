cflags{
'-pedantic', '-Wall', '-Wextra',
'-Wno-implicit-fallthrough',
'-Wno-missing-field-initializers',
'-Wno-unused-parameter',
'-Wno-unused-result',
'-Wfatal-errors -std=c99',
'-D_POSIX_C_SOURCE=200809L',
}

exe('vi', { 
 'vi.c',
})

file('bin/vi', '755', '$outdir/vi')
fetch 'git'
