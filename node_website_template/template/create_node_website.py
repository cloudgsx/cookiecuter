import os
import shutil

def create_node_website():
    project_name = "{{cookiecutter.project_name}}"

    # Create the project directory
    os.makedirs(project_name, exist_ok=True)

    # Copy the template files
    shutil.copy("package.json.template", os.path.join(project_name, "package.json"))
    shutil.copy("index.js.template", os.path.join(project_name, "index.js"))

    print(f"Node.js website project '{project_name}' created successfully!")

if __name__ == "__main__":
    create_node_website()

