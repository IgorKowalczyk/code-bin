# ---
# File name: math.py
# Note: This file may contain errors and bugs. Do not use it on production
# Creator: Igor Kowalczyk
# ---
import time
print("  __  __       _   _                   ");
print(" |  \/  | __ _| |_| |__    _ __  _   _ ");
print(" | |\/| |/ _` | __| '_ \  | '_ \| | | |");
print(" | |  | | (_| | |_| | | |_| |_) | |_| |");
print(" |_|  |_|\__,_|\__|_| |_(_) .__/ \__, |");
print("                          |_|    |___/ \n\n");

a = int(input("Please enter first number: "));
b = int(input("Please enter second number: "));
circuit = (2*a*b);
field = (a*b);
print("\nThe circuit has: " + str(circuit) + "x \nThe field is: " + str(field) + "x");
time.sleep(60);
