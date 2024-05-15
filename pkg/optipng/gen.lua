cflags({
	'-std=c99', '-Wall', '-Wextra',
	'-D _POSIX_C_SOURCE',
	'-isystem $builddir/pkg/libpng/include',
	'-isystem $builddir/pkg/zlib/include',
	'-I $srcdir/third_party/cexcept',
	'-I $srcdir/src/gifread',
	'-I $srcdir/src/minitiff',
	'-I $srcdir/src/opngreduc',
	'-I $srcdir/src/pngxtern',
	'-I $srcdir/src/pnmio',
})

pkg.deps = {'pkg/libpng/headers', 'pkg/zlib/headers'}

lib('libdeps.a', [[src/(
	opngreduc/opngreduc.c
	gifread/gifread.c
	pngxtern/(
		pngxread.c pngxrbmp.c pngxrgif.c pngxrjpg.c pngxrpnm.c
		pngxrtif.c
		pngxio.c pngxmem.c pngxset.c
	)
	pnmio/(pnmin.c pnmout.c pnmutil.c)
	minitiff/(tiffread.c tiffutil.c)
)]])

exe('optipng', [[
	src/optipng/(
		optipng.c
		optim.c
		bitset.c
		ioutil.c
		ratio.c
		wildargs.c
	)
	libdeps.a
	$builddir/pkg/libpng/libpng.a.d
]])
file('bin/optipng', '755', '$outdir/optipng')
man{'src/optipng/man/optipng.1'}

fetch 'curl'
