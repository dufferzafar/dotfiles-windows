"""
Create a simplified config for XYplorer.

Removing any paths, keys etc.
"""

from configparser import ConfigParser

IN_FILE = "XYplorer.ini"
OUT_FILE = "XYplorer.simple.ini"

TO_REMOVE = {
    "Register": [],
    "General": [
        "StartPath",
        "Goto",
    ],
    "Settings": [
        "MiniTreePaths",
        "MaxiTreePaths",
    ],
    "LookIn": [],
    "mruBrowse": [],
    "mruFindText": [],
    "mruGoto": [],
    "mruOpenedItems": [],
}


def main():
    # Read config
    cfg = ConfigParser(strict=False)

    # Preserve case
    cfg.optionxform = str
    cfg.read(IN_FILE, encoding="utf-16")

    # Remove sections / options
    for section, options in TO_REMOVE.items():
        for option in options:
            cfg.remove_option(section, option)

        if not options:
            cfg.remove_section(section)

    # Write config
    with open(OUT_FILE, mode="w", encoding="utf-16") as fp:
        cfg.write(fp)


if __name__ == "__main__":
    main()
