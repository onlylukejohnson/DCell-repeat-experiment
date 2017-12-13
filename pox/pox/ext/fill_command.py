import sys

def fill_file(filename, n, l):
	with open(filename, 'w') as openfile:
		openfile.write("N = %d\n" % n)
		openfile.write("L = %d\n" % l)
		openfile.write("NUM_SWITCHES = %d\n" % ((n+1)**2))
		openfile.close()
		
def main():
	n = int(sys.argv[1])
	l = int(sys.argv[2])
	filename = "dcell_constants.py"
	fill_file(filename, n, l)

main()
