dnl File: autoconf.ac
dnl -----------------
dnl autoconf will generate ./configure from autoconf.ac

AC_PREREQ(2.57)
AC_INIT([helloworld], [0.1], [liuqun68@gmail.com])

AC_CHECK_TOOLS([CC], [gcc], [cc], [$PATH])
AC_SUBST([CFLAGS], [-O2\ -Wall\ -pedantic])
AC_CONFIG_FILES([Makefile])
AC_OUTPUT

