@echo off
rem ***************************************************************************
rem * Licensed Materials - Property of IBM
rem *
rem * Governed under the terms of the International Program License Agreement.
rem *
rem * (C) COPYRIGHT International Business Machines Corp. 2005
rem *
rem * All Rights Reserved.
rem *
rem * US Government Users Restricted Rights - Use, duplication or
rem * disclosure restricted by GSA ADP Schedule Contract with IBM Corp.
rem *
rem * File name: cpysetup.bat                   
rem *                                           
rem * This batch file copies necessary files for setup 
rem * to the directory [destination dir]          
rem *                                             
rem * Usage: cpysetup.bat [destination dir]      
rem ***************************************************************************

if "%1"=="" goto PARMERR
if not "%2"=="" goto PARMERR


echo Copying files...
xcopy /q %0\..\cpysetup.bat %1%\db2\windows\utilities\
if not exist %1%\db2\windows\utilities\cpysetup.bat goto CPYERR
del %1%\db2\windows\utilities\cpysetup.bat
xcopy /e /q %0\..\..\..\.. %1%\


:SUCCESS
@echo Successful completion.
goto BOTTOM


:PARMERR
@echo Usage: %0 [directory to copy to]
goto BOTTOM

:CPYERR
@echo There was an error copying files to "%1".
goto BOTTOM

:BOTTOM
