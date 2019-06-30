import subprocess
import sys

if len(sys.argv) != 2 or "*" in sys.argv[1]:
    exit()
else:
    pass
    # print(sys.argv)

exe = sys.argv[1]
# exe = "pyopenvdb.so"

print("\n--- Linked libs:")
a = subprocess.check_output("otool -L " + exe, shell=True)
b = str(a).split("\\n\\t")
for l in b[1:]:
    print(l)
changes = []
print("\n--- Changed locations:")
for l in b[1:]:
    c = l.split()[0]

    if "/" not in c:
        changes.append([c, "@loader_path/"+c])

    elif (c.startswith("/usr/local") or c.startswith("@rpath/")) and c.endswith(".dylib"):
        changes.append([c, "@loader_path/"+c.split("/")[-1]])

for l in changes:
    if "@" not in l[0] and exe not in l[0]:
        print("cp " + l[0] + " .")
        subprocess.call("cp " + l[0] + " .", shell=True)
    print("install_name_tool -change " + l[0] + " " + l[1] + " " + exe)
    subprocess.call(
        "install_name_tool -change " + l[0] + " " + l[1] + " " + exe, shell=True
    )
    print()

# strip -u -r *.dylib *.so
