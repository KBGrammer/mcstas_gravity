@REM Script for post-install compilation of libmcpl.a on Windows
@REM
cd /d %~dp0%
del libmcpl.a
gcc -std=c99 -c mcpl.c
ar rcs libmcpl.a mcpl.o
