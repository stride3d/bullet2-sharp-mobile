REM Windows
call "%PROGRAMFILES(X86)%\Microsoft Visual Studio 12.0\vc\vcvarsall.bat" x86

mkdir ..\build\bullet\Windows\x86
pushd ..\build\bullet\Windows\x86
cmake ..\..\..\..\bullet-2.82-r2704\ -G "Visual Studio 12 2013" -DUSE_MSVC_RUNTIME_LIBRARY_DLL=ON -DBUILD_MULTITHREADING=OFF
msbuild BULLET_PHYSICS.sln /p:Configuration=Release /t:LinearMath:Rebuild;BulletCollision:Rebuild;BulletDynamics:Rebuild;BulletFileLoader:Rebuild;BulletSoftBody:Rebuild;BulletWorldImporter:Rebuild;BulletXmlWorldImporter:Rebuild
if %ERRORLEVEL% neq 0 GOTO :error_popd
popd

mkdir ..\build\bullet\Windows\x64
pushd ..\build\bullet\Windows\x64
cmake ..\..\..\..\bullet-2.82-r2704\ -G "Visual Studio 12 2013 Win64" -DUSE_MSVC_RUNTIME_LIBRARY_DLL=ON -DBUILD_MULTITHREADING=OFF
msbuild BULLET_PHYSICS.sln /p:Configuration=Release /t:LinearMath:Rebuild;BulletCollision:Rebuild;BulletDynamics:Rebuild;BulletFileLoader:Rebuild;BulletSoftBody:Rebuild;BulletWorldImporter:Rebuild;BulletXmlWorldImporter:Rebuild
if %ERRORLEVEL% neq 0 GOTO :error_popd
popd

REM Windows Store
mkdir ..\build\bullet\WindowsStore\x86
pushd ..\build\bullet\WindowsStore\x86
cmake ..\..\..\..\bullet-2.82-r2704\ -G "Visual Studio 12 2013" -DCMAKE_SYSTEM_NAME=WindowsStore -DCMAKE_SYSTEM_VERSION=8.1 -DUSE_MSVC_RUNTIME_LIBRARY_DLL=ON -DBUILD_MULTITHREADING=OFF
msbuild BULLET_PHYSICS.sln /p:Configuration=Release /t:LinearMath:Rebuild;BulletCollision:Rebuild;BulletDynamics:Rebuild;BulletFileLoader:Rebuild;BulletSoftBody:Rebuild;BulletWorldImporter:Rebuild;BulletXmlWorldImporter:Rebuild
if %ERRORLEVEL% neq 0 GOTO :error_popd
popd

mkdir ..\build\bullet\WindowsStore\x64
pushd ..\build\bullet\WindowsStore\x64
cmake ..\..\..\..\bullet-2.82-r2704\ -G "Visual Studio 12 2013 Win64" -DCMAKE_SYSTEM_NAME=WindowsStore -DCMAKE_SYSTEM_VERSION=8.1 -DUSE_MSVC_RUNTIME_LIBRARY_DLL=ON -DBUILD_MULTITHREADING=OFF
msbuild BULLET_PHYSICS.sln /p:Configuration=Release /t:LinearMath:Rebuild;BulletCollision:Rebuild;BulletDynamics:Rebuild;BulletFileLoader:Rebuild;BulletSoftBody:Rebuild;BulletWorldImporter:Rebuild;BulletXmlWorldImporter:Rebuild
if %ERRORLEVEL% neq 0 GOTO :error_popd
popd

mkdir ..\build\bullet\WindowsStore\ARM
pushd ..\build\bullet\WindowsStore\ARM
cmake ..\..\..\..\bullet-2.82-r2704\ -G "Visual Studio 12 2013 ARM" -DCMAKE_SYSTEM_NAME=WindowsStore -DCMAKE_SYSTEM_VERSION=8.1 -DUSE_MSVC_RUNTIME_LIBRARY_DLL=ON -DBUILD_MULTITHREADING=OFF
msbuild BULLET_PHYSICS.sln /p:Configuration=Release /t:LinearMath:Rebuild;BulletCollision:Rebuild;BulletDynamics:Rebuild;BulletFileLoader:Rebuild;BulletSoftBody:Rebuild;BulletWorldImporter:Rebuild;BulletXmlWorldImporter:Rebuild
if %ERRORLEVEL% neq 0 GOTO :error_popd
popd

REM Windows Phone
mkdir ..\build\bullet\WindowsPhone\x86
pushd ..\build\bullet\WindowsPhone\x86
cmake ..\..\..\..\bullet-2.82-r2704\ -G "Visual Studio 12 2013" -DCMAKE_SYSTEM_NAME=WindowsPhone -DCMAKE_SYSTEM_VERSION=8.1 -DUSE_MSVC_RUNTIME_LIBRARY_DLL=ON -DBUILD_MULTITHREADING=OFF
msbuild BULLET_PHYSICS.sln /p:Configuration=Release /t:LinearMath:Rebuild;BulletCollision:Rebuild;BulletDynamics:Rebuild;BulletFileLoader:Rebuild;BulletSoftBody:Rebuild;BulletWorldImporter:Rebuild;BulletXmlWorldImporter:Rebuild
if %ERRORLEVEL% neq 0 GOTO :error_popd
popd

mkdir ..\build\bullet\WindowsPhone\ARM
pushd ..\build\bullet\WindowsPhone\ARM
cmake ..\..\..\..\bullet-2.82-r2704\ -G "Visual Studio 12 2013 ARM" -DCMAKE_SYSTEM_NAME=WindowsPhone -DCMAKE_SYSTEM_VERSION=8.1 -DUSE_MSVC_RUNTIME_LIBRARY_DLL=ON -DBUILD_MULTITHREADING=OFF
msbuild BULLET_PHYSICS.sln /p:Configuration=Release /t:LinearMath:Rebuild;BulletCollision:Rebuild;BulletDynamics:Rebuild;BulletFileLoader:Rebuild;BulletSoftBody:Rebuild;BulletWorldImporter:Rebuild;BulletXmlWorldImporter:Rebuild
if %ERRORLEVEL% neq 0 GOTO :error_popd
popd

GOTO :end
:error_popd
popd
echo Error during compilation
EXIT /B %ERRORLEVEL%
pause
:end