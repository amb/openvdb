import sys
import subprocess

exe = "libopenvdb.5.1.dylib"
#exe = "pyopenvdb.so"

print("\n--- Linked libs:")
a = subprocess.check_output("otool -L " + exe, shell=True)
b = str(a).split("\\n\\t")
for l in b[1:]:
    print(l)
changes = []
print("\n--- Changed locations:")
for l in b[1:]:
    c = l.split()[0]
    if c.startswith("/usr/local") and c.endswith(".dylib"):
        changes.append([c, c.split("/")[-1]])

for l in changes:
    print("cp " + l[0] + " .")
    subprocess.call("cp " + l[0] + " .", shell=True)
    print("install_name_tool -change " + l[0] + " " + l[1] + " " + exe)
    subprocess.call(
        "install_name_tool -change " + l[0] + " " + l[1] + " " + exe, shell=True
    )
    print()
