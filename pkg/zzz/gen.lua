cflags {
	[[-D VERSION='"0.1.1-1-g9fd2271"']],
	'-std=c11',
}

 exe('zzz', {'zzz.c'})
file('bin/zzz', '755', '$outdir/zzz')

 fetch 'git'
