# Adjust prompt
PS1="\e[01;32m\u\e[0m - \W > "

install_jupyter_kernel() {
    python -m ipykernel install --user --name $CONDA_DEFAULT_ENV --display-name "${CONDA_DEFAULT_ENV}"
}
