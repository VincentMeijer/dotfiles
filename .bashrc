install_jupyter_kernel() {
    python -m ipykernel install --user --name $CONDA_DEFAULT_ENV --display-name "${CONDA_DEFAULT_ENV}"
}
