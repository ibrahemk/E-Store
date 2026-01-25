@echo off
setlocal enabledelayedexpansion

echo Running Flutter code generation in root...
call flutter pub get
call flutter pub run build_runner build --delete-conflicting-outputs

echo.
echo Running code generation in packages/core...
pushd packages\core
call flutter pub get
call flutter pub run build_runner build --delete-conflicting-outputs
popd

echo.
echo Running code generation in packages/features/home...
pushd packages\features\home
call flutter pub get
call flutter pub run build_runner build --delete-conflicting-outputs
popd

echo.
echo Code generation complete!
pause
