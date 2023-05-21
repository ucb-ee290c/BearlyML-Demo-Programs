
build/firmware.elf:     file format elf64-littleriscv


Disassembly of section .text:

0000000020000000 <isr_routine-0x20>:
    20000000:	0a80006f          	j	200000a8 <_start>
    20000004:	00000013          	nop
    20000008:	00000013          	nop
    2000000c:	00000013          	nop
	...

0000000020000020 <isr_routine>:
    20000020:	7111                	addi	sp,sp,-256
    20000022:	e406                	sd	ra,8(sp)
    20000024:	e80a                	sd	sp,16(sp)
    20000026:	ec0e                	sd	gp,24(sp)
    20000028:	f012                	sd	tp,32(sp)
    2000002a:	f416                	sd	t0,40(sp)
    2000002c:	f81a                	sd	t1,48(sp)
    2000002e:	fc1e                	sd	t2,56(sp)
    20000030:	e0a2                	sd	s0,64(sp)
    20000032:	e4a6                	sd	s1,72(sp)
    20000034:	e8aa                	sd	a0,80(sp)
    20000036:	ecae                	sd	a1,88(sp)
    20000038:	f0b2                	sd	a2,96(sp)
    2000003a:	f4b6                	sd	a3,104(sp)
    2000003c:	f8ba                	sd	a4,112(sp)
    2000003e:	fcbe                	sd	a5,120(sp)
    20000040:	e142                	sd	a6,128(sp)
    20000042:	e546                	sd	a7,136(sp)
    20000044:	e94a                	sd	s2,144(sp)
    20000046:	ed4e                	sd	s3,152(sp)
    20000048:	f152                	sd	s4,160(sp)
    2000004a:	f556                	sd	s5,168(sp)
    2000004c:	f95a                	sd	s6,176(sp)
    2000004e:	fd5e                	sd	s7,184(sp)
    20000050:	e1e2                	sd	s8,192(sp)
    20000052:	e5e6                	sd	s9,200(sp)
    20000054:	e9ea                	sd	s10,208(sp)
    20000056:	edee                	sd	s11,216(sp)
    20000058:	f1f2                	sd	t3,224(sp)
    2000005a:	f5f6                	sd	t4,232(sp)
    2000005c:	f9fa                	sd	t5,240(sp)
    2000005e:	fdfe                	sd	t6,248(sp)
    20000060:	3ef000ef          	jal	ra,20000c4e <trap_handler>
    20000064:	60a2                	ld	ra,8(sp)
    20000066:	6142                	ld	sp,16(sp)
    20000068:	61e2                	ld	gp,24(sp)
    2000006a:	7202                	ld	tp,32(sp)
    2000006c:	72a2                	ld	t0,40(sp)
    2000006e:	7342                	ld	t1,48(sp)
    20000070:	73e2                	ld	t2,56(sp)
    20000072:	6406                	ld	s0,64(sp)
    20000074:	64a6                	ld	s1,72(sp)
    20000076:	6546                	ld	a0,80(sp)
    20000078:	65e6                	ld	a1,88(sp)
    2000007a:	7606                	ld	a2,96(sp)
    2000007c:	76a6                	ld	a3,104(sp)
    2000007e:	7746                	ld	a4,112(sp)
    20000080:	77e6                	ld	a5,120(sp)
    20000082:	680a                	ld	a6,128(sp)
    20000084:	68aa                	ld	a7,136(sp)
    20000086:	694a                	ld	s2,144(sp)
    20000088:	69ea                	ld	s3,152(sp)
    2000008a:	7a0a                	ld	s4,160(sp)
    2000008c:	7aaa                	ld	s5,168(sp)
    2000008e:	7b4a                	ld	s6,176(sp)
    20000090:	7bea                	ld	s7,184(sp)
    20000092:	6c0e                	ld	s8,192(sp)
    20000094:	6cae                	ld	s9,200(sp)
    20000096:	6d4e                	ld	s10,208(sp)
    20000098:	6dee                	ld	s11,216(sp)
    2000009a:	7e0e                	ld	t3,224(sp)
    2000009c:	7eae                	ld	t4,232(sp)
    2000009e:	7f4e                	ld	t5,240(sp)
    200000a0:	7fee                	ld	t6,248(sp)
    200000a2:	6111                	addi	sp,sp,256
    200000a4:	30200073          	mret

00000000200000a8 <_start>:
    200000a8:	4081                	li	ra,0
    200000aa:	4101                	li	sp,0
    200000ac:	4181                	li	gp,0
    200000ae:	4201                	li	tp,0
    200000b0:	4281                	li	t0,0
    200000b2:	4301                	li	t1,0
    200000b4:	4381                	li	t2,0
    200000b6:	4401                	li	s0,0
    200000b8:	4481                	li	s1,0
    200000ba:	4501                	li	a0,0
    200000bc:	4581                	li	a1,0
    200000be:	4601                	li	a2,0
    200000c0:	4681                	li	a3,0
    200000c2:	4701                	li	a4,0
    200000c4:	4781                	li	a5,0
    200000c6:	4801                	li	a6,0
    200000c8:	4881                	li	a7,0
    200000ca:	4901                	li	s2,0
    200000cc:	4981                	li	s3,0
    200000ce:	4a01                	li	s4,0
    200000d0:	4a81                	li	s5,0
    200000d2:	4b01                	li	s6,0
    200000d4:	4b81                	li	s7,0
    200000d6:	4c01                	li	s8,0
    200000d8:	4c81                	li	s9,0
    200000da:	4d01                	li	s10,0
    200000dc:	4d81                	li	s11,0
    200000de:	4e01                	li	t3,0
    200000e0:	4e81                	li	t4,0
    200000e2:	4f01                	li	t5,0
    200000e4:	4f81                	li	t6,0
    200000e6:	00000297          	auipc	t0,0x0
    200000ea:	f3a28293          	addi	t0,t0,-198 # 20000020 <isr_routine>
    200000ee:	30529073          	csrw	mtvec,t0
    200000f2:	e8000197          	auipc	gp,0xe8000
    200000f6:	7be18193          	addi	gp,gp,1982 # 80008b0 <__global_pointer$>
    200000fa:	f1402573          	csrr	a0,mhartid
    200000fe:	4585                	li	a1,1
    20000100:	4281                	li	t0,0
    20000102:	04551763          	bne	a0,t0,20000150 <bss_init_exit>

0000000020000106 <data_init_entry>:
    20000106:	00004297          	auipc	t0,0x4
    2000010a:	1d228293          	addi	t0,t0,466 # 200042d8 <_data_source_start>
    2000010e:	e8000317          	auipc	t1,0xe8000
    20000112:	ef230313          	addi	t1,t1,-270 # 8000000 <impure_data>
    20000116:	e8000397          	auipc	t2,0xe8000
    2000011a:	fa238393          	addi	t2,t2,-94 # 80000b8 <h1_buf_pos>
    2000011e:	00628c63          	beq	t0,t1,20000136 <bss_init_entry>
    20000122:	00735a63          	bge	t1,t2,20000136 <bss_init_entry>

0000000020000126 <data_init_loop>:
    20000126:	0002be03          	ld	t3,0(t0)
    2000012a:	01c33023          	sd	t3,0(t1)
    2000012e:	02a1                	addi	t0,t0,8
    20000130:	0321                	addi	t1,t1,8
    20000132:	fe734ae3          	blt	t1,t2,20000126 <data_init_loop>

0000000020000136 <bss_init_entry>:
    20000136:	e8000297          	auipc	t0,0xe8000
    2000013a:	f8228293          	addi	t0,t0,-126 # 80000b8 <h1_buf_pos>
    2000013e:	d6818313          	addi	t1,gp,-664 # 8000618 <_bss_end>
    20000142:	00628763          	beq	t0,t1,20000150 <bss_init_exit>

0000000020000146 <bss_init_loop>:
    20000146:	0002b003          	ld	zero,0(t0)
    2000014a:	02a1                	addi	t0,t0,8
    2000014c:	fe62cde3          	blt	t0,t1,20000146 <bss_init_loop>

0000000020000150 <bss_init_exit>:
    20000150:	e8002117          	auipc	sp,0xe8002
    20000154:	0d010113          	addi	sp,sp,208 # 8002220 <_sp>
    20000158:	e8002217          	auipc	tp,0xe8002
    2000015c:	0c820213          	addi	tp,tp,200 # 8002220 <_sp>
    20000160:	f1402573          	csrr	a0,mhartid
    20000164:	4281                	li	t0,0
    20000166:	40000313          	li	t1,1024

000000002000016a <stack_init_loop>:
    2000016a:	ff017113          	andi	sp,sp,-16
    2000016e:	00a28563          	beq	t0,a0,20000178 <stack_init_exit>
    20000172:	911a                	add	sp,sp,t1
    20000174:	0285                	addi	t0,t0,1
    20000176:	bfd5                	j	2000016a <stack_init_loop>

0000000020000178 <stack_init_exit>:
    20000178:	2d5000ef          	jal	ra,20000c4c <system_init>
    2000017c:	5e4000ef          	jal	ra,20000760 <main>

0000000020000180 <infinite_loop>:
    20000180:	a001                	j	20000180 <infinite_loop>
	...
    2000018e:	0000                	unimp
    20000190:	42d8                	lw	a4,4(a3)
    20000192:	2000                	fld	fs0,0(s0)
    20000194:	0000                	unimp
    20000196:	0800                	addi	s0,sp,16
    20000198:	00b8                	addi	a4,sp,72
    2000019a:	0800                	addi	s0,sp,16
    2000019c:	00b8                	addi	a4,sp,72
    2000019e:	0800                	addi	s0,sp,16
    200001a0:	0618                	addi	a4,sp,768
    200001a2:	0800                	addi	s0,sp,16
    200001a4:	00000013          	nop
    200001a8:	00000013          	nop
    200001ac:	00000013          	nop
	...

00000000200001be <round_float>:
    200001be:	f0000753          	fmv.w.x	fa4,zero
    200001c2:	420507d3          	fcvt.d.s	fa5,fa0
    200001c6:	a0a717d3          	flt.s	a5,fa4,fa0
    200001ca:	00004717          	auipc	a4,0x4
    200001ce:	0b673707          	fld	fa4,182(a4) # 20004280 <L1_w_p_arr+0xce0>
    200001d2:	cb81                	beqz	a5,200001e2 <round_float+0x24>
    200001d4:	02e7f7d3          	fadd.d	fa5,fa5,fa4
    200001d8:	c2179553          	fcvt.wu.d	a0,fa5,rtz
    200001dc:	0ff57513          	zext.b	a0,a0
    200001e0:	8082                	ret
    200001e2:	0ae7f7d3          	fsub.d	fa5,fa5,fa4
    200001e6:	bfcd                	j	200001d8 <round_float+0x1a>

00000000200001e8 <printArray>:
    200001e8:	7119                	addi	sp,sp,-128
    200001ea:	f8a2                	sd	s0,112(sp)
    200001ec:	f4a6                	sd	s1,104(sp)
    200001ee:	f0ca                	sd	s2,96(sp)
    200001f0:	ecce                	sd	s3,88(sp)
    200001f2:	e8d2                	sd	s4,80(sp)
    200001f4:	e4d6                	sd	s5,72(sp)
    200001f6:	fc86                	sd	ra,120(sp)
    200001f8:	892a                	mv	s2,a0
    200001fa:	84ae                	mv	s1,a1
    200001fc:	4401                	li	s0,0
    200001fe:	00002997          	auipc	s3,0x2
    20000202:	fa298993          	addi	s3,s3,-94 # 200021a0 <__errno+0xe>
    20000206:	00002a17          	auipc	s4,0x2
    2000020a:	fa2a0a13          	addi	s4,s4,-94 # 200021a8 <__errno+0x16>
    2000020e:	00002a97          	auipc	s5,0x2
    20000212:	07aa8a93          	addi	s5,s5,122 # 20002288 <__errno+0xf6>
    20000216:	02941663          	bne	s0,s1,20000242 <printArray+0x5a>
    2000021a:	06400693          	li	a3,100
    2000021e:	4605                	li	a2,1
    20000220:	00002597          	auipc	a1,0x2
    20000224:	06858593          	addi	a1,a1,104 # 20002288 <__errno+0xf6>
    20000228:	1001a537          	lui	a0,0x1001a
    2000022c:	162010ef          	jal	ra,2000138e <HAL_UART_transmit>
    20000230:	70e6                	ld	ra,120(sp)
    20000232:	7446                	ld	s0,112(sp)
    20000234:	74a6                	ld	s1,104(sp)
    20000236:	7906                	ld	s2,96(sp)
    20000238:	69e6                	ld	s3,88(sp)
    2000023a:	6a46                	ld	s4,80(sp)
    2000023c:	6aa6                	ld	s5,72(sp)
    2000023e:	6109                	addi	sp,sp,128
    20000240:	8082                	ret
    20000242:	008907b3          	add	a5,s2,s0
    20000246:	0007c603          	lbu	a2,0(a5)
    2000024a:	85ce                	mv	a1,s3
    2000024c:	850a                	mv	a0,sp
    2000024e:	19a010ef          	jal	ra,200013e8 <siprintf>
    20000252:	850a                	mv	a0,sp
    20000254:	1ee010ef          	jal	ra,20001442 <strlen>
    20000258:	03051613          	slli	a2,a0,0x30
    2000025c:	06400693          	li	a3,100
    20000260:	9241                	srli	a2,a2,0x30
    20000262:	858a                	mv	a1,sp
    20000264:	1001a537          	lui	a0,0x1001a
    20000268:	0405                	addi	s0,s0,1
    2000026a:	124010ef          	jal	ra,2000138e <HAL_UART_transmit>
    2000026e:	02947363          	bgeu	s0,s1,20000294 <printArray+0xac>
    20000272:	85d2                	mv	a1,s4
    20000274:	850a                	mv	a0,sp
    20000276:	1ba010ef          	jal	ra,20001430 <strcpy>
    2000027a:	850a                	mv	a0,sp
    2000027c:	1c6010ef          	jal	ra,20001442 <strlen>
    20000280:	03051613          	slli	a2,a0,0x30
    20000284:	06400693          	li	a3,100
    20000288:	9241                	srli	a2,a2,0x30
    2000028a:	858a                	mv	a1,sp
    2000028c:	1001a537          	lui	a0,0x1001a
    20000290:	0fe010ef          	jal	ra,2000138e <HAL_UART_transmit>
    20000294:	00f47793          	andi	a5,s0,15
    20000298:	ffbd                	bnez	a5,20000216 <printArray+0x2e>
    2000029a:	06400693          	li	a3,100
    2000029e:	4605                	li	a2,1
    200002a0:	85d6                	mv	a1,s5
    200002a2:	1001a537          	lui	a0,0x1001a
    200002a6:	0e8010ef          	jal	ra,2000138e <HAL_UART_transmit>
    200002aa:	b7b5                	j	20000216 <printArray+0x2e>

00000000200002ac <print_compare_array>:
    200002ac:	7139                	addi	sp,sp,-64
    200002ae:	f822                	sd	s0,48(sp)
    200002b0:	f426                	sd	s1,40(sp)
    200002b2:	f04a                	sd	s2,32(sp)
    200002b4:	ec4e                	sd	s3,24(sp)
    200002b6:	e852                	sd	s4,16(sp)
    200002b8:	e456                	sd	s5,8(sp)
    200002ba:	fc06                	sd	ra,56(sp)
    200002bc:	84aa                	mv	s1,a0
    200002be:	892e                	mv	s2,a1
    200002c0:	8432                	mv	s0,a2
    200002c2:	4981                	li	s3,0
    200002c4:	00002a17          	auipc	s4,0x2
    200002c8:	ef4a0a13          	addi	s4,s4,-268 # 200021b8 <__errno+0x26>
    200002cc:	00002a97          	auipc	s5,0x2
    200002d0:	ee4a8a93          	addi	s5,s5,-284 # 200021b0 <__errno+0x1e>
    200002d4:	e415                	bnez	s0,20000300 <print_compare_array+0x54>
    200002d6:	06400693          	li	a3,100
    200002da:	4605                	li	a2,1
    200002dc:	00002597          	auipc	a1,0x2
    200002e0:	fac58593          	addi	a1,a1,-84 # 20002288 <__errno+0xf6>
    200002e4:	1001a537          	lui	a0,0x1001a
    200002e8:	0a6010ef          	jal	ra,2000138e <HAL_UART_transmit>
    200002ec:	70e2                	ld	ra,56(sp)
    200002ee:	7442                	ld	s0,48(sp)
    200002f0:	74a2                	ld	s1,40(sp)
    200002f2:	7902                	ld	s2,32(sp)
    200002f4:	6a42                	ld	s4,16(sp)
    200002f6:	6aa2                	ld	s5,8(sp)
    200002f8:	854e                	mv	a0,s3
    200002fa:	69e2                	ld	s3,24(sp)
    200002fc:	6121                	addi	sp,sp,64
    200002fe:	8082                	ret
    20000300:	0004c703          	lbu	a4,0(s1)
    20000304:	00094783          	lbu	a5,0(s2)
    20000308:	06400693          	li	a3,100
    2000030c:	4605                	li	a2,1
    2000030e:	00f70963          	beq	a4,a5,20000320 <print_compare_array+0x74>
    20000312:	85d6                	mv	a1,s5
    20000314:	1001a537          	lui	a0,0x1001a
    20000318:	076010ef          	jal	ra,2000138e <HAL_UART_transmit>
    2000031c:	4985                	li	s3,1
    2000031e:	bf5d                	j	200002d4 <print_compare_array+0x28>
    20000320:	85d2                	mv	a1,s4
    20000322:	1001a537          	lui	a0,0x1001a
    20000326:	068010ef          	jal	ra,2000138e <HAL_UART_transmit>
    2000032a:	b76d                	j	200002d4 <print_compare_array+0x28>

000000002000032c <printMNISTDataset>:
    2000032c:	7171                	addi	sp,sp,-176
    2000032e:	f122                	sd	s0,160(sp)
    20000330:	e54e                	sd	s3,136(sp)
    20000332:	e152                	sd	s4,128(sp)
    20000334:	fcd6                	sd	s5,120(sp)
    20000336:	f8da                	sd	s6,112(sp)
    20000338:	f4de                	sd	s7,104(sp)
    2000033a:	f506                	sd	ra,168(sp)
    2000033c:	ed26                	sd	s1,152(sp)
    2000033e:	e94a                	sd	s2,144(sp)
    20000340:	f0e2                	sd	s8,96(sp)
    20000342:	ece6                	sd	s9,88(sp)
    20000344:	e8ea                	sd	s10,80(sp)
    20000346:	e4ee                	sd	s11,72(sp)
    20000348:	4401                	li	s0,0
    2000034a:	00002997          	auipc	s3,0x2
    2000034e:	fb698993          	addi	s3,s3,-74 # 20002300 <x>
    20000352:	4a05                	li	s4,1
    20000354:	00002a97          	auipc	s5,0x2
    20000358:	e94a8a93          	addi	s5,s5,-364 # 200021e8 <__errno+0x56>
    2000035c:	00002b17          	auipc	s6,0x2
    20000360:	e84b0b13          	addi	s6,s6,-380 # 200021e0 <__errno+0x4e>
    20000364:	00002b97          	auipc	s7,0x2
    20000368:	e74b8b93          	addi	s7,s7,-396 # 200021d8 <__errno+0x46>
    2000036c:	00004797          	auipc	a5,0x4
    20000370:	f4478793          	addi	a5,a5,-188 # 200042b0 <y>
    20000374:	97a2                	add	a5,a5,s0
    20000376:	0007c603          	lbu	a2,0(a5)
    2000037a:	00002597          	auipc	a1,0x2
    2000037e:	e4658593          	addi	a1,a1,-442 # 200021c0 <__errno+0x2e>
    20000382:	850a                	mv	a0,sp
    20000384:	064010ef          	jal	ra,200013e8 <siprintf>
    20000388:	850a                	mv	a0,sp
    2000038a:	0b8010ef          	jal	ra,20001442 <strlen>
    2000038e:	03051613          	slli	a2,a0,0x30
    20000392:	06400693          	li	a3,100
    20000396:	9241                	srli	a2,a2,0x30
    20000398:	858a                	mv	a1,sp
    2000039a:	1001a537          	lui	a0,0x1001a
    2000039e:	7f1000ef          	jal	ra,2000138e <HAL_UART_transmit>
    200003a2:	00898933          	add	s2,s3,s0
    200003a6:	4481                	li	s1,0
    200003a8:	4c09                	li	s8,2
    200003aa:	4c8d                	li	s9,3
    200003ac:	00002d17          	auipc	s10,0x2
    200003b0:	e24d0d13          	addi	s10,s10,-476 # 200021d0 <__errno+0x3e>
    200003b4:	00002d97          	auipc	s11,0x2
    200003b8:	e14d8d93          	addi	s11,s11,-492 # 200021c8 <__errno+0x36>
    200003bc:	00094783          	lbu	a5,0(s2)
    200003c0:	06400693          	li	a3,100
    200003c4:	4609                	li	a2,2
    200003c6:	85ee                	mv	a1,s11
    200003c8:	cb99                	beqz	a5,200003de <printMNISTDataset+0xb2>
    200003ca:	85ea                	mv	a1,s10
    200003cc:	01478963          	beq	a5,s4,200003de <printMNISTDataset+0xb2>
    200003d0:	85de                	mv	a1,s7
    200003d2:	01878663          	beq	a5,s8,200003de <printMNISTDataset+0xb2>
    200003d6:	85da                	mv	a1,s6
    200003d8:	01978363          	beq	a5,s9,200003de <printMNISTDataset+0xb2>
    200003dc:	85d6                	mv	a1,s5
    200003de:	1001a537          	lui	a0,0x1001a
    200003e2:	7ad000ef          	jal	ra,2000138e <HAL_UART_transmit>
    200003e6:	47b9                	li	a5,14
    200003e8:	02f4e7bb          	remw	a5,s1,a5
    200003ec:	ef81                	bnez	a5,20000404 <printMNISTDataset+0xd8>
    200003ee:	06400693          	li	a3,100
    200003f2:	4605                	li	a2,1
    200003f4:	00002597          	auipc	a1,0x2
    200003f8:	e9458593          	addi	a1,a1,-364 # 20002288 <__errno+0xf6>
    200003fc:	1001a537          	lui	a0,0x1001a
    20000400:	78f000ef          	jal	ra,2000138e <HAL_UART_transmit>
    20000404:	2485                	addiw	s1,s1,1
    20000406:	0c400793          	li	a5,196
    2000040a:	0921                	addi	s2,s2,8
    2000040c:	faf498e3          	bne	s1,a5,200003bc <printMNISTDataset+0x90>
    20000410:	06400693          	li	a3,100
    20000414:	4605                	li	a2,1
    20000416:	00002597          	auipc	a1,0x2
    2000041a:	e7258593          	addi	a1,a1,-398 # 20002288 <__errno+0xf6>
    2000041e:	1001a537          	lui	a0,0x1001a
    20000422:	76d000ef          	jal	ra,2000138e <HAL_UART_transmit>
    20000426:	0405                	addi	s0,s0,1
    20000428:	47a1                	li	a5,8
    2000042a:	f4f411e3          	bne	s0,a5,2000036c <printMNISTDataset+0x40>
    2000042e:	06400693          	li	a3,100
    20000432:	4605                	li	a2,1
    20000434:	00002597          	auipc	a1,0x2
    20000438:	e5458593          	addi	a1,a1,-428 # 20002288 <__errno+0xf6>
    2000043c:	1001a537          	lui	a0,0x1001a
    20000440:	74f000ef          	jal	ra,2000138e <HAL_UART_transmit>
    20000444:	70aa                	ld	ra,168(sp)
    20000446:	740a                	ld	s0,160(sp)
    20000448:	64ea                	ld	s1,152(sp)
    2000044a:	694a                	ld	s2,144(sp)
    2000044c:	69aa                	ld	s3,136(sp)
    2000044e:	6a0a                	ld	s4,128(sp)
    20000450:	7ae6                	ld	s5,120(sp)
    20000452:	7b46                	ld	s6,112(sp)
    20000454:	7ba6                	ld	s7,104(sp)
    20000456:	7c06                	ld	s8,96(sp)
    20000458:	6ce6                	ld	s9,88(sp)
    2000045a:	6d46                	ld	s10,80(sp)
    2000045c:	6da6                	ld	s11,72(sp)
    2000045e:	614d                	addi	sp,sp,176
    20000460:	8082                	ret

0000000020000462 <SPMAT_matmul>:
    20000462:	0037d893          	srli	a7,a5,0x3
    20000466:	972e                	add	a4,a4,a1
    20000468:	00e59663          	bne	a1,a4,20000474 <SPMAT_matmul+0x12>
    2000046c:	0ff0000f          	fence
    20000470:	4501                	li	a0,0
    20000472:	8082                	ret
    20000474:	0005c803          	lbu	a6,0(a1)
    20000478:	0ff0000f          	fence
    2000047c:	0106300b          	0x106300b
    20000480:	0316b00b          	0x316b00b
    20000484:	04a5300b          	0x4a5300b
    20000488:	0ff0000f          	fence
    2000048c:	0005c803          	lbu	a6,0(a1)
    20000490:	953e                	add	a0,a0,a5
    20000492:	0585                	addi	a1,a1,1
    20000494:	0018181b          	slliw	a6,a6,0x1
    20000498:	9642                	add	a2,a2,a6
    2000049a:	b7f9                	j	20000468 <SPMAT_matmul+0x6>

000000002000049c <CPU_matmul>:
    2000049c:	4e01                	li	t3,0
    2000049e:	4f81                	li	t6,0
    200004a0:	06ee1263          	bne	t3,a4,20000504 <CPU_matmul+0x68>
    200004a4:	4501                	li	a0,0
    200004a6:	8082                	ret
    200004a8:	001f4303          	lbu	t1,1(t5)
    200004ac:	000f4903          	lbu	s2,0(t5)
    200004b0:	2285                	addiw	t0,t0,1
    200004b2:	02f30333          	mul	t1,t1,a5
    200004b6:	0f09                	addi	t5,t5,2
    200004b8:	931e                	add	t1,t1,t2
    200004ba:	00034303          	lbu	t1,0(t1)
    200004be:	0323033b          	mulw	t1,t1,s2
    200004c2:	011308bb          	addw	a7,t1,a7
    200004c6:	0ff8f893          	zext.b	a7,a7
    200004ca:	fdd2cfe3          	blt	t0,t4,200004a8 <CPU_matmul+0xc>
    200004ce:	01048333          	add	t1,s1,a6
    200004d2:	01130023          	sb	a7,0(t1)
    200004d6:	0805                	addi	a6,a6,1
    200004d8:	00044e83          	lbu	t4,0(s0)
    200004dc:	00f80863          	beq	a6,a5,200004ec <CPU_matmul+0x50>
    200004e0:	8f32                	mv	t5,a2
    200004e2:	4281                	li	t0,0
    200004e4:	4881                	li	a7,0
    200004e6:	010683b3          	add	t2,a3,a6
    200004ea:	b7c5                	j	200004ca <CPU_matmul+0x2e>
    200004ec:	0e86                	slli	t4,t4,0x1
    200004ee:	0e05                	addi	t3,t3,1
    200004f0:	9676                	add	a2,a2,t4
    200004f2:	9fbe                	add	t6,t6,a5
    200004f4:	00ee1c63          	bne	t3,a4,2000050c <CPU_matmul+0x70>
    200004f8:	6462                	ld	s0,24(sp)
    200004fa:	64c2                	ld	s1,16(sp)
    200004fc:	6922                	ld	s2,8(sp)
    200004fe:	4501                	li	a0,0
    20000500:	6105                	addi	sp,sp,32
    20000502:	8082                	ret
    20000504:	1101                	addi	sp,sp,-32
    20000506:	ec22                	sd	s0,24(sp)
    20000508:	e826                	sd	s1,16(sp)
    2000050a:	e44a                	sd	s2,8(sp)
    2000050c:	4801                	li	a6,0
    2000050e:	01c58433          	add	s0,a1,t3
    20000512:	01f504b3          	add	s1,a0,t6
    20000516:	b7c9                	j	200004d8 <CPU_matmul+0x3c>

0000000020000518 <CPU_requantize>:
    20000518:	7135                	addi	sp,sp,-160
    2000051a:	b422                	fsd	fs0,40(sp)
    2000051c:	a84e                	fsd	fs3,16(sp)
    2000051e:	a056                	fsd	fs5,0(sp)
    20000520:	20a50453          	fmv.s	fs0,fa0
    20000524:	20b58ad3          	fmv.s	fs5,fa1
    20000528:	f00009d3          	fmv.w.x	fs3,zero
    2000052c:	e14a                	sd	s2,128(sp)
    2000052e:	fcce                	sd	s3,120(sp)
    20000530:	f4d6                	sd	s5,104(sp)
    20000532:	f0da                	sd	s6,96(sp)
    20000534:	ecde                	sd	s7,88(sp)
    20000536:	e8e2                	sd	s8,80(sp)
    20000538:	e0ea                	sd	s10,64(sp)
    2000053a:	ac4a                	fsd	fs2,24(sp)
    2000053c:	a452                	fsd	fs4,8(sp)
    2000053e:	89ba                	mv	s3,a4
    20000540:	ed06                	sd	ra,152(sp)
    20000542:	e922                	sd	s0,144(sp)
    20000544:	e526                	sd	s1,136(sp)
    20000546:	f8d2                	sd	s4,112(sp)
    20000548:	e4e6                	sd	s9,72(sp)
    2000054a:	fc6e                	sd	s11,56(sp)
    2000054c:	b026                	fsd	fs1,32(sp)
    2000054e:	8aaa                	mv	s5,a0
    20000550:	8b2e                	mv	s6,a1
    20000552:	8bb2                	mv	s7,a2
    20000554:	8c36                	mv	s8,a3
    20000556:	4901                	li	s2,0
    20000558:	00004797          	auipc	a5,0x4
    2000055c:	d3c7aa07          	flw	fs4,-708(a5) # 20004294 <L1_w_p_arr+0xcf4>
    20000560:	4705                	li	a4,1
    20000562:	00004797          	auipc	a5,0x4
    20000566:	d2e7a907          	flw	fs2,-722(a5) # 20004290 <L1_w_p_arr+0xcf0>
    2000056a:	4d21                	li	s10,8
    2000056c:	012a8433          	add	s0,s5,s2
    20000570:	214a04d3          	fmv.s	fs1,fs4
    20000574:	012b0a33          	add	s4,s6,s2
    20000578:	4481                	li	s1,0
    2000057a:	4c81                	li	s9,0
    2000057c:	8da2                	mv	s11,s0
    2000057e:	a095                	j	200005e2 <CPU_requantize+0xca>
    20000580:	00044783          	lbu	a5,0(s0)
    20000584:	000a4683          	lbu	a3,0(s4)
    20000588:	9f95                	subw	a5,a5,a3
    2000058a:	d007f7d3          	fcvt.s.w	fa5,a5
    2000058e:	00249793          	slli	a5,s1,0x2
    20000592:	97de                	add	a5,a5,s7
    20000594:	0007a507          	flw	fa0,0(a5)
    20000598:	5087f543          	fmadd.s	fa0,fa5,fs0,fa0
    2000059c:	02e99563          	bne	s3,a4,200005c6 <CPU_requantize+0xae>
    200005a0:	a13517d3          	flt.s	a5,fa0,fs3
    200005a4:	cb99                	beqz	a5,200005ba <CPU_requantize+0xa2>
    200005a6:	f0000553          	fmv.w.x	fa0,zero
    200005aa:	19557553          	fdiv.s	fa0,fa0,fs5
    200005ae:	c11ff0ef          	jal	ra,200001be <round_float>
    200005b2:	00a40023          	sb	a0,0(s0)
    200005b6:	4705                	li	a4,1
    200005b8:	a015                	j	200005dc <CPU_requantize+0xc4>
    200005ba:	a0a917d3          	flt.s	a5,fs2,fa0
    200005be:	d7f5                	beqz	a5,200005aa <CPU_requantize+0x92>
    200005c0:	21290553          	fmv.s	fa0,fs2
    200005c4:	b7dd                	j	200005aa <CPU_requantize+0x92>
    200005c6:	fe0992e3          	bnez	s3,200005aa <CPU_requantize+0x92>
    200005ca:	a0a497d3          	flt.s	a5,fs1,fa0
    200005ce:	00040023          	sb	zero,0(s0)
    200005d2:	c789                	beqz	a5,200005dc <CPU_requantize+0xc4>
    200005d4:	20a504d3          	fmv.s	fs1,fa0
    200005d8:	0ff4fc93          	zext.b	s9,s1
    200005dc:	0485                	addi	s1,s1,1
    200005de:	0421                	addi	s0,s0,8
    200005e0:	0a21                	addi	s4,s4,8
    200005e2:	f9849fe3          	bne	s1,s8,20000580 <CPU_requantize+0x68>
    200005e6:	00099463          	bnez	s3,200005ee <CPU_requantize+0xd6>
    200005ea:	019d8023          	sb	s9,0(s11)
    200005ee:	0905                	addi	s2,s2,1
    200005f0:	f7a91ee3          	bne	s2,s10,2000056c <CPU_requantize+0x54>
    200005f4:	60ea                	ld	ra,152(sp)
    200005f6:	644a                	ld	s0,144(sp)
    200005f8:	64aa                	ld	s1,136(sp)
    200005fa:	690a                	ld	s2,128(sp)
    200005fc:	79e6                	ld	s3,120(sp)
    200005fe:	7a46                	ld	s4,112(sp)
    20000600:	7aa6                	ld	s5,104(sp)
    20000602:	7b06                	ld	s6,96(sp)
    20000604:	6be6                	ld	s7,88(sp)
    20000606:	6c46                	ld	s8,80(sp)
    20000608:	6ca6                	ld	s9,72(sp)
    2000060a:	6d06                	ld	s10,64(sp)
    2000060c:	7de2                	ld	s11,56(sp)
    2000060e:	3422                	fld	fs0,40(sp)
    20000610:	3482                	fld	fs1,32(sp)
    20000612:	2962                	fld	fs2,24(sp)
    20000614:	29c2                	fld	fs3,16(sp)
    20000616:	2a22                	fld	fs4,8(sp)
    20000618:	2a82                	fld	fs5,0(sp)
    2000061a:	4501                	li	a0,0
    2000061c:	610d                	addi	sp,sp,160
    2000061e:	8082                	ret

0000000020000620 <uint_matmul>:
    20000620:	0037d893          	srli	a7,a5,0x3
    20000624:	972a                	add	a4,a4,a0
    20000626:	00e51663          	bne	a0,a4,20000632 <uint_matmul+0x12>
    2000062a:	0ff0000f          	fence
    2000062e:	4501                	li	a0,0
    20000630:	8082                	ret
    20000632:	00054803          	lbu	a6,0(a0) # 1001a000 <_sp+0x8017de0>
    20000636:	0ff0000f          	fence
    2000063a:	0105b00b          	0x105b00b
    2000063e:	0316300b          	0x316300b
    20000642:	04d6b00b          	0x4d6b00b
    20000646:	0ff0000f          	fence
    2000064a:	00054803          	lbu	a6,0(a0)
    2000064e:	96be                	add	a3,a3,a5
    20000650:	0505                	addi	a0,a0,1
    20000652:	0018181b          	slliw	a6,a6,0x1
    20000656:	95c2                	add	a1,a1,a6
    20000658:	b7f9                	j	20000626 <uint_matmul+0x6>

000000002000065a <float_covfefe>:
    2000065a:	7135                	addi	sp,sp,-160
    2000065c:	b422                	fsd	fs0,40(sp)
    2000065e:	a84e                	fsd	fs3,16(sp)
    20000660:	a056                	fsd	fs5,0(sp)
    20000662:	20a50453          	fmv.s	fs0,fa0
    20000666:	20b58ad3          	fmv.s	fs5,fa1
    2000066a:	f00009d3          	fmv.w.x	fs3,zero
    2000066e:	e14a                	sd	s2,128(sp)
    20000670:	fcce                	sd	s3,120(sp)
    20000672:	f4d6                	sd	s5,104(sp)
    20000674:	f0da                	sd	s6,96(sp)
    20000676:	ecde                	sd	s7,88(sp)
    20000678:	e8e2                	sd	s8,80(sp)
    2000067a:	e0ea                	sd	s10,64(sp)
    2000067c:	ac4a                	fsd	fs2,24(sp)
    2000067e:	a452                	fsd	fs4,8(sp)
    20000680:	89ba                	mv	s3,a4
    20000682:	ed06                	sd	ra,152(sp)
    20000684:	e922                	sd	s0,144(sp)
    20000686:	e526                	sd	s1,136(sp)
    20000688:	f8d2                	sd	s4,112(sp)
    2000068a:	e4e6                	sd	s9,72(sp)
    2000068c:	fc6e                	sd	s11,56(sp)
    2000068e:	b026                	fsd	fs1,32(sp)
    20000690:	8aaa                	mv	s5,a0
    20000692:	8b2e                	mv	s6,a1
    20000694:	8bb2                	mv	s7,a2
    20000696:	8c36                	mv	s8,a3
    20000698:	4901                	li	s2,0
    2000069a:	00004797          	auipc	a5,0x4
    2000069e:	bfa7aa07          	flw	fs4,-1030(a5) # 20004294 <L1_w_p_arr+0xcf4>
    200006a2:	4705                	li	a4,1
    200006a4:	00004797          	auipc	a5,0x4
    200006a8:	bec7a907          	flw	fs2,-1044(a5) # 20004290 <L1_w_p_arr+0xcf0>
    200006ac:	4d21                	li	s10,8
    200006ae:	012a8433          	add	s0,s5,s2
    200006b2:	214a04d3          	fmv.s	fs1,fs4
    200006b6:	012b0a33          	add	s4,s6,s2
    200006ba:	4481                	li	s1,0
    200006bc:	4c81                	li	s9,0
    200006be:	8da2                	mv	s11,s0
    200006c0:	a095                	j	20000724 <float_covfefe+0xca>
    200006c2:	00044783          	lbu	a5,0(s0)
    200006c6:	000a4683          	lbu	a3,0(s4)
    200006ca:	9f95                	subw	a5,a5,a3
    200006cc:	d007f7d3          	fcvt.s.w	fa5,a5
    200006d0:	00249793          	slli	a5,s1,0x2
    200006d4:	97de                	add	a5,a5,s7
    200006d6:	0007a507          	flw	fa0,0(a5)
    200006da:	5087f543          	fmadd.s	fa0,fa5,fs0,fa0
    200006de:	02e99563          	bne	s3,a4,20000708 <float_covfefe+0xae>
    200006e2:	a13517d3          	flt.s	a5,fa0,fs3
    200006e6:	cb99                	beqz	a5,200006fc <float_covfefe+0xa2>
    200006e8:	f0000553          	fmv.w.x	fa0,zero
    200006ec:	19557553          	fdiv.s	fa0,fa0,fs5
    200006f0:	acfff0ef          	jal	ra,200001be <round_float>
    200006f4:	00a40023          	sb	a0,0(s0)
    200006f8:	4705                	li	a4,1
    200006fa:	a015                	j	2000071e <float_covfefe+0xc4>
    200006fc:	a0a917d3          	flt.s	a5,fs2,fa0
    20000700:	d7f5                	beqz	a5,200006ec <float_covfefe+0x92>
    20000702:	21290553          	fmv.s	fa0,fs2
    20000706:	b7dd                	j	200006ec <float_covfefe+0x92>
    20000708:	fe0992e3          	bnez	s3,200006ec <float_covfefe+0x92>
    2000070c:	a0a497d3          	flt.s	a5,fs1,fa0
    20000710:	00040023          	sb	zero,0(s0)
    20000714:	c789                	beqz	a5,2000071e <float_covfefe+0xc4>
    20000716:	20a504d3          	fmv.s	fs1,fa0
    2000071a:	0ff4fc93          	zext.b	s9,s1
    2000071e:	0485                	addi	s1,s1,1
    20000720:	0421                	addi	s0,s0,8
    20000722:	0a21                	addi	s4,s4,8
    20000724:	f9849fe3          	bne	s1,s8,200006c2 <float_covfefe+0x68>
    20000728:	00099463          	bnez	s3,20000730 <float_covfefe+0xd6>
    2000072c:	019d8023          	sb	s9,0(s11)
    20000730:	0905                	addi	s2,s2,1
    20000732:	f7a91ee3          	bne	s2,s10,200006ae <float_covfefe+0x54>
    20000736:	60ea                	ld	ra,152(sp)
    20000738:	644a                	ld	s0,144(sp)
    2000073a:	64aa                	ld	s1,136(sp)
    2000073c:	690a                	ld	s2,128(sp)
    2000073e:	79e6                	ld	s3,120(sp)
    20000740:	7a46                	ld	s4,112(sp)
    20000742:	7aa6                	ld	s5,104(sp)
    20000744:	7b06                	ld	s6,96(sp)
    20000746:	6be6                	ld	s7,88(sp)
    20000748:	6c46                	ld	s8,80(sp)
    2000074a:	6ca6                	ld	s9,72(sp)
    2000074c:	6d06                	ld	s10,64(sp)
    2000074e:	7de2                	ld	s11,56(sp)
    20000750:	3422                	fld	fs0,40(sp)
    20000752:	3482                	fld	fs1,32(sp)
    20000754:	2962                	fld	fs2,24(sp)
    20000756:	29c2                	fld	fs3,16(sp)
    20000758:	2a22                	fld	fs4,8(sp)
    2000075a:	2a82                	fld	fs5,0(sp)
    2000075c:	610d                	addi	sp,sp,160
    2000075e:	8082                	ret

0000000020000760 <main>:
    20000760:	7169                	addi	sp,sp,-304
    20000762:	f606                	sd	ra,296(sp)
    20000764:	f222                	sd	s0,288(sp)
    20000766:	ea4a                	sd	s2,272(sp)
    20000768:	e64e                	sd	s3,264(sp)
    2000076a:	e252                	sd	s4,256(sp)
    2000076c:	fdd6                	sd	s5,248(sp)
    2000076e:	bd22                	fsd	fs0,184(sp)
    20000770:	b926                	fsd	fs1,176(sp)
    20000772:	b54a                	fsd	fs2,168(sp)
    20000774:	ee26                	sd	s1,280(sp)
    20000776:	f9da                	sd	s6,240(sp)
    20000778:	f5de                	sd	s7,232(sp)
    2000077a:	f1e2                	sd	s8,224(sp)
    2000077c:	ede6                	sd	s9,216(sp)
    2000077e:	e9ea                	sd	s10,208(sp)
    20000780:	e5ee                	sd	s11,200(sp)
    20000782:	31f000ef          	jal	ra,200012a0 <HAL_RCC_InitSystemClock>
    20000786:	018007b7          	lui	a5,0x1800
    2000078a:	0e178793          	addi	a5,a5,225 # 18000e1 <__heap_size+0x17ff8e1>
    2000078e:	07a6                	slli	a5,a5,0x9
    20000790:	080c                	addi	a1,sp,16
    20000792:	1001a537          	lui	a0,0x1001a
    20000796:	e83e                	sd	a5,16(sp)
    20000798:	cc02                	sw	zero,24(sp)
    2000079a:	309000ef          	jal	ra,200012a2 <HAL_UART_init>
    2000079e:	00002597          	auipc	a1,0x2
    200007a2:	a5258593          	addi	a1,a1,-1454 # 200021f0 <__errno+0x5e>
    200007a6:	1008                	addi	a0,sp,32
    200007a8:	489000ef          	jal	ra,20001430 <strcpy>
    200007ac:	1008                	addi	a0,sp,32
    200007ae:	495000ef          	jal	ra,20001442 <strlen>
    200007b2:	03051613          	slli	a2,a0,0x30
    200007b6:	06400693          	li	a3,100
    200007ba:	9241                	srli	a2,a2,0x30
    200007bc:	100c                	addi	a1,sp,32
    200007be:	1001a537          	lui	a0,0x1001a
    200007c2:	3cd000ef          	jal	ra,2000138e <HAL_UART_transmit>
    200007c6:	00004797          	auipc	a5,0x4
    200007ca:	ad27a787          	flw	fa5,-1326(a5) # 20004298 <L1_w_p_arr+0xcf8>
    200007ce:	00f12427          	fsw	fa5,8(sp)
    200007d2:	00812787          	flw	fa5,8(sp)
    200007d6:	00004797          	auipc	a5,0x4
    200007da:	ab27b707          	fld	fa4,-1358(a5) # 20004288 <L1_w_p_arr+0xce8>
    200007de:	00002917          	auipc	s2,0x2
    200007e2:	b2290913          	addi	s2,s2,-1246 # 20002300 <x>
    200007e6:	420787d3          	fcvt.d.s	fa5,fa5
    200007ea:	e8000417          	auipc	s0,0xe8000
    200007ee:	8ce40413          	addi	s0,s0,-1842 # 80000b8 <h1_buf_pos>
    200007f2:	a0818993          	addi	s3,gp,-1528 # 80002b8 <h1_buf_neg>
    200007f6:	12e7f7d3          	fmul.d	fa5,fa5,fa4
    200007fa:	c0818a13          	addi	s4,gp,-1016 # 80004b8 <out_buf_pos>
    200007fe:	ca818a93          	addi	s5,gp,-856 # 8000558 <out_buf_neg>
    20000802:	4017f7d3          	fcvt.s.d	fa5,fa5
    20000806:	00f12627          	fsw	fa5,12(sp)
    2000080a:	b23ff0ef          	jal	ra,2000032c <printMNISTDataset>
    2000080e:	00004797          	auipc	a5,0x4
    20000812:	a8e7a407          	flw	fs0,-1394(a5) # 2000429c <L1_w_p_arr+0xcfc>
    20000816:	00004797          	auipc	a5,0x4
    2000081a:	a8a7a487          	flw	fs1,-1398(a5) # 200042a0 <L1_w_p_arr+0xd00>
    2000081e:	00004797          	auipc	a5,0x4
    20000822:	a867a907          	flw	fs2,-1402(a5) # 200042a4 <L1_w_p_arr+0xd04>
    20000826:	00002597          	auipc	a1,0x2
    2000082a:	9e258593          	addi	a1,a1,-1566 # 20002208 <__errno+0x76>
    2000082e:	1008                	addi	a0,sp,32
    20000830:	401000ef          	jal	ra,20001430 <strcpy>
    20000834:	1008                	addi	a0,sp,32
    20000836:	40d000ef          	jal	ra,20001442 <strlen>
    2000083a:	03051613          	slli	a2,a0,0x30
    2000083e:	06400693          	li	a3,100
    20000842:	9241                	srli	a2,a2,0x30
    20000844:	100c                	addi	a1,sp,32
    20000846:	1001a537          	lui	a0,0x1001a
    2000084a:	345000ef          	jal	ra,2000138e <HAL_UART_transmit>
    2000084e:	3e800513          	li	a0,1000
    20000852:	352000ef          	jal	ra,20000ba4 <HAL_delay>
    20000856:	00002597          	auipc	a1,0x2
    2000085a:	9d258593          	addi	a1,a1,-1582 # 20002228 <__errno+0x96>
    2000085e:	1008                	addi	a0,sp,32
    20000860:	3d1000ef          	jal	ra,20001430 <strcpy>
    20000864:	1008                	addi	a0,sp,32
    20000866:	3dd000ef          	jal	ra,20001442 <strlen>
    2000086a:	03051613          	slli	a2,a0,0x30
    2000086e:	06400693          	li	a3,100
    20000872:	9241                	srli	a2,a2,0x30
    20000874:	100c                	addi	a1,sp,32
    20000876:	0200c4b7          	lui	s1,0x200c
    2000087a:	1001a537          	lui	a0,0x1001a
    2000087e:	311000ef          	jal	ra,2000138e <HAL_UART_transmit>
    20000882:	ff84bb03          	ld	s6,-8(s1) # 200bff8 <__heap_size+0x200b7f8>
    20000886:	c0002bf3          	rdcycle	s7
    2000088a:	c0202c73          	rdinstret	s8
    2000088e:	47a1                	li	a5,8
    20000890:	86ca                	mv	a3,s2
    20000892:	02000713          	li	a4,32
    20000896:	00003617          	auipc	a2,0x3
    2000089a:	d0a60613          	addi	a2,a2,-758 # 200035a0 <L1_w_p_arr>
    2000089e:	00002597          	auipc	a1,0x2
    200008a2:	08258593          	addi	a1,a1,130 # 20002920 <L1_w_p_ptr>
    200008a6:	8522                	mv	a0,s0
    200008a8:	bf5ff0ef          	jal	ra,2000049c <CPU_matmul>
    200008ac:	47a1                	li	a5,8
    200008ae:	86ca                	mv	a3,s2
    200008b0:	02000713          	li	a4,32
    200008b4:	00002617          	auipc	a2,0x2
    200008b8:	3a460613          	addi	a2,a2,932 # 20002c58 <L1_w_n_arr>
    200008bc:	00002597          	auipc	a1,0x2
    200008c0:	08458593          	addi	a1,a1,132 # 20002940 <L1_w_n_ptr>
    200008c4:	854e                	mv	a0,s3
    200008c6:	bd7ff0ef          	jal	ra,2000049c <CPU_matmul>
    200008ca:	208405d3          	fmv.s	fa1,fs0
    200008ce:	20948553          	fmv.s	fa0,fs1
    200008d2:	85ce                	mv	a1,s3
    200008d4:	4705                	li	a4,1
    200008d6:	02000693          	li	a3,32
    200008da:	00002617          	auipc	a2,0x2
    200008de:	08660613          	addi	a2,a2,134 # 20002960 <L1_b>
    200008e2:	8522                	mv	a0,s0
    200008e4:	c35ff0ef          	jal	ra,20000518 <CPU_requantize>
    200008e8:	86a2                	mv	a3,s0
    200008ea:	47a1                	li	a5,8
    200008ec:	4729                	li	a4,10
    200008ee:	00002617          	auipc	a2,0x2
    200008f2:	0f260613          	addi	a2,a2,242 # 200029e0 <L2_w_p_arr>
    200008f6:	00002597          	auipc	a1,0x2
    200008fa:	1fa58593          	addi	a1,a1,506 # 20002af0 <L2_w_p_ptr>
    200008fe:	8552                	mv	a0,s4
    20000900:	b9dff0ef          	jal	ra,2000049c <CPU_matmul>
    20000904:	47a1                	li	a5,8
    20000906:	86a2                	mv	a3,s0
    20000908:	4729                	li	a4,10
    2000090a:	00002617          	auipc	a2,0x2
    2000090e:	1f660613          	addi	a2,a2,502 # 20002b00 <L2_w_n_arr>
    20000912:	00002597          	auipc	a1,0x2
    20000916:	30e58593          	addi	a1,a1,782 # 20002c20 <L2_w_n_ptr>
    2000091a:	8556                	mv	a0,s5
    2000091c:	b81ff0ef          	jal	ra,2000049c <CPU_matmul>
    20000920:	f00005d3          	fmv.w.x	fa1,zero
    20000924:	21290553          	fmv.s	fa0,fs2
    20000928:	4701                	li	a4,0
    2000092a:	46a9                	li	a3,10
    2000092c:	00002617          	auipc	a2,0x2
    20000930:	30460613          	addi	a2,a2,772 # 20002c30 <L2_b>
    20000934:	85d6                	mv	a1,s5
    20000936:	8552                	mv	a0,s4
    20000938:	be1ff0ef          	jal	ra,20000518 <CPU_requantize>
    2000093c:	ff84b603          	ld	a2,-8(s1)
    20000940:	c00026f3          	rdcycle	a3
    20000944:	c0202773          	rdinstret	a4
    20000948:	00002597          	auipc	a1,0x2
    2000094c:	90058593          	addi	a1,a1,-1792 # 20002248 <__errno+0xb6>
    20000950:	41870733          	sub	a4,a4,s8
    20000954:	417686b3          	sub	a3,a3,s7
    20000958:	41660633          	sub	a2,a2,s6
    2000095c:	1008                	addi	a0,sp,32
    2000095e:	28b000ef          	jal	ra,200013e8 <siprintf>
    20000962:	1008                	addi	a0,sp,32
    20000964:	2df000ef          	jal	ra,20001442 <strlen>
    20000968:	03051613          	slli	a2,a0,0x30
    2000096c:	06400693          	li	a3,100
    20000970:	9241                	srli	a2,a2,0x30
    20000972:	100c                	addi	a1,sp,32
    20000974:	1001a537          	lui	a0,0x1001a
    20000978:	217000ef          	jal	ra,2000138e <HAL_UART_transmit>
    2000097c:	3e800513          	li	a0,1000
    20000980:	224000ef          	jal	ra,20000ba4 <HAL_delay>
    20000984:	00002597          	auipc	a1,0x2
    20000988:	8ec58593          	addi	a1,a1,-1812 # 20002270 <__errno+0xde>
    2000098c:	1008                	addi	a0,sp,32
    2000098e:	2a3000ef          	jal	ra,20001430 <strcpy>
    20000992:	1008                	addi	a0,sp,32
    20000994:	2af000ef          	jal	ra,20001442 <strlen>
    20000998:	03051613          	slli	a2,a0,0x30
    2000099c:	06400693          	li	a3,100
    200009a0:	9241                	srli	a2,a2,0x30
    200009a2:	100c                	addi	a1,sp,32
    200009a4:	1001a537          	lui	a0,0x1001a
    200009a8:	1e7000ef          	jal	ra,2000138e <HAL_UART_transmit>
    200009ac:	ff84bb03          	ld	s6,-8(s1)
    200009b0:	c0002bf3          	rdcycle	s7
    200009b4:	c0202c73          	rdinstret	s8
    200009b8:	47a1                	li	a5,8
    200009ba:	86ca                	mv	a3,s2
    200009bc:	02000713          	li	a4,32
    200009c0:	00003617          	auipc	a2,0x3
    200009c4:	be060613          	addi	a2,a2,-1056 # 200035a0 <L1_w_p_arr>
    200009c8:	00002597          	auipc	a1,0x2
    200009cc:	f5858593          	addi	a1,a1,-168 # 20002920 <L1_w_p_ptr>
    200009d0:	8522                	mv	a0,s0
    200009d2:	a91ff0ef          	jal	ra,20000462 <SPMAT_matmul>
    200009d6:	47a1                	li	a5,8
    200009d8:	86ca                	mv	a3,s2
    200009da:	02000713          	li	a4,32
    200009de:	00002617          	auipc	a2,0x2
    200009e2:	27a60613          	addi	a2,a2,634 # 20002c58 <L1_w_n_arr>
    200009e6:	00002597          	auipc	a1,0x2
    200009ea:	f5a58593          	addi	a1,a1,-166 # 20002940 <L1_w_n_ptr>
    200009ee:	854e                	mv	a0,s3
    200009f0:	a73ff0ef          	jal	ra,20000462 <SPMAT_matmul>
    200009f4:	208405d3          	fmv.s	fa1,fs0
    200009f8:	20948553          	fmv.s	fa0,fs1
    200009fc:	85ce                	mv	a1,s3
    200009fe:	4705                	li	a4,1
    20000a00:	02000693          	li	a3,32
    20000a04:	00002617          	auipc	a2,0x2
    20000a08:	f5c60613          	addi	a2,a2,-164 # 20002960 <L1_b>
    20000a0c:	8522                	mv	a0,s0
    20000a0e:	b0bff0ef          	jal	ra,20000518 <CPU_requantize>
    20000a12:	86a2                	mv	a3,s0
    20000a14:	47a1                	li	a5,8
    20000a16:	4729                	li	a4,10
    20000a18:	00002617          	auipc	a2,0x2
    20000a1c:	fc860613          	addi	a2,a2,-56 # 200029e0 <L2_w_p_arr>
    20000a20:	00002597          	auipc	a1,0x2
    20000a24:	0d058593          	addi	a1,a1,208 # 20002af0 <L2_w_p_ptr>
    20000a28:	8552                	mv	a0,s4
    20000a2a:	a39ff0ef          	jal	ra,20000462 <SPMAT_matmul>
    20000a2e:	47a1                	li	a5,8
    20000a30:	86a2                	mv	a3,s0
    20000a32:	4729                	li	a4,10
    20000a34:	00002617          	auipc	a2,0x2
    20000a38:	0cc60613          	addi	a2,a2,204 # 20002b00 <L2_w_n_arr>
    20000a3c:	00002597          	auipc	a1,0x2
    20000a40:	1e458593          	addi	a1,a1,484 # 20002c20 <L2_w_n_ptr>
    20000a44:	8556                	mv	a0,s5
    20000a46:	a1dff0ef          	jal	ra,20000462 <SPMAT_matmul>
    20000a4a:	f00005d3          	fmv.w.x	fa1,zero
    20000a4e:	21290553          	fmv.s	fa0,fs2
    20000a52:	4701                	li	a4,0
    20000a54:	46a9                	li	a3,10
    20000a56:	00002617          	auipc	a2,0x2
    20000a5a:	1da60613          	addi	a2,a2,474 # 20002c30 <L2_b>
    20000a5e:	85d6                	mv	a1,s5
    20000a60:	8552                	mv	a0,s4
    20000a62:	ab7ff0ef          	jal	ra,20000518 <CPU_requantize>
    20000a66:	ff84b603          	ld	a2,-8(s1)
    20000a6a:	c00026f3          	rdcycle	a3
    20000a6e:	c0202773          	rdinstret	a4
    20000a72:	00001597          	auipc	a1,0x1
    20000a76:	7d658593          	addi	a1,a1,2006 # 20002248 <__errno+0xb6>
    20000a7a:	41870733          	sub	a4,a4,s8
    20000a7e:	417686b3          	sub	a3,a3,s7
    20000a82:	41660633          	sub	a2,a2,s6
    20000a86:	1008                	addi	a0,sp,32
    20000a88:	161000ef          	jal	ra,200013e8 <siprintf>
    20000a8c:	1008                	addi	a0,sp,32
    20000a8e:	1b5000ef          	jal	ra,20001442 <strlen>
    20000a92:	03051613          	slli	a2,a0,0x30
    20000a96:	06400693          	li	a3,100
    20000a9a:	9241                	srli	a2,a2,0x30
    20000a9c:	100c                	addi	a1,sp,32
    20000a9e:	1001a537          	lui	a0,0x1001a
    20000aa2:	0ed000ef          	jal	ra,2000138e <HAL_UART_transmit>
    20000aa6:	3e800513          	li	a0,1000
    20000aaa:	0fa000ef          	jal	ra,20000ba4 <HAL_delay>
    20000aae:	00001597          	auipc	a1,0x1
    20000ab2:	7e258593          	addi	a1,a1,2018 # 20002290 <__errno+0xfe>
    20000ab6:	1008                	addi	a0,sp,32
    20000ab8:	179000ef          	jal	ra,20001430 <strcpy>
    20000abc:	1008                	addi	a0,sp,32
    20000abe:	185000ef          	jal	ra,20001442 <strlen>
    20000ac2:	03051613          	slli	a2,a0,0x30
    20000ac6:	06400693          	li	a3,100
    20000aca:	9241                	srli	a2,a2,0x30
    20000acc:	100c                	addi	a1,sp,32
    20000ace:	1001a537          	lui	a0,0x1001a
    20000ad2:	0bd000ef          	jal	ra,2000138e <HAL_UART_transmit>
    20000ad6:	c0818b93          	addi	s7,gp,-1016 # 80004b8 <out_buf_pos>
    20000ada:	4481                	li	s1,0
    20000adc:	4b01                	li	s6,0
    20000ade:	00003d97          	auipc	s11,0x3
    20000ae2:	7d2d8d93          	addi	s11,s11,2002 # 200042b0 <y>
    20000ae6:	00001d17          	auipc	s10,0x1
    20000aea:	7cad0d13          	addi	s10,s10,1994 # 200022b0 <__errno+0x11e>
    20000aee:	4ca1                	li	s9,8
    20000af0:	01b487b3          	add	a5,s1,s11
    20000af4:	0007cc03          	lbu	s8,0(a5)
    20000af8:	000bc683          	lbu	a3,0(s7)
    20000afc:	85ea                	mv	a1,s10
    20000afe:	8662                	mv	a2,s8
    20000b00:	1008                	addi	a0,sp,32
    20000b02:	0e7000ef          	jal	ra,200013e8 <siprintf>
    20000b06:	1008                	addi	a0,sp,32
    20000b08:	13b000ef          	jal	ra,20001442 <strlen>
    20000b0c:	03051613          	slli	a2,a0,0x30
    20000b10:	9241                	srli	a2,a2,0x30
    20000b12:	06400693          	li	a3,100
    20000b16:	100c                	addi	a1,sp,32
    20000b18:	1001a537          	lui	a0,0x1001a
    20000b1c:	073000ef          	jal	ra,2000138e <HAL_UART_transmit>
    20000b20:	000bc603          	lbu	a2,0(s7)
    20000b24:	0485                	addi	s1,s1,1
    20000b26:	0b85                	addi	s7,s7,1
    20000b28:	41860633          	sub	a2,a2,s8
    20000b2c:	00163613          	seqz	a2,a2
    20000b30:	01660b3b          	addw	s6,a2,s6
    20000b34:	fb949ee3          	bne	s1,s9,20000af0 <main+0x390>
    20000b38:	865a                	mv	a2,s6
    20000b3a:	00001597          	auipc	a1,0x1
    20000b3e:	78e58593          	addi	a1,a1,1934 # 200022c8 <__errno+0x136>
    20000b42:	1008                	addi	a0,sp,32
    20000b44:	0a5000ef          	jal	ra,200013e8 <siprintf>
    20000b48:	1008                	addi	a0,sp,32
    20000b4a:	0f9000ef          	jal	ra,20001442 <strlen>
    20000b4e:	03051613          	slli	a2,a0,0x30
    20000b52:	100c                	addi	a1,sp,32
    20000b54:	06400693          	li	a3,100
    20000b58:	9241                	srli	a2,a2,0x30
    20000b5a:	1001a537          	lui	a0,0x1001a
    20000b5e:	031000ef          	jal	ra,2000138e <HAL_UART_transmit>
    20000b62:	00001597          	auipc	a1,0x1
    20000b66:	77e58593          	addi	a1,a1,1918 # 200022e0 <__errno+0x14e>
    20000b6a:	009b0663          	beq	s6,s1,20000b76 <main+0x416>
    20000b6e:	00001597          	auipc	a1,0x1
    20000b72:	78258593          	addi	a1,a1,1922 # 200022f0 <__errno+0x15e>
    20000b76:	1008                	addi	a0,sp,32
    20000b78:	0b9000ef          	jal	ra,20001430 <strcpy>
    20000b7c:	1008                	addi	a0,sp,32
    20000b7e:	0c5000ef          	jal	ra,20001442 <strlen>
    20000b82:	03051613          	slli	a2,a0,0x30
    20000b86:	06400693          	li	a3,100
    20000b8a:	9241                	srli	a2,a2,0x30
    20000b8c:	100c                	addi	a1,sp,32
    20000b8e:	1001a537          	lui	a0,0x1001a
    20000b92:	7fc000ef          	jal	ra,2000138e <HAL_UART_transmit>
    20000b96:	3e800513          	li	a0,1000
    20000b9a:	00a000ef          	jal	ra,20000ba4 <HAL_delay>
    20000b9e:	b161                	j	20000826 <main+0xc6>

0000000020000ba0 <HAL_init>:
    20000ba0:	8082                	ret

0000000020000ba2 <HAL_getTick>:
    20000ba2:	aa31                	j	20000cbe <HAL_CLINT_getTime>

0000000020000ba4 <HAL_delay>:
    20000ba4:	1141                	addi	sp,sp,-16
    20000ba6:	e022                	sd	s0,0(sp)
    20000ba8:	e406                	sd	ra,8(sp)
    20000baa:	842a                	mv	s0,a0
    20000bac:	112000ef          	jal	ra,20000cbe <HAL_CLINT_getTime>
    20000bb0:	1f400793          	li	a5,500
    20000bb4:	02f40433          	mul	s0,s0,a5
    20000bb8:	942a                	add	s0,s0,a0
    20000bba:	104000ef          	jal	ra,20000cbe <HAL_CLINT_getTime>
    20000bbe:	fe856ee3          	bltu	a0,s0,20000bba <HAL_delay+0x16>
    20000bc2:	60a2                	ld	ra,8(sp)
    20000bc4:	6402                	ld	s0,0(sp)
    20000bc6:	0141                	addi	sp,sp,16
    20000bc8:	8082                	ret

0000000020000bca <HAL_MachineSoftwareInterruptCallback>:
    20000bca:	8082                	ret

0000000020000bcc <HAL_GPIO_Callback>:
    20000bcc:	8082                	ret

0000000020000bce <InstructionAddressMisalign_Exception_Handler>:
    20000bce:	8082                	ret

0000000020000bd0 <InstructionAccessFault_Exception_Handler>:
    20000bd0:	8082                	ret

0000000020000bd2 <IllegalInstruction_Exception_Handler>:
    20000bd2:	8082                	ret

0000000020000bd4 <Breakpoint_Exception_Handler>:
    20000bd4:	8082                	ret

0000000020000bd6 <LoadAddressMisaligne_Exception_handler>:
    20000bd6:	8082                	ret

0000000020000bd8 <LoadAccessFault_Exception_handler>:
    20000bd8:	8082                	ret

0000000020000bda <StoreAMOAddressMisalign_Exception_handler>:
    20000bda:	8082                	ret

0000000020000bdc <StoreAMOAccessFault_Exception_handler>:
    20000bdc:	8082                	ret

0000000020000bde <EnvironmentCallUMode_Exception_handler>:
    20000bde:	8082                	ret

0000000020000be0 <EnvironmentCallMMode_Exception_handler>:
    20000be0:	8082                	ret

0000000020000be2 <UserSoftware_IRQn_Handler>:
    20000be2:	8082                	ret

0000000020000be4 <SupervisorSoftware_IRQn_Handler>:
    20000be4:	8082                	ret

0000000020000be6 <HypervisorSoftware_IRQn_Handler>:
    20000be6:	8082                	ret

0000000020000be8 <MachineSoftware_IRQn_Handler>:
    20000be8:	1141                	addi	sp,sp,-16
    20000bea:	4501                	li	a0,0
    20000bec:	e406                	sd	ra,8(sp)
    20000bee:	fddff0ef          	jal	ra,20000bca <HAL_MachineSoftwareInterruptCallback>
    20000bf2:	020007b7          	lui	a5,0x2000
    20000bf6:	0007a023          	sw	zero,0(a5) # 2000000 <__heap_size+0x1fff800>
    20000bfa:	0007a223          	sw	zero,4(a5)
    20000bfe:	0007a423          	sw	zero,8(a5)
    20000c02:	60a2                	ld	ra,8(sp)
    20000c04:	0007a623          	sw	zero,12(a5)
    20000c08:	0007a823          	sw	zero,16(a5)
    20000c0c:	450d                	li	a0,3
    20000c0e:	0141                	addi	sp,sp,16
    20000c10:	a079                	j	20000c9e <HAL_CORE_clearIRQ>

0000000020000c12 <UserTimer_IRQn_Handler>:
    20000c12:	8082                	ret

0000000020000c14 <SupervisorTimer_IRQn_Handler>:
    20000c14:	8082                	ret

0000000020000c16 <HypervisorTimer_IRQn_Handler>:
    20000c16:	8082                	ret

0000000020000c18 <MachineTimer_IRQn_Handler>:
    20000c18:	1141                	addi	sp,sp,-16
    20000c1a:	557d                	li	a0,-1
    20000c1c:	e406                	sd	ra,8(sp)
    20000c1e:	0b2000ef          	jal	ra,20000cd0 <HAL_CLINT_setTimerInterrupt>
    20000c22:	60a2                	ld	ra,8(sp)
    20000c24:	451d                	li	a0,7
    20000c26:	0141                	addi	sp,sp,16
    20000c28:	a89d                	j	20000c9e <HAL_CORE_clearIRQ>

0000000020000c2a <UserExternal_IRQn_Handler>:
    20000c2a:	8082                	ret

0000000020000c2c <SupervisorExternal_IRQn_Handler>:
    20000c2c:	8082                	ret

0000000020000c2e <HypervisorExternal_IRQn_Handler>:
    20000c2e:	8082                	ret

0000000020000c30 <MachineExternal_IRQn_Handler>:
    20000c30:	1141                	addi	sp,sp,-16
    20000c32:	4501                	li	a0,0
    20000c34:	e406                	sd	ra,8(sp)
    20000c36:	10a000ef          	jal	ra,20000d40 <HAL_PLIC_claimIRQ>
    20000c3a:	0005059b          	sext.w	a1,a0
    20000c3e:	4501                	li	a0,0
    20000c40:	114000ef          	jal	ra,20000d54 <HAL_PLIC_completeIRQ>
    20000c44:	60a2                	ld	ra,8(sp)
    20000c46:	452d                	li	a0,11
    20000c48:	0141                	addi	sp,sp,16
    20000c4a:	a891                	j	20000c9e <HAL_CORE_clearIRQ>

0000000020000c4c <system_init>:
    20000c4c:	bf91                	j	20000ba0 <HAL_init>

0000000020000c4e <trap_handler>:
    20000c4e:	34202773          	csrr	a4,mcause
    20000c52:	800007b7          	lui	a5,0x80000
    20000c56:	2701                	sext.w	a4,a4
    20000c58:	00778693          	addi	a3,a5,7 # ffffffff80000007 <_data_source_start+0xffffffff5fffbd2f>
    20000c5c:	00d70a63          	beq	a4,a3,20000c70 <trap_handler+0x22>
    20000c60:	00b78693          	addi	a3,a5,11
    20000c64:	00d70763          	beq	a4,a3,20000c72 <trap_handler+0x24>
    20000c68:	078d                	addi	a5,a5,3
    20000c6a:	00f71563          	bne	a4,a5,20000c74 <trap_handler+0x26>
    20000c6e:	bfad                	j	20000be8 <MachineSoftware_IRQn_Handler>
    20000c70:	b765                	j	20000c18 <MachineTimer_IRQn_Handler>
    20000c72:	bf7d                	j	20000c30 <MachineExternal_IRQn_Handler>
    20000c74:	8082                	ret

0000000020000c76 <HAL_CORE_disableGlobalInterrupt>:
    20000c76:	47a1                	li	a5,8
    20000c78:	3007b073          	csrc	mstatus,a5
    20000c7c:	8082                	ret

0000000020000c7e <HAL_CORE_enableGlobalInterrupt>:
    20000c7e:	47a1                	li	a5,8
    20000c80:	3007a073          	csrs	mstatus,a5
    20000c84:	8082                	ret

0000000020000c86 <HAL_CORE_disableIRQ>:
    20000c86:	4785                	li	a5,1
    20000c88:	00a797bb          	sllw	a5,a5,a0
    20000c8c:	3047b073          	csrc	mie,a5
    20000c90:	8082                	ret

0000000020000c92 <HAL_CORE_enableIRQ>:
    20000c92:	4785                	li	a5,1
    20000c94:	00a797bb          	sllw	a5,a5,a0
    20000c98:	3047a073          	csrs	mie,a5
    20000c9c:	8082                	ret

0000000020000c9e <HAL_CORE_clearIRQ>:
    20000c9e:	4785                	li	a5,1
    20000ca0:	00a797bb          	sllw	a5,a5,a0
    20000ca4:	3447b073          	csrc	mip,a5
    20000ca8:	8082                	ret

0000000020000caa <HAL_CLINT_triggerSoftwareInterrupt>:
    20000caa:	020006b7          	lui	a3,0x2000
    20000cae:	429c                	lw	a5,0(a3)
    20000cb0:	4705                	li	a4,1
    20000cb2:	00a7173b          	sllw	a4,a4,a0
    20000cb6:	8fd9                	or	a5,a5,a4
    20000cb8:	2781                	sext.w	a5,a5
    20000cba:	c29c                	sw	a5,0(a3)
    20000cbc:	8082                	ret

0000000020000cbe <HAL_CLINT_getTime>:
    20000cbe:	0200c737          	lui	a4,0x200c
    20000cc2:	ffc76783          	lwu	a5,-4(a4) # 200bffc <__heap_size+0x200b7fc>
    20000cc6:	ff876503          	lwu	a0,-8(a4)
    20000cca:	1782                	slli	a5,a5,0x20
    20000ccc:	8d5d                	or	a0,a0,a5
    20000cce:	8082                	ret

0000000020000cd0 <HAL_CLINT_setTimerInterrupt>:
    20000cd0:	020047b7          	lui	a5,0x2004
    20000cd4:	c388                	sw	a0,0(a5)
    20000cd6:	9101                	srli	a0,a0,0x20
    20000cd8:	c3c8                	sw	a0,4(a5)
    20000cda:	8082                	ret

0000000020000cdc <HAL_PLIC_disable>:
    20000cdc:	02051793          	slli	a5,a0,0x20
    20000ce0:	01e7d513          	srli	a0,a5,0x1e
    20000ce4:	0c0027b7          	lui	a5,0xc002
    20000ce8:	953e                	add	a0,a0,a5
    20000cea:	4118                	lw	a4,0(a0)
    20000cec:	4785                	li	a5,1
    20000cee:	00b797bb          	sllw	a5,a5,a1
    20000cf2:	fff7c793          	not	a5,a5
    20000cf6:	8ff9                	and	a5,a5,a4
    20000cf8:	2781                	sext.w	a5,a5
    20000cfa:	c11c                	sw	a5,0(a0)
    20000cfc:	8082                	ret

0000000020000cfe <HAL_PLIC_enable>:
    20000cfe:	02051793          	slli	a5,a0,0x20
    20000d02:	01e7d513          	srli	a0,a5,0x1e
    20000d06:	0c0027b7          	lui	a5,0xc002
    20000d0a:	953e                	add	a0,a0,a5
    20000d0c:	411c                	lw	a5,0(a0)
    20000d0e:	4705                	li	a4,1
    20000d10:	00b7173b          	sllw	a4,a4,a1
    20000d14:	8fd9                	or	a5,a5,a4
    20000d16:	2781                	sext.w	a5,a5
    20000d18:	c11c                	sw	a5,0(a0)
    20000d1a:	8082                	ret

0000000020000d1c <HAL_PLIC_setPriority>:
    20000d1c:	02051713          	slli	a4,a0,0x20
    20000d20:	01e75793          	srli	a5,a4,0x1e
    20000d24:	0c000537          	lui	a0,0xc000
    20000d28:	953e                	add	a0,a0,a5
    20000d2a:	c10c                	sw	a1,0(a0)
    20000d2c:	8082                	ret

0000000020000d2e <HAL_PLIC_setPriorityThreshold>:
    20000d2e:	02051713          	slli	a4,a0,0x20
    20000d32:	01d75793          	srli	a5,a4,0x1d
    20000d36:	0c200537          	lui	a0,0xc200
    20000d3a:	953e                	add	a0,a0,a5
    20000d3c:	c10c                	sw	a1,0(a0)
    20000d3e:	8082                	ret

0000000020000d40 <HAL_PLIC_claimIRQ>:
    20000d40:	02051713          	slli	a4,a0,0x20
    20000d44:	01d75793          	srli	a5,a4,0x1d
    20000d48:	0c200537          	lui	a0,0xc200
    20000d4c:	953e                	add	a0,a0,a5
    20000d4e:	4148                	lw	a0,4(a0)
    20000d50:	2501                	sext.w	a0,a0
    20000d52:	8082                	ret

0000000020000d54 <HAL_PLIC_completeIRQ>:
    20000d54:	02051713          	slli	a4,a0,0x20
    20000d58:	01d75793          	srli	a5,a4,0x1d
    20000d5c:	0c200537          	lui	a0,0xc200
    20000d60:	953e                	add	a0,a0,a5
    20000d62:	c14c                	sw	a1,4(a0)
    20000d64:	8082                	ret

0000000020000d66 <HAL_GPIO_init>:
    20000d66:	4194                	lw	a3,0(a1)
    20000d68:	4705                	li	a4,1
    20000d6a:	00d76c63          	bltu	a4,a3,20000d82 <HAL_GPIO_init+0x1c>
    20000d6e:	415c                	lw	a5,4(a0)
    20000d70:	2781                	sext.w	a5,a5
    20000d72:	8fd1                	or	a5,a5,a2
    20000d74:	c15c                	sw	a5,4(a0)
    20000d76:	00e69663          	bne	a3,a4,20000d82 <HAL_GPIO_init+0x1c>
    20000d7a:	451c                	lw	a5,8(a0)
    20000d7c:	2781                	sext.w	a5,a5
    20000d7e:	8fd1                	or	a5,a5,a2
    20000d80:	c51c                	sw	a5,8(a0)
    20000d82:	41d8                	lw	a4,4(a1)
    20000d84:	4785                	li	a5,1
    20000d86:	00f71f63          	bne	a4,a5,20000da4 <HAL_GPIO_init+0x3e>
    20000d8a:	491c                	lw	a5,16(a0)
    20000d8c:	2781                	sext.w	a5,a5
    20000d8e:	8fd1                	or	a5,a5,a2
    20000d90:	c91c                	sw	a5,16(a0)
    20000d92:	4598                	lw	a4,8(a1)
    20000d94:	4785                	li	a5,1
    20000d96:	00f71e63          	bne	a4,a5,20000db2 <HAL_GPIO_init+0x4c>
    20000d9a:	495c                	lw	a5,20(a0)
    20000d9c:	2781                	sext.w	a5,a5
    20000d9e:	8e5d                	or	a2,a2,a5
    20000da0:	c950                	sw	a2,20(a0)
    20000da2:	8082                	ret
    20000da4:	491c                	lw	a5,16(a0)
    20000da6:	0007871b          	sext.w	a4,a5
    20000daa:	fff64793          	not	a5,a2
    20000dae:	8ff9                	and	a5,a5,a4
    20000db0:	b7c5                	j	20000d90 <HAL_GPIO_init+0x2a>
    20000db2:	495c                	lw	a5,20(a0)
    20000db4:	fff64613          	not	a2,a2
    20000db8:	2781                	sext.w	a5,a5
    20000dba:	8e7d                	and	a2,a2,a5
    20000dbc:	b7d5                	j	20000da0 <HAL_GPIO_init+0x3a>

0000000020000dbe <HAL_GPIO_readPin>:
    20000dbe:	4108                	lw	a0,0(a0)
    20000dc0:	2501                	sext.w	a0,a0
    20000dc2:	8d6d                	and	a0,a0,a1
    20000dc4:	00a03533          	snez	a0,a0
    20000dc8:	8082                	ret

0000000020000dca <HAL_GPIO_writePin>:
    20000dca:	455c                	lw	a5,12(a0)
    20000dcc:	2781                	sext.w	a5,a5
    20000dce:	c601                	beqz	a2,20000dd6 <HAL_GPIO_writePin+0xc>
    20000dd0:	8ddd                	or	a1,a1,a5
    20000dd2:	c54c                	sw	a1,12(a0)
    20000dd4:	8082                	ret
    20000dd6:	fff5c593          	not	a1,a1
    20000dda:	8dfd                	and	a1,a1,a5
    20000ddc:	bfdd                	j	20000dd2 <HAL_GPIO_writePin+0x8>

0000000020000dde <HAL_I2C_init>:
    20000dde:	451c                	lw	a5,8(a0)
    20000de0:	2781                	sext.w	a5,a5
    20000de2:	f7f7f793          	andi	a5,a5,-129
    20000de6:	c51c                	sw	a5,8(a0)
    20000de8:	00052223          	sw	zero,4(a0) # c200004 <_sp+0x41fdde4>
    20000dec:	04700793          	li	a5,71
    20000df0:	c11c                	sw	a5,0(a0)
    20000df2:	451c                	lw	a5,8(a0)
    20000df4:	2781                	sext.w	a5,a5
    20000df6:	0807e793          	ori	a5,a5,128
    20000dfa:	c51c                	sw	a5,8(a0)
    20000dfc:	8082                	ret

0000000020000dfe <HAL_I2C_disable>:
    20000dfe:	451c                	lw	a5,8(a0)
    20000e00:	2781                	sext.w	a5,a5
    20000e02:	f7f7f793          	andi	a5,a5,-129
    20000e06:	c51c                	sw	a5,8(a0)
    20000e08:	8082                	ret

0000000020000e0a <HAL_I2C_enable>:
    20000e0a:	451c                	lw	a5,8(a0)
    20000e0c:	2781                	sext.w	a5,a5
    20000e0e:	0807e793          	ori	a5,a5,128
    20000e12:	c51c                	sw	a5,8(a0)
    20000e14:	8082                	ret

0000000020000e16 <HAL_I2C_getFlag>:
    20000e16:	4908                	lw	a0,16(a0)
    20000e18:	2501                	sext.w	a0,a0
    20000e1a:	8d6d                	and	a0,a0,a1
    20000e1c:	00a03533          	snez	a0,a0
    20000e20:	8082                	ret

0000000020000e22 <HAL_I2C_waitForFlag>:
    20000e22:	7179                	addi	sp,sp,-48
    20000e24:	9eb9                	addw	a3,a3,a4
    20000e26:	f022                	sd	s0,32(sp)
    20000e28:	02069413          	slli	s0,a3,0x20
    20000e2c:	ec26                	sd	s1,24(sp)
    20000e2e:	e84a                	sd	s2,16(sp)
    20000e30:	e44e                	sd	s3,8(sp)
    20000e32:	e052                	sd	s4,0(sp)
    20000e34:	f406                	sd	ra,40(sp)
    20000e36:	8a2a                	mv	s4,a0
    20000e38:	89ae                	mv	s3,a1
    20000e3a:	8932                	mv	s2,a2
    20000e3c:	84ba                	mv	s1,a4
    20000e3e:	9001                	srli	s0,s0,0x20
    20000e40:	010a2783          	lw	a5,16(s4)
    20000e44:	2781                	sext.w	a5,a5
    20000e46:	00f9f7b3          	and	a5,s3,a5
    20000e4a:	00f037b3          	snez	a5,a5
    20000e4e:	01279b63          	bne	a5,s2,20000e64 <HAL_I2C_waitForFlag+0x42>
    20000e52:	4501                	li	a0,0
    20000e54:	70a2                	ld	ra,40(sp)
    20000e56:	7402                	ld	s0,32(sp)
    20000e58:	64e2                	ld	s1,24(sp)
    20000e5a:	6942                	ld	s2,16(sp)
    20000e5c:	69a2                	ld	s3,8(sp)
    20000e5e:	6a02                	ld	s4,0(sp)
    20000e60:	6145                	addi	sp,sp,48
    20000e62:	8082                	ret
    20000e64:	dcf1                	beqz	s1,20000e40 <HAL_I2C_waitForFlag+0x1e>
    20000e66:	e59ff0ef          	jal	ra,20000cbe <HAL_CLINT_getTime>
    20000e6a:	fca47be3          	bgeu	s0,a0,20000e40 <HAL_I2C_waitForFlag+0x1e>
    20000e6e:	450d                	li	a0,3
    20000e70:	b7d5                	j	20000e54 <HAL_I2C_waitForFlag+0x32>

0000000020000e72 <HAL_I2C_waitForTransaction>:
    20000e72:	1101                	addi	sp,sp,-32
    20000e74:	86ae                	mv	a3,a1
    20000e76:	8732                	mv	a4,a2
    20000e78:	e432                	sd	a2,8(sp)
    20000e7a:	e02e                	sd	a1,0(sp)
    20000e7c:	4601                	li	a2,0
    20000e7e:	4589                	li	a1,2
    20000e80:	e822                	sd	s0,16(sp)
    20000e82:	ec06                	sd	ra,24(sp)
    20000e84:	842a                	mv	s0,a0
    20000e86:	f9dff0ef          	jal	ra,20000e22 <HAL_I2C_waitForFlag>
    20000e8a:	2501                	sext.w	a0,a0
    20000e8c:	6682                	ld	a3,0(sp)
    20000e8e:	6722                	ld	a4,8(sp)
    20000e90:	c909                	beqz	a0,20000ea2 <HAL_I2C_waitForTransaction+0x30>
    20000e92:	04000793          	li	a5,64
    20000e96:	c81c                	sw	a5,16(s0)
    20000e98:	450d                	li	a0,3
    20000e9a:	60e2                	ld	ra,24(sp)
    20000e9c:	6442                	ld	s0,16(sp)
    20000e9e:	6105                	addi	sp,sp,32
    20000ea0:	8082                	ret
    20000ea2:	4601                	li	a2,0
    20000ea4:	08000593          	li	a1,128
    20000ea8:	8522                	mv	a0,s0
    20000eaa:	f79ff0ef          	jal	ra,20000e22 <HAL_I2C_waitForFlag>
    20000eae:	2501                	sext.w	a0,a0
    20000eb0:	d56d                	beqz	a0,20000e9a <HAL_I2C_waitForTransaction+0x28>
    20000eb2:	04000793          	li	a5,64
    20000eb6:	c81c                	sw	a5,16(s0)
    20000eb8:	4505                	li	a0,1
    20000eba:	b7c5                	j	20000e9a <HAL_I2C_waitForTransaction+0x28>

0000000020000ebc <HAL_I2C_masterReceive>:
    20000ebc:	7139                	addi	sp,sp,-64
    20000ebe:	fc06                	sd	ra,56(sp)
    20000ec0:	f822                	sd	s0,48(sp)
    20000ec2:	f426                	sd	s1,40(sp)
    20000ec4:	f04a                	sd	s2,32(sp)
    20000ec6:	84ba                	mv	s1,a4
    20000ec8:	ec4e                	sd	s3,24(sp)
    20000eca:	e852                	sd	s4,16(sp)
    20000ecc:	e456                	sd	s5,8(sp)
    20000ece:	842a                	mv	s0,a0
    20000ed0:	89ae                	mv	s3,a1
    20000ed2:	8ab2                	mv	s5,a2
    20000ed4:	8a36                	mv	s4,a3
    20000ed6:	e05a                	sd	s6,0(sp)
    20000ed8:	de7ff0ef          	jal	ra,20000cbe <HAL_CLINT_getTime>
    20000edc:	0005091b          	sext.w	s2,a0
    20000ee0:	2481                	sext.w	s1,s1
    20000ee2:	8726                	mv	a4,s1
    20000ee4:	86ca                	mv	a3,s2
    20000ee6:	4601                	li	a2,0
    20000ee8:	04000593          	li	a1,64
    20000eec:	8522                	mv	a0,s0
    20000eee:	f35ff0ef          	jal	ra,20000e22 <HAL_I2C_waitForFlag>
    20000ef2:	2501                	sext.w	a0,a0
    20000ef4:	ed5d                	bnez	a0,20000fb2 <HAL_I2C_masterReceive+0xf6>
    20000ef6:	0986                	slli	s3,s3,0x1
    20000ef8:	0019e993          	ori	s3,s3,1
    20000efc:	01342623          	sw	s3,12(s0)
    20000f00:	09000793          	li	a5,144
    20000f04:	c81c                	sw	a5,16(s0)
    20000f06:	8626                	mv	a2,s1
    20000f08:	85ca                	mv	a1,s2
    20000f0a:	8522                	mv	a0,s0
    20000f0c:	f67ff0ef          	jal	ra,20000e72 <HAL_I2C_waitForTransaction>
    20000f10:	2501                	sext.w	a0,a0
    20000f12:	e535                	bnez	a0,20000f7e <HAL_I2C_masterReceive+0xc2>
    20000f14:	89d6                	mv	s3,s5
    20000f16:	3a7d                	addiw	s4,s4,-1
    20000f18:	02000b13          	li	s6,32
    20000f1c:	415987bb          	subw	a5,s3,s5
    20000f20:	17c2                	slli	a5,a5,0x30
    20000f22:	93c1                	srli	a5,a5,0x30
    20000f24:	0347cd63          	blt	a5,s4,20000f5e <HAL_I2C_masterReceive+0xa2>
    20000f28:	06800793          	li	a5,104
    20000f2c:	c81c                	sw	a5,16(s0)
    20000f2e:	8726                	mv	a4,s1
    20000f30:	86ca                	mv	a3,s2
    20000f32:	4601                	li	a2,0
    20000f34:	4589                	li	a1,2
    20000f36:	8522                	mv	a0,s0
    20000f38:	eebff0ef          	jal	ra,20000e22 <HAL_I2C_waitForFlag>
    20000f3c:	2501                	sext.w	a0,a0
    20000f3e:	e13d                	bnez	a0,20000fa4 <HAL_I2C_masterReceive+0xe8>
    20000f40:	445c                	lw	a5,12(s0)
    20000f42:	8726                	mv	a4,s1
    20000f44:	86ca                	mv	a3,s2
    20000f46:	00f98023          	sb	a5,0(s3)
    20000f4a:	4601                	li	a2,0
    20000f4c:	04000593          	li	a1,64
    20000f50:	8522                	mv	a0,s0
    20000f52:	ed1ff0ef          	jal	ra,20000e22 <HAL_I2C_waitForFlag>
    20000f56:	2501                	sext.w	a0,a0
    20000f58:	00a03533          	snez	a0,a0
    20000f5c:	a00d                	j	20000f7e <HAL_I2C_masterReceive+0xc2>
    20000f5e:	01642823          	sw	s6,16(s0)
    20000f62:	8726                	mv	a4,s1
    20000f64:	86ca                	mv	a3,s2
    20000f66:	4601                	li	a2,0
    20000f68:	08000593          	li	a1,128
    20000f6c:	8522                	mv	a0,s0
    20000f6e:	eb5ff0ef          	jal	ra,20000e22 <HAL_I2C_waitForFlag>
    20000f72:	2501                	sext.w	a0,a0
    20000f74:	cd19                	beqz	a0,20000f92 <HAL_I2C_masterReceive+0xd6>
    20000f76:	06800793          	li	a5,104
    20000f7a:	c81c                	sw	a5,16(s0)
    20000f7c:	4505                	li	a0,1
    20000f7e:	70e2                	ld	ra,56(sp)
    20000f80:	7442                	ld	s0,48(sp)
    20000f82:	74a2                	ld	s1,40(sp)
    20000f84:	7902                	ld	s2,32(sp)
    20000f86:	69e2                	ld	s3,24(sp)
    20000f88:	6a42                	ld	s4,16(sp)
    20000f8a:	6aa2                	ld	s5,8(sp)
    20000f8c:	6b02                	ld	s6,0(sp)
    20000f8e:	6121                	addi	sp,sp,64
    20000f90:	8082                	ret
    20000f92:	8726                	mv	a4,s1
    20000f94:	86ca                	mv	a3,s2
    20000f96:	4601                	li	a2,0
    20000f98:	4589                	li	a1,2
    20000f9a:	8522                	mv	a0,s0
    20000f9c:	e87ff0ef          	jal	ra,20000e22 <HAL_I2C_waitForFlag>
    20000fa0:	2501                	sext.w	a0,a0
    20000fa2:	c119                	beqz	a0,20000fa8 <HAL_I2C_masterReceive+0xec>
    20000fa4:	450d                	li	a0,3
    20000fa6:	bfe1                	j	20000f7e <HAL_I2C_masterReceive+0xc2>
    20000fa8:	445c                	lw	a5,12(s0)
    20000faa:	0985                	addi	s3,s3,1
    20000fac:	fef98fa3          	sb	a5,-1(s3)
    20000fb0:	b7b5                	j	20000f1c <HAL_I2C_masterReceive+0x60>
    20000fb2:	4509                	li	a0,2
    20000fb4:	b7e9                	j	20000f7e <HAL_I2C_masterReceive+0xc2>

0000000020000fb6 <HAL_I2C_masterTransmit>:
    20000fb6:	7139                	addi	sp,sp,-64
    20000fb8:	fc06                	sd	ra,56(sp)
    20000fba:	f822                	sd	s0,48(sp)
    20000fbc:	f426                	sd	s1,40(sp)
    20000fbe:	f04a                	sd	s2,32(sp)
    20000fc0:	84ba                	mv	s1,a4
    20000fc2:	ec4e                	sd	s3,24(sp)
    20000fc4:	e852                	sd	s4,16(sp)
    20000fc6:	e456                	sd	s5,8(sp)
    20000fc8:	842a                	mv	s0,a0
    20000fca:	8a2e                	mv	s4,a1
    20000fcc:	8ab2                	mv	s5,a2
    20000fce:	89b6                	mv	s3,a3
    20000fd0:	e05a                	sd	s6,0(sp)
    20000fd2:	cedff0ef          	jal	ra,20000cbe <HAL_CLINT_getTime>
    20000fd6:	0005091b          	sext.w	s2,a0
    20000fda:	2481                	sext.w	s1,s1
    20000fdc:	8726                	mv	a4,s1
    20000fde:	86ca                	mv	a3,s2
    20000fe0:	4601                	li	a2,0
    20000fe2:	04000593          	li	a1,64
    20000fe6:	8522                	mv	a0,s0
    20000fe8:	e3bff0ef          	jal	ra,20000e22 <HAL_I2C_waitForFlag>
    20000fec:	2501                	sext.w	a0,a0
    20000fee:	e941                	bnez	a0,2000107e <HAL_I2C_masterTransmit+0xc8>
    20000ff0:	001a1a1b          	slliw	s4,s4,0x1
    20000ff4:	01442623          	sw	s4,12(s0)
    20000ff8:	09000793          	li	a5,144
    20000ffc:	c81c                	sw	a5,16(s0)
    20000ffe:	8626                	mv	a2,s1
    20001000:	85ca                	mv	a1,s2
    20001002:	8522                	mv	a0,s0
    20001004:	e6fff0ef          	jal	ra,20000e72 <HAL_I2C_waitForTransaction>
    20001008:	2501                	sext.w	a0,a0
    2000100a:	e125                	bnez	a0,2000106a <HAL_I2C_masterTransmit+0xb4>
    2000100c:	4a01                	li	s4,0
    2000100e:	39fd                	addiw	s3,s3,-1
    20001010:	4b41                	li	s6,16
    20001012:	014a87b3          	add	a5,s5,s4
    20001016:	0007c703          	lbu	a4,0(a5) # c002000 <_sp+0x3fffde0>
    2000101a:	030a1693          	slli	a3,s4,0x30
    2000101e:	92c1                	srli	a3,a3,0x30
    20001020:	87ba                	mv	a5,a4
    20001022:	0336c963          	blt	a3,s3,20001054 <HAL_I2C_masterTransmit+0x9e>
    20001026:	c458                	sw	a4,12(s0)
    20001028:	05000793          	li	a5,80
    2000102c:	c81c                	sw	a5,16(s0)
    2000102e:	8626                	mv	a2,s1
    20001030:	85ca                	mv	a1,s2
    20001032:	8522                	mv	a0,s0
    20001034:	e3fff0ef          	jal	ra,20000e72 <HAL_I2C_waitForTransaction>
    20001038:	2501                	sext.w	a0,a0
    2000103a:	e905                	bnez	a0,2000106a <HAL_I2C_masterTransmit+0xb4>
    2000103c:	8726                	mv	a4,s1
    2000103e:	86ca                	mv	a3,s2
    20001040:	4601                	li	a2,0
    20001042:	04000593          	li	a1,64
    20001046:	8522                	mv	a0,s0
    20001048:	ddbff0ef          	jal	ra,20000e22 <HAL_I2C_waitForFlag>
    2000104c:	2501                	sext.w	a0,a0
    2000104e:	00a03533          	snez	a0,a0
    20001052:	a821                	j	2000106a <HAL_I2C_masterTransmit+0xb4>
    20001054:	c45c                	sw	a5,12(s0)
    20001056:	01642823          	sw	s6,16(s0)
    2000105a:	8626                	mv	a2,s1
    2000105c:	85ca                	mv	a1,s2
    2000105e:	8522                	mv	a0,s0
    20001060:	e13ff0ef          	jal	ra,20000e72 <HAL_I2C_waitForTransaction>
    20001064:	2501                	sext.w	a0,a0
    20001066:	0a05                	addi	s4,s4,1
    20001068:	d54d                	beqz	a0,20001012 <HAL_I2C_masterTransmit+0x5c>
    2000106a:	70e2                	ld	ra,56(sp)
    2000106c:	7442                	ld	s0,48(sp)
    2000106e:	74a2                	ld	s1,40(sp)
    20001070:	7902                	ld	s2,32(sp)
    20001072:	69e2                	ld	s3,24(sp)
    20001074:	6a42                	ld	s4,16(sp)
    20001076:	6aa2                	ld	s5,8(sp)
    20001078:	6b02                	ld	s6,0(sp)
    2000107a:	6121                	addi	sp,sp,64
    2000107c:	8082                	ret
    2000107e:	4509                	li	a0,2
    20001080:	b7ed                	j	2000106a <HAL_I2C_masterTransmit+0xb4>

0000000020001082 <HAL_I2C_readMemory>:
    20001082:	715d                	addi	sp,sp,-80
    20001084:	e486                	sd	ra,72(sp)
    20001086:	e0a2                	sd	s0,64(sp)
    20001088:	fc26                	sd	s1,56(sp)
    2000108a:	f84a                	sd	s2,48(sp)
    2000108c:	84be                	mv	s1,a5
    2000108e:	f44e                	sd	s3,40(sp)
    20001090:	f052                	sd	s4,32(sp)
    20001092:	ec56                	sd	s5,24(sp)
    20001094:	e45e                	sd	s7,8(sp)
    20001096:	842a                	mv	s0,a0
    20001098:	89ae                	mv	s3,a1
    2000109a:	8bb2                	mv	s7,a2
    2000109c:	8ab6                	mv	s5,a3
    2000109e:	8a3a                	mv	s4,a4
    200010a0:	e85a                	sd	s6,16(sp)
    200010a2:	c1dff0ef          	jal	ra,20000cbe <HAL_CLINT_getTime>
    200010a6:	0005091b          	sext.w	s2,a0
    200010aa:	2481                	sext.w	s1,s1
    200010ac:	8726                	mv	a4,s1
    200010ae:	86ca                	mv	a3,s2
    200010b0:	4601                	li	a2,0
    200010b2:	04000593          	li	a1,64
    200010b6:	8522                	mv	a0,s0
    200010b8:	d6bff0ef          	jal	ra,20000e22 <HAL_I2C_waitForFlag>
    200010bc:	2501                	sext.w	a0,a0
    200010be:	0e051b63          	bnez	a0,200011b4 <HAL_I2C_readMemory+0x132>
    200010c2:	0019999b          	slliw	s3,s3,0x1
    200010c6:	01342623          	sw	s3,12(s0)
    200010ca:	09000b13          	li	s6,144
    200010ce:	01642823          	sw	s6,16(s0)
    200010d2:	8626                	mv	a2,s1
    200010d4:	85ca                	mv	a1,s2
    200010d6:	8522                	mv	a0,s0
    200010d8:	d9bff0ef          	jal	ra,20000e72 <HAL_I2C_waitForTransaction>
    200010dc:	2501                	sext.w	a0,a0
    200010de:	e145                	bnez	a0,2000117e <HAL_I2C_readMemory+0xfc>
    200010e0:	000b861b          	sext.w	a2,s7
    200010e4:	c450                	sw	a2,12(s0)
    200010e6:	47c1                	li	a5,16
    200010e8:	c81c                	sw	a5,16(s0)
    200010ea:	8626                	mv	a2,s1
    200010ec:	85ca                	mv	a1,s2
    200010ee:	8522                	mv	a0,s0
    200010f0:	d83ff0ef          	jal	ra,20000e72 <HAL_I2C_waitForTransaction>
    200010f4:	2501                	sext.w	a0,a0
    200010f6:	e541                	bnez	a0,2000117e <HAL_I2C_readMemory+0xfc>
    200010f8:	0019e993          	ori	s3,s3,1
    200010fc:	2981                	sext.w	s3,s3
    200010fe:	01342623          	sw	s3,12(s0)
    20001102:	01642823          	sw	s6,16(s0)
    20001106:	8626                	mv	a2,s1
    20001108:	85ca                	mv	a1,s2
    2000110a:	8522                	mv	a0,s0
    2000110c:	d67ff0ef          	jal	ra,20000e72 <HAL_I2C_waitForTransaction>
    20001110:	2501                	sext.w	a0,a0
    20001112:	e535                	bnez	a0,2000117e <HAL_I2C_readMemory+0xfc>
    20001114:	89d6                	mv	s3,s5
    20001116:	3a7d                	addiw	s4,s4,-1
    20001118:	02000b13          	li	s6,32
    2000111c:	415987bb          	subw	a5,s3,s5
    20001120:	17c2                	slli	a5,a5,0x30
    20001122:	93c1                	srli	a5,a5,0x30
    20001124:	0347cd63          	blt	a5,s4,2000115e <HAL_I2C_readMemory+0xdc>
    20001128:	06800793          	li	a5,104
    2000112c:	c81c                	sw	a5,16(s0)
    2000112e:	8726                	mv	a4,s1
    20001130:	86ca                	mv	a3,s2
    20001132:	4601                	li	a2,0
    20001134:	4589                	li	a1,2
    20001136:	8522                	mv	a0,s0
    20001138:	cebff0ef          	jal	ra,20000e22 <HAL_I2C_waitForFlag>
    2000113c:	2501                	sext.w	a0,a0
    2000113e:	e525                	bnez	a0,200011a6 <HAL_I2C_readMemory+0x124>
    20001140:	445c                	lw	a5,12(s0)
    20001142:	8726                	mv	a4,s1
    20001144:	86ca                	mv	a3,s2
    20001146:	00f98023          	sb	a5,0(s3)
    2000114a:	4601                	li	a2,0
    2000114c:	04000593          	li	a1,64
    20001150:	8522                	mv	a0,s0
    20001152:	cd1ff0ef          	jal	ra,20000e22 <HAL_I2C_waitForFlag>
    20001156:	2501                	sext.w	a0,a0
    20001158:	00a03533          	snez	a0,a0
    2000115c:	a00d                	j	2000117e <HAL_I2C_readMemory+0xfc>
    2000115e:	01642823          	sw	s6,16(s0)
    20001162:	8726                	mv	a4,s1
    20001164:	86ca                	mv	a3,s2
    20001166:	4601                	li	a2,0
    20001168:	08000593          	li	a1,128
    2000116c:	8522                	mv	a0,s0
    2000116e:	cb5ff0ef          	jal	ra,20000e22 <HAL_I2C_waitForFlag>
    20001172:	2501                	sext.w	a0,a0
    20001174:	c105                	beqz	a0,20001194 <HAL_I2C_readMemory+0x112>
    20001176:	06800793          	li	a5,104
    2000117a:	c81c                	sw	a5,16(s0)
    2000117c:	4505                	li	a0,1
    2000117e:	60a6                	ld	ra,72(sp)
    20001180:	6406                	ld	s0,64(sp)
    20001182:	74e2                	ld	s1,56(sp)
    20001184:	7942                	ld	s2,48(sp)
    20001186:	79a2                	ld	s3,40(sp)
    20001188:	7a02                	ld	s4,32(sp)
    2000118a:	6ae2                	ld	s5,24(sp)
    2000118c:	6b42                	ld	s6,16(sp)
    2000118e:	6ba2                	ld	s7,8(sp)
    20001190:	6161                	addi	sp,sp,80
    20001192:	8082                	ret
    20001194:	8726                	mv	a4,s1
    20001196:	86ca                	mv	a3,s2
    20001198:	4601                	li	a2,0
    2000119a:	4589                	li	a1,2
    2000119c:	8522                	mv	a0,s0
    2000119e:	c85ff0ef          	jal	ra,20000e22 <HAL_I2C_waitForFlag>
    200011a2:	2501                	sext.w	a0,a0
    200011a4:	c119                	beqz	a0,200011aa <HAL_I2C_readMemory+0x128>
    200011a6:	450d                	li	a0,3
    200011a8:	bfd9                	j	2000117e <HAL_I2C_readMemory+0xfc>
    200011aa:	445c                	lw	a5,12(s0)
    200011ac:	0985                	addi	s3,s3,1
    200011ae:	fef98fa3          	sb	a5,-1(s3)
    200011b2:	b7ad                	j	2000111c <HAL_I2C_readMemory+0x9a>
    200011b4:	4509                	li	a0,2
    200011b6:	b7e1                	j	2000117e <HAL_I2C_readMemory+0xfc>

00000000200011b8 <HAL_I2C_writeMemory>:
    200011b8:	7139                	addi	sp,sp,-64
    200011ba:	fc06                	sd	ra,56(sp)
    200011bc:	f822                	sd	s0,48(sp)
    200011be:	f426                	sd	s1,40(sp)
    200011c0:	f04a                	sd	s2,32(sp)
    200011c2:	ec4e                	sd	s3,24(sp)
    200011c4:	893e                	mv	s2,a5
    200011c6:	e852                	sd	s4,16(sp)
    200011c8:	e456                	sd	s5,8(sp)
    200011ca:	e05a                	sd	s6,0(sp)
    200011cc:	842a                	mv	s0,a0
    200011ce:	8aae                	mv	s5,a1
    200011d0:	8a32                	mv	s4,a2
    200011d2:	8b36                	mv	s6,a3
    200011d4:	89ba                	mv	s3,a4
    200011d6:	ae9ff0ef          	jal	ra,20000cbe <HAL_CLINT_getTime>
    200011da:	0005049b          	sext.w	s1,a0
    200011de:	874a                	mv	a4,s2
    200011e0:	86a6                	mv	a3,s1
    200011e2:	4601                	li	a2,0
    200011e4:	04000593          	li	a1,64
    200011e8:	8522                	mv	a0,s0
    200011ea:	c39ff0ef          	jal	ra,20000e22 <HAL_I2C_waitForFlag>
    200011ee:	2501                	sext.w	a0,a0
    200011f0:	e555                	bnez	a0,2000129c <HAL_I2C_writeMemory+0xe4>
    200011f2:	001a9a9b          	slliw	s5,s5,0x1
    200011f6:	01542623          	sw	s5,12(s0)
    200011fa:	09000793          	li	a5,144
    200011fe:	c81c                	sw	a5,16(s0)
    20001200:	864a                	mv	a2,s2
    20001202:	85a6                	mv	a1,s1
    20001204:	8522                	mv	a0,s0
    20001206:	c6dff0ef          	jal	ra,20000e72 <HAL_I2C_waitForTransaction>
    2000120a:	2501                	sext.w	a0,a0
    2000120c:	ed35                	bnez	a0,20001288 <HAL_I2C_writeMemory+0xd0>
    2000120e:	2a01                	sext.w	s4,s4
    20001210:	47c1                	li	a5,16
    20001212:	01442623          	sw	s4,12(s0)
    20001216:	c81c                	sw	a5,16(s0)
    20001218:	864a                	mv	a2,s2
    2000121a:	85a6                	mv	a1,s1
    2000121c:	8522                	mv	a0,s0
    2000121e:	c55ff0ef          	jal	ra,20000e72 <HAL_I2C_waitForTransaction>
    20001222:	0005079b          	sext.w	a5,a0
    20001226:	4505                	li	a0,1
    20001228:	e3a5                	bnez	a5,20001288 <HAL_I2C_writeMemory+0xd0>
    2000122a:	4a01                	li	s4,0
    2000122c:	39fd                	addiw	s3,s3,-1
    2000122e:	4ac1                	li	s5,16
    20001230:	014b07b3          	add	a5,s6,s4
    20001234:	0007c703          	lbu	a4,0(a5)
    20001238:	030a1693          	slli	a3,s4,0x30
    2000123c:	92c1                	srli	a3,a3,0x30
    2000123e:	87ba                	mv	a5,a4
    20001240:	0336c963          	blt	a3,s3,20001272 <HAL_I2C_writeMemory+0xba>
    20001244:	c458                	sw	a4,12(s0)
    20001246:	05000793          	li	a5,80
    2000124a:	c81c                	sw	a5,16(s0)
    2000124c:	864a                	mv	a2,s2
    2000124e:	85a6                	mv	a1,s1
    20001250:	8522                	mv	a0,s0
    20001252:	c21ff0ef          	jal	ra,20000e72 <HAL_I2C_waitForTransaction>
    20001256:	2501                	sext.w	a0,a0
    20001258:	e905                	bnez	a0,20001288 <HAL_I2C_writeMemory+0xd0>
    2000125a:	874a                	mv	a4,s2
    2000125c:	86a6                	mv	a3,s1
    2000125e:	4601                	li	a2,0
    20001260:	04000593          	li	a1,64
    20001264:	8522                	mv	a0,s0
    20001266:	bbdff0ef          	jal	ra,20000e22 <HAL_I2C_waitForFlag>
    2000126a:	2501                	sext.w	a0,a0
    2000126c:	00a03533          	snez	a0,a0
    20001270:	a821                	j	20001288 <HAL_I2C_writeMemory+0xd0>
    20001272:	c45c                	sw	a5,12(s0)
    20001274:	01542823          	sw	s5,16(s0)
    20001278:	864a                	mv	a2,s2
    2000127a:	85a6                	mv	a1,s1
    2000127c:	8522                	mv	a0,s0
    2000127e:	bf5ff0ef          	jal	ra,20000e72 <HAL_I2C_waitForTransaction>
    20001282:	2501                	sext.w	a0,a0
    20001284:	0a05                	addi	s4,s4,1
    20001286:	d54d                	beqz	a0,20001230 <HAL_I2C_writeMemory+0x78>
    20001288:	70e2                	ld	ra,56(sp)
    2000128a:	7442                	ld	s0,48(sp)
    2000128c:	74a2                	ld	s1,40(sp)
    2000128e:	7902                	ld	s2,32(sp)
    20001290:	69e2                	ld	s3,24(sp)
    20001292:	6a42                	ld	s4,16(sp)
    20001294:	6aa2                	ld	s5,8(sp)
    20001296:	6b02                	ld	s6,0(sp)
    20001298:	6121                	addi	sp,sp,64
    2000129a:	8082                	ret
    2000129c:	4509                	li	a0,2
    2000129e:	b7ed                	j	20001288 <HAL_I2C_writeMemory+0xd0>

00000000200012a0 <HAL_RCC_InitSystemClock>:
    200012a0:	8082                	ret

00000000200012a2 <HAL_UART_init>:
    200012a2:	455c                	lw	a5,12(a0)
    200012a4:	41d8                	lw	a4,4(a1)
    200012a6:	2781                	sext.w	a5,a5
    200012a8:	9bf9                	andi	a5,a5,-2
    200012aa:	c55c                	sw	a5,12(a0)
    200012ac:	451c                	lw	a5,8(a0)
    200012ae:	2781                	sext.w	a5,a5
    200012b0:	9bf9                	andi	a5,a5,-2
    200012b2:	c51c                	sw	a5,8(a0)
    200012b4:	00177793          	andi	a5,a4,1
    200012b8:	c791                	beqz	a5,200012c4 <HAL_UART_init+0x22>
    200012ba:	455c                	lw	a5,12(a0)
    200012bc:	2781                	sext.w	a5,a5
    200012be:	0017e793          	ori	a5,a5,1
    200012c2:	c55c                	sw	a5,12(a0)
    200012c4:	8b09                	andi	a4,a4,2
    200012c6:	c711                	beqz	a4,200012d2 <HAL_UART_init+0x30>
    200012c8:	451c                	lw	a5,8(a0)
    200012ca:	2781                	sext.w	a5,a5
    200012cc:	0017e793          	ori	a5,a5,1
    200012d0:	c51c                	sw	a5,8(a0)
    200012d2:	451c                	lw	a5,8(a0)
    200012d4:	2781                	sext.w	a5,a5
    200012d6:	9bf5                	andi	a5,a5,-3
    200012d8:	c51c                	sw	a5,8(a0)
    200012da:	459c                	lw	a5,8(a1)
    200012dc:	4518                	lw	a4,8(a0)
    200012de:	fff7c793          	not	a5,a5
    200012e2:	8ff9                	and	a5,a5,a4
    200012e4:	2781                	sext.w	a5,a5
    200012e6:	4198                	lw	a4,0(a1)
    200012e8:	c51c                	sw	a5,8(a0)
    200012ea:	02faf7b7          	lui	a5,0x2faf
    200012ee:	0807879b          	addiw	a5,a5,128
    200012f2:	02e7d7bb          	divuw	a5,a5,a4
    200012f6:	37fd                	addiw	a5,a5,-1
    200012f8:	cd1c                	sw	a5,24(a0)
    200012fa:	8082                	ret

00000000200012fc <HAL_UART_getRXFIFODepth>:
    200012fc:	4548                	lw	a0,12(a0)
    200012fe:	0105551b          	srliw	a0,a0,0x10
    20001302:	891d                	andi	a0,a0,7
    20001304:	8082                	ret

0000000020001306 <HAL_UART_getTXFIFODepth>:
    20001306:	4508                	lw	a0,8(a0)
    20001308:	0105551b          	srliw	a0,a0,0x10
    2000130c:	891d                	andi	a0,a0,7
    2000130e:	8082                	ret

0000000020001310 <HAL_UART_disableRXInterrupt>:
    20001310:	491c                	lw	a5,16(a0)
    20001312:	2781                	sext.w	a5,a5
    20001314:	9bf5                	andi	a5,a5,-3
    20001316:	c91c                	sw	a5,16(a0)
    20001318:	8082                	ret

000000002000131a <HAL_UART_enableRXInterrupt>:
    2000131a:	4558                	lw	a4,12(a0)
    2000131c:	fff907b7          	lui	a5,0xfff90
    20001320:	17fd                	addi	a5,a5,-1
    20001322:	2701                	sext.w	a4,a4
    20001324:	8f7d                	and	a4,a4,a5
    20001326:	c558                	sw	a4,12(a0)
    20001328:	455c                	lw	a5,12(a0)
    2000132a:	0105959b          	slliw	a1,a1,0x10
    2000132e:	8fcd                	or	a5,a5,a1
    20001330:	2781                	sext.w	a5,a5
    20001332:	c55c                	sw	a5,12(a0)
    20001334:	491c                	lw	a5,16(a0)
    20001336:	2781                	sext.w	a5,a5
    20001338:	0027e793          	ori	a5,a5,2
    2000133c:	c91c                	sw	a5,16(a0)
    2000133e:	8082                	ret

0000000020001340 <HAL_UART_disableTXInterrupt>:
    20001340:	491c                	lw	a5,16(a0)
    20001342:	2781                	sext.w	a5,a5
    20001344:	9bf9                	andi	a5,a5,-2
    20001346:	c91c                	sw	a5,16(a0)
    20001348:	8082                	ret

000000002000134a <HAL_UART_enableTXInterrupt>:
    2000134a:	4518                	lw	a4,8(a0)
    2000134c:	fff907b7          	lui	a5,0xfff90
    20001350:	17fd                	addi	a5,a5,-1
    20001352:	2701                	sext.w	a4,a4
    20001354:	8f7d                	and	a4,a4,a5
    20001356:	c518                	sw	a4,8(a0)
    20001358:	451c                	lw	a5,8(a0)
    2000135a:	0105959b          	slliw	a1,a1,0x10
    2000135e:	8fcd                	or	a5,a5,a1
    20001360:	2781                	sext.w	a5,a5
    20001362:	c51c                	sw	a5,8(a0)
    20001364:	491c                	lw	a5,16(a0)
    20001366:	2781                	sext.w	a5,a5
    20001368:	0017e793          	ori	a5,a5,1
    2000136c:	c91c                	sw	a5,16(a0)
    2000136e:	8082                	ret

0000000020001370 <HAL_UART_receive>:
    20001370:	e219                	bnez	a2,20001376 <HAL_UART_receive+0x6>
    20001372:	4501                	li	a0,0
    20001374:	8082                	ret
    20001376:	415c                	lw	a5,4(a0)
    20001378:	2781                	sext.w	a5,a5
    2000137a:	fe07cee3          	bltz	a5,20001376 <HAL_UART_receive+0x6>
    2000137e:	415c                	lw	a5,4(a0)
    20001380:	367d                	addiw	a2,a2,-1
    20001382:	1642                	slli	a2,a2,0x30
    20001384:	00f58023          	sb	a5,0(a1)
    20001388:	9241                	srli	a2,a2,0x30
    2000138a:	0585                	addi	a1,a1,1
    2000138c:	b7d5                	j	20001370 <HAL_UART_receive>

000000002000138e <HAL_UART_transmit>:
    2000138e:	e219                	bnez	a2,20001394 <HAL_UART_transmit+0x6>
    20001390:	4501                	li	a0,0
    20001392:	8082                	ret
    20001394:	411c                	lw	a5,0(a0)
    20001396:	2781                	sext.w	a5,a5
    20001398:	fe07cee3          	bltz	a5,20001394 <HAL_UART_transmit+0x6>
    2000139c:	0005c783          	lbu	a5,0(a1)
    200013a0:	367d                	addiw	a2,a2,-1
    200013a2:	1642                	slli	a2,a2,0x30
    200013a4:	c11c                	sw	a5,0(a0)
    200013a6:	0585                	addi	a1,a1,1
    200013a8:	9241                	srli	a2,a2,0x30
    200013aa:	b7d5                	j	2000138e <HAL_UART_transmit>

00000000200013ac <_siprintf_r>:
    200013ac:	7111                	addi	sp,sp,-256
    200013ae:	f5be                	sd	a5,232(sp)
    200013b0:	800007b7          	lui	a5,0x80000
    200013b4:	fff7c793          	not	a5,a5
    200013b8:	d83e                	sw	a5,48(sp)
    200013ba:	ce3e                	sw	a5,28(sp)
    200013bc:	77c1                	lui	a5,0xffff0
    200013be:	edb6                	sd	a3,216(sp)
    200013c0:	e82e                	sd	a1,16(sp)
    200013c2:	f42e                	sd	a1,40(sp)
    200013c4:	20878793          	addi	a5,a5,520 # ffffffffffff0208 <_data_source_start+0xffffffffdffebf30>
    200013c8:	09b4                	addi	a3,sp,216
    200013ca:	080c                	addi	a1,sp,16
    200013cc:	e586                	sd	ra,200(sp)
    200013ce:	d03e                	sw	a5,32(sp)
    200013d0:	f1ba                	sd	a4,224(sp)
    200013d2:	f9c2                	sd	a6,240(sp)
    200013d4:	fdc6                	sd	a7,248(sp)
    200013d6:	e436                	sd	a3,8(sp)
    200013d8:	2b2000ef          	jal	ra,2000168a <_svfiprintf_r>
    200013dc:	67c2                	ld	a5,16(sp)
    200013de:	00078023          	sb	zero,0(a5)
    200013e2:	60ae                	ld	ra,200(sp)
    200013e4:	6111                	addi	sp,sp,256
    200013e6:	8082                	ret

00000000200013e8 <siprintf>:
    200013e8:	7111                	addi	sp,sp,-256
    200013ea:	f5be                	sd	a5,232(sp)
    200013ec:	800007b7          	lui	a5,0x80000
    200013f0:	fff7c793          	not	a5,a5
    200013f4:	d83e                	sw	a5,48(sp)
    200013f6:	ce3e                	sw	a5,28(sp)
    200013f8:	77c1                	lui	a5,0xffff0
    200013fa:	e9b2                	sd	a2,208(sp)
    200013fc:	edb6                	sd	a3,216(sp)
    200013fe:	e82a                	sd	a0,16(sp)
    20001400:	f42a                	sd	a0,40(sp)
    20001402:	20878793          	addi	a5,a5,520 # ffffffffffff0208 <_data_source_start+0xffffffffdffebf30>
    20001406:	0994                	addi	a3,sp,208
    20001408:	862e                	mv	a2,a1
    2000140a:	e7fff517          	auipc	a0,0xe7fff
    2000140e:	ca653503          	ld	a0,-858(a0) # 80000b0 <_impure_ptr>
    20001412:	080c                	addi	a1,sp,16
    20001414:	e586                	sd	ra,200(sp)
    20001416:	d03e                	sw	a5,32(sp)
    20001418:	f1ba                	sd	a4,224(sp)
    2000141a:	f9c2                	sd	a6,240(sp)
    2000141c:	fdc6                	sd	a7,248(sp)
    2000141e:	e436                	sd	a3,8(sp)
    20001420:	26a000ef          	jal	ra,2000168a <_svfiprintf_r>
    20001424:	67c2                	ld	a5,16(sp)
    20001426:	00078023          	sb	zero,0(a5)
    2000142a:	60ae                	ld	ra,200(sp)
    2000142c:	6111                	addi	sp,sp,256
    2000142e:	8082                	ret

0000000020001430 <strcpy>:
    20001430:	87aa                	mv	a5,a0
    20001432:	0005c703          	lbu	a4,0(a1)
    20001436:	0785                	addi	a5,a5,1
    20001438:	0585                	addi	a1,a1,1
    2000143a:	fee78fa3          	sb	a4,-1(a5)
    2000143e:	fb75                	bnez	a4,20001432 <strcpy+0x2>
    20001440:	8082                	ret

0000000020001442 <strlen>:
    20001442:	87aa                	mv	a5,a0
    20001444:	0007c703          	lbu	a4,0(a5)
    20001448:	0785                	addi	a5,a5,1
    2000144a:	ff6d                	bnez	a4,20001444 <strlen+0x2>
    2000144c:	40a78533          	sub	a0,a5,a0
    20001450:	157d                	addi	a0,a0,-1
    20001452:	8082                	ret

0000000020001454 <__ssputs_r>:
    20001454:	7139                	addi	sp,sp,-64
    20001456:	f04a                	sd	s2,32(sp)
    20001458:	00c5a903          	lw	s2,12(a1)
    2000145c:	f822                	sd	s0,48(sp)
    2000145e:	ec4e                	sd	s3,24(sp)
    20001460:	e852                	sd	s4,16(sp)
    20001462:	fc06                	sd	ra,56(sp)
    20001464:	f426                	sd	s1,40(sp)
    20001466:	e456                	sd	s5,8(sp)
    20001468:	e05a                	sd	s6,0(sp)
    2000146a:	842e                	mv	s0,a1
    2000146c:	8a32                	mv	s4,a2
    2000146e:	89b6                	mv	s3,a3
    20001470:	0b26e263          	bltu	a3,s2,20001514 <__ssputs_r+0xc0>
    20001474:	0105d783          	lhu	a5,16(a1)
    20001478:	4807f713          	andi	a4,a5,1152
    2000147c:	cb51                	beqz	a4,20001510 <__ssputs_r+0xbc>
    2000147e:	5014                	lw	a3,32(s0)
    20001480:	448d                	li	s1,3
    20001482:	6d8c                	ld	a1,24(a1)
    20001484:	02d484bb          	mulw	s1,s1,a3
    20001488:	4689                	li	a3,2
    2000148a:	6018                	ld	a4,0(s0)
    2000148c:	8b2a                	mv	s6,a0
    2000148e:	8f0d                	sub	a4,a4,a1
    20001490:	00070a9b          	sext.w	s5,a4
    20001494:	02d4c4bb          	divw	s1,s1,a3
    20001498:	00198693          	addi	a3,s3,1
    2000149c:	96d6                	add	a3,a3,s5
    2000149e:	00d4f563          	bgeu	s1,a3,200014a8 <__ssputs_r+0x54>
    200014a2:	0019849b          	addiw	s1,s3,1
    200014a6:	9cb9                	addw	s1,s1,a4
    200014a8:	4007f793          	andi	a5,a5,1024
    200014ac:	c7c1                	beqz	a5,20001534 <__ssputs_r+0xe0>
    200014ae:	85a6                	mv	a1,s1
    200014b0:	855a                	mv	a0,s6
    200014b2:	1f7000ef          	jal	ra,20001ea8 <_malloc_r>
    200014b6:	892a                	mv	s2,a0
    200014b8:	e50d                	bnez	a0,200014e2 <__ssputs_r+0x8e>
    200014ba:	47b1                	li	a5,12
    200014bc:	00fb2023          	sw	a5,0(s6)
    200014c0:	01045783          	lhu	a5,16(s0)
    200014c4:	557d                	li	a0,-1
    200014c6:	0407e793          	ori	a5,a5,64
    200014ca:	00f41823          	sh	a5,16(s0)
    200014ce:	70e2                	ld	ra,56(sp)
    200014d0:	7442                	ld	s0,48(sp)
    200014d2:	74a2                	ld	s1,40(sp)
    200014d4:	7902                	ld	s2,32(sp)
    200014d6:	69e2                	ld	s3,24(sp)
    200014d8:	6a42                	ld	s4,16(sp)
    200014da:	6aa2                	ld	s5,8(sp)
    200014dc:	6b02                	ld	s6,0(sp)
    200014de:	6121                	addi	sp,sp,64
    200014e0:	8082                	ret
    200014e2:	6c0c                	ld	a1,24(s0)
    200014e4:	8656                	mv	a2,s5
    200014e6:	7fc000ef          	jal	ra,20001ce2 <memcpy>
    200014ea:	01045783          	lhu	a5,16(s0)
    200014ee:	b7f7f793          	andi	a5,a5,-1153
    200014f2:	0807e793          	ori	a5,a5,128
    200014f6:	00f41823          	sh	a5,16(s0)
    200014fa:	01243c23          	sd	s2,24(s0)
    200014fe:	d004                	sw	s1,32(s0)
    20001500:	9956                	add	s2,s2,s5
    20001502:	415484bb          	subw	s1,s1,s5
    20001506:	01243023          	sd	s2,0(s0)
    2000150a:	c444                	sw	s1,12(s0)
    2000150c:	0009891b          	sext.w	s2,s3
    20001510:	0129f463          	bgeu	s3,s2,20001518 <__ssputs_r+0xc4>
    20001514:	0009891b          	sext.w	s2,s3
    20001518:	6008                	ld	a0,0(s0)
    2000151a:	864a                	mv	a2,s2
    2000151c:	85d2                	mv	a1,s4
    2000151e:	0a1000ef          	jal	ra,20001dbe <memmove>
    20001522:	445c                	lw	a5,12(s0)
    20001524:	4501                	li	a0,0
    20001526:	412787bb          	subw	a5,a5,s2
    2000152a:	c45c                	sw	a5,12(s0)
    2000152c:	601c                	ld	a5,0(s0)
    2000152e:	97ca                	add	a5,a5,s2
    20001530:	e01c                	sd	a5,0(s0)
    20001532:	bf71                	j	200014ce <__ssputs_r+0x7a>
    20001534:	8626                	mv	a2,s1
    20001536:	855a                	mv	a0,s6
    20001538:	257000ef          	jal	ra,20001f8e <_realloc_r>
    2000153c:	892a                	mv	s2,a0
    2000153e:	fd55                	bnez	a0,200014fa <__ssputs_r+0xa6>
    20001540:	6c0c                	ld	a1,24(s0)
    20001542:	855a                	mv	a0,s6
    20001544:	0c5000ef          	jal	ra,20001e08 <_free_r>
    20001548:	bf8d                	j	200014ba <__ssputs_r+0x66>

000000002000154a <__ssprint_r>:
    2000154a:	6a1c                	ld	a5,16(a2)
    2000154c:	711d                	addi	sp,sp,-96
    2000154e:	e06a                	sd	s10,0(sp)
    20001550:	ec86                	sd	ra,88(sp)
    20001552:	e8a2                	sd	s0,80(sp)
    20001554:	e4a6                	sd	s1,72(sp)
    20001556:	e0ca                	sd	s2,64(sp)
    20001558:	fc4e                	sd	s3,56(sp)
    2000155a:	f852                	sd	s4,48(sp)
    2000155c:	f456                	sd	s5,40(sp)
    2000155e:	f05a                	sd	s6,32(sp)
    20001560:	ec5e                	sd	s7,24(sp)
    20001562:	e862                	sd	s8,16(sp)
    20001564:	e466                	sd	s9,8(sp)
    20001566:	8d32                	mv	s10,a2
    20001568:	c7ed                	beqz	a5,20001652 <__ssprint_r+0x108>
    2000156a:	00063a83          	ld	s5,0(a2)
    2000156e:	89aa                	mv	s3,a0
    20001570:	842e                	mv	s0,a1
    20001572:	4a01                	li	s4,0
    20001574:	4c81                	li	s9,0
    20001576:	4b0d                	li	s6,3
    20001578:	4b89                	li	s7,2
    2000157a:	060c8563          	beqz	s9,200015e4 <__ssprint_r+0x9a>
    2000157e:	00c42903          	lw	s2,12(s0)
    20001582:	092cee63          	bltu	s9,s2,2000161e <__ssprint_r+0xd4>
    20001586:	01045703          	lhu	a4,16(s0)
    2000158a:	48077793          	andi	a5,a4,1152
    2000158e:	cbc1                	beqz	a5,2000161e <__ssprint_r+0xd4>
    20001590:	5004                	lw	s1,32(s0)
    20001592:	6c0c                	ld	a1,24(s0)
    20001594:	601c                	ld	a5,0(s0)
    20001596:	029b04bb          	mulw	s1,s6,s1
    2000159a:	8f8d                	sub	a5,a5,a1
    2000159c:	00078c1b          	sext.w	s8,a5
    200015a0:	001c0693          	addi	a3,s8,1
    200015a4:	96e6                	add	a3,a3,s9
    200015a6:	0374c4bb          	divw	s1,s1,s7
    200015aa:	00d4f563          	bgeu	s1,a3,200015b4 <__ssprint_r+0x6a>
    200015ae:	2785                	addiw	a5,a5,1
    200015b0:	019784bb          	addw	s1,a5,s9
    200015b4:	40077713          	andi	a4,a4,1024
    200015b8:	cf55                	beqz	a4,20001674 <__ssprint_r+0x12a>
    200015ba:	85a6                	mv	a1,s1
    200015bc:	854e                	mv	a0,s3
    200015be:	0eb000ef          	jal	ra,20001ea8 <_malloc_r>
    200015c2:	892a                	mv	s2,a0
    200015c4:	e515                	bnez	a0,200015f0 <__ssprint_r+0xa6>
    200015c6:	47b1                	li	a5,12
    200015c8:	00f9a023          	sw	a5,0(s3)
    200015cc:	01045783          	lhu	a5,16(s0)
    200015d0:	557d                	li	a0,-1
    200015d2:	0407e793          	ori	a5,a5,64
    200015d6:	00f41823          	sh	a5,16(s0)
    200015da:	000d3823          	sd	zero,16(s10)
    200015de:	000d2423          	sw	zero,8(s10)
    200015e2:	a89d                	j	20001658 <__ssprint_r+0x10e>
    200015e4:	000aba03          	ld	s4,0(s5)
    200015e8:	008abc83          	ld	s9,8(s5)
    200015ec:	0ac1                	addi	s5,s5,16
    200015ee:	b771                	j	2000157a <__ssprint_r+0x30>
    200015f0:	6c0c                	ld	a1,24(s0)
    200015f2:	8662                	mv	a2,s8
    200015f4:	6ee000ef          	jal	ra,20001ce2 <memcpy>
    200015f8:	01045783          	lhu	a5,16(s0)
    200015fc:	b7f7f793          	andi	a5,a5,-1153
    20001600:	0807e793          	ori	a5,a5,128
    20001604:	00f41823          	sh	a5,16(s0)
    20001608:	01243c23          	sd	s2,24(s0)
    2000160c:	d004                	sw	s1,32(s0)
    2000160e:	9962                	add	s2,s2,s8
    20001610:	418484bb          	subw	s1,s1,s8
    20001614:	01243023          	sd	s2,0(s0)
    20001618:	c444                	sw	s1,12(s0)
    2000161a:	000c891b          	sext.w	s2,s9
    2000161e:	000c849b          	sext.w	s1,s9
    20001622:	012cf363          	bgeu	s9,s2,20001628 <__ssprint_r+0xde>
    20001626:	8926                	mv	s2,s1
    20001628:	6008                	ld	a0,0(s0)
    2000162a:	85d2                	mv	a1,s4
    2000162c:	864a                	mv	a2,s2
    2000162e:	790000ef          	jal	ra,20001dbe <memmove>
    20001632:	445c                	lw	a5,12(s0)
    20001634:	9a26                	add	s4,s4,s1
    20001636:	409c8cb3          	sub	s9,s9,s1
    2000163a:	412787bb          	subw	a5,a5,s2
    2000163e:	c45c                	sw	a5,12(s0)
    20001640:	601c                	ld	a5,0(s0)
    20001642:	97ca                	add	a5,a5,s2
    20001644:	e01c                	sd	a5,0(s0)
    20001646:	010d3783          	ld	a5,16(s10)
    2000164a:	8f85                	sub	a5,a5,s1
    2000164c:	00fd3823          	sd	a5,16(s10)
    20001650:	f78d                	bnez	a5,2000157a <__ssprint_r+0x30>
    20001652:	000d2423          	sw	zero,8(s10)
    20001656:	4501                	li	a0,0
    20001658:	60e6                	ld	ra,88(sp)
    2000165a:	6446                	ld	s0,80(sp)
    2000165c:	64a6                	ld	s1,72(sp)
    2000165e:	6906                	ld	s2,64(sp)
    20001660:	79e2                	ld	s3,56(sp)
    20001662:	7a42                	ld	s4,48(sp)
    20001664:	7aa2                	ld	s5,40(sp)
    20001666:	7b02                	ld	s6,32(sp)
    20001668:	6be2                	ld	s7,24(sp)
    2000166a:	6c42                	ld	s8,16(sp)
    2000166c:	6ca2                	ld	s9,8(sp)
    2000166e:	6d02                	ld	s10,0(sp)
    20001670:	6125                	addi	sp,sp,96
    20001672:	8082                	ret
    20001674:	8626                	mv	a2,s1
    20001676:	854e                	mv	a0,s3
    20001678:	117000ef          	jal	ra,20001f8e <_realloc_r>
    2000167c:	892a                	mv	s2,a0
    2000167e:	f549                	bnez	a0,20001608 <__ssprint_r+0xbe>
    20001680:	6c0c                	ld	a1,24(s0)
    20001682:	854e                	mv	a0,s3
    20001684:	784000ef          	jal	ra,20001e08 <_free_r>
    20001688:	bf3d                	j	200015c6 <__ssprint_r+0x7c>

000000002000168a <_svfiprintf_r>:
    2000168a:	0105d783          	lhu	a5,16(a1)
    2000168e:	7155                	addi	sp,sp,-208
    20001690:	e1a2                	sd	s0,192(sp)
    20001692:	fd26                	sd	s1,184(sp)
    20001694:	f94a                	sd	s2,176(sp)
    20001696:	f54e                	sd	s3,168(sp)
    20001698:	f152                	sd	s4,160(sp)
    2000169a:	e586                	sd	ra,200(sp)
    2000169c:	ed56                	sd	s5,152(sp)
    2000169e:	e95a                	sd	s6,144(sp)
    200016a0:	e55e                	sd	s7,136(sp)
    200016a2:	e162                	sd	s8,128(sp)
    200016a4:	fce6                	sd	s9,120(sp)
    200016a6:	f8ea                	sd	s10,112(sp)
    200016a8:	0807f793          	andi	a5,a5,128
    200016ac:	8a2a                	mv	s4,a0
    200016ae:	892e                	mv	s2,a1
    200016b0:	84b2                	mv	s1,a2
    200016b2:	8436                	mv	s0,a3
    200016b4:	4981                	li	s3,0
    200016b6:	c3b1                	beqz	a5,200016fa <_svfiprintf_r+0x70>
    200016b8:	6d9c                	ld	a5,24(a1)
    200016ba:	e3a1                	bnez	a5,200016fa <_svfiprintf_r+0x70>
    200016bc:	04000593          	li	a1,64
    200016c0:	7e8000ef          	jal	ra,20001ea8 <_malloc_r>
    200016c4:	00a93023          	sd	a0,0(s2)
    200016c8:	00a93c23          	sd	a0,24(s2)
    200016cc:	e11d                	bnez	a0,200016f2 <_svfiprintf_r+0x68>
    200016ce:	47b1                	li	a5,12
    200016d0:	00fa2023          	sw	a5,0(s4)
    200016d4:	557d                	li	a0,-1
    200016d6:	60ae                	ld	ra,200(sp)
    200016d8:	640e                	ld	s0,192(sp)
    200016da:	74ea                	ld	s1,184(sp)
    200016dc:	794a                	ld	s2,176(sp)
    200016de:	79aa                	ld	s3,168(sp)
    200016e0:	7a0a                	ld	s4,160(sp)
    200016e2:	6aea                	ld	s5,152(sp)
    200016e4:	6b4a                	ld	s6,144(sp)
    200016e6:	6baa                	ld	s7,136(sp)
    200016e8:	6c0a                	ld	s8,128(sp)
    200016ea:	7ce6                	ld	s9,120(sp)
    200016ec:	7d46                	ld	s10,112(sp)
    200016ee:	6169                	addi	sp,sp,208
    200016f0:	8082                	ret
    200016f2:	04000793          	li	a5,64
    200016f6:	02f92023          	sw	a5,32(s2)
    200016fa:	02000793          	li	a5,32
    200016fe:	02f104a3          	sb	a5,41(sp)
    20001702:	5afd                	li	s5,-1
    20001704:	03000793          	li	a5,48
    20001708:	d202                	sw	zero,36(sp)
    2000170a:	02f10523          	sb	a5,42(sp)
    2000170e:	e422                	sd	s0,8(sp)
    20001710:	02500b93          	li	s7,37
    20001714:	020a9c13          	slli	s8,s5,0x20
    20001718:	00003b17          	auipc	s6,0x3
    2000171c:	ac8b0b13          	addi	s6,s6,-1336 # 200041e0 <L1_w_p_arr+0xc40>
    20001720:	4c85                	li	s9,1
    20001722:	8426                	mv	s0,s1
    20001724:	00044783          	lbu	a5,0(s0)
    20001728:	c399                	beqz	a5,2000172e <_svfiprintf_r+0xa4>
    2000172a:	09779c63          	bne	a5,s7,200017c2 <_svfiprintf_r+0x138>
    2000172e:	40940d3b          	subw	s10,s0,s1
    20001732:	000d0e63          	beqz	s10,2000174e <_svfiprintf_r+0xc4>
    20001736:	86ea                	mv	a3,s10
    20001738:	8626                	mv	a2,s1
    2000173a:	85ca                	mv	a1,s2
    2000173c:	8552                	mv	a0,s4
    2000173e:	d17ff0ef          	jal	ra,20001454 <__ssputs_r>
    20001742:	1b550563          	beq	a0,s5,200018ec <_svfiprintf_r+0x262>
    20001746:	5792                	lw	a5,36(sp)
    20001748:	01a787bb          	addw	a5,a5,s10
    2000174c:	d23e                	sw	a5,36(sp)
    2000174e:	00044783          	lbu	a5,0(s0)
    20001752:	18078d63          	beqz	a5,200018ec <_svfiprintf_r+0x262>
    20001756:	00140493          	addi	s1,s0,1
    2000175a:	e862                	sd	s8,16(sp)
    2000175c:	ec02                	sd	zero,24(sp)
    2000175e:	040109a3          	sb	zero,83(sp)
    20001762:	d482                	sw	zero,104(sp)
    20001764:	0004c583          	lbu	a1,0(s1)
    20001768:	4615                	li	a2,5
    2000176a:	855a                	mv	a0,s6
    2000176c:	55c000ef          	jal	ra,20001cc8 <memchr>
    20001770:	00148413          	addi	s0,s1,1
    20001774:	e929                	bnez	a0,200017c6 <_svfiprintf_r+0x13c>
    20001776:	47c2                	lw	a5,16(sp)
    20001778:	0107f713          	andi	a4,a5,16
    2000177c:	c709                	beqz	a4,20001786 <_svfiprintf_r+0xfc>
    2000177e:	02000713          	li	a4,32
    20001782:	04e109a3          	sb	a4,83(sp)
    20001786:	0087f713          	andi	a4,a5,8
    2000178a:	c709                	beqz	a4,20001794 <_svfiprintf_r+0x10a>
    2000178c:	02b00713          	li	a4,43
    20001790:	04e109a3          	sb	a4,83(sp)
    20001794:	0004c683          	lbu	a3,0(s1)
    20001798:	02a00713          	li	a4,42
    2000179c:	02e68e63          	beq	a3,a4,200017d8 <_svfiprintf_r+0x14e>
    200017a0:	47f2                	lw	a5,28(sp)
    200017a2:	8426                	mv	s0,s1
    200017a4:	4681                	li	a3,0
    200017a6:	4625                	li	a2,9
    200017a8:	4829                	li	a6,10
    200017aa:	00044703          	lbu	a4,0(s0)
    200017ae:	00140513          	addi	a0,s0,1
    200017b2:	fd07059b          	addiw	a1,a4,-48
    200017b6:	872e                	mv	a4,a1
    200017b8:	06b67563          	bgeu	a2,a1,20001822 <_svfiprintf_r+0x198>
    200017bc:	c695                	beqz	a3,200017e8 <_svfiprintf_r+0x15e>
    200017be:	ce3e                	sw	a5,28(sp)
    200017c0:	a025                	j	200017e8 <_svfiprintf_r+0x15e>
    200017c2:	0405                	addi	s0,s0,1
    200017c4:	b785                	j	20001724 <_svfiprintf_r+0x9a>
    200017c6:	47c2                	lw	a5,16(sp)
    200017c8:	41650533          	sub	a0,a0,s6
    200017cc:	00ac953b          	sllw	a0,s9,a0
    200017d0:	8d5d                	or	a0,a0,a5
    200017d2:	c82a                	sw	a0,16(sp)
    200017d4:	84a2                	mv	s1,s0
    200017d6:	b779                	j	20001764 <_svfiprintf_r+0xda>
    200017d8:	6722                	ld	a4,8(sp)
    200017da:	00870693          	addi	a3,a4,8
    200017de:	4318                	lw	a4,0(a4)
    200017e0:	e436                	sd	a3,8(sp)
    200017e2:	02074963          	bltz	a4,20001814 <_svfiprintf_r+0x18a>
    200017e6:	ce3a                	sw	a4,28(sp)
    200017e8:	00044703          	lbu	a4,0(s0)
    200017ec:	02e00793          	li	a5,46
    200017f0:	04f71063          	bne	a4,a5,20001830 <_svfiprintf_r+0x1a6>
    200017f4:	00144703          	lbu	a4,1(s0)
    200017f8:	02a00793          	li	a5,42
    200017fc:	0af71063          	bne	a4,a5,2000189c <_svfiprintf_r+0x212>
    20001800:	67a2                	ld	a5,8(sp)
    20001802:	0409                	addi	s0,s0,2
    20001804:	00878713          	addi	a4,a5,8
    20001808:	439c                	lw	a5,0(a5)
    2000180a:	e43a                	sd	a4,8(sp)
    2000180c:	0207c163          	bltz	a5,2000182e <_svfiprintf_r+0x1a4>
    20001810:	ca3e                	sw	a5,20(sp)
    20001812:	a839                	j	20001830 <_svfiprintf_r+0x1a6>
    20001814:	40e0073b          	negw	a4,a4
    20001818:	0027e793          	ori	a5,a5,2
    2000181c:	ce3a                	sw	a4,28(sp)
    2000181e:	c83e                	sw	a5,16(sp)
    20001820:	b7e1                	j	200017e8 <_svfiprintf_r+0x15e>
    20001822:	02f807bb          	mulw	a5,a6,a5
    20001826:	842a                	mv	s0,a0
    20001828:	4685                	li	a3,1
    2000182a:	9fb9                	addw	a5,a5,a4
    2000182c:	bfbd                	j	200017aa <_svfiprintf_r+0x120>
    2000182e:	ca56                	sw	s5,20(sp)
    20001830:	00044583          	lbu	a1,0(s0)
    20001834:	460d                	li	a2,3
    20001836:	00003517          	auipc	a0,0x3
    2000183a:	9b250513          	addi	a0,a0,-1614 # 200041e8 <L1_w_p_arr+0xc48>
    2000183e:	48a000ef          	jal	ra,20001cc8 <memchr>
    20001842:	cd11                	beqz	a0,2000185e <_svfiprintf_r+0x1d4>
    20001844:	00003797          	auipc	a5,0x3
    20001848:	9a478793          	addi	a5,a5,-1628 # 200041e8 <L1_w_p_arr+0xc48>
    2000184c:	8d1d                	sub	a0,a0,a5
    2000184e:	04000793          	li	a5,64
    20001852:	00a7953b          	sllw	a0,a5,a0
    20001856:	47c2                	lw	a5,16(sp)
    20001858:	0405                	addi	s0,s0,1
    2000185a:	8d5d                	or	a0,a0,a5
    2000185c:	c82a                	sw	a0,16(sp)
    2000185e:	00044583          	lbu	a1,0(s0)
    20001862:	4619                	li	a2,6
    20001864:	00003517          	auipc	a0,0x3
    20001868:	98c50513          	addi	a0,a0,-1652 # 200041f0 <L1_w_p_arr+0xc50>
    2000186c:	00140493          	addi	s1,s0,1
    20001870:	02b10423          	sb	a1,40(sp)
    20001874:	454000ef          	jal	ra,20001cc8 <memchr>
    20001878:	c159                	beqz	a0,200018fe <_svfiprintf_r+0x274>
    2000187a:	00000793          	li	a5,0
    2000187e:	eba1                	bnez	a5,200018ce <_svfiprintf_r+0x244>
    20001880:	4742                	lw	a4,16(sp)
    20001882:	67a2                	ld	a5,8(sp)
    20001884:	10077713          	andi	a4,a4,256
    20001888:	c329                	beqz	a4,200018ca <_svfiprintf_r+0x240>
    2000188a:	07bd                	addi	a5,a5,15
    2000188c:	9bc1                	andi	a5,a5,-16
    2000188e:	07c1                	addi	a5,a5,16
    20001890:	e43e                	sd	a5,8(sp)
    20001892:	5792                	lw	a5,36(sp)
    20001894:	013787bb          	addw	a5,a5,s3
    20001898:	d23e                	sw	a5,36(sp)
    2000189a:	b561                	j	20001722 <_svfiprintf_r+0x98>
    2000189c:	0405                	addi	s0,s0,1
    2000189e:	ca02                	sw	zero,20(sp)
    200018a0:	4681                	li	a3,0
    200018a2:	4781                	li	a5,0
    200018a4:	4625                	li	a2,9
    200018a6:	4829                	li	a6,10
    200018a8:	00044703          	lbu	a4,0(s0)
    200018ac:	00140513          	addi	a0,s0,1
    200018b0:	fd07059b          	addiw	a1,a4,-48
    200018b4:	872e                	mv	a4,a1
    200018b6:	00b67463          	bgeu	a2,a1,200018be <_svfiprintf_r+0x234>
    200018ba:	fab9                	bnez	a3,20001810 <_svfiprintf_r+0x186>
    200018bc:	bf95                	j	20001830 <_svfiprintf_r+0x1a6>
    200018be:	02f807bb          	mulw	a5,a6,a5
    200018c2:	842a                	mv	s0,a0
    200018c4:	4685                	li	a3,1
    200018c6:	9fb9                	addw	a5,a5,a4
    200018c8:	b7c5                	j	200018a8 <_svfiprintf_r+0x21e>
    200018ca:	07a1                	addi	a5,a5,8
    200018cc:	b7d1                	j	20001890 <_svfiprintf_r+0x206>
    200018ce:	0038                	addi	a4,sp,8
    200018d0:	00000697          	auipc	a3,0x0
    200018d4:	b8468693          	addi	a3,a3,-1148 # 20001454 <__ssputs_r>
    200018d8:	864a                	mv	a2,s2
    200018da:	080c                	addi	a1,sp,16
    200018dc:	8552                	mv	a0,s4
    200018de:	00000097          	auipc	ra,0x0
    200018e2:	000000e7          	jalr	zero # 0 <__stack_size-0x400>
    200018e6:	89aa                	mv	s3,a0
    200018e8:	fb5515e3          	bne	a0,s5,20001892 <_svfiprintf_r+0x208>
    200018ec:	01095783          	lhu	a5,16(s2)
    200018f0:	557d                	li	a0,-1
    200018f2:	0407f793          	andi	a5,a5,64
    200018f6:	de0790e3          	bnez	a5,200016d6 <_svfiprintf_r+0x4c>
    200018fa:	5512                	lw	a0,36(sp)
    200018fc:	bbe9                	j	200016d6 <_svfiprintf_r+0x4c>
    200018fe:	0038                	addi	a4,sp,8
    20001900:	00000697          	auipc	a3,0x0
    20001904:	b5468693          	addi	a3,a3,-1196 # 20001454 <__ssputs_r>
    20001908:	864a                	mv	a2,s2
    2000190a:	080c                	addi	a1,sp,16
    2000190c:	8552                	mv	a0,s4
    2000190e:	12a000ef          	jal	ra,20001a38 <_printf_i>
    20001912:	bfd1                	j	200018e6 <_svfiprintf_r+0x25c>

0000000020001914 <_printf_common>:
    20001914:	715d                	addi	sp,sp,-80
    20001916:	499c                	lw	a5,16(a1)
    20001918:	f052                	sd	s4,32(sp)
    2000191a:	8a3a                	mv	s4,a4
    2000191c:	4598                	lw	a4,8(a1)
    2000191e:	e0a2                	sd	s0,64(sp)
    20001920:	f84a                	sd	s2,48(sp)
    20001922:	f44e                	sd	s3,40(sp)
    20001924:	ec56                	sd	s5,24(sp)
    20001926:	8932                	mv	s2,a2
    20001928:	8ab6                	mv	s5,a3
    2000192a:	e486                	sd	ra,72(sp)
    2000192c:	fc26                	sd	s1,56(sp)
    2000192e:	e85a                	sd	s6,16(sp)
    20001930:	e45e                	sd	s7,8(sp)
    20001932:	0007861b          	sext.w	a2,a5
    20001936:	0007069b          	sext.w	a3,a4
    2000193a:	89aa                	mv	s3,a0
    2000193c:	842e                	mv	s0,a1
    2000193e:	00d65363          	bge	a2,a3,20001944 <_printf_common+0x30>
    20001942:	87ba                	mv	a5,a4
    20001944:	00f92023          	sw	a5,0(s2)
    20001948:	04344703          	lbu	a4,67(s0)
    2000194c:	c701                	beqz	a4,20001954 <_printf_common+0x40>
    2000194e:	2785                	addiw	a5,a5,1
    20001950:	00f92023          	sw	a5,0(s2)
    20001954:	401c                	lw	a5,0(s0)
    20001956:	0207f793          	andi	a5,a5,32
    2000195a:	c791                	beqz	a5,20001966 <_printf_common+0x52>
    2000195c:	00092783          	lw	a5,0(s2)
    20001960:	2789                	addiw	a5,a5,2
    20001962:	00f92023          	sw	a5,0(s2)
    20001966:	4004                	lw	s1,0(s0)
    20001968:	8899                	andi	s1,s1,6
    2000196a:	e891                	bnez	s1,2000197e <_printf_common+0x6a>
    2000196c:	01940b13          	addi	s6,s0,25
    20001970:	5bfd                	li	s7,-1
    20001972:	445c                	lw	a5,12(s0)
    20001974:	00092703          	lw	a4,0(s2)
    20001978:	9f99                	subw	a5,a5,a4
    2000197a:	06f4c063          	blt	s1,a5,200019da <_printf_common+0xc6>
    2000197e:	04344783          	lbu	a5,67(s0)
    20001982:	00f03633          	snez	a2,a5
    20001986:	00f036b3          	snez	a3,a5
    2000198a:	401c                	lw	a5,0(s0)
    2000198c:	0207f793          	andi	a5,a5,32
    20001990:	ebb5                	bnez	a5,20001a04 <_printf_common+0xf0>
    20001992:	04340613          	addi	a2,s0,67
    20001996:	85d6                	mv	a1,s5
    20001998:	854e                	mv	a0,s3
    2000199a:	9a02                	jalr	s4
    2000199c:	57fd                	li	a5,-1
    2000199e:	04f50563          	beq	a0,a5,200019e8 <_printf_common+0xd4>
    200019a2:	401c                	lw	a5,0(s0)
    200019a4:	4611                	li	a2,4
    200019a6:	4454                	lw	a3,12(s0)
    200019a8:	8b99                	andi	a5,a5,6
    200019aa:	00092703          	lw	a4,0(s2)
    200019ae:	4481                	li	s1,0
    200019b0:	00c79863          	bne	a5,a2,200019c0 <_printf_common+0xac>
    200019b4:	40e687bb          	subw	a5,a3,a4
    200019b8:	84be                	mv	s1,a5
    200019ba:	0007d363          	bgez	a5,200019c0 <_printf_common+0xac>
    200019be:	4481                	li	s1,0
    200019c0:	441c                	lw	a5,8(s0)
    200019c2:	4818                	lw	a4,16(s0)
    200019c4:	00f75463          	bge	a4,a5,200019cc <_printf_common+0xb8>
    200019c8:	9f99                	subw	a5,a5,a4
    200019ca:	9cbd                	addw	s1,s1,a5
    200019cc:	4901                	li	s2,0
    200019ce:	0469                	addi	s0,s0,26
    200019d0:	5b7d                	li	s6,-1
    200019d2:	05249a63          	bne	s1,s2,20001a26 <_printf_common+0x112>
    200019d6:	4501                	li	a0,0
    200019d8:	a809                	j	200019ea <_printf_common+0xd6>
    200019da:	4685                	li	a3,1
    200019dc:	865a                	mv	a2,s6
    200019de:	85d6                	mv	a1,s5
    200019e0:	854e                	mv	a0,s3
    200019e2:	9a02                	jalr	s4
    200019e4:	01751e63          	bne	a0,s7,20001a00 <_printf_common+0xec>
    200019e8:	557d                	li	a0,-1
    200019ea:	60a6                	ld	ra,72(sp)
    200019ec:	6406                	ld	s0,64(sp)
    200019ee:	74e2                	ld	s1,56(sp)
    200019f0:	7942                	ld	s2,48(sp)
    200019f2:	79a2                	ld	s3,40(sp)
    200019f4:	7a02                	ld	s4,32(sp)
    200019f6:	6ae2                	ld	s5,24(sp)
    200019f8:	6b42                	ld	s6,16(sp)
    200019fa:	6ba2                	ld	s7,8(sp)
    200019fc:	6161                	addi	sp,sp,80
    200019fe:	8082                	ret
    20001a00:	2485                	addiw	s1,s1,1
    20001a02:	bf85                	j	20001972 <_printf_common+0x5e>
    20001a04:	00d407b3          	add	a5,s0,a3
    20001a08:	03000693          	li	a3,48
    20001a0c:	04d781a3          	sb	a3,67(a5)
    20001a10:	0016071b          	addiw	a4,a2,1
    20001a14:	0026069b          	addiw	a3,a2,2
    20001a18:	04544603          	lbu	a2,69(s0)
    20001a1c:	00e407b3          	add	a5,s0,a4
    20001a20:	04c781a3          	sb	a2,67(a5)
    20001a24:	b7bd                	j	20001992 <_printf_common+0x7e>
    20001a26:	4685                	li	a3,1
    20001a28:	8622                	mv	a2,s0
    20001a2a:	85d6                	mv	a1,s5
    20001a2c:	854e                	mv	a0,s3
    20001a2e:	9a02                	jalr	s4
    20001a30:	fb650ce3          	beq	a0,s6,200019e8 <_printf_common+0xd4>
    20001a34:	2905                	addiw	s2,s2,1
    20001a36:	bf71                	j	200019d2 <_printf_common+0xbe>

0000000020001a38 <_printf_i>:
    20001a38:	715d                	addi	sp,sp,-80
    20001a3a:	e0a2                	sd	s0,64(sp)
    20001a3c:	f84a                	sd	s2,48(sp)
    20001a3e:	f44e                	sd	s3,40(sp)
    20001a40:	f052                	sd	s4,32(sp)
    20001a42:	e486                	sd	ra,72(sp)
    20001a44:	fc26                	sd	s1,56(sp)
    20001a46:	ec56                	sd	s5,24(sp)
    20001a48:	e85a                	sd	s6,16(sp)
    20001a4a:	0185c803          	lbu	a6,24(a1)
    20001a4e:	07800793          	li	a5,120
    20001a52:	892a                	mv	s2,a0
    20001a54:	842e                	mv	s0,a1
    20001a56:	89b2                	mv	s3,a2
    20001a58:	8a36                	mv	s4,a3
    20001a5a:	0107ee63          	bltu	a5,a6,20001a76 <_printf_i+0x3e>
    20001a5e:	06200793          	li	a5,98
    20001a62:	04358693          	addi	a3,a1,67
    20001a66:	0107ed63          	bltu	a5,a6,20001a80 <_printf_i+0x48>
    20001a6a:	1c080763          	beqz	a6,20001c38 <_printf_i+0x200>
    20001a6e:	05800793          	li	a5,88
    20001a72:	12f80f63          	beq	a6,a5,20001bb0 <_printf_i+0x178>
    20001a76:	04240493          	addi	s1,s0,66
    20001a7a:	05040123          	sb	a6,66(s0)
    20001a7e:	a815                	j	20001ab2 <_printf_i+0x7a>
    20001a80:	f9d8079b          	addiw	a5,a6,-99
    20001a84:	0ff7f793          	zext.b	a5,a5
    20001a88:	4655                	li	a2,21
    20001a8a:	fef666e3          	bltu	a2,a5,20001a76 <_printf_i+0x3e>
    20001a8e:	00002617          	auipc	a2,0x2
    20001a92:	79660613          	addi	a2,a2,1942 # 20004224 <L1_w_p_arr+0xc84>
    20001a96:	078a                	slli	a5,a5,0x2
    20001a98:	97b2                	add	a5,a5,a2
    20001a9a:	439c                	lw	a5,0(a5)
    20001a9c:	97b2                	add	a5,a5,a2
    20001a9e:	8782                	jr	a5
    20001aa0:	631c                	ld	a5,0(a4)
    20001aa2:	04258493          	addi	s1,a1,66
    20001aa6:	00878693          	addi	a3,a5,8
    20001aaa:	439c                	lw	a5,0(a5)
    20001aac:	e314                	sd	a3,0(a4)
    20001aae:	04f58123          	sb	a5,66(a1)
    20001ab2:	4785                	li	a5,1
    20001ab4:	aa75                	j	20001c70 <_printf_i+0x238>
    20001ab6:	4190                	lw	a2,0(a1)
    20001ab8:	631c                	ld	a5,0(a4)
    20001aba:	08067513          	andi	a0,a2,128
    20001abe:	00878593          	addi	a1,a5,8
    20001ac2:	c10d                	beqz	a0,20001ae4 <_printf_i+0xac>
    20001ac4:	639c                	ld	a5,0(a5)
    20001ac6:	e30c                	sd	a1,0(a4)
    20001ac8:	0007d863          	bgez	a5,20001ad8 <_printf_i+0xa0>
    20001acc:	02d00713          	li	a4,45
    20001ad0:	40f007b3          	neg	a5,a5
    20001ad4:	04e401a3          	sb	a4,67(s0)
    20001ad8:	00002617          	auipc	a2,0x2
    20001adc:	72060613          	addi	a2,a2,1824 # 200041f8 <L1_w_p_arr+0xc58>
    20001ae0:	4829                	li	a6,10
    20001ae2:	a835                	j	20001b1e <_printf_i+0xe6>
    20001ae4:	04067613          	andi	a2,a2,64
    20001ae8:	e30c                	sd	a1,0(a4)
    20001aea:	c601                	beqz	a2,20001af2 <_printf_i+0xba>
    20001aec:	00079783          	lh	a5,0(a5)
    20001af0:	bfe1                	j	20001ac8 <_printf_i+0x90>
    20001af2:	439c                	lw	a5,0(a5)
    20001af4:	bfd1                	j	20001ac8 <_printf_i+0x90>
    20001af6:	4190                	lw	a2,0(a1)
    20001af8:	631c                	ld	a5,0(a4)
    20001afa:	08067513          	andi	a0,a2,128
    20001afe:	00878593          	addi	a1,a5,8
    20001b02:	cd41                	beqz	a0,20001b9a <_printf_i+0x162>
    20001b04:	639c                	ld	a5,0(a5)
    20001b06:	e30c                	sd	a1,0(a4)
    20001b08:	06f00713          	li	a4,111
    20001b0c:	00002617          	auipc	a2,0x2
    20001b10:	6ec60613          	addi	a2,a2,1772 # 200041f8 <L1_w_p_arr+0xc58>
    20001b14:	10e80463          	beq	a6,a4,20001c1c <_printf_i+0x1e4>
    20001b18:	4829                	li	a6,10
    20001b1a:	040401a3          	sb	zero,67(s0)
    20001b1e:	4058                	lw	a4,4(s0)
    20001b20:	c418                	sw	a4,8(s0)
    20001b22:	00074563          	bltz	a4,20001b2c <_printf_i+0xf4>
    20001b26:	400c                	lw	a1,0(s0)
    20001b28:	99ed                	andi	a1,a1,-5
    20001b2a:	c00c                	sw	a1,0(s0)
    20001b2c:	e399                	bnez	a5,20001b32 <_printf_i+0xfa>
    20001b2e:	84b6                	mv	s1,a3
    20001b30:	cf19                	beqz	a4,20001b4e <_printf_i+0x116>
    20001b32:	84b6                	mv	s1,a3
    20001b34:	0307f733          	remu	a4,a5,a6
    20001b38:	14fd                	addi	s1,s1,-1
    20001b3a:	9732                	add	a4,a4,a2
    20001b3c:	00074703          	lbu	a4,0(a4)
    20001b40:	00e48023          	sb	a4,0(s1)
    20001b44:	873e                	mv	a4,a5
    20001b46:	0307d7b3          	divu	a5,a5,a6
    20001b4a:	ff0775e3          	bgeu	a4,a6,20001b34 <_printf_i+0xfc>
    20001b4e:	47a1                	li	a5,8
    20001b50:	00f81e63          	bne	a6,a5,20001b6c <_printf_i+0x134>
    20001b54:	401c                	lw	a5,0(s0)
    20001b56:	8b85                	andi	a5,a5,1
    20001b58:	cb91                	beqz	a5,20001b6c <_printf_i+0x134>
    20001b5a:	4058                	lw	a4,4(s0)
    20001b5c:	481c                	lw	a5,16(s0)
    20001b5e:	00e7c763          	blt	a5,a4,20001b6c <_printf_i+0x134>
    20001b62:	03000793          	li	a5,48
    20001b66:	fef48fa3          	sb	a5,-1(s1)
    20001b6a:	14fd                	addi	s1,s1,-1
    20001b6c:	8e85                	sub	a3,a3,s1
    20001b6e:	c814                	sw	a3,16(s0)
    20001b70:	8752                	mv	a4,s4
    20001b72:	86ce                	mv	a3,s3
    20001b74:	0070                	addi	a2,sp,12
    20001b76:	85a2                	mv	a1,s0
    20001b78:	854a                	mv	a0,s2
    20001b7a:	d9bff0ef          	jal	ra,20001914 <_printf_common>
    20001b7e:	5afd                	li	s5,-1
    20001b80:	0f551c63          	bne	a0,s5,20001c78 <_printf_i+0x240>
    20001b84:	557d                	li	a0,-1
    20001b86:	60a6                	ld	ra,72(sp)
    20001b88:	6406                	ld	s0,64(sp)
    20001b8a:	74e2                	ld	s1,56(sp)
    20001b8c:	7942                	ld	s2,48(sp)
    20001b8e:	79a2                	ld	s3,40(sp)
    20001b90:	7a02                	ld	s4,32(sp)
    20001b92:	6ae2                	ld	s5,24(sp)
    20001b94:	6b42                	ld	s6,16(sp)
    20001b96:	6161                	addi	sp,sp,80
    20001b98:	8082                	ret
    20001b9a:	439c                	lw	a5,0(a5)
    20001b9c:	04067613          	andi	a2,a2,64
    20001ba0:	e30c                	sd	a1,0(a4)
    20001ba2:	c601                	beqz	a2,20001baa <_printf_i+0x172>
    20001ba4:	17c2                	slli	a5,a5,0x30
    20001ba6:	93c1                	srli	a5,a5,0x30
    20001ba8:	b785                	j	20001b08 <_printf_i+0xd0>
    20001baa:	1782                	slli	a5,a5,0x20
    20001bac:	9381                	srli	a5,a5,0x20
    20001bae:	bfa9                	j	20001b08 <_printf_i+0xd0>
    20001bb0:	050582a3          	sb	a6,69(a1)
    20001bb4:	00002617          	auipc	a2,0x2
    20001bb8:	64460613          	addi	a2,a2,1604 # 200041f8 <L1_w_p_arr+0xc58>
    20001bbc:	400c                	lw	a1,0(s0)
    20001bbe:	631c                	ld	a5,0(a4)
    20001bc0:	0805f813          	andi	a6,a1,128
    20001bc4:	00878513          	addi	a0,a5,8
    20001bc8:	02080e63          	beqz	a6,20001c04 <_printf_i+0x1cc>
    20001bcc:	639c                	ld	a5,0(a5)
    20001bce:	e308                	sd	a0,0(a4)
    20001bd0:	0015f713          	andi	a4,a1,1
    20001bd4:	c701                	beqz	a4,20001bdc <_printf_i+0x1a4>
    20001bd6:	0205e593          	ori	a1,a1,32
    20001bda:	c00c                	sw	a1,0(s0)
    20001bdc:	4841                	li	a6,16
    20001bde:	ff95                	bnez	a5,20001b1a <_printf_i+0xe2>
    20001be0:	4018                	lw	a4,0(s0)
    20001be2:	fdf77713          	andi	a4,a4,-33
    20001be6:	c018                	sw	a4,0(s0)
    20001be8:	bf0d                	j	20001b1a <_printf_i+0xe2>
    20001bea:	419c                	lw	a5,0(a1)
    20001bec:	0a07e793          	ori	a5,a5,160
    20001bf0:	c19c                	sw	a5,0(a1)
    20001bf2:	07800793          	li	a5,120
    20001bf6:	04f402a3          	sb	a5,69(s0)
    20001bfa:	00002617          	auipc	a2,0x2
    20001bfe:	61660613          	addi	a2,a2,1558 # 20004210 <L1_w_p_arr+0xc70>
    20001c02:	bf6d                	j	20001bbc <_printf_i+0x184>
    20001c04:	439c                	lw	a5,0(a5)
    20001c06:	0405f813          	andi	a6,a1,64
    20001c0a:	e308                	sd	a0,0(a4)
    20001c0c:	00080563          	beqz	a6,20001c16 <_printf_i+0x1de>
    20001c10:	17c2                	slli	a5,a5,0x30
    20001c12:	93c1                	srli	a5,a5,0x30
    20001c14:	bf75                	j	20001bd0 <_printf_i+0x198>
    20001c16:	1782                	slli	a5,a5,0x20
    20001c18:	9381                	srli	a5,a5,0x20
    20001c1a:	bf5d                	j	20001bd0 <_printf_i+0x198>
    20001c1c:	4821                	li	a6,8
    20001c1e:	bdf5                	j	20001b1a <_printf_i+0xe2>
    20001c20:	4190                	lw	a2,0(a1)
    20001c22:	631c                	ld	a5,0(a4)
    20001c24:	49cc                	lw	a1,20(a1)
    20001c26:	08067813          	andi	a6,a2,128
    20001c2a:	00878513          	addi	a0,a5,8
    20001c2e:	00080963          	beqz	a6,20001c40 <_printf_i+0x208>
    20001c32:	e308                	sd	a0,0(a4)
    20001c34:	639c                	ld	a5,0(a5)
    20001c36:	e38c                	sd	a1,0(a5)
    20001c38:	00042823          	sw	zero,16(s0)
    20001c3c:	84b6                	mv	s1,a3
    20001c3e:	bf0d                	j	20001b70 <_printf_i+0x138>
    20001c40:	e308                	sd	a0,0(a4)
    20001c42:	04067613          	andi	a2,a2,64
    20001c46:	639c                	ld	a5,0(a5)
    20001c48:	c601                	beqz	a2,20001c50 <_printf_i+0x218>
    20001c4a:	00b79023          	sh	a1,0(a5)
    20001c4e:	b7ed                	j	20001c38 <_printf_i+0x200>
    20001c50:	c38c                	sw	a1,0(a5)
    20001c52:	b7dd                	j	20001c38 <_printf_i+0x200>
    20001c54:	631c                	ld	a5,0(a4)
    20001c56:	41d0                	lw	a2,4(a1)
    20001c58:	4581                	li	a1,0
    20001c5a:	00878693          	addi	a3,a5,8
    20001c5e:	e314                	sd	a3,0(a4)
    20001c60:	6384                	ld	s1,0(a5)
    20001c62:	8526                	mv	a0,s1
    20001c64:	064000ef          	jal	ra,20001cc8 <memchr>
    20001c68:	c119                	beqz	a0,20001c6e <_printf_i+0x236>
    20001c6a:	8d05                	sub	a0,a0,s1
    20001c6c:	c048                	sw	a0,4(s0)
    20001c6e:	405c                	lw	a5,4(s0)
    20001c70:	c81c                	sw	a5,16(s0)
    20001c72:	040401a3          	sb	zero,67(s0)
    20001c76:	bded                	j	20001b70 <_printf_i+0x138>
    20001c78:	4814                	lw	a3,16(s0)
    20001c7a:	8626                	mv	a2,s1
    20001c7c:	85ce                	mv	a1,s3
    20001c7e:	854a                	mv	a0,s2
    20001c80:	9a02                	jalr	s4
    20001c82:	f15501e3          	beq	a0,s5,20001b84 <_printf_i+0x14c>
    20001c86:	401c                	lw	a5,0(s0)
    20001c88:	8b89                	andi	a5,a5,2
    20001c8a:	eb95                	bnez	a5,20001cbe <_printf_i+0x286>
    20001c8c:	47b2                	lw	a5,12(sp)
    20001c8e:	4448                	lw	a0,12(s0)
    20001c90:	0007871b          	sext.w	a4,a5
    20001c94:	0005069b          	sext.w	a3,a0
    20001c98:	00e6d363          	bge	a3,a4,20001c9e <_printf_i+0x266>
    20001c9c:	853e                	mv	a0,a5
    20001c9e:	2501                	sext.w	a0,a0
    20001ca0:	b5dd                	j	20001b86 <_printf_i+0x14e>
    20001ca2:	4685                	li	a3,1
    20001ca4:	8656                	mv	a2,s5
    20001ca6:	85ce                	mv	a1,s3
    20001ca8:	854a                	mv	a0,s2
    20001caa:	9a02                	jalr	s4
    20001cac:	ed650ce3          	beq	a0,s6,20001b84 <_printf_i+0x14c>
    20001cb0:	2485                	addiw	s1,s1,1
    20001cb2:	445c                	lw	a5,12(s0)
    20001cb4:	4732                	lw	a4,12(sp)
    20001cb6:	9f99                	subw	a5,a5,a4
    20001cb8:	fef4c5e3          	blt	s1,a5,20001ca2 <_printf_i+0x26a>
    20001cbc:	bfc1                	j	20001c8c <_printf_i+0x254>
    20001cbe:	4481                	li	s1,0
    20001cc0:	01940a93          	addi	s5,s0,25
    20001cc4:	5b7d                	li	s6,-1
    20001cc6:	b7f5                	j	20001cb2 <_printf_i+0x27a>

0000000020001cc8 <memchr>:
    20001cc8:	0ff5f593          	zext.b	a1,a1
    20001ccc:	962a                	add	a2,a2,a0
    20001cce:	00c51463          	bne	a0,a2,20001cd6 <memchr+0xe>
    20001cd2:	4501                	li	a0,0
    20001cd4:	8082                	ret
    20001cd6:	00054783          	lbu	a5,0(a0)
    20001cda:	feb78de3          	beq	a5,a1,20001cd4 <memchr+0xc>
    20001cde:	0505                	addi	a0,a0,1
    20001ce0:	b7fd                	j	20001cce <memchr+0x6>

0000000020001ce2 <memcpy>:
    20001ce2:	00a5c7b3          	xor	a5,a1,a0
    20001ce6:	8b9d                	andi	a5,a5,7
    20001ce8:	00c506b3          	add	a3,a0,a2
    20001cec:	e781                	bnez	a5,20001cf4 <memcpy+0x12>
    20001cee:	479d                	li	a5,7
    20001cf0:	00c7ee63          	bltu	a5,a2,20001d0c <memcpy+0x2a>
    20001cf4:	87aa                	mv	a5,a0
    20001cf6:	06d57163          	bgeu	a0,a3,20001d58 <memcpy+0x76>
    20001cfa:	0005c703          	lbu	a4,0(a1)
    20001cfe:	0785                	addi	a5,a5,1
    20001d00:	0585                	addi	a1,a1,1
    20001d02:	fee78fa3          	sb	a4,-1(a5)
    20001d06:	fed7eae3          	bltu	a5,a3,20001cfa <memcpy+0x18>
    20001d0a:	8082                	ret
    20001d0c:	00757713          	andi	a4,a0,7
    20001d10:	87aa                	mv	a5,a0
    20001d12:	cb11                	beqz	a4,20001d26 <memcpy+0x44>
    20001d14:	0005c703          	lbu	a4,0(a1)
    20001d18:	0785                	addi	a5,a5,1
    20001d1a:	0585                	addi	a1,a1,1
    20001d1c:	fee78fa3          	sb	a4,-1(a5)
    20001d20:	0077f713          	andi	a4,a5,7
    20001d24:	b7fd                	j	20001d12 <memcpy+0x30>
    20001d26:	ff86f713          	andi	a4,a3,-8
    20001d2a:	40f70833          	sub	a6,a4,a5
    20001d2e:	04000613          	li	a2,64
    20001d32:	03064463          	blt	a2,a6,20001d5a <memcpy+0x78>
    20001d36:	882e                	mv	a6,a1
    20001d38:	863e                	mv	a2,a5
    20001d3a:	06e66b63          	bltu	a2,a4,20001db0 <memcpy+0xce>
    20001d3e:	ff978813          	addi	a6,a5,-7
    20001d42:	4601                	li	a2,0
    20001d44:	01076663          	bltu	a4,a6,20001d50 <memcpy+0x6e>
    20001d48:	071d                	addi	a4,a4,7
    20001d4a:	8f1d                	sub	a4,a4,a5
    20001d4c:	ff877613          	andi	a2,a4,-8
    20001d50:	97b2                	add	a5,a5,a2
    20001d52:	95b2                	add	a1,a1,a2
    20001d54:	fad7e3e3          	bltu	a5,a3,20001cfa <memcpy+0x18>
    20001d58:	8082                	ret
    20001d5a:	0005b383          	ld	t2,0(a1)
    20001d5e:	0085b283          	ld	t0,8(a1)
    20001d62:	0105bf83          	ld	t6,16(a1)
    20001d66:	0185bf03          	ld	t5,24(a1)
    20001d6a:	0205be83          	ld	t4,32(a1)
    20001d6e:	0285be03          	ld	t3,40(a1)
    20001d72:	0305b303          	ld	t1,48(a1)
    20001d76:	0385b883          	ld	a7,56(a1)
    20001d7a:	0077b023          	sd	t2,0(a5)
    20001d7e:	0057b423          	sd	t0,8(a5)
    20001d82:	0405b803          	ld	a6,64(a1)
    20001d86:	01f7b823          	sd	t6,16(a5)
    20001d8a:	01e7bc23          	sd	t5,24(a5)
    20001d8e:	03d7b023          	sd	t4,32(a5)
    20001d92:	03c7b423          	sd	t3,40(a5)
    20001d96:	0267b823          	sd	t1,48(a5)
    20001d9a:	0317bc23          	sd	a7,56(a5)
    20001d9e:	04878793          	addi	a5,a5,72
    20001da2:	04858593          	addi	a1,a1,72
    20001da6:	ff07bc23          	sd	a6,-8(a5)
    20001daa:	40f70833          	sub	a6,a4,a5
    20001dae:	b751                	j	20001d32 <memcpy+0x50>
    20001db0:	00083883          	ld	a7,0(a6)
    20001db4:	0621                	addi	a2,a2,8
    20001db6:	0821                	addi	a6,a6,8
    20001db8:	ff163c23          	sd	a7,-8(a2)
    20001dbc:	bfbd                	j	20001d3a <memcpy+0x58>

0000000020001dbe <memmove>:
    20001dbe:	04a5f363          	bgeu	a1,a0,20001e04 <memmove+0x46>
    20001dc2:	00c586b3          	add	a3,a1,a2
    20001dc6:	02d57f63          	bgeu	a0,a3,20001e04 <memmove+0x46>
    20001dca:	fff64593          	not	a1,a2
    20001dce:	4781                	li	a5,0
    20001dd0:	17fd                	addi	a5,a5,-1
    20001dd2:	00f59363          	bne	a1,a5,20001dd8 <memmove+0x1a>
    20001dd6:	8082                	ret
    20001dd8:	00f68733          	add	a4,a3,a5
    20001ddc:	00074803          	lbu	a6,0(a4)
    20001de0:	00f60733          	add	a4,a2,a5
    20001de4:	972a                	add	a4,a4,a0
    20001de6:	01070023          	sb	a6,0(a4)
    20001dea:	b7dd                	j	20001dd0 <memmove+0x12>
    20001dec:	00f58733          	add	a4,a1,a5
    20001df0:	00074683          	lbu	a3,0(a4)
    20001df4:	00f50733          	add	a4,a0,a5
    20001df8:	0785                	addi	a5,a5,1
    20001dfa:	00d70023          	sb	a3,0(a4)
    20001dfe:	fef617e3          	bne	a2,a5,20001dec <memmove+0x2e>
    20001e02:	8082                	ret
    20001e04:	4781                	li	a5,0
    20001e06:	bfe5                	j	20001dfe <memmove+0x40>

0000000020001e08 <_free_r>:
    20001e08:	cdd9                	beqz	a1,20001ea6 <_free_r+0x9e>
    20001e0a:	ff85b783          	ld	a5,-8(a1)
    20001e0e:	1101                	addi	sp,sp,-32
    20001e10:	e822                	sd	s0,16(sp)
    20001e12:	ec06                	sd	ra,24(sp)
    20001e14:	ff858413          	addi	s0,a1,-8
    20001e18:	0007d363          	bgez	a5,20001e1e <_free_r+0x16>
    20001e1c:	943e                	add	s0,s0,a5
    20001e1e:	e42a                	sd	a0,8(sp)
    20001e20:	212000ef          	jal	ra,20002032 <__malloc_lock>
    20001e24:	d4818713          	addi	a4,gp,-696 # 80005f8 <__malloc_free_list>
    20001e28:	631c                	ld	a5,0(a4)
    20001e2a:	6522                	ld	a0,8(sp)
    20001e2c:	eb81                	bnez	a5,20001e3c <_free_r+0x34>
    20001e2e:	00043423          	sd	zero,8(s0)
    20001e32:	e300                	sd	s0,0(a4)
    20001e34:	6442                	ld	s0,16(sp)
    20001e36:	60e2                	ld	ra,24(sp)
    20001e38:	6105                	addi	sp,sp,32
    20001e3a:	aaed                	j	20002034 <__malloc_unlock>
    20001e3c:	00f47d63          	bgeu	s0,a5,20001e56 <_free_r+0x4e>
    20001e40:	6010                	ld	a2,0(s0)
    20001e42:	00c406b3          	add	a3,s0,a2
    20001e46:	00d79663          	bne	a5,a3,20001e52 <_free_r+0x4a>
    20001e4a:	6394                	ld	a3,0(a5)
    20001e4c:	679c                	ld	a5,8(a5)
    20001e4e:	96b2                	add	a3,a3,a2
    20001e50:	e014                	sd	a3,0(s0)
    20001e52:	e41c                	sd	a5,8(s0)
    20001e54:	bff9                	j	20001e32 <_free_r+0x2a>
    20001e56:	873e                	mv	a4,a5
    20001e58:	679c                	ld	a5,8(a5)
    20001e5a:	c399                	beqz	a5,20001e60 <_free_r+0x58>
    20001e5c:	fef47de3          	bgeu	s0,a5,20001e56 <_free_r+0x4e>
    20001e60:	6314                	ld	a3,0(a4)
    20001e62:	00d70633          	add	a2,a4,a3
    20001e66:	00861f63          	bne	a2,s0,20001e84 <_free_r+0x7c>
    20001e6a:	6010                	ld	a2,0(s0)
    20001e6c:	96b2                	add	a3,a3,a2
    20001e6e:	e314                	sd	a3,0(a4)
    20001e70:	00d70633          	add	a2,a4,a3
    20001e74:	fcc790e3          	bne	a5,a2,20001e34 <_free_r+0x2c>
    20001e78:	6390                	ld	a2,0(a5)
    20001e7a:	679c                	ld	a5,8(a5)
    20001e7c:	96b2                	add	a3,a3,a2
    20001e7e:	e314                	sd	a3,0(a4)
    20001e80:	e71c                	sd	a5,8(a4)
    20001e82:	bf4d                	j	20001e34 <_free_r+0x2c>
    20001e84:	00c47563          	bgeu	s0,a2,20001e8e <_free_r+0x86>
    20001e88:	47b1                	li	a5,12
    20001e8a:	c11c                	sw	a5,0(a0)
    20001e8c:	b765                	j	20001e34 <_free_r+0x2c>
    20001e8e:	6010                	ld	a2,0(s0)
    20001e90:	00c406b3          	add	a3,s0,a2
    20001e94:	00d79663          	bne	a5,a3,20001ea0 <_free_r+0x98>
    20001e98:	6394                	ld	a3,0(a5)
    20001e9a:	679c                	ld	a5,8(a5)
    20001e9c:	96b2                	add	a3,a3,a2
    20001e9e:	e014                	sd	a3,0(s0)
    20001ea0:	e41c                	sd	a5,8(s0)
    20001ea2:	e700                	sd	s0,8(a4)
    20001ea4:	bf41                	j	20001e34 <_free_r+0x2c>
    20001ea6:	8082                	ret

0000000020001ea8 <_malloc_r>:
    20001ea8:	00758793          	addi	a5,a1,7
    20001eac:	7179                	addi	sp,sp,-48
    20001eae:	9be1                	andi	a5,a5,-8
    20001eb0:	ec26                	sd	s1,24(sp)
    20001eb2:	e84a                	sd	s2,16(sp)
    20001eb4:	f406                	sd	ra,40(sp)
    20001eb6:	f022                	sd	s0,32(sp)
    20001eb8:	e44e                	sd	s3,8(sp)
    20001eba:	07a1                	addi	a5,a5,8
    20001ebc:	4741                	li	a4,16
    20001ebe:	84aa                	mv	s1,a0
    20001ec0:	4941                	li	s2,16
    20001ec2:	00e7e363          	bltu	a5,a4,20001ec8 <_malloc_r+0x20>
    20001ec6:	893e                	mv	s2,a5
    20001ec8:	80000737          	lui	a4,0x80000
    20001ecc:	fff74713          	not	a4,a4
    20001ed0:	00f76463          	bltu	a4,a5,20001ed8 <_malloc_r+0x30>
    20001ed4:	00b97c63          	bgeu	s2,a1,20001eec <_malloc_r+0x44>
    20001ed8:	47b1                	li	a5,12
    20001eda:	c09c                	sw	a5,0(s1)
    20001edc:	4501                	li	a0,0
    20001ede:	70a2                	ld	ra,40(sp)
    20001ee0:	7402                	ld	s0,32(sp)
    20001ee2:	64e2                	ld	s1,24(sp)
    20001ee4:	6942                	ld	s2,16(sp)
    20001ee6:	69a2                	ld	s3,8(sp)
    20001ee8:	6145                	addi	sp,sp,48
    20001eea:	8082                	ret
    20001eec:	8526                	mv	a0,s1
    20001eee:	144000ef          	jal	ra,20002032 <__malloc_lock>
    20001ef2:	d4818693          	addi	a3,gp,-696 # 80005f8 <__malloc_free_list>
    20001ef6:	6298                	ld	a4,0(a3)
    20001ef8:	843a                	mv	s0,a4
    20001efa:	e41d                	bnez	s0,20001f28 <_malloc_r+0x80>
    20001efc:	d5018413          	addi	s0,gp,-688 # 8000600 <__malloc_sbrk_start>
    20001f00:	601c                	ld	a5,0(s0)
    20001f02:	e791                	bnez	a5,20001f0e <_malloc_r+0x66>
    20001f04:	4581                	li	a1,0
    20001f06:	8526                	mv	a0,s1
    20001f08:	102000ef          	jal	ra,2000200a <_sbrk_r>
    20001f0c:	e008                	sd	a0,0(s0)
    20001f0e:	85ca                	mv	a1,s2
    20001f10:	8526                	mv	a0,s1
    20001f12:	0f8000ef          	jal	ra,2000200a <_sbrk_r>
    20001f16:	59fd                	li	s3,-1
    20001f18:	05351e63          	bne	a0,s3,20001f74 <_malloc_r+0xcc>
    20001f1c:	47b1                	li	a5,12
    20001f1e:	c09c                	sw	a5,0(s1)
    20001f20:	8526                	mv	a0,s1
    20001f22:	112000ef          	jal	ra,20002034 <__malloc_unlock>
    20001f26:	bf5d                	j	20001edc <_malloc_r+0x34>
    20001f28:	601c                	ld	a5,0(s0)
    20001f2a:	412787bb          	subw	a5,a5,s2
    20001f2e:	0407c063          	bltz	a5,20001f6e <_malloc_r+0xc6>
    20001f32:	463d                	li	a2,15
    20001f34:	00f65763          	bge	a2,a5,20001f42 <_malloc_r+0x9a>
    20001f38:	e01c                	sd	a5,0(s0)
    20001f3a:	943e                	add	s0,s0,a5
    20001f3c:	01243023          	sd	s2,0(s0)
    20001f40:	a029                	j	20001f4a <_malloc_r+0xa2>
    20001f42:	641c                	ld	a5,8(s0)
    20001f44:	02871363          	bne	a4,s0,20001f6a <_malloc_r+0xc2>
    20001f48:	e29c                	sd	a5,0(a3)
    20001f4a:	8526                	mv	a0,s1
    20001f4c:	0e8000ef          	jal	ra,20002034 <__malloc_unlock>
    20001f50:	00f40513          	addi	a0,s0,15
    20001f54:	00840793          	addi	a5,s0,8
    20001f58:	9961                	andi	a0,a0,-8
    20001f5a:	40f507bb          	subw	a5,a0,a5
    20001f5e:	d3c1                	beqz	a5,20001ede <_malloc_r+0x36>
    20001f60:	943e                	add	s0,s0,a5
    20001f62:	40f007bb          	negw	a5,a5
    20001f66:	e01c                	sd	a5,0(s0)
    20001f68:	bf9d                	j	20001ede <_malloc_r+0x36>
    20001f6a:	e71c                	sd	a5,8(a4)
    20001f6c:	bff9                	j	20001f4a <_malloc_r+0xa2>
    20001f6e:	8722                	mv	a4,s0
    20001f70:	6400                	ld	s0,8(s0)
    20001f72:	b761                	j	20001efa <_malloc_r+0x52>
    20001f74:	00750413          	addi	s0,a0,7
    20001f78:	9861                	andi	s0,s0,-8
    20001f7a:	fc8501e3          	beq	a0,s0,20001f3c <_malloc_r+0x94>
    20001f7e:	40a405b3          	sub	a1,s0,a0
    20001f82:	8526                	mv	a0,s1
    20001f84:	086000ef          	jal	ra,2000200a <_sbrk_r>
    20001f88:	fb351ae3          	bne	a0,s3,20001f3c <_malloc_r+0x94>
    20001f8c:	bf41                	j	20001f1c <_malloc_r+0x74>

0000000020001f8e <_realloc_r>:
    20001f8e:	7179                	addi	sp,sp,-48
    20001f90:	f022                	sd	s0,32(sp)
    20001f92:	f406                	sd	ra,40(sp)
    20001f94:	ec26                	sd	s1,24(sp)
    20001f96:	e84a                	sd	s2,16(sp)
    20001f98:	e44e                	sd	s3,8(sp)
    20001f9a:	e052                	sd	s4,0(sp)
    20001f9c:	8432                	mv	s0,a2
    20001f9e:	e991                	bnez	a1,20001fb2 <_realloc_r+0x24>
    20001fa0:	7402                	ld	s0,32(sp)
    20001fa2:	70a2                	ld	ra,40(sp)
    20001fa4:	64e2                	ld	s1,24(sp)
    20001fa6:	6942                	ld	s2,16(sp)
    20001fa8:	69a2                	ld	s3,8(sp)
    20001faa:	6a02                	ld	s4,0(sp)
    20001fac:	85b2                	mv	a1,a2
    20001fae:	6145                	addi	sp,sp,48
    20001fb0:	bde5                	j	20001ea8 <_malloc_r>
    20001fb2:	ee09                	bnez	a2,20001fcc <_realloc_r+0x3e>
    20001fb4:	e55ff0ef          	jal	ra,20001e08 <_free_r>
    20001fb8:	4481                	li	s1,0
    20001fba:	70a2                	ld	ra,40(sp)
    20001fbc:	7402                	ld	s0,32(sp)
    20001fbe:	6942                	ld	s2,16(sp)
    20001fc0:	69a2                	ld	s3,8(sp)
    20001fc2:	6a02                	ld	s4,0(sp)
    20001fc4:	8526                	mv	a0,s1
    20001fc6:	64e2                	ld	s1,24(sp)
    20001fc8:	6145                	addi	sp,sp,48
    20001fca:	8082                	ret
    20001fcc:	8a2a                	mv	s4,a0
    20001fce:	892e                	mv	s2,a1
    20001fd0:	066000ef          	jal	ra,20002036 <_malloc_usable_size_r>
    20001fd4:	89aa                	mv	s3,a0
    20001fd6:	00856763          	bltu	a0,s0,20001fe4 <_realloc_r+0x56>
    20001fda:	00155793          	srli	a5,a0,0x1
    20001fde:	84ca                	mv	s1,s2
    20001fe0:	fc87ede3          	bltu	a5,s0,20001fba <_realloc_r+0x2c>
    20001fe4:	85a2                	mv	a1,s0
    20001fe6:	8552                	mv	a0,s4
    20001fe8:	ec1ff0ef          	jal	ra,20001ea8 <_malloc_r>
    20001fec:	84aa                	mv	s1,a0
    20001fee:	d571                	beqz	a0,20001fba <_realloc_r+0x2c>
    20001ff0:	8622                	mv	a2,s0
    20001ff2:	0089f363          	bgeu	s3,s0,20001ff8 <_realloc_r+0x6a>
    20001ff6:	864e                	mv	a2,s3
    20001ff8:	85ca                	mv	a1,s2
    20001ffa:	8526                	mv	a0,s1
    20001ffc:	ce7ff0ef          	jal	ra,20001ce2 <memcpy>
    20002000:	85ca                	mv	a1,s2
    20002002:	8552                	mv	a0,s4
    20002004:	e05ff0ef          	jal	ra,20001e08 <_free_r>
    20002008:	bf4d                	j	20001fba <_realloc_r+0x2c>

000000002000200a <_sbrk_r>:
    2000200a:	1141                	addi	sp,sp,-16
    2000200c:	e022                	sd	s0,0(sp)
    2000200e:	842a                	mv	s0,a0
    20002010:	852e                	mv	a0,a1
    20002012:	d401ac23          	sw	zero,-680(gp) # 8000608 <errno>
    20002016:	e406                	sd	ra,8(sp)
    20002018:	132000ef          	jal	ra,2000214a <_sbrk>
    2000201c:	57fd                	li	a5,-1
    2000201e:	00f51663          	bne	a0,a5,2000202a <_sbrk_r+0x20>
    20002022:	d581a783          	lw	a5,-680(gp) # 8000608 <errno>
    20002026:	c391                	beqz	a5,2000202a <_sbrk_r+0x20>
    20002028:	c01c                	sw	a5,0(s0)
    2000202a:	60a2                	ld	ra,8(sp)
    2000202c:	6402                	ld	s0,0(sp)
    2000202e:	0141                	addi	sp,sp,16
    20002030:	8082                	ret

0000000020002032 <__malloc_lock>:
    20002032:	8082                	ret

0000000020002034 <__malloc_unlock>:
    20002034:	8082                	ret

0000000020002036 <_malloc_usable_size_r>:
    20002036:	ff85b503          	ld	a0,-8(a1)
    2000203a:	0005079b          	sext.w	a5,a0
    2000203e:	1561                	addi	a0,a0,-8
    20002040:	0007d663          	bgez	a5,2000204c <_malloc_usable_size_r+0x16>
    20002044:	95aa                	add	a1,a1,a0
    20002046:	6188                	ld	a0,0(a1)
    20002048:	17e1                	addi	a5,a5,-8
    2000204a:	953e                	add	a0,a0,a5
    2000204c:	8082                	ret

000000002000204e <cleanup_glue>:
    2000204e:	1101                	addi	sp,sp,-32
    20002050:	e822                	sd	s0,16(sp)
    20002052:	842e                	mv	s0,a1
    20002054:	618c                	ld	a1,0(a1)
    20002056:	e426                	sd	s1,8(sp)
    20002058:	ec06                	sd	ra,24(sp)
    2000205a:	84aa                	mv	s1,a0
    2000205c:	c199                	beqz	a1,20002062 <cleanup_glue+0x14>
    2000205e:	ff1ff0ef          	jal	ra,2000204e <cleanup_glue>
    20002062:	85a2                	mv	a1,s0
    20002064:	6442                	ld	s0,16(sp)
    20002066:	60e2                	ld	ra,24(sp)
    20002068:	8526                	mv	a0,s1
    2000206a:	64a2                	ld	s1,8(sp)
    2000206c:	6105                	addi	sp,sp,32
    2000206e:	bb69                	j	20001e08 <_free_r>

0000000020002070 <_reclaim_reent>:
    20002070:	e7ffe797          	auipc	a5,0xe7ffe
    20002074:	0407b783          	ld	a5,64(a5) # 80000b0 <_impure_ptr>
    20002078:	0ca78863          	beq	a5,a0,20002148 <_reclaim_reent+0xd8>
    2000207c:	613c                	ld	a5,64(a0)
    2000207e:	7179                	addi	sp,sp,-48
    20002080:	f022                	sd	s0,32(sp)
    20002082:	f406                	sd	ra,40(sp)
    20002084:	ec26                	sd	s1,24(sp)
    20002086:	e84a                	sd	s2,16(sp)
    20002088:	e44e                	sd	s3,8(sp)
    2000208a:	842a                	mv	s0,a0
    2000208c:	cb8d                	beqz	a5,200020be <_reclaim_reent+0x4e>
    2000208e:	6f9c                	ld	a5,24(a5)
    20002090:	c38d                	beqz	a5,200020b2 <_reclaim_reent+0x42>
    20002092:	4481                	li	s1,0
    20002094:	20000913          	li	s2,512
    20002098:	603c                	ld	a5,64(s0)
    2000209a:	6f9c                	ld	a5,24(a5)
    2000209c:	97a6                	add	a5,a5,s1
    2000209e:	638c                	ld	a1,0(a5)
    200020a0:	e5d1                	bnez	a1,2000212c <_reclaim_reent+0xbc>
    200020a2:	04a1                	addi	s1,s1,8
    200020a4:	ff249ae3          	bne	s1,s2,20002098 <_reclaim_reent+0x28>
    200020a8:	603c                	ld	a5,64(s0)
    200020aa:	8522                	mv	a0,s0
    200020ac:	6f8c                	ld	a1,24(a5)
    200020ae:	d5bff0ef          	jal	ra,20001e08 <_free_r>
    200020b2:	603c                	ld	a5,64(s0)
    200020b4:	638c                	ld	a1,0(a5)
    200020b6:	c581                	beqz	a1,200020be <_reclaim_reent+0x4e>
    200020b8:	8522                	mv	a0,s0
    200020ba:	d4fff0ef          	jal	ra,20001e08 <_free_r>
    200020be:	740c                	ld	a1,40(s0)
    200020c0:	c581                	beqz	a1,200020c8 <_reclaim_reent+0x58>
    200020c2:	8522                	mv	a0,s0
    200020c4:	d45ff0ef          	jal	ra,20001e08 <_free_r>
    200020c8:	602c                	ld	a1,64(s0)
    200020ca:	c581                	beqz	a1,200020d2 <_reclaim_reent+0x62>
    200020cc:	8522                	mv	a0,s0
    200020ce:	d3bff0ef          	jal	ra,20001e08 <_free_r>
    200020d2:	702c                	ld	a1,96(s0)
    200020d4:	c581                	beqz	a1,200020dc <_reclaim_reent+0x6c>
    200020d6:	8522                	mv	a0,s0
    200020d8:	d31ff0ef          	jal	ra,20001e08 <_free_r>
    200020dc:	742c                	ld	a1,104(s0)
    200020de:	c581                	beqz	a1,200020e6 <_reclaim_reent+0x76>
    200020e0:	8522                	mv	a0,s0
    200020e2:	d27ff0ef          	jal	ra,20001e08 <_free_r>
    200020e6:	782c                	ld	a1,112(s0)
    200020e8:	c581                	beqz	a1,200020f0 <_reclaim_reent+0x80>
    200020ea:	8522                	mv	a0,s0
    200020ec:	d1dff0ef          	jal	ra,20001e08 <_free_r>
    200020f0:	744c                	ld	a1,168(s0)
    200020f2:	c581                	beqz	a1,200020fa <_reclaim_reent+0x8a>
    200020f4:	8522                	mv	a0,s0
    200020f6:	d13ff0ef          	jal	ra,20001e08 <_free_r>
    200020fa:	704c                	ld	a1,160(s0)
    200020fc:	c581                	beqz	a1,20002104 <_reclaim_reent+0x94>
    200020fe:	8522                	mv	a0,s0
    20002100:	d09ff0ef          	jal	ra,20001e08 <_free_r>
    20002104:	6c2c                	ld	a1,88(s0)
    20002106:	c581                	beqz	a1,2000210e <_reclaim_reent+0x9e>
    20002108:	8522                	mv	a0,s0
    2000210a:	cffff0ef          	jal	ra,20001e08 <_free_r>
    2000210e:	581c                	lw	a5,48(s0)
    20002110:	c78d                	beqz	a5,2000213a <_reclaim_reent+0xca>
    20002112:	643c                	ld	a5,72(s0)
    20002114:	8522                	mv	a0,s0
    20002116:	9782                	jalr	a5
    20002118:	604c                	ld	a1,128(s0)
    2000211a:	c185                	beqz	a1,2000213a <_reclaim_reent+0xca>
    2000211c:	8522                	mv	a0,s0
    2000211e:	7402                	ld	s0,32(sp)
    20002120:	70a2                	ld	ra,40(sp)
    20002122:	64e2                	ld	s1,24(sp)
    20002124:	6942                	ld	s2,16(sp)
    20002126:	69a2                	ld	s3,8(sp)
    20002128:	6145                	addi	sp,sp,48
    2000212a:	b715                	j	2000204e <cleanup_glue>
    2000212c:	0005b983          	ld	s3,0(a1)
    20002130:	8522                	mv	a0,s0
    20002132:	cd7ff0ef          	jal	ra,20001e08 <_free_r>
    20002136:	85ce                	mv	a1,s3
    20002138:	b7a5                	j	200020a0 <_reclaim_reent+0x30>
    2000213a:	70a2                	ld	ra,40(sp)
    2000213c:	7402                	ld	s0,32(sp)
    2000213e:	64e2                	ld	s1,24(sp)
    20002140:	6942                	ld	s2,16(sp)
    20002142:	69a2                	ld	s3,8(sp)
    20002144:	6145                	addi	sp,sp,48
    20002146:	8082                	ret
    20002148:	8082                	ret

000000002000214a <_sbrk>:
    2000214a:	d6018693          	addi	a3,gp,-672 # 8000610 <heap_end.0>
    2000214e:	629c                	ld	a5,0(a3)
    20002150:	1141                	addi	sp,sp,-16
    20002152:	e406                	sd	ra,8(sp)
    20002154:	872a                	mv	a4,a0
    20002156:	e395                	bnez	a5,2000217a <_sbrk+0x30>
    20002158:	0d600893          	li	a7,214
    2000215c:	4501                	li	a0,0
    2000215e:	00000073          	ecall
    20002162:	57fd                	li	a5,-1
    20002164:	00f51a63          	bne	a0,a5,20002178 <_sbrk+0x2e>
    20002168:	02a000ef          	jal	ra,20002192 <__errno>
    2000216c:	47b1                	li	a5,12
    2000216e:	c11c                	sw	a5,0(a0)
    20002170:	557d                	li	a0,-1
    20002172:	60a2                	ld	ra,8(sp)
    20002174:	0141                	addi	sp,sp,16
    20002176:	8082                	ret
    20002178:	e288                	sd	a0,0(a3)
    2000217a:	629c                	ld	a5,0(a3)
    2000217c:	0d600893          	li	a7,214
    20002180:	973e                	add	a4,a4,a5
    20002182:	853a                	mv	a0,a4
    20002184:	00000073          	ecall
    20002188:	fee510e3          	bne	a0,a4,20002168 <_sbrk+0x1e>
    2000218c:	e288                	sd	a0,0(a3)
    2000218e:	853e                	mv	a0,a5
    20002190:	b7cd                	j	20002172 <_sbrk+0x28>

0000000020002192 <__errno>:
    20002192:	e7ffe517          	auipc	a0,0xe7ffe
    20002196:	f1e53503          	ld	a0,-226(a0) # 80000b0 <_impure_ptr>
    2000219a:	8082                	ret
