@echo off

IF "%1"=="" (
   echo kea-config.bat [OPTIONS]
   echo Options:
   echo     [--prefix]
   echo     [--version]
   echo     [--libs]
   echo     [--cflags]
   echo     [--includes]
   EXIT /B 1
) ELSE (
:printValue
    if "%1" neq "" (
	    IF "%1"=="--prefix" echo C:/Users/mouss/modeling/training/univ_ouaga1_2026/source/lage/Library
	    IF "%1"=="--version" echo 1.5.1
	    IF "%1"=="--cflags" echo -IC:/Users/mouss/modeling/training/univ_ouaga1_2026/source/lage/Library/include
	    IF "%1"=="--libs" echo -LIBPATH:C:/Users/mouss/modeling/training/univ_ouaga1_2026/source/lage/Library/lib libkea.lib 
	    IF "%1"=="--includes" echo C:/Users/mouss/modeling/training/univ_ouaga1_2026/source/lage/Library/include
		shift
		goto :printValue
    )
	EXIT /B 0
)
