echo "=============================="
echo "Student Information"
echo "=============================="
echo "Name: Ersin"
echo "Surname: Tleubek"
echo "Group: IT2-2308"
echo "Student ID: 37588"
echo "=============================="
echo "System Information"
echo "=============================="
echo "Username: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current Date: $(date)"
echo "Operating System: $(uname -s)"
echo "Disk Usage:"
df -h /
echo "Memory Usage:"
free -h
echo "=============================="
echo "File Check"
echo "=============================="
if [ -f "Tleubek_Ersin_info.txt" ]; then
    echo "Student information file exists."
else
    echo "Student information file does not exist."
fi
