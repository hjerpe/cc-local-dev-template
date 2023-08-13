project_name="{{ cookiecutter.project_name }}"
echo source /workspaces/$project_name/tools/initialize_venv.sh >> ~/.bashrc
sudo apt-get --yes update && sudo apt-get --yes upgrade