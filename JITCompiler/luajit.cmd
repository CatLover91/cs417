@echo off
SETLOCAL
SET LJ_VER=core-2.1
SET LUA_EXEC=%CD%
SET LUA_ROOT=%~dp0
SET LUA_ROOT=%LUA_ROOT:~0,-1%
SET LJ_SYS=windows
SET LJ_ARCH=%LUA_ROOT%\%LJ_SYS%
SET LJ_CORE=%LUA_ROOT%\%LJ_VER%\%LJ_SYS%
SET LUA_PATH=%LUA_ROOT%\?.lua;%LUA_ROOT%\?\init.lua;%LJ_ARCH%\?.lua;%LJ_ARCH%\?\init.lua;%LJ_CORE%\?.lua;%LJ_CORE%\?\init.lua;
SET LUA_CPATH="%LJ_ARCH%\?.dll;%LJ_ARCH%\loadall.dll;%LJ_CORE%\?.dll;%LJ_CORE%\loadall.dll;
"%LJ_CORE%\luajit" %*