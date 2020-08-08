pushd cph

%PYTHON% -m pip install . --no-deps -vv || exit /b 1

popd
