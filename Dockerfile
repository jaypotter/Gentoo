FROM		mesonbuild/gentoo

#	To update all installed packages to the latest available
#	versions, first update the Gentoo repository with emaint: 

RUN		emaint \
			--auto \
			sync

#	Run emerge to update the whole
#	system, with dependencies:

RUN		emerge \
			--deep --with-bdeps=y \
			--newuse --update --verbose \
			@world
