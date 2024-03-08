# Adjust prompt
PS1="(${CONDA_DEFAULT_ENV}) \e[01;32m\u\e[0m - \W > "

install_jupyter_kernel() {
    python -m ipykernel install --user --name $CONDA_DEFAULT_ENV --display-name "${CONDA_DEFAULT_ENV}"
}
