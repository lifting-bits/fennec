#!/bin/bash

echo Path to original binary?
read original
echo Path to replacement binary?
read replacement

# lifting
mcsema-disass --disassembler /home/artem/ida-6.9/idal64 --os linux --arch amd64 --output "$original".cfg --binary "$original" --entrypoint main --log_file "$original".log
mcsema-lift-4.0 --arch amd64 --os linux --cfg "$original".cfg --output "$original".bc
mcsema-disass --disassembler /home/artem/ida-6.9/idal64 --os linux --arch amd64 --output "$replacement".cfg --binary "$replacement" --entrypoint main --log_file "$replacement".log
mcsema-lift-4.0 --arch amd64 --os linux --cfg "$replacement".cfg --output "$replacement".bc

