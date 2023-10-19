arch := `arch`

list:
    just --list

freeze-py:
    pip freeze > python-requirements.txt

[linux]
add-butane:
    mkdir -p bin
    rm -f bin/butane
    curl -L "https://github.com/coreos/butane/releases/latest/download/butane-{{arch}}-unknown-linux-gnu" -o bin/butane
    chmod +x bin/butane
