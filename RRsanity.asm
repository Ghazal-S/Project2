
_RRsanity:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
}


int
main(void)
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	pushl  -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	51                   	push   %ecx
   e:	83 ec 04             	sub    $0x4,%esp
  RRsanity();
  11:	e8 4a 00 00 00       	call   60 <RRsanity>
  exit();
  16:	e8 47 03 00 00       	call   362 <exit>
  1b:	66 90                	xchg   %ax,%ax
  1d:	66 90                	xchg   %ax,%ax
  1f:	90                   	nop

00000020 <foo>:
{
  20:	55                   	push   %ebp
  21:	89 e5                	mov    %esp,%ebp
  23:	53                   	push   %ebx
  for (i=0;i<1000;i++){
  24:	31 db                	xor    %ebx,%ebx
{
  26:	83 ec 04             	sub    $0x4,%esp
  29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
	printf(2, "Child %d prints for the %d time \n",getpid(),i);
  30:	e8 bd 03 00 00       	call   3f2 <getpid>
  35:	53                   	push   %ebx
  36:	50                   	push   %eax
  for (i=0;i<1000;i++){
  37:	83 c3 01             	add    $0x1,%ebx
	printf(2, "Child %d prints for the %d time \n",getpid(),i);
  3a:	68 18 08 00 00       	push   $0x818
  3f:	6a 02                	push   $0x2
  41:	e8 7a 04 00 00       	call   4c0 <printf>
  for (i=0;i<1000;i++){
  46:	83 c4 10             	add    $0x10,%esp
  49:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
  4f:	75 df                	jne    30 <foo+0x10>
}
  51:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  54:	c9                   	leave  
  55:	c3                   	ret    
  56:	8d 76 00             	lea    0x0(%esi),%esi
  59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000060 <RRsanity>:
{
  60:	55                   	push   %ebp
  61:	89 e5                	mov    %esp,%ebp
  63:	57                   	push   %edi
  64:	56                   	push   %esi
  65:	53                   	push   %ebx
  printf(1, "RRsanity\n");
  66:	bb 0a 00 00 00       	mov    $0xa,%ebx
{
  6b:	83 ec 64             	sub    $0x64,%esp
  printf(1, "RRsanity\n");
  6e:	68 84 08 00 00       	push   $0x884
  73:	6a 01                	push   $0x1
  75:	e8 46 04 00 00       	call   4c0 <printf>
  7a:	83 c4 10             	add    $0x10,%esp
  7d:	8d 76 00             	lea    0x0(%esi),%esi
    pid = fork ();
  80:	e8 d5 02 00 00       	call   35a <fork>
    if ( pid < 0 ) {
  85:	85 c0                	test   %eax,%eax
  87:	78 56                	js     df <RRsanity+0x7f>
    } else if (pid == 0) {
  89:	74 6e                	je     f9 <RRsanity+0x99>
  for ( k = 0; k < numberOfForks; k++ ) {
  8b:	83 eb 01             	sub    $0x1,%ebx
  8e:	75 f0                	jne    80 <RRsanity+0x20>
while(wait() > 0){
  90:	e8 d5 02 00 00       	call   36a <wait>
  95:	85 c0                	test   %eax,%eax
  97:	7e 3e                	jle    d7 <RRsanity+0x77>
  99:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printf(2, "PID : %d - Wait time : %d - Running time : %d - Turn Around time : %d.\n", getPerformanceData(&wTime[k], &rTime[k]), wTime[k], rTime[k], rTime[k] + wTime[k]);
  a0:	8d 45 e8             	lea    -0x18(%ebp),%eax
  a3:	83 ec 08             	sub    $0x8,%esp
  a6:	8b 75 e8             	mov    -0x18(%ebp),%esi
  a9:	8b 5d c0             	mov    -0x40(%ebp),%ebx
  ac:	50                   	push   %eax
  ad:	8d 45 c0             	lea    -0x40(%ebp),%eax
  b0:	50                   	push   %eax
  b1:	8d 3c 1e             	lea    (%esi,%ebx,1),%edi
  b4:	e8 b9 02 00 00       	call   372 <getPerformanceData>
  b9:	5a                   	pop    %edx
  ba:	59                   	pop    %ecx
  bb:	57                   	push   %edi
  bc:	56                   	push   %esi
  bd:	53                   	push   %ebx
  be:	50                   	push   %eax
  bf:	68 3c 08 00 00       	push   $0x83c
  c4:	6a 02                	push   $0x2
  c6:	e8 f5 03 00 00       	call   4c0 <printf>
  cb:	83 c4 20             	add    $0x20,%esp
while(wait() > 0){
  ce:	e8 97 02 00 00       	call   36a <wait>
  d3:	85 c0                	test   %eax,%eax
  d5:	7f c9                	jg     a0 <RRsanity+0x40>
}
  d7:	8d 65 f4             	lea    -0xc(%ebp),%esp
  da:	5b                   	pop    %ebx
  db:	5e                   	pop    %esi
  dc:	5f                   	pop    %edi
  dd:	5d                   	pop    %ebp
  de:	c3                   	ret    
      printf(1, "%d failed in fork!\n", getpid());
  df:	e8 0e 03 00 00       	call   3f2 <getpid>
  e4:	83 ec 04             	sub    $0x4,%esp
  e7:	50                   	push   %eax
  e8:	68 8e 08 00 00       	push   $0x88e
  ed:	6a 01                	push   $0x1
  ef:	e8 cc 03 00 00       	call   4c0 <printf>
      exit();
  f4:	e8 69 02 00 00       	call   362 <exit>
      foo();
  f9:	e8 22 ff ff ff       	call   20 <foo>
      exit();
  fe:	e8 5f 02 00 00       	call   362 <exit>
 103:	66 90                	xchg   %ax,%ax
 105:	66 90                	xchg   %ax,%ax
 107:	66 90                	xchg   %ax,%ax
 109:	66 90                	xchg   %ax,%ax
 10b:	66 90                	xchg   %ax,%ax
 10d:	66 90                	xchg   %ax,%ax
 10f:	90                   	nop

00000110 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 110:	55                   	push   %ebp
 111:	89 e5                	mov    %esp,%ebp
 113:	53                   	push   %ebx
 114:	8b 45 08             	mov    0x8(%ebp),%eax
 117:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 11a:	89 c2                	mov    %eax,%edx
 11c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 120:	83 c1 01             	add    $0x1,%ecx
 123:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 127:	83 c2 01             	add    $0x1,%edx
 12a:	84 db                	test   %bl,%bl
 12c:	88 5a ff             	mov    %bl,-0x1(%edx)
 12f:	75 ef                	jne    120 <strcpy+0x10>
    ;
  return os;
}
 131:	5b                   	pop    %ebx
 132:	5d                   	pop    %ebp
 133:	c3                   	ret    
 134:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 13a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000140 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 140:	55                   	push   %ebp
 141:	89 e5                	mov    %esp,%ebp
 143:	53                   	push   %ebx
 144:	8b 55 08             	mov    0x8(%ebp),%edx
 147:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 14a:	0f b6 02             	movzbl (%edx),%eax
 14d:	0f b6 19             	movzbl (%ecx),%ebx
 150:	84 c0                	test   %al,%al
 152:	75 1c                	jne    170 <strcmp+0x30>
 154:	eb 2a                	jmp    180 <strcmp+0x40>
 156:	8d 76 00             	lea    0x0(%esi),%esi
 159:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 160:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 163:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 166:	83 c1 01             	add    $0x1,%ecx
 169:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
 16c:	84 c0                	test   %al,%al
 16e:	74 10                	je     180 <strcmp+0x40>
 170:	38 d8                	cmp    %bl,%al
 172:	74 ec                	je     160 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
 174:	29 d8                	sub    %ebx,%eax
}
 176:	5b                   	pop    %ebx
 177:	5d                   	pop    %ebp
 178:	c3                   	ret    
 179:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 180:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 182:	29 d8                	sub    %ebx,%eax
}
 184:	5b                   	pop    %ebx
 185:	5d                   	pop    %ebp
 186:	c3                   	ret    
 187:	89 f6                	mov    %esi,%esi
 189:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000190 <strlen>:

uint
strlen(const char *s)
{
 190:	55                   	push   %ebp
 191:	89 e5                	mov    %esp,%ebp
 193:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 196:	80 39 00             	cmpb   $0x0,(%ecx)
 199:	74 15                	je     1b0 <strlen+0x20>
 19b:	31 d2                	xor    %edx,%edx
 19d:	8d 76 00             	lea    0x0(%esi),%esi
 1a0:	83 c2 01             	add    $0x1,%edx
 1a3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 1a7:	89 d0                	mov    %edx,%eax
 1a9:	75 f5                	jne    1a0 <strlen+0x10>
    ;
  return n;
}
 1ab:	5d                   	pop    %ebp
 1ac:	c3                   	ret    
 1ad:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
 1b0:	31 c0                	xor    %eax,%eax
}
 1b2:	5d                   	pop    %ebp
 1b3:	c3                   	ret    
 1b4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 1ba:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000001c0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 1c0:	55                   	push   %ebp
 1c1:	89 e5                	mov    %esp,%ebp
 1c3:	57                   	push   %edi
 1c4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 1c7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 1ca:	8b 45 0c             	mov    0xc(%ebp),%eax
 1cd:	89 d7                	mov    %edx,%edi
 1cf:	fc                   	cld    
 1d0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 1d2:	89 d0                	mov    %edx,%eax
 1d4:	5f                   	pop    %edi
 1d5:	5d                   	pop    %ebp
 1d6:	c3                   	ret    
 1d7:	89 f6                	mov    %esi,%esi
 1d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000001e0 <strchr>:

char*
strchr(const char *s, char c)
{
 1e0:	55                   	push   %ebp
 1e1:	89 e5                	mov    %esp,%ebp
 1e3:	53                   	push   %ebx
 1e4:	8b 45 08             	mov    0x8(%ebp),%eax
 1e7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 1ea:	0f b6 10             	movzbl (%eax),%edx
 1ed:	84 d2                	test   %dl,%dl
 1ef:	74 1d                	je     20e <strchr+0x2e>
    if(*s == c)
 1f1:	38 d3                	cmp    %dl,%bl
 1f3:	89 d9                	mov    %ebx,%ecx
 1f5:	75 0d                	jne    204 <strchr+0x24>
 1f7:	eb 17                	jmp    210 <strchr+0x30>
 1f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 200:	38 ca                	cmp    %cl,%dl
 202:	74 0c                	je     210 <strchr+0x30>
  for(; *s; s++)
 204:	83 c0 01             	add    $0x1,%eax
 207:	0f b6 10             	movzbl (%eax),%edx
 20a:	84 d2                	test   %dl,%dl
 20c:	75 f2                	jne    200 <strchr+0x20>
      return (char*)s;
  return 0;
 20e:	31 c0                	xor    %eax,%eax
}
 210:	5b                   	pop    %ebx
 211:	5d                   	pop    %ebp
 212:	c3                   	ret    
 213:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 219:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000220 <gets>:

char*
gets(char *buf, int max)
{
 220:	55                   	push   %ebp
 221:	89 e5                	mov    %esp,%ebp
 223:	57                   	push   %edi
 224:	56                   	push   %esi
 225:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 226:	31 f6                	xor    %esi,%esi
 228:	89 f3                	mov    %esi,%ebx
{
 22a:	83 ec 1c             	sub    $0x1c,%esp
 22d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
 230:	eb 2f                	jmp    261 <gets+0x41>
 232:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
 238:	8d 45 e7             	lea    -0x19(%ebp),%eax
 23b:	83 ec 04             	sub    $0x4,%esp
 23e:	6a 01                	push   $0x1
 240:	50                   	push   %eax
 241:	6a 00                	push   $0x0
 243:	e8 42 01 00 00       	call   38a <read>
    if(cc < 1)
 248:	83 c4 10             	add    $0x10,%esp
 24b:	85 c0                	test   %eax,%eax
 24d:	7e 1c                	jle    26b <gets+0x4b>
      break;
    buf[i++] = c;
 24f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 253:	83 c7 01             	add    $0x1,%edi
 256:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
 259:	3c 0a                	cmp    $0xa,%al
 25b:	74 23                	je     280 <gets+0x60>
 25d:	3c 0d                	cmp    $0xd,%al
 25f:	74 1f                	je     280 <gets+0x60>
  for(i=0; i+1 < max; ){
 261:	83 c3 01             	add    $0x1,%ebx
 264:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 267:	89 fe                	mov    %edi,%esi
 269:	7c cd                	jl     238 <gets+0x18>
 26b:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
 26d:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
 270:	c6 03 00             	movb   $0x0,(%ebx)
}
 273:	8d 65 f4             	lea    -0xc(%ebp),%esp
 276:	5b                   	pop    %ebx
 277:	5e                   	pop    %esi
 278:	5f                   	pop    %edi
 279:	5d                   	pop    %ebp
 27a:	c3                   	ret    
 27b:	90                   	nop
 27c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 280:	8b 75 08             	mov    0x8(%ebp),%esi
 283:	8b 45 08             	mov    0x8(%ebp),%eax
 286:	01 de                	add    %ebx,%esi
 288:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
 28a:	c6 03 00             	movb   $0x0,(%ebx)
}
 28d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 290:	5b                   	pop    %ebx
 291:	5e                   	pop    %esi
 292:	5f                   	pop    %edi
 293:	5d                   	pop    %ebp
 294:	c3                   	ret    
 295:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 299:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000002a0 <stat>:

int
stat(const char *n, struct stat *st)
{
 2a0:	55                   	push   %ebp
 2a1:	89 e5                	mov    %esp,%ebp
 2a3:	56                   	push   %esi
 2a4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 2a5:	83 ec 08             	sub    $0x8,%esp
 2a8:	6a 00                	push   $0x0
 2aa:	ff 75 08             	pushl  0x8(%ebp)
 2ad:	e8 00 01 00 00       	call   3b2 <open>
  if(fd < 0)
 2b2:	83 c4 10             	add    $0x10,%esp
 2b5:	85 c0                	test   %eax,%eax
 2b7:	78 27                	js     2e0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 2b9:	83 ec 08             	sub    $0x8,%esp
 2bc:	ff 75 0c             	pushl  0xc(%ebp)
 2bf:	89 c3                	mov    %eax,%ebx
 2c1:	50                   	push   %eax
 2c2:	e8 03 01 00 00       	call   3ca <fstat>
  close(fd);
 2c7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 2ca:	89 c6                	mov    %eax,%esi
  close(fd);
 2cc:	e8 c9 00 00 00       	call   39a <close>
  return r;
 2d1:	83 c4 10             	add    $0x10,%esp
}
 2d4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 2d7:	89 f0                	mov    %esi,%eax
 2d9:	5b                   	pop    %ebx
 2da:	5e                   	pop    %esi
 2db:	5d                   	pop    %ebp
 2dc:	c3                   	ret    
 2dd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 2e0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 2e5:	eb ed                	jmp    2d4 <stat+0x34>
 2e7:	89 f6                	mov    %esi,%esi
 2e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000002f0 <atoi>:

int
atoi(const char *s)
{
 2f0:	55                   	push   %ebp
 2f1:	89 e5                	mov    %esp,%ebp
 2f3:	53                   	push   %ebx
 2f4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 2f7:	0f be 11             	movsbl (%ecx),%edx
 2fa:	8d 42 d0             	lea    -0x30(%edx),%eax
 2fd:	3c 09                	cmp    $0x9,%al
  n = 0;
 2ff:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 304:	77 1f                	ja     325 <atoi+0x35>
 306:	8d 76 00             	lea    0x0(%esi),%esi
 309:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 310:	8d 04 80             	lea    (%eax,%eax,4),%eax
 313:	83 c1 01             	add    $0x1,%ecx
 316:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
 31a:	0f be 11             	movsbl (%ecx),%edx
 31d:	8d 5a d0             	lea    -0x30(%edx),%ebx
 320:	80 fb 09             	cmp    $0x9,%bl
 323:	76 eb                	jbe    310 <atoi+0x20>
  return n;
}
 325:	5b                   	pop    %ebx
 326:	5d                   	pop    %ebp
 327:	c3                   	ret    
 328:	90                   	nop
 329:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000330 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 330:	55                   	push   %ebp
 331:	89 e5                	mov    %esp,%ebp
 333:	56                   	push   %esi
 334:	53                   	push   %ebx
 335:	8b 5d 10             	mov    0x10(%ebp),%ebx
 338:	8b 45 08             	mov    0x8(%ebp),%eax
 33b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 33e:	85 db                	test   %ebx,%ebx
 340:	7e 14                	jle    356 <memmove+0x26>
 342:	31 d2                	xor    %edx,%edx
 344:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 348:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 34c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 34f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
 352:	39 d3                	cmp    %edx,%ebx
 354:	75 f2                	jne    348 <memmove+0x18>
  return vdst;
}
 356:	5b                   	pop    %ebx
 357:	5e                   	pop    %esi
 358:	5d                   	pop    %ebp
 359:	c3                   	ret    

0000035a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 35a:	b8 01 00 00 00       	mov    $0x1,%eax
 35f:	cd 40                	int    $0x40
 361:	c3                   	ret    

00000362 <exit>:
SYSCALL(exit)
 362:	b8 02 00 00 00       	mov    $0x2,%eax
 367:	cd 40                	int    $0x40
 369:	c3                   	ret    

0000036a <wait>:
SYSCALL(wait)
 36a:	b8 03 00 00 00       	mov    $0x3,%eax
 36f:	cd 40                	int    $0x40
 371:	c3                   	ret    

00000372 <getPerformanceData>:
SYSCALL(getPerformanceData) // calculates process run time and wait time
 372:	b8 16 00 00 00       	mov    $0x16,%eax
 377:	cd 40                	int    $0x40
 379:	c3                   	ret    

0000037a <nice>:
SYSCALL(nice)
 37a:	b8 17 00 00 00       	mov    $0x17,%eax
 37f:	cd 40                	int    $0x40
 381:	c3                   	ret    

00000382 <pipe>:
SYSCALL(pipe)
 382:	b8 04 00 00 00       	mov    $0x4,%eax
 387:	cd 40                	int    $0x40
 389:	c3                   	ret    

0000038a <read>:
SYSCALL(read)
 38a:	b8 05 00 00 00       	mov    $0x5,%eax
 38f:	cd 40                	int    $0x40
 391:	c3                   	ret    

00000392 <write>:
SYSCALL(write)
 392:	b8 10 00 00 00       	mov    $0x10,%eax
 397:	cd 40                	int    $0x40
 399:	c3                   	ret    

0000039a <close>:
SYSCALL(close)
 39a:	b8 15 00 00 00       	mov    $0x15,%eax
 39f:	cd 40                	int    $0x40
 3a1:	c3                   	ret    

000003a2 <kill>:
SYSCALL(kill)
 3a2:	b8 06 00 00 00       	mov    $0x6,%eax
 3a7:	cd 40                	int    $0x40
 3a9:	c3                   	ret    

000003aa <exec>:
SYSCALL(exec)
 3aa:	b8 07 00 00 00       	mov    $0x7,%eax
 3af:	cd 40                	int    $0x40
 3b1:	c3                   	ret    

000003b2 <open>:
SYSCALL(open)
 3b2:	b8 0f 00 00 00       	mov    $0xf,%eax
 3b7:	cd 40                	int    $0x40
 3b9:	c3                   	ret    

000003ba <mknod>:
SYSCALL(mknod)
 3ba:	b8 11 00 00 00       	mov    $0x11,%eax
 3bf:	cd 40                	int    $0x40
 3c1:	c3                   	ret    

000003c2 <unlink>:
SYSCALL(unlink)
 3c2:	b8 12 00 00 00       	mov    $0x12,%eax
 3c7:	cd 40                	int    $0x40
 3c9:	c3                   	ret    

000003ca <fstat>:
SYSCALL(fstat)
 3ca:	b8 08 00 00 00       	mov    $0x8,%eax
 3cf:	cd 40                	int    $0x40
 3d1:	c3                   	ret    

000003d2 <link>:
SYSCALL(link)
 3d2:	b8 13 00 00 00       	mov    $0x13,%eax
 3d7:	cd 40                	int    $0x40
 3d9:	c3                   	ret    

000003da <mkdir>:
SYSCALL(mkdir)
 3da:	b8 14 00 00 00       	mov    $0x14,%eax
 3df:	cd 40                	int    $0x40
 3e1:	c3                   	ret    

000003e2 <chdir>:
SYSCALL(chdir)
 3e2:	b8 09 00 00 00       	mov    $0x9,%eax
 3e7:	cd 40                	int    $0x40
 3e9:	c3                   	ret    

000003ea <dup>:
SYSCALL(dup)
 3ea:	b8 0a 00 00 00       	mov    $0xa,%eax
 3ef:	cd 40                	int    $0x40
 3f1:	c3                   	ret    

000003f2 <getpid>:
SYSCALL(getpid)
 3f2:	b8 0b 00 00 00       	mov    $0xb,%eax
 3f7:	cd 40                	int    $0x40
 3f9:	c3                   	ret    

000003fa <getppid>:
SYSCALL(getppid)
 3fa:	b8 18 00 00 00       	mov    $0x18,%eax
 3ff:	cd 40                	int    $0x40
 401:	c3                   	ret    

00000402 <sbrk>:
SYSCALL(sbrk)
 402:	b8 0c 00 00 00       	mov    $0xc,%eax
 407:	cd 40                	int    $0x40
 409:	c3                   	ret    

0000040a <sleep>:
SYSCALL(sleep)
 40a:	b8 0d 00 00 00       	mov    $0xd,%eax
 40f:	cd 40                	int    $0x40
 411:	c3                   	ret    

00000412 <uptime>:
SYSCALL(uptime)
 412:	b8 0e 00 00 00       	mov    $0xe,%eax
 417:	cd 40                	int    $0x40
 419:	c3                   	ret    
 41a:	66 90                	xchg   %ax,%ax
 41c:	66 90                	xchg   %ax,%ax
 41e:	66 90                	xchg   %ax,%ax

00000420 <printint>:
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	57                   	push   %edi
 424:	56                   	push   %esi
 425:	53                   	push   %ebx
 426:	83 ec 3c             	sub    $0x3c,%esp
 429:	85 d2                	test   %edx,%edx
 42b:	89 45 c0             	mov    %eax,-0x40(%ebp)
 42e:	89 d0                	mov    %edx,%eax
 430:	79 76                	jns    4a8 <printint+0x88>
 432:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 436:	74 70                	je     4a8 <printint+0x88>
 438:	f7 d8                	neg    %eax
 43a:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
 441:	31 f6                	xor    %esi,%esi
 443:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 446:	eb 0a                	jmp    452 <printint+0x32>
 448:	90                   	nop
 449:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 450:	89 fe                	mov    %edi,%esi
 452:	31 d2                	xor    %edx,%edx
 454:	8d 7e 01             	lea    0x1(%esi),%edi
 457:	f7 f1                	div    %ecx
 459:	0f b6 92 ac 08 00 00 	movzbl 0x8ac(%edx),%edx
 460:	85 c0                	test   %eax,%eax
 462:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
 465:	75 e9                	jne    450 <printint+0x30>
 467:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 46a:	85 c0                	test   %eax,%eax
 46c:	74 08                	je     476 <printint+0x56>
 46e:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
 473:	8d 7e 02             	lea    0x2(%esi),%edi
 476:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
 47a:	8b 7d c0             	mov    -0x40(%ebp),%edi
 47d:	8d 76 00             	lea    0x0(%esi),%esi
 480:	0f b6 06             	movzbl (%esi),%eax
 483:	83 ec 04             	sub    $0x4,%esp
 486:	83 ee 01             	sub    $0x1,%esi
 489:	6a 01                	push   $0x1
 48b:	53                   	push   %ebx
 48c:	57                   	push   %edi
 48d:	88 45 d7             	mov    %al,-0x29(%ebp)
 490:	e8 fd fe ff ff       	call   392 <write>
 495:	83 c4 10             	add    $0x10,%esp
 498:	39 de                	cmp    %ebx,%esi
 49a:	75 e4                	jne    480 <printint+0x60>
 49c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 49f:	5b                   	pop    %ebx
 4a0:	5e                   	pop    %esi
 4a1:	5f                   	pop    %edi
 4a2:	5d                   	pop    %ebp
 4a3:	c3                   	ret    
 4a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4a8:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 4af:	eb 90                	jmp    441 <printint+0x21>
 4b1:	eb 0d                	jmp    4c0 <printf>
 4b3:	90                   	nop
 4b4:	90                   	nop
 4b5:	90                   	nop
 4b6:	90                   	nop
 4b7:	90                   	nop
 4b8:	90                   	nop
 4b9:	90                   	nop
 4ba:	90                   	nop
 4bb:	90                   	nop
 4bc:	90                   	nop
 4bd:	90                   	nop
 4be:	90                   	nop
 4bf:	90                   	nop

000004c0 <printf>:
 4c0:	55                   	push   %ebp
 4c1:	89 e5                	mov    %esp,%ebp
 4c3:	57                   	push   %edi
 4c4:	56                   	push   %esi
 4c5:	53                   	push   %ebx
 4c6:	83 ec 2c             	sub    $0x2c,%esp
 4c9:	8b 75 0c             	mov    0xc(%ebp),%esi
 4cc:	0f b6 1e             	movzbl (%esi),%ebx
 4cf:	84 db                	test   %bl,%bl
 4d1:	0f 84 b3 00 00 00    	je     58a <printf+0xca>
 4d7:	8d 45 10             	lea    0x10(%ebp),%eax
 4da:	83 c6 01             	add    $0x1,%esi
 4dd:	31 ff                	xor    %edi,%edi
 4df:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 4e2:	eb 2f                	jmp    513 <printf+0x53>
 4e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4e8:	83 f8 25             	cmp    $0x25,%eax
 4eb:	0f 84 a7 00 00 00    	je     598 <printf+0xd8>
 4f1:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 4f4:	83 ec 04             	sub    $0x4,%esp
 4f7:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 4fa:	6a 01                	push   $0x1
 4fc:	50                   	push   %eax
 4fd:	ff 75 08             	pushl  0x8(%ebp)
 500:	e8 8d fe ff ff       	call   392 <write>
 505:	83 c4 10             	add    $0x10,%esp
 508:	83 c6 01             	add    $0x1,%esi
 50b:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 50f:	84 db                	test   %bl,%bl
 511:	74 77                	je     58a <printf+0xca>
 513:	85 ff                	test   %edi,%edi
 515:	0f be cb             	movsbl %bl,%ecx
 518:	0f b6 c3             	movzbl %bl,%eax
 51b:	74 cb                	je     4e8 <printf+0x28>
 51d:	83 ff 25             	cmp    $0x25,%edi
 520:	75 e6                	jne    508 <printf+0x48>
 522:	83 f8 64             	cmp    $0x64,%eax
 525:	0f 84 05 01 00 00    	je     630 <printf+0x170>
 52b:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 531:	83 f9 70             	cmp    $0x70,%ecx
 534:	74 72                	je     5a8 <printf+0xe8>
 536:	83 f8 73             	cmp    $0x73,%eax
 539:	0f 84 99 00 00 00    	je     5d8 <printf+0x118>
 53f:	83 f8 63             	cmp    $0x63,%eax
 542:	0f 84 08 01 00 00    	je     650 <printf+0x190>
 548:	83 f8 25             	cmp    $0x25,%eax
 54b:	0f 84 ef 00 00 00    	je     640 <printf+0x180>
 551:	8d 45 e7             	lea    -0x19(%ebp),%eax
 554:	83 ec 04             	sub    $0x4,%esp
 557:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 55b:	6a 01                	push   $0x1
 55d:	50                   	push   %eax
 55e:	ff 75 08             	pushl  0x8(%ebp)
 561:	e8 2c fe ff ff       	call   392 <write>
 566:	83 c4 0c             	add    $0xc,%esp
 569:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 56c:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 56f:	6a 01                	push   $0x1
 571:	50                   	push   %eax
 572:	ff 75 08             	pushl  0x8(%ebp)
 575:	83 c6 01             	add    $0x1,%esi
 578:	31 ff                	xor    %edi,%edi
 57a:	e8 13 fe ff ff       	call   392 <write>
 57f:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 583:	83 c4 10             	add    $0x10,%esp
 586:	84 db                	test   %bl,%bl
 588:	75 89                	jne    513 <printf+0x53>
 58a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 58d:	5b                   	pop    %ebx
 58e:	5e                   	pop    %esi
 58f:	5f                   	pop    %edi
 590:	5d                   	pop    %ebp
 591:	c3                   	ret    
 592:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 598:	bf 25 00 00 00       	mov    $0x25,%edi
 59d:	e9 66 ff ff ff       	jmp    508 <printf+0x48>
 5a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 5a8:	83 ec 0c             	sub    $0xc,%esp
 5ab:	b9 10 00 00 00       	mov    $0x10,%ecx
 5b0:	6a 00                	push   $0x0
 5b2:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 5b5:	8b 45 08             	mov    0x8(%ebp),%eax
 5b8:	8b 17                	mov    (%edi),%edx
 5ba:	e8 61 fe ff ff       	call   420 <printint>
 5bf:	89 f8                	mov    %edi,%eax
 5c1:	83 c4 10             	add    $0x10,%esp
 5c4:	31 ff                	xor    %edi,%edi
 5c6:	83 c0 04             	add    $0x4,%eax
 5c9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 5cc:	e9 37 ff ff ff       	jmp    508 <printf+0x48>
 5d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5d8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 5db:	8b 08                	mov    (%eax),%ecx
 5dd:	83 c0 04             	add    $0x4,%eax
 5e0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 5e3:	85 c9                	test   %ecx,%ecx
 5e5:	0f 84 8e 00 00 00    	je     679 <printf+0x1b9>
 5eb:	0f b6 01             	movzbl (%ecx),%eax
 5ee:	31 ff                	xor    %edi,%edi
 5f0:	89 cb                	mov    %ecx,%ebx
 5f2:	84 c0                	test   %al,%al
 5f4:	0f 84 0e ff ff ff    	je     508 <printf+0x48>
 5fa:	89 75 d0             	mov    %esi,-0x30(%ebp)
 5fd:	89 de                	mov    %ebx,%esi
 5ff:	8b 5d 08             	mov    0x8(%ebp),%ebx
 602:	8d 7d e3             	lea    -0x1d(%ebp),%edi
 605:	8d 76 00             	lea    0x0(%esi),%esi
 608:	83 ec 04             	sub    $0x4,%esp
 60b:	83 c6 01             	add    $0x1,%esi
 60e:	88 45 e3             	mov    %al,-0x1d(%ebp)
 611:	6a 01                	push   $0x1
 613:	57                   	push   %edi
 614:	53                   	push   %ebx
 615:	e8 78 fd ff ff       	call   392 <write>
 61a:	0f b6 06             	movzbl (%esi),%eax
 61d:	83 c4 10             	add    $0x10,%esp
 620:	84 c0                	test   %al,%al
 622:	75 e4                	jne    608 <printf+0x148>
 624:	8b 75 d0             	mov    -0x30(%ebp),%esi
 627:	31 ff                	xor    %edi,%edi
 629:	e9 da fe ff ff       	jmp    508 <printf+0x48>
 62e:	66 90                	xchg   %ax,%ax
 630:	83 ec 0c             	sub    $0xc,%esp
 633:	b9 0a 00 00 00       	mov    $0xa,%ecx
 638:	6a 01                	push   $0x1
 63a:	e9 73 ff ff ff       	jmp    5b2 <printf+0xf2>
 63f:	90                   	nop
 640:	83 ec 04             	sub    $0x4,%esp
 643:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 646:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 649:	6a 01                	push   $0x1
 64b:	e9 21 ff ff ff       	jmp    571 <printf+0xb1>
 650:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 653:	83 ec 04             	sub    $0x4,%esp
 656:	8b 07                	mov    (%edi),%eax
 658:	6a 01                	push   $0x1
 65a:	83 c7 04             	add    $0x4,%edi
 65d:	88 45 e4             	mov    %al,-0x1c(%ebp)
 660:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 663:	50                   	push   %eax
 664:	ff 75 08             	pushl  0x8(%ebp)
 667:	e8 26 fd ff ff       	call   392 <write>
 66c:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 66f:	83 c4 10             	add    $0x10,%esp
 672:	31 ff                	xor    %edi,%edi
 674:	e9 8f fe ff ff       	jmp    508 <printf+0x48>
 679:	bb a2 08 00 00       	mov    $0x8a2,%ebx
 67e:	b8 28 00 00 00       	mov    $0x28,%eax
 683:	e9 72 ff ff ff       	jmp    5fa <printf+0x13a>
 688:	66 90                	xchg   %ax,%ax
 68a:	66 90                	xchg   %ax,%ax
 68c:	66 90                	xchg   %ax,%ax
 68e:	66 90                	xchg   %ax,%ax

00000690 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 690:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 691:	a1 a4 0b 00 00       	mov    0xba4,%eax
{
 696:	89 e5                	mov    %esp,%ebp
 698:	57                   	push   %edi
 699:	56                   	push   %esi
 69a:	53                   	push   %ebx
 69b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 69e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 6a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6a8:	39 c8                	cmp    %ecx,%eax
 6aa:	8b 10                	mov    (%eax),%edx
 6ac:	73 32                	jae    6e0 <free+0x50>
 6ae:	39 d1                	cmp    %edx,%ecx
 6b0:	72 04                	jb     6b6 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 6b2:	39 d0                	cmp    %edx,%eax
 6b4:	72 32                	jb     6e8 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
 6b6:	8b 73 fc             	mov    -0x4(%ebx),%esi
 6b9:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 6bc:	39 fa                	cmp    %edi,%edx
 6be:	74 30                	je     6f0 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 6c0:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 6c3:	8b 50 04             	mov    0x4(%eax),%edx
 6c6:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 6c9:	39 f1                	cmp    %esi,%ecx
 6cb:	74 3a                	je     707 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 6cd:	89 08                	mov    %ecx,(%eax)
  freep = p;
 6cf:	a3 a4 0b 00 00       	mov    %eax,0xba4
}
 6d4:	5b                   	pop    %ebx
 6d5:	5e                   	pop    %esi
 6d6:	5f                   	pop    %edi
 6d7:	5d                   	pop    %ebp
 6d8:	c3                   	ret    
 6d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 6e0:	39 d0                	cmp    %edx,%eax
 6e2:	72 04                	jb     6e8 <free+0x58>
 6e4:	39 d1                	cmp    %edx,%ecx
 6e6:	72 ce                	jb     6b6 <free+0x26>
{
 6e8:	89 d0                	mov    %edx,%eax
 6ea:	eb bc                	jmp    6a8 <free+0x18>
 6ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 6f0:	03 72 04             	add    0x4(%edx),%esi
 6f3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 6f6:	8b 10                	mov    (%eax),%edx
 6f8:	8b 12                	mov    (%edx),%edx
 6fa:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 6fd:	8b 50 04             	mov    0x4(%eax),%edx
 700:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 703:	39 f1                	cmp    %esi,%ecx
 705:	75 c6                	jne    6cd <free+0x3d>
    p->s.size += bp->s.size;
 707:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 70a:	a3 a4 0b 00 00       	mov    %eax,0xba4
    p->s.size += bp->s.size;
 70f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 712:	8b 53 f8             	mov    -0x8(%ebx),%edx
 715:	89 10                	mov    %edx,(%eax)
}
 717:	5b                   	pop    %ebx
 718:	5e                   	pop    %esi
 719:	5f                   	pop    %edi
 71a:	5d                   	pop    %ebp
 71b:	c3                   	ret    
 71c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000720 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 720:	55                   	push   %ebp
 721:	89 e5                	mov    %esp,%ebp
 723:	57                   	push   %edi
 724:	56                   	push   %esi
 725:	53                   	push   %ebx
 726:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 729:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 72c:	8b 15 a4 0b 00 00    	mov    0xba4,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 732:	8d 78 07             	lea    0x7(%eax),%edi
 735:	c1 ef 03             	shr    $0x3,%edi
 738:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 73b:	85 d2                	test   %edx,%edx
 73d:	0f 84 9d 00 00 00    	je     7e0 <malloc+0xc0>
 743:	8b 02                	mov    (%edx),%eax
 745:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 748:	39 cf                	cmp    %ecx,%edi
 74a:	76 6c                	jbe    7b8 <malloc+0x98>
 74c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 752:	bb 00 10 00 00       	mov    $0x1000,%ebx
 757:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 75a:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 761:	eb 0e                	jmp    771 <malloc+0x51>
 763:	90                   	nop
 764:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 768:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 76a:	8b 48 04             	mov    0x4(%eax),%ecx
 76d:	39 f9                	cmp    %edi,%ecx
 76f:	73 47                	jae    7b8 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 771:	39 05 a4 0b 00 00    	cmp    %eax,0xba4
 777:	89 c2                	mov    %eax,%edx
 779:	75 ed                	jne    768 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 77b:	83 ec 0c             	sub    $0xc,%esp
 77e:	56                   	push   %esi
 77f:	e8 7e fc ff ff       	call   402 <sbrk>
  if(p == (char*)-1)
 784:	83 c4 10             	add    $0x10,%esp
 787:	83 f8 ff             	cmp    $0xffffffff,%eax
 78a:	74 1c                	je     7a8 <malloc+0x88>
  hp->s.size = nu;
 78c:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 78f:	83 ec 0c             	sub    $0xc,%esp
 792:	83 c0 08             	add    $0x8,%eax
 795:	50                   	push   %eax
 796:	e8 f5 fe ff ff       	call   690 <free>
  return freep;
 79b:	8b 15 a4 0b 00 00    	mov    0xba4,%edx
      if((p = morecore(nunits)) == 0)
 7a1:	83 c4 10             	add    $0x10,%esp
 7a4:	85 d2                	test   %edx,%edx
 7a6:	75 c0                	jne    768 <malloc+0x48>
        return 0;
  }
}
 7a8:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 7ab:	31 c0                	xor    %eax,%eax
}
 7ad:	5b                   	pop    %ebx
 7ae:	5e                   	pop    %esi
 7af:	5f                   	pop    %edi
 7b0:	5d                   	pop    %ebp
 7b1:	c3                   	ret    
 7b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 7b8:	39 cf                	cmp    %ecx,%edi
 7ba:	74 54                	je     810 <malloc+0xf0>
        p->s.size -= nunits;
 7bc:	29 f9                	sub    %edi,%ecx
 7be:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 7c1:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 7c4:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 7c7:	89 15 a4 0b 00 00    	mov    %edx,0xba4
}
 7cd:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 7d0:	83 c0 08             	add    $0x8,%eax
}
 7d3:	5b                   	pop    %ebx
 7d4:	5e                   	pop    %esi
 7d5:	5f                   	pop    %edi
 7d6:	5d                   	pop    %ebp
 7d7:	c3                   	ret    
 7d8:	90                   	nop
 7d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
 7e0:	c7 05 a4 0b 00 00 a8 	movl   $0xba8,0xba4
 7e7:	0b 00 00 
 7ea:	c7 05 a8 0b 00 00 a8 	movl   $0xba8,0xba8
 7f1:	0b 00 00 
    base.s.size = 0;
 7f4:	b8 a8 0b 00 00       	mov    $0xba8,%eax
 7f9:	c7 05 ac 0b 00 00 00 	movl   $0x0,0xbac
 800:	00 00 00 
 803:	e9 44 ff ff ff       	jmp    74c <malloc+0x2c>
 808:	90                   	nop
 809:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
 810:	8b 08                	mov    (%eax),%ecx
 812:	89 0a                	mov    %ecx,(%edx)
 814:	eb b1                	jmp    7c7 <malloc+0xa7>
