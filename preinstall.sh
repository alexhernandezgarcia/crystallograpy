# Load Python 3.10
if ! type $(module load python/3.10) > /dev/null; then
    echo "Ensure Python 3.10 is installed!"
fi

# Upgrade pip
python3.10 -m pip install --upgrade pip

# Load libffi
if ! type $(module load libffi) > /dev/null; then
    sudo apt-get install libfftw3-dev
fi

# Load OpenSSL
if ! type $(module load OpenSSL) > /dev/null; then
    sudo apt-get install libblas-dev liblapack-dev
fi
