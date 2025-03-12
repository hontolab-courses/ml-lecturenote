 #!/bin/bash
jb build --all .
ghp-import -n -p -f _build/html --cname=mlnote.hontolab.org
