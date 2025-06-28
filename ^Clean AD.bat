@echo off
:: 获取当前批处理文件所在的目录
set "currentFolder=%~dp0"

:: 删除当前文件夹中的history文件夹及其内容
if exist "%currentFolder%history" (
    echo Deleting folder: %currentFolder%history
    rd /s /q "%currentFolder%history"
)

:: 删除当前文件夹中的__Previews文件夹及其内容
if exist "%currentFolder%__Previews" (
    echo Deleting folder: %currentFolder%__Previews
    rd /s /q "%currentFolder%__Previews"
)

:: 删除当前文件夹中的所有带有特定尾缀的文件 PrjPcbStructure
for %%x in ("%currentFolder%*.PrjPcbStructure") do (
    if exist "%%x" (
        echo Deleting file: %%x
        del /q "%%x"
    )
)

:: 删除当前文件夹中的所有带有特定尾缀的文件 PcbLib
for %%x in ("%currentFolder%*.PcbLib") do (
    if exist "%%x" (
        echo Deleting file: %%x
        del /q "%%x"
    )
)

:: 删除当前文件夹中的所有带有特定尾缀的文件 SchLib
for %%x in ("%currentFolder%*.SchLib") do (
    if exist "%%x" (
        echo Deleting file: %%x
        del /q "%%x"
    )
)

:: 删除当前文件夹中的所有带有特定尾缀的文件 SchLib
for %%x in ("%currentFolder%*.SchLib") do (
    if exist "%%x" (
        echo Deleting file: %%x
        del /q "%%x"
    )
)

:: 删除当前文件夹中的所有带有特定尾缀的文件 html
for %%x in ("%currentFolder%*.html") do (
    if exist "%%x" (
        echo Deleting file: %%x
        del /q "%%x"
    )
)

:: 删除当前文件夹中的所有带有特定尾缀的文件 OutJob
for %%x in ("%currentFolder%*.OutJob") do (
    if exist "%%x" (
        echo Deleting file: %%x
        del /q "%%x"
    )
)

:: 删除文件夹名包括 Project Logs
for /d %%x in ("%currentFolder%*Project Logs*") do (
    if exist "%%x" (
        echo Deleting folder: %%x
        rd /s /q "%%x"
    )
)

:: 删除文件夹名包括 Project Outputs
for /d %%x in ("%currentFolder%*Project Outputs*") do (
    if exist "%%x" (
        echo Deleting folder: %%x
        rd /s /q "%%x"
    )
)

echo Cleanup complete.
:: pause