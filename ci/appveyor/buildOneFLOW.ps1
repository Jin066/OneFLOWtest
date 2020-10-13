function BuildOneFLOW() {
    # Go to build directory and build
    # Build OneFLOW with cmake
    md build
    cd build
    $env:Path += ";F:/cmake/cmake/bin/"
    cmake --version
    Write-Host "cmake --help..."
    cmake --help
    cmake -G "Visual Studio 14 2015 Win64" -SC:/projects/OneFLOWtest -BC:/projects/OneFLOWtest/build/ `
    -DAUTO_CI_TEST=ON -DCMAKE_INSTALL_PREFIX="C:/Program Files/OneFLOWtest"
    Write-Host "cmake -G finished..."
    cmake --build . --target INSTALL --config release
    Write-Host "  cmake --build . --target INSTALL --config release..."
}

function main() {
    BuildOneFLOW
}

main