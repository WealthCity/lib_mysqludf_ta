#!/bin/sh

rm -fR ~/myrpms/
mkdir -p ~/myrpms/{BUILD,RPMS,SOURCES,SPECS,SRPMS}
tar -czPf ~/myrpms/SOURCES/lib_mysqludf_ta-0.1.tar.gz src/*
rpmbuild -v -bb --clean specfile/lib_mysqludf_ta.spec
