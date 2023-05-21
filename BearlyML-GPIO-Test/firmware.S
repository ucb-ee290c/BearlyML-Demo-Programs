
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
    20000060:	4dc000ef          	jal	ra,2000053c <trap_handler>
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
    20000102:	04551363          	bne	a0,t0,20000148 <bss_init_exit>

0000000020000106 <data_init_entry>:
    20000106:	00003297          	auipc	t0,0x3
    2000010a:	7e228293          	addi	t0,t0,2018 # 200038e8 <_data_source_start>
    2000010e:	e8000317          	auipc	t1,0xe8000
    20000112:	ef230313          	addi	t1,t1,-270 # 8000000 <impure_data>
    20000116:	81018393          	addi	t2,gp,-2032 # 80000c0 <__malloc_free_list>
    2000011a:	00628c63          	beq	t0,t1,20000132 <bss_init_entry>
    2000011e:	00735a63          	bge	t1,t2,20000132 <bss_init_entry>

0000000020000122 <data_init_loop>:
    20000122:	0002be03          	ld	t3,0(t0)
    20000126:	01c33023          	sd	t3,0(t1)
    2000012a:	02a1                	addi	t0,t0,8
    2000012c:	0321                	addi	t1,t1,8
    2000012e:	fe734ae3          	blt	t1,t2,20000122 <data_init_loop>

0000000020000132 <bss_init_entry>:
    20000132:	81018293          	addi	t0,gp,-2032 # 80000c0 <__malloc_free_list>
    20000136:	82418313          	addi	t1,gp,-2012 # 80000d4 <_bss_end>
    2000013a:	00628763          	beq	t0,t1,20000148 <bss_init_exit>

000000002000013e <bss_init_loop>:
    2000013e:	0002b003          	ld	zero,0(t0)
    20000142:	02a1                	addi	t0,t0,8
    20000144:	fe62cde3          	blt	t0,t1,2000013e <bss_init_loop>

0000000020000148 <bss_init_exit>:
    20000148:	e8002117          	auipc	sp,0xe8002
    2000014c:	b9810113          	addi	sp,sp,-1128 # 8001ce0 <_sp>
    20000150:	e8002217          	auipc	tp,0xe8002
    20000154:	b9020213          	addi	tp,tp,-1136 # 8001ce0 <_sp>
    20000158:	f1402573          	csrr	a0,mhartid
    2000015c:	4281                	li	t0,0
    2000015e:	40000313          	li	t1,1024

0000000020000162 <stack_init_loop>:
    20000162:	ff017113          	andi	sp,sp,-16
    20000166:	00a28563          	beq	t0,a0,20000170 <stack_init_exit>
    2000016a:	911a                	add	sp,sp,t1
    2000016c:	0285                	addi	t0,t0,1
    2000016e:	bfd5                	j	20000162 <stack_init_loop>

0000000020000170 <stack_init_exit>:
    20000170:	3b6000ef          	jal	ra,20000526 <system_init>
    20000174:	03a000ef          	jal	ra,200001ae <main>

0000000020000178 <infinite_loop>:
    20000178:	a001                	j	20000178 <infinite_loop>
    2000017a:	0000                	unimp
    2000017c:	0000                	unimp
    2000017e:	0000                	unimp
    20000180:	38e8                	fld	fa0,240(s1)
    20000182:	2000                	fld	fs0,0(s0)
    20000184:	0000                	unimp
    20000186:	0800                	addi	s0,sp,16
    20000188:	00c0                	addi	s0,sp,68
    2000018a:	0800                	addi	s0,sp,16
    2000018c:	00c0                	addi	s0,sp,68
    2000018e:	0800                	addi	s0,sp,16
    20000190:	00d4                	addi	a3,sp,68
    20000192:	0800                	addi	s0,sp,16
    20000194:	00000013          	nop
    20000198:	00000013          	nop
    2000019c:	00000013          	nop
	...

00000000200001ae <main>:
    200001ae:	7131                	addi	sp,sp,-192
    200001b0:	fd06                	sd	ra,184(sp)
    200001b2:	f922                	sd	s0,176(sp)
    200001b4:	0180                	addi	s0,sp,192
    200001b6:	2ca010ef          	jal	ra,20001480 <HAL_RCC_InitSystemClock>
    200001ba:	67f1                	lui	a5,0x1c
    200001bc:	20078793          	addi	a5,a5,512 # 1c200 <__heap_size+0x1ba00>
    200001c0:	fcf42c23          	sw	a5,-40(s0)
    200001c4:	478d                	li	a5,3
    200001c6:	fcf42e23          	sw	a5,-36(s0)
    200001ca:	fe042023          	sw	zero,-32(s0)
    200001ce:	fd840793          	addi	a5,s0,-40
    200001d2:	85be                	mv	a1,a5
    200001d4:	1001a537          	lui	a0,0x1001a
    200001d8:	2b6010ef          	jal	ra,2000148e <HAL_UART_init>
    200001dc:	4785                	li	a5,1
    200001de:	fcf42423          	sw	a5,-56(s0)
    200001e2:	fc042623          	sw	zero,-52(s0)
    200001e6:	4785                	li	a5,1
    200001e8:	fcf42823          	sw	a5,-48(s0)
    200001ec:	fc840793          	addi	a5,s0,-56
    200001f0:	463d                	li	a2,15
    200001f2:	85be                	mv	a1,a5
    200001f4:	10012537          	lui	a0,0x10012
    200001f8:	7dc000ef          	jal	ra,200009d4 <HAL_GPIO_init>
    200001fc:	4785                	li	a5,1
    200001fe:	fcf42423          	sw	a5,-56(s0)
    20000202:	fc042623          	sw	zero,-52(s0)
    20000206:	fc042823          	sw	zero,-48(s0)
    2000020a:	fc840793          	addi	a5,s0,-56
    2000020e:	4611                	li	a2,4
    20000210:	85be                	mv	a1,a5
    20000212:	10012537          	lui	a0,0x10012
    20000216:	7be000ef          	jal	ra,200009d4 <HAL_GPIO_init>
    2000021a:	4601                	li	a2,0
    2000021c:	45bd                	li	a1,15
    2000021e:	10012537          	lui	a0,0x10012
    20000222:	0fb000ef          	jal	ra,20000b1c <HAL_GPIO_writePin>
    20000226:	4505                	li	a0,1
    20000228:	594010ef          	jal	ra,200017bc <malloc>
    2000022c:	87aa                	mv	a5,a0
    2000022e:	fef43423          	sd	a5,-24(s0)
    20000232:	4601                	li	a2,0
    20000234:	45bd                	li	a1,15
    20000236:	10012537          	lui	a0,0x10012
    2000023a:	0e3000ef          	jal	ra,20000b1c <HAL_GPIO_writePin>
    2000023e:	06400513          	li	a0,100
    20000242:	0e4000ef          	jal	ra,20000326 <HAL_delay>
    20000246:	f4840793          	addi	a5,s0,-184
    2000024a:	00003597          	auipc	a1,0x3
    2000024e:	4ee58593          	addi	a1,a1,1262 # 20003738 <__errno+0xc>
    20000252:	853e                	mv	a0,a5
    20000254:	7e8010ef          	jal	ra,20001a3c <siprintf>
    20000258:	f4840793          	addi	a5,s0,-184
    2000025c:	853e                	mv	a0,a5
    2000025e:	027010ef          	jal	ra,20001a84 <strlen>
    20000262:	87aa                	mv	a5,a0
    20000264:	03079713          	slli	a4,a5,0x30
    20000268:	9341                	srli	a4,a4,0x30
    2000026a:	f4840793          	addi	a5,s0,-184
    2000026e:	3e800693          	li	a3,1000
    20000272:	863a                	mv	a2,a4
    20000274:	85be                	mv	a1,a5
    20000276:	1001a537          	lui	a0,0x1001a
    2000027a:	4dc010ef          	jal	ra,20001756 <HAL_UART_transmit>
    2000027e:	00003517          	auipc	a0,0x3
    20000282:	4c250513          	addi	a0,a0,1218 # 20003740 <__errno+0x14>
    20000286:	712010ef          	jal	ra,20001998 <iprintf>
    2000028a:	4605                	li	a2,1
    2000028c:	45bd                	li	a1,15
    2000028e:	10012537          	lui	a0,0x10012
    20000292:	08b000ef          	jal	ra,20000b1c <HAL_GPIO_writePin>
    20000296:	06400513          	li	a0,100
    2000029a:	08c000ef          	jal	ra,20000326 <HAL_delay>
    2000029e:	bf51                	j	20000232 <main+0x84>

00000000200002a0 <_write>:
    200002a0:	7135                	addi	sp,sp,-160
    200002a2:	ed06                	sd	ra,152(sp)
    200002a4:	e922                	sd	s0,144(sp)
    200002a6:	1100                	addi	s0,sp,160
    200002a8:	87aa                	mv	a5,a0
    200002aa:	f6b43023          	sd	a1,-160(s0)
    200002ae:	8732                	mv	a4,a2
    200002b0:	f6f42623          	sw	a5,-148(s0)
    200002b4:	87ba                	mv	a5,a4
    200002b6:	f6f42423          	sw	a5,-152(s0)
    200002ba:	f7040793          	addi	a5,s0,-144
    200002be:	00003597          	auipc	a1,0x3
    200002c2:	48a58593          	addi	a1,a1,1162 # 20003748 <__errno+0x1c>
    200002c6:	853e                	mv	a0,a5
    200002c8:	774010ef          	jal	ra,20001a3c <siprintf>
    200002cc:	f7040793          	addi	a5,s0,-144
    200002d0:	853e                	mv	a0,a5
    200002d2:	7b2010ef          	jal	ra,20001a84 <strlen>
    200002d6:	87aa                	mv	a5,a0
    200002d8:	03079713          	slli	a4,a5,0x30
    200002dc:	9341                	srli	a4,a4,0x30
    200002de:	f7040793          	addi	a5,s0,-144
    200002e2:	3e800693          	li	a3,1000
    200002e6:	863a                	mv	a2,a4
    200002e8:	85be                	mv	a1,a5
    200002ea:	1001a537          	lui	a0,0x1001a
    200002ee:	468010ef          	jal	ra,20001756 <HAL_UART_transmit>
    200002f2:	f6842783          	lw	a5,-152(s0)
    200002f6:	853e                	mv	a0,a5
    200002f8:	60ea                	ld	ra,152(sp)
    200002fa:	644a                	ld	s0,144(sp)
    200002fc:	610d                	addi	sp,sp,160
    200002fe:	8082                	ret

0000000020000300 <HAL_init>:
    20000300:	1141                	addi	sp,sp,-16
    20000302:	e422                	sd	s0,8(sp)
    20000304:	0800                	addi	s0,sp,16
    20000306:	0001                	nop
    20000308:	6422                	ld	s0,8(sp)
    2000030a:	0141                	addi	sp,sp,16
    2000030c:	8082                	ret

000000002000030e <HAL_getTick>:
    2000030e:	1141                	addi	sp,sp,-16
    20000310:	e406                	sd	ra,8(sp)
    20000312:	e022                	sd	s0,0(sp)
    20000314:	0800                	addi	s0,sp,16
    20000316:	4b2000ef          	jal	ra,200007c8 <HAL_CLINT_getTime>
    2000031a:	87aa                	mv	a5,a0
    2000031c:	853e                	mv	a0,a5
    2000031e:	60a2                	ld	ra,8(sp)
    20000320:	6402                	ld	s0,0(sp)
    20000322:	0141                	addi	sp,sp,16
    20000324:	8082                	ret

0000000020000326 <HAL_delay>:
    20000326:	7179                	addi	sp,sp,-48
    20000328:	f406                	sd	ra,40(sp)
    2000032a:	f022                	sd	s0,32(sp)
    2000032c:	1800                	addi	s0,sp,48
    2000032e:	fca43c23          	sd	a0,-40(s0)
    20000332:	fddff0ef          	jal	ra,2000030e <HAL_getTick>
    20000336:	86aa                	mv	a3,a0
    20000338:	fd843703          	ld	a4,-40(s0)
    2000033c:	1f400793          	li	a5,500
    20000340:	02f707b3          	mul	a5,a4,a5
    20000344:	97b6                	add	a5,a5,a3
    20000346:	fef43423          	sd	a5,-24(s0)
    2000034a:	0001                	nop
    2000034c:	fc3ff0ef          	jal	ra,2000030e <HAL_getTick>
    20000350:	872a                	mv	a4,a0
    20000352:	fe843783          	ld	a5,-24(s0)
    20000356:	fef76be3          	bltu	a4,a5,2000034c <HAL_delay+0x26>
    2000035a:	0001                	nop
    2000035c:	0001                	nop
    2000035e:	70a2                	ld	ra,40(sp)
    20000360:	7402                	ld	s0,32(sp)
    20000362:	6145                	addi	sp,sp,48
    20000364:	8082                	ret

0000000020000366 <HAL_MachineSoftwareInterruptCallback>:
    20000366:	1101                	addi	sp,sp,-32
    20000368:	ec22                	sd	s0,24(sp)
    2000036a:	1000                	addi	s0,sp,32
    2000036c:	87aa                	mv	a5,a0
    2000036e:	fef42623          	sw	a5,-20(s0)
    20000372:	0001                	nop
    20000374:	6462                	ld	s0,24(sp)
    20000376:	6105                	addi	sp,sp,32
    20000378:	8082                	ret

000000002000037a <HAL_GPIO_Callback>:
    2000037a:	1141                	addi	sp,sp,-16
    2000037c:	e422                	sd	s0,8(sp)
    2000037e:	0800                	addi	s0,sp,16
    20000380:	0001                	nop
    20000382:	6422                	ld	s0,8(sp)
    20000384:	0141                	addi	sp,sp,16
    20000386:	8082                	ret

0000000020000388 <InstructionAddressMisalign_Exception_Handler>:
    20000388:	1141                	addi	sp,sp,-16
    2000038a:	e422                	sd	s0,8(sp)
    2000038c:	0800                	addi	s0,sp,16
    2000038e:	0001                	nop
    20000390:	6422                	ld	s0,8(sp)
    20000392:	0141                	addi	sp,sp,16
    20000394:	8082                	ret

0000000020000396 <InstructionAccessFault_Exception_Handler>:
    20000396:	1141                	addi	sp,sp,-16
    20000398:	e422                	sd	s0,8(sp)
    2000039a:	0800                	addi	s0,sp,16
    2000039c:	0001                	nop
    2000039e:	6422                	ld	s0,8(sp)
    200003a0:	0141                	addi	sp,sp,16
    200003a2:	8082                	ret

00000000200003a4 <IllegalInstruction_Exception_Handler>:
    200003a4:	1141                	addi	sp,sp,-16
    200003a6:	e422                	sd	s0,8(sp)
    200003a8:	0800                	addi	s0,sp,16
    200003aa:	0001                	nop
    200003ac:	6422                	ld	s0,8(sp)
    200003ae:	0141                	addi	sp,sp,16
    200003b0:	8082                	ret

00000000200003b2 <Breakpoint_Exception_Handler>:
    200003b2:	1141                	addi	sp,sp,-16
    200003b4:	e422                	sd	s0,8(sp)
    200003b6:	0800                	addi	s0,sp,16
    200003b8:	0001                	nop
    200003ba:	6422                	ld	s0,8(sp)
    200003bc:	0141                	addi	sp,sp,16
    200003be:	8082                	ret

00000000200003c0 <LoadAddressMisaligne_Exception_handler>:
    200003c0:	1141                	addi	sp,sp,-16
    200003c2:	e422                	sd	s0,8(sp)
    200003c4:	0800                	addi	s0,sp,16
    200003c6:	0001                	nop
    200003c8:	6422                	ld	s0,8(sp)
    200003ca:	0141                	addi	sp,sp,16
    200003cc:	8082                	ret

00000000200003ce <LoadAccessFault_Exception_handler>:
    200003ce:	1141                	addi	sp,sp,-16
    200003d0:	e422                	sd	s0,8(sp)
    200003d2:	0800                	addi	s0,sp,16
    200003d4:	0001                	nop
    200003d6:	6422                	ld	s0,8(sp)
    200003d8:	0141                	addi	sp,sp,16
    200003da:	8082                	ret

00000000200003dc <StoreAMOAddressMisalign_Exception_handler>:
    200003dc:	1141                	addi	sp,sp,-16
    200003de:	e422                	sd	s0,8(sp)
    200003e0:	0800                	addi	s0,sp,16
    200003e2:	0001                	nop
    200003e4:	6422                	ld	s0,8(sp)
    200003e6:	0141                	addi	sp,sp,16
    200003e8:	8082                	ret

00000000200003ea <StoreAMOAccessFault_Exception_handler>:
    200003ea:	1141                	addi	sp,sp,-16
    200003ec:	e422                	sd	s0,8(sp)
    200003ee:	0800                	addi	s0,sp,16
    200003f0:	0001                	nop
    200003f2:	6422                	ld	s0,8(sp)
    200003f4:	0141                	addi	sp,sp,16
    200003f6:	8082                	ret

00000000200003f8 <EnvironmentCallUMode_Exception_handler>:
    200003f8:	1141                	addi	sp,sp,-16
    200003fa:	e422                	sd	s0,8(sp)
    200003fc:	0800                	addi	s0,sp,16
    200003fe:	0001                	nop
    20000400:	6422                	ld	s0,8(sp)
    20000402:	0141                	addi	sp,sp,16
    20000404:	8082                	ret

0000000020000406 <EnvironmentCallMMode_Exception_handler>:
    20000406:	1141                	addi	sp,sp,-16
    20000408:	e422                	sd	s0,8(sp)
    2000040a:	0800                	addi	s0,sp,16
    2000040c:	0001                	nop
    2000040e:	6422                	ld	s0,8(sp)
    20000410:	0141                	addi	sp,sp,16
    20000412:	8082                	ret

0000000020000414 <UserSoftware_IRQn_Handler>:
    20000414:	1141                	addi	sp,sp,-16
    20000416:	e422                	sd	s0,8(sp)
    20000418:	0800                	addi	s0,sp,16
    2000041a:	0001                	nop
    2000041c:	6422                	ld	s0,8(sp)
    2000041e:	0141                	addi	sp,sp,16
    20000420:	8082                	ret

0000000020000422 <SupervisorSoftware_IRQn_Handler>:
    20000422:	1141                	addi	sp,sp,-16
    20000424:	e422                	sd	s0,8(sp)
    20000426:	0800                	addi	s0,sp,16
    20000428:	0001                	nop
    2000042a:	6422                	ld	s0,8(sp)
    2000042c:	0141                	addi	sp,sp,16
    2000042e:	8082                	ret

0000000020000430 <HypervisorSoftware_IRQn_Handler>:
    20000430:	1141                	addi	sp,sp,-16
    20000432:	e422                	sd	s0,8(sp)
    20000434:	0800                	addi	s0,sp,16
    20000436:	0001                	nop
    20000438:	6422                	ld	s0,8(sp)
    2000043a:	0141                	addi	sp,sp,16
    2000043c:	8082                	ret

000000002000043e <MachineSoftware_IRQn_Handler>:
    2000043e:	1141                	addi	sp,sp,-16
    20000440:	e406                	sd	ra,8(sp)
    20000442:	e022                	sd	s0,0(sp)
    20000444:	0800                	addi	s0,sp,16
    20000446:	4501                	li	a0,0
    20000448:	f1fff0ef          	jal	ra,20000366 <HAL_MachineSoftwareInterruptCallback>
    2000044c:	020007b7          	lui	a5,0x2000
    20000450:	0007a023          	sw	zero,0(a5) # 2000000 <__heap_size+0x1fff800>
    20000454:	020007b7          	lui	a5,0x2000
    20000458:	0007a223          	sw	zero,4(a5) # 2000004 <__heap_size+0x1fff804>
    2000045c:	020007b7          	lui	a5,0x2000
    20000460:	0007a423          	sw	zero,8(a5) # 2000008 <__heap_size+0x1fff808>
    20000464:	020007b7          	lui	a5,0x2000
    20000468:	0007a623          	sw	zero,12(a5) # 200000c <__heap_size+0x1fff80c>
    2000046c:	020007b7          	lui	a5,0x2000
    20000470:	0007a823          	sw	zero,16(a5) # 2000010 <__heap_size+0x1fff810>
    20000474:	450d                	li	a0,3
    20000476:	2f2000ef          	jal	ra,20000768 <HAL_CORE_clearIRQ>
    2000047a:	0001                	nop
    2000047c:	60a2                	ld	ra,8(sp)
    2000047e:	6402                	ld	s0,0(sp)
    20000480:	0141                	addi	sp,sp,16
    20000482:	8082                	ret

0000000020000484 <UserTimer_IRQn_Handler>:
    20000484:	1141                	addi	sp,sp,-16
    20000486:	e422                	sd	s0,8(sp)
    20000488:	0800                	addi	s0,sp,16
    2000048a:	0001                	nop
    2000048c:	6422                	ld	s0,8(sp)
    2000048e:	0141                	addi	sp,sp,16
    20000490:	8082                	ret

0000000020000492 <SupervisorTimer_IRQn_Handler>:
    20000492:	1141                	addi	sp,sp,-16
    20000494:	e422                	sd	s0,8(sp)
    20000496:	0800                	addi	s0,sp,16
    20000498:	0001                	nop
    2000049a:	6422                	ld	s0,8(sp)
    2000049c:	0141                	addi	sp,sp,16
    2000049e:	8082                	ret

00000000200004a0 <HypervisorTimer_IRQn_Handler>:
    200004a0:	1141                	addi	sp,sp,-16
    200004a2:	e422                	sd	s0,8(sp)
    200004a4:	0800                	addi	s0,sp,16
    200004a6:	0001                	nop
    200004a8:	6422                	ld	s0,8(sp)
    200004aa:	0141                	addi	sp,sp,16
    200004ac:	8082                	ret

00000000200004ae <MachineTimer_IRQn_Handler>:
    200004ae:	1141                	addi	sp,sp,-16
    200004b0:	e406                	sd	ra,8(sp)
    200004b2:	e022                	sd	s0,0(sp)
    200004b4:	0800                	addi	s0,sp,16
    200004b6:	557d                	li	a0,-1
    200004b8:	356000ef          	jal	ra,2000080e <HAL_CLINT_setTimerInterrupt>
    200004bc:	451d                	li	a0,7
    200004be:	2aa000ef          	jal	ra,20000768 <HAL_CORE_clearIRQ>
    200004c2:	0001                	nop
    200004c4:	60a2                	ld	ra,8(sp)
    200004c6:	6402                	ld	s0,0(sp)
    200004c8:	0141                	addi	sp,sp,16
    200004ca:	8082                	ret

00000000200004cc <UserExternal_IRQn_Handler>:
    200004cc:	1141                	addi	sp,sp,-16
    200004ce:	e422                	sd	s0,8(sp)
    200004d0:	0800                	addi	s0,sp,16
    200004d2:	0001                	nop
    200004d4:	6422                	ld	s0,8(sp)
    200004d6:	0141                	addi	sp,sp,16
    200004d8:	8082                	ret

00000000200004da <SupervisorExternal_IRQn_Handler>:
    200004da:	1141                	addi	sp,sp,-16
    200004dc:	e422                	sd	s0,8(sp)
    200004de:	0800                	addi	s0,sp,16
    200004e0:	0001                	nop
    200004e2:	6422                	ld	s0,8(sp)
    200004e4:	0141                	addi	sp,sp,16
    200004e6:	8082                	ret

00000000200004e8 <HypervisorExternal_IRQn_Handler>:
    200004e8:	1141                	addi	sp,sp,-16
    200004ea:	e422                	sd	s0,8(sp)
    200004ec:	0800                	addi	s0,sp,16
    200004ee:	0001                	nop
    200004f0:	6422                	ld	s0,8(sp)
    200004f2:	0141                	addi	sp,sp,16
    200004f4:	8082                	ret

00000000200004f6 <MachineExternal_IRQn_Handler>:
    200004f6:	1101                	addi	sp,sp,-32
    200004f8:	ec06                	sd	ra,24(sp)
    200004fa:	e822                	sd	s0,16(sp)
    200004fc:	1000                	addi	s0,sp,32
    200004fe:	4501                	li	a0,0
    20000500:	482000ef          	jal	ra,20000982 <HAL_PLIC_claimIRQ>
    20000504:	87aa                	mv	a5,a0
    20000506:	fef42623          	sw	a5,-20(s0)
    2000050a:	fec42783          	lw	a5,-20(s0)
    2000050e:	85be                	mv	a1,a5
    20000510:	4501                	li	a0,0
    20000512:	494000ef          	jal	ra,200009a6 <HAL_PLIC_completeIRQ>
    20000516:	452d                	li	a0,11
    20000518:	250000ef          	jal	ra,20000768 <HAL_CORE_clearIRQ>
    2000051c:	0001                	nop
    2000051e:	60e2                	ld	ra,24(sp)
    20000520:	6442                	ld	s0,16(sp)
    20000522:	6105                	addi	sp,sp,32
    20000524:	8082                	ret

0000000020000526 <system_init>:
    20000526:	1141                	addi	sp,sp,-16
    20000528:	e406                	sd	ra,8(sp)
    2000052a:	e022                	sd	s0,0(sp)
    2000052c:	0800                	addi	s0,sp,16
    2000052e:	dd3ff0ef          	jal	ra,20000300 <HAL_init>
    20000532:	0001                	nop
    20000534:	60a2                	ld	ra,8(sp)
    20000536:	6402                	ld	s0,0(sp)
    20000538:	0141                	addi	sp,sp,16
    2000053a:	8082                	ret

000000002000053c <trap_handler>:
    2000053c:	1101                	addi	sp,sp,-32
    2000053e:	ec06                	sd	ra,24(sp)
    20000540:	e822                	sd	s0,16(sp)
    20000542:	1000                	addi	s0,sp,32
    20000544:	342027f3          	csrr	a5,mcause
    20000548:	fef42623          	sw	a5,-20(s0)
    2000054c:	fec42783          	lw	a5,-20(s0)
    20000550:	0007871b          	sext.w	a4,a5
    20000554:	800007b7          	lui	a5,0x80000
    20000558:	07ad                	addi	a5,a5,11
    2000055a:	0cf70b63          	beq	a4,a5,20000630 <trap_handler+0xf4>
    2000055e:	fec42783          	lw	a5,-20(s0)
    20000562:	0007871b          	sext.w	a4,a5
    20000566:	800007b7          	lui	a5,0x80000
    2000056a:	07ad                	addi	a5,a5,11
    2000056c:	0ce7e563          	bltu	a5,a4,20000636 <trap_handler+0xfa>
    20000570:	fec42783          	lw	a5,-20(s0)
    20000574:	0007871b          	sext.w	a4,a5
    20000578:	800007b7          	lui	a5,0x80000
    2000057c:	079d                	addi	a5,a5,7
    2000057e:	0af70663          	beq	a4,a5,2000062a <trap_handler+0xee>
    20000582:	fec42783          	lw	a5,-20(s0)
    20000586:	0007871b          	sext.w	a4,a5
    2000058a:	800007b7          	lui	a5,0x80000
    2000058e:	079d                	addi	a5,a5,7
    20000590:	0ae7e363          	bltu	a5,a4,20000636 <trap_handler+0xfa>
    20000594:	fec42783          	lw	a5,-20(s0)
    20000598:	0007871b          	sext.w	a4,a5
    2000059c:	47c5                	li	a5,17
    2000059e:	02e7eb63          	bltu	a5,a4,200005d4 <trap_handler+0x98>
    200005a2:	fec42783          	lw	a5,-20(s0)
    200005a6:	0007871b          	sext.w	a4,a5
    200005aa:	47c5                	li	a5,17
    200005ac:	08e7e563          	bltu	a5,a4,20000636 <trap_handler+0xfa>
    200005b0:	fec46783          	lwu	a5,-20(s0)
    200005b4:	00279713          	slli	a4,a5,0x2
    200005b8:	00003797          	auipc	a5,0x3
    200005bc:	19878793          	addi	a5,a5,408 # 20003750 <__errno+0x24>
    200005c0:	97ba                	add	a5,a5,a4
    200005c2:	439c                	lw	a5,0(a5)
    200005c4:	0007871b          	sext.w	a4,a5
    200005c8:	00003797          	auipc	a5,0x3
    200005cc:	18878793          	addi	a5,a5,392 # 20003750 <__errno+0x24>
    200005d0:	97ba                	add	a5,a5,a4
    200005d2:	8782                	jr	a5
    200005d4:	fec42783          	lw	a5,-20(s0)
    200005d8:	0007871b          	sext.w	a4,a5
    200005dc:	800007b7          	lui	a5,0x80000
    200005e0:	078d                	addi	a5,a5,3
    200005e2:	04f70163          	beq	a4,a5,20000624 <trap_handler+0xe8>
    200005e6:	a881                	j	20000636 <trap_handler+0xfa>
    200005e8:	da1ff0ef          	jal	ra,20000388 <InstructionAddressMisalign_Exception_Handler>
    200005ec:	a0b1                	j	20000638 <trap_handler+0xfc>
    200005ee:	da9ff0ef          	jal	ra,20000396 <InstructionAccessFault_Exception_Handler>
    200005f2:	a099                	j	20000638 <trap_handler+0xfc>
    200005f4:	db1ff0ef          	jal	ra,200003a4 <IllegalInstruction_Exception_Handler>
    200005f8:	a081                	j	20000638 <trap_handler+0xfc>
    200005fa:	db9ff0ef          	jal	ra,200003b2 <Breakpoint_Exception_Handler>
    200005fe:	a82d                	j	20000638 <trap_handler+0xfc>
    20000600:	dc1ff0ef          	jal	ra,200003c0 <LoadAddressMisaligne_Exception_handler>
    20000604:	a815                	j	20000638 <trap_handler+0xfc>
    20000606:	dc9ff0ef          	jal	ra,200003ce <LoadAccessFault_Exception_handler>
    2000060a:	a03d                	j	20000638 <trap_handler+0xfc>
    2000060c:	dd1ff0ef          	jal	ra,200003dc <StoreAMOAddressMisalign_Exception_handler>
    20000610:	a025                	j	20000638 <trap_handler+0xfc>
    20000612:	dd9ff0ef          	jal	ra,200003ea <StoreAMOAccessFault_Exception_handler>
    20000616:	a00d                	j	20000638 <trap_handler+0xfc>
    20000618:	de1ff0ef          	jal	ra,200003f8 <EnvironmentCallUMode_Exception_handler>
    2000061c:	a831                	j	20000638 <trap_handler+0xfc>
    2000061e:	de9ff0ef          	jal	ra,20000406 <EnvironmentCallMMode_Exception_handler>
    20000622:	a819                	j	20000638 <trap_handler+0xfc>
    20000624:	e1bff0ef          	jal	ra,2000043e <MachineSoftware_IRQn_Handler>
    20000628:	a801                	j	20000638 <trap_handler+0xfc>
    2000062a:	e85ff0ef          	jal	ra,200004ae <MachineTimer_IRQn_Handler>
    2000062e:	a029                	j	20000638 <trap_handler+0xfc>
    20000630:	ec7ff0ef          	jal	ra,200004f6 <MachineExternal_IRQn_Handler>
    20000634:	a011                	j	20000638 <trap_handler+0xfc>
    20000636:	0001                	nop
    20000638:	0001                	nop
    2000063a:	60e2                	ld	ra,24(sp)
    2000063c:	6442                	ld	s0,16(sp)
    2000063e:	6105                	addi	sp,sp,32
    20000640:	8082                	ret

0000000020000642 <_brk>:
    20000642:	1101                	addi	sp,sp,-32
    20000644:	ec22                	sd	s0,24(sp)
    20000646:	1000                	addi	s0,sp,32
    20000648:	fea43423          	sd	a0,-24(s0)
    2000064c:	e8000797          	auipc	a5,0xe8000
    20000650:	a6478793          	addi	a5,a5,-1436 # 80000b0 <__brk>
    20000654:	fe843703          	ld	a4,-24(s0)
    20000658:	e398                	sd	a4,0(a5)
    2000065a:	4781                	li	a5,0
    2000065c:	853e                	mv	a0,a5
    2000065e:	6462                	ld	s0,24(sp)
    20000660:	6105                	addi	sp,sp,32
    20000662:	8082                	ret

0000000020000664 <_sbrk>:
    20000664:	7179                	addi	sp,sp,-48
    20000666:	f422                	sd	s0,40(sp)
    20000668:	1800                	addi	s0,sp,48
    2000066a:	fca43c23          	sd	a0,-40(s0)
    2000066e:	e8000797          	auipc	a5,0xe8000
    20000672:	a4278793          	addi	a5,a5,-1470 # 80000b0 <__brk>
    20000676:	639c                	ld	a5,0(a5)
    20000678:	fef43423          	sd	a5,-24(s0)
    2000067c:	82818713          	addi	a4,gp,-2008 # 80000d8 <_heap_start>
    20000680:	02818793          	addi	a5,gp,40 # 80008d8 <_heap_end>
    20000684:	00f71463          	bne	a4,a5,2000068c <_sbrk+0x28>
    20000688:	57fd                	li	a5,-1
    2000068a:	a0a9                	j	200006d4 <_sbrk+0x70>
    2000068c:	e8000797          	auipc	a5,0xe8000
    20000690:	a2478793          	addi	a5,a5,-1500 # 80000b0 <__brk>
    20000694:	6398                	ld	a4,0(a5)
    20000696:	fd843783          	ld	a5,-40(s0)
    2000069a:	973e                	add	a4,a4,a5
    2000069c:	02818793          	addi	a5,gp,40 # 80008d8 <_heap_end>
    200006a0:	02f77263          	bgeu	a4,a5,200006c4 <_sbrk+0x60>
    200006a4:	e8000797          	auipc	a5,0xe8000
    200006a8:	a0c78793          	addi	a5,a5,-1524 # 80000b0 <__brk>
    200006ac:	6398                	ld	a4,0(a5)
    200006ae:	fd843783          	ld	a5,-40(s0)
    200006b2:	973e                	add	a4,a4,a5
    200006b4:	e8000797          	auipc	a5,0xe8000
    200006b8:	9fc78793          	addi	a5,a5,-1540 # 80000b0 <__brk>
    200006bc:	e398                	sd	a4,0(a5)
    200006be:	fe843783          	ld	a5,-24(s0)
    200006c2:	a809                	j	200006d4 <_sbrk+0x70>
    200006c4:	e8000797          	auipc	a5,0xe8000
    200006c8:	9ec78793          	addi	a5,a5,-1556 # 80000b0 <__brk>
    200006cc:	02818713          	addi	a4,gp,40 # 80008d8 <_heap_end>
    200006d0:	e398                	sd	a4,0(a5)
    200006d2:	57fd                	li	a5,-1
    200006d4:	853e                	mv	a0,a5
    200006d6:	7422                	ld	s0,40(sp)
    200006d8:	6145                	addi	sp,sp,48
    200006da:	8082                	ret

00000000200006dc <HAL_CORE_disableGlobalInterrupt>:
    200006dc:	1101                	addi	sp,sp,-32
    200006de:	ec22                	sd	s0,24(sp)
    200006e0:	1000                	addi	s0,sp,32
    200006e2:	47a1                	li	a5,8
    200006e4:	fef42623          	sw	a5,-20(s0)
    200006e8:	fec42783          	lw	a5,-20(s0)
    200006ec:	3007b073          	csrc	mstatus,a5
    200006f0:	0001                	nop
    200006f2:	6462                	ld	s0,24(sp)
    200006f4:	6105                	addi	sp,sp,32
    200006f6:	8082                	ret

00000000200006f8 <HAL_CORE_enableGlobalInterrupt>:
    200006f8:	1101                	addi	sp,sp,-32
    200006fa:	ec22                	sd	s0,24(sp)
    200006fc:	1000                	addi	s0,sp,32
    200006fe:	47a1                	li	a5,8
    20000700:	fef42623          	sw	a5,-20(s0)
    20000704:	fec42783          	lw	a5,-20(s0)
    20000708:	3007a073          	csrs	mstatus,a5
    2000070c:	0001                	nop
    2000070e:	6462                	ld	s0,24(sp)
    20000710:	6105                	addi	sp,sp,32
    20000712:	8082                	ret

0000000020000714 <HAL_CORE_disableIRQ>:
    20000714:	7179                	addi	sp,sp,-48
    20000716:	f422                	sd	s0,40(sp)
    20000718:	1800                	addi	s0,sp,48
    2000071a:	87aa                	mv	a5,a0
    2000071c:	fcf42e23          	sw	a5,-36(s0)
    20000720:	fdc42783          	lw	a5,-36(s0)
    20000724:	4705                	li	a4,1
    20000726:	00f717bb          	sllw	a5,a4,a5
    2000072a:	fef42623          	sw	a5,-20(s0)
    2000072e:	fec42783          	lw	a5,-20(s0)
    20000732:	3047b073          	csrc	mie,a5
    20000736:	0001                	nop
    20000738:	7422                	ld	s0,40(sp)
    2000073a:	6145                	addi	sp,sp,48
    2000073c:	8082                	ret

000000002000073e <HAL_CORE_enableIRQ>:
    2000073e:	7179                	addi	sp,sp,-48
    20000740:	f422                	sd	s0,40(sp)
    20000742:	1800                	addi	s0,sp,48
    20000744:	87aa                	mv	a5,a0
    20000746:	fcf42e23          	sw	a5,-36(s0)
    2000074a:	fdc42783          	lw	a5,-36(s0)
    2000074e:	4705                	li	a4,1
    20000750:	00f717bb          	sllw	a5,a4,a5
    20000754:	fef42623          	sw	a5,-20(s0)
    20000758:	fec42783          	lw	a5,-20(s0)
    2000075c:	3047a073          	csrs	mie,a5
    20000760:	0001                	nop
    20000762:	7422                	ld	s0,40(sp)
    20000764:	6145                	addi	sp,sp,48
    20000766:	8082                	ret

0000000020000768 <HAL_CORE_clearIRQ>:
    20000768:	7179                	addi	sp,sp,-48
    2000076a:	f422                	sd	s0,40(sp)
    2000076c:	1800                	addi	s0,sp,48
    2000076e:	87aa                	mv	a5,a0
    20000770:	fcf42e23          	sw	a5,-36(s0)
    20000774:	fdc42783          	lw	a5,-36(s0)
    20000778:	4705                	li	a4,1
    2000077a:	00f717bb          	sllw	a5,a4,a5
    2000077e:	fef42623          	sw	a5,-20(s0)
    20000782:	fec42783          	lw	a5,-20(s0)
    20000786:	3447b073          	csrc	mip,a5
    2000078a:	0001                	nop
    2000078c:	7422                	ld	s0,40(sp)
    2000078e:	6145                	addi	sp,sp,48
    20000790:	8082                	ret

0000000020000792 <HAL_CLINT_triggerSoftwareInterrupt>:
    20000792:	1101                	addi	sp,sp,-32
    20000794:	ec22                	sd	s0,24(sp)
    20000796:	1000                	addi	s0,sp,32
    20000798:	87aa                	mv	a5,a0
    2000079a:	fef42623          	sw	a5,-20(s0)
    2000079e:	020007b7          	lui	a5,0x2000
    200007a2:	439c                	lw	a5,0(a5)
    200007a4:	0007869b          	sext.w	a3,a5
    200007a8:	fec42783          	lw	a5,-20(s0)
    200007ac:	4705                	li	a4,1
    200007ae:	00f717bb          	sllw	a5,a4,a5
    200007b2:	0007871b          	sext.w	a4,a5
    200007b6:	020007b7          	lui	a5,0x2000
    200007ba:	8f55                	or	a4,a4,a3
    200007bc:	2701                	sext.w	a4,a4
    200007be:	c398                	sw	a4,0(a5)
    200007c0:	0001                	nop
    200007c2:	6462                	ld	s0,24(sp)
    200007c4:	6105                	addi	sp,sp,32
    200007c6:	8082                	ret

00000000200007c8 <HAL_CLINT_getTime>:
    200007c8:	1101                	addi	sp,sp,-32
    200007ca:	ec22                	sd	s0,24(sp)
    200007cc:	1000                	addi	s0,sp,32
    200007ce:	0200c7b7          	lui	a5,0x200c
    200007d2:	17f1                	addi	a5,a5,-4
    200007d4:	439c                	lw	a5,0(a5)
    200007d6:	fef42623          	sw	a5,-20(s0)
    200007da:	0200c7b7          	lui	a5,0x200c
    200007de:	17e1                	addi	a5,a5,-8
    200007e0:	439c                	lw	a5,0(a5)
    200007e2:	fef42423          	sw	a5,-24(s0)
    200007e6:	0200c7b7          	lui	a5,0x200c
    200007ea:	17f1                	addi	a5,a5,-4
    200007ec:	4398                	lw	a4,0(a5)
    200007ee:	fec42783          	lw	a5,-20(s0)
    200007f2:	2781                	sext.w	a5,a5
    200007f4:	fce79de3          	bne	a5,a4,200007ce <HAL_CLINT_getTime+0x6>
    200007f8:	fec46783          	lwu	a5,-20(s0)
    200007fc:	02079713          	slli	a4,a5,0x20
    20000800:	fe846783          	lwu	a5,-24(s0)
    20000804:	8fd9                	or	a5,a5,a4
    20000806:	853e                	mv	a0,a5
    20000808:	6462                	ld	s0,24(sp)
    2000080a:	6105                	addi	sp,sp,32
    2000080c:	8082                	ret

000000002000080e <HAL_CLINT_setTimerInterrupt>:
    2000080e:	1101                	addi	sp,sp,-32
    20000810:	ec22                	sd	s0,24(sp)
    20000812:	1000                	addi	s0,sp,32
    20000814:	fea43423          	sd	a0,-24(s0)
    20000818:	020047b7          	lui	a5,0x2004
    2000081c:	0791                	addi	a5,a5,4
    2000081e:	577d                	li	a4,-1
    20000820:	c398                	sw	a4,0(a5)
    20000822:	020047b7          	lui	a5,0x2004
    20000826:	fe843703          	ld	a4,-24(s0)
    2000082a:	2701                	sext.w	a4,a4
    2000082c:	c398                	sw	a4,0(a5)
    2000082e:	fe843783          	ld	a5,-24(s0)
    20000832:	0207d713          	srli	a4,a5,0x20
    20000836:	020047b7          	lui	a5,0x2004
    2000083a:	0791                	addi	a5,a5,4
    2000083c:	2701                	sext.w	a4,a4
    2000083e:	c398                	sw	a4,0(a5)
    20000840:	0001                	nop
    20000842:	6462                	ld	s0,24(sp)
    20000844:	6105                	addi	sp,sp,32
    20000846:	8082                	ret

0000000020000848 <HAL_PLIC_disable>:
    20000848:	7179                	addi	sp,sp,-48
    2000084a:	f422                	sd	s0,40(sp)
    2000084c:	1800                	addi	s0,sp,48
    2000084e:	87aa                	mv	a5,a0
    20000850:	872e                	mv	a4,a1
    20000852:	fcf42e23          	sw	a5,-36(s0)
    20000856:	87ba                	mv	a5,a4
    20000858:	fcf42c23          	sw	a5,-40(s0)
    2000085c:	fd842783          	lw	a5,-40(s0)
    20000860:	8bfd                	andi	a5,a5,31
    20000862:	fef42623          	sw	a5,-20(s0)
    20000866:	0c000737          	lui	a4,0xc000
    2000086a:	fdc46683          	lwu	a3,-36(s0)
    2000086e:	6785                	lui	a5,0x1
    20000870:	80078793          	addi	a5,a5,-2048 # 800 <__heap_size>
    20000874:	97b6                	add	a5,a5,a3
    20000876:	078a                	slli	a5,a5,0x2
    20000878:	97ba                	add	a5,a5,a4
    2000087a:	439c                	lw	a5,0(a5)
    2000087c:	0007861b          	sext.w	a2,a5
    20000880:	fec42783          	lw	a5,-20(s0)
    20000884:	4705                	li	a4,1
    20000886:	00f717bb          	sllw	a5,a4,a5
    2000088a:	2781                	sext.w	a5,a5
    2000088c:	fff7c793          	not	a5,a5
    20000890:	2781                	sext.w	a5,a5
    20000892:	2781                	sext.w	a5,a5
    20000894:	0c0006b7          	lui	a3,0xc000
    20000898:	8732                	mv	a4,a2
    2000089a:	8ff9                	and	a5,a5,a4
    2000089c:	0007871b          	sext.w	a4,a5
    200008a0:	fdc46603          	lwu	a2,-36(s0)
    200008a4:	6785                	lui	a5,0x1
    200008a6:	80078793          	addi	a5,a5,-2048 # 800 <__heap_size>
    200008aa:	97b2                	add	a5,a5,a2
    200008ac:	078a                	slli	a5,a5,0x2
    200008ae:	97b6                	add	a5,a5,a3
    200008b0:	c398                	sw	a4,0(a5)
    200008b2:	0001                	nop
    200008b4:	7422                	ld	s0,40(sp)
    200008b6:	6145                	addi	sp,sp,48
    200008b8:	8082                	ret

00000000200008ba <HAL_PLIC_enable>:
    200008ba:	7179                	addi	sp,sp,-48
    200008bc:	f422                	sd	s0,40(sp)
    200008be:	1800                	addi	s0,sp,48
    200008c0:	87aa                	mv	a5,a0
    200008c2:	872e                	mv	a4,a1
    200008c4:	fcf42e23          	sw	a5,-36(s0)
    200008c8:	87ba                	mv	a5,a4
    200008ca:	fcf42c23          	sw	a5,-40(s0)
    200008ce:	fd842783          	lw	a5,-40(s0)
    200008d2:	8bfd                	andi	a5,a5,31
    200008d4:	fef42623          	sw	a5,-20(s0)
    200008d8:	0c000737          	lui	a4,0xc000
    200008dc:	fdc46683          	lwu	a3,-36(s0)
    200008e0:	6785                	lui	a5,0x1
    200008e2:	80078793          	addi	a5,a5,-2048 # 800 <__heap_size>
    200008e6:	97b6                	add	a5,a5,a3
    200008e8:	078a                	slli	a5,a5,0x2
    200008ea:	97ba                	add	a5,a5,a4
    200008ec:	439c                	lw	a5,0(a5)
    200008ee:	0007861b          	sext.w	a2,a5
    200008f2:	fec42783          	lw	a5,-20(s0)
    200008f6:	4705                	li	a4,1
    200008f8:	00f717bb          	sllw	a5,a4,a5
    200008fc:	2781                	sext.w	a5,a5
    200008fe:	2781                	sext.w	a5,a5
    20000900:	0c0006b7          	lui	a3,0xc000
    20000904:	8732                	mv	a4,a2
    20000906:	8fd9                	or	a5,a5,a4
    20000908:	0007871b          	sext.w	a4,a5
    2000090c:	fdc46603          	lwu	a2,-36(s0)
    20000910:	6785                	lui	a5,0x1
    20000912:	80078793          	addi	a5,a5,-2048 # 800 <__heap_size>
    20000916:	97b2                	add	a5,a5,a2
    20000918:	078a                	slli	a5,a5,0x2
    2000091a:	97b6                	add	a5,a5,a3
    2000091c:	c398                	sw	a4,0(a5)
    2000091e:	0001                	nop
    20000920:	7422                	ld	s0,40(sp)
    20000922:	6145                	addi	sp,sp,48
    20000924:	8082                	ret

0000000020000926 <HAL_PLIC_setPriority>:
    20000926:	1101                	addi	sp,sp,-32
    20000928:	ec22                	sd	s0,24(sp)
    2000092a:	1000                	addi	s0,sp,32
    2000092c:	87aa                	mv	a5,a0
    2000092e:	872e                	mv	a4,a1
    20000930:	fef42623          	sw	a5,-20(s0)
    20000934:	87ba                	mv	a5,a4
    20000936:	fef42423          	sw	a5,-24(s0)
    2000093a:	0c000737          	lui	a4,0xc000
    2000093e:	fec46783          	lwu	a5,-20(s0)
    20000942:	078a                	slli	a5,a5,0x2
    20000944:	97ba                	add	a5,a5,a4
    20000946:	fe842703          	lw	a4,-24(s0)
    2000094a:	c398                	sw	a4,0(a5)
    2000094c:	0001                	nop
    2000094e:	6462                	ld	s0,24(sp)
    20000950:	6105                	addi	sp,sp,32
    20000952:	8082                	ret

0000000020000954 <HAL_PLIC_setPriorityThreshold>:
    20000954:	1101                	addi	sp,sp,-32
    20000956:	ec22                	sd	s0,24(sp)
    20000958:	1000                	addi	s0,sp,32
    2000095a:	87aa                	mv	a5,a0
    2000095c:	872e                	mv	a4,a1
    2000095e:	fef42623          	sw	a5,-20(s0)
    20000962:	87ba                	mv	a5,a4
    20000964:	fef42423          	sw	a5,-24(s0)
    20000968:	0c200737          	lui	a4,0xc200
    2000096c:	fec46783          	lwu	a5,-20(s0)
    20000970:	078e                	slli	a5,a5,0x3
    20000972:	97ba                	add	a5,a5,a4
    20000974:	fe842703          	lw	a4,-24(s0)
    20000978:	c398                	sw	a4,0(a5)
    2000097a:	0001                	nop
    2000097c:	6462                	ld	s0,24(sp)
    2000097e:	6105                	addi	sp,sp,32
    20000980:	8082                	ret

0000000020000982 <HAL_PLIC_claimIRQ>:
    20000982:	1101                	addi	sp,sp,-32
    20000984:	ec22                	sd	s0,24(sp)
    20000986:	1000                	addi	s0,sp,32
    20000988:	87aa                	mv	a5,a0
    2000098a:	fef42623          	sw	a5,-20(s0)
    2000098e:	0c200737          	lui	a4,0xc200
    20000992:	fec46783          	lwu	a5,-20(s0)
    20000996:	078e                	slli	a5,a5,0x3
    20000998:	97ba                	add	a5,a5,a4
    2000099a:	43dc                	lw	a5,4(a5)
    2000099c:	2781                	sext.w	a5,a5
    2000099e:	853e                	mv	a0,a5
    200009a0:	6462                	ld	s0,24(sp)
    200009a2:	6105                	addi	sp,sp,32
    200009a4:	8082                	ret

00000000200009a6 <HAL_PLIC_completeIRQ>:
    200009a6:	1101                	addi	sp,sp,-32
    200009a8:	ec22                	sd	s0,24(sp)
    200009aa:	1000                	addi	s0,sp,32
    200009ac:	87aa                	mv	a5,a0
    200009ae:	872e                	mv	a4,a1
    200009b0:	fef42623          	sw	a5,-20(s0)
    200009b4:	87ba                	mv	a5,a4
    200009b6:	fef42423          	sw	a5,-24(s0)
    200009ba:	0c200737          	lui	a4,0xc200
    200009be:	fec46783          	lwu	a5,-20(s0)
    200009c2:	078e                	slli	a5,a5,0x3
    200009c4:	97ba                	add	a5,a5,a4
    200009c6:	fe842703          	lw	a4,-24(s0)
    200009ca:	c3d8                	sw	a4,4(a5)
    200009cc:	0001                	nop
    200009ce:	6462                	ld	s0,24(sp)
    200009d0:	6105                	addi	sp,sp,32
    200009d2:	8082                	ret

00000000200009d4 <HAL_GPIO_init>:
    200009d4:	7179                	addi	sp,sp,-48
    200009d6:	f422                	sd	s0,40(sp)
    200009d8:	1800                	addi	s0,sp,48
    200009da:	fea43423          	sd	a0,-24(s0)
    200009de:	feb43023          	sd	a1,-32(s0)
    200009e2:	87b2                	mv	a5,a2
    200009e4:	fcf42e23          	sw	a5,-36(s0)
    200009e8:	fe043783          	ld	a5,-32(s0)
    200009ec:	439c                	lw	a5,0(a5)
    200009ee:	cb81                	beqz	a5,200009fe <HAL_GPIO_init+0x2a>
    200009f0:	fe043783          	ld	a5,-32(s0)
    200009f4:	439c                	lw	a5,0(a5)
    200009f6:	873e                	mv	a4,a5
    200009f8:	4785                	li	a5,1
    200009fa:	00f71f63          	bne	a4,a5,20000a18 <HAL_GPIO_init+0x44>
    200009fe:	fe843783          	ld	a5,-24(s0)
    20000a02:	43dc                	lw	a5,4(a5)
    20000a04:	0007871b          	sext.w	a4,a5
    20000a08:	fdc42783          	lw	a5,-36(s0)
    20000a0c:	8fd9                	or	a5,a5,a4
    20000a0e:	0007871b          	sext.w	a4,a5
    20000a12:	fe843783          	ld	a5,-24(s0)
    20000a16:	c3d8                	sw	a4,4(a5)
    20000a18:	fe043783          	ld	a5,-32(s0)
    20000a1c:	439c                	lw	a5,0(a5)
    20000a1e:	873e                	mv	a4,a5
    20000a20:	4785                	li	a5,1
    20000a22:	00f70963          	beq	a4,a5,20000a34 <HAL_GPIO_init+0x60>
    20000a26:	fe043783          	ld	a5,-32(s0)
    20000a2a:	439c                	lw	a5,0(a5)
    20000a2c:	873e                	mv	a4,a5
    20000a2e:	4785                	li	a5,1
    20000a30:	00f71f63          	bne	a4,a5,20000a4e <HAL_GPIO_init+0x7a>
    20000a34:	fe843783          	ld	a5,-24(s0)
    20000a38:	479c                	lw	a5,8(a5)
    20000a3a:	0007871b          	sext.w	a4,a5
    20000a3e:	fdc42783          	lw	a5,-36(s0)
    20000a42:	8fd9                	or	a5,a5,a4
    20000a44:	0007871b          	sext.w	a4,a5
    20000a48:	fe843783          	ld	a5,-24(s0)
    20000a4c:	c798                	sw	a4,8(a5)
    20000a4e:	fe043783          	ld	a5,-32(s0)
    20000a52:	43dc                	lw	a5,4(a5)
    20000a54:	873e                	mv	a4,a5
    20000a56:	4785                	li	a5,1
    20000a58:	02f71063          	bne	a4,a5,20000a78 <HAL_GPIO_init+0xa4>
    20000a5c:	fe843783          	ld	a5,-24(s0)
    20000a60:	4b9c                	lw	a5,16(a5)
    20000a62:	0007871b          	sext.w	a4,a5
    20000a66:	fdc42783          	lw	a5,-36(s0)
    20000a6a:	8fd9                	or	a5,a5,a4
    20000a6c:	0007871b          	sext.w	a4,a5
    20000a70:	fe843783          	ld	a5,-24(s0)
    20000a74:	cb98                	sw	a4,16(a5)
    20000a76:	a00d                	j	20000a98 <HAL_GPIO_init+0xc4>
    20000a78:	fe843783          	ld	a5,-24(s0)
    20000a7c:	4b9c                	lw	a5,16(a5)
    20000a7e:	0007871b          	sext.w	a4,a5
    20000a82:	fdc42783          	lw	a5,-36(s0)
    20000a86:	fff7c793          	not	a5,a5
    20000a8a:	2781                	sext.w	a5,a5
    20000a8c:	8ff9                	and	a5,a5,a4
    20000a8e:	0007871b          	sext.w	a4,a5
    20000a92:	fe843783          	ld	a5,-24(s0)
    20000a96:	cb98                	sw	a4,16(a5)
    20000a98:	fe043783          	ld	a5,-32(s0)
    20000a9c:	479c                	lw	a5,8(a5)
    20000a9e:	873e                	mv	a4,a5
    20000aa0:	4785                	li	a5,1
    20000aa2:	02f71063          	bne	a4,a5,20000ac2 <HAL_GPIO_init+0xee>
    20000aa6:	fe843783          	ld	a5,-24(s0)
    20000aaa:	4bdc                	lw	a5,20(a5)
    20000aac:	0007871b          	sext.w	a4,a5
    20000ab0:	fdc42783          	lw	a5,-36(s0)
    20000ab4:	8fd9                	or	a5,a5,a4
    20000ab6:	0007871b          	sext.w	a4,a5
    20000aba:	fe843783          	ld	a5,-24(s0)
    20000abe:	cbd8                	sw	a4,20(a5)
    20000ac0:	a00d                	j	20000ae2 <HAL_GPIO_init+0x10e>
    20000ac2:	fe843783          	ld	a5,-24(s0)
    20000ac6:	4bdc                	lw	a5,20(a5)
    20000ac8:	0007871b          	sext.w	a4,a5
    20000acc:	fdc42783          	lw	a5,-36(s0)
    20000ad0:	fff7c793          	not	a5,a5
    20000ad4:	2781                	sext.w	a5,a5
    20000ad6:	8ff9                	and	a5,a5,a4
    20000ad8:	0007871b          	sext.w	a4,a5
    20000adc:	fe843783          	ld	a5,-24(s0)
    20000ae0:	cbd8                	sw	a4,20(a5)
    20000ae2:	0001                	nop
    20000ae4:	7422                	ld	s0,40(sp)
    20000ae6:	6145                	addi	sp,sp,48
    20000ae8:	8082                	ret

0000000020000aea <HAL_GPIO_readPin>:
    20000aea:	1101                	addi	sp,sp,-32
    20000aec:	ec22                	sd	s0,24(sp)
    20000aee:	1000                	addi	s0,sp,32
    20000af0:	fea43423          	sd	a0,-24(s0)
    20000af4:	87ae                	mv	a5,a1
    20000af6:	fef42223          	sw	a5,-28(s0)
    20000afa:	fe843783          	ld	a5,-24(s0)
    20000afe:	439c                	lw	a5,0(a5)
    20000b00:	0007871b          	sext.w	a4,a5
    20000b04:	fe442783          	lw	a5,-28(s0)
    20000b08:	8ff9                	and	a5,a5,a4
    20000b0a:	2781                	sext.w	a5,a5
    20000b0c:	00f037b3          	snez	a5,a5
    20000b10:	0ff7f793          	zext.b	a5,a5
    20000b14:	853e                	mv	a0,a5
    20000b16:	6462                	ld	s0,24(sp)
    20000b18:	6105                	addi	sp,sp,32
    20000b1a:	8082                	ret

0000000020000b1c <HAL_GPIO_writePin>:
    20000b1c:	1101                	addi	sp,sp,-32
    20000b1e:	ec22                	sd	s0,24(sp)
    20000b20:	1000                	addi	s0,sp,32
    20000b22:	fea43423          	sd	a0,-24(s0)
    20000b26:	87ae                	mv	a5,a1
    20000b28:	8732                	mv	a4,a2
    20000b2a:	fef42223          	sw	a5,-28(s0)
    20000b2e:	87ba                	mv	a5,a4
    20000b30:	fef401a3          	sb	a5,-29(s0)
    20000b34:	fe344783          	lbu	a5,-29(s0)
    20000b38:	0ff7f793          	zext.b	a5,a5
    20000b3c:	cf99                	beqz	a5,20000b5a <HAL_GPIO_writePin+0x3e>
    20000b3e:	fe843783          	ld	a5,-24(s0)
    20000b42:	47dc                	lw	a5,12(a5)
    20000b44:	0007871b          	sext.w	a4,a5
    20000b48:	fe442783          	lw	a5,-28(s0)
    20000b4c:	8fd9                	or	a5,a5,a4
    20000b4e:	0007871b          	sext.w	a4,a5
    20000b52:	fe843783          	ld	a5,-24(s0)
    20000b56:	c7d8                	sw	a4,12(a5)
    20000b58:	a00d                	j	20000b7a <HAL_GPIO_writePin+0x5e>
    20000b5a:	fe843783          	ld	a5,-24(s0)
    20000b5e:	47dc                	lw	a5,12(a5)
    20000b60:	0007871b          	sext.w	a4,a5
    20000b64:	fe442783          	lw	a5,-28(s0)
    20000b68:	fff7c793          	not	a5,a5
    20000b6c:	2781                	sext.w	a5,a5
    20000b6e:	8ff9                	and	a5,a5,a4
    20000b70:	0007871b          	sext.w	a4,a5
    20000b74:	fe843783          	ld	a5,-24(s0)
    20000b78:	c7d8                	sw	a4,12(a5)
    20000b7a:	0001                	nop
    20000b7c:	6462                	ld	s0,24(sp)
    20000b7e:	6105                	addi	sp,sp,32
    20000b80:	8082                	ret

0000000020000b82 <HAL_I2C_init>:
    20000b82:	1101                	addi	sp,sp,-32
    20000b84:	ec06                	sd	ra,24(sp)
    20000b86:	e822                	sd	s0,16(sp)
    20000b88:	1000                	addi	s0,sp,32
    20000b8a:	fea43423          	sd	a0,-24(s0)
    20000b8e:	feb43023          	sd	a1,-32(s0)
    20000b92:	fe843503          	ld	a0,-24(s0)
    20000b96:	028000ef          	jal	ra,20000bbe <HAL_I2C_disable>
    20000b9a:	fe843783          	ld	a5,-24(s0)
    20000b9e:	0007a223          	sw	zero,4(a5)
    20000ba2:	fe843783          	ld	a5,-24(s0)
    20000ba6:	04700713          	li	a4,71
    20000baa:	c398                	sw	a4,0(a5)
    20000bac:	fe843503          	ld	a0,-24(s0)
    20000bb0:	036000ef          	jal	ra,20000be6 <HAL_I2C_enable>
    20000bb4:	0001                	nop
    20000bb6:	60e2                	ld	ra,24(sp)
    20000bb8:	6442                	ld	s0,16(sp)
    20000bba:	6105                	addi	sp,sp,32
    20000bbc:	8082                	ret

0000000020000bbe <HAL_I2C_disable>:
    20000bbe:	1101                	addi	sp,sp,-32
    20000bc0:	ec22                	sd	s0,24(sp)
    20000bc2:	1000                	addi	s0,sp,32
    20000bc4:	fea43423          	sd	a0,-24(s0)
    20000bc8:	fe843783          	ld	a5,-24(s0)
    20000bcc:	479c                	lw	a5,8(a5)
    20000bce:	2781                	sext.w	a5,a5
    20000bd0:	f7f7f793          	andi	a5,a5,-129
    20000bd4:	0007871b          	sext.w	a4,a5
    20000bd8:	fe843783          	ld	a5,-24(s0)
    20000bdc:	c798                	sw	a4,8(a5)
    20000bde:	0001                	nop
    20000be0:	6462                	ld	s0,24(sp)
    20000be2:	6105                	addi	sp,sp,32
    20000be4:	8082                	ret

0000000020000be6 <HAL_I2C_enable>:
    20000be6:	1101                	addi	sp,sp,-32
    20000be8:	ec22                	sd	s0,24(sp)
    20000bea:	1000                	addi	s0,sp,32
    20000bec:	fea43423          	sd	a0,-24(s0)
    20000bf0:	fe843783          	ld	a5,-24(s0)
    20000bf4:	479c                	lw	a5,8(a5)
    20000bf6:	2781                	sext.w	a5,a5
    20000bf8:	0807e793          	ori	a5,a5,128
    20000bfc:	0007871b          	sext.w	a4,a5
    20000c00:	fe843783          	ld	a5,-24(s0)
    20000c04:	c798                	sw	a4,8(a5)
    20000c06:	0001                	nop
    20000c08:	6462                	ld	s0,24(sp)
    20000c0a:	6105                	addi	sp,sp,32
    20000c0c:	8082                	ret

0000000020000c0e <HAL_I2C_getFlag>:
    20000c0e:	1101                	addi	sp,sp,-32
    20000c10:	ec22                	sd	s0,24(sp)
    20000c12:	1000                	addi	s0,sp,32
    20000c14:	fea43423          	sd	a0,-24(s0)
    20000c18:	87ae                	mv	a5,a1
    20000c1a:	fef42223          	sw	a5,-28(s0)
    20000c1e:	fe843783          	ld	a5,-24(s0)
    20000c22:	4b9c                	lw	a5,16(a5)
    20000c24:	0007871b          	sext.w	a4,a5
    20000c28:	fe442783          	lw	a5,-28(s0)
    20000c2c:	8ff9                	and	a5,a5,a4
    20000c2e:	2781                	sext.w	a5,a5
    20000c30:	00f037b3          	snez	a5,a5
    20000c34:	0ff7f793          	zext.b	a5,a5
    20000c38:	2781                	sext.w	a5,a5
    20000c3a:	853e                	mv	a0,a5
    20000c3c:	6462                	ld	s0,24(sp)
    20000c3e:	6105                	addi	sp,sp,32
    20000c40:	8082                	ret

0000000020000c42 <HAL_I2C_waitForFlag>:
    20000c42:	7179                	addi	sp,sp,-48
    20000c44:	f406                	sd	ra,40(sp)
    20000c46:	f022                	sd	s0,32(sp)
    20000c48:	1800                	addi	s0,sp,48
    20000c4a:	fea43423          	sd	a0,-24(s0)
    20000c4e:	87ae                	mv	a5,a1
    20000c50:	fef42223          	sw	a5,-28(s0)
    20000c54:	87b2                	mv	a5,a2
    20000c56:	fef42023          	sw	a5,-32(s0)
    20000c5a:	87b6                	mv	a5,a3
    20000c5c:	fcf42e23          	sw	a5,-36(s0)
    20000c60:	87ba                	mv	a5,a4
    20000c62:	fcf42c23          	sw	a5,-40(s0)
    20000c66:	a02d                	j	20000c90 <HAL_I2C_waitForFlag+0x4e>
    20000c68:	fd842783          	lw	a5,-40(s0)
    20000c6c:	2781                	sext.w	a5,a5
    20000c6e:	e391                	bnez	a5,20000c72 <HAL_I2C_waitForFlag+0x30>
    20000c70:	a005                	j	20000c90 <HAL_I2C_waitForFlag+0x4e>
    20000c72:	b57ff0ef          	jal	ra,200007c8 <HAL_CLINT_getTime>
    20000c76:	86aa                	mv	a3,a0
    20000c78:	fdc42703          	lw	a4,-36(s0)
    20000c7c:	fd842783          	lw	a5,-40(s0)
    20000c80:	9fb9                	addw	a5,a5,a4
    20000c82:	2781                	sext.w	a5,a5
    20000c84:	1782                	slli	a5,a5,0x20
    20000c86:	9381                	srli	a5,a5,0x20
    20000c88:	00d7f463          	bgeu	a5,a3,20000c90 <HAL_I2C_waitForFlag+0x4e>
    20000c8c:	478d                	li	a5,3
    20000c8e:	a00d                	j	20000cb0 <HAL_I2C_waitForFlag+0x6e>
    20000c90:	fe442783          	lw	a5,-28(s0)
    20000c94:	85be                	mv	a1,a5
    20000c96:	fe843503          	ld	a0,-24(s0)
    20000c9a:	f75ff0ef          	jal	ra,20000c0e <HAL_I2C_getFlag>
    20000c9e:	87aa                	mv	a5,a0
    20000ca0:	0007871b          	sext.w	a4,a5
    20000ca4:	fe042783          	lw	a5,-32(s0)
    20000ca8:	2781                	sext.w	a5,a5
    20000caa:	fae79fe3          	bne	a5,a4,20000c68 <HAL_I2C_waitForFlag+0x26>
    20000cae:	4781                	li	a5,0
    20000cb0:	853e                	mv	a0,a5
    20000cb2:	70a2                	ld	ra,40(sp)
    20000cb4:	7402                	ld	s0,32(sp)
    20000cb6:	6145                	addi	sp,sp,48
    20000cb8:	8082                	ret

0000000020000cba <HAL_I2C_waitForTransaction>:
    20000cba:	1101                	addi	sp,sp,-32
    20000cbc:	ec06                	sd	ra,24(sp)
    20000cbe:	e822                	sd	s0,16(sp)
    20000cc0:	1000                	addi	s0,sp,32
    20000cc2:	fea43423          	sd	a0,-24(s0)
    20000cc6:	87ae                	mv	a5,a1
    20000cc8:	8732                	mv	a4,a2
    20000cca:	fef42223          	sw	a5,-28(s0)
    20000cce:	87ba                	mv	a5,a4
    20000cd0:	fef42023          	sw	a5,-32(s0)
    20000cd4:	fe042703          	lw	a4,-32(s0)
    20000cd8:	fe442783          	lw	a5,-28(s0)
    20000cdc:	86be                	mv	a3,a5
    20000cde:	4601                	li	a2,0
    20000ce0:	4589                	li	a1,2
    20000ce2:	fe843503          	ld	a0,-24(s0)
    20000ce6:	f5dff0ef          	jal	ra,20000c42 <HAL_I2C_waitForFlag>
    20000cea:	87aa                	mv	a5,a0
    20000cec:	2781                	sext.w	a5,a5
    20000cee:	cb81                	beqz	a5,20000cfe <HAL_I2C_waitForTransaction+0x44>
    20000cf0:	fe843783          	ld	a5,-24(s0)
    20000cf4:	04000713          	li	a4,64
    20000cf8:	cb98                	sw	a4,16(a5)
    20000cfa:	478d                	li	a5,3
    20000cfc:	a03d                	j	20000d2a <HAL_I2C_waitForTransaction+0x70>
    20000cfe:	fe042703          	lw	a4,-32(s0)
    20000d02:	fe442783          	lw	a5,-28(s0)
    20000d06:	86be                	mv	a3,a5
    20000d08:	4601                	li	a2,0
    20000d0a:	08000593          	li	a1,128
    20000d0e:	fe843503          	ld	a0,-24(s0)
    20000d12:	f31ff0ef          	jal	ra,20000c42 <HAL_I2C_waitForFlag>
    20000d16:	87aa                	mv	a5,a0
    20000d18:	2781                	sext.w	a5,a5
    20000d1a:	cb81                	beqz	a5,20000d2a <HAL_I2C_waitForTransaction+0x70>
    20000d1c:	fe843783          	ld	a5,-24(s0)
    20000d20:	04000713          	li	a4,64
    20000d24:	cb98                	sw	a4,16(a5)
    20000d26:	4785                	li	a5,1
    20000d28:	a009                	j	20000d2a <HAL_I2C_waitForTransaction+0x70>
    20000d2a:	853e                	mv	a0,a5
    20000d2c:	60e2                	ld	ra,24(sp)
    20000d2e:	6442                	ld	s0,16(sp)
    20000d30:	6105                	addi	sp,sp,32
    20000d32:	8082                	ret

0000000020000d34 <HAL_I2C_masterReceive>:
    20000d34:	715d                	addi	sp,sp,-80
    20000d36:	e486                	sd	ra,72(sp)
    20000d38:	e0a2                	sd	s0,64(sp)
    20000d3a:	0880                	addi	s0,sp,80
    20000d3c:	fca43423          	sd	a0,-56(s0)
    20000d40:	87ae                	mv	a5,a1
    20000d42:	fac43c23          	sd	a2,-72(s0)
    20000d46:	fae43823          	sd	a4,-80(s0)
    20000d4a:	fcf41323          	sh	a5,-58(s0)
    20000d4e:	87b6                	mv	a5,a3
    20000d50:	fcf41223          	sh	a5,-60(s0)
    20000d54:	a75ff0ef          	jal	ra,200007c8 <HAL_CLINT_getTime>
    20000d58:	fea43023          	sd	a0,-32(s0)
    20000d5c:	fe043783          	ld	a5,-32(s0)
    20000d60:	2781                	sext.w	a5,a5
    20000d62:	fb043703          	ld	a4,-80(s0)
    20000d66:	2701                	sext.w	a4,a4
    20000d68:	86be                	mv	a3,a5
    20000d6a:	4601                	li	a2,0
    20000d6c:	04000593          	li	a1,64
    20000d70:	fc843503          	ld	a0,-56(s0)
    20000d74:	ecfff0ef          	jal	ra,20000c42 <HAL_I2C_waitForFlag>
    20000d78:	87aa                	mv	a5,a0
    20000d7a:	2781                	sext.w	a5,a5
    20000d7c:	c399                	beqz	a5,20000d82 <HAL_I2C_masterReceive+0x4e>
    20000d7e:	4789                	li	a5,2
    20000d80:	a285                	j	20000ee0 <HAL_I2C_masterReceive+0x1ac>
    20000d82:	fc645783          	lhu	a5,-58(s0)
    20000d86:	2781                	sext.w	a5,a5
    20000d88:	0017979b          	slliw	a5,a5,0x1
    20000d8c:	2781                	sext.w	a5,a5
    20000d8e:	2781                	sext.w	a5,a5
    20000d90:	0017e793          	ori	a5,a5,1
    20000d94:	0007871b          	sext.w	a4,a5
    20000d98:	fc843783          	ld	a5,-56(s0)
    20000d9c:	c7d8                	sw	a4,12(a5)
    20000d9e:	fc843783          	ld	a5,-56(s0)
    20000da2:	09000713          	li	a4,144
    20000da6:	cb98                	sw	a4,16(a5)
    20000da8:	fe043783          	ld	a5,-32(s0)
    20000dac:	2781                	sext.w	a5,a5
    20000dae:	fb043703          	ld	a4,-80(s0)
    20000db2:	2701                	sext.w	a4,a4
    20000db4:	863a                	mv	a2,a4
    20000db6:	85be                	mv	a1,a5
    20000db8:	fc843503          	ld	a0,-56(s0)
    20000dbc:	effff0ef          	jal	ra,20000cba <HAL_I2C_waitForTransaction>
    20000dc0:	87aa                	mv	a5,a0
    20000dc2:	fcf42e23          	sw	a5,-36(s0)
    20000dc6:	fdc42783          	lw	a5,-36(s0)
    20000dca:	2781                	sext.w	a5,a5
    20000dcc:	c781                	beqz	a5,20000dd4 <HAL_I2C_masterReceive+0xa0>
    20000dce:	fdc42783          	lw	a5,-36(s0)
    20000dd2:	a239                	j	20000ee0 <HAL_I2C_masterReceive+0x1ac>
    20000dd4:	fe041723          	sh	zero,-18(s0)
    20000dd8:	a061                	j	20000e60 <HAL_I2C_masterReceive+0x12c>
    20000dda:	fc843783          	ld	a5,-56(s0)
    20000dde:	02000713          	li	a4,32
    20000de2:	cb98                	sw	a4,16(a5)
    20000de4:	fe043783          	ld	a5,-32(s0)
    20000de8:	2781                	sext.w	a5,a5
    20000dea:	fb043703          	ld	a4,-80(s0)
    20000dee:	2701                	sext.w	a4,a4
    20000df0:	86be                	mv	a3,a5
    20000df2:	4601                	li	a2,0
    20000df4:	08000593          	li	a1,128
    20000df8:	fc843503          	ld	a0,-56(s0)
    20000dfc:	e47ff0ef          	jal	ra,20000c42 <HAL_I2C_waitForFlag>
    20000e00:	87aa                	mv	a5,a0
    20000e02:	2781                	sext.w	a5,a5
    20000e04:	cb81                	beqz	a5,20000e14 <HAL_I2C_masterReceive+0xe0>
    20000e06:	fc843783          	ld	a5,-56(s0)
    20000e0a:	06800713          	li	a4,104
    20000e0e:	cb98                	sw	a4,16(a5)
    20000e10:	4785                	li	a5,1
    20000e12:	a0f9                	j	20000ee0 <HAL_I2C_masterReceive+0x1ac>
    20000e14:	fe043783          	ld	a5,-32(s0)
    20000e18:	2781                	sext.w	a5,a5
    20000e1a:	fb043703          	ld	a4,-80(s0)
    20000e1e:	2701                	sext.w	a4,a4
    20000e20:	86be                	mv	a3,a5
    20000e22:	4601                	li	a2,0
    20000e24:	4589                	li	a1,2
    20000e26:	fc843503          	ld	a0,-56(s0)
    20000e2a:	e19ff0ef          	jal	ra,20000c42 <HAL_I2C_waitForFlag>
    20000e2e:	87aa                	mv	a5,a0
    20000e30:	2781                	sext.w	a5,a5
    20000e32:	c399                	beqz	a5,20000e38 <HAL_I2C_masterReceive+0x104>
    20000e34:	478d                	li	a5,3
    20000e36:	a06d                	j	20000ee0 <HAL_I2C_masterReceive+0x1ac>
    20000e38:	fc843783          	ld	a5,-56(s0)
    20000e3c:	47dc                	lw	a5,12(a5)
    20000e3e:	2781                	sext.w	a5,a5
    20000e40:	0ff7f713          	zext.b	a4,a5
    20000e44:	fb843783          	ld	a5,-72(s0)
    20000e48:	00e78023          	sb	a4,0(a5)
    20000e4c:	fb843783          	ld	a5,-72(s0)
    20000e50:	0785                	addi	a5,a5,1
    20000e52:	faf43c23          	sd	a5,-72(s0)
    20000e56:	fee45783          	lhu	a5,-18(s0)
    20000e5a:	2785                	addiw	a5,a5,1
    20000e5c:	fef41723          	sh	a5,-18(s0)
    20000e60:	fee45783          	lhu	a5,-18(s0)
    20000e64:	0007871b          	sext.w	a4,a5
    20000e68:	fc445783          	lhu	a5,-60(s0)
    20000e6c:	2781                	sext.w	a5,a5
    20000e6e:	37fd                	addiw	a5,a5,-1
    20000e70:	2781                	sext.w	a5,a5
    20000e72:	f6f744e3          	blt	a4,a5,20000dda <HAL_I2C_masterReceive+0xa6>
    20000e76:	fc843783          	ld	a5,-56(s0)
    20000e7a:	06800713          	li	a4,104
    20000e7e:	cb98                	sw	a4,16(a5)
    20000e80:	fe043783          	ld	a5,-32(s0)
    20000e84:	2781                	sext.w	a5,a5
    20000e86:	fb043703          	ld	a4,-80(s0)
    20000e8a:	2701                	sext.w	a4,a4
    20000e8c:	86be                	mv	a3,a5
    20000e8e:	4601                	li	a2,0
    20000e90:	4589                	li	a1,2
    20000e92:	fc843503          	ld	a0,-56(s0)
    20000e96:	dadff0ef          	jal	ra,20000c42 <HAL_I2C_waitForFlag>
    20000e9a:	87aa                	mv	a5,a0
    20000e9c:	2781                	sext.w	a5,a5
    20000e9e:	c399                	beqz	a5,20000ea4 <HAL_I2C_masterReceive+0x170>
    20000ea0:	478d                	li	a5,3
    20000ea2:	a83d                	j	20000ee0 <HAL_I2C_masterReceive+0x1ac>
    20000ea4:	fc843783          	ld	a5,-56(s0)
    20000ea8:	47dc                	lw	a5,12(a5)
    20000eaa:	2781                	sext.w	a5,a5
    20000eac:	0ff7f713          	zext.b	a4,a5
    20000eb0:	fb843783          	ld	a5,-72(s0)
    20000eb4:	00e78023          	sb	a4,0(a5)
    20000eb8:	fe043783          	ld	a5,-32(s0)
    20000ebc:	2781                	sext.w	a5,a5
    20000ebe:	fb043703          	ld	a4,-80(s0)
    20000ec2:	2701                	sext.w	a4,a4
    20000ec4:	86be                	mv	a3,a5
    20000ec6:	4601                	li	a2,0
    20000ec8:	04000593          	li	a1,64
    20000ecc:	fc843503          	ld	a0,-56(s0)
    20000ed0:	d73ff0ef          	jal	ra,20000c42 <HAL_I2C_waitForFlag>
    20000ed4:	87aa                	mv	a5,a0
    20000ed6:	2781                	sext.w	a5,a5
    20000ed8:	c399                	beqz	a5,20000ede <HAL_I2C_masterReceive+0x1aa>
    20000eda:	4785                	li	a5,1
    20000edc:	a011                	j	20000ee0 <HAL_I2C_masterReceive+0x1ac>
    20000ede:	4781                	li	a5,0
    20000ee0:	853e                	mv	a0,a5
    20000ee2:	60a6                	ld	ra,72(sp)
    20000ee4:	6406                	ld	s0,64(sp)
    20000ee6:	6161                	addi	sp,sp,80
    20000ee8:	8082                	ret

0000000020000eea <HAL_I2C_masterTransmit>:
    20000eea:	715d                	addi	sp,sp,-80
    20000eec:	e486                	sd	ra,72(sp)
    20000eee:	e0a2                	sd	s0,64(sp)
    20000ef0:	0880                	addi	s0,sp,80
    20000ef2:	fca43423          	sd	a0,-56(s0)
    20000ef6:	87ae                	mv	a5,a1
    20000ef8:	fac43c23          	sd	a2,-72(s0)
    20000efc:	fae43823          	sd	a4,-80(s0)
    20000f00:	fcf41323          	sh	a5,-58(s0)
    20000f04:	87b6                	mv	a5,a3
    20000f06:	fcf41223          	sh	a5,-60(s0)
    20000f0a:	8bfff0ef          	jal	ra,200007c8 <HAL_CLINT_getTime>
    20000f0e:	fea43023          	sd	a0,-32(s0)
    20000f12:	fe043783          	ld	a5,-32(s0)
    20000f16:	2781                	sext.w	a5,a5
    20000f18:	fb043703          	ld	a4,-80(s0)
    20000f1c:	2701                	sext.w	a4,a4
    20000f1e:	86be                	mv	a3,a5
    20000f20:	4601                	li	a2,0
    20000f22:	04000593          	li	a1,64
    20000f26:	fc843503          	ld	a0,-56(s0)
    20000f2a:	d19ff0ef          	jal	ra,20000c42 <HAL_I2C_waitForFlag>
    20000f2e:	87aa                	mv	a5,a0
    20000f30:	2781                	sext.w	a5,a5
    20000f32:	c399                	beqz	a5,20000f38 <HAL_I2C_masterTransmit+0x4e>
    20000f34:	4789                	li	a5,2
    20000f36:	aa15                	j	2000106a <HAL_I2C_masterTransmit+0x180>
    20000f38:	fc645783          	lhu	a5,-58(s0)
    20000f3c:	2781                	sext.w	a5,a5
    20000f3e:	0017979b          	slliw	a5,a5,0x1
    20000f42:	2781                	sext.w	a5,a5
    20000f44:	0007871b          	sext.w	a4,a5
    20000f48:	fc843783          	ld	a5,-56(s0)
    20000f4c:	c7d8                	sw	a4,12(a5)
    20000f4e:	fc843783          	ld	a5,-56(s0)
    20000f52:	09000713          	li	a4,144
    20000f56:	cb98                	sw	a4,16(a5)
    20000f58:	fe043783          	ld	a5,-32(s0)
    20000f5c:	2781                	sext.w	a5,a5
    20000f5e:	fb043703          	ld	a4,-80(s0)
    20000f62:	2701                	sext.w	a4,a4
    20000f64:	863a                	mv	a2,a4
    20000f66:	85be                	mv	a1,a5
    20000f68:	fc843503          	ld	a0,-56(s0)
    20000f6c:	d4fff0ef          	jal	ra,20000cba <HAL_I2C_waitForTransaction>
    20000f70:	87aa                	mv	a5,a0
    20000f72:	fcf42e23          	sw	a5,-36(s0)
    20000f76:	fdc42783          	lw	a5,-36(s0)
    20000f7a:	2781                	sext.w	a5,a5
    20000f7c:	c781                	beqz	a5,20000f84 <HAL_I2C_masterTransmit+0x9a>
    20000f7e:	fdc42783          	lw	a5,-36(s0)
    20000f82:	a0e5                	j	2000106a <HAL_I2C_masterTransmit+0x180>
    20000f84:	fe041723          	sh	zero,-18(s0)
    20000f88:	a8b1                	j	20000fe4 <HAL_I2C_masterTransmit+0xfa>
    20000f8a:	fb843783          	ld	a5,-72(s0)
    20000f8e:	0007c783          	lbu	a5,0(a5)
    20000f92:	0007871b          	sext.w	a4,a5
    20000f96:	fc843783          	ld	a5,-56(s0)
    20000f9a:	c7d8                	sw	a4,12(a5)
    20000f9c:	fb843783          	ld	a5,-72(s0)
    20000fa0:	0785                	addi	a5,a5,1
    20000fa2:	faf43c23          	sd	a5,-72(s0)
    20000fa6:	fc843783          	ld	a5,-56(s0)
    20000faa:	4741                	li	a4,16
    20000fac:	cb98                	sw	a4,16(a5)
    20000fae:	fe043783          	ld	a5,-32(s0)
    20000fb2:	2781                	sext.w	a5,a5
    20000fb4:	fb043703          	ld	a4,-80(s0)
    20000fb8:	2701                	sext.w	a4,a4
    20000fba:	863a                	mv	a2,a4
    20000fbc:	85be                	mv	a1,a5
    20000fbe:	fc843503          	ld	a0,-56(s0)
    20000fc2:	cf9ff0ef          	jal	ra,20000cba <HAL_I2C_waitForTransaction>
    20000fc6:	87aa                	mv	a5,a0
    20000fc8:	fcf42e23          	sw	a5,-36(s0)
    20000fcc:	fdc42783          	lw	a5,-36(s0)
    20000fd0:	2781                	sext.w	a5,a5
    20000fd2:	c781                	beqz	a5,20000fda <HAL_I2C_masterTransmit+0xf0>
    20000fd4:	fdc42783          	lw	a5,-36(s0)
    20000fd8:	a849                	j	2000106a <HAL_I2C_masterTransmit+0x180>
    20000fda:	fee45783          	lhu	a5,-18(s0)
    20000fde:	2785                	addiw	a5,a5,1
    20000fe0:	fef41723          	sh	a5,-18(s0)
    20000fe4:	fee45783          	lhu	a5,-18(s0)
    20000fe8:	0007871b          	sext.w	a4,a5
    20000fec:	fc445783          	lhu	a5,-60(s0)
    20000ff0:	2781                	sext.w	a5,a5
    20000ff2:	37fd                	addiw	a5,a5,-1
    20000ff4:	2781                	sext.w	a5,a5
    20000ff6:	f8f74ae3          	blt	a4,a5,20000f8a <HAL_I2C_masterTransmit+0xa0>
    20000ffa:	fb843783          	ld	a5,-72(s0)
    20000ffe:	0007c783          	lbu	a5,0(a5)
    20001002:	0007871b          	sext.w	a4,a5
    20001006:	fc843783          	ld	a5,-56(s0)
    2000100a:	c7d8                	sw	a4,12(a5)
    2000100c:	fc843783          	ld	a5,-56(s0)
    20001010:	05000713          	li	a4,80
    20001014:	cb98                	sw	a4,16(a5)
    20001016:	fe043783          	ld	a5,-32(s0)
    2000101a:	2781                	sext.w	a5,a5
    2000101c:	fb043703          	ld	a4,-80(s0)
    20001020:	2701                	sext.w	a4,a4
    20001022:	863a                	mv	a2,a4
    20001024:	85be                	mv	a1,a5
    20001026:	fc843503          	ld	a0,-56(s0)
    2000102a:	c91ff0ef          	jal	ra,20000cba <HAL_I2C_waitForTransaction>
    2000102e:	87aa                	mv	a5,a0
    20001030:	fcf42e23          	sw	a5,-36(s0)
    20001034:	fdc42783          	lw	a5,-36(s0)
    20001038:	2781                	sext.w	a5,a5
    2000103a:	c781                	beqz	a5,20001042 <HAL_I2C_masterTransmit+0x158>
    2000103c:	fdc42783          	lw	a5,-36(s0)
    20001040:	a02d                	j	2000106a <HAL_I2C_masterTransmit+0x180>
    20001042:	fe043783          	ld	a5,-32(s0)
    20001046:	2781                	sext.w	a5,a5
    20001048:	fb043703          	ld	a4,-80(s0)
    2000104c:	2701                	sext.w	a4,a4
    2000104e:	86be                	mv	a3,a5
    20001050:	4601                	li	a2,0
    20001052:	04000593          	li	a1,64
    20001056:	fc843503          	ld	a0,-56(s0)
    2000105a:	be9ff0ef          	jal	ra,20000c42 <HAL_I2C_waitForFlag>
    2000105e:	87aa                	mv	a5,a0
    20001060:	2781                	sext.w	a5,a5
    20001062:	c399                	beqz	a5,20001068 <HAL_I2C_masterTransmit+0x17e>
    20001064:	4785                	li	a5,1
    20001066:	a011                	j	2000106a <HAL_I2C_masterTransmit+0x180>
    20001068:	4781                	li	a5,0
    2000106a:	853e                	mv	a0,a5
    2000106c:	60a6                	ld	ra,72(sp)
    2000106e:	6406                	ld	s0,64(sp)
    20001070:	6161                	addi	sp,sp,80
    20001072:	8082                	ret

0000000020001074 <HAL_I2C_readMemory>:
    20001074:	715d                	addi	sp,sp,-80
    20001076:	e486                	sd	ra,72(sp)
    20001078:	e0a2                	sd	s0,64(sp)
    2000107a:	0880                	addi	s0,sp,80
    2000107c:	fca43423          	sd	a0,-56(s0)
    20001080:	fad43c23          	sd	a3,-72(s0)
    20001084:	faf43823          	sd	a5,-80(s0)
    20001088:	87ae                	mv	a5,a1
    2000108a:	fcf41323          	sh	a5,-58(s0)
    2000108e:	87b2                	mv	a5,a2
    20001090:	fcf402a3          	sb	a5,-59(s0)
    20001094:	87ba                	mv	a5,a4
    20001096:	fcf41123          	sh	a5,-62(s0)
    2000109a:	f2eff0ef          	jal	ra,200007c8 <HAL_CLINT_getTime>
    2000109e:	fea43023          	sd	a0,-32(s0)
    200010a2:	fe043783          	ld	a5,-32(s0)
    200010a6:	2781                	sext.w	a5,a5
    200010a8:	fb043703          	ld	a4,-80(s0)
    200010ac:	2701                	sext.w	a4,a4
    200010ae:	86be                	mv	a3,a5
    200010b0:	4601                	li	a2,0
    200010b2:	04000593          	li	a1,64
    200010b6:	fc843503          	ld	a0,-56(s0)
    200010ba:	b89ff0ef          	jal	ra,20000c42 <HAL_I2C_waitForFlag>
    200010be:	87aa                	mv	a5,a0
    200010c0:	2781                	sext.w	a5,a5
    200010c2:	c399                	beqz	a5,200010c8 <HAL_I2C_readMemory+0x54>
    200010c4:	4789                	li	a5,2
    200010c6:	a2fd                	j	200012b4 <HAL_I2C_readMemory+0x240>
    200010c8:	fc645783          	lhu	a5,-58(s0)
    200010cc:	2781                	sext.w	a5,a5
    200010ce:	0017979b          	slliw	a5,a5,0x1
    200010d2:	2781                	sext.w	a5,a5
    200010d4:	0007871b          	sext.w	a4,a5
    200010d8:	fc843783          	ld	a5,-56(s0)
    200010dc:	c7d8                	sw	a4,12(a5)
    200010de:	fc843783          	ld	a5,-56(s0)
    200010e2:	09000713          	li	a4,144
    200010e6:	cb98                	sw	a4,16(a5)
    200010e8:	fe043783          	ld	a5,-32(s0)
    200010ec:	2781                	sext.w	a5,a5
    200010ee:	fb043703          	ld	a4,-80(s0)
    200010f2:	2701                	sext.w	a4,a4
    200010f4:	863a                	mv	a2,a4
    200010f6:	85be                	mv	a1,a5
    200010f8:	fc843503          	ld	a0,-56(s0)
    200010fc:	bbfff0ef          	jal	ra,20000cba <HAL_I2C_waitForTransaction>
    20001100:	87aa                	mv	a5,a0
    20001102:	fcf42e23          	sw	a5,-36(s0)
    20001106:	fdc42783          	lw	a5,-36(s0)
    2000110a:	2781                	sext.w	a5,a5
    2000110c:	c781                	beqz	a5,20001114 <HAL_I2C_readMemory+0xa0>
    2000110e:	fdc42783          	lw	a5,-36(s0)
    20001112:	a24d                	j	200012b4 <HAL_I2C_readMemory+0x240>
    20001114:	fc544783          	lbu	a5,-59(s0)
    20001118:	0007871b          	sext.w	a4,a5
    2000111c:	fc843783          	ld	a5,-56(s0)
    20001120:	c7d8                	sw	a4,12(a5)
    20001122:	fc843783          	ld	a5,-56(s0)
    20001126:	4741                	li	a4,16
    20001128:	cb98                	sw	a4,16(a5)
    2000112a:	fe043783          	ld	a5,-32(s0)
    2000112e:	2781                	sext.w	a5,a5
    20001130:	fb043703          	ld	a4,-80(s0)
    20001134:	2701                	sext.w	a4,a4
    20001136:	863a                	mv	a2,a4
    20001138:	85be                	mv	a1,a5
    2000113a:	fc843503          	ld	a0,-56(s0)
    2000113e:	b7dff0ef          	jal	ra,20000cba <HAL_I2C_waitForTransaction>
    20001142:	87aa                	mv	a5,a0
    20001144:	fcf42e23          	sw	a5,-36(s0)
    20001148:	fdc42783          	lw	a5,-36(s0)
    2000114c:	2781                	sext.w	a5,a5
    2000114e:	c781                	beqz	a5,20001156 <HAL_I2C_readMemory+0xe2>
    20001150:	fdc42783          	lw	a5,-36(s0)
    20001154:	a285                	j	200012b4 <HAL_I2C_readMemory+0x240>
    20001156:	fc645783          	lhu	a5,-58(s0)
    2000115a:	2781                	sext.w	a5,a5
    2000115c:	0017979b          	slliw	a5,a5,0x1
    20001160:	2781                	sext.w	a5,a5
    20001162:	2781                	sext.w	a5,a5
    20001164:	0017e793          	ori	a5,a5,1
    20001168:	0007871b          	sext.w	a4,a5
    2000116c:	fc843783          	ld	a5,-56(s0)
    20001170:	c7d8                	sw	a4,12(a5)
    20001172:	fc843783          	ld	a5,-56(s0)
    20001176:	09000713          	li	a4,144
    2000117a:	cb98                	sw	a4,16(a5)
    2000117c:	fe043783          	ld	a5,-32(s0)
    20001180:	2781                	sext.w	a5,a5
    20001182:	fb043703          	ld	a4,-80(s0)
    20001186:	2701                	sext.w	a4,a4
    20001188:	863a                	mv	a2,a4
    2000118a:	85be                	mv	a1,a5
    2000118c:	fc843503          	ld	a0,-56(s0)
    20001190:	b2bff0ef          	jal	ra,20000cba <HAL_I2C_waitForTransaction>
    20001194:	87aa                	mv	a5,a0
    20001196:	fcf42e23          	sw	a5,-36(s0)
    2000119a:	fdc42783          	lw	a5,-36(s0)
    2000119e:	2781                	sext.w	a5,a5
    200011a0:	c781                	beqz	a5,200011a8 <HAL_I2C_readMemory+0x134>
    200011a2:	fdc42783          	lw	a5,-36(s0)
    200011a6:	a239                	j	200012b4 <HAL_I2C_readMemory+0x240>
    200011a8:	fe041723          	sh	zero,-18(s0)
    200011ac:	a061                	j	20001234 <HAL_I2C_readMemory+0x1c0>
    200011ae:	fc843783          	ld	a5,-56(s0)
    200011b2:	02000713          	li	a4,32
    200011b6:	cb98                	sw	a4,16(a5)
    200011b8:	fe043783          	ld	a5,-32(s0)
    200011bc:	2781                	sext.w	a5,a5
    200011be:	fb043703          	ld	a4,-80(s0)
    200011c2:	2701                	sext.w	a4,a4
    200011c4:	86be                	mv	a3,a5
    200011c6:	4601                	li	a2,0
    200011c8:	08000593          	li	a1,128
    200011cc:	fc843503          	ld	a0,-56(s0)
    200011d0:	a73ff0ef          	jal	ra,20000c42 <HAL_I2C_waitForFlag>
    200011d4:	87aa                	mv	a5,a0
    200011d6:	2781                	sext.w	a5,a5
    200011d8:	cb81                	beqz	a5,200011e8 <HAL_I2C_readMemory+0x174>
    200011da:	fc843783          	ld	a5,-56(s0)
    200011de:	06800713          	li	a4,104
    200011e2:	cb98                	sw	a4,16(a5)
    200011e4:	4785                	li	a5,1
    200011e6:	a0f9                	j	200012b4 <HAL_I2C_readMemory+0x240>
    200011e8:	fe043783          	ld	a5,-32(s0)
    200011ec:	2781                	sext.w	a5,a5
    200011ee:	fb043703          	ld	a4,-80(s0)
    200011f2:	2701                	sext.w	a4,a4
    200011f4:	86be                	mv	a3,a5
    200011f6:	4601                	li	a2,0
    200011f8:	4589                	li	a1,2
    200011fa:	fc843503          	ld	a0,-56(s0)
    200011fe:	a45ff0ef          	jal	ra,20000c42 <HAL_I2C_waitForFlag>
    20001202:	87aa                	mv	a5,a0
    20001204:	2781                	sext.w	a5,a5
    20001206:	c399                	beqz	a5,2000120c <HAL_I2C_readMemory+0x198>
    20001208:	478d                	li	a5,3
    2000120a:	a06d                	j	200012b4 <HAL_I2C_readMemory+0x240>
    2000120c:	fc843783          	ld	a5,-56(s0)
    20001210:	47dc                	lw	a5,12(a5)
    20001212:	2781                	sext.w	a5,a5
    20001214:	0ff7f713          	zext.b	a4,a5
    20001218:	fb843783          	ld	a5,-72(s0)
    2000121c:	00e78023          	sb	a4,0(a5)
    20001220:	fb843783          	ld	a5,-72(s0)
    20001224:	0785                	addi	a5,a5,1
    20001226:	faf43c23          	sd	a5,-72(s0)
    2000122a:	fee45783          	lhu	a5,-18(s0)
    2000122e:	2785                	addiw	a5,a5,1
    20001230:	fef41723          	sh	a5,-18(s0)
    20001234:	fee45783          	lhu	a5,-18(s0)
    20001238:	0007871b          	sext.w	a4,a5
    2000123c:	fc245783          	lhu	a5,-62(s0)
    20001240:	2781                	sext.w	a5,a5
    20001242:	37fd                	addiw	a5,a5,-1
    20001244:	2781                	sext.w	a5,a5
    20001246:	f6f744e3          	blt	a4,a5,200011ae <HAL_I2C_readMemory+0x13a>
    2000124a:	fc843783          	ld	a5,-56(s0)
    2000124e:	06800713          	li	a4,104
    20001252:	cb98                	sw	a4,16(a5)
    20001254:	fe043783          	ld	a5,-32(s0)
    20001258:	2781                	sext.w	a5,a5
    2000125a:	fb043703          	ld	a4,-80(s0)
    2000125e:	2701                	sext.w	a4,a4
    20001260:	86be                	mv	a3,a5
    20001262:	4601                	li	a2,0
    20001264:	4589                	li	a1,2
    20001266:	fc843503          	ld	a0,-56(s0)
    2000126a:	9d9ff0ef          	jal	ra,20000c42 <HAL_I2C_waitForFlag>
    2000126e:	87aa                	mv	a5,a0
    20001270:	2781                	sext.w	a5,a5
    20001272:	c399                	beqz	a5,20001278 <HAL_I2C_readMemory+0x204>
    20001274:	478d                	li	a5,3
    20001276:	a83d                	j	200012b4 <HAL_I2C_readMemory+0x240>
    20001278:	fc843783          	ld	a5,-56(s0)
    2000127c:	47dc                	lw	a5,12(a5)
    2000127e:	2781                	sext.w	a5,a5
    20001280:	0ff7f713          	zext.b	a4,a5
    20001284:	fb843783          	ld	a5,-72(s0)
    20001288:	00e78023          	sb	a4,0(a5)
    2000128c:	fe043783          	ld	a5,-32(s0)
    20001290:	2781                	sext.w	a5,a5
    20001292:	fb043703          	ld	a4,-80(s0)
    20001296:	2701                	sext.w	a4,a4
    20001298:	86be                	mv	a3,a5
    2000129a:	4601                	li	a2,0
    2000129c:	04000593          	li	a1,64
    200012a0:	fc843503          	ld	a0,-56(s0)
    200012a4:	99fff0ef          	jal	ra,20000c42 <HAL_I2C_waitForFlag>
    200012a8:	87aa                	mv	a5,a0
    200012aa:	2781                	sext.w	a5,a5
    200012ac:	c399                	beqz	a5,200012b2 <HAL_I2C_readMemory+0x23e>
    200012ae:	4785                	li	a5,1
    200012b0:	a011                	j	200012b4 <HAL_I2C_readMemory+0x240>
    200012b2:	4781                	li	a5,0
    200012b4:	853e                	mv	a0,a5
    200012b6:	60a6                	ld	ra,72(sp)
    200012b8:	6406                	ld	s0,64(sp)
    200012ba:	6161                	addi	sp,sp,80
    200012bc:	8082                	ret

00000000200012be <HAL_I2C_writeMemory>:
    200012be:	715d                	addi	sp,sp,-80
    200012c0:	e486                	sd	ra,72(sp)
    200012c2:	e0a2                	sd	s0,64(sp)
    200012c4:	0880                	addi	s0,sp,80
    200012c6:	fca43423          	sd	a0,-56(s0)
    200012ca:	fad43c23          	sd	a3,-72(s0)
    200012ce:	86ba                	mv	a3,a4
    200012d0:	873e                	mv	a4,a5
    200012d2:	87ae                	mv	a5,a1
    200012d4:	fcf41323          	sh	a5,-58(s0)
    200012d8:	87b2                	mv	a5,a2
    200012da:	fcf402a3          	sb	a5,-59(s0)
    200012de:	87b6                	mv	a5,a3
    200012e0:	fcf41123          	sh	a5,-62(s0)
    200012e4:	87ba                	mv	a5,a4
    200012e6:	faf42a23          	sw	a5,-76(s0)
    200012ea:	cdeff0ef          	jal	ra,200007c8 <HAL_CLINT_getTime>
    200012ee:	fea43023          	sd	a0,-32(s0)
    200012f2:	fe043783          	ld	a5,-32(s0)
    200012f6:	2781                	sext.w	a5,a5
    200012f8:	fb442703          	lw	a4,-76(s0)
    200012fc:	86be                	mv	a3,a5
    200012fe:	4601                	li	a2,0
    20001300:	04000593          	li	a1,64
    20001304:	fc843503          	ld	a0,-56(s0)
    20001308:	93bff0ef          	jal	ra,20000c42 <HAL_I2C_waitForFlag>
    2000130c:	87aa                	mv	a5,a0
    2000130e:	2781                	sext.w	a5,a5
    20001310:	c399                	beqz	a5,20001316 <HAL_I2C_writeMemory+0x58>
    20001312:	4789                	li	a5,2
    20001314:	a28d                	j	20001476 <HAL_I2C_writeMemory+0x1b8>
    20001316:	fc645783          	lhu	a5,-58(s0)
    2000131a:	2781                	sext.w	a5,a5
    2000131c:	0017979b          	slliw	a5,a5,0x1
    20001320:	2781                	sext.w	a5,a5
    20001322:	0007871b          	sext.w	a4,a5
    20001326:	fc843783          	ld	a5,-56(s0)
    2000132a:	c7d8                	sw	a4,12(a5)
    2000132c:	fc843783          	ld	a5,-56(s0)
    20001330:	09000713          	li	a4,144
    20001334:	cb98                	sw	a4,16(a5)
    20001336:	fe043783          	ld	a5,-32(s0)
    2000133a:	2781                	sext.w	a5,a5
    2000133c:	fb442703          	lw	a4,-76(s0)
    20001340:	863a                	mv	a2,a4
    20001342:	85be                	mv	a1,a5
    20001344:	fc843503          	ld	a0,-56(s0)
    20001348:	973ff0ef          	jal	ra,20000cba <HAL_I2C_waitForTransaction>
    2000134c:	87aa                	mv	a5,a0
    2000134e:	fcf42e23          	sw	a5,-36(s0)
    20001352:	fdc42783          	lw	a5,-36(s0)
    20001356:	2781                	sext.w	a5,a5
    20001358:	c781                	beqz	a5,20001360 <HAL_I2C_writeMemory+0xa2>
    2000135a:	fdc42783          	lw	a5,-36(s0)
    2000135e:	aa21                	j	20001476 <HAL_I2C_writeMemory+0x1b8>
    20001360:	fc544783          	lbu	a5,-59(s0)
    20001364:	0007871b          	sext.w	a4,a5
    20001368:	fc843783          	ld	a5,-56(s0)
    2000136c:	c7d8                	sw	a4,12(a5)
    2000136e:	fc843783          	ld	a5,-56(s0)
    20001372:	4741                	li	a4,16
    20001374:	cb98                	sw	a4,16(a5)
    20001376:	fe043783          	ld	a5,-32(s0)
    2000137a:	2781                	sext.w	a5,a5
    2000137c:	fb442703          	lw	a4,-76(s0)
    20001380:	863a                	mv	a2,a4
    20001382:	85be                	mv	a1,a5
    20001384:	fc843503          	ld	a0,-56(s0)
    20001388:	933ff0ef          	jal	ra,20000cba <HAL_I2C_waitForTransaction>
    2000138c:	87aa                	mv	a5,a0
    2000138e:	2781                	sext.w	a5,a5
    20001390:	c399                	beqz	a5,20001396 <HAL_I2C_writeMemory+0xd8>
    20001392:	4785                	li	a5,1
    20001394:	a0cd                	j	20001476 <HAL_I2C_writeMemory+0x1b8>
    20001396:	fe041723          	sh	zero,-18(s0)
    2000139a:	a8a9                	j	200013f4 <HAL_I2C_writeMemory+0x136>
    2000139c:	fb843783          	ld	a5,-72(s0)
    200013a0:	0007c783          	lbu	a5,0(a5)
    200013a4:	0007871b          	sext.w	a4,a5
    200013a8:	fc843783          	ld	a5,-56(s0)
    200013ac:	c7d8                	sw	a4,12(a5)
    200013ae:	fb843783          	ld	a5,-72(s0)
    200013b2:	0785                	addi	a5,a5,1
    200013b4:	faf43c23          	sd	a5,-72(s0)
    200013b8:	fc843783          	ld	a5,-56(s0)
    200013bc:	4741                	li	a4,16
    200013be:	cb98                	sw	a4,16(a5)
    200013c0:	fe043783          	ld	a5,-32(s0)
    200013c4:	2781                	sext.w	a5,a5
    200013c6:	fb442703          	lw	a4,-76(s0)
    200013ca:	863a                	mv	a2,a4
    200013cc:	85be                	mv	a1,a5
    200013ce:	fc843503          	ld	a0,-56(s0)
    200013d2:	8e9ff0ef          	jal	ra,20000cba <HAL_I2C_waitForTransaction>
    200013d6:	87aa                	mv	a5,a0
    200013d8:	fcf42e23          	sw	a5,-36(s0)
    200013dc:	fdc42783          	lw	a5,-36(s0)
    200013e0:	2781                	sext.w	a5,a5
    200013e2:	c781                	beqz	a5,200013ea <HAL_I2C_writeMemory+0x12c>
    200013e4:	fdc42783          	lw	a5,-36(s0)
    200013e8:	a079                	j	20001476 <HAL_I2C_writeMemory+0x1b8>
    200013ea:	fee45783          	lhu	a5,-18(s0)
    200013ee:	2785                	addiw	a5,a5,1
    200013f0:	fef41723          	sh	a5,-18(s0)
    200013f4:	fee45783          	lhu	a5,-18(s0)
    200013f8:	0007871b          	sext.w	a4,a5
    200013fc:	fc245783          	lhu	a5,-62(s0)
    20001400:	2781                	sext.w	a5,a5
    20001402:	37fd                	addiw	a5,a5,-1
    20001404:	2781                	sext.w	a5,a5
    20001406:	f8f74be3          	blt	a4,a5,2000139c <HAL_I2C_writeMemory+0xde>
    2000140a:	fb843783          	ld	a5,-72(s0)
    2000140e:	0007c783          	lbu	a5,0(a5)
    20001412:	0007871b          	sext.w	a4,a5
    20001416:	fc843783          	ld	a5,-56(s0)
    2000141a:	c7d8                	sw	a4,12(a5)
    2000141c:	fc843783          	ld	a5,-56(s0)
    20001420:	05000713          	li	a4,80
    20001424:	cb98                	sw	a4,16(a5)
    20001426:	fe043783          	ld	a5,-32(s0)
    2000142a:	2781                	sext.w	a5,a5
    2000142c:	fb442703          	lw	a4,-76(s0)
    20001430:	863a                	mv	a2,a4
    20001432:	85be                	mv	a1,a5
    20001434:	fc843503          	ld	a0,-56(s0)
    20001438:	883ff0ef          	jal	ra,20000cba <HAL_I2C_waitForTransaction>
    2000143c:	87aa                	mv	a5,a0
    2000143e:	fcf42e23          	sw	a5,-36(s0)
    20001442:	fdc42783          	lw	a5,-36(s0)
    20001446:	2781                	sext.w	a5,a5
    20001448:	c781                	beqz	a5,20001450 <HAL_I2C_writeMemory+0x192>
    2000144a:	fdc42783          	lw	a5,-36(s0)
    2000144e:	a025                	j	20001476 <HAL_I2C_writeMemory+0x1b8>
    20001450:	fe043783          	ld	a5,-32(s0)
    20001454:	2781                	sext.w	a5,a5
    20001456:	fb442703          	lw	a4,-76(s0)
    2000145a:	86be                	mv	a3,a5
    2000145c:	4601                	li	a2,0
    2000145e:	04000593          	li	a1,64
    20001462:	fc843503          	ld	a0,-56(s0)
    20001466:	fdcff0ef          	jal	ra,20000c42 <HAL_I2C_waitForFlag>
    2000146a:	87aa                	mv	a5,a0
    2000146c:	2781                	sext.w	a5,a5
    2000146e:	c399                	beqz	a5,20001474 <HAL_I2C_writeMemory+0x1b6>
    20001470:	4785                	li	a5,1
    20001472:	a011                	j	20001476 <HAL_I2C_writeMemory+0x1b8>
    20001474:	4781                	li	a5,0
    20001476:	853e                	mv	a0,a5
    20001478:	60a6                	ld	ra,72(sp)
    2000147a:	6406                	ld	s0,64(sp)
    2000147c:	6161                	addi	sp,sp,80
    2000147e:	8082                	ret

0000000020001480 <HAL_RCC_InitSystemClock>:
    20001480:	1141                	addi	sp,sp,-16
    20001482:	e422                	sd	s0,8(sp)
    20001484:	0800                	addi	s0,sp,16
    20001486:	0001                	nop
    20001488:	6422                	ld	s0,8(sp)
    2000148a:	0141                	addi	sp,sp,16
    2000148c:	8082                	ret

000000002000148e <HAL_UART_init>:
    2000148e:	1101                	addi	sp,sp,-32
    20001490:	ec22                	sd	s0,24(sp)
    20001492:	1000                	addi	s0,sp,32
    20001494:	fea43423          	sd	a0,-24(s0)
    20001498:	feb43023          	sd	a1,-32(s0)
    2000149c:	fe843783          	ld	a5,-24(s0)
    200014a0:	47dc                	lw	a5,12(a5)
    200014a2:	2781                	sext.w	a5,a5
    200014a4:	9bf9                	andi	a5,a5,-2
    200014a6:	0007871b          	sext.w	a4,a5
    200014aa:	fe843783          	ld	a5,-24(s0)
    200014ae:	c7d8                	sw	a4,12(a5)
    200014b0:	fe843783          	ld	a5,-24(s0)
    200014b4:	479c                	lw	a5,8(a5)
    200014b6:	2781                	sext.w	a5,a5
    200014b8:	9bf9                	andi	a5,a5,-2
    200014ba:	0007871b          	sext.w	a4,a5
    200014be:	fe843783          	ld	a5,-24(s0)
    200014c2:	c798                	sw	a4,8(a5)
    200014c4:	fe043783          	ld	a5,-32(s0)
    200014c8:	43dc                	lw	a5,4(a5)
    200014ca:	8b85                	andi	a5,a5,1
    200014cc:	2781                	sext.w	a5,a5
    200014ce:	cf81                	beqz	a5,200014e6 <HAL_UART_init+0x58>
    200014d0:	fe843783          	ld	a5,-24(s0)
    200014d4:	47dc                	lw	a5,12(a5)
    200014d6:	2781                	sext.w	a5,a5
    200014d8:	0017e793          	ori	a5,a5,1
    200014dc:	0007871b          	sext.w	a4,a5
    200014e0:	fe843783          	ld	a5,-24(s0)
    200014e4:	c7d8                	sw	a4,12(a5)
    200014e6:	fe043783          	ld	a5,-32(s0)
    200014ea:	43dc                	lw	a5,4(a5)
    200014ec:	8b89                	andi	a5,a5,2
    200014ee:	2781                	sext.w	a5,a5
    200014f0:	cf81                	beqz	a5,20001508 <HAL_UART_init+0x7a>
    200014f2:	fe843783          	ld	a5,-24(s0)
    200014f6:	479c                	lw	a5,8(a5)
    200014f8:	2781                	sext.w	a5,a5
    200014fa:	0017e793          	ori	a5,a5,1
    200014fe:	0007871b          	sext.w	a4,a5
    20001502:	fe843783          	ld	a5,-24(s0)
    20001506:	c798                	sw	a4,8(a5)
    20001508:	fe843783          	ld	a5,-24(s0)
    2000150c:	479c                	lw	a5,8(a5)
    2000150e:	2781                	sext.w	a5,a5
    20001510:	9bf5                	andi	a5,a5,-3
    20001512:	0007871b          	sext.w	a4,a5
    20001516:	fe843783          	ld	a5,-24(s0)
    2000151a:	c798                	sw	a4,8(a5)
    2000151c:	fe843783          	ld	a5,-24(s0)
    20001520:	479c                	lw	a5,8(a5)
    20001522:	0007871b          	sext.w	a4,a5
    20001526:	fe043783          	ld	a5,-32(s0)
    2000152a:	479c                	lw	a5,8(a5)
    2000152c:	fff7c793          	not	a5,a5
    20001530:	2781                	sext.w	a5,a5
    20001532:	8ff9                	and	a5,a5,a4
    20001534:	0007871b          	sext.w	a4,a5
    20001538:	fe843783          	ld	a5,-24(s0)
    2000153c:	c798                	sw	a4,8(a5)
    2000153e:	fe043783          	ld	a5,-32(s0)
    20001542:	439c                	lw	a5,0(a5)
    20001544:	02faf737          	lui	a4,0x2faf
    20001548:	0807071b          	addiw	a4,a4,128
    2000154c:	02f757bb          	divuw	a5,a4,a5
    20001550:	2781                	sext.w	a5,a5
    20001552:	37fd                	addiw	a5,a5,-1
    20001554:	0007871b          	sext.w	a4,a5
    20001558:	fe843783          	ld	a5,-24(s0)
    2000155c:	cf98                	sw	a4,24(a5)
    2000155e:	0001                	nop
    20001560:	6462                	ld	s0,24(sp)
    20001562:	6105                	addi	sp,sp,32
    20001564:	8082                	ret

0000000020001566 <HAL_UART_getRXFIFODepth>:
    20001566:	1101                	addi	sp,sp,-32
    20001568:	ec22                	sd	s0,24(sp)
    2000156a:	1000                	addi	s0,sp,32
    2000156c:	fea43423          	sd	a0,-24(s0)
    20001570:	fe843783          	ld	a5,-24(s0)
    20001574:	47dc                	lw	a5,12(a5)
    20001576:	2781                	sext.w	a5,a5
    20001578:	0107d79b          	srliw	a5,a5,0x10
    2000157c:	2781                	sext.w	a5,a5
    2000157e:	0ff7f793          	zext.b	a5,a5
    20001582:	8b9d                	andi	a5,a5,7
    20001584:	0ff7f793          	zext.b	a5,a5
    20001588:	853e                	mv	a0,a5
    2000158a:	6462                	ld	s0,24(sp)
    2000158c:	6105                	addi	sp,sp,32
    2000158e:	8082                	ret

0000000020001590 <HAL_UART_getTXFIFODepth>:
    20001590:	1101                	addi	sp,sp,-32
    20001592:	ec22                	sd	s0,24(sp)
    20001594:	1000                	addi	s0,sp,32
    20001596:	fea43423          	sd	a0,-24(s0)
    2000159a:	fe843783          	ld	a5,-24(s0)
    2000159e:	479c                	lw	a5,8(a5)
    200015a0:	2781                	sext.w	a5,a5
    200015a2:	0107d79b          	srliw	a5,a5,0x10
    200015a6:	2781                	sext.w	a5,a5
    200015a8:	0ff7f793          	zext.b	a5,a5
    200015ac:	8b9d                	andi	a5,a5,7
    200015ae:	0ff7f793          	zext.b	a5,a5
    200015b2:	853e                	mv	a0,a5
    200015b4:	6462                	ld	s0,24(sp)
    200015b6:	6105                	addi	sp,sp,32
    200015b8:	8082                	ret

00000000200015ba <HAL_UART_disableRXInterrupt>:
    200015ba:	1101                	addi	sp,sp,-32
    200015bc:	ec22                	sd	s0,24(sp)
    200015be:	1000                	addi	s0,sp,32
    200015c0:	fea43423          	sd	a0,-24(s0)
    200015c4:	87ae                	mv	a5,a1
    200015c6:	fef41323          	sh	a5,-26(s0)
    200015ca:	fe843783          	ld	a5,-24(s0)
    200015ce:	4b9c                	lw	a5,16(a5)
    200015d0:	2781                	sext.w	a5,a5
    200015d2:	9bf5                	andi	a5,a5,-3
    200015d4:	0007871b          	sext.w	a4,a5
    200015d8:	fe843783          	ld	a5,-24(s0)
    200015dc:	cb98                	sw	a4,16(a5)
    200015de:	0001                	nop
    200015e0:	6462                	ld	s0,24(sp)
    200015e2:	6105                	addi	sp,sp,32
    200015e4:	8082                	ret

00000000200015e6 <HAL_UART_enableRXInterrupt>:
    200015e6:	1101                	addi	sp,sp,-32
    200015e8:	ec22                	sd	s0,24(sp)
    200015ea:	1000                	addi	s0,sp,32
    200015ec:	fea43423          	sd	a0,-24(s0)
    200015f0:	87ae                	mv	a5,a1
    200015f2:	fef41323          	sh	a5,-26(s0)
    200015f6:	fe843783          	ld	a5,-24(s0)
    200015fa:	47dc                	lw	a5,12(a5)
    200015fc:	2781                	sext.w	a5,a5
    200015fe:	873e                	mv	a4,a5
    20001600:	fff907b7          	lui	a5,0xfff90
    20001604:	17fd                	addi	a5,a5,-1
    20001606:	8ff9                	and	a5,a5,a4
    20001608:	0007871b          	sext.w	a4,a5
    2000160c:	fe843783          	ld	a5,-24(s0)
    20001610:	c7d8                	sw	a4,12(a5)
    20001612:	fe843783          	ld	a5,-24(s0)
    20001616:	47dc                	lw	a5,12(a5)
    20001618:	0007871b          	sext.w	a4,a5
    2000161c:	fe645783          	lhu	a5,-26(s0)
    20001620:	2781                	sext.w	a5,a5
    20001622:	0107979b          	slliw	a5,a5,0x10
    20001626:	2781                	sext.w	a5,a5
    20001628:	2781                	sext.w	a5,a5
    2000162a:	8fd9                	or	a5,a5,a4
    2000162c:	0007871b          	sext.w	a4,a5
    20001630:	fe843783          	ld	a5,-24(s0)
    20001634:	c7d8                	sw	a4,12(a5)
    20001636:	fe843783          	ld	a5,-24(s0)
    2000163a:	4b9c                	lw	a5,16(a5)
    2000163c:	2781                	sext.w	a5,a5
    2000163e:	0027e793          	ori	a5,a5,2
    20001642:	0007871b          	sext.w	a4,a5
    20001646:	fe843783          	ld	a5,-24(s0)
    2000164a:	cb98                	sw	a4,16(a5)
    2000164c:	0001                	nop
    2000164e:	6462                	ld	s0,24(sp)
    20001650:	6105                	addi	sp,sp,32
    20001652:	8082                	ret

0000000020001654 <HAL_UART_disableTXInterrupt>:
    20001654:	1101                	addi	sp,sp,-32
    20001656:	ec22                	sd	s0,24(sp)
    20001658:	1000                	addi	s0,sp,32
    2000165a:	fea43423          	sd	a0,-24(s0)
    2000165e:	87ae                	mv	a5,a1
    20001660:	fef41323          	sh	a5,-26(s0)
    20001664:	fe843783          	ld	a5,-24(s0)
    20001668:	4b9c                	lw	a5,16(a5)
    2000166a:	2781                	sext.w	a5,a5
    2000166c:	9bf9                	andi	a5,a5,-2
    2000166e:	0007871b          	sext.w	a4,a5
    20001672:	fe843783          	ld	a5,-24(s0)
    20001676:	cb98                	sw	a4,16(a5)
    20001678:	0001                	nop
    2000167a:	6462                	ld	s0,24(sp)
    2000167c:	6105                	addi	sp,sp,32
    2000167e:	8082                	ret

0000000020001680 <HAL_UART_enableTXInterrupt>:
    20001680:	1101                	addi	sp,sp,-32
    20001682:	ec22                	sd	s0,24(sp)
    20001684:	1000                	addi	s0,sp,32
    20001686:	fea43423          	sd	a0,-24(s0)
    2000168a:	87ae                	mv	a5,a1
    2000168c:	fef41323          	sh	a5,-26(s0)
    20001690:	fe843783          	ld	a5,-24(s0)
    20001694:	479c                	lw	a5,8(a5)
    20001696:	2781                	sext.w	a5,a5
    20001698:	873e                	mv	a4,a5
    2000169a:	fff907b7          	lui	a5,0xfff90
    2000169e:	17fd                	addi	a5,a5,-1
    200016a0:	8ff9                	and	a5,a5,a4
    200016a2:	0007871b          	sext.w	a4,a5
    200016a6:	fe843783          	ld	a5,-24(s0)
    200016aa:	c798                	sw	a4,8(a5)
    200016ac:	fe843783          	ld	a5,-24(s0)
    200016b0:	479c                	lw	a5,8(a5)
    200016b2:	0007871b          	sext.w	a4,a5
    200016b6:	fe645783          	lhu	a5,-26(s0)
    200016ba:	2781                	sext.w	a5,a5
    200016bc:	0107979b          	slliw	a5,a5,0x10
    200016c0:	2781                	sext.w	a5,a5
    200016c2:	2781                	sext.w	a5,a5
    200016c4:	8fd9                	or	a5,a5,a4
    200016c6:	0007871b          	sext.w	a4,a5
    200016ca:	fe843783          	ld	a5,-24(s0)
    200016ce:	c798                	sw	a4,8(a5)
    200016d0:	fe843783          	ld	a5,-24(s0)
    200016d4:	4b9c                	lw	a5,16(a5)
    200016d6:	2781                	sext.w	a5,a5
    200016d8:	0017e793          	ori	a5,a5,1
    200016dc:	0007871b          	sext.w	a4,a5
    200016e0:	fe843783          	ld	a5,-24(s0)
    200016e4:	cb98                	sw	a4,16(a5)
    200016e6:	0001                	nop
    200016e8:	6462                	ld	s0,24(sp)
    200016ea:	6105                	addi	sp,sp,32
    200016ec:	8082                	ret

00000000200016ee <HAL_UART_receive>:
    200016ee:	7179                	addi	sp,sp,-48
    200016f0:	f422                	sd	s0,40(sp)
    200016f2:	1800                	addi	s0,sp,48
    200016f4:	fea43423          	sd	a0,-24(s0)
    200016f8:	feb43023          	sd	a1,-32(s0)
    200016fc:	87b2                	mv	a5,a2
    200016fe:	8736                	mv	a4,a3
    20001700:	fcf41f23          	sh	a5,-34(s0)
    20001704:	87ba                	mv	a5,a4
    20001706:	fcf42c23          	sw	a5,-40(s0)
    2000170a:	a82d                	j	20001744 <HAL_UART_receive+0x56>
    2000170c:	0001                	nop
    2000170e:	fe843783          	ld	a5,-24(s0)
    20001712:	43dc                	lw	a5,4(a5)
    20001714:	2781                	sext.w	a5,a5
    20001716:	2781                	sext.w	a5,a5
    20001718:	fe07cbe3          	bltz	a5,2000170e <HAL_UART_receive+0x20>
    2000171c:	fe843783          	ld	a5,-24(s0)
    20001720:	43dc                	lw	a5,4(a5)
    20001722:	2781                	sext.w	a5,a5
    20001724:	0ff7f713          	zext.b	a4,a5
    20001728:	fe043783          	ld	a5,-32(s0)
    2000172c:	00e78023          	sb	a4,0(a5) # fffffffffff90000 <_data_source_start+0xffffffffdff8c718>
    20001730:	fe043783          	ld	a5,-32(s0)
    20001734:	0785                	addi	a5,a5,1
    20001736:	fef43023          	sd	a5,-32(s0)
    2000173a:	fde45783          	lhu	a5,-34(s0)
    2000173e:	37fd                	addiw	a5,a5,-1
    20001740:	fcf41f23          	sh	a5,-34(s0)
    20001744:	fde45783          	lhu	a5,-34(s0)
    20001748:	2781                	sext.w	a5,a5
    2000174a:	f3e9                	bnez	a5,2000170c <HAL_UART_receive+0x1e>
    2000174c:	4781                	li	a5,0
    2000174e:	853e                	mv	a0,a5
    20001750:	7422                	ld	s0,40(sp)
    20001752:	6145                	addi	sp,sp,48
    20001754:	8082                	ret

0000000020001756 <HAL_UART_transmit>:
    20001756:	7179                	addi	sp,sp,-48
    20001758:	f422                	sd	s0,40(sp)
    2000175a:	1800                	addi	s0,sp,48
    2000175c:	fea43423          	sd	a0,-24(s0)
    20001760:	feb43023          	sd	a1,-32(s0)
    20001764:	87b2                	mv	a5,a2
    20001766:	8736                	mv	a4,a3
    20001768:	fcf41f23          	sh	a5,-34(s0)
    2000176c:	87ba                	mv	a5,a4
    2000176e:	fcf42c23          	sw	a5,-40(s0)
    20001772:	a825                	j	200017aa <HAL_UART_transmit+0x54>
    20001774:	0001                	nop
    20001776:	fe843783          	ld	a5,-24(s0)
    2000177a:	439c                	lw	a5,0(a5)
    2000177c:	2781                	sext.w	a5,a5
    2000177e:	2781                	sext.w	a5,a5
    20001780:	fe07cbe3          	bltz	a5,20001776 <HAL_UART_transmit+0x20>
    20001784:	fe043783          	ld	a5,-32(s0)
    20001788:	0007c783          	lbu	a5,0(a5)
    2000178c:	0007871b          	sext.w	a4,a5
    20001790:	fe843783          	ld	a5,-24(s0)
    20001794:	c398                	sw	a4,0(a5)
    20001796:	fe043783          	ld	a5,-32(s0)
    2000179a:	0785                	addi	a5,a5,1
    2000179c:	fef43023          	sd	a5,-32(s0)
    200017a0:	fde45783          	lhu	a5,-34(s0)
    200017a4:	37fd                	addiw	a5,a5,-1
    200017a6:	fcf41f23          	sh	a5,-34(s0)
    200017aa:	fde45783          	lhu	a5,-34(s0)
    200017ae:	2781                	sext.w	a5,a5
    200017b0:	f3f1                	bnez	a5,20001774 <HAL_UART_transmit+0x1e>
    200017b2:	4781                	li	a5,0
    200017b4:	853e                	mv	a0,a5
    200017b6:	7422                	ld	s0,40(sp)
    200017b8:	6145                	addi	sp,sp,48
    200017ba:	8082                	ret

00000000200017bc <malloc>:
    200017bc:	85aa                	mv	a1,a0
    200017be:	e7fff517          	auipc	a0,0xe7fff
    200017c2:	8fa53503          	ld	a0,-1798(a0) # 80000b8 <_impure_ptr>
    200017c6:	a84d                	j	20001878 <_malloc_r>

00000000200017c8 <free>:
    200017c8:	85aa                	mv	a1,a0
    200017ca:	e7fff517          	auipc	a0,0xe7fff
    200017ce:	8ee53503          	ld	a0,-1810(a0) # 80000b8 <_impure_ptr>
    200017d2:	a009                	j	200017d4 <_free_r>

00000000200017d4 <_free_r>:
    200017d4:	c1cd                	beqz	a1,20001876 <_free_r+0xa2>
    200017d6:	ff85b783          	ld	a5,-8(a1)
    200017da:	1101                	addi	sp,sp,-32
    200017dc:	e822                	sd	s0,16(sp)
    200017de:	ec06                	sd	ra,24(sp)
    200017e0:	ff858413          	addi	s0,a1,-8
    200017e4:	0007d363          	bgez	a5,200017ea <_free_r+0x16>
    200017e8:	943e                	add	s0,s0,a5
    200017ea:	e42a                	sd	a0,8(sp)
    200017ec:	62e000ef          	jal	ra,20001e1a <__malloc_lock>
    200017f0:	e7fff717          	auipc	a4,0xe7fff
    200017f4:	8d070713          	addi	a4,a4,-1840 # 80000c0 <__malloc_free_list>
    200017f8:	631c                	ld	a5,0(a4)
    200017fa:	6522                	ld	a0,8(sp)
    200017fc:	eb81                	bnez	a5,2000180c <_free_r+0x38>
    200017fe:	00043423          	sd	zero,8(s0)
    20001802:	e300                	sd	s0,0(a4)
    20001804:	6442                	ld	s0,16(sp)
    20001806:	60e2                	ld	ra,24(sp)
    20001808:	6105                	addi	sp,sp,32
    2000180a:	ad09                	j	20001e1c <__malloc_unlock>
    2000180c:	00f47d63          	bgeu	s0,a5,20001826 <_free_r+0x52>
    20001810:	6010                	ld	a2,0(s0)
    20001812:	00c406b3          	add	a3,s0,a2
    20001816:	00d79663          	bne	a5,a3,20001822 <_free_r+0x4e>
    2000181a:	6394                	ld	a3,0(a5)
    2000181c:	679c                	ld	a5,8(a5)
    2000181e:	96b2                	add	a3,a3,a2
    20001820:	e014                	sd	a3,0(s0)
    20001822:	e41c                	sd	a5,8(s0)
    20001824:	bff9                	j	20001802 <_free_r+0x2e>
    20001826:	873e                	mv	a4,a5
    20001828:	679c                	ld	a5,8(a5)
    2000182a:	c399                	beqz	a5,20001830 <_free_r+0x5c>
    2000182c:	fef47de3          	bgeu	s0,a5,20001826 <_free_r+0x52>
    20001830:	6314                	ld	a3,0(a4)
    20001832:	00d70633          	add	a2,a4,a3
    20001836:	00861f63          	bne	a2,s0,20001854 <_free_r+0x80>
    2000183a:	6010                	ld	a2,0(s0)
    2000183c:	96b2                	add	a3,a3,a2
    2000183e:	e314                	sd	a3,0(a4)
    20001840:	00d70633          	add	a2,a4,a3
    20001844:	fcc790e3          	bne	a5,a2,20001804 <_free_r+0x30>
    20001848:	6390                	ld	a2,0(a5)
    2000184a:	679c                	ld	a5,8(a5)
    2000184c:	96b2                	add	a3,a3,a2
    2000184e:	e314                	sd	a3,0(a4)
    20001850:	e71c                	sd	a5,8(a4)
    20001852:	bf4d                	j	20001804 <_free_r+0x30>
    20001854:	00c47563          	bgeu	s0,a2,2000185e <_free_r+0x8a>
    20001858:	47b1                	li	a5,12
    2000185a:	c11c                	sw	a5,0(a0)
    2000185c:	b765                	j	20001804 <_free_r+0x30>
    2000185e:	6010                	ld	a2,0(s0)
    20001860:	00c406b3          	add	a3,s0,a2
    20001864:	00d79663          	bne	a5,a3,20001870 <_free_r+0x9c>
    20001868:	6394                	ld	a3,0(a5)
    2000186a:	679c                	ld	a5,8(a5)
    2000186c:	96b2                	add	a3,a3,a2
    2000186e:	e014                	sd	a3,0(s0)
    20001870:	e41c                	sd	a5,8(s0)
    20001872:	e700                	sd	s0,8(a4)
    20001874:	bf41                	j	20001804 <_free_r+0x30>
    20001876:	8082                	ret

0000000020001878 <_malloc_r>:
    20001878:	00758793          	addi	a5,a1,7
    2000187c:	7179                	addi	sp,sp,-48
    2000187e:	9be1                	andi	a5,a5,-8
    20001880:	ec26                	sd	s1,24(sp)
    20001882:	e84a                	sd	s2,16(sp)
    20001884:	f406                	sd	ra,40(sp)
    20001886:	f022                	sd	s0,32(sp)
    20001888:	e44e                	sd	s3,8(sp)
    2000188a:	07a1                	addi	a5,a5,8
    2000188c:	4741                	li	a4,16
    2000188e:	84aa                	mv	s1,a0
    20001890:	4941                	li	s2,16
    20001892:	00e7e363          	bltu	a5,a4,20001898 <_malloc_r+0x20>
    20001896:	893e                	mv	s2,a5
    20001898:	80000737          	lui	a4,0x80000
    2000189c:	fff74713          	not	a4,a4
    200018a0:	00f76463          	bltu	a4,a5,200018a8 <_malloc_r+0x30>
    200018a4:	00b97c63          	bgeu	s2,a1,200018bc <_malloc_r+0x44>
    200018a8:	47b1                	li	a5,12
    200018aa:	c09c                	sw	a5,0(s1)
    200018ac:	4501                	li	a0,0
    200018ae:	70a2                	ld	ra,40(sp)
    200018b0:	7402                	ld	s0,32(sp)
    200018b2:	64e2                	ld	s1,24(sp)
    200018b4:	6942                	ld	s2,16(sp)
    200018b6:	69a2                	ld	s3,8(sp)
    200018b8:	6145                	addi	sp,sp,48
    200018ba:	8082                	ret
    200018bc:	8526                	mv	a0,s1
    200018be:	55c000ef          	jal	ra,20001e1a <__malloc_lock>
    200018c2:	81018693          	addi	a3,gp,-2032 # 80000c0 <__malloc_free_list>
    200018c6:	6298                	ld	a4,0(a3)
    200018c8:	843a                	mv	s0,a4
    200018ca:	e41d                	bnez	s0,200018f8 <_malloc_r+0x80>
    200018cc:	81818413          	addi	s0,gp,-2024 # 80000c8 <__malloc_sbrk_start>
    200018d0:	601c                	ld	a5,0(s0)
    200018d2:	e791                	bnez	a5,200018de <_malloc_r+0x66>
    200018d4:	4581                	li	a1,0
    200018d6:	8526                	mv	a0,s1
    200018d8:	100000ef          	jal	ra,200019d8 <_sbrk_r>
    200018dc:	e008                	sd	a0,0(s0)
    200018de:	85ca                	mv	a1,s2
    200018e0:	8526                	mv	a0,s1
    200018e2:	0f6000ef          	jal	ra,200019d8 <_sbrk_r>
    200018e6:	59fd                	li	s3,-1
    200018e8:	05351e63          	bne	a0,s3,20001944 <_malloc_r+0xcc>
    200018ec:	47b1                	li	a5,12
    200018ee:	c09c                	sw	a5,0(s1)
    200018f0:	8526                	mv	a0,s1
    200018f2:	52a000ef          	jal	ra,20001e1c <__malloc_unlock>
    200018f6:	bf5d                	j	200018ac <_malloc_r+0x34>
    200018f8:	601c                	ld	a5,0(s0)
    200018fa:	412787bb          	subw	a5,a5,s2
    200018fe:	0407c063          	bltz	a5,2000193e <_malloc_r+0xc6>
    20001902:	463d                	li	a2,15
    20001904:	00f65763          	bge	a2,a5,20001912 <_malloc_r+0x9a>
    20001908:	e01c                	sd	a5,0(s0)
    2000190a:	943e                	add	s0,s0,a5
    2000190c:	01243023          	sd	s2,0(s0)
    20001910:	a029                	j	2000191a <_malloc_r+0xa2>
    20001912:	641c                	ld	a5,8(s0)
    20001914:	02871363          	bne	a4,s0,2000193a <_malloc_r+0xc2>
    20001918:	e29c                	sd	a5,0(a3)
    2000191a:	8526                	mv	a0,s1
    2000191c:	500000ef          	jal	ra,20001e1c <__malloc_unlock>
    20001920:	00f40513          	addi	a0,s0,15
    20001924:	00840793          	addi	a5,s0,8
    20001928:	9961                	andi	a0,a0,-8
    2000192a:	40f507bb          	subw	a5,a0,a5
    2000192e:	d3c1                	beqz	a5,200018ae <_malloc_r+0x36>
    20001930:	943e                	add	s0,s0,a5
    20001932:	40f007bb          	negw	a5,a5
    20001936:	e01c                	sd	a5,0(s0)
    20001938:	bf9d                	j	200018ae <_malloc_r+0x36>
    2000193a:	e71c                	sd	a5,8(a4)
    2000193c:	bff9                	j	2000191a <_malloc_r+0xa2>
    2000193e:	8722                	mv	a4,s0
    20001940:	6400                	ld	s0,8(s0)
    20001942:	b761                	j	200018ca <_malloc_r+0x52>
    20001944:	00750413          	addi	s0,a0,7
    20001948:	9861                	andi	s0,s0,-8
    2000194a:	fc8501e3          	beq	a0,s0,2000190c <_malloc_r+0x94>
    2000194e:	40a405b3          	sub	a1,s0,a0
    20001952:	8526                	mv	a0,s1
    20001954:	084000ef          	jal	ra,200019d8 <_sbrk_r>
    20001958:	fb351ae3          	bne	a0,s3,2000190c <_malloc_r+0x94>
    2000195c:	bf41                	j	200018ec <_malloc_r+0x74>

000000002000195e <_iprintf_r>:
    2000195e:	711d                	addi	sp,sp,-96
    20001960:	f022                	sd	s0,32(sp)
    20001962:	ec26                	sd	s1,24(sp)
    20001964:	f406                	sd	ra,40(sp)
    20001966:	f832                	sd	a2,48(sp)
    20001968:	fc36                	sd	a3,56(sp)
    2000196a:	e0ba                	sd	a4,64(sp)
    2000196c:	e4be                	sd	a5,72(sp)
    2000196e:	e8c2                	sd	a6,80(sp)
    20001970:	ecc6                	sd	a7,88(sp)
    20001972:	842a                	mv	s0,a0
    20001974:	84ae                	mv	s1,a1
    20001976:	c509                	beqz	a0,20001980 <_iprintf_r+0x22>
    20001978:	591c                	lw	a5,48(a0)
    2000197a:	e399                	bnez	a5,20001980 <_iprintf_r+0x22>
    2000197c:	1e4000ef          	jal	ra,20001b60 <__sinit>
    20001980:	680c                	ld	a1,16(s0)
    20001982:	1814                	addi	a3,sp,48
    20001984:	8626                	mv	a2,s1
    20001986:	8522                	mv	a0,s0
    20001988:	e436                	sd	a3,8(sp)
    2000198a:	59f000ef          	jal	ra,20002728 <_vfiprintf_r>
    2000198e:	70a2                	ld	ra,40(sp)
    20001990:	7402                	ld	s0,32(sp)
    20001992:	64e2                	ld	s1,24(sp)
    20001994:	6125                	addi	sp,sp,96
    20001996:	8082                	ret

0000000020001998 <iprintf>:
    20001998:	7159                	addi	sp,sp,-112
    2000199a:	f022                	sd	s0,32(sp)
    2000199c:	f406                	sd	ra,40(sp)
    2000199e:	842a                	mv	s0,a0
    200019a0:	fc2e                	sd	a1,56(sp)
    200019a2:	e0b2                	sd	a2,64(sp)
    200019a4:	e4b6                	sd	a3,72(sp)
    200019a6:	e8ba                	sd	a4,80(sp)
    200019a8:	ecbe                	sd	a5,88(sp)
    200019aa:	f0c2                	sd	a6,96(sp)
    200019ac:	f4c6                	sd	a7,104(sp)
    200019ae:	e7ffe517          	auipc	a0,0xe7ffe
    200019b2:	70a53503          	ld	a0,1802(a0) # 80000b8 <_impure_ptr>
    200019b6:	c519                	beqz	a0,200019c4 <iprintf+0x2c>
    200019b8:	591c                	lw	a5,48(a0)
    200019ba:	e789                	bnez	a5,200019c4 <iprintf+0x2c>
    200019bc:	e42a                	sd	a0,8(sp)
    200019be:	1a2000ef          	jal	ra,20001b60 <__sinit>
    200019c2:	6522                	ld	a0,8(sp)
    200019c4:	690c                	ld	a1,16(a0)
    200019c6:	1834                	addi	a3,sp,56
    200019c8:	8622                	mv	a2,s0
    200019ca:	ec36                	sd	a3,24(sp)
    200019cc:	55d000ef          	jal	ra,20002728 <_vfiprintf_r>
    200019d0:	70a2                	ld	ra,40(sp)
    200019d2:	7402                	ld	s0,32(sp)
    200019d4:	6165                	addi	sp,sp,112
    200019d6:	8082                	ret

00000000200019d8 <_sbrk_r>:
    200019d8:	1141                	addi	sp,sp,-16
    200019da:	e022                	sd	s0,0(sp)
    200019dc:	842a                	mv	s0,a0
    200019de:	852e                	mv	a0,a1
    200019e0:	8201a023          	sw	zero,-2016(gp) # 80000d0 <errno>
    200019e4:	e406                	sd	ra,8(sp)
    200019e6:	c7ffe0ef          	jal	ra,20000664 <_sbrk>
    200019ea:	57fd                	li	a5,-1
    200019ec:	00f51663          	bne	a0,a5,200019f8 <_sbrk_r+0x20>
    200019f0:	8201a783          	lw	a5,-2016(gp) # 80000d0 <errno>
    200019f4:	c391                	beqz	a5,200019f8 <_sbrk_r+0x20>
    200019f6:	c01c                	sw	a5,0(s0)
    200019f8:	60a2                	ld	ra,8(sp)
    200019fa:	6402                	ld	s0,0(sp)
    200019fc:	0141                	addi	sp,sp,16
    200019fe:	8082                	ret

0000000020001a00 <_siprintf_r>:
    20001a00:	7111                	addi	sp,sp,-256
    20001a02:	f5be                	sd	a5,232(sp)
    20001a04:	800007b7          	lui	a5,0x80000
    20001a08:	fff7c793          	not	a5,a5
    20001a0c:	d83e                	sw	a5,48(sp)
    20001a0e:	ce3e                	sw	a5,28(sp)
    20001a10:	77c1                	lui	a5,0xffff0
    20001a12:	edb6                	sd	a3,216(sp)
    20001a14:	e82e                	sd	a1,16(sp)
    20001a16:	f42e                	sd	a1,40(sp)
    20001a18:	20878793          	addi	a5,a5,520 # ffffffffffff0208 <_data_source_start+0xffffffffdffec920>
    20001a1c:	09b4                	addi	a3,sp,216
    20001a1e:	080c                	addi	a1,sp,16
    20001a20:	e586                	sd	ra,200(sp)
    20001a22:	d03e                	sw	a5,32(sp)
    20001a24:	f1ba                	sd	a4,224(sp)
    20001a26:	f9c2                	sd	a6,240(sp)
    20001a28:	fdc6                	sd	a7,248(sp)
    20001a2a:	e436                	sd	a3,8(sp)
    20001a2c:	628000ef          	jal	ra,20002054 <_svfiprintf_r>
    20001a30:	67c2                	ld	a5,16(sp)
    20001a32:	00078023          	sb	zero,0(a5)
    20001a36:	60ae                	ld	ra,200(sp)
    20001a38:	6111                	addi	sp,sp,256
    20001a3a:	8082                	ret

0000000020001a3c <siprintf>:
    20001a3c:	7111                	addi	sp,sp,-256
    20001a3e:	f5be                	sd	a5,232(sp)
    20001a40:	800007b7          	lui	a5,0x80000
    20001a44:	fff7c793          	not	a5,a5
    20001a48:	d83e                	sw	a5,48(sp)
    20001a4a:	ce3e                	sw	a5,28(sp)
    20001a4c:	77c1                	lui	a5,0xffff0
    20001a4e:	e9b2                	sd	a2,208(sp)
    20001a50:	edb6                	sd	a3,216(sp)
    20001a52:	e82a                	sd	a0,16(sp)
    20001a54:	f42a                	sd	a0,40(sp)
    20001a56:	20878793          	addi	a5,a5,520 # ffffffffffff0208 <_data_source_start+0xffffffffdffec920>
    20001a5a:	0994                	addi	a3,sp,208
    20001a5c:	862e                	mv	a2,a1
    20001a5e:	e7ffe517          	auipc	a0,0xe7ffe
    20001a62:	65a53503          	ld	a0,1626(a0) # 80000b8 <_impure_ptr>
    20001a66:	080c                	addi	a1,sp,16
    20001a68:	e586                	sd	ra,200(sp)
    20001a6a:	d03e                	sw	a5,32(sp)
    20001a6c:	f1ba                	sd	a4,224(sp)
    20001a6e:	f9c2                	sd	a6,240(sp)
    20001a70:	fdc6                	sd	a7,248(sp)
    20001a72:	e436                	sd	a3,8(sp)
    20001a74:	5e0000ef          	jal	ra,20002054 <_svfiprintf_r>
    20001a78:	67c2                	ld	a5,16(sp)
    20001a7a:	00078023          	sb	zero,0(a5)
    20001a7e:	60ae                	ld	ra,200(sp)
    20001a80:	6111                	addi	sp,sp,256
    20001a82:	8082                	ret

0000000020001a84 <strlen>:
    20001a84:	87aa                	mv	a5,a0
    20001a86:	0007c703          	lbu	a4,0(a5)
    20001a8a:	0785                	addi	a5,a5,1
    20001a8c:	ff6d                	bnez	a4,20001a86 <strlen+0x2>
    20001a8e:	40a78533          	sub	a0,a5,a0
    20001a92:	157d                	addi	a0,a0,-1
    20001a94:	8082                	ret

0000000020001a96 <__fp_lock>:
    20001a96:	4501                	li	a0,0
    20001a98:	8082                	ret

0000000020001a9a <std>:
    20001a9a:	1141                	addi	sp,sp,-16
    20001a9c:	e022                	sd	s0,0(sp)
    20001a9e:	e406                	sd	ra,8(sp)
    20001aa0:	842a                	mv	s0,a0
    20001aa2:	00b51823          	sh	a1,16(a0)
    20001aa6:	00c51923          	sh	a2,18(a0)
    20001aaa:	00053023          	sd	zero,0(a0)
    20001aae:	00053423          	sd	zero,8(a0)
    20001ab2:	0a052623          	sw	zero,172(a0)
    20001ab6:	00053c23          	sd	zero,24(a0)
    20001aba:	02052023          	sw	zero,32(a0)
    20001abe:	02052423          	sw	zero,40(a0)
    20001ac2:	4621                	li	a2,8
    20001ac4:	4581                	li	a1,0
    20001ac6:	0a450513          	addi	a0,a0,164
    20001aca:	2a6000ef          	jal	ra,20001d70 <memset>
    20001ace:	00001797          	auipc	a5,0x1
    20001ad2:	01678793          	addi	a5,a5,22 # 20002ae4 <__sread>
    20001ad6:	e03c                	sd	a5,64(s0)
    20001ad8:	00001797          	auipc	a5,0x1
    20001adc:	04278793          	addi	a5,a5,66 # 20002b1a <__swrite>
    20001ae0:	e43c                	sd	a5,72(s0)
    20001ae2:	00001797          	auipc	a5,0x1
    20001ae6:	08878793          	addi	a5,a5,136 # 20002b6a <__sseek>
    20001aea:	e83c                	sd	a5,80(s0)
    20001aec:	00001797          	auipc	a5,0x1
    20001af0:	0b678793          	addi	a5,a5,182 # 20002ba2 <__sclose>
    20001af4:	60a2                	ld	ra,8(sp)
    20001af6:	fc00                	sd	s0,56(s0)
    20001af8:	ec3c                	sd	a5,88(s0)
    20001afa:	6402                	ld	s0,0(sp)
    20001afc:	0141                	addi	sp,sp,16
    20001afe:	8082                	ret

0000000020001b00 <_cleanup_r>:
    20001b00:	00001597          	auipc	a1,0x1
    20001b04:	41a58593          	addi	a1,a1,1050 # 20002f1a <_fflush_r>
    20001b08:	aaf5                	j	20001d04 <_fwalk_reent>

0000000020001b0a <__fp_unlock>:
    20001b0a:	4501                	li	a0,0
    20001b0c:	8082                	ret

0000000020001b0e <__sfmoreglue>:
    20001b0e:	1101                	addi	sp,sp,-32
    20001b10:	e426                	sd	s1,8(sp)
    20001b12:	0b000613          	li	a2,176
    20001b16:	fff5849b          	addiw	s1,a1,-1
    20001b1a:	02c484b3          	mul	s1,s1,a2
    20001b1e:	e04a                	sd	s2,0(sp)
    20001b20:	892e                	mv	s2,a1
    20001b22:	e822                	sd	s0,16(sp)
    20001b24:	ec06                	sd	ra,24(sp)
    20001b26:	0c848593          	addi	a1,s1,200
    20001b2a:	d4fff0ef          	jal	ra,20001878 <_malloc_r>
    20001b2e:	842a                	mv	s0,a0
    20001b30:	cd01                	beqz	a0,20001b48 <__sfmoreglue+0x3a>
    20001b32:	00053023          	sd	zero,0(a0)
    20001b36:	01252423          	sw	s2,8(a0)
    20001b3a:	0561                	addi	a0,a0,24
    20001b3c:	e808                	sd	a0,16(s0)
    20001b3e:	0b048613          	addi	a2,s1,176
    20001b42:	4581                	li	a1,0
    20001b44:	22c000ef          	jal	ra,20001d70 <memset>
    20001b48:	60e2                	ld	ra,24(sp)
    20001b4a:	8522                	mv	a0,s0
    20001b4c:	6442                	ld	s0,16(sp)
    20001b4e:	64a2                	ld	s1,8(sp)
    20001b50:	6902                	ld	s2,0(sp)
    20001b52:	6105                	addi	sp,sp,32
    20001b54:	8082                	ret

0000000020001b56 <_cleanup>:
    20001b56:	00002517          	auipc	a0,0x2
    20001b5a:	d8a53503          	ld	a0,-630(a0) # 200038e0 <_global_impure_ptr>
    20001b5e:	b74d                	j	20001b00 <_cleanup_r>

0000000020001b60 <__sinit>:
    20001b60:	591c                	lw	a5,48(a0)
    20001b62:	ebad                	bnez	a5,20001bd4 <__sinit+0x74>
    20001b64:	1141                	addi	sp,sp,-16
    20001b66:	e022                	sd	s0,0(sp)
    20001b68:	e406                	sd	ra,8(sp)
    20001b6a:	00000797          	auipc	a5,0x0
    20001b6e:	f9678793          	addi	a5,a5,-106 # 20001b00 <_cleanup_r>
    20001b72:	e53c                	sd	a5,72(a0)
    20001b74:	08053023          	sd	zero,128(a0)
    20001b78:	08052423          	sw	zero,136(a0)
    20001b7c:	08053823          	sd	zero,144(a0)
    20001b80:	00002797          	auipc	a5,0x2
    20001b84:	d607b783          	ld	a5,-672(a5) # 200038e0 <_global_impure_ptr>
    20001b88:	842a                	mv	s0,a0
    20001b8a:	00f51463          	bne	a0,a5,20001b92 <__sinit+0x32>
    20001b8e:	4785                	li	a5,1
    20001b90:	d91c                	sw	a5,48(a0)
    20001b92:	8522                	mv	a0,s0
    20001b94:	042000ef          	jal	ra,20001bd6 <__sfp>
    20001b98:	e408                	sd	a0,8(s0)
    20001b9a:	8522                	mv	a0,s0
    20001b9c:	03a000ef          	jal	ra,20001bd6 <__sfp>
    20001ba0:	e808                	sd	a0,16(s0)
    20001ba2:	8522                	mv	a0,s0
    20001ba4:	032000ef          	jal	ra,20001bd6 <__sfp>
    20001ba8:	ec08                	sd	a0,24(s0)
    20001baa:	6408                	ld	a0,8(s0)
    20001bac:	4601                	li	a2,0
    20001bae:	4591                	li	a1,4
    20001bb0:	eebff0ef          	jal	ra,20001a9a <std>
    20001bb4:	6808                	ld	a0,16(s0)
    20001bb6:	4605                	li	a2,1
    20001bb8:	45a5                	li	a1,9
    20001bba:	ee1ff0ef          	jal	ra,20001a9a <std>
    20001bbe:	6c08                	ld	a0,24(s0)
    20001bc0:	4609                	li	a2,2
    20001bc2:	45c9                	li	a1,18
    20001bc4:	ed7ff0ef          	jal	ra,20001a9a <std>
    20001bc8:	4785                	li	a5,1
    20001bca:	60a2                	ld	ra,8(sp)
    20001bcc:	d81c                	sw	a5,48(s0)
    20001bce:	6402                	ld	s0,0(sp)
    20001bd0:	0141                	addi	sp,sp,16
    20001bd2:	8082                	ret
    20001bd4:	8082                	ret

0000000020001bd6 <__sfp>:
    20001bd6:	1101                	addi	sp,sp,-32
    20001bd8:	e426                	sd	s1,8(sp)
    20001bda:	00002497          	auipc	s1,0x2
    20001bde:	d064b483          	ld	s1,-762(s1) # 200038e0 <_global_impure_ptr>
    20001be2:	589c                	lw	a5,48(s1)
    20001be4:	e04a                	sd	s2,0(sp)
    20001be6:	ec06                	sd	ra,24(sp)
    20001be8:	e822                	sd	s0,16(sp)
    20001bea:	892a                	mv	s2,a0
    20001bec:	e781                	bnez	a5,20001bf4 <__sfp+0x1e>
    20001bee:	8526                	mv	a0,s1
    20001bf0:	f71ff0ef          	jal	ra,20001b60 <__sinit>
    20001bf4:	08048493          	addi	s1,s1,128
    20001bf8:	6880                	ld	s0,16(s1)
    20001bfa:	449c                	lw	a5,8(s1)
    20001bfc:	37fd                	addiw	a5,a5,-1
    20001bfe:	0007d663          	bgez	a5,20001c0a <__sfp+0x34>
    20001c02:	609c                	ld	a5,0(s1)
    20001c04:	cfa9                	beqz	a5,20001c5e <__sfp+0x88>
    20001c06:	6084                	ld	s1,0(s1)
    20001c08:	bfc5                	j	20001bf8 <__sfp+0x22>
    20001c0a:	01041703          	lh	a4,16(s0)
    20001c0e:	e729                	bnez	a4,20001c58 <__sfp+0x82>
    20001c10:	77c1                	lui	a5,0xffff0
    20001c12:	0785                	addi	a5,a5,1
    20001c14:	0a042623          	sw	zero,172(s0)
    20001c18:	00043023          	sd	zero,0(s0)
    20001c1c:	00043423          	sd	zero,8(s0)
    20001c20:	c81c                	sw	a5,16(s0)
    20001c22:	00043c23          	sd	zero,24(s0)
    20001c26:	02042023          	sw	zero,32(s0)
    20001c2a:	02042423          	sw	zero,40(s0)
    20001c2e:	4621                	li	a2,8
    20001c30:	4581                	li	a1,0
    20001c32:	0a440513          	addi	a0,s0,164
    20001c36:	13a000ef          	jal	ra,20001d70 <memset>
    20001c3a:	06043023          	sd	zero,96(s0)
    20001c3e:	06042423          	sw	zero,104(s0)
    20001c42:	08043023          	sd	zero,128(s0)
    20001c46:	08042423          	sw	zero,136(s0)
    20001c4a:	60e2                	ld	ra,24(sp)
    20001c4c:	8522                	mv	a0,s0
    20001c4e:	6442                	ld	s0,16(sp)
    20001c50:	64a2                	ld	s1,8(sp)
    20001c52:	6902                	ld	s2,0(sp)
    20001c54:	6105                	addi	sp,sp,32
    20001c56:	8082                	ret
    20001c58:	0b040413          	addi	s0,s0,176
    20001c5c:	b745                	j	20001bfc <__sfp+0x26>
    20001c5e:	4591                	li	a1,4
    20001c60:	854a                	mv	a0,s2
    20001c62:	eadff0ef          	jal	ra,20001b0e <__sfmoreglue>
    20001c66:	e088                	sd	a0,0(s1)
    20001c68:	842a                	mv	s0,a0
    20001c6a:	fd51                	bnez	a0,20001c06 <__sfp+0x30>
    20001c6c:	47b1                	li	a5,12
    20001c6e:	00f92023          	sw	a5,0(s2)
    20001c72:	bfe1                	j	20001c4a <__sfp+0x74>

0000000020001c74 <__sfp_lock_acquire>:
    20001c74:	8082                	ret

0000000020001c76 <__sfp_lock_release>:
    20001c76:	8082                	ret

0000000020001c78 <__sinit_lock_acquire>:
    20001c78:	8082                	ret

0000000020001c7a <__sinit_lock_release>:
    20001c7a:	8082                	ret

0000000020001c7c <__fp_lock_all>:
    20001c7c:	00000597          	auipc	a1,0x0
    20001c80:	e1a58593          	addi	a1,a1,-486 # 20001a96 <__fp_lock>
    20001c84:	e7ffe517          	auipc	a0,0xe7ffe
    20001c88:	43453503          	ld	a0,1076(a0) # 80000b8 <_impure_ptr>
    20001c8c:	a811                	j	20001ca0 <_fwalk>

0000000020001c8e <__fp_unlock_all>:
    20001c8e:	00000597          	auipc	a1,0x0
    20001c92:	e7c58593          	addi	a1,a1,-388 # 20001b0a <__fp_unlock>
    20001c96:	e7ffe517          	auipc	a0,0xe7ffe
    20001c9a:	42253503          	ld	a0,1058(a0) # 80000b8 <_impure_ptr>
    20001c9e:	a009                	j	20001ca0 <_fwalk>

0000000020001ca0 <_fwalk>:
    20001ca0:	7139                	addi	sp,sp,-64
    20001ca2:	f822                	sd	s0,48(sp)
    20001ca4:	f426                	sd	s1,40(sp)
    20001ca6:	ec4e                	sd	s3,24(sp)
    20001ca8:	e456                	sd	s5,8(sp)
    20001caa:	e05a                	sd	s6,0(sp)
    20001cac:	fc06                	sd	ra,56(sp)
    20001cae:	f04a                	sd	s2,32(sp)
    20001cb0:	e852                	sd	s4,16(sp)
    20001cb2:	89ae                	mv	s3,a1
    20001cb4:	08050413          	addi	s0,a0,128
    20001cb8:	4481                	li	s1,0
    20001cba:	4a85                	li	s5,1
    20001cbc:	5b7d                	li	s6,-1
    20001cbe:	01043903          	ld	s2,16(s0)
    20001cc2:	00842a03          	lw	s4,8(s0)
    20001cc6:	3a7d                	addiw	s4,s4,-1
    20001cc8:	000a5f63          	bgez	s4,20001ce6 <_fwalk+0x46>
    20001ccc:	6000                	ld	s0,0(s0)
    20001cce:	f865                	bnez	s0,20001cbe <_fwalk+0x1e>
    20001cd0:	70e2                	ld	ra,56(sp)
    20001cd2:	7442                	ld	s0,48(sp)
    20001cd4:	7902                	ld	s2,32(sp)
    20001cd6:	69e2                	ld	s3,24(sp)
    20001cd8:	6a42                	ld	s4,16(sp)
    20001cda:	6aa2                	ld	s5,8(sp)
    20001cdc:	6b02                	ld	s6,0(sp)
    20001cde:	8526                	mv	a0,s1
    20001ce0:	74a2                	ld	s1,40(sp)
    20001ce2:	6121                	addi	sp,sp,64
    20001ce4:	8082                	ret
    20001ce6:	01095783          	lhu	a5,16(s2)
    20001cea:	00fafa63          	bgeu	s5,a5,20001cfe <_fwalk+0x5e>
    20001cee:	01291783          	lh	a5,18(s2)
    20001cf2:	01678663          	beq	a5,s6,20001cfe <_fwalk+0x5e>
    20001cf6:	854a                	mv	a0,s2
    20001cf8:	9982                	jalr	s3
    20001cfa:	8cc9                	or	s1,s1,a0
    20001cfc:	2481                	sext.w	s1,s1
    20001cfe:	0b090913          	addi	s2,s2,176
    20001d02:	b7d1                	j	20001cc6 <_fwalk+0x26>

0000000020001d04 <_fwalk_reent>:
    20001d04:	715d                	addi	sp,sp,-80
    20001d06:	e0a2                	sd	s0,64(sp)
    20001d08:	fc26                	sd	s1,56(sp)
    20001d0a:	f44e                	sd	s3,40(sp)
    20001d0c:	f052                	sd	s4,32(sp)
    20001d0e:	e85a                	sd	s6,16(sp)
    20001d10:	e45e                	sd	s7,8(sp)
    20001d12:	e486                	sd	ra,72(sp)
    20001d14:	f84a                	sd	s2,48(sp)
    20001d16:	ec56                	sd	s5,24(sp)
    20001d18:	89aa                	mv	s3,a0
    20001d1a:	8a2e                	mv	s4,a1
    20001d1c:	08050493          	addi	s1,a0,128
    20001d20:	4401                	li	s0,0
    20001d22:	4b05                	li	s6,1
    20001d24:	5bfd                	li	s7,-1
    20001d26:	0104b903          	ld	s2,16(s1)
    20001d2a:	0084aa83          	lw	s5,8(s1)
    20001d2e:	3afd                	addiw	s5,s5,-1
    20001d30:	020ad063          	bgez	s5,20001d50 <_fwalk_reent+0x4c>
    20001d34:	6084                	ld	s1,0(s1)
    20001d36:	f8e5                	bnez	s1,20001d26 <_fwalk_reent+0x22>
    20001d38:	60a6                	ld	ra,72(sp)
    20001d3a:	8522                	mv	a0,s0
    20001d3c:	6406                	ld	s0,64(sp)
    20001d3e:	74e2                	ld	s1,56(sp)
    20001d40:	7942                	ld	s2,48(sp)
    20001d42:	79a2                	ld	s3,40(sp)
    20001d44:	7a02                	ld	s4,32(sp)
    20001d46:	6ae2                	ld	s5,24(sp)
    20001d48:	6b42                	ld	s6,16(sp)
    20001d4a:	6ba2                	ld	s7,8(sp)
    20001d4c:	6161                	addi	sp,sp,80
    20001d4e:	8082                	ret
    20001d50:	01095783          	lhu	a5,16(s2)
    20001d54:	00fb7b63          	bgeu	s6,a5,20001d6a <_fwalk_reent+0x66>
    20001d58:	01291783          	lh	a5,18(s2)
    20001d5c:	01778763          	beq	a5,s7,20001d6a <_fwalk_reent+0x66>
    20001d60:	85ca                	mv	a1,s2
    20001d62:	854e                	mv	a0,s3
    20001d64:	9a02                	jalr	s4
    20001d66:	8c49                	or	s0,s0,a0
    20001d68:	2401                	sext.w	s0,s0
    20001d6a:	0b090913          	addi	s2,s2,176
    20001d6e:	b7c1                	j	20001d2e <_fwalk_reent+0x2a>

0000000020001d70 <memset>:
    20001d70:	433d                	li	t1,15
    20001d72:	872a                	mv	a4,a0
    20001d74:	02c37163          	bgeu	t1,a2,20001d96 <memset+0x26>
    20001d78:	00f77793          	andi	a5,a4,15
    20001d7c:	e3c1                	bnez	a5,20001dfc <memset+0x8c>
    20001d7e:	e1bd                	bnez	a1,20001de4 <memset+0x74>
    20001d80:	ff067693          	andi	a3,a2,-16
    20001d84:	8a3d                	andi	a2,a2,15
    20001d86:	96ba                	add	a3,a3,a4
    20001d88:	e30c                	sd	a1,0(a4)
    20001d8a:	e70c                	sd	a1,8(a4)
    20001d8c:	0741                	addi	a4,a4,16
    20001d8e:	fed76de3          	bltu	a4,a3,20001d88 <memset+0x18>
    20001d92:	e211                	bnez	a2,20001d96 <memset+0x26>
    20001d94:	8082                	ret
    20001d96:	40c306b3          	sub	a3,t1,a2
    20001d9a:	068a                	slli	a3,a3,0x2
    20001d9c:	00000297          	auipc	t0,0x0
    20001da0:	9696                	add	a3,a3,t0
    20001da2:	00a68067          	jr	10(a3) # c00000a <_sp+0x3ffe32a>
    20001da6:	00b70723          	sb	a1,14(a4) # ffffffff8000000e <_data_source_start+0xffffffff5fffc726>
    20001daa:	00b706a3          	sb	a1,13(a4)
    20001dae:	00b70623          	sb	a1,12(a4)
    20001db2:	00b705a3          	sb	a1,11(a4)
    20001db6:	00b70523          	sb	a1,10(a4)
    20001dba:	00b704a3          	sb	a1,9(a4)
    20001dbe:	00b70423          	sb	a1,8(a4)
    20001dc2:	00b703a3          	sb	a1,7(a4)
    20001dc6:	00b70323          	sb	a1,6(a4)
    20001dca:	00b702a3          	sb	a1,5(a4)
    20001dce:	00b70223          	sb	a1,4(a4)
    20001dd2:	00b701a3          	sb	a1,3(a4)
    20001dd6:	00b70123          	sb	a1,2(a4)
    20001dda:	00b700a3          	sb	a1,1(a4)
    20001dde:	00b70023          	sb	a1,0(a4)
    20001de2:	8082                	ret
    20001de4:	0ff5f593          	zext.b	a1,a1
    20001de8:	00859693          	slli	a3,a1,0x8
    20001dec:	8dd5                	or	a1,a1,a3
    20001dee:	01059693          	slli	a3,a1,0x10
    20001df2:	8dd5                	or	a1,a1,a3
    20001df4:	02059693          	slli	a3,a1,0x20
    20001df8:	8dd5                	or	a1,a1,a3
    20001dfa:	b759                	j	20001d80 <memset+0x10>
    20001dfc:	00279693          	slli	a3,a5,0x2
    20001e00:	00000297          	auipc	t0,0x0
    20001e04:	9696                	add	a3,a3,t0
    20001e06:	8286                	mv	t0,ra
    20001e08:	fa2680e7          	jalr	-94(a3)
    20001e0c:	8096                	mv	ra,t0
    20001e0e:	17c1                	addi	a5,a5,-16
    20001e10:	8f1d                	sub	a4,a4,a5
    20001e12:	963e                	add	a2,a2,a5
    20001e14:	f8c371e3          	bgeu	t1,a2,20001d96 <memset+0x26>
    20001e18:	b79d                	j	20001d7e <memset+0xe>

0000000020001e1a <__malloc_lock>:
    20001e1a:	8082                	ret

0000000020001e1c <__malloc_unlock>:
    20001e1c:	8082                	ret

0000000020001e1e <__ssputs_r>:
    20001e1e:	7139                	addi	sp,sp,-64
    20001e20:	f04a                	sd	s2,32(sp)
    20001e22:	00c5a903          	lw	s2,12(a1)
    20001e26:	f822                	sd	s0,48(sp)
    20001e28:	ec4e                	sd	s3,24(sp)
    20001e2a:	e852                	sd	s4,16(sp)
    20001e2c:	fc06                	sd	ra,56(sp)
    20001e2e:	f426                	sd	s1,40(sp)
    20001e30:	e456                	sd	s5,8(sp)
    20001e32:	e05a                	sd	s6,0(sp)
    20001e34:	842e                	mv	s0,a1
    20001e36:	8a32                	mv	s4,a2
    20001e38:	89b6                	mv	s3,a3
    20001e3a:	0b26e263          	bltu	a3,s2,20001ede <__ssputs_r+0xc0>
    20001e3e:	0105d783          	lhu	a5,16(a1)
    20001e42:	4807f713          	andi	a4,a5,1152
    20001e46:	cb51                	beqz	a4,20001eda <__ssputs_r+0xbc>
    20001e48:	5014                	lw	a3,32(s0)
    20001e4a:	448d                	li	s1,3
    20001e4c:	6d8c                	ld	a1,24(a1)
    20001e4e:	02d484bb          	mulw	s1,s1,a3
    20001e52:	4689                	li	a3,2
    20001e54:	6018                	ld	a4,0(s0)
    20001e56:	8b2a                	mv	s6,a0
    20001e58:	8f0d                	sub	a4,a4,a1
    20001e5a:	00070a9b          	sext.w	s5,a4
    20001e5e:	02d4c4bb          	divw	s1,s1,a3
    20001e62:	00198693          	addi	a3,s3,1
    20001e66:	96d6                	add	a3,a3,s5
    20001e68:	00d4f563          	bgeu	s1,a3,20001e72 <__ssputs_r+0x54>
    20001e6c:	0019849b          	addiw	s1,s3,1
    20001e70:	9cb9                	addw	s1,s1,a4
    20001e72:	4007f793          	andi	a5,a5,1024
    20001e76:	c7c1                	beqz	a5,20001efe <__ssputs_r+0xe0>
    20001e78:	85a6                	mv	a1,s1
    20001e7a:	855a                	mv	a0,s6
    20001e7c:	9fdff0ef          	jal	ra,20001878 <_malloc_r>
    20001e80:	892a                	mv	s2,a0
    20001e82:	e50d                	bnez	a0,20001eac <__ssputs_r+0x8e>
    20001e84:	47b1                	li	a5,12
    20001e86:	00fb2023          	sw	a5,0(s6)
    20001e8a:	01045783          	lhu	a5,16(s0)
    20001e8e:	557d                	li	a0,-1
    20001e90:	0407e793          	ori	a5,a5,64
    20001e94:	00f41823          	sh	a5,16(s0)
    20001e98:	70e2                	ld	ra,56(sp)
    20001e9a:	7442                	ld	s0,48(sp)
    20001e9c:	74a2                	ld	s1,40(sp)
    20001e9e:	7902                	ld	s2,32(sp)
    20001ea0:	69e2                	ld	s3,24(sp)
    20001ea2:	6a42                	ld	s4,16(sp)
    20001ea4:	6aa2                	ld	s5,8(sp)
    20001ea6:	6b02                	ld	s6,0(sp)
    20001ea8:	6121                	addi	sp,sp,64
    20001eaa:	8082                	ret
    20001eac:	6c0c                	ld	a1,24(s0)
    20001eae:	8656                	mv	a2,s5
    20001eb0:	522010ef          	jal	ra,200033d2 <memcpy>
    20001eb4:	01045783          	lhu	a5,16(s0)
    20001eb8:	b7f7f793          	andi	a5,a5,-1153
    20001ebc:	0807e793          	ori	a5,a5,128
    20001ec0:	00f41823          	sh	a5,16(s0)
    20001ec4:	01243c23          	sd	s2,24(s0)
    20001ec8:	d004                	sw	s1,32(s0)
    20001eca:	9956                	add	s2,s2,s5
    20001ecc:	415484bb          	subw	s1,s1,s5
    20001ed0:	01243023          	sd	s2,0(s0)
    20001ed4:	c444                	sw	s1,12(s0)
    20001ed6:	0009891b          	sext.w	s2,s3
    20001eda:	0129f463          	bgeu	s3,s2,20001ee2 <__ssputs_r+0xc4>
    20001ede:	0009891b          	sext.w	s2,s3
    20001ee2:	6008                	ld	a0,0(s0)
    20001ee4:	864a                	mv	a2,s2
    20001ee6:	85d2                	mv	a1,s4
    20001ee8:	5c6010ef          	jal	ra,200034ae <memmove>
    20001eec:	445c                	lw	a5,12(s0)
    20001eee:	4501                	li	a0,0
    20001ef0:	412787bb          	subw	a5,a5,s2
    20001ef4:	c45c                	sw	a5,12(s0)
    20001ef6:	601c                	ld	a5,0(s0)
    20001ef8:	97ca                	add	a5,a5,s2
    20001efa:	e01c                	sd	a5,0(s0)
    20001efc:	bf71                	j	20001e98 <__ssputs_r+0x7a>
    20001efe:	8626                	mv	a2,s1
    20001f00:	855a                	mv	a0,s6
    20001f02:	5f6010ef          	jal	ra,200034f8 <_realloc_r>
    20001f06:	892a                	mv	s2,a0
    20001f08:	fd55                	bnez	a0,20001ec4 <__ssputs_r+0xa6>
    20001f0a:	6c0c                	ld	a1,24(s0)
    20001f0c:	855a                	mv	a0,s6
    20001f0e:	8c7ff0ef          	jal	ra,200017d4 <_free_r>
    20001f12:	bf8d                	j	20001e84 <__ssputs_r+0x66>

0000000020001f14 <__ssprint_r>:
    20001f14:	6a1c                	ld	a5,16(a2)
    20001f16:	711d                	addi	sp,sp,-96
    20001f18:	e06a                	sd	s10,0(sp)
    20001f1a:	ec86                	sd	ra,88(sp)
    20001f1c:	e8a2                	sd	s0,80(sp)
    20001f1e:	e4a6                	sd	s1,72(sp)
    20001f20:	e0ca                	sd	s2,64(sp)
    20001f22:	fc4e                	sd	s3,56(sp)
    20001f24:	f852                	sd	s4,48(sp)
    20001f26:	f456                	sd	s5,40(sp)
    20001f28:	f05a                	sd	s6,32(sp)
    20001f2a:	ec5e                	sd	s7,24(sp)
    20001f2c:	e862                	sd	s8,16(sp)
    20001f2e:	e466                	sd	s9,8(sp)
    20001f30:	8d32                	mv	s10,a2
    20001f32:	c7ed                	beqz	a5,2000201c <__ssprint_r+0x108>
    20001f34:	00063a83          	ld	s5,0(a2)
    20001f38:	89aa                	mv	s3,a0
    20001f3a:	842e                	mv	s0,a1
    20001f3c:	4a01                	li	s4,0
    20001f3e:	4c81                	li	s9,0
    20001f40:	4b0d                	li	s6,3
    20001f42:	4b89                	li	s7,2
    20001f44:	060c8563          	beqz	s9,20001fae <__ssprint_r+0x9a>
    20001f48:	00c42903          	lw	s2,12(s0)
    20001f4c:	092cee63          	bltu	s9,s2,20001fe8 <__ssprint_r+0xd4>
    20001f50:	01045703          	lhu	a4,16(s0)
    20001f54:	48077793          	andi	a5,a4,1152
    20001f58:	cbc1                	beqz	a5,20001fe8 <__ssprint_r+0xd4>
    20001f5a:	5004                	lw	s1,32(s0)
    20001f5c:	6c0c                	ld	a1,24(s0)
    20001f5e:	601c                	ld	a5,0(s0)
    20001f60:	029b04bb          	mulw	s1,s6,s1
    20001f64:	8f8d                	sub	a5,a5,a1
    20001f66:	00078c1b          	sext.w	s8,a5
    20001f6a:	001c0693          	addi	a3,s8,1
    20001f6e:	96e6                	add	a3,a3,s9
    20001f70:	0374c4bb          	divw	s1,s1,s7
    20001f74:	00d4f563          	bgeu	s1,a3,20001f7e <__ssprint_r+0x6a>
    20001f78:	2785                	addiw	a5,a5,1
    20001f7a:	019784bb          	addw	s1,a5,s9
    20001f7e:	40077713          	andi	a4,a4,1024
    20001f82:	cf55                	beqz	a4,2000203e <__ssprint_r+0x12a>
    20001f84:	85a6                	mv	a1,s1
    20001f86:	854e                	mv	a0,s3
    20001f88:	8f1ff0ef          	jal	ra,20001878 <_malloc_r>
    20001f8c:	892a                	mv	s2,a0
    20001f8e:	e515                	bnez	a0,20001fba <__ssprint_r+0xa6>
    20001f90:	47b1                	li	a5,12
    20001f92:	00f9a023          	sw	a5,0(s3)
    20001f96:	01045783          	lhu	a5,16(s0)
    20001f9a:	557d                	li	a0,-1
    20001f9c:	0407e793          	ori	a5,a5,64
    20001fa0:	00f41823          	sh	a5,16(s0)
    20001fa4:	000d3823          	sd	zero,16(s10)
    20001fa8:	000d2423          	sw	zero,8(s10)
    20001fac:	a89d                	j	20002022 <__ssprint_r+0x10e>
    20001fae:	000aba03          	ld	s4,0(s5)
    20001fb2:	008abc83          	ld	s9,8(s5)
    20001fb6:	0ac1                	addi	s5,s5,16
    20001fb8:	b771                	j	20001f44 <__ssprint_r+0x30>
    20001fba:	6c0c                	ld	a1,24(s0)
    20001fbc:	8662                	mv	a2,s8
    20001fbe:	414010ef          	jal	ra,200033d2 <memcpy>
    20001fc2:	01045783          	lhu	a5,16(s0)
    20001fc6:	b7f7f793          	andi	a5,a5,-1153
    20001fca:	0807e793          	ori	a5,a5,128
    20001fce:	00f41823          	sh	a5,16(s0)
    20001fd2:	01243c23          	sd	s2,24(s0)
    20001fd6:	d004                	sw	s1,32(s0)
    20001fd8:	9962                	add	s2,s2,s8
    20001fda:	418484bb          	subw	s1,s1,s8
    20001fde:	01243023          	sd	s2,0(s0)
    20001fe2:	c444                	sw	s1,12(s0)
    20001fe4:	000c891b          	sext.w	s2,s9
    20001fe8:	000c849b          	sext.w	s1,s9
    20001fec:	012cf363          	bgeu	s9,s2,20001ff2 <__ssprint_r+0xde>
    20001ff0:	8926                	mv	s2,s1
    20001ff2:	6008                	ld	a0,0(s0)
    20001ff4:	85d2                	mv	a1,s4
    20001ff6:	864a                	mv	a2,s2
    20001ff8:	4b6010ef          	jal	ra,200034ae <memmove>
    20001ffc:	445c                	lw	a5,12(s0)
    20001ffe:	9a26                	add	s4,s4,s1
    20002000:	409c8cb3          	sub	s9,s9,s1
    20002004:	412787bb          	subw	a5,a5,s2
    20002008:	c45c                	sw	a5,12(s0)
    2000200a:	601c                	ld	a5,0(s0)
    2000200c:	97ca                	add	a5,a5,s2
    2000200e:	e01c                	sd	a5,0(s0)
    20002010:	010d3783          	ld	a5,16(s10)
    20002014:	8f85                	sub	a5,a5,s1
    20002016:	00fd3823          	sd	a5,16(s10)
    2000201a:	f78d                	bnez	a5,20001f44 <__ssprint_r+0x30>
    2000201c:	000d2423          	sw	zero,8(s10)
    20002020:	4501                	li	a0,0
    20002022:	60e6                	ld	ra,88(sp)
    20002024:	6446                	ld	s0,80(sp)
    20002026:	64a6                	ld	s1,72(sp)
    20002028:	6906                	ld	s2,64(sp)
    2000202a:	79e2                	ld	s3,56(sp)
    2000202c:	7a42                	ld	s4,48(sp)
    2000202e:	7aa2                	ld	s5,40(sp)
    20002030:	7b02                	ld	s6,32(sp)
    20002032:	6be2                	ld	s7,24(sp)
    20002034:	6c42                	ld	s8,16(sp)
    20002036:	6ca2                	ld	s9,8(sp)
    20002038:	6d02                	ld	s10,0(sp)
    2000203a:	6125                	addi	sp,sp,96
    2000203c:	8082                	ret
    2000203e:	8626                	mv	a2,s1
    20002040:	854e                	mv	a0,s3
    20002042:	4b6010ef          	jal	ra,200034f8 <_realloc_r>
    20002046:	892a                	mv	s2,a0
    20002048:	f549                	bnez	a0,20001fd2 <__ssprint_r+0xbe>
    2000204a:	6c0c                	ld	a1,24(s0)
    2000204c:	854e                	mv	a0,s3
    2000204e:	f86ff0ef          	jal	ra,200017d4 <_free_r>
    20002052:	bf3d                	j	20001f90 <__ssprint_r+0x7c>

0000000020002054 <_svfiprintf_r>:
    20002054:	0105d783          	lhu	a5,16(a1)
    20002058:	7155                	addi	sp,sp,-208
    2000205a:	e1a2                	sd	s0,192(sp)
    2000205c:	fd26                	sd	s1,184(sp)
    2000205e:	f94a                	sd	s2,176(sp)
    20002060:	f54e                	sd	s3,168(sp)
    20002062:	f152                	sd	s4,160(sp)
    20002064:	e586                	sd	ra,200(sp)
    20002066:	ed56                	sd	s5,152(sp)
    20002068:	e95a                	sd	s6,144(sp)
    2000206a:	e55e                	sd	s7,136(sp)
    2000206c:	e162                	sd	s8,128(sp)
    2000206e:	fce6                	sd	s9,120(sp)
    20002070:	f8ea                	sd	s10,112(sp)
    20002072:	0807f793          	andi	a5,a5,128
    20002076:	8a2a                	mv	s4,a0
    20002078:	892e                	mv	s2,a1
    2000207a:	84b2                	mv	s1,a2
    2000207c:	8436                	mv	s0,a3
    2000207e:	4981                	li	s3,0
    20002080:	c3b1                	beqz	a5,200020c4 <_svfiprintf_r+0x70>
    20002082:	6d9c                	ld	a5,24(a1)
    20002084:	e3a1                	bnez	a5,200020c4 <_svfiprintf_r+0x70>
    20002086:	04000593          	li	a1,64
    2000208a:	feeff0ef          	jal	ra,20001878 <_malloc_r>
    2000208e:	00a93023          	sd	a0,0(s2)
    20002092:	00a93c23          	sd	a0,24(s2)
    20002096:	e11d                	bnez	a0,200020bc <_svfiprintf_r+0x68>
    20002098:	47b1                	li	a5,12
    2000209a:	00fa2023          	sw	a5,0(s4)
    2000209e:	557d                	li	a0,-1
    200020a0:	60ae                	ld	ra,200(sp)
    200020a2:	640e                	ld	s0,192(sp)
    200020a4:	74ea                	ld	s1,184(sp)
    200020a6:	794a                	ld	s2,176(sp)
    200020a8:	79aa                	ld	s3,168(sp)
    200020aa:	7a0a                	ld	s4,160(sp)
    200020ac:	6aea                	ld	s5,152(sp)
    200020ae:	6b4a                	ld	s6,144(sp)
    200020b0:	6baa                	ld	s7,136(sp)
    200020b2:	6c0a                	ld	s8,128(sp)
    200020b4:	7ce6                	ld	s9,120(sp)
    200020b6:	7d46                	ld	s10,112(sp)
    200020b8:	6169                	addi	sp,sp,208
    200020ba:	8082                	ret
    200020bc:	04000793          	li	a5,64
    200020c0:	02f92023          	sw	a5,32(s2)
    200020c4:	02000793          	li	a5,32
    200020c8:	02f104a3          	sb	a5,41(sp)
    200020cc:	5afd                	li	s5,-1
    200020ce:	03000793          	li	a5,48
    200020d2:	d202                	sw	zero,36(sp)
    200020d4:	02f10523          	sb	a5,42(sp)
    200020d8:	e422                	sd	s0,8(sp)
    200020da:	02500b93          	li	s7,37
    200020de:	020a9c13          	slli	s8,s5,0x20
    200020e2:	00001b17          	auipc	s6,0x1
    200020e6:	75eb0b13          	addi	s6,s6,1886 # 20003840 <__sf_fake_stdout+0x38>
    200020ea:	4c85                	li	s9,1
    200020ec:	8426                	mv	s0,s1
    200020ee:	00044783          	lbu	a5,0(s0)
    200020f2:	c399                	beqz	a5,200020f8 <_svfiprintf_r+0xa4>
    200020f4:	09779c63          	bne	a5,s7,2000218c <_svfiprintf_r+0x138>
    200020f8:	40940d3b          	subw	s10,s0,s1
    200020fc:	000d0e63          	beqz	s10,20002118 <_svfiprintf_r+0xc4>
    20002100:	86ea                	mv	a3,s10
    20002102:	8626                	mv	a2,s1
    20002104:	85ca                	mv	a1,s2
    20002106:	8552                	mv	a0,s4
    20002108:	d17ff0ef          	jal	ra,20001e1e <__ssputs_r>
    2000210c:	1b550563          	beq	a0,s5,200022b6 <_svfiprintf_r+0x262>
    20002110:	5792                	lw	a5,36(sp)
    20002112:	01a787bb          	addw	a5,a5,s10
    20002116:	d23e                	sw	a5,36(sp)
    20002118:	00044783          	lbu	a5,0(s0)
    2000211c:	18078d63          	beqz	a5,200022b6 <_svfiprintf_r+0x262>
    20002120:	00140493          	addi	s1,s0,1
    20002124:	e862                	sd	s8,16(sp)
    20002126:	ec02                	sd	zero,24(sp)
    20002128:	040109a3          	sb	zero,83(sp)
    2000212c:	d482                	sw	zero,104(sp)
    2000212e:	0004c583          	lbu	a1,0(s1)
    20002132:	4615                	li	a2,5
    20002134:	855a                	mv	a0,s6
    20002136:	282010ef          	jal	ra,200033b8 <memchr>
    2000213a:	00148413          	addi	s0,s1,1
    2000213e:	e929                	bnez	a0,20002190 <_svfiprintf_r+0x13c>
    20002140:	47c2                	lw	a5,16(sp)
    20002142:	0107f713          	andi	a4,a5,16
    20002146:	c709                	beqz	a4,20002150 <_svfiprintf_r+0xfc>
    20002148:	02000713          	li	a4,32
    2000214c:	04e109a3          	sb	a4,83(sp)
    20002150:	0087f713          	andi	a4,a5,8
    20002154:	c709                	beqz	a4,2000215e <_svfiprintf_r+0x10a>
    20002156:	02b00713          	li	a4,43
    2000215a:	04e109a3          	sb	a4,83(sp)
    2000215e:	0004c683          	lbu	a3,0(s1)
    20002162:	02a00713          	li	a4,42
    20002166:	02e68e63          	beq	a3,a4,200021a2 <_svfiprintf_r+0x14e>
    2000216a:	47f2                	lw	a5,28(sp)
    2000216c:	8426                	mv	s0,s1
    2000216e:	4681                	li	a3,0
    20002170:	4625                	li	a2,9
    20002172:	4829                	li	a6,10
    20002174:	00044703          	lbu	a4,0(s0)
    20002178:	00140513          	addi	a0,s0,1
    2000217c:	fd07059b          	addiw	a1,a4,-48
    20002180:	872e                	mv	a4,a1
    20002182:	06b67563          	bgeu	a2,a1,200021ec <_svfiprintf_r+0x198>
    20002186:	c695                	beqz	a3,200021b2 <_svfiprintf_r+0x15e>
    20002188:	ce3e                	sw	a5,28(sp)
    2000218a:	a025                	j	200021b2 <_svfiprintf_r+0x15e>
    2000218c:	0405                	addi	s0,s0,1
    2000218e:	b785                	j	200020ee <_svfiprintf_r+0x9a>
    20002190:	47c2                	lw	a5,16(sp)
    20002192:	41650533          	sub	a0,a0,s6
    20002196:	00ac953b          	sllw	a0,s9,a0
    2000219a:	8d5d                	or	a0,a0,a5
    2000219c:	c82a                	sw	a0,16(sp)
    2000219e:	84a2                	mv	s1,s0
    200021a0:	b779                	j	2000212e <_svfiprintf_r+0xda>
    200021a2:	6722                	ld	a4,8(sp)
    200021a4:	00870693          	addi	a3,a4,8
    200021a8:	4318                	lw	a4,0(a4)
    200021aa:	e436                	sd	a3,8(sp)
    200021ac:	02074963          	bltz	a4,200021de <_svfiprintf_r+0x18a>
    200021b0:	ce3a                	sw	a4,28(sp)
    200021b2:	00044703          	lbu	a4,0(s0)
    200021b6:	02e00793          	li	a5,46
    200021ba:	04f71063          	bne	a4,a5,200021fa <_svfiprintf_r+0x1a6>
    200021be:	00144703          	lbu	a4,1(s0)
    200021c2:	02a00793          	li	a5,42
    200021c6:	0af71063          	bne	a4,a5,20002266 <_svfiprintf_r+0x212>
    200021ca:	67a2                	ld	a5,8(sp)
    200021cc:	0409                	addi	s0,s0,2
    200021ce:	00878713          	addi	a4,a5,8 # ffffffffffff0008 <_data_source_start+0xffffffffdffec720>
    200021d2:	439c                	lw	a5,0(a5)
    200021d4:	e43a                	sd	a4,8(sp)
    200021d6:	0207c163          	bltz	a5,200021f8 <_svfiprintf_r+0x1a4>
    200021da:	ca3e                	sw	a5,20(sp)
    200021dc:	a839                	j	200021fa <_svfiprintf_r+0x1a6>
    200021de:	40e0073b          	negw	a4,a4
    200021e2:	0027e793          	ori	a5,a5,2
    200021e6:	ce3a                	sw	a4,28(sp)
    200021e8:	c83e                	sw	a5,16(sp)
    200021ea:	b7e1                	j	200021b2 <_svfiprintf_r+0x15e>
    200021ec:	02f807bb          	mulw	a5,a6,a5
    200021f0:	842a                	mv	s0,a0
    200021f2:	4685                	li	a3,1
    200021f4:	9fb9                	addw	a5,a5,a4
    200021f6:	bfbd                	j	20002174 <_svfiprintf_r+0x120>
    200021f8:	ca56                	sw	s5,20(sp)
    200021fa:	00044583          	lbu	a1,0(s0)
    200021fe:	460d                	li	a2,3
    20002200:	00001517          	auipc	a0,0x1
    20002204:	64850513          	addi	a0,a0,1608 # 20003848 <__sf_fake_stdout+0x40>
    20002208:	1b0010ef          	jal	ra,200033b8 <memchr>
    2000220c:	cd11                	beqz	a0,20002228 <_svfiprintf_r+0x1d4>
    2000220e:	00001797          	auipc	a5,0x1
    20002212:	63a78793          	addi	a5,a5,1594 # 20003848 <__sf_fake_stdout+0x40>
    20002216:	8d1d                	sub	a0,a0,a5
    20002218:	04000793          	li	a5,64
    2000221c:	00a7953b          	sllw	a0,a5,a0
    20002220:	47c2                	lw	a5,16(sp)
    20002222:	0405                	addi	s0,s0,1
    20002224:	8d5d                	or	a0,a0,a5
    20002226:	c82a                	sw	a0,16(sp)
    20002228:	00044583          	lbu	a1,0(s0)
    2000222c:	4619                	li	a2,6
    2000222e:	00001517          	auipc	a0,0x1
    20002232:	62250513          	addi	a0,a0,1570 # 20003850 <__sf_fake_stdout+0x48>
    20002236:	00140493          	addi	s1,s0,1
    2000223a:	02b10423          	sb	a1,40(sp)
    2000223e:	17a010ef          	jal	ra,200033b8 <memchr>
    20002242:	c159                	beqz	a0,200022c8 <_svfiprintf_r+0x274>
    20002244:	00000793          	li	a5,0
    20002248:	eba1                	bnez	a5,20002298 <_svfiprintf_r+0x244>
    2000224a:	4742                	lw	a4,16(sp)
    2000224c:	67a2                	ld	a5,8(sp)
    2000224e:	10077713          	andi	a4,a4,256
    20002252:	c329                	beqz	a4,20002294 <_svfiprintf_r+0x240>
    20002254:	07bd                	addi	a5,a5,15
    20002256:	9bc1                	andi	a5,a5,-16
    20002258:	07c1                	addi	a5,a5,16
    2000225a:	e43e                	sd	a5,8(sp)
    2000225c:	5792                	lw	a5,36(sp)
    2000225e:	013787bb          	addw	a5,a5,s3
    20002262:	d23e                	sw	a5,36(sp)
    20002264:	b561                	j	200020ec <_svfiprintf_r+0x98>
    20002266:	0405                	addi	s0,s0,1
    20002268:	ca02                	sw	zero,20(sp)
    2000226a:	4681                	li	a3,0
    2000226c:	4781                	li	a5,0
    2000226e:	4625                	li	a2,9
    20002270:	4829                	li	a6,10
    20002272:	00044703          	lbu	a4,0(s0)
    20002276:	00140513          	addi	a0,s0,1
    2000227a:	fd07059b          	addiw	a1,a4,-48
    2000227e:	872e                	mv	a4,a1
    20002280:	00b67463          	bgeu	a2,a1,20002288 <_svfiprintf_r+0x234>
    20002284:	fab9                	bnez	a3,200021da <_svfiprintf_r+0x186>
    20002286:	bf95                	j	200021fa <_svfiprintf_r+0x1a6>
    20002288:	02f807bb          	mulw	a5,a6,a5
    2000228c:	842a                	mv	s0,a0
    2000228e:	4685                	li	a3,1
    20002290:	9fb9                	addw	a5,a5,a4
    20002292:	b7c5                	j	20002272 <_svfiprintf_r+0x21e>
    20002294:	07a1                	addi	a5,a5,8
    20002296:	b7d1                	j	2000225a <_svfiprintf_r+0x206>
    20002298:	0038                	addi	a4,sp,8
    2000229a:	00000697          	auipc	a3,0x0
    2000229e:	b8468693          	addi	a3,a3,-1148 # 20001e1e <__ssputs_r>
    200022a2:	864a                	mv	a2,s2
    200022a4:	080c                	addi	a1,sp,16
    200022a6:	8552                	mv	a0,s4
    200022a8:	00000097          	auipc	ra,0x0
    200022ac:	000000e7          	jalr	zero # 0 <__stack_size-0x400>
    200022b0:	89aa                	mv	s3,a0
    200022b2:	fb5515e3          	bne	a0,s5,2000225c <_svfiprintf_r+0x208>
    200022b6:	01095783          	lhu	a5,16(s2)
    200022ba:	557d                	li	a0,-1
    200022bc:	0407f793          	andi	a5,a5,64
    200022c0:	de0790e3          	bnez	a5,200020a0 <_svfiprintf_r+0x4c>
    200022c4:	5512                	lw	a0,36(sp)
    200022c6:	bbe9                	j	200020a0 <_svfiprintf_r+0x4c>
    200022c8:	0038                	addi	a4,sp,8
    200022ca:	00000697          	auipc	a3,0x0
    200022ce:	b5468693          	addi	a3,a3,-1196 # 20001e1e <__ssputs_r>
    200022d2:	864a                	mv	a2,s2
    200022d4:	080c                	addi	a1,sp,16
    200022d6:	8552                	mv	a0,s4
    200022d8:	12a000ef          	jal	ra,20002402 <_printf_i>
    200022dc:	bfd1                	j	200022b0 <_svfiprintf_r+0x25c>

00000000200022de <_printf_common>:
    200022de:	715d                	addi	sp,sp,-80
    200022e0:	499c                	lw	a5,16(a1)
    200022e2:	f052                	sd	s4,32(sp)
    200022e4:	8a3a                	mv	s4,a4
    200022e6:	4598                	lw	a4,8(a1)
    200022e8:	e0a2                	sd	s0,64(sp)
    200022ea:	f84a                	sd	s2,48(sp)
    200022ec:	f44e                	sd	s3,40(sp)
    200022ee:	ec56                	sd	s5,24(sp)
    200022f0:	8932                	mv	s2,a2
    200022f2:	8ab6                	mv	s5,a3
    200022f4:	e486                	sd	ra,72(sp)
    200022f6:	fc26                	sd	s1,56(sp)
    200022f8:	e85a                	sd	s6,16(sp)
    200022fa:	e45e                	sd	s7,8(sp)
    200022fc:	0007861b          	sext.w	a2,a5
    20002300:	0007069b          	sext.w	a3,a4
    20002304:	89aa                	mv	s3,a0
    20002306:	842e                	mv	s0,a1
    20002308:	00d65363          	bge	a2,a3,2000230e <_printf_common+0x30>
    2000230c:	87ba                	mv	a5,a4
    2000230e:	00f92023          	sw	a5,0(s2)
    20002312:	04344703          	lbu	a4,67(s0)
    20002316:	c701                	beqz	a4,2000231e <_printf_common+0x40>
    20002318:	2785                	addiw	a5,a5,1
    2000231a:	00f92023          	sw	a5,0(s2)
    2000231e:	401c                	lw	a5,0(s0)
    20002320:	0207f793          	andi	a5,a5,32
    20002324:	c791                	beqz	a5,20002330 <_printf_common+0x52>
    20002326:	00092783          	lw	a5,0(s2)
    2000232a:	2789                	addiw	a5,a5,2
    2000232c:	00f92023          	sw	a5,0(s2)
    20002330:	4004                	lw	s1,0(s0)
    20002332:	8899                	andi	s1,s1,6
    20002334:	e891                	bnez	s1,20002348 <_printf_common+0x6a>
    20002336:	01940b13          	addi	s6,s0,25
    2000233a:	5bfd                	li	s7,-1
    2000233c:	445c                	lw	a5,12(s0)
    2000233e:	00092703          	lw	a4,0(s2)
    20002342:	9f99                	subw	a5,a5,a4
    20002344:	06f4c063          	blt	s1,a5,200023a4 <_printf_common+0xc6>
    20002348:	04344783          	lbu	a5,67(s0)
    2000234c:	00f03633          	snez	a2,a5
    20002350:	00f036b3          	snez	a3,a5
    20002354:	401c                	lw	a5,0(s0)
    20002356:	0207f793          	andi	a5,a5,32
    2000235a:	ebb5                	bnez	a5,200023ce <_printf_common+0xf0>
    2000235c:	04340613          	addi	a2,s0,67
    20002360:	85d6                	mv	a1,s5
    20002362:	854e                	mv	a0,s3
    20002364:	9a02                	jalr	s4
    20002366:	57fd                	li	a5,-1
    20002368:	04f50563          	beq	a0,a5,200023b2 <_printf_common+0xd4>
    2000236c:	401c                	lw	a5,0(s0)
    2000236e:	4611                	li	a2,4
    20002370:	4454                	lw	a3,12(s0)
    20002372:	8b99                	andi	a5,a5,6
    20002374:	00092703          	lw	a4,0(s2)
    20002378:	4481                	li	s1,0
    2000237a:	00c79863          	bne	a5,a2,2000238a <_printf_common+0xac>
    2000237e:	40e687bb          	subw	a5,a3,a4
    20002382:	84be                	mv	s1,a5
    20002384:	0007d363          	bgez	a5,2000238a <_printf_common+0xac>
    20002388:	4481                	li	s1,0
    2000238a:	441c                	lw	a5,8(s0)
    2000238c:	4818                	lw	a4,16(s0)
    2000238e:	00f75463          	bge	a4,a5,20002396 <_printf_common+0xb8>
    20002392:	9f99                	subw	a5,a5,a4
    20002394:	9cbd                	addw	s1,s1,a5
    20002396:	4901                	li	s2,0
    20002398:	0469                	addi	s0,s0,26
    2000239a:	5b7d                	li	s6,-1
    2000239c:	05249a63          	bne	s1,s2,200023f0 <_printf_common+0x112>
    200023a0:	4501                	li	a0,0
    200023a2:	a809                	j	200023b4 <_printf_common+0xd6>
    200023a4:	4685                	li	a3,1
    200023a6:	865a                	mv	a2,s6
    200023a8:	85d6                	mv	a1,s5
    200023aa:	854e                	mv	a0,s3
    200023ac:	9a02                	jalr	s4
    200023ae:	01751e63          	bne	a0,s7,200023ca <_printf_common+0xec>
    200023b2:	557d                	li	a0,-1
    200023b4:	60a6                	ld	ra,72(sp)
    200023b6:	6406                	ld	s0,64(sp)
    200023b8:	74e2                	ld	s1,56(sp)
    200023ba:	7942                	ld	s2,48(sp)
    200023bc:	79a2                	ld	s3,40(sp)
    200023be:	7a02                	ld	s4,32(sp)
    200023c0:	6ae2                	ld	s5,24(sp)
    200023c2:	6b42                	ld	s6,16(sp)
    200023c4:	6ba2                	ld	s7,8(sp)
    200023c6:	6161                	addi	sp,sp,80
    200023c8:	8082                	ret
    200023ca:	2485                	addiw	s1,s1,1
    200023cc:	bf85                	j	2000233c <_printf_common+0x5e>
    200023ce:	00d407b3          	add	a5,s0,a3
    200023d2:	03000693          	li	a3,48
    200023d6:	04d781a3          	sb	a3,67(a5)
    200023da:	0016071b          	addiw	a4,a2,1
    200023de:	0026069b          	addiw	a3,a2,2
    200023e2:	04544603          	lbu	a2,69(s0)
    200023e6:	00e407b3          	add	a5,s0,a4
    200023ea:	04c781a3          	sb	a2,67(a5)
    200023ee:	b7bd                	j	2000235c <_printf_common+0x7e>
    200023f0:	4685                	li	a3,1
    200023f2:	8622                	mv	a2,s0
    200023f4:	85d6                	mv	a1,s5
    200023f6:	854e                	mv	a0,s3
    200023f8:	9a02                	jalr	s4
    200023fa:	fb650ce3          	beq	a0,s6,200023b2 <_printf_common+0xd4>
    200023fe:	2905                	addiw	s2,s2,1
    20002400:	bf71                	j	2000239c <_printf_common+0xbe>

0000000020002402 <_printf_i>:
    20002402:	715d                	addi	sp,sp,-80
    20002404:	e0a2                	sd	s0,64(sp)
    20002406:	f84a                	sd	s2,48(sp)
    20002408:	f44e                	sd	s3,40(sp)
    2000240a:	f052                	sd	s4,32(sp)
    2000240c:	e486                	sd	ra,72(sp)
    2000240e:	fc26                	sd	s1,56(sp)
    20002410:	ec56                	sd	s5,24(sp)
    20002412:	e85a                	sd	s6,16(sp)
    20002414:	0185c803          	lbu	a6,24(a1)
    20002418:	07800793          	li	a5,120
    2000241c:	892a                	mv	s2,a0
    2000241e:	842e                	mv	s0,a1
    20002420:	89b2                	mv	s3,a2
    20002422:	8a36                	mv	s4,a3
    20002424:	0107ee63          	bltu	a5,a6,20002440 <_printf_i+0x3e>
    20002428:	06200793          	li	a5,98
    2000242c:	04358693          	addi	a3,a1,67
    20002430:	0107ed63          	bltu	a5,a6,2000244a <_printf_i+0x48>
    20002434:	1c080763          	beqz	a6,20002602 <_printf_i+0x200>
    20002438:	05800793          	li	a5,88
    2000243c:	12f80f63          	beq	a6,a5,2000257a <_printf_i+0x178>
    20002440:	04240493          	addi	s1,s0,66
    20002444:	05040123          	sb	a6,66(s0)
    20002448:	a815                	j	2000247c <_printf_i+0x7a>
    2000244a:	f9d8079b          	addiw	a5,a6,-99
    2000244e:	0ff7f793          	zext.b	a5,a5
    20002452:	4655                	li	a2,21
    20002454:	fef666e3          	bltu	a2,a5,20002440 <_printf_i+0x3e>
    20002458:	00001617          	auipc	a2,0x1
    2000245c:	42c60613          	addi	a2,a2,1068 # 20003884 <__sf_fake_stdout+0x7c>
    20002460:	078a                	slli	a5,a5,0x2
    20002462:	97b2                	add	a5,a5,a2
    20002464:	439c                	lw	a5,0(a5)
    20002466:	97b2                	add	a5,a5,a2
    20002468:	8782                	jr	a5
    2000246a:	631c                	ld	a5,0(a4)
    2000246c:	04258493          	addi	s1,a1,66
    20002470:	00878693          	addi	a3,a5,8
    20002474:	439c                	lw	a5,0(a5)
    20002476:	e314                	sd	a3,0(a4)
    20002478:	04f58123          	sb	a5,66(a1)
    2000247c:	4785                	li	a5,1
    2000247e:	aa75                	j	2000263a <_printf_i+0x238>
    20002480:	4190                	lw	a2,0(a1)
    20002482:	631c                	ld	a5,0(a4)
    20002484:	08067513          	andi	a0,a2,128
    20002488:	00878593          	addi	a1,a5,8
    2000248c:	c10d                	beqz	a0,200024ae <_printf_i+0xac>
    2000248e:	639c                	ld	a5,0(a5)
    20002490:	e30c                	sd	a1,0(a4)
    20002492:	0007d863          	bgez	a5,200024a2 <_printf_i+0xa0>
    20002496:	02d00713          	li	a4,45
    2000249a:	40f007b3          	neg	a5,a5
    2000249e:	04e401a3          	sb	a4,67(s0)
    200024a2:	00001617          	auipc	a2,0x1
    200024a6:	3b660613          	addi	a2,a2,950 # 20003858 <__sf_fake_stdout+0x50>
    200024aa:	4829                	li	a6,10
    200024ac:	a835                	j	200024e8 <_printf_i+0xe6>
    200024ae:	04067613          	andi	a2,a2,64
    200024b2:	e30c                	sd	a1,0(a4)
    200024b4:	c601                	beqz	a2,200024bc <_printf_i+0xba>
    200024b6:	00079783          	lh	a5,0(a5)
    200024ba:	bfe1                	j	20002492 <_printf_i+0x90>
    200024bc:	439c                	lw	a5,0(a5)
    200024be:	bfd1                	j	20002492 <_printf_i+0x90>
    200024c0:	4190                	lw	a2,0(a1)
    200024c2:	631c                	ld	a5,0(a4)
    200024c4:	08067513          	andi	a0,a2,128
    200024c8:	00878593          	addi	a1,a5,8
    200024cc:	cd41                	beqz	a0,20002564 <_printf_i+0x162>
    200024ce:	639c                	ld	a5,0(a5)
    200024d0:	e30c                	sd	a1,0(a4)
    200024d2:	06f00713          	li	a4,111
    200024d6:	00001617          	auipc	a2,0x1
    200024da:	38260613          	addi	a2,a2,898 # 20003858 <__sf_fake_stdout+0x50>
    200024de:	10e80463          	beq	a6,a4,200025e6 <_printf_i+0x1e4>
    200024e2:	4829                	li	a6,10
    200024e4:	040401a3          	sb	zero,67(s0)
    200024e8:	4058                	lw	a4,4(s0)
    200024ea:	c418                	sw	a4,8(s0)
    200024ec:	00074563          	bltz	a4,200024f6 <_printf_i+0xf4>
    200024f0:	400c                	lw	a1,0(s0)
    200024f2:	99ed                	andi	a1,a1,-5
    200024f4:	c00c                	sw	a1,0(s0)
    200024f6:	e399                	bnez	a5,200024fc <_printf_i+0xfa>
    200024f8:	84b6                	mv	s1,a3
    200024fa:	cf19                	beqz	a4,20002518 <_printf_i+0x116>
    200024fc:	84b6                	mv	s1,a3
    200024fe:	0307f733          	remu	a4,a5,a6
    20002502:	14fd                	addi	s1,s1,-1
    20002504:	9732                	add	a4,a4,a2
    20002506:	00074703          	lbu	a4,0(a4)
    2000250a:	00e48023          	sb	a4,0(s1)
    2000250e:	873e                	mv	a4,a5
    20002510:	0307d7b3          	divu	a5,a5,a6
    20002514:	ff0775e3          	bgeu	a4,a6,200024fe <_printf_i+0xfc>
    20002518:	47a1                	li	a5,8
    2000251a:	00f81e63          	bne	a6,a5,20002536 <_printf_i+0x134>
    2000251e:	401c                	lw	a5,0(s0)
    20002520:	8b85                	andi	a5,a5,1
    20002522:	cb91                	beqz	a5,20002536 <_printf_i+0x134>
    20002524:	4058                	lw	a4,4(s0)
    20002526:	481c                	lw	a5,16(s0)
    20002528:	00e7c763          	blt	a5,a4,20002536 <_printf_i+0x134>
    2000252c:	03000793          	li	a5,48
    20002530:	fef48fa3          	sb	a5,-1(s1)
    20002534:	14fd                	addi	s1,s1,-1
    20002536:	8e85                	sub	a3,a3,s1
    20002538:	c814                	sw	a3,16(s0)
    2000253a:	8752                	mv	a4,s4
    2000253c:	86ce                	mv	a3,s3
    2000253e:	0070                	addi	a2,sp,12
    20002540:	85a2                	mv	a1,s0
    20002542:	854a                	mv	a0,s2
    20002544:	d9bff0ef          	jal	ra,200022de <_printf_common>
    20002548:	5afd                	li	s5,-1
    2000254a:	0f551c63          	bne	a0,s5,20002642 <_printf_i+0x240>
    2000254e:	557d                	li	a0,-1
    20002550:	60a6                	ld	ra,72(sp)
    20002552:	6406                	ld	s0,64(sp)
    20002554:	74e2                	ld	s1,56(sp)
    20002556:	7942                	ld	s2,48(sp)
    20002558:	79a2                	ld	s3,40(sp)
    2000255a:	7a02                	ld	s4,32(sp)
    2000255c:	6ae2                	ld	s5,24(sp)
    2000255e:	6b42                	ld	s6,16(sp)
    20002560:	6161                	addi	sp,sp,80
    20002562:	8082                	ret
    20002564:	439c                	lw	a5,0(a5)
    20002566:	04067613          	andi	a2,a2,64
    2000256a:	e30c                	sd	a1,0(a4)
    2000256c:	c601                	beqz	a2,20002574 <_printf_i+0x172>
    2000256e:	17c2                	slli	a5,a5,0x30
    20002570:	93c1                	srli	a5,a5,0x30
    20002572:	b785                	j	200024d2 <_printf_i+0xd0>
    20002574:	1782                	slli	a5,a5,0x20
    20002576:	9381                	srli	a5,a5,0x20
    20002578:	bfa9                	j	200024d2 <_printf_i+0xd0>
    2000257a:	050582a3          	sb	a6,69(a1)
    2000257e:	00001617          	auipc	a2,0x1
    20002582:	2da60613          	addi	a2,a2,730 # 20003858 <__sf_fake_stdout+0x50>
    20002586:	400c                	lw	a1,0(s0)
    20002588:	631c                	ld	a5,0(a4)
    2000258a:	0805f813          	andi	a6,a1,128
    2000258e:	00878513          	addi	a0,a5,8
    20002592:	02080e63          	beqz	a6,200025ce <_printf_i+0x1cc>
    20002596:	639c                	ld	a5,0(a5)
    20002598:	e308                	sd	a0,0(a4)
    2000259a:	0015f713          	andi	a4,a1,1
    2000259e:	c701                	beqz	a4,200025a6 <_printf_i+0x1a4>
    200025a0:	0205e593          	ori	a1,a1,32
    200025a4:	c00c                	sw	a1,0(s0)
    200025a6:	4841                	li	a6,16
    200025a8:	ff95                	bnez	a5,200024e4 <_printf_i+0xe2>
    200025aa:	4018                	lw	a4,0(s0)
    200025ac:	fdf77713          	andi	a4,a4,-33
    200025b0:	c018                	sw	a4,0(s0)
    200025b2:	bf0d                	j	200024e4 <_printf_i+0xe2>
    200025b4:	419c                	lw	a5,0(a1)
    200025b6:	0a07e793          	ori	a5,a5,160
    200025ba:	c19c                	sw	a5,0(a1)
    200025bc:	07800793          	li	a5,120
    200025c0:	04f402a3          	sb	a5,69(s0)
    200025c4:	00001617          	auipc	a2,0x1
    200025c8:	2ac60613          	addi	a2,a2,684 # 20003870 <__sf_fake_stdout+0x68>
    200025cc:	bf6d                	j	20002586 <_printf_i+0x184>
    200025ce:	439c                	lw	a5,0(a5)
    200025d0:	0405f813          	andi	a6,a1,64
    200025d4:	e308                	sd	a0,0(a4)
    200025d6:	00080563          	beqz	a6,200025e0 <_printf_i+0x1de>
    200025da:	17c2                	slli	a5,a5,0x30
    200025dc:	93c1                	srli	a5,a5,0x30
    200025de:	bf75                	j	2000259a <_printf_i+0x198>
    200025e0:	1782                	slli	a5,a5,0x20
    200025e2:	9381                	srli	a5,a5,0x20
    200025e4:	bf5d                	j	2000259a <_printf_i+0x198>
    200025e6:	4821                	li	a6,8
    200025e8:	bdf5                	j	200024e4 <_printf_i+0xe2>
    200025ea:	4190                	lw	a2,0(a1)
    200025ec:	631c                	ld	a5,0(a4)
    200025ee:	49cc                	lw	a1,20(a1)
    200025f0:	08067813          	andi	a6,a2,128
    200025f4:	00878513          	addi	a0,a5,8
    200025f8:	00080963          	beqz	a6,2000260a <_printf_i+0x208>
    200025fc:	e308                	sd	a0,0(a4)
    200025fe:	639c                	ld	a5,0(a5)
    20002600:	e38c                	sd	a1,0(a5)
    20002602:	00042823          	sw	zero,16(s0)
    20002606:	84b6                	mv	s1,a3
    20002608:	bf0d                	j	2000253a <_printf_i+0x138>
    2000260a:	e308                	sd	a0,0(a4)
    2000260c:	04067613          	andi	a2,a2,64
    20002610:	639c                	ld	a5,0(a5)
    20002612:	c601                	beqz	a2,2000261a <_printf_i+0x218>
    20002614:	00b79023          	sh	a1,0(a5)
    20002618:	b7ed                	j	20002602 <_printf_i+0x200>
    2000261a:	c38c                	sw	a1,0(a5)
    2000261c:	b7dd                	j	20002602 <_printf_i+0x200>
    2000261e:	631c                	ld	a5,0(a4)
    20002620:	41d0                	lw	a2,4(a1)
    20002622:	4581                	li	a1,0
    20002624:	00878693          	addi	a3,a5,8
    20002628:	e314                	sd	a3,0(a4)
    2000262a:	6384                	ld	s1,0(a5)
    2000262c:	8526                	mv	a0,s1
    2000262e:	58b000ef          	jal	ra,200033b8 <memchr>
    20002632:	c119                	beqz	a0,20002638 <_printf_i+0x236>
    20002634:	8d05                	sub	a0,a0,s1
    20002636:	c048                	sw	a0,4(s0)
    20002638:	405c                	lw	a5,4(s0)
    2000263a:	c81c                	sw	a5,16(s0)
    2000263c:	040401a3          	sb	zero,67(s0)
    20002640:	bded                	j	2000253a <_printf_i+0x138>
    20002642:	4814                	lw	a3,16(s0)
    20002644:	8626                	mv	a2,s1
    20002646:	85ce                	mv	a1,s3
    20002648:	854a                	mv	a0,s2
    2000264a:	9a02                	jalr	s4
    2000264c:	f15501e3          	beq	a0,s5,2000254e <_printf_i+0x14c>
    20002650:	401c                	lw	a5,0(s0)
    20002652:	8b89                	andi	a5,a5,2
    20002654:	eb95                	bnez	a5,20002688 <_printf_i+0x286>
    20002656:	47b2                	lw	a5,12(sp)
    20002658:	4448                	lw	a0,12(s0)
    2000265a:	0007871b          	sext.w	a4,a5
    2000265e:	0005069b          	sext.w	a3,a0
    20002662:	00e6d363          	bge	a3,a4,20002668 <_printf_i+0x266>
    20002666:	853e                	mv	a0,a5
    20002668:	2501                	sext.w	a0,a0
    2000266a:	b5dd                	j	20002550 <_printf_i+0x14e>
    2000266c:	4685                	li	a3,1
    2000266e:	8656                	mv	a2,s5
    20002670:	85ce                	mv	a1,s3
    20002672:	854a                	mv	a0,s2
    20002674:	9a02                	jalr	s4
    20002676:	ed650ce3          	beq	a0,s6,2000254e <_printf_i+0x14c>
    2000267a:	2485                	addiw	s1,s1,1
    2000267c:	445c                	lw	a5,12(s0)
    2000267e:	4732                	lw	a4,12(sp)
    20002680:	9f99                	subw	a5,a5,a4
    20002682:	fef4c5e3          	blt	s1,a5,2000266c <_printf_i+0x26a>
    20002686:	bfc1                	j	20002656 <_printf_i+0x254>
    20002688:	4481                	li	s1,0
    2000268a:	01940a93          	addi	s5,s0,25
    2000268e:	5b7d                	li	s6,-1
    20002690:	b7f5                	j	2000267c <_printf_i+0x27a>

0000000020002692 <__sfputc_r>:
    20002692:	465c                	lw	a5,12(a2)
    20002694:	fff7871b          	addiw	a4,a5,-1
    20002698:	c658                	sw	a4,12(a2)
    2000269a:	00075963          	bgez	a4,200026ac <__sfputc_r+0x1a>
    2000269e:	561c                	lw	a5,40(a2)
    200026a0:	00f74563          	blt	a4,a5,200026aa <__sfputc_r+0x18>
    200026a4:	47a9                	li	a5,10
    200026a6:	00f59363          	bne	a1,a5,200026ac <__sfputc_r+0x1a>
    200026aa:	a9fd                	j	20002ba8 <__swbuf_r>
    200026ac:	621c                	ld	a5,0(a2)
    200026ae:	852e                	mv	a0,a1
    200026b0:	00178713          	addi	a4,a5,1
    200026b4:	e218                	sd	a4,0(a2)
    200026b6:	00b78023          	sb	a1,0(a5)
    200026ba:	8082                	ret

00000000200026bc <__sfputs_r>:
    200026bc:	7179                	addi	sp,sp,-48
    200026be:	f022                	sd	s0,32(sp)
    200026c0:	ec26                	sd	s1,24(sp)
    200026c2:	e84a                	sd	s2,16(sp)
    200026c4:	e44e                	sd	s3,8(sp)
    200026c6:	e052                	sd	s4,0(sp)
    200026c8:	f406                	sd	ra,40(sp)
    200026ca:	892a                	mv	s2,a0
    200026cc:	89ae                	mv	s3,a1
    200026ce:	8432                	mv	s0,a2
    200026d0:	00d604b3          	add	s1,a2,a3
    200026d4:	5a7d                	li	s4,-1
    200026d6:	00941463          	bne	s0,s1,200026de <__sfputs_r+0x22>
    200026da:	4501                	li	a0,0
    200026dc:	a811                	j	200026f0 <__sfputs_r+0x34>
    200026de:	00044583          	lbu	a1,0(s0)
    200026e2:	864e                	mv	a2,s3
    200026e4:	854a                	mv	a0,s2
    200026e6:	fadff0ef          	jal	ra,20002692 <__sfputc_r>
    200026ea:	0405                	addi	s0,s0,1
    200026ec:	ff4515e3          	bne	a0,s4,200026d6 <__sfputs_r+0x1a>
    200026f0:	70a2                	ld	ra,40(sp)
    200026f2:	7402                	ld	s0,32(sp)
    200026f4:	64e2                	ld	s1,24(sp)
    200026f6:	6942                	ld	s2,16(sp)
    200026f8:	69a2                	ld	s3,8(sp)
    200026fa:	6a02                	ld	s4,0(sp)
    200026fc:	6145                	addi	sp,sp,48
    200026fe:	8082                	ret

0000000020002700 <__sprint_r>:
    20002700:	6a1c                	ld	a5,16(a2)
    20002702:	1141                	addi	sp,sp,-16
    20002704:	e022                	sd	s0,0(sp)
    20002706:	e406                	sd	ra,8(sp)
    20002708:	8432                	mv	s0,a2
    2000270a:	eb81                	bnez	a5,2000271a <__sprint_r+0x1a>
    2000270c:	00062423          	sw	zero,8(a2)
    20002710:	4501                	li	a0,0
    20002712:	60a2                	ld	ra,8(sp)
    20002714:	6402                	ld	s0,0(sp)
    20002716:	0141                	addi	sp,sp,16
    20002718:	8082                	ret
    2000271a:	089000ef          	jal	ra,20002fa2 <__sfvwrite_r>
    2000271e:	00043823          	sd	zero,16(s0)
    20002722:	00042423          	sw	zero,8(s0)
    20002726:	b7f5                	j	20002712 <__sprint_r+0x12>

0000000020002728 <_vfiprintf_r>:
    20002728:	7155                	addi	sp,sp,-208
    2000272a:	e1a2                	sd	s0,192(sp)
    2000272c:	fd26                	sd	s1,184(sp)
    2000272e:	f94a                	sd	s2,176(sp)
    20002730:	f54e                	sd	s3,168(sp)
    20002732:	f152                	sd	s4,160(sp)
    20002734:	e586                	sd	ra,200(sp)
    20002736:	ed56                	sd	s5,152(sp)
    20002738:	e95a                	sd	s6,144(sp)
    2000273a:	e55e                	sd	s7,136(sp)
    2000273c:	e162                	sd	s8,128(sp)
    2000273e:	fce6                	sd	s9,120(sp)
    20002740:	f8ea                	sd	s10,112(sp)
    20002742:	89aa                	mv	s3,a0
    20002744:	84ae                	mv	s1,a1
    20002746:	8932                	mv	s2,a2
    20002748:	8436                	mv	s0,a3
    2000274a:	4a01                	li	s4,0
    2000274c:	c509                	beqz	a0,20002756 <_vfiprintf_r+0x2e>
    2000274e:	591c                	lw	a5,48(a0)
    20002750:	e399                	bnez	a5,20002756 <_vfiprintf_r+0x2e>
    20002752:	c0eff0ef          	jal	ra,20001b60 <__sinit>
    20002756:	00001797          	auipc	a5,0x1
    2000275a:	07a78793          	addi	a5,a5,122 # 200037d0 <__sf_fake_stdin>
    2000275e:	0cf49e63          	bne	s1,a5,2000283a <_vfiprintf_r+0x112>
    20002762:	0089b483          	ld	s1,8(s3)
    20002766:	0104d783          	lhu	a5,16(s1)
    2000276a:	8ba1                	andi	a5,a5,8
    2000276c:	cbed                	beqz	a5,2000285e <_vfiprintf_r+0x136>
    2000276e:	6c9c                	ld	a5,24(s1)
    20002770:	c7fd                	beqz	a5,2000285e <_vfiprintf_r+0x136>
    20002772:	02000793          	li	a5,32
    20002776:	02f104a3          	sb	a5,41(sp)
    2000277a:	5afd                	li	s5,-1
    2000277c:	03000793          	li	a5,48
    20002780:	d202                	sw	zero,36(sp)
    20002782:	02f10523          	sb	a5,42(sp)
    20002786:	e422                	sd	s0,8(sp)
    20002788:	02500b93          	li	s7,37
    2000278c:	020a9c13          	slli	s8,s5,0x20
    20002790:	00001b17          	auipc	s6,0x1
    20002794:	0b0b0b13          	addi	s6,s6,176 # 20003840 <__sf_fake_stdout+0x38>
    20002798:	4c85                	li	s9,1
    2000279a:	844a                	mv	s0,s2
    2000279c:	00044783          	lbu	a5,0(s0)
    200027a0:	c399                	beqz	a5,200027a6 <_vfiprintf_r+0x7e>
    200027a2:	0f779263          	bne	a5,s7,20002886 <_vfiprintf_r+0x15e>
    200027a6:	41240d3b          	subw	s10,s0,s2
    200027aa:	000d0e63          	beqz	s10,200027c6 <_vfiprintf_r+0x9e>
    200027ae:	86ea                	mv	a3,s10
    200027b0:	864a                	mv	a2,s2
    200027b2:	85a6                	mv	a1,s1
    200027b4:	854e                	mv	a0,s3
    200027b6:	f07ff0ef          	jal	ra,200026bc <__sfputs_r>
    200027ba:	1f550b63          	beq	a0,s5,200029b0 <_vfiprintf_r+0x288>
    200027be:	5792                	lw	a5,36(sp)
    200027c0:	01a787bb          	addw	a5,a5,s10
    200027c4:	d23e                	sw	a5,36(sp)
    200027c6:	00044783          	lbu	a5,0(s0)
    200027ca:	1e078363          	beqz	a5,200029b0 <_vfiprintf_r+0x288>
    200027ce:	00140913          	addi	s2,s0,1
    200027d2:	e862                	sd	s8,16(sp)
    200027d4:	ec02                	sd	zero,24(sp)
    200027d6:	040109a3          	sb	zero,83(sp)
    200027da:	d482                	sw	zero,104(sp)
    200027dc:	00094583          	lbu	a1,0(s2)
    200027e0:	4615                	li	a2,5
    200027e2:	855a                	mv	a0,s6
    200027e4:	3d5000ef          	jal	ra,200033b8 <memchr>
    200027e8:	00190413          	addi	s0,s2,1
    200027ec:	ed59                	bnez	a0,2000288a <_vfiprintf_r+0x162>
    200027ee:	47c2                	lw	a5,16(sp)
    200027f0:	0107f713          	andi	a4,a5,16
    200027f4:	c709                	beqz	a4,200027fe <_vfiprintf_r+0xd6>
    200027f6:	02000713          	li	a4,32
    200027fa:	04e109a3          	sb	a4,83(sp)
    200027fe:	0087f713          	andi	a4,a5,8
    20002802:	c709                	beqz	a4,2000280c <_vfiprintf_r+0xe4>
    20002804:	02b00713          	li	a4,43
    20002808:	04e109a3          	sb	a4,83(sp)
    2000280c:	00094683          	lbu	a3,0(s2)
    20002810:	02a00713          	li	a4,42
    20002814:	08e68463          	beq	a3,a4,2000289c <_vfiprintf_r+0x174>
    20002818:	47f2                	lw	a5,28(sp)
    2000281a:	844a                	mv	s0,s2
    2000281c:	4681                	li	a3,0
    2000281e:	4625                	li	a2,9
    20002820:	4829                	li	a6,10
    20002822:	00044703          	lbu	a4,0(s0)
    20002826:	00140513          	addi	a0,s0,1
    2000282a:	fd07059b          	addiw	a1,a4,-48
    2000282e:	872e                	mv	a4,a1
    20002830:	0ab67b63          	bgeu	a2,a1,200028e6 <_vfiprintf_r+0x1be>
    20002834:	cea5                	beqz	a3,200028ac <_vfiprintf_r+0x184>
    20002836:	ce3e                	sw	a5,28(sp)
    20002838:	a895                	j	200028ac <_vfiprintf_r+0x184>
    2000283a:	00001797          	auipc	a5,0x1
    2000283e:	fce78793          	addi	a5,a5,-50 # 20003808 <__sf_fake_stdout>
    20002842:	00f49563          	bne	s1,a5,2000284c <_vfiprintf_r+0x124>
    20002846:	0109b483          	ld	s1,16(s3)
    2000284a:	bf31                	j	20002766 <_vfiprintf_r+0x3e>
    2000284c:	00001797          	auipc	a5,0x1
    20002850:	f4c78793          	addi	a5,a5,-180 # 20003798 <__sf_fake_stderr>
    20002854:	f0f499e3          	bne	s1,a5,20002766 <_vfiprintf_r+0x3e>
    20002858:	0189b483          	ld	s1,24(s3)
    2000285c:	b729                	j	20002766 <_vfiprintf_r+0x3e>
    2000285e:	85a6                	mv	a1,s1
    20002860:	854e                	mv	a0,s3
    20002862:	446000ef          	jal	ra,20002ca8 <__swsetup_r>
    20002866:	d511                	beqz	a0,20002772 <_vfiprintf_r+0x4a>
    20002868:	557d                	li	a0,-1
    2000286a:	60ae                	ld	ra,200(sp)
    2000286c:	640e                	ld	s0,192(sp)
    2000286e:	74ea                	ld	s1,184(sp)
    20002870:	794a                	ld	s2,176(sp)
    20002872:	79aa                	ld	s3,168(sp)
    20002874:	7a0a                	ld	s4,160(sp)
    20002876:	6aea                	ld	s5,152(sp)
    20002878:	6b4a                	ld	s6,144(sp)
    2000287a:	6baa                	ld	s7,136(sp)
    2000287c:	6c0a                	ld	s8,128(sp)
    2000287e:	7ce6                	ld	s9,120(sp)
    20002880:	7d46                	ld	s10,112(sp)
    20002882:	6169                	addi	sp,sp,208
    20002884:	8082                	ret
    20002886:	0405                	addi	s0,s0,1
    20002888:	bf11                	j	2000279c <_vfiprintf_r+0x74>
    2000288a:	47c2                	lw	a5,16(sp)
    2000288c:	41650533          	sub	a0,a0,s6
    20002890:	00ac953b          	sllw	a0,s9,a0
    20002894:	8d5d                	or	a0,a0,a5
    20002896:	c82a                	sw	a0,16(sp)
    20002898:	8922                	mv	s2,s0
    2000289a:	b789                	j	200027dc <_vfiprintf_r+0xb4>
    2000289c:	6722                	ld	a4,8(sp)
    2000289e:	00870693          	addi	a3,a4,8
    200028a2:	4318                	lw	a4,0(a4)
    200028a4:	e436                	sd	a3,8(sp)
    200028a6:	02074963          	bltz	a4,200028d8 <_vfiprintf_r+0x1b0>
    200028aa:	ce3a                	sw	a4,28(sp)
    200028ac:	00044703          	lbu	a4,0(s0)
    200028b0:	02e00793          	li	a5,46
    200028b4:	04f71063          	bne	a4,a5,200028f4 <_vfiprintf_r+0x1cc>
    200028b8:	00144703          	lbu	a4,1(s0)
    200028bc:	02a00793          	li	a5,42
    200028c0:	0af71063          	bne	a4,a5,20002960 <_vfiprintf_r+0x238>
    200028c4:	67a2                	ld	a5,8(sp)
    200028c6:	0409                	addi	s0,s0,2
    200028c8:	00878713          	addi	a4,a5,8
    200028cc:	439c                	lw	a5,0(a5)
    200028ce:	e43a                	sd	a4,8(sp)
    200028d0:	0207c163          	bltz	a5,200028f2 <_vfiprintf_r+0x1ca>
    200028d4:	ca3e                	sw	a5,20(sp)
    200028d6:	a839                	j	200028f4 <_vfiprintf_r+0x1cc>
    200028d8:	40e0073b          	negw	a4,a4
    200028dc:	0027e793          	ori	a5,a5,2
    200028e0:	ce3a                	sw	a4,28(sp)
    200028e2:	c83e                	sw	a5,16(sp)
    200028e4:	b7e1                	j	200028ac <_vfiprintf_r+0x184>
    200028e6:	02f807bb          	mulw	a5,a6,a5
    200028ea:	842a                	mv	s0,a0
    200028ec:	4685                	li	a3,1
    200028ee:	9fb9                	addw	a5,a5,a4
    200028f0:	bf0d                	j	20002822 <_vfiprintf_r+0xfa>
    200028f2:	ca56                	sw	s5,20(sp)
    200028f4:	00044583          	lbu	a1,0(s0)
    200028f8:	460d                	li	a2,3
    200028fa:	00001517          	auipc	a0,0x1
    200028fe:	f4e50513          	addi	a0,a0,-178 # 20003848 <__sf_fake_stdout+0x40>
    20002902:	2b7000ef          	jal	ra,200033b8 <memchr>
    20002906:	cd11                	beqz	a0,20002922 <_vfiprintf_r+0x1fa>
    20002908:	00001797          	auipc	a5,0x1
    2000290c:	f4078793          	addi	a5,a5,-192 # 20003848 <__sf_fake_stdout+0x40>
    20002910:	8d1d                	sub	a0,a0,a5
    20002912:	04000793          	li	a5,64
    20002916:	00a7953b          	sllw	a0,a5,a0
    2000291a:	47c2                	lw	a5,16(sp)
    2000291c:	0405                	addi	s0,s0,1
    2000291e:	8d5d                	or	a0,a0,a5
    20002920:	c82a                	sw	a0,16(sp)
    20002922:	00044583          	lbu	a1,0(s0)
    20002926:	4619                	li	a2,6
    20002928:	00001517          	auipc	a0,0x1
    2000292c:	f2850513          	addi	a0,a0,-216 # 20003850 <__sf_fake_stdout+0x48>
    20002930:	00140913          	addi	s2,s0,1
    20002934:	02b10423          	sb	a1,40(sp)
    20002938:	281000ef          	jal	ra,200033b8 <memchr>
    2000293c:	c151                	beqz	a0,200029c0 <_vfiprintf_r+0x298>
    2000293e:	00000793          	li	a5,0
    20002942:	eba1                	bnez	a5,20002992 <_vfiprintf_r+0x26a>
    20002944:	4742                	lw	a4,16(sp)
    20002946:	67a2                	ld	a5,8(sp)
    20002948:	10077713          	andi	a4,a4,256
    2000294c:	c329                	beqz	a4,2000298e <_vfiprintf_r+0x266>
    2000294e:	07bd                	addi	a5,a5,15
    20002950:	9bc1                	andi	a5,a5,-16
    20002952:	07c1                	addi	a5,a5,16
    20002954:	e43e                	sd	a5,8(sp)
    20002956:	5792                	lw	a5,36(sp)
    20002958:	014787bb          	addw	a5,a5,s4
    2000295c:	d23e                	sw	a5,36(sp)
    2000295e:	bd35                	j	2000279a <_vfiprintf_r+0x72>
    20002960:	0405                	addi	s0,s0,1
    20002962:	ca02                	sw	zero,20(sp)
    20002964:	4681                	li	a3,0
    20002966:	4781                	li	a5,0
    20002968:	4625                	li	a2,9
    2000296a:	4829                	li	a6,10
    2000296c:	00044703          	lbu	a4,0(s0)
    20002970:	00140513          	addi	a0,s0,1
    20002974:	fd07059b          	addiw	a1,a4,-48
    20002978:	872e                	mv	a4,a1
    2000297a:	00b67463          	bgeu	a2,a1,20002982 <_vfiprintf_r+0x25a>
    2000297e:	fab9                	bnez	a3,200028d4 <_vfiprintf_r+0x1ac>
    20002980:	bf95                	j	200028f4 <_vfiprintf_r+0x1cc>
    20002982:	02f807bb          	mulw	a5,a6,a5
    20002986:	842a                	mv	s0,a0
    20002988:	4685                	li	a3,1
    2000298a:	9fb9                	addw	a5,a5,a4
    2000298c:	b7c5                	j	2000296c <_vfiprintf_r+0x244>
    2000298e:	07a1                	addi	a5,a5,8
    20002990:	b7d1                	j	20002954 <_vfiprintf_r+0x22c>
    20002992:	0038                	addi	a4,sp,8
    20002994:	00000697          	auipc	a3,0x0
    20002998:	d2868693          	addi	a3,a3,-728 # 200026bc <__sfputs_r>
    2000299c:	8626                	mv	a2,s1
    2000299e:	080c                	addi	a1,sp,16
    200029a0:	854e                	mv	a0,s3
    200029a2:	00000097          	auipc	ra,0x0
    200029a6:	000000e7          	jalr	zero # 0 <__stack_size-0x400>
    200029aa:	8a2a                	mv	s4,a0
    200029ac:	fb5515e3          	bne	a0,s5,20002956 <_vfiprintf_r+0x22e>
    200029b0:	0104d783          	lhu	a5,16(s1)
    200029b4:	0407f793          	andi	a5,a5,64
    200029b8:	ea0798e3          	bnez	a5,20002868 <_vfiprintf_r+0x140>
    200029bc:	5512                	lw	a0,36(sp)
    200029be:	b575                	j	2000286a <_vfiprintf_r+0x142>
    200029c0:	0038                	addi	a4,sp,8
    200029c2:	00000697          	auipc	a3,0x0
    200029c6:	cfa68693          	addi	a3,a3,-774 # 200026bc <__sfputs_r>
    200029ca:	8626                	mv	a2,s1
    200029cc:	080c                	addi	a1,sp,16
    200029ce:	854e                	mv	a0,s3
    200029d0:	a33ff0ef          	jal	ra,20002402 <_printf_i>
    200029d4:	bfd9                	j	200029aa <_vfiprintf_r+0x282>

00000000200029d6 <vfiprintf>:
    200029d6:	86b2                	mv	a3,a2
    200029d8:	862e                	mv	a2,a1
    200029da:	85aa                	mv	a1,a0
    200029dc:	e7ffd517          	auipc	a0,0xe7ffd
    200029e0:	6dc53503          	ld	a0,1756(a0) # 80000b8 <_impure_ptr>
    200029e4:	b391                	j	20002728 <_vfiprintf_r>

00000000200029e6 <cleanup_glue>:
    200029e6:	1101                	addi	sp,sp,-32
    200029e8:	e822                	sd	s0,16(sp)
    200029ea:	842e                	mv	s0,a1
    200029ec:	618c                	ld	a1,0(a1)
    200029ee:	e426                	sd	s1,8(sp)
    200029f0:	ec06                	sd	ra,24(sp)
    200029f2:	84aa                	mv	s1,a0
    200029f4:	c199                	beqz	a1,200029fa <cleanup_glue+0x14>
    200029f6:	ff1ff0ef          	jal	ra,200029e6 <cleanup_glue>
    200029fa:	85a2                	mv	a1,s0
    200029fc:	6442                	ld	s0,16(sp)
    200029fe:	60e2                	ld	ra,24(sp)
    20002a00:	8526                	mv	a0,s1
    20002a02:	64a2                	ld	s1,8(sp)
    20002a04:	6105                	addi	sp,sp,32
    20002a06:	dcffe06f          	j	200017d4 <_free_r>

0000000020002a0a <_reclaim_reent>:
    20002a0a:	e7ffd797          	auipc	a5,0xe7ffd
    20002a0e:	6ae7b783          	ld	a5,1710(a5) # 80000b8 <_impure_ptr>
    20002a12:	0ca78863          	beq	a5,a0,20002ae2 <_reclaim_reent+0xd8>
    20002a16:	613c                	ld	a5,64(a0)
    20002a18:	7179                	addi	sp,sp,-48
    20002a1a:	f022                	sd	s0,32(sp)
    20002a1c:	f406                	sd	ra,40(sp)
    20002a1e:	ec26                	sd	s1,24(sp)
    20002a20:	e84a                	sd	s2,16(sp)
    20002a22:	e44e                	sd	s3,8(sp)
    20002a24:	842a                	mv	s0,a0
    20002a26:	cb8d                	beqz	a5,20002a58 <_reclaim_reent+0x4e>
    20002a28:	6f9c                	ld	a5,24(a5)
    20002a2a:	c38d                	beqz	a5,20002a4c <_reclaim_reent+0x42>
    20002a2c:	4481                	li	s1,0
    20002a2e:	20000913          	li	s2,512
    20002a32:	603c                	ld	a5,64(s0)
    20002a34:	6f9c                	ld	a5,24(a5)
    20002a36:	97a6                	add	a5,a5,s1
    20002a38:	638c                	ld	a1,0(a5)
    20002a3a:	e5d1                	bnez	a1,20002ac6 <_reclaim_reent+0xbc>
    20002a3c:	04a1                	addi	s1,s1,8
    20002a3e:	ff249ae3          	bne	s1,s2,20002a32 <_reclaim_reent+0x28>
    20002a42:	603c                	ld	a5,64(s0)
    20002a44:	8522                	mv	a0,s0
    20002a46:	6f8c                	ld	a1,24(a5)
    20002a48:	d8dfe0ef          	jal	ra,200017d4 <_free_r>
    20002a4c:	603c                	ld	a5,64(s0)
    20002a4e:	638c                	ld	a1,0(a5)
    20002a50:	c581                	beqz	a1,20002a58 <_reclaim_reent+0x4e>
    20002a52:	8522                	mv	a0,s0
    20002a54:	d81fe0ef          	jal	ra,200017d4 <_free_r>
    20002a58:	740c                	ld	a1,40(s0)
    20002a5a:	c581                	beqz	a1,20002a62 <_reclaim_reent+0x58>
    20002a5c:	8522                	mv	a0,s0
    20002a5e:	d77fe0ef          	jal	ra,200017d4 <_free_r>
    20002a62:	602c                	ld	a1,64(s0)
    20002a64:	c581                	beqz	a1,20002a6c <_reclaim_reent+0x62>
    20002a66:	8522                	mv	a0,s0
    20002a68:	d6dfe0ef          	jal	ra,200017d4 <_free_r>
    20002a6c:	702c                	ld	a1,96(s0)
    20002a6e:	c581                	beqz	a1,20002a76 <_reclaim_reent+0x6c>
    20002a70:	8522                	mv	a0,s0
    20002a72:	d63fe0ef          	jal	ra,200017d4 <_free_r>
    20002a76:	742c                	ld	a1,104(s0)
    20002a78:	c581                	beqz	a1,20002a80 <_reclaim_reent+0x76>
    20002a7a:	8522                	mv	a0,s0
    20002a7c:	d59fe0ef          	jal	ra,200017d4 <_free_r>
    20002a80:	782c                	ld	a1,112(s0)
    20002a82:	c581                	beqz	a1,20002a8a <_reclaim_reent+0x80>
    20002a84:	8522                	mv	a0,s0
    20002a86:	d4ffe0ef          	jal	ra,200017d4 <_free_r>
    20002a8a:	744c                	ld	a1,168(s0)
    20002a8c:	c581                	beqz	a1,20002a94 <_reclaim_reent+0x8a>
    20002a8e:	8522                	mv	a0,s0
    20002a90:	d45fe0ef          	jal	ra,200017d4 <_free_r>
    20002a94:	704c                	ld	a1,160(s0)
    20002a96:	c581                	beqz	a1,20002a9e <_reclaim_reent+0x94>
    20002a98:	8522                	mv	a0,s0
    20002a9a:	d3bfe0ef          	jal	ra,200017d4 <_free_r>
    20002a9e:	6c2c                	ld	a1,88(s0)
    20002aa0:	c581                	beqz	a1,20002aa8 <_reclaim_reent+0x9e>
    20002aa2:	8522                	mv	a0,s0
    20002aa4:	d31fe0ef          	jal	ra,200017d4 <_free_r>
    20002aa8:	581c                	lw	a5,48(s0)
    20002aaa:	c78d                	beqz	a5,20002ad4 <_reclaim_reent+0xca>
    20002aac:	643c                	ld	a5,72(s0)
    20002aae:	8522                	mv	a0,s0
    20002ab0:	9782                	jalr	a5
    20002ab2:	604c                	ld	a1,128(s0)
    20002ab4:	c185                	beqz	a1,20002ad4 <_reclaim_reent+0xca>
    20002ab6:	8522                	mv	a0,s0
    20002ab8:	7402                	ld	s0,32(sp)
    20002aba:	70a2                	ld	ra,40(sp)
    20002abc:	64e2                	ld	s1,24(sp)
    20002abe:	6942                	ld	s2,16(sp)
    20002ac0:	69a2                	ld	s3,8(sp)
    20002ac2:	6145                	addi	sp,sp,48
    20002ac4:	b70d                	j	200029e6 <cleanup_glue>
    20002ac6:	0005b983          	ld	s3,0(a1)
    20002aca:	8522                	mv	a0,s0
    20002acc:	d09fe0ef          	jal	ra,200017d4 <_free_r>
    20002ad0:	85ce                	mv	a1,s3
    20002ad2:	b7a5                	j	20002a3a <_reclaim_reent+0x30>
    20002ad4:	70a2                	ld	ra,40(sp)
    20002ad6:	7402                	ld	s0,32(sp)
    20002ad8:	64e2                	ld	s1,24(sp)
    20002ada:	6942                	ld	s2,16(sp)
    20002adc:	69a2                	ld	s3,8(sp)
    20002ade:	6145                	addi	sp,sp,48
    20002ae0:	8082                	ret
    20002ae2:	8082                	ret

0000000020002ae4 <__sread>:
    20002ae4:	1141                	addi	sp,sp,-16
    20002ae6:	e022                	sd	s0,0(sp)
    20002ae8:	842e                	mv	s0,a1
    20002aea:	01259583          	lh	a1,18(a1)
    20002aee:	e406                	sd	ra,8(sp)
    20002af0:	287000ef          	jal	ra,20003576 <_read_r>
    20002af4:	00054963          	bltz	a0,20002b06 <__sread+0x22>
    20002af8:	6c5c                	ld	a5,152(s0)
    20002afa:	97aa                	add	a5,a5,a0
    20002afc:	ec5c                	sd	a5,152(s0)
    20002afe:	60a2                	ld	ra,8(sp)
    20002b00:	6402                	ld	s0,0(sp)
    20002b02:	0141                	addi	sp,sp,16
    20002b04:	8082                	ret
    20002b06:	01045783          	lhu	a5,16(s0)
    20002b0a:	777d                	lui	a4,0xfffff
    20002b0c:	177d                	addi	a4,a4,-1
    20002b0e:	8ff9                	and	a5,a5,a4
    20002b10:	00f41823          	sh	a5,16(s0)
    20002b14:	b7ed                	j	20002afe <__sread+0x1a>

0000000020002b16 <__seofread>:
    20002b16:	4501                	li	a0,0
    20002b18:	8082                	ret

0000000020002b1a <__swrite>:
    20002b1a:	0105d783          	lhu	a5,16(a1)
    20002b1e:	7179                	addi	sp,sp,-48
    20002b20:	f022                	sd	s0,32(sp)
    20002b22:	ec26                	sd	s1,24(sp)
    20002b24:	e84a                	sd	s2,16(sp)
    20002b26:	e44e                	sd	s3,8(sp)
    20002b28:	f406                	sd	ra,40(sp)
    20002b2a:	1007f793          	andi	a5,a5,256
    20002b2e:	84aa                	mv	s1,a0
    20002b30:	842e                	mv	s0,a1
    20002b32:	8932                	mv	s2,a2
    20002b34:	89b6                	mv	s3,a3
    20002b36:	c799                	beqz	a5,20002b44 <__swrite+0x2a>
    20002b38:	01259583          	lh	a1,18(a1)
    20002b3c:	4689                	li	a3,2
    20002b3e:	4601                	li	a2,0
    20002b40:	74e000ef          	jal	ra,2000328e <_lseek_r>
    20002b44:	01045783          	lhu	a5,16(s0)
    20002b48:	777d                	lui	a4,0xfffff
    20002b4a:	177d                	addi	a4,a4,-1
    20002b4c:	8ff9                	and	a5,a5,a4
    20002b4e:	01241583          	lh	a1,18(s0)
    20002b52:	00f41823          	sh	a5,16(s0)
    20002b56:	7402                	ld	s0,32(sp)
    20002b58:	70a2                	ld	ra,40(sp)
    20002b5a:	86ce                	mv	a3,s3
    20002b5c:	864a                	mv	a2,s2
    20002b5e:	69a2                	ld	s3,8(sp)
    20002b60:	6942                	ld	s2,16(sp)
    20002b62:	8526                	mv	a0,s1
    20002b64:	64e2                	ld	s1,24(sp)
    20002b66:	6145                	addi	sp,sp,48
    20002b68:	aa11                	j	20002c7c <_write_r>

0000000020002b6a <__sseek>:
    20002b6a:	1141                	addi	sp,sp,-16
    20002b6c:	e022                	sd	s0,0(sp)
    20002b6e:	842e                	mv	s0,a1
    20002b70:	01259583          	lh	a1,18(a1)
    20002b74:	e406                	sd	ra,8(sp)
    20002b76:	718000ef          	jal	ra,2000328e <_lseek_r>
    20002b7a:	57fd                	li	a5,-1
    20002b7c:	01045703          	lhu	a4,16(s0)
    20002b80:	00f51b63          	bne	a0,a5,20002b96 <__sseek+0x2c>
    20002b84:	77fd                	lui	a5,0xfffff
    20002b86:	17fd                	addi	a5,a5,-1
    20002b88:	8ff9                	and	a5,a5,a4
    20002b8a:	00f41823          	sh	a5,16(s0)
    20002b8e:	60a2                	ld	ra,8(sp)
    20002b90:	6402                	ld	s0,0(sp)
    20002b92:	0141                	addi	sp,sp,16
    20002b94:	8082                	ret
    20002b96:	6785                	lui	a5,0x1
    20002b98:	8fd9                	or	a5,a5,a4
    20002b9a:	00f41823          	sh	a5,16(s0)
    20002b9e:	ec48                	sd	a0,152(s0)
    20002ba0:	b7fd                	j	20002b8e <__sseek+0x24>

0000000020002ba2 <__sclose>:
    20002ba2:	01259583          	lh	a1,18(a1)
    20002ba6:	ac09                	j	20002db8 <_close_r>

0000000020002ba8 <__swbuf_r>:
    20002ba8:	7179                	addi	sp,sp,-48
    20002baa:	f022                	sd	s0,32(sp)
    20002bac:	ec26                	sd	s1,24(sp)
    20002bae:	e84a                	sd	s2,16(sp)
    20002bb0:	f406                	sd	ra,40(sp)
    20002bb2:	e44e                	sd	s3,8(sp)
    20002bb4:	84aa                	mv	s1,a0
    20002bb6:	892e                	mv	s2,a1
    20002bb8:	8432                	mv	s0,a2
    20002bba:	c509                	beqz	a0,20002bc4 <__swbuf_r+0x1c>
    20002bbc:	591c                	lw	a5,48(a0)
    20002bbe:	e399                	bnez	a5,20002bc4 <__swbuf_r+0x1c>
    20002bc0:	fa1fe0ef          	jal	ra,20001b60 <__sinit>
    20002bc4:	00001797          	auipc	a5,0x1
    20002bc8:	c0c78793          	addi	a5,a5,-1012 # 200037d0 <__sf_fake_stdin>
    20002bcc:	06f41a63          	bne	s0,a5,20002c40 <__swbuf_r+0x98>
    20002bd0:	6480                	ld	s0,8(s1)
    20002bd2:	541c                	lw	a5,40(s0)
    20002bd4:	c45c                	sw	a5,12(s0)
    20002bd6:	01045783          	lhu	a5,16(s0)
    20002bda:	8ba1                	andi	a5,a5,8
    20002bdc:	c3d1                	beqz	a5,20002c60 <__swbuf_r+0xb8>
    20002bde:	6c1c                	ld	a5,24(s0)
    20002be0:	c3c1                	beqz	a5,20002c60 <__swbuf_r+0xb8>
    20002be2:	6c1c                	ld	a5,24(s0)
    20002be4:	6008                	ld	a0,0(s0)
    20002be6:	0ff97993          	zext.b	s3,s2
    20002bea:	894e                	mv	s2,s3
    20002bec:	9d1d                	subw	a0,a0,a5
    20002bee:	501c                	lw	a5,32(s0)
    20002bf0:	00f54763          	blt	a0,a5,20002bfe <__swbuf_r+0x56>
    20002bf4:	85a2                	mv	a1,s0
    20002bf6:	8526                	mv	a0,s1
    20002bf8:	322000ef          	jal	ra,20002f1a <_fflush_r>
    20002bfc:	e53d                	bnez	a0,20002c6a <__swbuf_r+0xc2>
    20002bfe:	445c                	lw	a5,12(s0)
    20002c00:	2505                	addiw	a0,a0,1
    20002c02:	37fd                	addiw	a5,a5,-1
    20002c04:	c45c                	sw	a5,12(s0)
    20002c06:	601c                	ld	a5,0(s0)
    20002c08:	00178713          	addi	a4,a5,1
    20002c0c:	e018                	sd	a4,0(s0)
    20002c0e:	01378023          	sb	s3,0(a5)
    20002c12:	501c                	lw	a5,32(s0)
    20002c14:	00a78963          	beq	a5,a0,20002c26 <__swbuf_r+0x7e>
    20002c18:	01045783          	lhu	a5,16(s0)
    20002c1c:	8b85                	andi	a5,a5,1
    20002c1e:	cb89                	beqz	a5,20002c30 <__swbuf_r+0x88>
    20002c20:	47a9                	li	a5,10
    20002c22:	00f91763          	bne	s2,a5,20002c30 <__swbuf_r+0x88>
    20002c26:	85a2                	mv	a1,s0
    20002c28:	8526                	mv	a0,s1
    20002c2a:	2f0000ef          	jal	ra,20002f1a <_fflush_r>
    20002c2e:	ed15                	bnez	a0,20002c6a <__swbuf_r+0xc2>
    20002c30:	70a2                	ld	ra,40(sp)
    20002c32:	7402                	ld	s0,32(sp)
    20002c34:	64e2                	ld	s1,24(sp)
    20002c36:	69a2                	ld	s3,8(sp)
    20002c38:	854a                	mv	a0,s2
    20002c3a:	6942                	ld	s2,16(sp)
    20002c3c:	6145                	addi	sp,sp,48
    20002c3e:	8082                	ret
    20002c40:	00001797          	auipc	a5,0x1
    20002c44:	bc878793          	addi	a5,a5,-1080 # 20003808 <__sf_fake_stdout>
    20002c48:	00f41463          	bne	s0,a5,20002c50 <__swbuf_r+0xa8>
    20002c4c:	6880                	ld	s0,16(s1)
    20002c4e:	b751                	j	20002bd2 <__swbuf_r+0x2a>
    20002c50:	00001797          	auipc	a5,0x1
    20002c54:	b4878793          	addi	a5,a5,-1208 # 20003798 <__sf_fake_stderr>
    20002c58:	f6f41de3          	bne	s0,a5,20002bd2 <__swbuf_r+0x2a>
    20002c5c:	6c80                	ld	s0,24(s1)
    20002c5e:	bf95                	j	20002bd2 <__swbuf_r+0x2a>
    20002c60:	85a2                	mv	a1,s0
    20002c62:	8526                	mv	a0,s1
    20002c64:	044000ef          	jal	ra,20002ca8 <__swsetup_r>
    20002c68:	dd2d                	beqz	a0,20002be2 <__swbuf_r+0x3a>
    20002c6a:	597d                	li	s2,-1
    20002c6c:	b7d1                	j	20002c30 <__swbuf_r+0x88>

0000000020002c6e <__swbuf>:
    20002c6e:	862e                	mv	a2,a1
    20002c70:	85aa                	mv	a1,a0
    20002c72:	e7ffd517          	auipc	a0,0xe7ffd
    20002c76:	44653503          	ld	a0,1094(a0) # 80000b8 <_impure_ptr>
    20002c7a:	b73d                	j	20002ba8 <__swbuf_r>

0000000020002c7c <_write_r>:
    20002c7c:	1141                	addi	sp,sp,-16
    20002c7e:	e022                	sd	s0,0(sp)
    20002c80:	842a                	mv	s0,a0
    20002c82:	852e                	mv	a0,a1
    20002c84:	85b2                	mv	a1,a2
    20002c86:	8636                	mv	a2,a3
    20002c88:	8201a023          	sw	zero,-2016(gp) # 80000d0 <errno>
    20002c8c:	e406                	sd	ra,8(sp)
    20002c8e:	e12fd0ef          	jal	ra,200002a0 <_write>
    20002c92:	57fd                	li	a5,-1
    20002c94:	00f51663          	bne	a0,a5,20002ca0 <_write_r+0x24>
    20002c98:	8201a783          	lw	a5,-2016(gp) # 80000d0 <errno>
    20002c9c:	c391                	beqz	a5,20002ca0 <_write_r+0x24>
    20002c9e:	c01c                	sw	a5,0(s0)
    20002ca0:	60a2                	ld	ra,8(sp)
    20002ca2:	6402                	ld	s0,0(sp)
    20002ca4:	0141                	addi	sp,sp,16
    20002ca6:	8082                	ret

0000000020002ca8 <__swsetup_r>:
    20002ca8:	1101                	addi	sp,sp,-32
    20002caa:	e822                	sd	s0,16(sp)
    20002cac:	e426                	sd	s1,8(sp)
    20002cae:	e04a                	sd	s2,0(sp)
    20002cb0:	ec06                	sd	ra,24(sp)
    20002cb2:	e7ffd497          	auipc	s1,0xe7ffd
    20002cb6:	4064b483          	ld	s1,1030(s1) # 80000b8 <_impure_ptr>
    20002cba:	892a                	mv	s2,a0
    20002cbc:	842e                	mv	s0,a1
    20002cbe:	c491                	beqz	s1,20002cca <__swsetup_r+0x22>
    20002cc0:	589c                	lw	a5,48(s1)
    20002cc2:	e781                	bnez	a5,20002cca <__swsetup_r+0x22>
    20002cc4:	8526                	mv	a0,s1
    20002cc6:	e9bfe0ef          	jal	ra,20001b60 <__sinit>
    20002cca:	00001797          	auipc	a5,0x1
    20002cce:	b0678793          	addi	a5,a5,-1274 # 200037d0 <__sf_fake_stdin>
    20002cd2:	02f41763          	bne	s0,a5,20002d00 <__swsetup_r+0x58>
    20002cd6:	6480                	ld	s0,8(s1)
    20002cd8:	01041783          	lh	a5,16(s0)
    20002cdc:	03079713          	slli	a4,a5,0x30
    20002ce0:	0087f693          	andi	a3,a5,8
    20002ce4:	9341                	srli	a4,a4,0x30
    20002ce6:	eab5                	bnez	a3,20002d5a <__swsetup_r+0xb2>
    20002ce8:	01077693          	andi	a3,a4,16
    20002cec:	ea95                	bnez	a3,20002d20 <__swsetup_r+0x78>
    20002cee:	4725                	li	a4,9
    20002cf0:	00e92023          	sw	a4,0(s2)
    20002cf4:	0407e793          	ori	a5,a5,64
    20002cf8:	00f41823          	sh	a5,16(s0)
    20002cfc:	557d                	li	a0,-1
    20002cfe:	a045                	j	20002d9e <__swsetup_r+0xf6>
    20002d00:	00001797          	auipc	a5,0x1
    20002d04:	b0878793          	addi	a5,a5,-1272 # 20003808 <__sf_fake_stdout>
    20002d08:	00f41463          	bne	s0,a5,20002d10 <__swsetup_r+0x68>
    20002d0c:	6880                	ld	s0,16(s1)
    20002d0e:	b7e9                	j	20002cd8 <__swsetup_r+0x30>
    20002d10:	00001797          	auipc	a5,0x1
    20002d14:	a8878793          	addi	a5,a5,-1400 # 20003798 <__sf_fake_stderr>
    20002d18:	fcf410e3          	bne	s0,a5,20002cd8 <__swsetup_r+0x30>
    20002d1c:	6c80                	ld	s0,24(s1)
    20002d1e:	bf6d                	j	20002cd8 <__swsetup_r+0x30>
    20002d20:	8b11                	andi	a4,a4,4
    20002d22:	c715                	beqz	a4,20002d4e <__swsetup_r+0xa6>
    20002d24:	702c                	ld	a1,96(s0)
    20002d26:	c991                	beqz	a1,20002d3a <__swsetup_r+0x92>
    20002d28:	07c40793          	addi	a5,s0,124
    20002d2c:	00f58563          	beq	a1,a5,20002d36 <__swsetup_r+0x8e>
    20002d30:	854a                	mv	a0,s2
    20002d32:	aa3fe0ef          	jal	ra,200017d4 <_free_r>
    20002d36:	06043023          	sd	zero,96(s0)
    20002d3a:	01045783          	lhu	a5,16(s0)
    20002d3e:	00042423          	sw	zero,8(s0)
    20002d42:	fdb7f793          	andi	a5,a5,-37
    20002d46:	00f41823          	sh	a5,16(s0)
    20002d4a:	6c1c                	ld	a5,24(s0)
    20002d4c:	e01c                	sd	a5,0(s0)
    20002d4e:	01045783          	lhu	a5,16(s0)
    20002d52:	0087e793          	ori	a5,a5,8
    20002d56:	00f41823          	sh	a5,16(s0)
    20002d5a:	6c1c                	ld	a5,24(s0)
    20002d5c:	ef89                	bnez	a5,20002d76 <__swsetup_r+0xce>
    20002d5e:	01045783          	lhu	a5,16(s0)
    20002d62:	20000713          	li	a4,512
    20002d66:	2807f793          	andi	a5,a5,640
    20002d6a:	00e78663          	beq	a5,a4,20002d76 <__swsetup_r+0xce>
    20002d6e:	85a2                	mv	a1,s0
    20002d70:	854a                	mv	a0,s2
    20002d72:	5a4000ef          	jal	ra,20003316 <__smakebuf_r>
    20002d76:	01041783          	lh	a5,16(s0)
    20002d7a:	03079713          	slli	a4,a5,0x30
    20002d7e:	0017f693          	andi	a3,a5,1
    20002d82:	9341                	srli	a4,a4,0x30
    20002d84:	c29d                	beqz	a3,20002daa <__swsetup_r+0x102>
    20002d86:	5014                	lw	a3,32(s0)
    20002d88:	00042623          	sw	zero,12(s0)
    20002d8c:	40d006bb          	negw	a3,a3
    20002d90:	d414                	sw	a3,40(s0)
    20002d92:	6c14                	ld	a3,24(s0)
    20002d94:	4501                	li	a0,0
    20002d96:	e681                	bnez	a3,20002d9e <__swsetup_r+0xf6>
    20002d98:	08077713          	andi	a4,a4,128
    20002d9c:	ff21                	bnez	a4,20002cf4 <__swsetup_r+0x4c>
    20002d9e:	60e2                	ld	ra,24(sp)
    20002da0:	6442                	ld	s0,16(sp)
    20002da2:	64a2                	ld	s1,8(sp)
    20002da4:	6902                	ld	s2,0(sp)
    20002da6:	6105                	addi	sp,sp,32
    20002da8:	8082                	ret
    20002daa:	00277693          	andi	a3,a4,2
    20002dae:	4601                	li	a2,0
    20002db0:	e291                	bnez	a3,20002db4 <__swsetup_r+0x10c>
    20002db2:	5010                	lw	a2,32(s0)
    20002db4:	c450                	sw	a2,12(s0)
    20002db6:	bff1                	j	20002d92 <__swsetup_r+0xea>

0000000020002db8 <_close_r>:
    20002db8:	1141                	addi	sp,sp,-16
    20002dba:	e022                	sd	s0,0(sp)
    20002dbc:	842a                	mv	s0,a0
    20002dbe:	852e                	mv	a0,a1
    20002dc0:	8201a023          	sw	zero,-2016(gp) # 80000d0 <errno>
    20002dc4:	e406                	sd	ra,8(sp)
    20002dc6:	047000ef          	jal	ra,2000360c <_close>
    20002dca:	57fd                	li	a5,-1
    20002dcc:	00f51663          	bne	a0,a5,20002dd8 <_close_r+0x20>
    20002dd0:	8201a783          	lw	a5,-2016(gp) # 80000d0 <errno>
    20002dd4:	c391                	beqz	a5,20002dd8 <_close_r+0x20>
    20002dd6:	c01c                	sw	a5,0(s0)
    20002dd8:	60a2                	ld	ra,8(sp)
    20002dda:	6402                	ld	s0,0(sp)
    20002ddc:	0141                	addi	sp,sp,16
    20002dde:	8082                	ret

0000000020002de0 <__sflush_r>:
    20002de0:	0105d783          	lhu	a5,16(a1)
    20002de4:	7179                	addi	sp,sp,-48
    20002de6:	f022                	sd	s0,32(sp)
    20002de8:	ec26                	sd	s1,24(sp)
    20002dea:	f406                	sd	ra,40(sp)
    20002dec:	e84a                	sd	s2,16(sp)
    20002dee:	e44e                	sd	s3,8(sp)
    20002df0:	0087f713          	andi	a4,a5,8
    20002df4:	84aa                	mv	s1,a0
    20002df6:	842e                	mv	s0,a1
    20002df8:	ef69                	bnez	a4,20002ed2 <__sflush_r+0xf2>
    20002dfa:	4598                	lw	a4,8(a1)
    20002dfc:	00e04d63          	bgtz	a4,20002e16 <__sflush_r+0x36>
    20002e00:	5db8                	lw	a4,120(a1)
    20002e02:	00e04a63          	bgtz	a4,20002e16 <__sflush_r+0x36>
    20002e06:	4501                	li	a0,0
    20002e08:	70a2                	ld	ra,40(sp)
    20002e0a:	7402                	ld	s0,32(sp)
    20002e0c:	64e2                	ld	s1,24(sp)
    20002e0e:	6942                	ld	s2,16(sp)
    20002e10:	69a2                	ld	s3,8(sp)
    20002e12:	6145                	addi	sp,sp,48
    20002e14:	8082                	ret
    20002e16:	6838                	ld	a4,80(s0)
    20002e18:	d77d                	beqz	a4,20002e06 <__sflush_r+0x26>
    20002e1a:	6685                	lui	a3,0x1
    20002e1c:	0004a903          	lw	s2,0(s1)
    20002e20:	8ff5                	and	a5,a5,a3
    20002e22:	0004a023          	sw	zero,0(s1)
    20002e26:	cfa5                	beqz	a5,20002e9e <__sflush_r+0xbe>
    20002e28:	6c50                	ld	a2,152(s0)
    20002e2a:	01045783          	lhu	a5,16(s0)
    20002e2e:	8b91                	andi	a5,a5,4
    20002e30:	c799                	beqz	a5,20002e3e <__sflush_r+0x5e>
    20002e32:	441c                	lw	a5,8(s0)
    20002e34:	8e1d                	sub	a2,a2,a5
    20002e36:	703c                	ld	a5,96(s0)
    20002e38:	c399                	beqz	a5,20002e3e <__sflush_r+0x5e>
    20002e3a:	5c3c                	lw	a5,120(s0)
    20002e3c:	8e1d                	sub	a2,a2,a5
    20002e3e:	683c                	ld	a5,80(s0)
    20002e40:	7c0c                	ld	a1,56(s0)
    20002e42:	4681                	li	a3,0
    20002e44:	8526                	mv	a0,s1
    20002e46:	9782                	jalr	a5
    20002e48:	57fd                	li	a5,-1
    20002e4a:	01045703          	lhu	a4,16(s0)
    20002e4e:	00f51d63          	bne	a0,a5,20002e68 <__sflush_r+0x88>
    20002e52:	4094                	lw	a3,0(s1)
    20002e54:	47f5                	li	a5,29
    20002e56:	06d7e863          	bltu	a5,a3,20002ec6 <__sflush_r+0xe6>
    20002e5a:	204007b7          	lui	a5,0x20400
    20002e5e:	0785                	addi	a5,a5,1
    20002e60:	00d7d7b3          	srl	a5,a5,a3
    20002e64:	8b85                	andi	a5,a5,1
    20002e66:	c3a5                	beqz	a5,20002ec6 <__sflush_r+0xe6>
    20002e68:	6c1c                	ld	a5,24(s0)
    20002e6a:	00042423          	sw	zero,8(s0)
    20002e6e:	e01c                	sd	a5,0(s0)
    20002e70:	6785                	lui	a5,0x1
    20002e72:	8f7d                	and	a4,a4,a5
    20002e74:	c719                	beqz	a4,20002e82 <__sflush_r+0xa2>
    20002e76:	57fd                	li	a5,-1
    20002e78:	00f51463          	bne	a0,a5,20002e80 <__sflush_r+0xa0>
    20002e7c:	409c                	lw	a5,0(s1)
    20002e7e:	e391                	bnez	a5,20002e82 <__sflush_r+0xa2>
    20002e80:	ec48                	sd	a0,152(s0)
    20002e82:	702c                	ld	a1,96(s0)
    20002e84:	0124a023          	sw	s2,0(s1)
    20002e88:	ddbd                	beqz	a1,20002e06 <__sflush_r+0x26>
    20002e8a:	07c40793          	addi	a5,s0,124
    20002e8e:	00f58563          	beq	a1,a5,20002e98 <__sflush_r+0xb8>
    20002e92:	8526                	mv	a0,s1
    20002e94:	941fe0ef          	jal	ra,200017d4 <_free_r>
    20002e98:	06043023          	sd	zero,96(s0)
    20002e9c:	b7ad                	j	20002e06 <__sflush_r+0x26>
    20002e9e:	7c0c                	ld	a1,56(s0)
    20002ea0:	4601                	li	a2,0
    20002ea2:	4685                	li	a3,1
    20002ea4:	8526                	mv	a0,s1
    20002ea6:	9702                	jalr	a4
    20002ea8:	57fd                	li	a5,-1
    20002eaa:	862a                	mv	a2,a0
    20002eac:	f6f51fe3          	bne	a0,a5,20002e2a <__sflush_r+0x4a>
    20002eb0:	409c                	lw	a5,0(s1)
    20002eb2:	dfa5                	beqz	a5,20002e2a <__sflush_r+0x4a>
    20002eb4:	4775                	li	a4,29
    20002eb6:	00e78563          	beq	a5,a4,20002ec0 <__sflush_r+0xe0>
    20002eba:	4759                	li	a4,22
    20002ebc:	04e79463          	bne	a5,a4,20002f04 <__sflush_r+0x124>
    20002ec0:	0124a023          	sw	s2,0(s1)
    20002ec4:	b789                	j	20002e06 <__sflush_r+0x26>
    20002ec6:	04076713          	ori	a4,a4,64
    20002eca:	00e41823          	sh	a4,16(s0)
    20002ece:	557d                	li	a0,-1
    20002ed0:	bf25                	j	20002e08 <__sflush_r+0x28>
    20002ed2:	0185b983          	ld	s3,24(a1)
    20002ed6:	f20988e3          	beqz	s3,20002e06 <__sflush_r+0x26>
    20002eda:	0005b903          	ld	s2,0(a1)
    20002ede:	8b8d                	andi	a5,a5,3
    20002ee0:	0135b023          	sd	s3,0(a1)
    20002ee4:	4139093b          	subw	s2,s2,s3
    20002ee8:	4701                	li	a4,0
    20002eea:	e391                	bnez	a5,20002eee <__sflush_r+0x10e>
    20002eec:	5198                	lw	a4,32(a1)
    20002eee:	c458                	sw	a4,12(s0)
    20002ef0:	f1205be3          	blez	s2,20002e06 <__sflush_r+0x26>
    20002ef4:	643c                	ld	a5,72(s0)
    20002ef6:	7c0c                	ld	a1,56(s0)
    20002ef8:	86ca                	mv	a3,s2
    20002efa:	864e                	mv	a2,s3
    20002efc:	8526                	mv	a0,s1
    20002efe:	9782                	jalr	a5
    20002f00:	00a04963          	bgtz	a0,20002f12 <__sflush_r+0x132>
    20002f04:	01045783          	lhu	a5,16(s0)
    20002f08:	0407e793          	ori	a5,a5,64
    20002f0c:	00f41823          	sh	a5,16(s0)
    20002f10:	bf7d                	j	20002ece <__sflush_r+0xee>
    20002f12:	99aa                	add	s3,s3,a0
    20002f14:	40a9093b          	subw	s2,s2,a0
    20002f18:	bfe1                	j	20002ef0 <__sflush_r+0x110>

0000000020002f1a <_fflush_r>:
    20002f1a:	6d9c                	ld	a5,24(a1)
    20002f1c:	c3a5                	beqz	a5,20002f7c <_fflush_r+0x62>
    20002f1e:	1101                	addi	sp,sp,-32
    20002f20:	e822                	sd	s0,16(sp)
    20002f22:	ec06                	sd	ra,24(sp)
    20002f24:	842a                	mv	s0,a0
    20002f26:	c519                	beqz	a0,20002f34 <_fflush_r+0x1a>
    20002f28:	591c                	lw	a5,48(a0)
    20002f2a:	e789                	bnez	a5,20002f34 <_fflush_r+0x1a>
    20002f2c:	e42e                	sd	a1,8(sp)
    20002f2e:	c33fe0ef          	jal	ra,20001b60 <__sinit>
    20002f32:	65a2                	ld	a1,8(sp)
    20002f34:	00001797          	auipc	a5,0x1
    20002f38:	89c78793          	addi	a5,a5,-1892 # 200037d0 <__sf_fake_stdin>
    20002f3c:	00f59b63          	bne	a1,a5,20002f52 <_fflush_r+0x38>
    20002f40:	640c                	ld	a1,8(s0)
    20002f42:	01059783          	lh	a5,16(a1)
    20002f46:	c795                	beqz	a5,20002f72 <_fflush_r+0x58>
    20002f48:	8522                	mv	a0,s0
    20002f4a:	6442                	ld	s0,16(sp)
    20002f4c:	60e2                	ld	ra,24(sp)
    20002f4e:	6105                	addi	sp,sp,32
    20002f50:	bd41                	j	20002de0 <__sflush_r>
    20002f52:	00001797          	auipc	a5,0x1
    20002f56:	8b678793          	addi	a5,a5,-1866 # 20003808 <__sf_fake_stdout>
    20002f5a:	00f59463          	bne	a1,a5,20002f62 <_fflush_r+0x48>
    20002f5e:	680c                	ld	a1,16(s0)
    20002f60:	b7cd                	j	20002f42 <_fflush_r+0x28>
    20002f62:	00001797          	auipc	a5,0x1
    20002f66:	83678793          	addi	a5,a5,-1994 # 20003798 <__sf_fake_stderr>
    20002f6a:	fcf59ce3          	bne	a1,a5,20002f42 <_fflush_r+0x28>
    20002f6e:	6c0c                	ld	a1,24(s0)
    20002f70:	bfc9                	j	20002f42 <_fflush_r+0x28>
    20002f72:	60e2                	ld	ra,24(sp)
    20002f74:	6442                	ld	s0,16(sp)
    20002f76:	4501                	li	a0,0
    20002f78:	6105                	addi	sp,sp,32
    20002f7a:	8082                	ret
    20002f7c:	4501                	li	a0,0
    20002f7e:	8082                	ret

0000000020002f80 <fflush>:
    20002f80:	85aa                	mv	a1,a0
    20002f82:	e919                	bnez	a0,20002f98 <fflush+0x18>
    20002f84:	00000597          	auipc	a1,0x0
    20002f88:	f9658593          	addi	a1,a1,-106 # 20002f1a <_fflush_r>
    20002f8c:	00001517          	auipc	a0,0x1
    20002f90:	95453503          	ld	a0,-1708(a0) # 200038e0 <_global_impure_ptr>
    20002f94:	d71fe06f          	j	20001d04 <_fwalk_reent>
    20002f98:	e7ffd517          	auipc	a0,0xe7ffd
    20002f9c:	12053503          	ld	a0,288(a0) # 80000b8 <_impure_ptr>
    20002fa0:	bfad                	j	20002f1a <_fflush_r>

0000000020002fa2 <__sfvwrite_r>:
    20002fa2:	6a1c                	ld	a5,16(a2)
    20002fa4:	e781                	bnez	a5,20002fac <__sfvwrite_r+0xa>
    20002fa6:	4781                	li	a5,0
    20002fa8:	853e                	mv	a0,a5
    20002faa:	8082                	ret
    20002fac:	0105d783          	lhu	a5,16(a1)
    20002fb0:	7119                	addi	sp,sp,-128
    20002fb2:	f8a2                	sd	s0,112(sp)
    20002fb4:	f0ca                	sd	s2,96(sp)
    20002fb6:	e8d2                	sd	s4,80(sp)
    20002fb8:	fc86                	sd	ra,120(sp)
    20002fba:	f4a6                	sd	s1,104(sp)
    20002fbc:	ecce                	sd	s3,88(sp)
    20002fbe:	e4d6                	sd	s5,72(sp)
    20002fc0:	e0da                	sd	s6,64(sp)
    20002fc2:	fc5e                	sd	s7,56(sp)
    20002fc4:	f862                	sd	s8,48(sp)
    20002fc6:	f466                	sd	s9,40(sp)
    20002fc8:	f06a                	sd	s10,32(sp)
    20002fca:	ec6e                	sd	s11,24(sp)
    20002fcc:	8ba1                	andi	a5,a5,8
    20002fce:	892a                	mv	s2,a0
    20002fd0:	842e                	mv	s0,a1
    20002fd2:	8a32                	mv	s4,a2
    20002fd4:	cfd1                	beqz	a5,20003070 <__sfvwrite_r+0xce>
    20002fd6:	6d9c                	ld	a5,24(a1)
    20002fd8:	cfc1                	beqz	a5,20003070 <__sfvwrite_r+0xce>
    20002fda:	01045783          	lhu	a5,16(s0)
    20002fde:	000a3983          	ld	s3,0(s4)
    20002fe2:	0027f713          	andi	a4,a5,2
    20002fe6:	0e071863          	bnez	a4,200030d6 <__sfvwrite_r+0x134>
    20002fea:	8b85                	andi	a5,a5,1
    20002fec:	4a81                	li	s5,0
    20002fee:	16078463          	beqz	a5,20003156 <__sfvwrite_r+0x1b4>
    20002ff2:	4501                	li	a0,0
    20002ff4:	4b81                	li	s7,0
    20002ff6:	4b01                	li	s6,0
    20002ff8:	240b0963          	beqz	s6,2000324a <__sfvwrite_r+0x2a8>
    20002ffc:	e919                	bnez	a0,20003012 <__sfvwrite_r+0x70>
    20002ffe:	865a                	mv	a2,s6
    20003000:	45a9                	li	a1,10
    20003002:	855e                	mv	a0,s7
    20003004:	3b4000ef          	jal	ra,200033b8 <memchr>
    20003008:	24050863          	beqz	a0,20003258 <__sfvwrite_r+0x2b6>
    2000300c:	0505                	addi	a0,a0,1
    2000300e:	41750abb          	subw	s5,a0,s7
    20003012:	8c56                	mv	s8,s5
    20003014:	015b7363          	bgeu	s6,s5,2000301a <__sfvwrite_r+0x78>
    20003018:	8c5a                	mv	s8,s6
    2000301a:	6008                	ld	a0,0(s0)
    2000301c:	6c1c                	ld	a5,24(s0)
    2000301e:	5014                	lw	a3,32(s0)
    20003020:	22a7ff63          	bgeu	a5,a0,2000325e <__sfvwrite_r+0x2bc>
    20003024:	4444                	lw	s1,12(s0)
    20003026:	9cb5                	addw	s1,s1,a3
    20003028:	2384db63          	bge	s1,s8,2000325e <__sfvwrite_r+0x2bc>
    2000302c:	85de                	mv	a1,s7
    2000302e:	8626                	mv	a2,s1
    20003030:	47e000ef          	jal	ra,200034ae <memmove>
    20003034:	601c                	ld	a5,0(s0)
    20003036:	85a2                	mv	a1,s0
    20003038:	854a                	mv	a0,s2
    2000303a:	97a6                	add	a5,a5,s1
    2000303c:	e01c                	sd	a5,0(s0)
    2000303e:	eddff0ef          	jal	ra,20002f1a <_fflush_r>
    20003042:	10051263          	bnez	a0,20003146 <__sfvwrite_r+0x1a4>
    20003046:	409a8abb          	subw	s5,s5,s1
    2000304a:	4505                	li	a0,1
    2000304c:	000a9763          	bnez	s5,2000305a <__sfvwrite_r+0xb8>
    20003050:	85a2                	mv	a1,s0
    20003052:	854a                	mv	a0,s2
    20003054:	ec7ff0ef          	jal	ra,20002f1a <_fflush_r>
    20003058:	e57d                	bnez	a0,20003146 <__sfvwrite_r+0x1a4>
    2000305a:	010a3603          	ld	a2,16(s4)
    2000305e:	9ba6                	add	s7,s7,s1
    20003060:	409b0b33          	sub	s6,s6,s1
    20003064:	409604b3          	sub	s1,a2,s1
    20003068:	009a3823          	sd	s1,16(s4)
    2000306c:	f4d1                	bnez	s1,20002ff8 <__sfvwrite_r+0x56>
    2000306e:	a099                	j	200030b4 <__sfvwrite_r+0x112>
    20003070:	85a2                	mv	a1,s0
    20003072:	854a                	mv	a0,s2
    20003074:	c35ff0ef          	jal	ra,20002ca8 <__swsetup_r>
    20003078:	57fd                	li	a5,-1
    2000307a:	d125                	beqz	a0,20002fda <__sfvwrite_r+0x38>
    2000307c:	a82d                	j	200030b6 <__sfvwrite_r+0x114>
    2000307e:	0009ba83          	ld	s5,0(s3)
    20003082:	0089b483          	ld	s1,8(s3)
    20003086:	09c1                	addi	s3,s3,16
    20003088:	d8fd                	beqz	s1,2000307e <__sfvwrite_r+0xdc>
    2000308a:	86a6                	mv	a3,s1
    2000308c:	009b7363          	bgeu	s6,s1,20003092 <__sfvwrite_r+0xf0>
    20003090:	86da                	mv	a3,s6
    20003092:	643c                	ld	a5,72(s0)
    20003094:	7c0c                	ld	a1,56(s0)
    20003096:	2681                	sext.w	a3,a3
    20003098:	8656                	mv	a2,s5
    2000309a:	854a                	mv	a0,s2
    2000309c:	9782                	jalr	a5
    2000309e:	0aa05463          	blez	a0,20003146 <__sfvwrite_r+0x1a4>
    200030a2:	010a3783          	ld	a5,16(s4)
    200030a6:	9aaa                	add	s5,s5,a0
    200030a8:	8c89                	sub	s1,s1,a0
    200030aa:	40a78533          	sub	a0,a5,a0
    200030ae:	00aa3823          	sd	a0,16(s4)
    200030b2:	f979                	bnez	a0,20003088 <__sfvwrite_r+0xe6>
    200030b4:	4781                	li	a5,0
    200030b6:	70e6                	ld	ra,120(sp)
    200030b8:	7446                	ld	s0,112(sp)
    200030ba:	74a6                	ld	s1,104(sp)
    200030bc:	7906                	ld	s2,96(sp)
    200030be:	69e6                	ld	s3,88(sp)
    200030c0:	6a46                	ld	s4,80(sp)
    200030c2:	6aa6                	ld	s5,72(sp)
    200030c4:	6b06                	ld	s6,64(sp)
    200030c6:	7be2                	ld	s7,56(sp)
    200030c8:	7c42                	ld	s8,48(sp)
    200030ca:	7ca2                	ld	s9,40(sp)
    200030cc:	7d02                	ld	s10,32(sp)
    200030ce:	6de2                	ld	s11,24(sp)
    200030d0:	853e                	mv	a0,a5
    200030d2:	6109                	addi	sp,sp,128
    200030d4:	8082                	ret
    200030d6:	80000b37          	lui	s6,0x80000
    200030da:	4a81                	li	s5,0
    200030dc:	4481                	li	s1,0
    200030de:	c00b4b13          	xori	s6,s6,-1024
    200030e2:	b75d                	j	20003088 <__sfvwrite_r+0xe6>
    200030e4:	0009ba83          	ld	s5,0(s3)
    200030e8:	0089bd03          	ld	s10,8(s3)
    200030ec:	09c1                	addi	s3,s3,16
    200030ee:	4444                	lw	s1,12(s0)
    200030f0:	8626                	mv	a2,s1
    200030f2:	fe0d09e3          	beqz	s10,200030e4 <__sfvwrite_r+0x142>
    200030f6:	01045703          	lhu	a4,16(s0)
    200030fa:	6008                	ld	a0,0(s0)
    200030fc:	20077793          	andi	a5,a4,512
    20003100:	c7ed                	beqz	a5,200031ea <__sfvwrite_r+0x248>
    20003102:	089d6863          	bltu	s10,s1,20003192 <__sfvwrite_r+0x1f0>
    20003106:	48077793          	andi	a5,a4,1152
    2000310a:	c7c1                	beqz	a5,20003192 <__sfvwrite_r+0x1f0>
    2000310c:	501c                	lw	a5,32(s0)
    2000310e:	6c0c                	ld	a1,24(s0)
    20003110:	02fc07bb          	mulw	a5,s8,a5
    20003114:	8d0d                	sub	a0,a0,a1
    20003116:	00050d9b          	sext.w	s11,a0
    2000311a:	001d8693          	addi	a3,s11,1
    2000311e:	96ea                	add	a3,a3,s10
    20003120:	0397cbbb          	divw	s7,a5,s9
    20003124:	00dbf563          	bgeu	s7,a3,2000312e <__sfvwrite_r+0x18c>
    20003128:	2505                	addiw	a0,a0,1
    2000312a:	01a50bbb          	addw	s7,a0,s10
    2000312e:	40077713          	andi	a4,a4,1024
    20003132:	cb59                	beqz	a4,200031c8 <__sfvwrite_r+0x226>
    20003134:	85de                	mv	a1,s7
    20003136:	854a                	mv	a0,s2
    20003138:	f40fe0ef          	jal	ra,20001878 <_malloc_r>
    2000313c:	84aa                	mv	s1,a0
    2000313e:	e505                	bnez	a0,20003166 <__sfvwrite_r+0x1c4>
    20003140:	47b1                	li	a5,12
    20003142:	00f92023          	sw	a5,0(s2)
    20003146:	01045783          	lhu	a5,16(s0)
    2000314a:	0407e793          	ori	a5,a5,64
    2000314e:	00f41823          	sh	a5,16(s0)
    20003152:	57fd                	li	a5,-1
    20003154:	b78d                	j	200030b6 <__sfvwrite_r+0x114>
    20003156:	80000b37          	lui	s6,0x80000
    2000315a:	4d01                	li	s10,0
    2000315c:	fffb4b13          	not	s6,s6
    20003160:	4c0d                	li	s8,3
    20003162:	4c89                	li	s9,2
    20003164:	b769                	j	200030ee <__sfvwrite_r+0x14c>
    20003166:	6c0c                	ld	a1,24(s0)
    20003168:	866e                	mv	a2,s11
    2000316a:	268000ef          	jal	ra,200033d2 <memcpy>
    2000316e:	01045703          	lhu	a4,16(s0)
    20003172:	b7f77713          	andi	a4,a4,-1153
    20003176:	08076713          	ori	a4,a4,128
    2000317a:	00e41823          	sh	a4,16(s0)
    2000317e:	ec04                	sd	s1,24(s0)
    20003180:	94ee                	add	s1,s1,s11
    20003182:	41bb8dbb          	subw	s11,s7,s11
    20003186:	e004                	sd	s1,0(s0)
    20003188:	03742023          	sw	s7,32(s0)
    2000318c:	866a                	mv	a2,s10
    2000318e:	01b42623          	sw	s11,12(s0)
    20003192:	84ea                	mv	s1,s10
    20003194:	00cd7363          	bgeu	s10,a2,2000319a <__sfvwrite_r+0x1f8>
    20003198:	866a                	mv	a2,s10
    2000319a:	6008                	ld	a0,0(s0)
    2000319c:	85d6                	mv	a1,s5
    2000319e:	e432                	sd	a2,8(sp)
    200031a0:	30e000ef          	jal	ra,200034ae <memmove>
    200031a4:	445c                	lw	a5,12(s0)
    200031a6:	6622                	ld	a2,8(sp)
    200031a8:	9f91                	subw	a5,a5,a2
    200031aa:	c45c                	sw	a5,12(s0)
    200031ac:	601c                	ld	a5,0(s0)
    200031ae:	963e                	add	a2,a2,a5
    200031b0:	e010                	sd	a2,0(s0)
    200031b2:	010a3503          	ld	a0,16(s4)
    200031b6:	9aa6                	add	s5,s5,s1
    200031b8:	409d0d33          	sub	s10,s10,s1
    200031bc:	409504b3          	sub	s1,a0,s1
    200031c0:	009a3823          	sd	s1,16(s4)
    200031c4:	f48d                	bnez	s1,200030ee <__sfvwrite_r+0x14c>
    200031c6:	b5fd                	j	200030b4 <__sfvwrite_r+0x112>
    200031c8:	865e                	mv	a2,s7
    200031ca:	854a                	mv	a0,s2
    200031cc:	32c000ef          	jal	ra,200034f8 <_realloc_r>
    200031d0:	84aa                	mv	s1,a0
    200031d2:	f555                	bnez	a0,2000317e <__sfvwrite_r+0x1dc>
    200031d4:	6c0c                	ld	a1,24(s0)
    200031d6:	854a                	mv	a0,s2
    200031d8:	dfcfe0ef          	jal	ra,200017d4 <_free_r>
    200031dc:	01045783          	lhu	a5,16(s0)
    200031e0:	f7f7f793          	andi	a5,a5,-129
    200031e4:	00f41823          	sh	a5,16(s0)
    200031e8:	bfa1                	j	20003140 <__sfvwrite_r+0x19e>
    200031ea:	6c1c                	ld	a5,24(s0)
    200031ec:	00a7e563          	bltu	a5,a0,200031f6 <__sfvwrite_r+0x254>
    200031f0:	5014                	lw	a3,32(s0)
    200031f2:	02dd7763          	bgeu	s10,a3,20003220 <__sfvwrite_r+0x27e>
    200031f6:	009d7363          	bgeu	s10,s1,200031fc <__sfvwrite_r+0x25a>
    200031fa:	84ea                	mv	s1,s10
    200031fc:	8626                	mv	a2,s1
    200031fe:	85d6                	mv	a1,s5
    20003200:	2ae000ef          	jal	ra,200034ae <memmove>
    20003204:	445c                	lw	a5,12(s0)
    20003206:	4097873b          	subw	a4,a5,s1
    2000320a:	601c                	ld	a5,0(s0)
    2000320c:	c458                	sw	a4,12(s0)
    2000320e:	97a6                	add	a5,a5,s1
    20003210:	e01c                	sd	a5,0(s0)
    20003212:	f345                	bnez	a4,200031b2 <__sfvwrite_r+0x210>
    20003214:	85a2                	mv	a1,s0
    20003216:	854a                	mv	a0,s2
    20003218:	d03ff0ef          	jal	ra,20002f1a <_fflush_r>
    2000321c:	d959                	beqz	a0,200031b2 <__sfvwrite_r+0x210>
    2000321e:	b725                	j	20003146 <__sfvwrite_r+0x1a4>
    20003220:	80000737          	lui	a4,0x80000
    20003224:	ffe74713          	xori	a4,a4,-2
    20003228:	87da                	mv	a5,s6
    2000322a:	01a76363          	bltu	a4,s10,20003230 <__sfvwrite_r+0x28e>
    2000322e:	87ea                	mv	a5,s10
    20003230:	02d7c7bb          	divw	a5,a5,a3
    20003234:	6438                	ld	a4,72(s0)
    20003236:	7c0c                	ld	a1,56(s0)
    20003238:	8656                	mv	a2,s5
    2000323a:	854a                	mv	a0,s2
    2000323c:	02d786bb          	mulw	a3,a5,a3
    20003240:	9702                	jalr	a4
    20003242:	84aa                	mv	s1,a0
    20003244:	f6a047e3          	bgtz	a0,200031b2 <__sfvwrite_r+0x210>
    20003248:	bdfd                	j	20003146 <__sfvwrite_r+0x1a4>
    2000324a:	0009bb83          	ld	s7,0(s3)
    2000324e:	0089bb03          	ld	s6,8(s3)
    20003252:	4501                	li	a0,0
    20003254:	09c1                	addi	s3,s3,16
    20003256:	b34d                	j	20002ff8 <__sfvwrite_r+0x56>
    20003258:	001b0a9b          	addiw	s5,s6,1
    2000325c:	bb5d                	j	20003012 <__sfvwrite_r+0x70>
    2000325e:	00dc4b63          	blt	s8,a3,20003274 <__sfvwrite_r+0x2d2>
    20003262:	643c                	ld	a5,72(s0)
    20003264:	7c0c                	ld	a1,56(s0)
    20003266:	865e                	mv	a2,s7
    20003268:	854a                	mv	a0,s2
    2000326a:	9782                	jalr	a5
    2000326c:	84aa                	mv	s1,a0
    2000326e:	dca04ce3          	bgtz	a0,20003046 <__sfvwrite_r+0xa4>
    20003272:	bdd1                	j	20003146 <__sfvwrite_r+0x1a4>
    20003274:	8662                	mv	a2,s8
    20003276:	85de                	mv	a1,s7
    20003278:	236000ef          	jal	ra,200034ae <memmove>
    2000327c:	445c                	lw	a5,12(s0)
    2000327e:	84e2                	mv	s1,s8
    20003280:	418787bb          	subw	a5,a5,s8
    20003284:	c45c                	sw	a5,12(s0)
    20003286:	601c                	ld	a5,0(s0)
    20003288:	97e2                	add	a5,a5,s8
    2000328a:	e01c                	sd	a5,0(s0)
    2000328c:	bb6d                	j	20003046 <__sfvwrite_r+0xa4>

000000002000328e <_lseek_r>:
    2000328e:	1141                	addi	sp,sp,-16
    20003290:	e022                	sd	s0,0(sp)
    20003292:	842a                	mv	s0,a0
    20003294:	852e                	mv	a0,a1
    20003296:	85b2                	mv	a1,a2
    20003298:	8636                	mv	a2,a3
    2000329a:	8201a023          	sw	zero,-2016(gp) # 80000d0 <errno>
    2000329e:	e406                	sd	ra,8(sp)
    200032a0:	3f6000ef          	jal	ra,20003696 <_lseek>
    200032a4:	57fd                	li	a5,-1
    200032a6:	00f51663          	bne	a0,a5,200032b2 <_lseek_r+0x24>
    200032aa:	8201a783          	lw	a5,-2016(gp) # 80000d0 <errno>
    200032ae:	c391                	beqz	a5,200032b2 <_lseek_r+0x24>
    200032b0:	c01c                	sw	a5,0(s0)
    200032b2:	60a2                	ld	ra,8(sp)
    200032b4:	6402                	ld	s0,0(sp)
    200032b6:	0141                	addi	sp,sp,16
    200032b8:	8082                	ret

00000000200032ba <__swhatbuf_r>:
    200032ba:	7175                	addi	sp,sp,-144
    200032bc:	f8ca                	sd	s2,112(sp)
    200032be:	892e                	mv	s2,a1
    200032c0:	01259583          	lh	a1,18(a1)
    200032c4:	e122                	sd	s0,128(sp)
    200032c6:	fca6                	sd	s1,120(sp)
    200032c8:	e506                	sd	ra,136(sp)
    200032ca:	8432                	mv	s0,a2
    200032cc:	84b6                	mv	s1,a3
    200032ce:	0005dc63          	bgez	a1,200032e6 <__swhatbuf_r+0x2c>
    200032d2:	01091783          	lh	a5,16(s2)
    200032d6:	0004a023          	sw	zero,0(s1)
    200032da:	0807f793          	andi	a5,a5,128
    200032de:	e395                	bnez	a5,20003302 <__swhatbuf_r+0x48>
    200032e0:	40000793          	li	a5,1024
    200032e4:	a00d                	j	20003306 <__swhatbuf_r+0x4c>
    200032e6:	0030                	addi	a2,sp,8
    200032e8:	2ba000ef          	jal	ra,200035a2 <_fstat_r>
    200032ec:	fe0543e3          	bltz	a0,200032d2 <__swhatbuf_r+0x18>
    200032f0:	47b2                	lw	a5,12(sp)
    200032f2:	673d                	lui	a4,0xf
    200032f4:	8ff9                	and	a5,a5,a4
    200032f6:	6709                	lui	a4,0x2
    200032f8:	8f99                	sub	a5,a5,a4
    200032fa:	0017b793          	seqz	a5,a5
    200032fe:	c09c                	sw	a5,0(s1)
    20003300:	b7c5                	j	200032e0 <__swhatbuf_r+0x26>
    20003302:	04000793          	li	a5,64
    20003306:	60aa                	ld	ra,136(sp)
    20003308:	e01c                	sd	a5,0(s0)
    2000330a:	640a                	ld	s0,128(sp)
    2000330c:	74e6                	ld	s1,120(sp)
    2000330e:	7946                	ld	s2,112(sp)
    20003310:	4501                	li	a0,0
    20003312:	6149                	addi	sp,sp,144
    20003314:	8082                	ret

0000000020003316 <__smakebuf_r>:
    20003316:	0105d783          	lhu	a5,16(a1)
    2000331a:	7179                	addi	sp,sp,-48
    2000331c:	f022                	sd	s0,32(sp)
    2000331e:	f406                	sd	ra,40(sp)
    20003320:	ec26                	sd	s1,24(sp)
    20003322:	e84a                	sd	s2,16(sp)
    20003324:	8b89                	andi	a5,a5,2
    20003326:	842e                	mv	s0,a1
    20003328:	cf89                	beqz	a5,20003342 <__smakebuf_r+0x2c>
    2000332a:	07f40793          	addi	a5,s0,127
    2000332e:	e01c                	sd	a5,0(s0)
    20003330:	ec1c                	sd	a5,24(s0)
    20003332:	4785                	li	a5,1
    20003334:	d01c                	sw	a5,32(s0)
    20003336:	70a2                	ld	ra,40(sp)
    20003338:	7402                	ld	s0,32(sp)
    2000333a:	64e2                	ld	s1,24(sp)
    2000333c:	6942                	ld	s2,16(sp)
    2000333e:	6145                	addi	sp,sp,48
    20003340:	8082                	ret
    20003342:	0054                	addi	a3,sp,4
    20003344:	0030                	addi	a2,sp,8
    20003346:	892a                	mv	s2,a0
    20003348:	f73ff0ef          	jal	ra,200032ba <__swhatbuf_r>
    2000334c:	65a2                	ld	a1,8(sp)
    2000334e:	84aa                	mv	s1,a0
    20003350:	854a                	mv	a0,s2
    20003352:	d26fe0ef          	jal	ra,20001878 <_malloc_r>
    20003356:	ed01                	bnez	a0,2000336e <__smakebuf_r+0x58>
    20003358:	01041783          	lh	a5,16(s0)
    2000335c:	2007f713          	andi	a4,a5,512
    20003360:	fb79                	bnez	a4,20003336 <__smakebuf_r+0x20>
    20003362:	9bf1                	andi	a5,a5,-4
    20003364:	0027e793          	ori	a5,a5,2
    20003368:	00f41823          	sh	a5,16(s0)
    2000336c:	bf7d                	j	2000332a <__smakebuf_r+0x14>
    2000336e:	ffffe797          	auipc	a5,0xffffe
    20003372:	79278793          	addi	a5,a5,1938 # 20001b00 <_cleanup_r>
    20003376:	04f93423          	sd	a5,72(s2)
    2000337a:	01045783          	lhu	a5,16(s0)
    2000337e:	e008                	sd	a0,0(s0)
    20003380:	ec08                	sd	a0,24(s0)
    20003382:	0807e793          	ori	a5,a5,128
    20003386:	00f41823          	sh	a5,16(s0)
    2000338a:	67a2                	ld	a5,8(sp)
    2000338c:	d01c                	sw	a5,32(s0)
    2000338e:	4792                	lw	a5,4(sp)
    20003390:	cf91                	beqz	a5,200033ac <__smakebuf_r+0x96>
    20003392:	01241583          	lh	a1,18(s0)
    20003396:	854a                	mv	a0,s2
    20003398:	234000ef          	jal	ra,200035cc <_isatty_r>
    2000339c:	c901                	beqz	a0,200033ac <__smakebuf_r+0x96>
    2000339e:	01045783          	lhu	a5,16(s0)
    200033a2:	9bf1                	andi	a5,a5,-4
    200033a4:	0017e793          	ori	a5,a5,1
    200033a8:	00f41823          	sh	a5,16(s0)
    200033ac:	01045503          	lhu	a0,16(s0)
    200033b0:	8cc9                	or	s1,s1,a0
    200033b2:	00941823          	sh	s1,16(s0)
    200033b6:	b741                	j	20003336 <__smakebuf_r+0x20>

00000000200033b8 <memchr>:
    200033b8:	0ff5f593          	zext.b	a1,a1
    200033bc:	962a                	add	a2,a2,a0
    200033be:	00c51463          	bne	a0,a2,200033c6 <memchr+0xe>
    200033c2:	4501                	li	a0,0
    200033c4:	8082                	ret
    200033c6:	00054783          	lbu	a5,0(a0)
    200033ca:	feb78de3          	beq	a5,a1,200033c4 <memchr+0xc>
    200033ce:	0505                	addi	a0,a0,1
    200033d0:	b7fd                	j	200033be <memchr+0x6>

00000000200033d2 <memcpy>:
    200033d2:	00a5c7b3          	xor	a5,a1,a0
    200033d6:	8b9d                	andi	a5,a5,7
    200033d8:	00c506b3          	add	a3,a0,a2
    200033dc:	e781                	bnez	a5,200033e4 <memcpy+0x12>
    200033de:	479d                	li	a5,7
    200033e0:	00c7ee63          	bltu	a5,a2,200033fc <memcpy+0x2a>
    200033e4:	87aa                	mv	a5,a0
    200033e6:	06d57163          	bgeu	a0,a3,20003448 <memcpy+0x76>
    200033ea:	0005c703          	lbu	a4,0(a1)
    200033ee:	0785                	addi	a5,a5,1
    200033f0:	0585                	addi	a1,a1,1
    200033f2:	fee78fa3          	sb	a4,-1(a5)
    200033f6:	fed7eae3          	bltu	a5,a3,200033ea <memcpy+0x18>
    200033fa:	8082                	ret
    200033fc:	00757713          	andi	a4,a0,7
    20003400:	87aa                	mv	a5,a0
    20003402:	cb11                	beqz	a4,20003416 <memcpy+0x44>
    20003404:	0005c703          	lbu	a4,0(a1)
    20003408:	0785                	addi	a5,a5,1
    2000340a:	0585                	addi	a1,a1,1
    2000340c:	fee78fa3          	sb	a4,-1(a5)
    20003410:	0077f713          	andi	a4,a5,7
    20003414:	b7fd                	j	20003402 <memcpy+0x30>
    20003416:	ff86f713          	andi	a4,a3,-8
    2000341a:	40f70833          	sub	a6,a4,a5
    2000341e:	04000613          	li	a2,64
    20003422:	03064463          	blt	a2,a6,2000344a <memcpy+0x78>
    20003426:	882e                	mv	a6,a1
    20003428:	863e                	mv	a2,a5
    2000342a:	06e66b63          	bltu	a2,a4,200034a0 <memcpy+0xce>
    2000342e:	ff978813          	addi	a6,a5,-7
    20003432:	4601                	li	a2,0
    20003434:	01076663          	bltu	a4,a6,20003440 <memcpy+0x6e>
    20003438:	071d                	addi	a4,a4,7
    2000343a:	8f1d                	sub	a4,a4,a5
    2000343c:	ff877613          	andi	a2,a4,-8
    20003440:	97b2                	add	a5,a5,a2
    20003442:	95b2                	add	a1,a1,a2
    20003444:	fad7e3e3          	bltu	a5,a3,200033ea <memcpy+0x18>
    20003448:	8082                	ret
    2000344a:	0005b383          	ld	t2,0(a1)
    2000344e:	0085b283          	ld	t0,8(a1)
    20003452:	0105bf83          	ld	t6,16(a1)
    20003456:	0185bf03          	ld	t5,24(a1)
    2000345a:	0205be83          	ld	t4,32(a1)
    2000345e:	0285be03          	ld	t3,40(a1)
    20003462:	0305b303          	ld	t1,48(a1)
    20003466:	0385b883          	ld	a7,56(a1)
    2000346a:	0077b023          	sd	t2,0(a5)
    2000346e:	0057b423          	sd	t0,8(a5)
    20003472:	0405b803          	ld	a6,64(a1)
    20003476:	01f7b823          	sd	t6,16(a5)
    2000347a:	01e7bc23          	sd	t5,24(a5)
    2000347e:	03d7b023          	sd	t4,32(a5)
    20003482:	03c7b423          	sd	t3,40(a5)
    20003486:	0267b823          	sd	t1,48(a5)
    2000348a:	0317bc23          	sd	a7,56(a5)
    2000348e:	04878793          	addi	a5,a5,72
    20003492:	04858593          	addi	a1,a1,72
    20003496:	ff07bc23          	sd	a6,-8(a5)
    2000349a:	40f70833          	sub	a6,a4,a5
    2000349e:	b751                	j	20003422 <memcpy+0x50>
    200034a0:	00083883          	ld	a7,0(a6)
    200034a4:	0621                	addi	a2,a2,8
    200034a6:	0821                	addi	a6,a6,8
    200034a8:	ff163c23          	sd	a7,-8(a2)
    200034ac:	bfbd                	j	2000342a <memcpy+0x58>

00000000200034ae <memmove>:
    200034ae:	04a5f363          	bgeu	a1,a0,200034f4 <memmove+0x46>
    200034b2:	00c586b3          	add	a3,a1,a2
    200034b6:	02d57f63          	bgeu	a0,a3,200034f4 <memmove+0x46>
    200034ba:	fff64593          	not	a1,a2
    200034be:	4781                	li	a5,0
    200034c0:	17fd                	addi	a5,a5,-1
    200034c2:	00f59363          	bne	a1,a5,200034c8 <memmove+0x1a>
    200034c6:	8082                	ret
    200034c8:	00f68733          	add	a4,a3,a5
    200034cc:	00074803          	lbu	a6,0(a4) # 2000 <__heap_size+0x1800>
    200034d0:	00f60733          	add	a4,a2,a5
    200034d4:	972a                	add	a4,a4,a0
    200034d6:	01070023          	sb	a6,0(a4)
    200034da:	b7dd                	j	200034c0 <memmove+0x12>
    200034dc:	00f58733          	add	a4,a1,a5
    200034e0:	00074683          	lbu	a3,0(a4)
    200034e4:	00f50733          	add	a4,a0,a5
    200034e8:	0785                	addi	a5,a5,1
    200034ea:	00d70023          	sb	a3,0(a4)
    200034ee:	fef617e3          	bne	a2,a5,200034dc <memmove+0x2e>
    200034f2:	8082                	ret
    200034f4:	4781                	li	a5,0
    200034f6:	bfe5                	j	200034ee <memmove+0x40>

00000000200034f8 <_realloc_r>:
    200034f8:	7179                	addi	sp,sp,-48
    200034fa:	f022                	sd	s0,32(sp)
    200034fc:	f406                	sd	ra,40(sp)
    200034fe:	ec26                	sd	s1,24(sp)
    20003500:	e84a                	sd	s2,16(sp)
    20003502:	e44e                	sd	s3,8(sp)
    20003504:	e052                	sd	s4,0(sp)
    20003506:	8432                	mv	s0,a2
    20003508:	e999                	bnez	a1,2000351e <_realloc_r+0x26>
    2000350a:	7402                	ld	s0,32(sp)
    2000350c:	70a2                	ld	ra,40(sp)
    2000350e:	64e2                	ld	s1,24(sp)
    20003510:	6942                	ld	s2,16(sp)
    20003512:	69a2                	ld	s3,8(sp)
    20003514:	6a02                	ld	s4,0(sp)
    20003516:	85b2                	mv	a1,a2
    20003518:	6145                	addi	sp,sp,48
    2000351a:	b5efe06f          	j	20001878 <_malloc_r>
    2000351e:	ee09                	bnez	a2,20003538 <_realloc_r+0x40>
    20003520:	ab4fe0ef          	jal	ra,200017d4 <_free_r>
    20003524:	4481                	li	s1,0
    20003526:	70a2                	ld	ra,40(sp)
    20003528:	7402                	ld	s0,32(sp)
    2000352a:	6942                	ld	s2,16(sp)
    2000352c:	69a2                	ld	s3,8(sp)
    2000352e:	6a02                	ld	s4,0(sp)
    20003530:	8526                	mv	a0,s1
    20003532:	64e2                	ld	s1,24(sp)
    20003534:	6145                	addi	sp,sp,48
    20003536:	8082                	ret
    20003538:	8a2a                	mv	s4,a0
    2000353a:	892e                	mv	s2,a1
    2000353c:	0b8000ef          	jal	ra,200035f4 <_malloc_usable_size_r>
    20003540:	89aa                	mv	s3,a0
    20003542:	00856763          	bltu	a0,s0,20003550 <_realloc_r+0x58>
    20003546:	00155793          	srli	a5,a0,0x1
    2000354a:	84ca                	mv	s1,s2
    2000354c:	fc87ede3          	bltu	a5,s0,20003526 <_realloc_r+0x2e>
    20003550:	85a2                	mv	a1,s0
    20003552:	8552                	mv	a0,s4
    20003554:	b24fe0ef          	jal	ra,20001878 <_malloc_r>
    20003558:	84aa                	mv	s1,a0
    2000355a:	d571                	beqz	a0,20003526 <_realloc_r+0x2e>
    2000355c:	8622                	mv	a2,s0
    2000355e:	0089f363          	bgeu	s3,s0,20003564 <_realloc_r+0x6c>
    20003562:	864e                	mv	a2,s3
    20003564:	85ca                	mv	a1,s2
    20003566:	8526                	mv	a0,s1
    20003568:	e6bff0ef          	jal	ra,200033d2 <memcpy>
    2000356c:	85ca                	mv	a1,s2
    2000356e:	8552                	mv	a0,s4
    20003570:	a64fe0ef          	jal	ra,200017d4 <_free_r>
    20003574:	bf4d                	j	20003526 <_realloc_r+0x2e>

0000000020003576 <_read_r>:
    20003576:	1141                	addi	sp,sp,-16
    20003578:	e022                	sd	s0,0(sp)
    2000357a:	842a                	mv	s0,a0
    2000357c:	852e                	mv	a0,a1
    2000357e:	85b2                	mv	a1,a2
    20003580:	8636                	mv	a2,a3
    20003582:	8201a023          	sw	zero,-2016(gp) # 80000d0 <errno>
    20003586:	e406                	sd	ra,8(sp)
    20003588:	138000ef          	jal	ra,200036c0 <_read>
    2000358c:	57fd                	li	a5,-1
    2000358e:	00f51663          	bne	a0,a5,2000359a <_read_r+0x24>
    20003592:	8201a783          	lw	a5,-2016(gp) # 80000d0 <errno>
    20003596:	c391                	beqz	a5,2000359a <_read_r+0x24>
    20003598:	c01c                	sw	a5,0(s0)
    2000359a:	60a2                	ld	ra,8(sp)
    2000359c:	6402                	ld	s0,0(sp)
    2000359e:	0141                	addi	sp,sp,16
    200035a0:	8082                	ret

00000000200035a2 <_fstat_r>:
    200035a2:	1141                	addi	sp,sp,-16
    200035a4:	e022                	sd	s0,0(sp)
    200035a6:	842a                	mv	s0,a0
    200035a8:	852e                	mv	a0,a1
    200035aa:	85b2                	mv	a1,a2
    200035ac:	8201a023          	sw	zero,-2016(gp) # 80000d0 <errno>
    200035b0:	e406                	sd	ra,8(sp)
    200035b2:	086000ef          	jal	ra,20003638 <_fstat>
    200035b6:	57fd                	li	a5,-1
    200035b8:	00f51663          	bne	a0,a5,200035c4 <_fstat_r+0x22>
    200035bc:	8201a783          	lw	a5,-2016(gp) # 80000d0 <errno>
    200035c0:	c391                	beqz	a5,200035c4 <_fstat_r+0x22>
    200035c2:	c01c                	sw	a5,0(s0)
    200035c4:	60a2                	ld	ra,8(sp)
    200035c6:	6402                	ld	s0,0(sp)
    200035c8:	0141                	addi	sp,sp,16
    200035ca:	8082                	ret

00000000200035cc <_isatty_r>:
    200035cc:	1141                	addi	sp,sp,-16
    200035ce:	e022                	sd	s0,0(sp)
    200035d0:	842a                	mv	s0,a0
    200035d2:	852e                	mv	a0,a1
    200035d4:	8201a023          	sw	zero,-2016(gp) # 80000d0 <errno>
    200035d8:	e406                	sd	ra,8(sp)
    200035da:	09a000ef          	jal	ra,20003674 <_isatty>
    200035de:	57fd                	li	a5,-1
    200035e0:	00f51663          	bne	a0,a5,200035ec <_isatty_r+0x20>
    200035e4:	8201a783          	lw	a5,-2016(gp) # 80000d0 <errno>
    200035e8:	c391                	beqz	a5,200035ec <_isatty_r+0x20>
    200035ea:	c01c                	sw	a5,0(s0)
    200035ec:	60a2                	ld	ra,8(sp)
    200035ee:	6402                	ld	s0,0(sp)
    200035f0:	0141                	addi	sp,sp,16
    200035f2:	8082                	ret

00000000200035f4 <_malloc_usable_size_r>:
    200035f4:	ff85b503          	ld	a0,-8(a1)
    200035f8:	0005079b          	sext.w	a5,a0
    200035fc:	1561                	addi	a0,a0,-8
    200035fe:	0007d663          	bgez	a5,2000360a <_malloc_usable_size_r+0x16>
    20003602:	95aa                	add	a1,a1,a0
    20003604:	6188                	ld	a0,0(a1)
    20003606:	17e1                	addi	a5,a5,-8
    20003608:	953e                	add	a0,a0,a5
    2000360a:	8082                	ret

000000002000360c <_close>:
    2000360c:	1141                	addi	sp,sp,-16
    2000360e:	e406                	sd	ra,8(sp)
    20003610:	e022                	sd	s0,0(sp)
    20003612:	03900893          	li	a7,57
    20003616:	00000073          	ecall
    2000361a:	842a                	mv	s0,a0
    2000361c:	00055863          	bgez	a0,2000362c <_close+0x20>
    20003620:	4080043b          	negw	s0,s0
    20003624:	108000ef          	jal	ra,2000372c <__errno>
    20003628:	c100                	sw	s0,0(a0)
    2000362a:	547d                	li	s0,-1
    2000362c:	60a2                	ld	ra,8(sp)
    2000362e:	0004051b          	sext.w	a0,s0
    20003632:	6402                	ld	s0,0(sp)
    20003634:	0141                	addi	sp,sp,16
    20003636:	8082                	ret

0000000020003638 <_fstat>:
    20003638:	7135                	addi	sp,sp,-160
    2000363a:	e526                	sd	s1,136(sp)
    2000363c:	ed06                	sd	ra,152(sp)
    2000363e:	84ae                	mv	s1,a1
    20003640:	e922                	sd	s0,144(sp)
    20003642:	05000893          	li	a7,80
    20003646:	858a                	mv	a1,sp
    20003648:	00000073          	ecall
    2000364c:	842a                	mv	s0,a0
    2000364e:	00055863          	bgez	a0,2000365e <_fstat+0x26>
    20003652:	4080043b          	negw	s0,s0
    20003656:	0d6000ef          	jal	ra,2000372c <__errno>
    2000365a:	c100                	sw	s0,0(a0)
    2000365c:	547d                	li	s0,-1
    2000365e:	8526                	mv	a0,s1
    20003660:	858a                	mv	a1,sp
    20003662:	088000ef          	jal	ra,200036ea <_conv_stat>
    20003666:	60ea                	ld	ra,152(sp)
    20003668:	0004051b          	sext.w	a0,s0
    2000366c:	644a                	ld	s0,144(sp)
    2000366e:	64aa                	ld	s1,136(sp)
    20003670:	610d                	addi	sp,sp,160
    20003672:	8082                	ret

0000000020003674 <_isatty>:
    20003674:	7119                	addi	sp,sp,-128
    20003676:	002c                	addi	a1,sp,8
    20003678:	fc86                	sd	ra,120(sp)
    2000367a:	fbfff0ef          	jal	ra,20003638 <_fstat>
    2000367e:	57fd                	li	a5,-1
    20003680:	00f50963          	beq	a0,a5,20003692 <_isatty+0x1e>
    20003684:	4532                	lw	a0,12(sp)
    20003686:	40d5551b          	sraiw	a0,a0,0xd
    2000368a:	8905                	andi	a0,a0,1
    2000368c:	70e6                	ld	ra,120(sp)
    2000368e:	6109                	addi	sp,sp,128
    20003690:	8082                	ret
    20003692:	4501                	li	a0,0
    20003694:	bfe5                	j	2000368c <_isatty+0x18>

0000000020003696 <_lseek>:
    20003696:	1141                	addi	sp,sp,-16
    20003698:	e406                	sd	ra,8(sp)
    2000369a:	e022                	sd	s0,0(sp)
    2000369c:	03e00893          	li	a7,62
    200036a0:	00000073          	ecall
    200036a4:	842a                	mv	s0,a0
    200036a6:	00055863          	bgez	a0,200036b6 <_lseek+0x20>
    200036aa:	4080043b          	negw	s0,s0
    200036ae:	07e000ef          	jal	ra,2000372c <__errno>
    200036b2:	c100                	sw	s0,0(a0)
    200036b4:	547d                	li	s0,-1
    200036b6:	60a2                	ld	ra,8(sp)
    200036b8:	8522                	mv	a0,s0
    200036ba:	6402                	ld	s0,0(sp)
    200036bc:	0141                	addi	sp,sp,16
    200036be:	8082                	ret

00000000200036c0 <_read>:
    200036c0:	1141                	addi	sp,sp,-16
    200036c2:	e406                	sd	ra,8(sp)
    200036c4:	e022                	sd	s0,0(sp)
    200036c6:	03f00893          	li	a7,63
    200036ca:	00000073          	ecall
    200036ce:	842a                	mv	s0,a0
    200036d0:	00055863          	bgez	a0,200036e0 <_read+0x20>
    200036d4:	4080043b          	negw	s0,s0
    200036d8:	054000ef          	jal	ra,2000372c <__errno>
    200036dc:	c100                	sw	s0,0(a0)
    200036de:	547d                	li	s0,-1
    200036e0:	60a2                	ld	ra,8(sp)
    200036e2:	8522                	mv	a0,s0
    200036e4:	6402                	ld	s0,0(sp)
    200036e6:	0141                	addi	sp,sp,16
    200036e8:	8082                	ret

00000000200036ea <_conv_stat>:
    200036ea:	619c                	ld	a5,0(a1)
    200036ec:	00f51023          	sh	a5,0(a0)
    200036f0:	659c                	ld	a5,8(a1)
    200036f2:	00f51123          	sh	a5,2(a0)
    200036f6:	499c                	lw	a5,16(a1)
    200036f8:	c15c                	sw	a5,4(a0)
    200036fa:	49dc                	lw	a5,20(a1)
    200036fc:	00f51423          	sh	a5,8(a0)
    20003700:	4d9c                	lw	a5,24(a1)
    20003702:	00f51523          	sh	a5,10(a0)
    20003706:	4ddc                	lw	a5,28(a1)
    20003708:	00f51623          	sh	a5,12(a0)
    2000370c:	719c                	ld	a5,32(a1)
    2000370e:	00f51723          	sh	a5,14(a0)
    20003712:	799c                	ld	a5,48(a1)
    20003714:	e91c                	sd	a5,16(a0)
    20003716:	61bc                	ld	a5,64(a1)
    20003718:	e93c                	sd	a5,80(a0)
    2000371a:	5d9c                	lw	a5,56(a1)
    2000371c:	e53c                	sd	a5,72(a0)
    2000371e:	65bc                	ld	a5,72(a1)
    20003720:	ed1c                	sd	a5,24(a0)
    20003722:	6dbc                	ld	a5,88(a1)
    20003724:	f51c                	sd	a5,40(a0)
    20003726:	75bc                	ld	a5,104(a1)
    20003728:	fd1c                	sd	a5,56(a0)
    2000372a:	8082                	ret

000000002000372c <__errno>:
    2000372c:	e7ffd517          	auipc	a0,0xe7ffd
    20003730:	98c53503          	ld	a0,-1652(a0) # 80000b8 <_impure_ptr>
    20003734:	8082                	ret
