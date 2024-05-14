local sets = dofile(basedir..'/sets.lua')

return {
	-- build output directory
	builddir='out',

	-- install prefix
	prefix='',

	-- compress man pages
	gzman=true,

	-- package/file selection
	fs={
                -- Each entry contains a list of packages, a list of patterns to
                -- include, and a list of patterns to exclude. If no patterns
                -- are specified, all files from the package are included.
		{sets.core, sets.extra, sets.media, sets.net, sets.desktop, exclude={'^include/', '^lib/.*%.a$'}},
		{sets.devel},

		-- You may also specify a list of patterns to include or exclude
		-- for any packages not matching any entries. If no patterns are
		-- specified, all files from the package are excluded.
		-- include={...}, exclude={...},
	},

	-- target toolchain and flags
	target={
		platform='x86_64-linux-musl',
		cflags='-Os -fPIE -pipe',
		ldflags='-s -static-pie',
	},

	-- host toolchain and flags
	host={
		cflags='-O2 -pipe',
		ldflags='',
	},

	-- output git repository
	repo={
		path='../..',
		flags='',
		tag='tree',
		branch='oasis',
	},

	-- GPU driver (possible_values: amdgpu intel nouveau)
	video_drivers={intel=true}
}
