# Adjust prompt
PS1="(${CONDA_DEFAULT_ENV}) \e[01;32m\u\e[0m - \W > "

# Install currently active conda environment as jupyter kernel
install_jupyter_kernel() {
    python -m ipykernel install --user --name $CONDA_DEFAULT_ENV --display-name "${CONDA_DEFAULT_ENV}"
}

# Start jupyter notebook server in background
start_jupyter() {
    if [[ $(pgrep -f "jupyter-notebook") ]];
        then echo "Already found running jupyter server";
    else
        jupyter notebook --no-browser > /dev/null 2>&1 & disown
    fi
}

stop_jupyter() {
    pgrep -f "jupyter" | xargs kill > /dev/null 2>&1 
}
