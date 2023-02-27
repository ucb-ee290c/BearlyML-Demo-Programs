


with open("0123.img", "wb") as f:
    f.write(b"\x01\x02\x03\x04\x00\x00\x00\x00\xCA\xCA\xFA\xFA")
    f.write(b"\x00"*4096)
    
with open("01234.img", "rb") as f:
    print(f.read(1000))
