cflags{
        [[-D 'VERSION="1.5"']],
         '-Wall', '-O0', '-Werror', '-ansi',
         '-Wstrict-prototypes'
}

exe('smu', { 
 'smu.c',
})

file('bin/smu', '755', '$outdir/smu')
man{'smu.1'}

fetch 'git'

