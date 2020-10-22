orange.img: boot.asm
	mkdir out
	nasm $< -o out/boot.bin
	dd if=out/boot.bin of=out/$@
	rm out/boot.bin

clean:
	rm -rf ./out
