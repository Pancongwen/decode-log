#!/usr/bin/env python3

import argparse

def convert_str(string, number):
    chr_str = ''
    for c in string:
        c = chr(ord(c) + int(number))
        chr_str += c

    return chr_str

def initparser():
    parser = argparse.ArgumentParser(description='Convert a string by adding or subtracting specific ASCII number to its each character.')
    parser.add_argument('str', metavar="STRING", type=str, 
                        help="the string that you want to convert" )

    parser.add_argument('num', metavar="NUM", type=int, 
                        help="the number that you want to add or subtract to character")
    return parser

parser = initparser()
args = parser.parse_args()

print(convert_str(args.str, args.num))
