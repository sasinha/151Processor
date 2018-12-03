
func_code = input("Function code: ")
RI = input("RI: ")
RD = input("RD: ")
RS = input("RS: ")
RTIMM = ''
if RI == '0':
	RTIMM = input("RT: ")
	RTIMM = format(int(RTIMM), '06b') + 9*'0'
else:
	RTIMM = format(int(input("RT/IMM: "), 16), '015b')

result = input("Result: ")

instruction = "32'b" + \
	RI + \
	format(int(RS), '06b') + \
	format(int(RD), '06b') + \
	func_code + \
	RTIMM +\
	';	// ' + result

print(instruction)


