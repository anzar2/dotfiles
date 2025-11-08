from os import mkdir, path, system


config_paths:list = [
    "eww", 
    "kitty", 
    "mako",
    "nvim",
    "waybar",
    "matugen",
    "kitty",
    "hypr",
]

def copy(origin:str, destination:str) -> None:
    system(f"cp -rnv {origin} {destination}")

for pathdir in config_paths:
    if not (path.exists(pathdir)):
        print(f"{pathdir} no existe, creando....")
        mkdir(pathdir)
    
    print(f"\n[Copiando archivos de configuracion para {pathdir}]")
    copy(pathdir, path.expanduser(f"~/.config/prueba/{pathdir}"))

