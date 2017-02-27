cd %~dp0/proto

for %%i in (*.proto) do (
	echo %%i
	..\protoc.exe --plugin=protoc-gen-lua="..\plugin\protoc-gen-lua5_1.bat" --lua_out=../output/lua5_1. %%i
	%..\protoc.exe --python_out=../output/lua5_1. %%i%
	..\protoc.exe --plugin=protoc-gen-lua="..\plugin\protoc-gen-lua5_3.bat" --lua_out=../output/lua5_3. %%i
	%..\protoc.exe --python_out=../output/lua5_3. %%i%
)
echo end
pause
