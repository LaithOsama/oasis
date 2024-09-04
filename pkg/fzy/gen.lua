cflags{
        [[-D 'VERSION="1.0"']],
        '-Wall', '-O3', '-Wextra', '-pedantic',
        '-I $srcdir'
}

exe('fzy', { 
 'src/fzy.c',
 'src/tty.c',
 'src/tty_interface.c',
 'src/options.c',
 'src/match.c',
 'src/choices.c',
})

file('bin/fzy', '755', '$outdir/fzy')
man{'fzy.1'}

fetch 'curl'

