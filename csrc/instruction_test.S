
.data
intput:	.word 44
table:
    .byte 1, 2, 4, 15, 0xFF, 1, 28, 0xFF

_start:
    la      s1, table 	     # L-type
    lb      t0, 0(s1)
    lb      t1, 1(s1)
    lb      t2, 2(s1)
    lb      t3, 3(s1)
    add     t4, t1, t2       # R-type
    sb      t4, 3(s1)        # S-type
    lb      t3, 3(s1)
    lui     t3, 0xdeadb      # lui instruction
    addi    t3, t3, 0x0ee       # 0xdeadb0ee
loop:
    addi    t0, t0, 1        # I-type
    blt     t0, t2, loop     # B-type
end:
    j       end
    