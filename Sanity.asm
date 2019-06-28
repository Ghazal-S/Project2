
_Sanity:     file format elf32-i386


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
  Sanity();
  11:	e8 6a 00 00 00       	call   80 <Sanity>
  exit();
  16:	e8 97 03 00 00       	call   3b2 <exit>
  1b:	66 90                	xchg   %ax,%ax
  1d:	66 90                	xchg   %ax,%ax
  1f:	90                   	nop

00000020 <foo>:
{
  20:	55                   	push   %ebp
 if(cid%3 == 0){
  21:	ba 56 55 55 55       	mov    $0x55555556,%edx
{
  26:	89 e5                	mov    %esp,%ebp
  28:	56                   	push   %esi
  29:	53                   	push   %ebx
  2a:	8b 75 08             	mov    0x8(%ebp),%esi
 if(cid%3 == 0){
  2d:	89 f0                	mov    %esi,%eax
  2f:	f7 ea                	imul   %edx
  31:	89 f0                	mov    %esi,%eax
  33:	c1 f8 1f             	sar    $0x1f,%eax
  36:	29 c2                	sub    %eax,%edx
  38:	8d 04 52             	lea    (%edx,%edx,2),%eax
  3b:	89 f2                	mov    %esi,%edx
  3d:	29 c2                	sub    %eax,%edx
  3f:	74 33                	je     74 <foo+0x54>
 else if(cid%3 == 1){
  41:	83 fa 01             	cmp    $0x1,%edx
  44:	74 29                	je     6f <foo+0x4f>
{
  46:	bb f4 01 00 00       	mov    $0x1f4,%ebx
  4b:	90                   	nop
  4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
	printf(1, "Cid : %d \n",cid);
  50:	83 ec 04             	sub    $0x4,%esp
  53:	56                   	push   %esi
  54:	68 68 08 00 00       	push   $0x868
  59:	6a 01                	push   $0x1
  5b:	e8 b0 04 00 00       	call   510 <printf>
  for (i=0;i<500;i++){
  60:	83 c4 10             	add    $0x10,%esp
  63:	83 eb 01             	sub    $0x1,%ebx
  66:	75 e8                	jne    50 <foo+0x30>
}
  68:	8d 65 f8             	lea    -0x8(%ebp),%esp
  6b:	5b                   	pop    %ebx
  6c:	5e                   	pop    %esi
  6d:	5d                   	pop    %ebp
  6e:	c3                   	ret    
	nice();
  6f:	e8 56 03 00 00       	call   3ca <nice>
	nice();
  74:	e8 51 03 00 00       	call   3ca <nice>
  79:	eb cb                	jmp    46 <foo+0x26>
  7b:	90                   	nop
  7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000080 <Sanity>:
{
  80:	55                   	push   %ebp
  81:	89 e5                	mov    %esp,%ebp
  83:	53                   	push   %ebx
  for ( k = 0; k < 30; k++ ) {
  84:	31 db                	xor    %ebx,%ebx
{
  86:	83 ec 1c             	sub    $0x1c,%esp
  printf(1, "Sanity\n");
  89:	68 73 08 00 00       	push   $0x873
  8e:	6a 01                	push   $0x1
  90:	e8 7b 04 00 00       	call   510 <printf>
  95:	83 c4 10             	add    $0x10,%esp
  98:	90                   	nop
  99:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    pid = fork ();
  a0:	e8 05 03 00 00       	call   3aa <fork>
    if ( pid < 0 ) {
  a5:	85 c0                	test   %eax,%eax
  a7:	0f 88 7f 00 00 00    	js     12c <Sanity+0xac>
    } else if (pid == 0) {
  ad:	0f 84 93 00 00 00    	je     146 <Sanity+0xc6>
  for ( k = 0; k < 30; k++ ) {
  b3:	83 c3 01             	add    $0x1,%ebx
  b6:	83 fb 1e             	cmp    $0x1e,%ebx
  b9:	75 e5                	jne    a0 <Sanity+0x20>
  bb:	bb 0a 00 00 00       	mov    $0xa,%ebx
    wait();
  c0:	e8 f5 02 00 00       	call   3ba <wait>
  for (k = 0; k < 10; k++) {
  c5:	83 eb 01             	sub    $0x1,%ebx
  c8:	75 f6                	jne    c0 <Sanity+0x40>
    getPerformanceData(&wTime,&rTime);
  ca:	8d 45 f4             	lea    -0xc(%ebp),%eax
  cd:	83 ec 08             	sub    $0x8,%esp
  d0:	50                   	push   %eax
  d1:	8d 45 f0             	lea    -0x10(%ebp),%eax
  d4:	50                   	push   %eax
  d5:	e8 e8 02 00 00       	call   3c2 <getPerformanceData>
    printf(1, "Average turnaround and waiting time of all children => average wTime: %d average rTime: %d \n",(wTime/30),(rTime/30));
  da:	8b 5d f4             	mov    -0xc(%ebp),%ebx
  dd:	b9 89 88 88 88       	mov    $0x88888889,%ecx
  e2:	89 d8                	mov    %ebx,%eax
  e4:	f7 e9                	imul   %ecx
  e6:	01 da                	add    %ebx,%edx
  e8:	c1 fb 1f             	sar    $0x1f,%ebx
  eb:	c1 fa 04             	sar    $0x4,%edx
  ee:	29 da                	sub    %ebx,%edx
  f0:	8b 5d f0             	mov    -0x10(%ebp),%ebx
  f3:	52                   	push   %edx
  f4:	89 d8                	mov    %ebx,%eax
  f6:	f7 e9                	imul   %ecx
  f8:	01 da                	add    %ebx,%edx
  fa:	c1 fb 1f             	sar    $0x1f,%ebx
  fd:	c1 fa 04             	sar    $0x4,%edx
 100:	29 da                	sub    %ebx,%edx
 102:	52                   	push   %edx
 103:	68 90 08 00 00       	push   $0x890
 108:	6a 01                	push   $0x1
 10a:	e8 01 04 00 00       	call   510 <printf>
    printf(1, "Turnaround and waiting time for all children => total wTime: %d total rTime: %d \n",wTime,rTime);
 10f:	83 c4 20             	add    $0x20,%esp
 112:	ff 75 f4             	pushl  -0xc(%ebp)
 115:	ff 75 f0             	pushl  -0x10(%ebp)
 118:	68 f0 08 00 00       	push   $0x8f0
 11d:	6a 01                	push   $0x1
 11f:	e8 ec 03 00 00       	call   510 <printf>
 124:	83 c4 10             	add    $0x10,%esp
}
 127:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 12a:	c9                   	leave  
 12b:	c3                   	ret    
      printf(1, "%d failed in fork!\n", getpid());
 12c:	e8 11 03 00 00       	call   442 <getpid>
 131:	83 ec 04             	sub    $0x4,%esp
 134:	50                   	push   %eax
 135:	68 7b 08 00 00       	push   $0x87b
 13a:	6a 01                	push   $0x1
 13c:	e8 cf 03 00 00       	call   510 <printf>
      exit();
 141:	e8 6c 02 00 00       	call   3b2 <exit>
      foo(k);
 146:	83 ec 0c             	sub    $0xc,%esp
 149:	53                   	push   %ebx
 14a:	e8 d1 fe ff ff       	call   20 <foo>
      exit();
 14f:	e8 5e 02 00 00       	call   3b2 <exit>
 154:	66 90                	xchg   %ax,%ax
 156:	66 90                	xchg   %ax,%ax
 158:	66 90                	xchg   %ax,%ax
 15a:	66 90                	xchg   %ax,%ax
 15c:	66 90                	xchg   %ax,%ax
 15e:	66 90                	xchg   %ax,%ax

00000160 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 160:	55                   	push   %ebp
 161:	89 e5                	mov    %esp,%ebp
 163:	53                   	push   %ebx
 164:	8b 45 08             	mov    0x8(%ebp),%eax
 167:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 16a:	89 c2                	mov    %eax,%edx
 16c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 170:	83 c1 01             	add    $0x1,%ecx
 173:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 177:	83 c2 01             	add    $0x1,%edx
 17a:	84 db                	test   %bl,%bl
 17c:	88 5a ff             	mov    %bl,-0x1(%edx)
 17f:	75 ef                	jne    170 <strcpy+0x10>
    ;
  return os;
}
 181:	5b                   	pop    %ebx
 182:	5d                   	pop    %ebp
 183:	c3                   	ret    
 184:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 18a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000190 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 190:	55                   	push   %ebp
 191:	89 e5                	mov    %esp,%ebp
 193:	53                   	push   %ebx
 194:	8b 55 08             	mov    0x8(%ebp),%edx
 197:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 19a:	0f b6 02             	movzbl (%edx),%eax
 19d:	0f b6 19             	movzbl (%ecx),%ebx
 1a0:	84 c0                	test   %al,%al
 1a2:	75 1c                	jne    1c0 <strcmp+0x30>
 1a4:	eb 2a                	jmp    1d0 <strcmp+0x40>
 1a6:	8d 76 00             	lea    0x0(%esi),%esi
 1a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 1b0:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 1b3:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 1b6:	83 c1 01             	add    $0x1,%ecx
 1b9:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
 1bc:	84 c0                	test   %al,%al
 1be:	74 10                	je     1d0 <strcmp+0x40>
 1c0:	38 d8                	cmp    %bl,%al
 1c2:	74 ec                	je     1b0 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
 1c4:	29 d8                	sub    %ebx,%eax
}
 1c6:	5b                   	pop    %ebx
 1c7:	5d                   	pop    %ebp
 1c8:	c3                   	ret    
 1c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1d0:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 1d2:	29 d8                	sub    %ebx,%eax
}
 1d4:	5b                   	pop    %ebx
 1d5:	5d                   	pop    %ebp
 1d6:	c3                   	ret    
 1d7:	89 f6                	mov    %esi,%esi
 1d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000001e0 <strlen>:

uint
strlen(const char *s)
{
 1e0:	55                   	push   %ebp
 1e1:	89 e5                	mov    %esp,%ebp
 1e3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 1e6:	80 39 00             	cmpb   $0x0,(%ecx)
 1e9:	74 15                	je     200 <strlen+0x20>
 1eb:	31 d2                	xor    %edx,%edx
 1ed:	8d 76 00             	lea    0x0(%esi),%esi
 1f0:	83 c2 01             	add    $0x1,%edx
 1f3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 1f7:	89 d0                	mov    %edx,%eax
 1f9:	75 f5                	jne    1f0 <strlen+0x10>
    ;
  return n;
}
 1fb:	5d                   	pop    %ebp
 1fc:	c3                   	ret    
 1fd:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
 200:	31 c0                	xor    %eax,%eax
}
 202:	5d                   	pop    %ebp
 203:	c3                   	ret    
 204:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 20a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000210 <memset>:

void*
memset(void *dst, int c, uint n)
{
 210:	55                   	push   %ebp
 211:	89 e5                	mov    %esp,%ebp
 213:	57                   	push   %edi
 214:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 217:	8b 4d 10             	mov    0x10(%ebp),%ecx
 21a:	8b 45 0c             	mov    0xc(%ebp),%eax
 21d:	89 d7                	mov    %edx,%edi
 21f:	fc                   	cld    
 220:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 222:	89 d0                	mov    %edx,%eax
 224:	5f                   	pop    %edi
 225:	5d                   	pop    %ebp
 226:	c3                   	ret    
 227:	89 f6                	mov    %esi,%esi
 229:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000230 <strchr>:

char*
strchr(const char *s, char c)
{
 230:	55                   	push   %ebp
 231:	89 e5                	mov    %esp,%ebp
 233:	53                   	push   %ebx
 234:	8b 45 08             	mov    0x8(%ebp),%eax
 237:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 23a:	0f b6 10             	movzbl (%eax),%edx
 23d:	84 d2                	test   %dl,%dl
 23f:	74 1d                	je     25e <strchr+0x2e>
    if(*s == c)
 241:	38 d3                	cmp    %dl,%bl
 243:	89 d9                	mov    %ebx,%ecx
 245:	75 0d                	jne    254 <strchr+0x24>
 247:	eb 17                	jmp    260 <strchr+0x30>
 249:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 250:	38 ca                	cmp    %cl,%dl
 252:	74 0c                	je     260 <strchr+0x30>
  for(; *s; s++)
 254:	83 c0 01             	add    $0x1,%eax
 257:	0f b6 10             	movzbl (%eax),%edx
 25a:	84 d2                	test   %dl,%dl
 25c:	75 f2                	jne    250 <strchr+0x20>
      return (char*)s;
  return 0;
 25e:	31 c0                	xor    %eax,%eax
}
 260:	5b                   	pop    %ebx
 261:	5d                   	pop    %ebp
 262:	c3                   	ret    
 263:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 269:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000270 <gets>:

char*
gets(char *buf, int max)
{
 270:	55                   	push   %ebp
 271:	89 e5                	mov    %esp,%ebp
 273:	57                   	push   %edi
 274:	56                   	push   %esi
 275:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 276:	31 f6                	xor    %esi,%esi
 278:	89 f3                	mov    %esi,%ebx
{
 27a:	83 ec 1c             	sub    $0x1c,%esp
 27d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
 280:	eb 2f                	jmp    2b1 <gets+0x41>
 282:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
 288:	8d 45 e7             	lea    -0x19(%ebp),%eax
 28b:	83 ec 04             	sub    $0x4,%esp
 28e:	6a 01                	push   $0x1
 290:	50                   	push   %eax
 291:	6a 00                	push   $0x0
 293:	e8 42 01 00 00       	call   3da <read>
    if(cc < 1)
 298:	83 c4 10             	add    $0x10,%esp
 29b:	85 c0                	test   %eax,%eax
 29d:	7e 1c                	jle    2bb <gets+0x4b>
      break;
    buf[i++] = c;
 29f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 2a3:	83 c7 01             	add    $0x1,%edi
 2a6:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
 2a9:	3c 0a                	cmp    $0xa,%al
 2ab:	74 23                	je     2d0 <gets+0x60>
 2ad:	3c 0d                	cmp    $0xd,%al
 2af:	74 1f                	je     2d0 <gets+0x60>
  for(i=0; i+1 < max; ){
 2b1:	83 c3 01             	add    $0x1,%ebx
 2b4:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 2b7:	89 fe                	mov    %edi,%esi
 2b9:	7c cd                	jl     288 <gets+0x18>
 2bb:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
 2bd:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
 2c0:	c6 03 00             	movb   $0x0,(%ebx)
}
 2c3:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2c6:	5b                   	pop    %ebx
 2c7:	5e                   	pop    %esi
 2c8:	5f                   	pop    %edi
 2c9:	5d                   	pop    %ebp
 2ca:	c3                   	ret    
 2cb:	90                   	nop
 2cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2d0:	8b 75 08             	mov    0x8(%ebp),%esi
 2d3:	8b 45 08             	mov    0x8(%ebp),%eax
 2d6:	01 de                	add    %ebx,%esi
 2d8:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
 2da:	c6 03 00             	movb   $0x0,(%ebx)
}
 2dd:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2e0:	5b                   	pop    %ebx
 2e1:	5e                   	pop    %esi
 2e2:	5f                   	pop    %edi
 2e3:	5d                   	pop    %ebp
 2e4:	c3                   	ret    
 2e5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000002f0 <stat>:

int
stat(const char *n, struct stat *st)
{
 2f0:	55                   	push   %ebp
 2f1:	89 e5                	mov    %esp,%ebp
 2f3:	56                   	push   %esi
 2f4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 2f5:	83 ec 08             	sub    $0x8,%esp
 2f8:	6a 00                	push   $0x0
 2fa:	ff 75 08             	pushl  0x8(%ebp)
 2fd:	e8 00 01 00 00       	call   402 <open>
  if(fd < 0)
 302:	83 c4 10             	add    $0x10,%esp
 305:	85 c0                	test   %eax,%eax
 307:	78 27                	js     330 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 309:	83 ec 08             	sub    $0x8,%esp
 30c:	ff 75 0c             	pushl  0xc(%ebp)
 30f:	89 c3                	mov    %eax,%ebx
 311:	50                   	push   %eax
 312:	e8 03 01 00 00       	call   41a <fstat>
  close(fd);
 317:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 31a:	89 c6                	mov    %eax,%esi
  close(fd);
 31c:	e8 c9 00 00 00       	call   3ea <close>
  return r;
 321:	83 c4 10             	add    $0x10,%esp
}
 324:	8d 65 f8             	lea    -0x8(%ebp),%esp
 327:	89 f0                	mov    %esi,%eax
 329:	5b                   	pop    %ebx
 32a:	5e                   	pop    %esi
 32b:	5d                   	pop    %ebp
 32c:	c3                   	ret    
 32d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 330:	be ff ff ff ff       	mov    $0xffffffff,%esi
 335:	eb ed                	jmp    324 <stat+0x34>
 337:	89 f6                	mov    %esi,%esi
 339:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000340 <atoi>:

int
atoi(const char *s)
{
 340:	55                   	push   %ebp
 341:	89 e5                	mov    %esp,%ebp
 343:	53                   	push   %ebx
 344:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 347:	0f be 11             	movsbl (%ecx),%edx
 34a:	8d 42 d0             	lea    -0x30(%edx),%eax
 34d:	3c 09                	cmp    $0x9,%al
  n = 0;
 34f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 354:	77 1f                	ja     375 <atoi+0x35>
 356:	8d 76 00             	lea    0x0(%esi),%esi
 359:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 360:	8d 04 80             	lea    (%eax,%eax,4),%eax
 363:	83 c1 01             	add    $0x1,%ecx
 366:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
 36a:	0f be 11             	movsbl (%ecx),%edx
 36d:	8d 5a d0             	lea    -0x30(%edx),%ebx
 370:	80 fb 09             	cmp    $0x9,%bl
 373:	76 eb                	jbe    360 <atoi+0x20>
  return n;
}
 375:	5b                   	pop    %ebx
 376:	5d                   	pop    %ebp
 377:	c3                   	ret    
 378:	90                   	nop
 379:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000380 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 380:	55                   	push   %ebp
 381:	89 e5                	mov    %esp,%ebp
 383:	56                   	push   %esi
 384:	53                   	push   %ebx
 385:	8b 5d 10             	mov    0x10(%ebp),%ebx
 388:	8b 45 08             	mov    0x8(%ebp),%eax
 38b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 38e:	85 db                	test   %ebx,%ebx
 390:	7e 14                	jle    3a6 <memmove+0x26>
 392:	31 d2                	xor    %edx,%edx
 394:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 398:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 39c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 39f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
 3a2:	39 d3                	cmp    %edx,%ebx
 3a4:	75 f2                	jne    398 <memmove+0x18>
  return vdst;
}
 3a6:	5b                   	pop    %ebx
 3a7:	5e                   	pop    %esi
 3a8:	5d                   	pop    %ebp
 3a9:	c3                   	ret    

000003aa <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 3aa:	b8 01 00 00 00       	mov    $0x1,%eax
 3af:	cd 40                	int    $0x40
 3b1:	c3                   	ret    

000003b2 <exit>:
SYSCALL(exit)
 3b2:	b8 02 00 00 00       	mov    $0x2,%eax
 3b7:	cd 40                	int    $0x40
 3b9:	c3                   	ret    

000003ba <wait>:
SYSCALL(wait)
 3ba:	b8 03 00 00 00       	mov    $0x3,%eax
 3bf:	cd 40                	int    $0x40
 3c1:	c3                   	ret    

000003c2 <getPerformanceData>:
SYSCALL(getPerformanceData) // calculates process run time and wait time
 3c2:	b8 16 00 00 00       	mov    $0x16,%eax
 3c7:	cd 40                	int    $0x40
 3c9:	c3                   	ret    

000003ca <nice>:
SYSCALL(nice)
 3ca:	b8 17 00 00 00       	mov    $0x17,%eax
 3cf:	cd 40                	int    $0x40
 3d1:	c3                   	ret    

000003d2 <pipe>:
SYSCALL(pipe)
 3d2:	b8 04 00 00 00       	mov    $0x4,%eax
 3d7:	cd 40                	int    $0x40
 3d9:	c3                   	ret    

000003da <read>:
SYSCALL(read)
 3da:	b8 05 00 00 00       	mov    $0x5,%eax
 3df:	cd 40                	int    $0x40
 3e1:	c3                   	ret    

000003e2 <write>:
SYSCALL(write)
 3e2:	b8 10 00 00 00       	mov    $0x10,%eax
 3e7:	cd 40                	int    $0x40
 3e9:	c3                   	ret    

000003ea <close>:
SYSCALL(close)
 3ea:	b8 15 00 00 00       	mov    $0x15,%eax
 3ef:	cd 40                	int    $0x40
 3f1:	c3                   	ret    

000003f2 <kill>:
SYSCALL(kill)
 3f2:	b8 06 00 00 00       	mov    $0x6,%eax
 3f7:	cd 40                	int    $0x40
 3f9:	c3                   	ret    

000003fa <exec>:
SYSCALL(exec)
 3fa:	b8 07 00 00 00       	mov    $0x7,%eax
 3ff:	cd 40                	int    $0x40
 401:	c3                   	ret    

00000402 <open>:
SYSCALL(open)
 402:	b8 0f 00 00 00       	mov    $0xf,%eax
 407:	cd 40                	int    $0x40
 409:	c3                   	ret    

0000040a <mknod>:
SYSCALL(mknod)
 40a:	b8 11 00 00 00       	mov    $0x11,%eax
 40f:	cd 40                	int    $0x40
 411:	c3                   	ret    

00000412 <unlink>:
SYSCALL(unlink)
 412:	b8 12 00 00 00       	mov    $0x12,%eax
 417:	cd 40                	int    $0x40
 419:	c3                   	ret    

0000041a <fstat>:
SYSCALL(fstat)
 41a:	b8 08 00 00 00       	mov    $0x8,%eax
 41f:	cd 40                	int    $0x40
 421:	c3                   	ret    

00000422 <link>:
SYSCALL(link)
 422:	b8 13 00 00 00       	mov    $0x13,%eax
 427:	cd 40                	int    $0x40
 429:	c3                   	ret    

0000042a <mkdir>:
SYSCALL(mkdir)
 42a:	b8 14 00 00 00       	mov    $0x14,%eax
 42f:	cd 40                	int    $0x40
 431:	c3                   	ret    

00000432 <chdir>:
SYSCALL(chdir)
 432:	b8 09 00 00 00       	mov    $0x9,%eax
 437:	cd 40                	int    $0x40
 439:	c3                   	ret    

0000043a <dup>:
SYSCALL(dup)
 43a:	b8 0a 00 00 00       	mov    $0xa,%eax
 43f:	cd 40                	int    $0x40
 441:	c3                   	ret    

00000442 <getpid>:
SYSCALL(getpid)
 442:	b8 0b 00 00 00       	mov    $0xb,%eax
 447:	cd 40                	int    $0x40
 449:	c3                   	ret    

0000044a <getppid>:
SYSCALL(getppid)
 44a:	b8 18 00 00 00       	mov    $0x18,%eax
 44f:	cd 40                	int    $0x40
 451:	c3                   	ret    

00000452 <sbrk>:
SYSCALL(sbrk)
 452:	b8 0c 00 00 00       	mov    $0xc,%eax
 457:	cd 40                	int    $0x40
 459:	c3                   	ret    

0000045a <sleep>:
SYSCALL(sleep)
 45a:	b8 0d 00 00 00       	mov    $0xd,%eax
 45f:	cd 40                	int    $0x40
 461:	c3                   	ret    

00000462 <uptime>:
SYSCALL(uptime)
 462:	b8 0e 00 00 00       	mov    $0xe,%eax
 467:	cd 40                	int    $0x40
 469:	c3                   	ret    
 46a:	66 90                	xchg   %ax,%ax
 46c:	66 90                	xchg   %ax,%ax
 46e:	66 90                	xchg   %ax,%ax

00000470 <printint>:
 470:	55                   	push   %ebp
 471:	89 e5                	mov    %esp,%ebp
 473:	57                   	push   %edi
 474:	56                   	push   %esi
 475:	53                   	push   %ebx
 476:	83 ec 3c             	sub    $0x3c,%esp
 479:	85 d2                	test   %edx,%edx
 47b:	89 45 c0             	mov    %eax,-0x40(%ebp)
 47e:	89 d0                	mov    %edx,%eax
 480:	79 76                	jns    4f8 <printint+0x88>
 482:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 486:	74 70                	je     4f8 <printint+0x88>
 488:	f7 d8                	neg    %eax
 48a:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
 491:	31 f6                	xor    %esi,%esi
 493:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 496:	eb 0a                	jmp    4a2 <printint+0x32>
 498:	90                   	nop
 499:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4a0:	89 fe                	mov    %edi,%esi
 4a2:	31 d2                	xor    %edx,%edx
 4a4:	8d 7e 01             	lea    0x1(%esi),%edi
 4a7:	f7 f1                	div    %ecx
 4a9:	0f b6 92 4c 09 00 00 	movzbl 0x94c(%edx),%edx
 4b0:	85 c0                	test   %eax,%eax
 4b2:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
 4b5:	75 e9                	jne    4a0 <printint+0x30>
 4b7:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 4ba:	85 c0                	test   %eax,%eax
 4bc:	74 08                	je     4c6 <printint+0x56>
 4be:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
 4c3:	8d 7e 02             	lea    0x2(%esi),%edi
 4c6:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
 4ca:	8b 7d c0             	mov    -0x40(%ebp),%edi
 4cd:	8d 76 00             	lea    0x0(%esi),%esi
 4d0:	0f b6 06             	movzbl (%esi),%eax
 4d3:	83 ec 04             	sub    $0x4,%esp
 4d6:	83 ee 01             	sub    $0x1,%esi
 4d9:	6a 01                	push   $0x1
 4db:	53                   	push   %ebx
 4dc:	57                   	push   %edi
 4dd:	88 45 d7             	mov    %al,-0x29(%ebp)
 4e0:	e8 fd fe ff ff       	call   3e2 <write>
 4e5:	83 c4 10             	add    $0x10,%esp
 4e8:	39 de                	cmp    %ebx,%esi
 4ea:	75 e4                	jne    4d0 <printint+0x60>
 4ec:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4ef:	5b                   	pop    %ebx
 4f0:	5e                   	pop    %esi
 4f1:	5f                   	pop    %edi
 4f2:	5d                   	pop    %ebp
 4f3:	c3                   	ret    
 4f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4f8:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 4ff:	eb 90                	jmp    491 <printint+0x21>
 501:	eb 0d                	jmp    510 <printf>
 503:	90                   	nop
 504:	90                   	nop
 505:	90                   	nop
 506:	90                   	nop
 507:	90                   	nop
 508:	90                   	nop
 509:	90                   	nop
 50a:	90                   	nop
 50b:	90                   	nop
 50c:	90                   	nop
 50d:	90                   	nop
 50e:	90                   	nop
 50f:	90                   	nop

00000510 <printf>:
 510:	55                   	push   %ebp
 511:	89 e5                	mov    %esp,%ebp
 513:	57                   	push   %edi
 514:	56                   	push   %esi
 515:	53                   	push   %ebx
 516:	83 ec 2c             	sub    $0x2c,%esp
 519:	8b 75 0c             	mov    0xc(%ebp),%esi
 51c:	0f b6 1e             	movzbl (%esi),%ebx
 51f:	84 db                	test   %bl,%bl
 521:	0f 84 b3 00 00 00    	je     5da <printf+0xca>
 527:	8d 45 10             	lea    0x10(%ebp),%eax
 52a:	83 c6 01             	add    $0x1,%esi
 52d:	31 ff                	xor    %edi,%edi
 52f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 532:	eb 2f                	jmp    563 <printf+0x53>
 534:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 538:	83 f8 25             	cmp    $0x25,%eax
 53b:	0f 84 a7 00 00 00    	je     5e8 <printf+0xd8>
 541:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 544:	83 ec 04             	sub    $0x4,%esp
 547:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 54a:	6a 01                	push   $0x1
 54c:	50                   	push   %eax
 54d:	ff 75 08             	pushl  0x8(%ebp)
 550:	e8 8d fe ff ff       	call   3e2 <write>
 555:	83 c4 10             	add    $0x10,%esp
 558:	83 c6 01             	add    $0x1,%esi
 55b:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 55f:	84 db                	test   %bl,%bl
 561:	74 77                	je     5da <printf+0xca>
 563:	85 ff                	test   %edi,%edi
 565:	0f be cb             	movsbl %bl,%ecx
 568:	0f b6 c3             	movzbl %bl,%eax
 56b:	74 cb                	je     538 <printf+0x28>
 56d:	83 ff 25             	cmp    $0x25,%edi
 570:	75 e6                	jne    558 <printf+0x48>
 572:	83 f8 64             	cmp    $0x64,%eax
 575:	0f 84 05 01 00 00    	je     680 <printf+0x170>
 57b:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 581:	83 f9 70             	cmp    $0x70,%ecx
 584:	74 72                	je     5f8 <printf+0xe8>
 586:	83 f8 73             	cmp    $0x73,%eax
 589:	0f 84 99 00 00 00    	je     628 <printf+0x118>
 58f:	83 f8 63             	cmp    $0x63,%eax
 592:	0f 84 08 01 00 00    	je     6a0 <printf+0x190>
 598:	83 f8 25             	cmp    $0x25,%eax
 59b:	0f 84 ef 00 00 00    	je     690 <printf+0x180>
 5a1:	8d 45 e7             	lea    -0x19(%ebp),%eax
 5a4:	83 ec 04             	sub    $0x4,%esp
 5a7:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 5ab:	6a 01                	push   $0x1
 5ad:	50                   	push   %eax
 5ae:	ff 75 08             	pushl  0x8(%ebp)
 5b1:	e8 2c fe ff ff       	call   3e2 <write>
 5b6:	83 c4 0c             	add    $0xc,%esp
 5b9:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 5bc:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 5bf:	6a 01                	push   $0x1
 5c1:	50                   	push   %eax
 5c2:	ff 75 08             	pushl  0x8(%ebp)
 5c5:	83 c6 01             	add    $0x1,%esi
 5c8:	31 ff                	xor    %edi,%edi
 5ca:	e8 13 fe ff ff       	call   3e2 <write>
 5cf:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 5d3:	83 c4 10             	add    $0x10,%esp
 5d6:	84 db                	test   %bl,%bl
 5d8:	75 89                	jne    563 <printf+0x53>
 5da:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5dd:	5b                   	pop    %ebx
 5de:	5e                   	pop    %esi
 5df:	5f                   	pop    %edi
 5e0:	5d                   	pop    %ebp
 5e1:	c3                   	ret    
 5e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 5e8:	bf 25 00 00 00       	mov    $0x25,%edi
 5ed:	e9 66 ff ff ff       	jmp    558 <printf+0x48>
 5f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 5f8:	83 ec 0c             	sub    $0xc,%esp
 5fb:	b9 10 00 00 00       	mov    $0x10,%ecx
 600:	6a 00                	push   $0x0
 602:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 605:	8b 45 08             	mov    0x8(%ebp),%eax
 608:	8b 17                	mov    (%edi),%edx
 60a:	e8 61 fe ff ff       	call   470 <printint>
 60f:	89 f8                	mov    %edi,%eax
 611:	83 c4 10             	add    $0x10,%esp
 614:	31 ff                	xor    %edi,%edi
 616:	83 c0 04             	add    $0x4,%eax
 619:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 61c:	e9 37 ff ff ff       	jmp    558 <printf+0x48>
 621:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 628:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 62b:	8b 08                	mov    (%eax),%ecx
 62d:	83 c0 04             	add    $0x4,%eax
 630:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 633:	85 c9                	test   %ecx,%ecx
 635:	0f 84 8e 00 00 00    	je     6c9 <printf+0x1b9>
 63b:	0f b6 01             	movzbl (%ecx),%eax
 63e:	31 ff                	xor    %edi,%edi
 640:	89 cb                	mov    %ecx,%ebx
 642:	84 c0                	test   %al,%al
 644:	0f 84 0e ff ff ff    	je     558 <printf+0x48>
 64a:	89 75 d0             	mov    %esi,-0x30(%ebp)
 64d:	89 de                	mov    %ebx,%esi
 64f:	8b 5d 08             	mov    0x8(%ebp),%ebx
 652:	8d 7d e3             	lea    -0x1d(%ebp),%edi
 655:	8d 76 00             	lea    0x0(%esi),%esi
 658:	83 ec 04             	sub    $0x4,%esp
 65b:	83 c6 01             	add    $0x1,%esi
 65e:	88 45 e3             	mov    %al,-0x1d(%ebp)
 661:	6a 01                	push   $0x1
 663:	57                   	push   %edi
 664:	53                   	push   %ebx
 665:	e8 78 fd ff ff       	call   3e2 <write>
 66a:	0f b6 06             	movzbl (%esi),%eax
 66d:	83 c4 10             	add    $0x10,%esp
 670:	84 c0                	test   %al,%al
 672:	75 e4                	jne    658 <printf+0x148>
 674:	8b 75 d0             	mov    -0x30(%ebp),%esi
 677:	31 ff                	xor    %edi,%edi
 679:	e9 da fe ff ff       	jmp    558 <printf+0x48>
 67e:	66 90                	xchg   %ax,%ax
 680:	83 ec 0c             	sub    $0xc,%esp
 683:	b9 0a 00 00 00       	mov    $0xa,%ecx
 688:	6a 01                	push   $0x1
 68a:	e9 73 ff ff ff       	jmp    602 <printf+0xf2>
 68f:	90                   	nop
 690:	83 ec 04             	sub    $0x4,%esp
 693:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 696:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 699:	6a 01                	push   $0x1
 69b:	e9 21 ff ff ff       	jmp    5c1 <printf+0xb1>
 6a0:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 6a3:	83 ec 04             	sub    $0x4,%esp
 6a6:	8b 07                	mov    (%edi),%eax
 6a8:	6a 01                	push   $0x1
 6aa:	83 c7 04             	add    $0x4,%edi
 6ad:	88 45 e4             	mov    %al,-0x1c(%ebp)
 6b0:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 6b3:	50                   	push   %eax
 6b4:	ff 75 08             	pushl  0x8(%ebp)
 6b7:	e8 26 fd ff ff       	call   3e2 <write>
 6bc:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 6bf:	83 c4 10             	add    $0x10,%esp
 6c2:	31 ff                	xor    %edi,%edi
 6c4:	e9 8f fe ff ff       	jmp    558 <printf+0x48>
 6c9:	bb 44 09 00 00       	mov    $0x944,%ebx
 6ce:	b8 28 00 00 00       	mov    $0x28,%eax
 6d3:	e9 72 ff ff ff       	jmp    64a <printf+0x13a>
 6d8:	66 90                	xchg   %ax,%ax
 6da:	66 90                	xchg   %ax,%ax
 6dc:	66 90                	xchg   %ax,%ax
 6de:	66 90                	xchg   %ax,%ax

000006e0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 6e0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6e1:	a1 44 0c 00 00       	mov    0xc44,%eax
{
 6e6:	89 e5                	mov    %esp,%ebp
 6e8:	57                   	push   %edi
 6e9:	56                   	push   %esi
 6ea:	53                   	push   %ebx
 6eb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 6ee:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 6f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6f8:	39 c8                	cmp    %ecx,%eax
 6fa:	8b 10                	mov    (%eax),%edx
 6fc:	73 32                	jae    730 <free+0x50>
 6fe:	39 d1                	cmp    %edx,%ecx
 700:	72 04                	jb     706 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 702:	39 d0                	cmp    %edx,%eax
 704:	72 32                	jb     738 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
 706:	8b 73 fc             	mov    -0x4(%ebx),%esi
 709:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 70c:	39 fa                	cmp    %edi,%edx
 70e:	74 30                	je     740 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 710:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 713:	8b 50 04             	mov    0x4(%eax),%edx
 716:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 719:	39 f1                	cmp    %esi,%ecx
 71b:	74 3a                	je     757 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 71d:	89 08                	mov    %ecx,(%eax)
  freep = p;
 71f:	a3 44 0c 00 00       	mov    %eax,0xc44
}
 724:	5b                   	pop    %ebx
 725:	5e                   	pop    %esi
 726:	5f                   	pop    %edi
 727:	5d                   	pop    %ebp
 728:	c3                   	ret    
 729:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 730:	39 d0                	cmp    %edx,%eax
 732:	72 04                	jb     738 <free+0x58>
 734:	39 d1                	cmp    %edx,%ecx
 736:	72 ce                	jb     706 <free+0x26>
{
 738:	89 d0                	mov    %edx,%eax
 73a:	eb bc                	jmp    6f8 <free+0x18>
 73c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 740:	03 72 04             	add    0x4(%edx),%esi
 743:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 746:	8b 10                	mov    (%eax),%edx
 748:	8b 12                	mov    (%edx),%edx
 74a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 74d:	8b 50 04             	mov    0x4(%eax),%edx
 750:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 753:	39 f1                	cmp    %esi,%ecx
 755:	75 c6                	jne    71d <free+0x3d>
    p->s.size += bp->s.size;
 757:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 75a:	a3 44 0c 00 00       	mov    %eax,0xc44
    p->s.size += bp->s.size;
 75f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 762:	8b 53 f8             	mov    -0x8(%ebx),%edx
 765:	89 10                	mov    %edx,(%eax)
}
 767:	5b                   	pop    %ebx
 768:	5e                   	pop    %esi
 769:	5f                   	pop    %edi
 76a:	5d                   	pop    %ebp
 76b:	c3                   	ret    
 76c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000770 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 770:	55                   	push   %ebp
 771:	89 e5                	mov    %esp,%ebp
 773:	57                   	push   %edi
 774:	56                   	push   %esi
 775:	53                   	push   %ebx
 776:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 779:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 77c:	8b 15 44 0c 00 00    	mov    0xc44,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 782:	8d 78 07             	lea    0x7(%eax),%edi
 785:	c1 ef 03             	shr    $0x3,%edi
 788:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 78b:	85 d2                	test   %edx,%edx
 78d:	0f 84 9d 00 00 00    	je     830 <malloc+0xc0>
 793:	8b 02                	mov    (%edx),%eax
 795:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 798:	39 cf                	cmp    %ecx,%edi
 79a:	76 6c                	jbe    808 <malloc+0x98>
 79c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 7a2:	bb 00 10 00 00       	mov    $0x1000,%ebx
 7a7:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 7aa:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 7b1:	eb 0e                	jmp    7c1 <malloc+0x51>
 7b3:	90                   	nop
 7b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 7b8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 7ba:	8b 48 04             	mov    0x4(%eax),%ecx
 7bd:	39 f9                	cmp    %edi,%ecx
 7bf:	73 47                	jae    808 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 7c1:	39 05 44 0c 00 00    	cmp    %eax,0xc44
 7c7:	89 c2                	mov    %eax,%edx
 7c9:	75 ed                	jne    7b8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 7cb:	83 ec 0c             	sub    $0xc,%esp
 7ce:	56                   	push   %esi
 7cf:	e8 7e fc ff ff       	call   452 <sbrk>
  if(p == (char*)-1)
 7d4:	83 c4 10             	add    $0x10,%esp
 7d7:	83 f8 ff             	cmp    $0xffffffff,%eax
 7da:	74 1c                	je     7f8 <malloc+0x88>
  hp->s.size = nu;
 7dc:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 7df:	83 ec 0c             	sub    $0xc,%esp
 7e2:	83 c0 08             	add    $0x8,%eax
 7e5:	50                   	push   %eax
 7e6:	e8 f5 fe ff ff       	call   6e0 <free>
  return freep;
 7eb:	8b 15 44 0c 00 00    	mov    0xc44,%edx
      if((p = morecore(nunits)) == 0)
 7f1:	83 c4 10             	add    $0x10,%esp
 7f4:	85 d2                	test   %edx,%edx
 7f6:	75 c0                	jne    7b8 <malloc+0x48>
        return 0;
  }
}
 7f8:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 7fb:	31 c0                	xor    %eax,%eax
}
 7fd:	5b                   	pop    %ebx
 7fe:	5e                   	pop    %esi
 7ff:	5f                   	pop    %edi
 800:	5d                   	pop    %ebp
 801:	c3                   	ret    
 802:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 808:	39 cf                	cmp    %ecx,%edi
 80a:	74 54                	je     860 <malloc+0xf0>
        p->s.size -= nunits;
 80c:	29 f9                	sub    %edi,%ecx
 80e:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 811:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 814:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 817:	89 15 44 0c 00 00    	mov    %edx,0xc44
}
 81d:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 820:	83 c0 08             	add    $0x8,%eax
}
 823:	5b                   	pop    %ebx
 824:	5e                   	pop    %esi
 825:	5f                   	pop    %edi
 826:	5d                   	pop    %ebp
 827:	c3                   	ret    
 828:	90                   	nop
 829:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
 830:	c7 05 44 0c 00 00 48 	movl   $0xc48,0xc44
 837:	0c 00 00 
 83a:	c7 05 48 0c 00 00 48 	movl   $0xc48,0xc48
 841:	0c 00 00 
    base.s.size = 0;
 844:	b8 48 0c 00 00       	mov    $0xc48,%eax
 849:	c7 05 4c 0c 00 00 00 	movl   $0x0,0xc4c
 850:	00 00 00 
 853:	e9 44 ff ff ff       	jmp    79c <malloc+0x2c>
 858:	90                   	nop
 859:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
 860:	8b 08                	mov    (%eax),%ecx
 862:	89 0a                	mov    %ecx,(%edx)
 864:	eb b1                	jmp    817 <malloc+0xa7>
