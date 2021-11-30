; ModuleID = 'uniq.bc_ps.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %1*, %0*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%1 = type { %1*, %0*, i32 }
%2 = type { i8*, i32, i32*, i32 }
%3 = type { i32, i32, [8 x i32], i8*, i8* }
%4 = type { i64, i8* }
%5 = type { i64, i64, i8* }
%6 = type { i32, %7 }
%7 = type { i32 }
%8 = type { i32, i32, i8*, i8* }

@0 = private unnamed_addr constant [40 x i8] c"Usage: %s [OPTION]... [INPUT [OUTPUT]]\0A\00", align 1
@stdout = external global %0*, align 8
@1 = private unnamed_addr constant [174 x i8] c"Filter adjacent matching lines from INPUT (or standard input),\0Awriting to OUTPUT (or standard output).\0A\0AWith no options, matching lines are merged to the first occurrence.\0A\0A\00", align 1
@2 = private unnamed_addr constant [74 x i8] c"Mandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@3 = private unnamed_addr constant [118 x i8] c"  -c, --count           prefix lines by the number of occurrences\0A  -d, --repeated        only print duplicate lines\0A\00", align 1
@4 = private unnamed_addr constant [494 x i8] c"  -D, --all-repeated[=delimit-method]  print all duplicate lines\0A                        delimit-method={none(default),prepend,separate}\0A                        Delimiting is done with blank lines\0A  -f, --skip-fields=N   avoid comparing the first N fields\0A  -i, --ignore-case     ignore differences in case when comparing\0A  -s, --skip-chars=N    avoid comparing the first N characters\0A  -u, --unique          only print unique lines\0A  -z, --zero-terminated  end lines with 0 byte, not newline\0A\00", align 1
@5 = private unnamed_addr constant [68 x i8] c"  -w, --check-chars=N   compare no more than N characters in lines\0A\00", align 1
@6 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@7 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@8 = private unnamed_addr constant [120 x i8] c"\0AA field is a run of blanks (usually spaces and/or TABs), then non-blank\0Acharacters.  Fields are skipped before chars.\0A\00", align 1
@9 = private unnamed_addr constant [204 x i8] c"\0ANote: 'uniq' does not detect repeated lines unless they are adjacent.\0AYou may want to sort the input first, or use 'sort -u' without 'uniq'.\0AAlso, comparisons honor the rules specified by 'LC_COLLATE'.\0A\00", align 1
@10 = private unnamed_addr constant [23 x i8] c"\0AReport %s bugs to %s\0A\00", align 1
@11 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@12 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@14 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@15 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@16 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@17 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@18 = private unnamed_addr constant [65 x i8] c"For complete documentation, run: info coreutils '%s invocation'\0A\00", align 1
@stderr = external global %0*, align 8
@19 = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@20 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@21 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@22 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@23 = internal global i8 0, align 1
@24 = internal global i64 0, align 8
@25 = internal global i64 0, align 8
@26 = internal global i64 0, align 8
@27 = internal global i8 0, align 1
@28 = internal global i8 0, align 1
@29 = internal global i8 0, align 1
@30 = internal global i32 0, align 4
@31 = internal global i32 0, align 4
@32 = private unnamed_addr constant [24 x i8] c"-0123456789Dcdf:is:uw:z\00", align 1
@33 = internal constant [12 x %2] [%2 { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @55, i32 0, i32 0), i32 0, i32* null, i32 99 }, %2 { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @56, i32 0, i32 0), i32 0, i32* null, i32 100 }, %2 { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @57, i32 0, i32 0), i32 2, i32* null, i32 68 }, %2 { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @58, i32 0, i32 0), i32 0, i32* null, i32 105 }, %2 { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @59, i32 0, i32 0), i32 0, i32* null, i32 117 }, %2 { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @60, i32 0, i32 0), i32 1, i32* null, i32 102 }, %2 { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @61, i32 0, i32 0), i32 1, i32* null, i32 115 }, %2 { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @62, i32 0, i32 0), i32 1, i32* null, i32 119 }, %2 { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @63, i32 0, i32 0), i32 0, i32* null, i32 122 }, %2 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @64, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %2 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @65, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %2 zeroinitializer], align 16
@optind = external global i32, align 4
@34 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@optarg = external global i8*, align 8
@35 = private unnamed_addr constant [15 x i8] c"--all-repeated\00", align 1
@36 = internal constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @52, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @53, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @54, i32 0, i32 0), i8* null], align 16
@37 = internal constant [3 x i32] [i32 0, i32 1, i32 2], align 4
@38 = private unnamed_addr constant [33 x i8] c"invalid number of fields to skip\00", align 1
@39 = internal global i8 0, align 1
@40 = private unnamed_addr constant [32 x i8] c"invalid number of bytes to skip\00", align 1
@41 = private unnamed_addr constant [35 x i8] c"invalid number of bytes to compare\00", align 1
@42 = private unnamed_addr constant [5 x i8] c"uniq\00", align 1
@43 = private unnamed_addr constant [20 x i8] c"Richard M. Stallman\00", align 1
@44 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@45 = private unnamed_addr constant [63 x i8] c"printing all duplicated lines and repeat counts is meaningless\00", align 1
@stdin = external global %0*, align 8
@46 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@47 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@48 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@49 = private unnamed_addr constant [17 x i8] c"error reading %s\00", align 1
@50 = private unnamed_addr constant [6 x i8] c"%7lu \00", align 1
@51 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@52 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@53 = private unnamed_addr constant [8 x i8] c"prepend\00", align 1
@54 = private unnamed_addr constant [9 x i8] c"separate\00", align 1
@55 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@56 = private unnamed_addr constant [9 x i8] c"repeated\00", align 1
@57 = private unnamed_addr constant [13 x i8] c"all-repeated\00", align 1
@58 = private unnamed_addr constant [12 x i8] c"ignore-case\00", align 1
@59 = private unnamed_addr constant [7 x i8] c"unique\00", align 1
@60 = private unnamed_addr constant [12 x i8] c"skip-fields\00", align 1
@61 = private unnamed_addr constant [11 x i8] c"skip-chars\00", align 1
@62 = private unnamed_addr constant [12 x i8] c"check-chars\00", align 1
@63 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1
@64 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@65 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @66, i32 0, i32 0), align 8
@66 = private unnamed_addr constant [5 x i8] c"8.16\00", align 1
@argmatch_die = global void ()* @150, align 8
@67 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@68 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@69 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@70 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1
@71 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@72 = internal global i8* null, align 8
@73 = internal global i8 0, align 1
@74 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@75 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@76 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4
@77 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@78 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@79 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@80 = private unnamed_addr constant [16 x i8] c"_POSIX2_VERSION\00", align 1
@program_name = global i8* null, align 8
@81 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@82 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@83 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external global i8*, align 8
@program_invocation_name = external global i8*, align 8
@quoting_style_args = constant [9 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @84, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @85, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @86, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @87, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @88, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @89, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @90, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @91, i32 0, i32 0), i8* null], align 16
@84 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@85 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@86 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@87 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@88 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@89 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@90 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@91 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = constant [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], align 16
@quote_quoting_options = global %3 { i32 6, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@92 = internal global %3 zeroinitializer, align 8
@93 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@94 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@95 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@96 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@97 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@98 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@99 = private unnamed_addr constant [8 x i8] c"GB18030\00", align 1
@100 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@101 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@102 = internal global %4* @105, align 8
@103 = internal global i32 1, align 4
@104 = internal global [256 x i8] zeroinitializer, align 16
@105 = internal global %4 { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @104, i32 0, i32 0) }, align 8
@106 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@107 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@108 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@109 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@110 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@111 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@112 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@113 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@114 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@115 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@116 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@117 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@118 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@119 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@120 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@121 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@122 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@123 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@124 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@125 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16
@126 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@127 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@128 = private unnamed_addr constant [25 x i8] c"string comparison failed\00", align 1
@129 = private unnamed_addr constant [43 x i8] c"Set LC_ALL='C' to work around the problem.\00", align 1
@130 = private unnamed_addr constant [37 x i8] c"The strings compared were %s and %s.\00", align 1
@131 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@132 = private unnamed_addr constant [20 x i8] c"../../lib/xstrtol.c\00", align 1
@133 = private unnamed_addr constant [81 x i8] c"strtol_error xstrtoul(const char *, char **, int, unsigned long *, const char *)\00", align 1
@134 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@135 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@136 = internal global i8* null, align 8
@137 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@138 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@139 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@140 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@141 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1

; Function Attrs: noinline noreturn nounwind uwtable
define void @usage(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %1
  call void @142()
  br label %27

; <label>:6:                                      ; preds = %1
  %7 = load i8*, i8** @program_name, align 8
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @0, i32 0, i32 0), i8* %7)
  %9 = load %0*, %0** @stdout, align 8
  %10 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([174 x i8], [174 x i8]* @1, i32 0, i32 0), %0* %9)
  %11 = load %0*, %0** @stdout, align 8
  %12 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @2, i32 0, i32 0), %0* %11)
  %13 = load %0*, %0** @stdout, align 8
  %14 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([118 x i8], [118 x i8]* @3, i32 0, i32 0), %0* %13)
  %15 = load %0*, %0** @stdout, align 8
  %16 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([494 x i8], [494 x i8]* @4, i32 0, i32 0), %0* %15)
  %17 = load %0*, %0** @stdout, align 8
  %18 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @5, i32 0, i32 0), %0* %17)
  %19 = load %0*, %0** @stdout, align 8
  %20 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @6, i32 0, i32 0), %0* %19)
  %21 = load %0*, %0** @stdout, align 8
  %22 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @7, i32 0, i32 0), %0* %21)
  %23 = load %0*, %0** @stdout, align 8
  %24 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @8, i32 0, i32 0), %0* %23)
  %25 = load %0*, %0** @stdout, align 8
  %26 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([204 x i8], [204 x i8]* @9, i32 0, i32 0), %0* %25)
  call void @143()
  br label %27

; <label>:27:                                     ; preds = %6, %5
  %28 = load i32, i32* %2, align 4
  call void @exit(i32 %28) #13
  unreachable
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal void @142() #2 {
  %1 = load %0*, %0** @stderr, align 8
  %2 = load i8*, i8** @program_name, align 8
  %3 = call i32 (%0*, i8*, ...) @fprintf(%0* %1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @19, i32 0, i32 0), i8* %2)
  ret void
}

declare i32 @printf(i8*, ...) #3

declare i32 @fputs_unlocked(i8*, %0*) #3

; Function Attrs: noinline nounwind uwtable
define internal void @143() #2 {
  %1 = alloca i8*, align 8
  %2 = load i8*, i8** @program_name, align 8
  %3 = call i8* @last_component(i8* %2) #14
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @11, i32 0, i32 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @14, i32 0, i32 0))
  %6 = load %0*, %0** @stdout, align 8
  %7 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @15, i32 0, i32 0), %0* %6)
  %8 = call i8* @setlocale(i32 5, i8* null) #11
  store i8* %8, i8** %1, align 8
  %9 = load i8*, i8** %1, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %19

; <label>:11:                                     ; preds = %0
  %12 = load i8*, i8** %1, align 8
  %13 = call i32 @strncmp(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @16, i32 0, i32 0), i64 3) #14
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

; <label>:15:                                     ; preds = %11
  %16 = load i8*, i8** @program_name, align 8
  %17 = call i8* @last_component(i8* %16) #14
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @17, i32 0, i32 0), i8* %17)
  br label %19

; <label>:19:                                     ; preds = %15, %11, %0
  %20 = load i8*, i8** @program_name, align 8
  %21 = call i8* @last_component(i8* %20) #14
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @18, i32 0, i32 0), i8* %21)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #5

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #6

declare i32 @fprintf(%0*, i8*, ...) #3

; Function Attrs: noinline nounwind uwtable
define void @klee_dump_memory() #2 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32, i8**) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i8*], align 16
  %11 = alloca i8, align 1
  %12 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 -1, i32* %6
  %13 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0)) #11
  %14 = icmp ne i8* %13, null
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %7, align 1
  store i32 0, i32* %8
  store i32 0, i32* %9
  store i8 10, i8* %11
  %16 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @21, i32 0, i32 0), i8** %16, align 8
  %17 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @21, i32 0, i32 0), i8** %17, align 16
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  call void @set_program_name(i8* %20)
  %21 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @22, i32 0, i32 0)) #11
  %22 = call zeroext i1 @hard_locale(i32 3)
  %23 = zext i1 %22 to i8
  store i8 %23, i8* @23, align 1
  %24 = call i32 @atexit(void ()* @close_stdout) #11
  store i64 0, i64* @24, align 8
  store i64 0, i64* @25, align 8
  store i64 -1, i64* @26, align 8
  store i8 1, i8* @27, align 1
  store i8 1, i8* @28, align 1
  store i8 0, i8* @29, align 1
  store i32 1, i32* @30, align 4
  store i32 0, i32* @31, align 4
  br label %25

; <label>:25:                                     ; preds = %2, %29
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @optind, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %37, label %29

; <label>:29:                                     ; preds = %25
  %30 = load i8**, i8*** %5, align 8
  %31 = load i32, i32* @optind, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @optind, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i8*, i8** %30, i64 %33
  %35 = load i8*, i8** %34, align 8
  store i32 1, i32* %9, align 4
  %36 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  store i8* %35, i8** %36, align 8
  br label %25

; <label>:37:                                     ; preds = %25
  call void @klee_dump_memory()
  %38 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  %39 = load i8*, i8** %38, align 16
  %40 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 1
  %41 = load i8*, i8** %40, align 8
  %42 = load i8, i8* %11, align 1
  call void @145(i8* %39, i8* %41, i8 signext %42)
  call void @exit(i32 0) #13
  unreachable
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #5

; Function Attrs: nounwind
declare i32 @atexit(void ()*) #5

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %2*, i32*) #5

declare void @error(i32, i32, i8*, ...) #3

; Function Attrs: noinline nounwind uwtable
define internal i64 @144(i8*, i8*) #2 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @xstrtoul(i8* %6, i8** null, i32 10, i64* %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @22, i32 0, i32 0))
  %switch = icmp ult i32 %7, 2
  br i1 %switch, label %11, label %8

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %3, align 8
  %10 = load i8*, i8** %4, align 8
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @51, i32 0, i32 0), i8* %9, i8* %10)
  br label %11

; <label>:11:                                     ; preds = %2, %8
  %12 = load i64, i64* %5, align 8
  %13 = icmp ult i64 %12, -1
  %14 = load i64, i64* %5, align 8
  %15 = select i1 %13, i64 %14, i64 -1
  ret i64 %15
}

; Function Attrs: noinline nounwind uwtable
define internal void @145(i8*, i8*, i8 signext) #2 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %5, align 8
  %8 = alloca %5, align 8
  %9 = alloca %5*, align 8
  %10 = alloca %5*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %5*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %5*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8 %2, i8* %6, align 1
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @21, i32 0, i32 0)) #14
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %36, label %27

; <label>:27:                                     ; preds = %3
  %28 = load i8*, i8** %4, align 8
  %29 = load %0*, %0** @stdin, align 8
  %30 = call %0* @freopen_safer(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @46, i32 0, i32 0), %0* %29)
  %31 = icmp ne %0* %30, null
  br i1 %31, label %36, label %32

; <label>:32:                                     ; preds = %27
  %33 = call i32* @__errno_location() #15
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %4, align 8
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @47, i32 0, i32 0), i8* %35)
  br label %36

; <label>:36:                                     ; preds = %32, %27, %3
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @21, i32 0, i32 0)) #14
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %49, label %40

; <label>:40:                                     ; preds = %36
  %41 = load i8*, i8** %5, align 8
  %42 = load %0*, %0** @stdout, align 8
  %43 = call %0* @freopen_safer(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @48, i32 0, i32 0), %0* %42)
  %44 = icmp ne %0* %43, null
  br i1 %44, label %49, label %45

; <label>:45:                                     ; preds = %40
  %46 = call i32* @__errno_location() #15
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %5, align 8
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @47, i32 0, i32 0), i8* %48)
  br label %49

; <label>:49:                                     ; preds = %45, %40, %36
  %50 = load %0*, %0** @stdin, align 8
  call void @fadvise(%0* %50, i32 2)
  store %5* %7, %5** %9, align 8
  store %5* %8, %5** %10, align 8
  %51 = load %5*, %5** %9, align 8
  call void @initbuffer(%5* %51)
  %52 = load %5*, %5** %10, align 8
  call void @initbuffer(%5* %52)
  store i64 0, i64* %18, align 8
  store i8 1, i8* %19, align 1
  %53 = load %5*, %5** %10, align 8
  %54 = load %0*, %0** @stdin, align 8
  %55 = load i8, i8* %6, align 1
  %56 = call %5* @readlinebuffer_delim(%5* %53, %0* %54, i8 signext %55)
  %57 = icmp eq %5* %56, null
  br i1 %57, label %140, label %58

; <label>:58:                                     ; preds = %49
  %59 = load %5*, %5** %10, align 8
  %60 = call i8* @146(%5* %59) #14
  store i8* %60, i8** %16, align 8
  %61 = load %5*, %5** %10, align 8
  %62 = getelementptr inbounds %5, %5* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = sub i64 %63, 1
  %65 = load i8*, i8** %16, align 8
  %66 = load %5*, %5** %10, align 8
  %67 = getelementptr inbounds %5, %5* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = ptrtoint i8* %65 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = sub i64 %64, %71
  store i64 %72, i64* %17, align 8
  br label %73

; <label>:73:                                     ; preds = %136, %58
  %74 = load %0*, %0** @stdin, align 8
  %75 = call i32 @feof_unlocked(%0* %74) #11
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  br i1 %77, label %78, label %137

; <label>:78:                                     ; preds = %73
  %79 = load %5*, %5** %9, align 8
  %80 = load %0*, %0** @stdin, align 8
  %81 = load i8, i8* %6, align 1
  %82 = call %5* @readlinebuffer_delim(%5* %79, %0* %80, i8 signext %81)
  %83 = icmp eq %5* %82, null
  br i1 %83, label %84, label %88

; <label>:84:                                     ; preds = %78
  %85 = load %0*, %0** @stdin, align 8
  %86 = call i32 @ferror_unlocked(%0* %85) #11
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %140, label %137

; <label>:88:                                     ; preds = %78
  %89 = load %5*, %5** %9, align 8
  %90 = call i8* @146(%5* %89) #14
  store i8* %90, i8** %21, align 8
  %91 = load %5*, %5** %9, align 8
  %92 = getelementptr inbounds %5, %5* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = sub i64 %93, 1
  %95 = load i8*, i8** %21, align 8
  %96 = load %5*, %5** %9, align 8
  %97 = getelementptr inbounds %5, %5* %96, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = ptrtoint i8* %95 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = sub i64 %94, %101
  store i64 %102, i64* %22, align 8
  %103 = load i8*, i8** %21, align 8
  %104 = load i8*, i8** %16, align 8
  %105 = load i64, i64* %22, align 8
  %106 = load i64, i64* %17, align 8
  %107 = call zeroext i1 @147(i8* %103, i8* %104, i64 %105, i64 %106)
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %20, align 1
  %110 = load i8, i8* %20, align 1
  %111 = trunc i8 %110 to i1
  %112 = zext i1 %111 to i64
  %113 = load i64, i64* %18, align 8
  %114 = add i64 %113, %112
  store i64 %114, i64* %18, align 8
  %115 = load i64, i64* %18, align 8
  %116 = icmp eq i64 %115, -1
  br i1 %116, label %117, label %120

; <label>:117:                                    ; preds = %88
  %118 = load i64, i64* %18, align 8
  %119 = add i64 %118, -1
  store i64 %119, i64* %18, align 8
  br label %120

; <label>:120:                                    ; preds = %88, %117
  %121 = load i8, i8* %20, align 1
  %122 = trunc i8 %121 to i1
  br i1 %122, label %136, label %123

; <label>:123:                                    ; preds = %120
  %124 = load %5*, %5** %10, align 8
  %125 = load i8, i8* %20, align 1
  %126 = trunc i8 %125 to i1
  %127 = load i64, i64* %18, align 8
  call void @148(%5* %124, i1 zeroext %126, i64 %127)
  %128 = load %5*, %5** %10, align 8
  store %5* %128, %5** %23, align 8
  %129 = load %5*, %5** %9, align 8
  store %5* %129, %5** %10, align 8
  %130 = load %5*, %5** %23, align 8
  store %5* %130, %5** %9, align 8
  %131 = load i8*, i8** %21, align 8
  store i8* %131, i8** %16, align 8
  %132 = load i64, i64* %22, align 8
  store i64 %132, i64* %17, align 8
  %133 = load i8, i8* %20, align 1
  %134 = trunc i8 %133 to i1
  br i1 %134, label %136, label %135

; <label>:135:                                    ; preds = %123
  store i64 0, i64* %18, align 8
  br label %136

; <label>:136:                                    ; preds = %123, %135, %120
  br label %73

; <label>:137:                                    ; preds = %84, %73
  %138 = load %5*, %5** %10, align 8
  %139 = load i64, i64* %18, align 8
  call void @148(%5* %138, i1 zeroext false, i64 %139)
  br label %140

; <label>:140:                                    ; preds = %84, %49, %137
  %141 = load %0*, %0** @stdin, align 8
  %142 = call i32 @ferror_unlocked(%0* %141) #11
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %148, label %144

; <label>:144:                                    ; preds = %140
  %145 = load %0*, %0** @stdin, align 8
  %146 = call i32 @rpl_fclose(%0* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

; <label>:148:                                    ; preds = %144, %140
  %149 = load i8*, i8** %4, align 8
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @49, i32 0, i32 0), i8* %149)
  br label %150

; <label>:150:                                    ; preds = %148, %144
  %151 = getelementptr inbounds %5, %5* %7, i32 0, i32 2
  %152 = load i8*, i8** %151, align 8
  call void @free(i8* %152) #11
  %153 = getelementptr inbounds %5, %5* %8, i32 0, i32 2
  %154 = load i8*, i8** %153, align 8
  call void @free(i8* %154) #11
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #6

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

; Function Attrs: nounwind
declare i32 @feof_unlocked(%0*) #5

; Function Attrs: noinline nounwind readonly uwtable
define internal i8* @146(%5*) #8 {
  %2 = alloca %5*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %5* %0, %5** %2, align 8
  %7 = load %5*, %5** %2, align 8
  %8 = getelementptr inbounds %5, %5* %7, i32 0, i32 2
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %4, align 8
  %10 = load %5*, %5** %2, align 8
  %11 = getelementptr inbounds %5, %5* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = sub i64 %12, 1
  store i64 %13, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %3, align 8
  br label %14

; <label>:14:                                     ; preds = %.critedge2, %1
  %15 = load i64, i64* %3, align 8
  %16 = icmp ult i64 %15, 0
  br i1 %16, label %17, label %.critedge

; <label>:17:                                     ; preds = %14
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %.critedge

; <label>:21:                                     ; preds = %17
  br label %22

; <label>:22:                                     ; preds = %41, %21
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %.critedge1

; <label>:26:                                     ; preds = %22
  %27 = call i16** @__ctype_b_loc() #15
  %28 = load i16*, i16** %27, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = call zeroext i8 @149(i8 signext %32)
  %34 = zext i8 %33 to i32
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i16, i16* %28, i64 %35
  %37 = load i16, i16* %36, align 2
  %38 = zext i16 %37 to i32
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %.critedge1

; <label>:41:                                     ; preds = %26
  %42 = load i64, i64* %6, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %6, align 8
  br label %22

.critedge1:                                       ; preds = %22, %26
  br label %44

; <label>:44:                                     ; preds = %64, %.critedge1
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %5, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %.critedge2

; <label>:48:                                     ; preds = %44
  %49 = call i16** @__ctype_b_loc() #15
  %50 = load i16*, i16** %49, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = call zeroext i8 @149(i8 signext %54)
  %56 = zext i8 %55 to i32
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i16, i16* %50, i64 %57
  %59 = load i16, i16* %58, align 2
  %60 = zext i16 %59 to i32
  %61 = and i32 %60, 1
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  br i1 %63, label %64, label %.critedge2

; <label>:64:                                     ; preds = %48
  %65 = load i64, i64* %6, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %6, align 8
  br label %44

.critedge2:                                       ; preds = %48, %44
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %3, align 8
  br label %14

.critedge:                                        ; preds = %14, %17
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* %6, align 8
  %71 = sub i64 %69, %70
  %72 = icmp ult i64 0, %71
  br i1 %72, label %77, label %73

; <label>:73:                                     ; preds = %.critedge
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* %6, align 8
  %76 = sub i64 %74, %75
  br label %77

; <label>:77:                                     ; preds = %.critedge, %73
  %78 = phi i64 [ %76, %73 ], [ 0, %.critedge ]
  %79 = load i64, i64* %6, align 8
  %80 = add i64 %79, %78
  store i64 %80, i64* %6, align 8
  %81 = load %5*, %5** %2, align 8
  %82 = getelementptr inbounds %5, %5* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = load i64, i64* %6, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  ret i8* %85
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @147(i8*, i8*, i64, i64) #2 {
  %5 = alloca i1, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i64, i64* %8, align 8
  %11 = icmp ult i64 -1, %10
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %4
  store i64 -1, i64* %8, align 8
  br label %13

; <label>:13:                                     ; preds = %12, %4
  %14 = load i64, i64* %9, align 8
  %15 = icmp ult i64 -1, %14
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %13
  store i64 -1, i64* %9, align 8
  br label %17

; <label>:17:                                     ; preds = %16, %13
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @xmemcoll(i8* %18, i64 %19, i8* %20, i64 %21)
  %23 = icmp ne i32 %22, 0
  store i1 %23, i1* %5, align 1
  %24 = load i1, i1* %5, align 1
  ret i1 %24
}

declare i64 @fwrite_unlocked(i8*, i64, i64, %0*) #3

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%0*) #5

declare i32 @putchar_unlocked(i32) #3

; Function Attrs: noinline nounwind uwtable
define internal void @148(%5*, i1 zeroext, i64) #2 {
  %4 = alloca %5*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  store %5* %0, %5** %4, align 8
  %7 = zext i1 %1 to i8
  store i8 %7, i8* %5, align 1
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %22, label %10

; <label>:10:                                     ; preds = %3
  %11 = load i8, i8* %5, align 1
  %12 = trunc i8 %11 to i1
  br i1 %12, label %22, label %13

; <label>:13:                                     ; preds = %10
  %14 = load %5*, %5** %4, align 8
  %15 = getelementptr inbounds %5, %5* %14, i32 0, i32 2
  %16 = load i8*, i8** %15, align 8
  %17 = load %5*, %5** %4, align 8
  %18 = getelementptr inbounds %5, %5* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %0*, %0** @stdout, align 8
  %21 = call i64 @fwrite_unlocked(i8* %16, i64 1, i64 %19, %0* %20)
  br label %22

; <label>:22:                                     ; preds = %3, %10, %13
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #6

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #7

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @149(i8 signext) #2 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  ret i8 %3
}

; Function Attrs: noinline nounwind uwtable
define internal void @150() #2 {
  call void @usage(i32 1)
  unreachable
}

; Function Attrs: noinline nounwind readonly uwtable
define i64 @argmatch(i8*, i8**, i8*, i64) #8 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 -1, i64* %12, align 8
  store i8 0, i8* %13, align 1
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @strlen(i8* %14) #14
  store i64 %15, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %16

; <label>:16:                                     ; preds = %64, %4
  %17 = load i8**, i8*** %7, align 8
  %18 = load i64, i64* %10, align 8
  %19 = getelementptr inbounds i8*, i8** %17, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %67

; <label>:22:                                     ; preds = %16
  %23 = load i8**, i8*** %7, align 8
  %24 = load i64, i64* %10, align 8
  %25 = getelementptr inbounds i8*, i8** %23, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i64, i64* %11, align 8
  %29 = call i32 @strncmp(i8* %26, i8* %27, i64 %28) #14
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %64, label %31

; <label>:31:                                     ; preds = %22
  %32 = load i8**, i8*** %7, align 8
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @strlen(i8* %35) #14
  %37 = load i64, i64* %11, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

; <label>:39:                                     ; preds = %31
  %40 = load i64, i64* %10, align 8
  store i64 %40, i64* %5, align 8
  br label %73

; <label>:41:                                     ; preds = %31
  %42 = load i64, i64* %12, align 8
  %43 = icmp eq i64 %42, -1
  br i1 %43, label %44, label %46

; <label>:44:                                     ; preds = %41
  %45 = load i64, i64* %10, align 8
  store i64 %45, i64* %12, align 8
  br label %64

; <label>:46:                                     ; preds = %41
  %47 = load i8*, i8** %8, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %63, label %49

; <label>:49:                                     ; preds = %46
  %50 = load i8*, i8** %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %12, align 8
  %53 = mul i64 %51, %52
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = load i8*, i8** %8, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* %10, align 8
  %58 = mul i64 %56, %57
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @memcmp(i8* %54, i8* %59, i64 %60) #14
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

; <label>:63:                                     ; preds = %49, %46
  store i8 1, i8* %13, align 1
  br label %64

; <label>:64:                                     ; preds = %22, %44, %63, %49
  %65 = load i64, i64* %10, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %10, align 8
  br label %16

; <label>:67:                                     ; preds = %16
  %68 = load i8, i8* %13, align 1
  %69 = trunc i8 %68 to i1
  br i1 %69, label %70, label %71

; <label>:70:                                     ; preds = %67
  store i64 -2, i64* %5, align 8
  br label %73

; <label>:71:                                     ; preds = %67
  %72 = load i64, i64* %12, align 8
  store i64 %72, i64* %5, align 8
  br label %73

; <label>:73:                                     ; preds = %71, %70, %39
  %74 = load i64, i64* %5, align 8
  ret i64 %74
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

; Function Attrs: noinline nounwind uwtable
define void @argmatch_invalid(i8*, i8*, i64) #2 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp eq i64 %8, -1
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @67, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @68, i32 0, i32 0)
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i8* @quotearg_n_style(i32 0, i32 6, i8* %13)
  %15 = load i8*, i8** %4, align 8
  %16 = call i8* @quote_n(i32 1, i8* %15)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %12, i8* %14, i8* %16)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @argmatch_valid(i8**, i8*, i64) #2 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i8* null, i8** %8, align 8
  %9 = load %0*, %0** @stderr, align 8
  %10 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @69, i32 0, i32 0), %0* %9)
  store i64 0, i64* %7, align 8
  br label %11

; <label>:11:                                     ; preds = %51, %3
  %12 = load i8**, i8*** %4, align 8
  %13 = load i64, i64* %7, align 8
  %14 = getelementptr inbounds i8*, i8** %12, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %54

; <label>:17:                                     ; preds = %11
  %18 = load i64, i64* %7, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %30, label %20

; <label>:20:                                     ; preds = %17
  %21 = load i8*, i8** %8, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = mul i64 %23, %24
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @memcmp(i8* %21, i8* %26, i64 %27) #14
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

; <label>:30:                                     ; preds = %20, %17
  %31 = load %0*, %0** @stderr, align 8
  %32 = load i8**, i8*** %4, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @quote(i8* %35)
  %37 = call i32 (%0*, i8*, ...) @fprintf(%0* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @70, i32 0, i32 0), i8* %36)
  %38 = load i8*, i8** %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = mul i64 %39, %40
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  store i8* %42, i8** %8, align 8
  br label %51

; <label>:43:                                     ; preds = %20
  %44 = load %0*, %0** @stderr, align 8
  %45 = load i8**, i8*** %4, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds i8*, i8** %45, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call i8* @quote(i8* %48)
  %50 = call i32 (%0*, i8*, ...) @fprintf(%0* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @71, i32 0, i32 0), i8* %49)
  br label %51

; <label>:51:                                     ; preds = %30, %43
  %52 = load i64, i64* %7, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %7, align 8
  br label %11

; <label>:54:                                     ; preds = %11
  %55 = load %0*, %0** @stderr, align 8
  %56 = call i32 @putc_unlocked(i32 10, %0* %55)
  ret void
}

declare i32 @putc_unlocked(i32, %0*) #3

; Function Attrs: noinline nounwind uwtable
define i64 @__xargmatch_internal(i8*, i8*, i8**, i8*, i64, void ()*) #2 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca void ()*, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store void ()* %5, void ()** %13, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = load i8**, i8*** %10, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = load i64, i64* %12, align 8
  %19 = call i64 @argmatch(i8* %15, i8** %16, i8* %17, i64 %18) #14
  store i64 %19, i64* %14, align 8
  %20 = load i64, i64* %14, align 8
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %6
  %23 = load i64, i64* %14, align 8
  store i64 %23, i64* %7, align 8
  br label %32

; <label>:24:                                     ; preds = %6
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i64, i64* %14, align 8
  call void @argmatch_invalid(i8* %25, i8* %26, i64 %27)
  %28 = load i8**, i8*** %10, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = load i64, i64* %12, align 8
  call void @argmatch_valid(i8** %28, i8* %29, i64 %30)
  %31 = load void ()*, void ()** %13, align 8
  call void %31()
  store i64 -1, i64* %7, align 8
  br label %32

; <label>:32:                                     ; preds = %24, %22
  %33 = load i64, i64* %7, align 8
  ret i64 %33
}

; Function Attrs: noinline nounwind readonly uwtable
define i8* @argmatch_to_argument(i8*, i8**, i8*, i64) #8 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %11

; <label>:11:                                     ; preds = %32, %4
  %12 = load i8**, i8*** %7, align 8
  %13 = load i64, i64* %10, align 8
  %14 = getelementptr inbounds i8*, i8** %12, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %35

; <label>:17:                                     ; preds = %11
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = mul i64 %20, %21
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @memcmp(i8* %18, i8* %23, i64 %24) #14
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

; <label>:27:                                     ; preds = %17
  %28 = load i8**, i8*** %7, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds i8*, i8** %28, i64 %29
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %5, align 8
  br label %36

; <label>:32:                                     ; preds = %17
  %33 = load i64, i64* %10, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %10, align 8
  br label %11

; <label>:35:                                     ; preds = %11
  store i8* null, i8** %5, align 8
  br label %36

; <label>:36:                                     ; preds = %35, %27
  %37 = load i8*, i8** %5, align 8
  ret i8* %37
}

; Function Attrs: noinline nounwind uwtable
define void @close_stdout_set_file_name(i8*) #2 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  store i8* %3, i8** @72, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) #2 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  %4 = load i8, i8* %2, align 1
  %5 = trunc i8 %4 to i1
  %6 = zext i1 %5 to i8
  store i8 %6, i8* @73, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @close_stdout() #2 {
  %1 = alloca i8*, align 8
  %2 = load %0*, %0** @stdout, align 8
  %3 = call i32 @close_stream(%0* %2)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %25

; <label>:5:                                      ; preds = %0
  %6 = load i8, i8* @73, align 1
  %7 = trunc i8 %6 to i1
  br i1 %7, label %8, label %12

; <label>:8:                                      ; preds = %5
  %9 = call i32* @__errno_location() #15
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 32
  br i1 %11, label %25, label %12

; <label>:12:                                     ; preds = %8, %5
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @74, i32 0, i32 0), i8** %1, align 8
  %13 = load i8*, i8** @72, align 8
  %14 = icmp ne i8* %13, null
  %15 = call i32* @__errno_location() #15
  %16 = load i32, i32* %15, align 4
  br i1 %14, label %17, label %21

; <label>:17:                                     ; preds = %12
  %18 = load i8*, i8** @72, align 8
  %19 = call i8* @quotearg_colon(i8* %18)
  %20 = load i8*, i8** %1, align 8
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @75, i32 0, i32 0), i8* %19, i8* %20)
  br label %23

; <label>:21:                                     ; preds = %12
  %22 = load i8*, i8** %1, align 8
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @76, i32 0, i32 0), i8* %22)
  br label %23

; <label>:23:                                     ; preds = %21, %17
  %24 = load volatile i32, i32* @exit_failure, align 4
  call void @_exit(i32 %24) #16
  unreachable

; <label>:25:                                     ; preds = %8, %0
  %26 = load %0*, %0** @stderr, align 8
  %27 = call i32 @close_stream(%0* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

; <label>:29:                                     ; preds = %25
  %30 = load volatile i32, i32* @exit_failure, align 4
  call void @_exit(i32 %30) #16
  unreachable

; <label>:31:                                     ; preds = %25
  ret void
}

; Function Attrs: noreturn
declare void @_exit(i32) #9

; Function Attrs: noinline nounwind readonly uwtable
define i8* @last_component(i8*) #8 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  store i8* %7, i8** %3, align 8
  store i8 0, i8* %5, align 1
  br label %8

; <label>:8:                                      ; preds = %14, %1
  %9 = load i8*, i8** %3, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 47
  %13 = load i8*, i8** %3, align 8
  br i1 %12, label %14, label %16

; <label>:14:                                     ; preds = %8
  %15 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %15, i8** %3, align 8
  br label %8

; <label>:16:                                     ; preds = %8
  store i8* %13, i8** %4, align 8
  br label %17

; <label>:17:                                     ; preds = %32, %16
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %35

; <label>:21:                                     ; preds = %17
  %22 = load i8*, i8** %4, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 47
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %21
  store i8 1, i8* %5, align 1
  br label %32

; <label>:27:                                     ; preds = %21
  %28 = load i8, i8* %5, align 1
  %29 = trunc i8 %28 to i1
  br i1 %29, label %30, label %32

; <label>:30:                                     ; preds = %27
  %31 = load i8*, i8** %4, align 8
  store i8* %31, i8** %3, align 8
  store i8 0, i8* %5, align 1
  br label %32

; <label>:32:                                     ; preds = %26, %30, %27
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %4, align 8
  br label %17

; <label>:35:                                     ; preds = %17
  %36 = load i8*, i8** %3, align 8
  ret i8* %36
}

; Function Attrs: noinline nounwind readonly uwtable
define i64 @base_len(i8*) #8 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i64 0, i64* %4, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i64 @strlen(i8* %5) #14
  store i64 %6, i64* %3, align 8
  br label %7

; <label>:7:                                      ; preds = %18, %1
  %8 = load i64, i64* %3, align 8
  %9 = icmp ult i64 1, %8
  br i1 %9, label %10, label %.critedge

; <label>:10:                                     ; preds = %7
  %11 = load i8*, i8** %2, align 8
  %12 = load i64, i64* %3, align 8
  %13 = sub i64 %12, 1
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 47
  br i1 %17, label %18, label %.critedge

; <label>:18:                                     ; preds = %10
  %19 = load i64, i64* %3, align 8
  %20 = add i64 %19, -1
  store i64 %20, i64* %3, align 8
  br label %7

.critedge:                                        ; preds = %7, %10
  %21 = load i64, i64* %3, align 8
  ret i64 %21
}

; Function Attrs: noinline nounwind uwtable
define void @fdadvise(i32, i64, i64, i32) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @posix_fadvise(i32 %10, i64 %11, i64 %12, i32 %13) #11
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  ret void
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) #5

; Function Attrs: noinline nounwind uwtable
define void @fadvise(%0*, i32) #2 {
  %3 = alloca %0*, align 8
  %4 = alloca i32, align 4
  store %0* %0, %0** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %0*, %0** %3, align 8
  %6 = icmp ne %0* %5, null
  br i1 %6, label %7, label %11

; <label>:7:                                      ; preds = %2
  %8 = load %0*, %0** %3, align 8
  %9 = call i32 @fileno(%0* %8) #11
  %10 = load i32, i32* %4, align 4
  call void @fdadvise(i32 %9, i64 0, i64 0, i32 %10)
  br label %11

; <label>:11:                                     ; preds = %7, %2
  ret void
}

; Function Attrs: nounwind
declare i32 @fileno(%0*) #5

; Function Attrs: noinline nounwind uwtable
define %0* @freopen_safer(i8*, i8*, %0*) #2 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %0*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %0* %2, %0** %6, align 8
  store i8 0, i8* %7, align 1
  store i8 0, i8* %8, align 1
  store i8 0, i8* %9, align 1
  %11 = load %0*, %0** %6, align 8
  %12 = call i32 @fileno(%0* %11) #11
  switch i32 %12, label %13 [
    i32 2, label %17
    i32 1, label %21
    i32 0, label %25
  ]

; <label>:13:                                     ; preds = %3
  %14 = call i32 @dup2(i32 2, i32 2) #11
  %15 = icmp ne i32 %14, 2
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %13
  store i8 1, i8* %9, align 1
  br label %17

; <label>:17:                                     ; preds = %13, %16, %3
  %18 = call i32 @dup2(i32 1, i32 1) #11
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %17
  store i8 1, i8* %8, align 1
  br label %21

; <label>:21:                                     ; preds = %17, %20, %3
  %22 = call i32 @dup2(i32 0, i32 0) #11
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %21
  store i8 1, i8* %7, align 1
  br label %25

; <label>:25:                                     ; preds = %3, %24, %21
  %26 = load i8, i8* %7, align 1
  %27 = trunc i8 %26 to i1
  br i1 %27, label %28, label %31

; <label>:28:                                     ; preds = %25
  %29 = call zeroext i1 @151(i32 0)
  br i1 %29, label %31, label %30

; <label>:30:                                     ; preds = %28
  store %0* null, %0** %6, align 8
  br label %48

; <label>:31:                                     ; preds = %28, %25
  %32 = load i8, i8* %8, align 1
  %33 = trunc i8 %32 to i1
  br i1 %33, label %34, label %37

; <label>:34:                                     ; preds = %31
  %35 = call zeroext i1 @151(i32 1)
  br i1 %35, label %37, label %36

; <label>:36:                                     ; preds = %34
  store %0* null, %0** %6, align 8
  br label %48

; <label>:37:                                     ; preds = %34, %31
  %38 = load i8, i8* %9, align 1
  %39 = trunc i8 %38 to i1
  br i1 %39, label %40, label %43

; <label>:40:                                     ; preds = %37
  %41 = call zeroext i1 @151(i32 2)
  br i1 %41, label %43, label %42

; <label>:42:                                     ; preds = %40
  store %0* null, %0** %6, align 8
  br label %48

; <label>:43:                                     ; preds = %40, %37
  %44 = load i8*, i8** %4, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = load %0*, %0** %6, align 8
  %47 = call %0* @freopen(i8* %44, i8* %45, %0* %46)
  store %0* %47, %0** %6, align 8
  br label %48

; <label>:48:                                     ; preds = %36, %43, %42, %30
  %49 = call i32* @__errno_location() #15
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %10, align 4
  %51 = load i8, i8* %9, align 1
  %52 = trunc i8 %51 to i1
  br i1 %52, label %53, label %55

; <label>:53:                                     ; preds = %48
  %54 = call i32 @close(i32 2)
  br label %55

; <label>:55:                                     ; preds = %53, %48
  %56 = load i8, i8* %8, align 1
  %57 = trunc i8 %56 to i1
  br i1 %57, label %58, label %60

; <label>:58:                                     ; preds = %55
  %59 = call i32 @close(i32 1)
  br label %60

; <label>:60:                                     ; preds = %58, %55
  %61 = load i8, i8* %7, align 1
  %62 = trunc i8 %61 to i1
  br i1 %62, label %63, label %65

; <label>:63:                                     ; preds = %60
  %64 = call i32 @close(i32 0)
  br label %65

; <label>:65:                                     ; preds = %63, %60
  %66 = load %0*, %0** %6, align 8
  %67 = icmp ne %0* %66, null
  br i1 %67, label %71, label %68

; <label>:68:                                     ; preds = %65
  %69 = load i32, i32* %10, align 4
  %70 = call i32* @__errno_location() #15
  store i32 %69, i32* %70, align 4
  br label %71

; <label>:71:                                     ; preds = %68, %65
  %72 = load %0*, %0** %6, align 8
  ret %0* %72
}

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) #5

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @151(i32) #2 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @77, i32 0, i32 0), i32 0)
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %17

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp sle i32 0, %10
  br i1 %11, label %12, label %16

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @close(i32 %13)
  %15 = call i32* @__errno_location() #15
  store i32 9, i32* %15, align 4
  br label %16

; <label>:16:                                     ; preds = %12, %9
  store i1 false, i1* %2, align 1
  br label %18

; <label>:17:                                     ; preds = %1
  store i1 true, i1* %2, align 1
  br label %18

; <label>:18:                                     ; preds = %17, %16
  %19 = load i1, i1* %2, align 1
  ret i1 %19
}

declare %0* @freopen(i8*, i8*, %0*) #3

declare i32 @close(i32) #3

declare i32 @open(i8*, i32, ...) #3

; Function Attrs: noinline nounwind uwtable
define zeroext i1 @hard_locale(i32) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i8 1, i8* %3, align 1
  %5 = load i32, i32* %2, align 4
  %6 = call i8* @setlocale(i32 %5, i8* null) #11
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %18

; <label>:9:                                      ; preds = %1
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @78, i32 0, i32 0)) #14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

; <label>:13:                                     ; preds = %9
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @79, i32 0, i32 0)) #14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %13, %9
  store i8 0, i8* %3, align 1
  br label %18

; <label>:18:                                     ; preds = %13, %17, %1
  %19 = load i8, i8* %3, align 1
  %20 = trunc i8 %19 to i1
  ret i1 %20
}

; Function Attrs: noinline nounwind uwtable
define void @initbuffer(%5*) #2 {
  %2 = alloca %5*, align 8
  store %5* %0, %5** %2, align 8
  %3 = load %5*, %5** %2, align 8
  %4 = bitcast %5* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #10

; Function Attrs: noinline nounwind uwtable
define %5* @readlinebuffer(%5*, %0*) #2 {
  %3 = alloca %5*, align 8
  %4 = alloca %0*, align 8
  store %5* %0, %5** %3, align 8
  store %0* %1, %0** %4, align 8
  %5 = load %5*, %5** %3, align 8
  %6 = load %0*, %0** %4, align 8
  %7 = call %5* @readlinebuffer_delim(%5* %5, %0* %6, i8 signext 10)
  ret %5* %7
}

; Function Attrs: noinline nounwind uwtable
define %5* @readlinebuffer_delim(%5*, %0*, i8 signext) #2 {
  %4 = alloca %5*, align 8
  %5 = alloca %5*, align 8
  %6 = alloca %0*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %5* %0, %5** %5, align 8
  store %0* %1, %0** %6, align 8
  store i8 %2, i8* %7, align 1
  %13 = load %5*, %5** %5, align 8
  %14 = getelementptr inbounds %5, %5* %13, i32 0, i32 2
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %9, align 8
  %16 = load %5*, %5** %5, align 8
  %17 = getelementptr inbounds %5, %5* %16, i32 0, i32 2
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %10, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load %5*, %5** %5, align 8
  %21 = getelementptr inbounds %5, %5* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  store i8* %23, i8** %11, align 8
  %24 = load %0*, %0** %6, align 8
  %25 = call i32 @feof_unlocked(%0* %24) #11
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %3
  store %5* null, %5** %4, align 8
  br label %95

; <label>:28:                                     ; preds = %3
  br label %29

; <label>:29:                                     ; preds = %77, %28
  %30 = load %0*, %0** %6, align 8
  %31 = call i32 @getc_unlocked(%0* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %54

; <label>:34:                                     ; preds = %29
  %35 = load i8*, i8** %10, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = icmp eq i8* %35, %36
  br i1 %37, label %42, label %38

; <label>:38:                                     ; preds = %34
  %39 = load %0*, %0** %6, align 8
  %40 = call i32 @ferror_unlocked(%0* %39) #11
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %38, %34
  store %5* null, %5** %4, align 8
  br label %95

; <label>:43:                                     ; preds = %38
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 -1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = load i8, i8* %7, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %86, label %51

; <label>:51:                                     ; preds = %43
  %52 = load i8, i8* %7, align 1
  %53 = sext i8 %52 to i32
  store i32 %53, i32* %8, align 4
  br label %54

; <label>:54:                                     ; preds = %51, %29
  %55 = load i8*, i8** %10, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = icmp eq i8* %55, %56
  br i1 %57, label %58, label %77

; <label>:58:                                     ; preds = %54
  %59 = load %5*, %5** %5, align 8
  %60 = getelementptr inbounds %5, %5* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %12, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load %5*, %5** %5, align 8
  %64 = getelementptr inbounds %5, %5* %63, i32 0, i32 0
  %65 = call i8* @x2realloc(i8* %62, i64* %64)
  store i8* %65, i8** %9, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load i64, i64* %12, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8* %68, i8** %10, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load %5*, %5** %5, align 8
  %71 = getelementptr inbounds %5, %5* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = load %5*, %5** %5, align 8
  %74 = getelementptr inbounds %5, %5* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  store i8* %76, i8** %11, align 8
  br label %77

; <label>:77:                                     ; preds = %58, %54
  %78 = load i32, i32* %8, align 4
  %79 = trunc i32 %78 to i8
  %80 = load i8*, i8** %10, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %10, align 8
  store i8 %79, i8* %80, align 1
  %82 = load i32, i32* %8, align 4
  %83 = load i8, i8* %7, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %82, %84
  br i1 %85, label %29, label %86

; <label>:86:                                     ; preds = %43, %77
  %87 = load i8*, i8** %10, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = ptrtoint i8* %87 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = load %5*, %5** %5, align 8
  %93 = getelementptr inbounds %5, %5* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  %94 = load %5*, %5** %5, align 8
  store %5* %94, %5** %4, align 8
  br label %95

; <label>:95:                                     ; preds = %86, %42, %27
  %96 = load %5*, %5** %4, align 8
  ret %5* %96
}

declare i32 @getc_unlocked(%0*) #3

; Function Attrs: noinline nounwind uwtable
define void @freebuffer(%5*) #2 {
  %2 = alloca %5*, align 8
  store %5* %0, %5** %2, align 8
  %3 = load %5*, %5** %2, align 8
  %4 = getelementptr inbounds %5, %5* %3, i32 0, i32 2
  %5 = load i8*, i8** %4, align 8
  call void @free(i8* %5) #11
  ret void
}

; Function Attrs: noinline nounwind readonly uwtable
define i32 @memcasecmp(i8*, i8*, i64) #8 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load i8*, i8** %5, align 8
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %6, align 8
  store i8* %17, i8** %10, align 8
  store i64 0, i64* %8, align 8
  br label %18

; <label>:18:                                     ; preds = %44, %3
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %47

; <label>:22:                                     ; preds = %18
  %23 = load i8*, i8** %9, align 8
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = load i8, i8* %25, align 1
  store i8 %26, i8* %11, align 1
  %27 = load i8*, i8** %10, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i8, i8* %29, align 1
  store i8 %30, i8* %12, align 1
  %31 = load i8, i8* %11, align 1
  %32 = zext i8 %31 to i32
  %33 = call i32 @toupper(i32 %32) #14
  store i32 %33, i32* %13, align 4
  %34 = load i8, i8* %12, align 1
  %35 = zext i8 %34 to i32
  %36 = call i32 @toupper(i32 %35) #14
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %14, align 4
  %39 = sub nsw i32 %37, %38
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

; <label>:42:                                     ; preds = %22
  %43 = load i32, i32* %15, align 4
  store i32 %43, i32* %4, align 4
  br label %48

; <label>:44:                                     ; preds = %22
  %45 = load i64, i64* %8, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %8, align 8
  br label %18

; <label>:47:                                     ; preds = %18
  store i32 0, i32* %4, align 4
  br label %48

; <label>:48:                                     ; preds = %47, %42
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) #6

; Function Attrs: noinline nounwind uwtable
define i32 @posix2_version() #2 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i64 200809, i64* %1, align 8
  %5 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @80, i32 0, i32 0)) #11
  store i8* %5, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %21

; <label>:8:                                      ; preds = %0
  %9 = load i8*, i8** %2, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

; <label>:13:                                     ; preds = %8
  %14 = load i8*, i8** %2, align 8
  %15 = call i64 @strtol(i8* %14, i8** %3, i32 10) #11
  store i64 %15, i64* %4, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %21, label %19

; <label>:19:                                     ; preds = %13
  %20 = load i64, i64* %4, align 8
  store i64 %20, i64* %1, align 8
  br label %21

; <label>:21:                                     ; preds = %13, %19, %8, %0
  %22 = load i64, i64* %1, align 8
  %23 = icmp slt i64 %22, -2147483648
  br i1 %23, label %29, label %24

; <label>:24:                                     ; preds = %21
  %25 = load i64, i64* %1, align 8
  %26 = icmp slt i64 %25, 2147483647
  %27 = load i64, i64* %1, align 8
  %28 = select i1 %26, i64 %27, i64 2147483647
  br label %29

; <label>:29:                                     ; preds = %24, %21
  %30 = phi i64 [ -2147483648, %21 ], [ %28, %24 ]
  %31 = trunc i64 %30 to i32
  ret i32 %31
}

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #5

; Function Attrs: noinline nounwind uwtable
define void @set_program_name(i8*) #2 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %10

; <label>:7:                                      ; preds = %1
  %8 = load %0*, %0** @stderr, align 8
  %9 = call i32 @fputs(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @81, i32 0, i32 0), %0* %8)
  call void @abort() #13
  unreachable

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i8* @strrchr(i8* %11, i32 47) #14
  store i8* %12, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = icmp ne i8* %13, null
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8*, i8** %2, align 8
  %18 = select i1 %14, i8* %16, i8* %17
  store i8* %18, i8** %4, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = load i8*, i8** %2, align 8
  %21 = ptrtoint i8* %19 to i64
  %22 = ptrtoint i8* %20 to i64
  %23 = sub i64 %21, %22
  %24 = icmp sge i64 %23, 7
  br i1 %24, label %25, label %39

; <label>:25:                                     ; preds = %10
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 -7
  %28 = call i32 @strncmp(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @82, i32 0, i32 0), i64 7) #14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %39

; <label>:30:                                     ; preds = %25
  %31 = load i8*, i8** %4, align 8
  store i8* %31, i8** %2, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @strncmp(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @83, i32 0, i32 0), i64 3) #14
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

; <label>:35:                                     ; preds = %30
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 3
  store i8* %37, i8** %2, align 8
  %38 = load i8*, i8** %2, align 8
  store i8* %38, i8** @program_invocation_short_name, align 8
  br label %39

; <label>:39:                                     ; preds = %30, %35, %25, %10
  %40 = load i8*, i8** %2, align 8
  store i8* %40, i8** @program_name, align 8
  %41 = load i8*, i8** %2, align 8
  store i8* %41, i8** @program_invocation_name, align 8
  ret void
}

declare i32 @fputs(i8*, %0*) #3

; Function Attrs: noreturn nounwind
declare void @abort() #4

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #6

; Function Attrs: noinline nounwind uwtable
define %3* @clone_quoting_options(%3*) #2 {
  %2 = alloca %3*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %3*, align 8
  store %3* %0, %3** %2, align 8
  %5 = call i32* @__errno_location() #15
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %3*, %3** %2, align 8
  %8 = icmp ne %3* %7, null
  %9 = load %3*, %3** %2, align 8
  %10 = select i1 %8, %3* %9, %3* @92
  %11 = bitcast %3* %10 to i8*
  %12 = call noalias i8* @xmemdup(i8* %11, i64 56)
  %13 = bitcast i8* %12 to %3*
  store %3* %13, %3** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32* @__errno_location() #15
  store i32 %14, i32* %15, align 4
  %16 = load %3*, %3** %4, align 8
  ret %3* %16
}

; Function Attrs: noinline nounwind uwtable
define i32 @get_quoting_style(%3*) #2 {
  %2 = alloca %3*, align 8
  store %3* %0, %3** %2, align 8
  %3 = load %3*, %3** %2, align 8
  %4 = icmp ne %3* %3, null
  %5 = load %3*, %3** %2, align 8
  %6 = select i1 %4, %3* %5, %3* @92
  %7 = getelementptr inbounds %3, %3* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define void @set_quoting_style(%3*, i32) #2 {
  %3 = alloca %3*, align 8
  %4 = alloca i32, align 4
  store %3* %0, %3** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %3*, %3** %3, align 8
  %7 = icmp ne %3* %6, null
  %8 = load %3*, %3** %3, align 8
  %9 = select i1 %7, %3* %8, %3* @92
  %10 = getelementptr inbounds %3, %3* %9, i32 0, i32 0
  store i32 %5, i32* %10, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @set_char_quoting(%3*, i8 signext, i32) #2 {
  %4 = alloca %3*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %3* %0, %3** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %11 = load i8, i8* %5, align 1
  store i8 %11, i8* %7, align 1
  %12 = load %3*, %3** %4, align 8
  %13 = icmp ne %3* %12, null
  %14 = load %3*, %3** %4, align 8
  %15 = select i1 %13, %3* %14, %3* @92
  %16 = getelementptr inbounds %3, %3* %15, i32 0, i32 2
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i32 0, i32 0
  %18 = load i8, i8* %7, align 1
  %19 = zext i8 %18 to i64
  %20 = udiv i64 %19, 32
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  store i32* %21, i32** %8, align 8
  %22 = load i8, i8* %7, align 1
  %23 = zext i8 %22 to i64
  %24 = urem i64 %23, 32
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %9, align 4
  %29 = lshr i32 %27, %28
  %30 = and i32 %29, 1
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 1
  %33 = load i32, i32* %10, align 4
  %34 = xor i32 %32, %33
  %35 = load i32, i32* %9, align 4
  %36 = shl i32 %34, %35
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %37, align 4
  %39 = xor i32 %38, %36
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* %10, align 4
  ret i32 %40
}

; Function Attrs: noinline nounwind uwtable
define i32 @set_quoting_flags(%3*, i32) #2 {
  %3 = alloca %3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %3* %0, %3** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %3*, %3** %3, align 8
  %7 = icmp ne %3* %6, null
  br i1 %7, label %9, label %8

; <label>:8:                                      ; preds = %2
  store %3* @92, %3** %3, align 8
  br label %9

; <label>:9:                                      ; preds = %8, %2
  %10 = load %3*, %3** %3, align 8
  %11 = getelementptr inbounds %3, %3* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %3*, %3** %3, align 8
  %15 = getelementptr inbounds %3, %3* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %5, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define void @set_custom_quoting(%3*, i8*, i8*) #2 {
  %4 = alloca %3*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %3* %0, %3** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %3*, %3** %4, align 8
  %8 = icmp ne %3* %7, null
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %3
  store %3* @92, %3** %4, align 8
  br label %10

; <label>:10:                                     ; preds = %9, %3
  %11 = load %3*, %3** %4, align 8
  %12 = getelementptr inbounds %3, %3* %11, i32 0, i32 0
  store i32 8, i32* %12, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  %or.cond = and i1 %14, %16
  br i1 %or.cond, label %18, label %17

; <label>:17:                                     ; preds = %10
  call void @abort() #13
  unreachable

; <label>:18:                                     ; preds = %10
  %19 = load i8*, i8** %5, align 8
  %20 = load %3*, %3** %4, align 8
  %21 = getelementptr inbounds %3, %3* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load %3*, %3** %4, align 8
  %24 = getelementptr inbounds %3, %3* %23, i32 0, i32 4
  store i8* %22, i8** %24, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %3*) #2 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %3*, align 8
  %11 = alloca %3*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store %3* %4, %3** %10, align 8
  %14 = load %3*, %3** %10, align 8
  %15 = icmp ne %3* %14, null
  %16 = load %3*, %3** %10, align 8
  %17 = select i1 %15, %3* %16, %3* @92
  store %3* %17, %3** %11, align 8
  %18 = call i32* @__errno_location() #15
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %12, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load %3*, %3** %11, align 8
  %25 = getelementptr inbounds %3, %3* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %3*, %3** %11, align 8
  %28 = getelementptr inbounds %3, %3* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %3*, %3** %11, align 8
  %31 = getelementptr inbounds %3, %3* %30, i32 0, i32 2
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* %31, i32 0, i32 0
  %33 = load %3*, %3** %11, align 8
  %34 = getelementptr inbounds %3, %3* %33, i32 0, i32 3
  %35 = load i8*, i8** %34, align 8
  %36 = load %3*, %3** %11, align 8
  %37 = getelementptr inbounds %3, %3* %36, i32 0, i32 4
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @152(i8* %20, i64 %21, i8* %22, i64 %23, i32 %26, i32 %29, i32* %32, i8* %35, i8* %38)
  store i64 %39, i64* %13, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i32* @__errno_location() #15
  store i32 %40, i32* %41, align 4
  %42 = load i64, i64* %13, align 8
  ret i64 %42
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @152(i8*, i64, i8*, i64, i32, i32, i32*, i8*, i8*) #2 {
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  %27 = alloca i8, align 1
  %28 = alloca i8, align 1
  %29 = alloca i8, align 1
  %30 = alloca i64, align 8
  %31 = alloca i8, align 1
  %32 = alloca %6, align 4
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  store i8* %0, i8** %11, align 8
  store i64 %1, i64* %12, align 8
  store i8* %2, i8** %13, align 8
  store i64 %3, i64* %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  store i64 0, i64* %21, align 8
  store i8* null, i8** %22, align 8
  store i64 0, i64* %23, align 8
  store i8 0, i8* %24, align 1
  %37 = call i64 @__ctype_get_mb_cur_max() #11
  %38 = icmp eq i64 %37, 1
  %39 = zext i1 %38 to i8
  store i8 %39, i8* %25, align 1
  %40 = load i32, i32* %16, align 4
  %41 = and i32 %40, 2
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i8
  store i8 %43, i8* %26, align 1
  %44 = load i32, i32* %15, align 4
  switch i32 %44, label %115 [
    i32 4, label %45
    i32 3, label %46
    i32 5, label %61
    i32 6, label %62
    i32 7, label %62
    i32 8, label %62
    i32 1, label %98
    i32 2, label %99
    i32 0, label %114
  ]

; <label>:45:                                     ; preds = %9
  store i32 3, i32* %15, align 4
  store i8 1, i8* %26, align 1
  br label %46

; <label>:46:                                     ; preds = %9, %45
  %47 = load i8, i8* %26, align 1
  %48 = trunc i8 %47 to i1
  br i1 %48, label %60, label %49

; <label>:49:                                     ; preds = %46
  %50 = load i64, i64* %21, align 8
  %51 = load i64, i64* %12, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %57

; <label>:53:                                     ; preds = %49
  %54 = load i8*, i8** %11, align 8
  %55 = load i64, i64* %21, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8 34, i8* %56, align 1
  br label %57

; <label>:57:                                     ; preds = %53, %49
  %58 = load i64, i64* %21, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %21, align 8
  br label %60

; <label>:60:                                     ; preds = %57, %46
  store i8 1, i8* %24, align 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @93, i32 0, i32 0), i8** %22, align 8
  store i64 1, i64* %23, align 8
  br label %116

; <label>:61:                                     ; preds = %9
  store i8 1, i8* %24, align 1
  store i8 0, i8* %26, align 1
  br label %116

; <label>:62:                                     ; preds = %9, %9, %9
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 8
  br i1 %64, label %65, label %70

; <label>:65:                                     ; preds = %62
  %66 = load i32, i32* %15, align 4
  %67 = call i8* @153(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @94, i32 0, i32 0), i32 %66)
  store i8* %67, i8** %18, align 8
  %68 = load i32, i32* %15, align 4
  %69 = call i8* @153(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @95, i32 0, i32 0), i32 %68)
  store i8* %69, i8** %19, align 8
  br label %70

; <label>:70:                                     ; preds = %65, %62
  %71 = load i8, i8* %26, align 1
  %72 = trunc i8 %71 to i1
  br i1 %72, label %94, label %73

; <label>:73:                                     ; preds = %70
  %74 = load i8*, i8** %18, align 8
  store i8* %74, i8** %22, align 8
  br label %75

; <label>:75:                                     ; preds = %89, %73
  %76 = load i8*, i8** %22, align 8
  %77 = load i8, i8* %76, align 1
  %78 = icmp ne i8 %77, 0
  br i1 %78, label %79, label %94

; <label>:79:                                     ; preds = %75
  %80 = load i64, i64* %21, align 8
  %81 = load i64, i64* %12, align 8
  %82 = icmp ult i64 %80, %81
  br i1 %82, label %83, label %89

; <label>:83:                                     ; preds = %79
  %84 = load i8*, i8** %22, align 8
  %85 = load i8, i8* %84, align 1
  %86 = load i8*, i8** %11, align 8
  %87 = load i64, i64* %21, align 8
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8 %85, i8* %88, align 1
  br label %89

; <label>:89:                                     ; preds = %83, %79
  %90 = load i64, i64* %21, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %21, align 8
  %92 = load i8*, i8** %22, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %22, align 8
  br label %75

; <label>:94:                                     ; preds = %75, %70
  store i8 1, i8* %24, align 1
  %95 = load i8*, i8** %19, align 8
  store i8* %95, i8** %22, align 8
  %96 = load i8*, i8** %22, align 8
  %97 = call i64 @strlen(i8* %96) #14
  store i64 %97, i64* %23, align 8
  br label %116

; <label>:98:                                     ; preds = %9
  store i32 2, i32* %15, align 4
  store i8 1, i8* %26, align 1
  br label %99

; <label>:99:                                     ; preds = %9, %98
  %100 = load i8, i8* %26, align 1
  %101 = trunc i8 %100 to i1
  br i1 %101, label %113, label %102

; <label>:102:                                    ; preds = %99
  %103 = load i64, i64* %21, align 8
  %104 = load i64, i64* %12, align 8
  %105 = icmp ult i64 %103, %104
  br i1 %105, label %106, label %110

; <label>:106:                                    ; preds = %102
  %107 = load i8*, i8** %11, align 8
  %108 = load i64, i64* %21, align 8
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8 39, i8* %109, align 1
  br label %110

; <label>:110:                                    ; preds = %106, %102
  %111 = load i64, i64* %21, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %21, align 8
  br label %113

; <label>:113:                                    ; preds = %110, %99
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @95, i32 0, i32 0), i8** %22, align 8
  store i64 1, i64* %23, align 8
  br label %116

; <label>:114:                                    ; preds = %9
  store i8 0, i8* %26, align 1
  br label %116

; <label>:115:                                    ; preds = %9
  call void @abort() #13
  unreachable

; <label>:116:                                    ; preds = %114, %113, %94, %61, %60
  store i64 0, i64* %20, align 8
  br label %117

; <label>:117:                                    ; preds = %649, %116
  %118 = load i64, i64* %14, align 8
  %119 = icmp eq i64 %118, -1
  br i1 %119, label %120, label %128

; <label>:120:                                    ; preds = %117
  %121 = load i8*, i8** %13, align 8
  %122 = load i64, i64* %20, align 8
  %123 = getelementptr inbounds i8, i8* %121, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 0
  %127 = zext i1 %126 to i32
  br label %133

; <label>:128:                                    ; preds = %117
  %129 = load i64, i64* %20, align 8
  %130 = load i64, i64* %14, align 8
  %131 = icmp eq i64 %129, %130
  %132 = zext i1 %131 to i32
  br label %133

; <label>:133:                                    ; preds = %128, %120
  %134 = phi i32 [ %127, %120 ], [ %132, %128 ]
  %135 = icmp ne i32 %134, 0
  %136 = xor i1 %135, true
  br i1 %136, label %137, label %652

; <label>:137:                                    ; preds = %133
  store i8 0, i8* %29, align 1
  %138 = load i8, i8* %24, align 1
  %139 = trunc i8 %138 to i1
  %140 = load i64, i64* %23, align 8
  %141 = icmp ne i64 %140, 0
  %or.cond = and i1 %139, %141
  br i1 %or.cond, label %142, label %160

; <label>:142:                                    ; preds = %137
  %143 = load i64, i64* %20, align 8
  %144 = load i64, i64* %23, align 8
  %145 = add i64 %143, %144
  %146 = load i64, i64* %14, align 8
  %147 = icmp ule i64 %145, %146
  br i1 %147, label %148, label %160

; <label>:148:                                    ; preds = %142
  %149 = load i8*, i8** %13, align 8
  %150 = load i64, i64* %20, align 8
  %151 = getelementptr inbounds i8, i8* %149, i64 %150
  %152 = load i8*, i8** %22, align 8
  %153 = load i64, i64* %23, align 8
  %154 = call i32 @memcmp(i8* %151, i8* %152, i64 %153) #14
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %160

; <label>:156:                                    ; preds = %148
  %157 = load i8, i8* %26, align 1
  %158 = trunc i8 %157 to i1
  br i1 %158, label %696, label %159

; <label>:159:                                    ; preds = %156
  store i8 1, i8* %29, align 1
  br label %160

; <label>:160:                                    ; preds = %159, %148, %142, %137
  %161 = load i8*, i8** %13, align 8
  %162 = load i64, i64* %20, align 8
  %163 = getelementptr inbounds i8, i8* %161, i64 %162
  %164 = load i8, i8* %163, align 1
  store i8 %164, i8* %27, align 1
  %165 = load i8, i8* %27, align 1
  %166 = zext i8 %165 to i32
  switch i32 %166, label %395 [
    i32 0, label %167
    i32 63, label %230
    i32 7, label %310
    i32 8, label %311
    i32 12, label %312
    i32 10, label %313
    i32 13, label %314
    i32 9, label %315
    i32 11, label %316
    i32 92, label %317
    i32 123, label %337
    i32 125, label %337
    i32 35, label %353
    i32 126, label %353
    i32 32, label %354
    i32 33, label %354
    i32 34, label %354
    i32 36, label %354
    i32 38, label %354
    i32 40, label %354
    i32 41, label %354
    i32 42, label %354
    i32 59, label %354
    i32 60, label %354
    i32 61, label %354
    i32 62, label %354
    i32 91, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
    i32 39, label %358
    i32 37, label %597
    i32 43, label %597
    i32 44, label %597
    i32 45, label %597
    i32 46, label %597
    i32 47, label %597
    i32 48, label %597
    i32 49, label %597
    i32 50, label %597
    i32 51, label %597
    i32 52, label %597
    i32 53, label %597
    i32 54, label %597
    i32 55, label %597
    i32 56, label %597
    i32 57, label %597
    i32 58, label %597
    i32 65, label %597
    i32 66, label %597
    i32 67, label %597
    i32 68, label %597
    i32 69, label %597
    i32 70, label %597
    i32 71, label %597
    i32 72, label %597
    i32 73, label %597
    i32 74, label %597
    i32 75, label %597
    i32 76, label %597
    i32 77, label %597
    i32 78, label %597
    i32 79, label %597
    i32 80, label %597
    i32 81, label %597
    i32 82, label %597
    i32 83, label %597
    i32 84, label %597
    i32 85, label %597
    i32 86, label %597
    i32 87, label %597
    i32 88, label %597
    i32 89, label %597
    i32 90, label %597
    i32 93, label %597
    i32 95, label %597
    i32 97, label %597
    i32 98, label %597
    i32 99, label %597
    i32 100, label %597
    i32 101, label %597
    i32 102, label %597
    i32 103, label %597
    i32 104, label %597
    i32 105, label %597
    i32 106, label %597
    i32 107, label %597
    i32 108, label %597
    i32 109, label %597
    i32 110, label %597
    i32 111, label %597
    i32 112, label %597
    i32 113, label %597
    i32 114, label %597
    i32 115, label %597
    i32 116, label %597
    i32 117, label %597
    i32 118, label %597
    i32 119, label %597
    i32 120, label %597
    i32 121, label %597
    i32 122, label %597
  ]

; <label>:167:                                    ; preds = %160
  %168 = load i8, i8* %24, align 1
  %169 = trunc i8 %168 to i1
  br i1 %169, label %170, label %226

; <label>:170:                                    ; preds = %167
  %171 = load i8, i8* %26, align 1
  %172 = trunc i8 %171 to i1
  br i1 %172, label %696, label %173

; <label>:173:                                    ; preds = %170
  %174 = load i64, i64* %21, align 8
  %175 = load i64, i64* %12, align 8
  %176 = icmp ult i64 %174, %175
  br i1 %176, label %177, label %181

; <label>:177:                                    ; preds = %173
  %178 = load i8*, i8** %11, align 8
  %179 = load i64, i64* %21, align 8
  %180 = getelementptr inbounds i8, i8* %178, i64 %179
  store i8 92, i8* %180, align 1
  br label %181

; <label>:181:                                    ; preds = %177, %173
  %182 = load i64, i64* %21, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %21, align 8
  %184 = load i64, i64* %20, align 8
  %185 = add i64 %184, 1
  %186 = load i64, i64* %14, align 8
  %187 = icmp ult i64 %185, %186
  br i1 %187, label %188, label %225

; <label>:188:                                    ; preds = %181
  %189 = load i8*, i8** %13, align 8
  %190 = load i64, i64* %20, align 8
  %191 = add i64 %190, 1
  %192 = getelementptr inbounds i8, i8* %189, i64 %191
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp sle i32 48, %194
  br i1 %195, label %196, label %225

; <label>:196:                                    ; preds = %188
  %197 = load i8*, i8** %13, align 8
  %198 = load i64, i64* %20, align 8
  %199 = add i64 %198, 1
  %200 = getelementptr inbounds i8, i8* %197, i64 %199
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp sle i32 %202, 57
  br i1 %203, label %204, label %225

; <label>:204:                                    ; preds = %196
  %205 = load i64, i64* %21, align 8
  %206 = load i64, i64* %12, align 8
  %207 = icmp ult i64 %205, %206
  br i1 %207, label %208, label %212

; <label>:208:                                    ; preds = %204
  %209 = load i8*, i8** %11, align 8
  %210 = load i64, i64* %21, align 8
  %211 = getelementptr inbounds i8, i8* %209, i64 %210
  store i8 48, i8* %211, align 1
  br label %212

; <label>:212:                                    ; preds = %208, %204
  %213 = load i64, i64* %21, align 8
  %214 = add i64 %213, 1
  store i64 %214, i64* %21, align 8
  %215 = load i64, i64* %21, align 8
  %216 = load i64, i64* %12, align 8
  %217 = icmp ult i64 %215, %216
  br i1 %217, label %218, label %222

; <label>:218:                                    ; preds = %212
  %219 = load i8*, i8** %11, align 8
  %220 = load i64, i64* %21, align 8
  %221 = getelementptr inbounds i8, i8* %219, i64 %220
  store i8 48, i8* %221, align 1
  br label %222

; <label>:222:                                    ; preds = %218, %212
  %223 = load i64, i64* %21, align 8
  %224 = add i64 %223, 1
  store i64 %224, i64* %21, align 8
  br label %225

; <label>:225:                                    ; preds = %222, %196, %188, %181
  store i8 48, i8* %27, align 1
  br label %597

; <label>:226:                                    ; preds = %167
  %227 = load i32, i32* %16, align 4
  %228 = and i32 %227, 1
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %649, label %597

; <label>:230:                                    ; preds = %160
  %231 = load i32, i32* %15, align 4
  switch i32 %231, label %597 [
    i32 2, label %232
    i32 3, label %235
  ]

; <label>:232:                                    ; preds = %230
  %233 = load i8, i8* %26, align 1
  %234 = trunc i8 %233 to i1
  br i1 %234, label %696, label %597

; <label>:235:                                    ; preds = %230
  %236 = load i32, i32* %16, align 4
  %237 = and i32 %236, 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %597

; <label>:239:                                    ; preds = %235
  %240 = load i64, i64* %20, align 8
  %241 = add i64 %240, 2
  %242 = load i64, i64* %14, align 8
  %243 = icmp ult i64 %241, %242
  br i1 %243, label %244, label %597

; <label>:244:                                    ; preds = %239
  %245 = load i8*, i8** %13, align 8
  %246 = load i64, i64* %20, align 8
  %247 = add i64 %246, 1
  %248 = getelementptr inbounds i8, i8* %245, i64 %247
  %249 = load i8, i8* %248, align 1
  %250 = sext i8 %249 to i32
  %251 = icmp eq i32 %250, 63
  br i1 %251, label %252, label %597

; <label>:252:                                    ; preds = %244
  %253 = load i8*, i8** %13, align 8
  %254 = load i64, i64* %20, align 8
  %255 = add i64 %254, 2
  %256 = getelementptr inbounds i8, i8* %253, i64 %255
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  switch i32 %258, label %597 [
    i32 33, label %259
    i32 39, label %259
    i32 40, label %259
    i32 41, label %259
    i32 45, label %259
    i32 47, label %259
    i32 60, label %259
    i32 61, label %259
    i32 62, label %259
  ]

; <label>:259:                                    ; preds = %252, %252, %252, %252, %252, %252, %252, %252, %252
  %260 = load i8, i8* %26, align 1
  %261 = trunc i8 %260 to i1
  br i1 %261, label %696, label %262

; <label>:262:                                    ; preds = %259
  %263 = load i8*, i8** %13, align 8
  %264 = load i64, i64* %20, align 8
  %265 = add i64 %264, 2
  %266 = getelementptr inbounds i8, i8* %263, i64 %265
  %267 = load i8, i8* %266, align 1
  store i8 %267, i8* %27, align 1
  %268 = load i64, i64* %20, align 8
  %269 = add i64 %268, 2
  store i64 %269, i64* %20, align 8
  %270 = load i64, i64* %21, align 8
  %271 = load i64, i64* %12, align 8
  %272 = icmp ult i64 %270, %271
  br i1 %272, label %273, label %277

; <label>:273:                                    ; preds = %262
  %274 = load i8*, i8** %11, align 8
  %275 = load i64, i64* %21, align 8
  %276 = getelementptr inbounds i8, i8* %274, i64 %275
  store i8 63, i8* %276, align 1
  br label %277

; <label>:277:                                    ; preds = %273, %262
  %278 = load i64, i64* %21, align 8
  %279 = add i64 %278, 1
  store i64 %279, i64* %21, align 8
  %280 = load i64, i64* %21, align 8
  %281 = load i64, i64* %12, align 8
  %282 = icmp ult i64 %280, %281
  br i1 %282, label %283, label %287

; <label>:283:                                    ; preds = %277
  %284 = load i8*, i8** %11, align 8
  %285 = load i64, i64* %21, align 8
  %286 = getelementptr inbounds i8, i8* %284, i64 %285
  store i8 34, i8* %286, align 1
  br label %287

; <label>:287:                                    ; preds = %283, %277
  %288 = load i64, i64* %21, align 8
  %289 = add i64 %288, 1
  store i64 %289, i64* %21, align 8
  %290 = load i64, i64* %21, align 8
  %291 = load i64, i64* %12, align 8
  %292 = icmp ult i64 %290, %291
  br i1 %292, label %293, label %297

; <label>:293:                                    ; preds = %287
  %294 = load i8*, i8** %11, align 8
  %295 = load i64, i64* %21, align 8
  %296 = getelementptr inbounds i8, i8* %294, i64 %295
  store i8 34, i8* %296, align 1
  br label %297

; <label>:297:                                    ; preds = %293, %287
  %298 = load i64, i64* %21, align 8
  %299 = add i64 %298, 1
  store i64 %299, i64* %21, align 8
  %300 = load i64, i64* %21, align 8
  %301 = load i64, i64* %12, align 8
  %302 = icmp ult i64 %300, %301
  br i1 %302, label %303, label %307

; <label>:303:                                    ; preds = %297
  %304 = load i8*, i8** %11, align 8
  %305 = load i64, i64* %21, align 8
  %306 = getelementptr inbounds i8, i8* %304, i64 %305
  store i8 63, i8* %306, align 1
  br label %307

; <label>:307:                                    ; preds = %303, %297
  %308 = load i64, i64* %21, align 8
  %309 = add i64 %308, 1
  store i64 %309, i64* %21, align 8
  br label %597

; <label>:310:                                    ; preds = %160
  store i8 97, i8* %28, align 1
  br label %332

; <label>:311:                                    ; preds = %160
  store i8 98, i8* %28, align 1
  br label %332

; <label>:312:                                    ; preds = %160
  store i8 102, i8* %28, align 1
  br label %332

; <label>:313:                                    ; preds = %160
  store i8 110, i8* %28, align 1
  br label %326

; <label>:314:                                    ; preds = %160
  store i8 114, i8* %28, align 1
  br label %326

; <label>:315:                                    ; preds = %160
  store i8 116, i8* %28, align 1
  br label %326

; <label>:316:                                    ; preds = %160
  store i8 118, i8* %28, align 1
  br label %332

; <label>:317:                                    ; preds = %160
  %318 = load i8, i8* %27, align 1
  store i8 %318, i8* %28, align 1
  %319 = load i8, i8* %24, align 1
  %320 = trunc i8 %319 to i1
  br i1 %320, label %321, label %326

; <label>:321:                                    ; preds = %317
  %322 = load i8, i8* %26, align 1
  %323 = trunc i8 %322 to i1
  %324 = load i64, i64* %23, align 8
  %325 = icmp ne i64 %324, 0
  %or.cond3 = and i1 %323, %325
  br i1 %or.cond3, label %637, label %326

; <label>:326:                                    ; preds = %317, %321, %315, %314, %313
  %327 = load i32, i32* %15, align 4
  %328 = icmp eq i32 %327, 2
  br i1 %328, label %329, label %332

; <label>:329:                                    ; preds = %326
  %330 = load i8, i8* %26, align 1
  %331 = trunc i8 %330 to i1
  br i1 %331, label %696, label %332

; <label>:332:                                    ; preds = %326, %329, %316, %312, %311, %310
  %333 = load i8, i8* %24, align 1
  %334 = trunc i8 %333 to i1
  br i1 %334, label %335, label %597

; <label>:335:                                    ; preds = %332
  %336 = load i8, i8* %28, align 1
  store i8 %336, i8* %27, align 1
  br label %623

; <label>:337:                                    ; preds = %160, %160
  %338 = load i64, i64* %14, align 8
  %339 = icmp eq i64 %338, -1
  br i1 %339, label %340, label %348

; <label>:340:                                    ; preds = %337
  %341 = load i8*, i8** %13, align 8
  %342 = getelementptr inbounds i8, i8* %341, i64 1
  %343 = load i8, i8* %342, align 1
  %344 = sext i8 %343 to i32
  %345 = icmp ne i32 %344, 0
  %346 = load i64, i64* %20, align 8
  %347 = icmp ne i64 %346, 0
  %or.cond13 = or i1 %345, %347
  %or.cond13.not = xor i1 %or.cond13, true
  %.old16 = load i32, i32* %15, align 4
  %.old17 = icmp eq i32 %.old16, 2
  %or.cond20 = and i1 %or.cond13.not, %.old17
  br i1 %or.cond20, label %355, label %597

; <label>:348:                                    ; preds = %337
  %349 = load i64, i64* %14, align 8
  %350 = icmp ne i64 %349, 1
  %.old11 = load i64, i64* %20, align 8
  %.old12 = icmp ne i64 %.old11, 0
  %or.cond15 = or i1 %350, %.old12
  %or.cond15.not = xor i1 %or.cond15, true
  %351 = load i32, i32* %15, align 4
  %352 = icmp eq i32 %351, 2
  %or.cond18 = and i1 %or.cond15.not, %352
  br i1 %or.cond18, label %355, label %597

; <label>:353:                                    ; preds = %160, %160
  %.old14 = load i64, i64* %20, align 8
  %.old12.old = icmp eq i64 %.old14, 0
  %.old19 = load i32, i32* %15, align 4
  %.old17.old = icmp eq i32 %.old19, 2
  %or.cond22 = and i1 %.old12.old, %.old17.old
  br i1 %or.cond22, label %355, label %597

; <label>:354:                                    ; preds = %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160
  %.old21 = load i32, i32* %15, align 4
  %.old17.old.old = icmp eq i32 %.old21, 2
  br i1 %.old17.old.old, label %355, label %597

; <label>:355:                                    ; preds = %353, %340, %348, %354
  %356 = load i8, i8* %26, align 1
  %357 = trunc i8 %356 to i1
  br i1 %357, label %696, label %597

; <label>:358:                                    ; preds = %160
  %359 = load i32, i32* %15, align 4
  %360 = icmp eq i32 %359, 2
  br i1 %360, label %361, label %597

; <label>:361:                                    ; preds = %358
  %362 = load i8, i8* %26, align 1
  %363 = trunc i8 %362 to i1
  br i1 %363, label %696, label %364

; <label>:364:                                    ; preds = %361
  %365 = load i64, i64* %21, align 8
  %366 = load i64, i64* %12, align 8
  %367 = icmp ult i64 %365, %366
  br i1 %367, label %368, label %372

; <label>:368:                                    ; preds = %364
  %369 = load i8*, i8** %11, align 8
  %370 = load i64, i64* %21, align 8
  %371 = getelementptr inbounds i8, i8* %369, i64 %370
  store i8 39, i8* %371, align 1
  br label %372

; <label>:372:                                    ; preds = %368, %364
  %373 = load i64, i64* %21, align 8
  %374 = add i64 %373, 1
  store i64 %374, i64* %21, align 8
  %375 = load i64, i64* %21, align 8
  %376 = load i64, i64* %12, align 8
  %377 = icmp ult i64 %375, %376
  br i1 %377, label %378, label %382

; <label>:378:                                    ; preds = %372
  %379 = load i8*, i8** %11, align 8
  %380 = load i64, i64* %21, align 8
  %381 = getelementptr inbounds i8, i8* %379, i64 %380
  store i8 92, i8* %381, align 1
  br label %382

; <label>:382:                                    ; preds = %378, %372
  %383 = load i64, i64* %21, align 8
  %384 = add i64 %383, 1
  store i64 %384, i64* %21, align 8
  %385 = load i64, i64* %21, align 8
  %386 = load i64, i64* %12, align 8
  %387 = icmp ult i64 %385, %386
  br i1 %387, label %388, label %392

; <label>:388:                                    ; preds = %382
  %389 = load i8*, i8** %11, align 8
  %390 = load i64, i64* %21, align 8
  %391 = getelementptr inbounds i8, i8* %389, i64 %390
  store i8 39, i8* %391, align 1
  br label %392

; <label>:392:                                    ; preds = %388, %382
  %393 = load i64, i64* %21, align 8
  %394 = add i64 %393, 1
  store i64 %394, i64* %21, align 8
  br label %597

; <label>:395:                                    ; preds = %160
  %396 = load i8, i8* %25, align 1
  %397 = trunc i8 %396 to i1
  br i1 %397, label %398, label %410

; <label>:398:                                    ; preds = %395
  store i64 1, i64* %30, align 8
  %399 = call i16** @__ctype_b_loc() #15
  %400 = load i16*, i16** %399, align 8
  %401 = load i8, i8* %27, align 1
  %402 = zext i8 %401 to i32
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i16, i16* %400, i64 %403
  %405 = load i16, i16* %404, align 2
  %406 = zext i16 %405 to i32
  %407 = and i32 %406, 16384
  %408 = icmp ne i32 %407, 0
  %409 = zext i1 %408 to i8
  store i8 %409, i8* %31, align 1
  br label %.critedge

; <label>:410:                                    ; preds = %395
  %411 = bitcast %6* %32 to i8*
  call void @llvm.memset.p0i8.i64(i8* %411, i8 0, i64 8, i32 4, i1 false)
  store i64 0, i64* %30, align 8
  store i8 1, i8* %31, align 1
  %412 = load i64, i64* %14, align 8
  %413 = icmp eq i64 %412, -1
  br i1 %413, label %414, label %417

; <label>:414:                                    ; preds = %410
  %415 = load i8*, i8** %13, align 8
  %416 = call i64 @strlen(i8* %415) #14
  store i64 %416, i64* %14, align 8
  br label %417

; <label>:417:                                    ; preds = %414, %410
  br label %418

; <label>:418:                                    ; preds = %486, %417
  %419 = load i8*, i8** %13, align 8
  %420 = load i64, i64* %20, align 8
  %421 = load i64, i64* %30, align 8
  %422 = add i64 %420, %421
  %423 = getelementptr inbounds i8, i8* %419, i64 %422
  %424 = load i64, i64* %14, align 8
  %425 = load i64, i64* %20, align 8
  %426 = load i64, i64* %30, align 8
  %427 = add i64 %425, %426
  %428 = sub i64 %424, %427
  %429 = call i64 @mbrtowc(i32* %33, i8* %423, i64 %428, %6* %32) #11
  store i64 %429, i64* %34, align 8
  %430 = load i64, i64* %34, align 8
  %431 = icmp eq i64 %430, 0
  br i1 %431, label %.critedge, label %432

; <label>:432:                                    ; preds = %418
  %433 = load i64, i64* %34, align 8
  %434 = icmp eq i64 %433, -1
  br i1 %434, label %435, label %436

; <label>:435:                                    ; preds = %432
  store i8 0, i8* %31, align 1
  br label %.critedge

; <label>:436:                                    ; preds = %432
  %437 = load i64, i64* %34, align 8
  %438 = icmp eq i64 %437, -2
  br i1 %438, label %439, label %458

; <label>:439:                                    ; preds = %436
  store i8 0, i8* %31, align 1
  br label %440

; <label>:440:                                    ; preds = %455, %439
  %441 = load i64, i64* %20, align 8
  %442 = load i64, i64* %30, align 8
  %443 = add i64 %441, %442
  %444 = load i64, i64* %14, align 8
  %445 = icmp ult i64 %443, %444
  br i1 %445, label %446, label %.critedge

; <label>:446:                                    ; preds = %440
  %447 = load i8*, i8** %13, align 8
  %448 = load i64, i64* %20, align 8
  %449 = load i64, i64* %30, align 8
  %450 = add i64 %448, %449
  %451 = getelementptr inbounds i8, i8* %447, i64 %450
  %452 = load i8, i8* %451, align 1
  %453 = sext i8 %452 to i32
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %.critedge

; <label>:455:                                    ; preds = %446
  %456 = load i64, i64* %30, align 8
  %457 = add i64 %456, 1
  store i64 %457, i64* %30, align 8
  br label %440

; <label>:458:                                    ; preds = %436
  %459 = load i8, i8* %26, align 1
  %460 = trunc i8 %459 to i1
  %461 = load i32, i32* %15, align 4
  %462 = icmp eq i32 %461, 2
  %or.cond5 = and i1 %460, %462
  br i1 %or.cond5, label %463, label %481

; <label>:463:                                    ; preds = %458
  store i64 1, i64* %35, align 8
  br label %464

; <label>:464:                                    ; preds = %478, %463
  %465 = load i64, i64* %35, align 8
  %466 = load i64, i64* %34, align 8
  %467 = icmp ult i64 %465, %466
  br i1 %467, label %468, label %481

; <label>:468:                                    ; preds = %464
  %469 = load i8*, i8** %13, align 8
  %470 = load i64, i64* %20, align 8
  %471 = load i64, i64* %30, align 8
  %472 = add i64 %470, %471
  %473 = load i64, i64* %35, align 8
  %474 = add i64 %472, %473
  %475 = getelementptr inbounds i8, i8* %469, i64 %474
  %476 = load i8, i8* %475, align 1
  %477 = sext i8 %476 to i32
  switch i32 %477, label %478 [
    i32 91, label %696
    i32 92, label %696
    i32 94, label %696
    i32 96, label %696
    i32 124, label %696
  ]

; <label>:478:                                    ; preds = %468
  %479 = load i64, i64* %35, align 8
  %480 = add i64 %479, 1
  store i64 %480, i64* %35, align 8
  br label %464

; <label>:481:                                    ; preds = %464, %458
  %482 = load i32, i32* %33, align 4
  %483 = call i32 @iswprint(i32 %482) #11
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %486, label %485

; <label>:485:                                    ; preds = %481
  store i8 0, i8* %31, align 1
  br label %486

; <label>:486:                                    ; preds = %485, %481
  %487 = load i64, i64* %34, align 8
  %488 = load i64, i64* %30, align 8
  %489 = add i64 %488, %487
  store i64 %489, i64* %30, align 8
  %490 = call i32 @mbsinit(%6* %32) #14
  %491 = icmp ne i32 %490, 0
  %492 = xor i1 %491, true
  br i1 %492, label %418, label %.critedge

.critedge:                                        ; preds = %435, %486, %418, %440, %446, %398
  %493 = load i64, i64* %30, align 8
  %494 = icmp ult i64 1, %493
  br i1 %494, label %501, label %495

; <label>:495:                                    ; preds = %.critedge
  %496 = load i8, i8* %24, align 1
  %497 = trunc i8 %496 to i1
  br i1 %497, label %498, label %597

; <label>:498:                                    ; preds = %495
  %499 = load i8, i8* %31, align 1
  %500 = trunc i8 %499 to i1
  br i1 %500, label %597, label %501

; <label>:501:                                    ; preds = %498, %.critedge
  %502 = load i64, i64* %20, align 8
  %503 = load i64, i64* %30, align 8
  %504 = add i64 %502, %503
  store i64 %504, i64* %36, align 8
  br label %505

; <label>:505:                                    ; preds = %589, %501
  %506 = load i8, i8* %24, align 1
  %507 = trunc i8 %506 to i1
  br i1 %507, label %508, label %561

; <label>:508:                                    ; preds = %505
  %509 = load i8, i8* %31, align 1
  %510 = trunc i8 %509 to i1
  br i1 %510, label %561, label %511

; <label>:511:                                    ; preds = %508
  %512 = load i8, i8* %26, align 1
  %513 = trunc i8 %512 to i1
  br i1 %513, label %696, label %514

; <label>:514:                                    ; preds = %511
  %515 = load i64, i64* %21, align 8
  %516 = load i64, i64* %12, align 8
  %517 = icmp ult i64 %515, %516
  br i1 %517, label %518, label %522

; <label>:518:                                    ; preds = %514
  %519 = load i8*, i8** %11, align 8
  %520 = load i64, i64* %21, align 8
  %521 = getelementptr inbounds i8, i8* %519, i64 %520
  store i8 92, i8* %521, align 1
  br label %522

; <label>:522:                                    ; preds = %518, %514
  %523 = load i64, i64* %21, align 8
  %524 = add i64 %523, 1
  store i64 %524, i64* %21, align 8
  %525 = load i64, i64* %21, align 8
  %526 = load i64, i64* %12, align 8
  %527 = icmp ult i64 %525, %526
  br i1 %527, label %528, label %537

; <label>:528:                                    ; preds = %522
  %529 = load i8, i8* %27, align 1
  %530 = zext i8 %529 to i32
  %531 = ashr i32 %530, 6
  %532 = add nsw i32 48, %531
  %533 = trunc i32 %532 to i8
  %534 = load i8*, i8** %11, align 8
  %535 = load i64, i64* %21, align 8
  %536 = getelementptr inbounds i8, i8* %534, i64 %535
  store i8 %533, i8* %536, align 1
  br label %537

; <label>:537:                                    ; preds = %528, %522
  %538 = load i64, i64* %21, align 8
  %539 = add i64 %538, 1
  store i64 %539, i64* %21, align 8
  %540 = load i64, i64* %21, align 8
  %541 = load i64, i64* %12, align 8
  %542 = icmp ult i64 %540, %541
  br i1 %542, label %543, label %553

; <label>:543:                                    ; preds = %537
  %544 = load i8, i8* %27, align 1
  %545 = zext i8 %544 to i32
  %546 = ashr i32 %545, 3
  %547 = and i32 %546, 7
  %548 = add nsw i32 48, %547
  %549 = trunc i32 %548 to i8
  %550 = load i8*, i8** %11, align 8
  %551 = load i64, i64* %21, align 8
  %552 = getelementptr inbounds i8, i8* %550, i64 %551
  store i8 %549, i8* %552, align 1
  br label %553

; <label>:553:                                    ; preds = %543, %537
  %554 = load i64, i64* %21, align 8
  %555 = add i64 %554, 1
  store i64 %555, i64* %21, align 8
  %556 = load i8, i8* %27, align 1
  %557 = zext i8 %556 to i32
  %558 = and i32 %557, 7
  %559 = add nsw i32 48, %558
  %560 = trunc i32 %559 to i8
  store i8 %560, i8* %27, align 1
  br label %575

; <label>:561:                                    ; preds = %508, %505
  %562 = load i8, i8* %29, align 1
  %563 = trunc i8 %562 to i1
  br i1 %563, label %564, label %575

; <label>:564:                                    ; preds = %561
  %565 = load i64, i64* %21, align 8
  %566 = load i64, i64* %12, align 8
  %567 = icmp ult i64 %565, %566
  br i1 %567, label %568, label %572

; <label>:568:                                    ; preds = %564
  %569 = load i8*, i8** %11, align 8
  %570 = load i64, i64* %21, align 8
  %571 = getelementptr inbounds i8, i8* %569, i64 %570
  store i8 92, i8* %571, align 1
  br label %572

; <label>:572:                                    ; preds = %568, %564
  %573 = load i64, i64* %21, align 8
  %574 = add i64 %573, 1
  store i64 %574, i64* %21, align 8
  store i8 0, i8* %29, align 1
  br label %575

; <label>:575:                                    ; preds = %561, %572, %553
  %576 = load i64, i64* %36, align 8
  %577 = load i64, i64* %20, align 8
  %578 = add i64 %577, 1
  %579 = icmp ule i64 %576, %578
  br i1 %579, label %637, label %580

; <label>:580:                                    ; preds = %575
  %581 = load i64, i64* %21, align 8
  %582 = load i64, i64* %12, align 8
  %583 = icmp ult i64 %581, %582
  br i1 %583, label %584, label %589

; <label>:584:                                    ; preds = %580
  %585 = load i8, i8* %27, align 1
  %586 = load i8*, i8** %11, align 8
  %587 = load i64, i64* %21, align 8
  %588 = getelementptr inbounds i8, i8* %586, i64 %587
  store i8 %585, i8* %588, align 1
  br label %589

; <label>:589:                                    ; preds = %584, %580
  %590 = load i64, i64* %21, align 8
  %591 = add i64 %590, 1
  store i64 %591, i64* %21, align 8
  %592 = load i8*, i8** %13, align 8
  %593 = load i64, i64* %20, align 8
  %594 = add i64 %593, 1
  store i64 %594, i64* %20, align 8
  %595 = getelementptr inbounds i8, i8* %592, i64 %594
  %596 = load i8, i8* %595, align 1
  store i8 %596, i8* %27, align 1
  br label %505

; <label>:597:                                    ; preds = %353, %340, %348, %495, %498, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %160, %358, %392, %354, %355, %332, %232, %307, %252, %244, %239, %235, %230, %225, %226
  %598 = load i8, i8* %24, align 1
  %599 = trunc i8 %598 to i1
  br i1 %599, label %605, label %600

; <label>:600:                                    ; preds = %597
  %601 = load i8, i8* %26, align 1
  %602 = trunc i8 %601 to i1
  %603 = load i32*, i32** %17, align 8
  %604 = icmp ne i32* %603, null
  %or.cond7 = and i1 %602, %604
  br i1 %or.cond7, label %606, label %620

; <label>:605:                                    ; preds = %597
  %.old = load i32*, i32** %17, align 8
  %.old6 = icmp ne i32* %.old, null
  br i1 %.old6, label %606, label %620

; <label>:606:                                    ; preds = %600, %605
  %607 = load i32*, i32** %17, align 8
  %608 = load i8, i8* %27, align 1
  %609 = zext i8 %608 to i64
  %610 = udiv i64 %609, 32
  %611 = getelementptr inbounds i32, i32* %607, i64 %610
  %612 = load i32, i32* %611, align 4
  %613 = load i8, i8* %27, align 1
  %614 = zext i8 %613 to i64
  %615 = urem i64 %614, 32
  %616 = trunc i64 %615 to i32
  %617 = shl i32 1, %616
  %618 = and i32 %612, %617
  %619 = icmp ne i32 %618, 0
  br i1 %619, label %623, label %620

; <label>:620:                                    ; preds = %606, %605, %600
  %621 = load i8, i8* %29, align 1
  %622 = trunc i8 %621 to i1
  br i1 %622, label %623, label %637

; <label>:623:                                    ; preds = %606, %620, %335
  %624 = load i8, i8* %26, align 1
  %625 = trunc i8 %624 to i1
  br i1 %625, label %696, label %626

; <label>:626:                                    ; preds = %623
  %627 = load i64, i64* %21, align 8
  %628 = load i64, i64* %12, align 8
  %629 = icmp ult i64 %627, %628
  br i1 %629, label %630, label %634

; <label>:630:                                    ; preds = %626
  %631 = load i8*, i8** %11, align 8
  %632 = load i64, i64* %21, align 8
  %633 = getelementptr inbounds i8, i8* %631, i64 %632
  store i8 92, i8* %633, align 1
  br label %634

; <label>:634:                                    ; preds = %630, %626
  %635 = load i64, i64* %21, align 8
  %636 = add i64 %635, 1
  store i64 %636, i64* %21, align 8
  br label %637

; <label>:637:                                    ; preds = %634, %321, %575, %620
  %638 = load i64, i64* %21, align 8
  %639 = load i64, i64* %12, align 8
  %640 = icmp ult i64 %638, %639
  br i1 %640, label %641, label %646

; <label>:641:                                    ; preds = %637
  %642 = load i8, i8* %27, align 1
  %643 = load i8*, i8** %11, align 8
  %644 = load i64, i64* %21, align 8
  %645 = getelementptr inbounds i8, i8* %643, i64 %644
  store i8 %642, i8* %645, align 1
  br label %646

; <label>:646:                                    ; preds = %641, %637
  %647 = load i64, i64* %21, align 8
  %648 = add i64 %647, 1
  store i64 %648, i64* %21, align 8
  br label %649

; <label>:649:                                    ; preds = %226, %646
  %650 = load i64, i64* %20, align 8
  %651 = add i64 %650, 1
  store i64 %651, i64* %20, align 8
  br label %117

; <label>:652:                                    ; preds = %133
  %653 = load i64, i64* %21, align 8
  %654 = icmp eq i64 %653, 0
  %655 = load i32, i32* %15, align 4
  %656 = icmp eq i32 %655, 2
  %or.cond10 = and i1 %654, %656
  br i1 %or.cond10, label %657, label %660

; <label>:657:                                    ; preds = %652
  %658 = load i8, i8* %26, align 1
  %659 = trunc i8 %658 to i1
  br i1 %659, label %696, label %660

; <label>:660:                                    ; preds = %657, %652
  %661 = load i8*, i8** %22, align 8
  %662 = icmp ne i8* %661, null
  br i1 %662, label %663, label %686

; <label>:663:                                    ; preds = %660
  %664 = load i8, i8* %26, align 1
  %665 = trunc i8 %664 to i1
  br i1 %665, label %686, label %666

; <label>:666:                                    ; preds = %663
  br label %667

; <label>:667:                                    ; preds = %681, %666
  %668 = load i8*, i8** %22, align 8
  %669 = load i8, i8* %668, align 1
  %670 = icmp ne i8 %669, 0
  br i1 %670, label %671, label %686

; <label>:671:                                    ; preds = %667
  %672 = load i64, i64* %21, align 8
  %673 = load i64, i64* %12, align 8
  %674 = icmp ult i64 %672, %673
  br i1 %674, label %675, label %681

; <label>:675:                                    ; preds = %671
  %676 = load i8*, i8** %22, align 8
  %677 = load i8, i8* %676, align 1
  %678 = load i8*, i8** %11, align 8
  %679 = load i64, i64* %21, align 8
  %680 = getelementptr inbounds i8, i8* %678, i64 %679
  store i8 %677, i8* %680, align 1
  br label %681

; <label>:681:                                    ; preds = %675, %671
  %682 = load i64, i64* %21, align 8
  %683 = add i64 %682, 1
  store i64 %683, i64* %21, align 8
  %684 = load i8*, i8** %22, align 8
  %685 = getelementptr inbounds i8, i8* %684, i32 1
  store i8* %685, i8** %22, align 8
  br label %667

; <label>:686:                                    ; preds = %667, %663, %660
  %687 = load i64, i64* %21, align 8
  %688 = load i64, i64* %12, align 8
  %689 = icmp ult i64 %687, %688
  br i1 %689, label %690, label %694

; <label>:690:                                    ; preds = %686
  %691 = load i8*, i8** %11, align 8
  %692 = load i64, i64* %21, align 8
  %693 = getelementptr inbounds i8, i8* %691, i64 %692
  store i8 0, i8* %693, align 1
  br label %694

; <label>:694:                                    ; preds = %690, %686
  %695 = load i64, i64* %21, align 8
  store i64 %695, i64* %10, align 8
  br label %707

; <label>:696:                                    ; preds = %657, %623, %511, %468, %468, %468, %468, %468, %361, %355, %329, %259, %232, %170, %156
  %697 = load i8*, i8** %11, align 8
  %698 = load i64, i64* %12, align 8
  %699 = load i8*, i8** %13, align 8
  %700 = load i64, i64* %14, align 8
  %701 = load i32, i32* %15, align 4
  %702 = load i32, i32* %16, align 4
  %703 = and i32 %702, -3
  %704 = load i8*, i8** %18, align 8
  %705 = load i8*, i8** %19, align 8
  %706 = call i64 @152(i8* %697, i64 %698, i8* %699, i64 %700, i32 %701, i32 %703, i32* null, i8* %704, i8* %705)
  store i64 %706, i64* %10, align 8
  br label %707

; <label>:707:                                    ; preds = %696, %694
  %708 = load i64, i64* %10, align 8
  ret i64 %708
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #5

; Function Attrs: noinline nounwind uwtable
define internal i8* @153(i8*, i32) #2 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  store i8* %8, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %9, %10
  br i1 %11, label %12, label %14

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %3, align 8
  br label %44

; <label>:14:                                     ; preds = %2
  %15 = call i8* @locale_charset()
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @c_strcasecmp(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @96, i32 0, i32 0)) #14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %27

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 96
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @97, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @98, i32 0, i32 0)
  store i8* %26, i8** %3, align 8
  br label %44

; <label>:27:                                     ; preds = %14
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @c_strcasecmp(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @99, i32 0, i32 0)) #14
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39

; <label>:31:                                     ; preds = %27
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 96
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @100, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @101, i32 0, i32 0)
  store i8* %38, i8** %3, align 8
  br label %44

; <label>:39:                                     ; preds = %27
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 7
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @93, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @95, i32 0, i32 0)
  store i8* %43, i8** %3, align 8
  br label %44

; <label>:44:                                     ; preds = %39, %31, %19, %12
  %45 = load i8*, i8** %3, align 8
  ret i8* %45
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %6*) #5

; Function Attrs: nounwind
declare i32 @iswprint(i32) #5

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%6*) #6

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_alloc(i8*, i64, %3*) #2 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %3*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %3* %2, %3** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load %3*, %3** %6, align 8
  %10 = call i8* @quotearg_alloc_mem(i8* %7, i64 %8, i64* null, %3* %9)
  ret i8* %10
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %3*) #2 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %3*, align 8
  %9 = alloca %3*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store %3* %3, %3** %8, align 8
  %14 = load %3*, %3** %8, align 8
  %15 = icmp ne %3* %14, null
  %16 = load %3*, %3** %8, align 8
  %17 = select i1 %15, %3* %16, %3* @92
  store %3* %17, %3** %9, align 8
  %18 = call i32* @__errno_location() #15
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %3*, %3** %9, align 8
  %21 = getelementptr inbounds %3, %3* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i64*, i64** %7, align 8
  %24 = icmp ne i64* %23, null
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 0, i32 1
  %27 = or i32 %22, %26
  store i32 %27, i32* %11, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load %3*, %3** %9, align 8
  %31 = getelementptr inbounds %3, %3* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load %3*, %3** %9, align 8
  %35 = getelementptr inbounds %3, %3* %34, i32 0, i32 2
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* %35, i32 0, i32 0
  %37 = load %3*, %3** %9, align 8
  %38 = getelementptr inbounds %3, %3* %37, i32 0, i32 3
  %39 = load i8*, i8** %38, align 8
  %40 = load %3*, %3** %9, align 8
  %41 = getelementptr inbounds %3, %3* %40, i32 0, i32 4
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @152(i8* null, i64 0, i8* %28, i64 %29, i32 %32, i32 %33, i32* %36, i8* %39, i8* %42)
  %44 = add i64 %43, 1
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %12, align 8
  %46 = call noalias i8* @xcharalloc(i64 %45)
  store i8* %46, i8** %13, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = load i64, i64* %12, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load %3*, %3** %9, align 8
  %52 = getelementptr inbounds %3, %3* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load %3*, %3** %9, align 8
  %56 = getelementptr inbounds %3, %3* %55, i32 0, i32 2
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* %56, i32 0, i32 0
  %58 = load %3*, %3** %9, align 8
  %59 = getelementptr inbounds %3, %3* %58, i32 0, i32 3
  %60 = load i8*, i8** %59, align 8
  %61 = load %3*, %3** %9, align 8
  %62 = getelementptr inbounds %3, %3* %61, i32 0, i32 4
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @152(i8* %47, i64 %48, i8* %49, i64 %50, i32 %53, i32 %54, i32* %57, i8* %60, i8* %63)
  %65 = load i32, i32* %10, align 4
  %66 = call i32* @__errno_location() #15
  store i32 %65, i32* %66, align 4
  %67 = load i64*, i64** %7, align 8
  %68 = icmp ne i64* %67, null
  br i1 %68, label %69, label %73

; <label>:69:                                     ; preds = %4
  %70 = load i64, i64* %12, align 8
  %71 = sub i64 %70, 1
  %72 = load i64*, i64** %7, align 8
  store i64 %71, i64* %72, align 8
  br label %73

; <label>:73:                                     ; preds = %69, %4
  %74 = load i8*, i8** %13, align 8
  ret i8* %74
}

; Function Attrs: noinline nounwind uwtable
define void @quotearg_free() #2 {
  %1 = alloca %4*, align 8
  %2 = alloca i32, align 4
  %3 = load %4*, %4** @102, align 8
  store %4* %3, %4** %1, align 8
  store i32 1, i32* %2, align 4
  br label %4

; <label>:4:                                      ; preds = %9, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @103, align 4
  %7 = icmp ult i32 %5, %6
  %8 = load %4*, %4** %1, align 8
  br i1 %7, label %9, label %17

; <label>:9:                                      ; preds = %4
  %10 = load i32, i32* %2, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %4, %4* %8, i64 %11
  %13 = getelementptr inbounds %4, %4* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  call void @free(i8* %14) #11
  %15 = load i32, i32* %2, align 4
  %16 = add i32 %15, 1
  store i32 %16, i32* %2, align 4
  br label %4

; <label>:17:                                     ; preds = %4
  %18 = getelementptr inbounds %4, %4* %8, i64 0
  %19 = getelementptr inbounds %4, %4* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, getelementptr inbounds ([256 x i8], [256 x i8]* @104, i32 0, i32 0)
  br i1 %21, label %22, label %27

; <label>:22:                                     ; preds = %17
  %23 = load %4*, %4** %1, align 8
  %24 = getelementptr inbounds %4, %4* %23, i64 0
  %25 = getelementptr inbounds %4, %4* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  call void @free(i8* %26) #11
  store i64 256, i64* getelementptr inbounds (%4, %4* @105, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @104, i32 0, i32 0), i8** getelementptr inbounds (%4, %4* @105, i32 0, i32 1), align 8
  br label %27

; <label>:27:                                     ; preds = %22, %17
  %28 = load %4*, %4** %1, align 8
  %29 = icmp ne %4* %28, @105
  br i1 %29, label %30, label %33

; <label>:30:                                     ; preds = %27
  %31 = load %4*, %4** %1, align 8
  %32 = bitcast %4* %31 to i8*
  call void @free(i8* %32) #11
  store %4* @105, %4** @102, align 8
  br label %33

; <label>:33:                                     ; preds = %30, %27
  store i32 1, i32* @103, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_n(i32, i8*) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i8*, i8** %4, align 8
  %7 = call i8* @154(i32 %5, i8* %6, i64 -1, %3* @92)
  ret i8* %7
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @154(i32, i8*, i64, %3*) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %3*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %4*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %3* %3, %3** %8, align 8
  %18 = call i32* @__errno_location() #15
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %4*, %4** @102, align 8
  store %4* %21, %4** %11, align 8
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %4
  call void @abort() #13
  unreachable

; <label>:25:                                     ; preds = %4
  %26 = load i32, i32* @103, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ule i32 %26, %27
  br i1 %28, label %29, label %67

; <label>:29:                                     ; preds = %25
  %30 = load i32, i32* %10, align 4
  %31 = add i32 %30, 1
  %32 = zext i32 %31 to i64
  store i64 %32, i64* %12, align 8
  %33 = load %4*, %4** %11, align 8
  %34 = icmp eq %4* %33, @105
  %35 = zext i1 %34 to i8
  store i8 %35, i8* %13, align 1
  %36 = load i64, i64* %12, align 8
  %37 = icmp ult i64 1152921504606846975, %36
  br i1 %37, label %38, label %39

; <label>:38:                                     ; preds = %29
  call void @xalloc_die() #16
  unreachable

; <label>:39:                                     ; preds = %29
  %40 = load i8, i8* %13, align 1
  %41 = trunc i8 %40 to i1
  %42 = load %4*, %4** %11, align 8
  %43 = select i1 %41, %4* null, %4* %42
  %44 = bitcast %4* %43 to i8*
  %45 = load i64, i64* %12, align 8
  %46 = mul i64 %45, 16
  %47 = call i8* @xrealloc(i8* %44, i64 %46)
  %48 = bitcast i8* %47 to %4*
  store %4* %48, %4** %11, align 8
  store %4* %48, %4** @102, align 8
  %49 = load i8, i8* %13, align 1
  %50 = trunc i8 %49 to i1
  br i1 %50, label %51, label %54

; <label>:51:                                     ; preds = %39
  %52 = load %4*, %4** %11, align 8
  %53 = bitcast %4* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* bitcast (%4* @105 to i8*), i64 16, i32 8, i1 false)
  br label %54

; <label>:54:                                     ; preds = %51, %39
  %55 = load %4*, %4** %11, align 8
  %56 = load i32, i32* @103, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %4, %4* %55, i64 %57
  %59 = bitcast %4* %58 to i8*
  %60 = load i64, i64* %12, align 8
  %61 = load i32, i32* @103, align 4
  %62 = zext i32 %61 to i64
  %63 = sub i64 %60, %62
  %64 = mul i64 %63, 16
  call void @llvm.memset.p0i8.i64(i8* %59, i8 0, i64 %64, i32 8, i1 false)
  %65 = load i64, i64* %12, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* @103, align 4
  br label %67

; <label>:67:                                     ; preds = %54, %25
  %68 = load %4*, %4** %11, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %4, %4* %68, i64 %70
  %72 = getelementptr inbounds %4, %4* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %14, align 8
  %74 = load %4*, %4** %11, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %4, %4* %74, i64 %76
  %78 = getelementptr inbounds %4, %4* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %15, align 8
  %80 = load %3*, %3** %8, align 8
  %81 = getelementptr inbounds %3, %3* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, 1
  store i32 %83, i32* %16, align 4
  %84 = load i8*, i8** %15, align 8
  %85 = load i64, i64* %14, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = load i64, i64* %7, align 8
  %88 = load %3*, %3** %8, align 8
  %89 = getelementptr inbounds %3, %3* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %16, align 4
  %92 = load %3*, %3** %8, align 8
  %93 = getelementptr inbounds %3, %3* %92, i32 0, i32 2
  %94 = getelementptr inbounds [8 x i32], [8 x i32]* %93, i32 0, i32 0
  %95 = load %3*, %3** %8, align 8
  %96 = getelementptr inbounds %3, %3* %95, i32 0, i32 3
  %97 = load i8*, i8** %96, align 8
  %98 = load %3*, %3** %8, align 8
  %99 = getelementptr inbounds %3, %3* %98, i32 0, i32 4
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 @152(i8* %84, i64 %85, i8* %86, i64 %87, i32 %90, i32 %91, i32* %94, i8* %97, i8* %100)
  store i64 %101, i64* %17, align 8
  %102 = load i64, i64* %14, align 8
  %103 = load i64, i64* %17, align 8
  %104 = icmp ule i64 %102, %103
  br i1 %104, label %105, label %143

; <label>:105:                                    ; preds = %67
  %106 = load i64, i64* %17, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %14, align 8
  %108 = load %4*, %4** %11, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %4, %4* %108, i64 %110
  %112 = getelementptr inbounds %4, %4* %111, i32 0, i32 0
  store i64 %107, i64* %112, align 8
  %113 = load i8*, i8** %15, align 8
  %114 = icmp ne i8* %113, getelementptr inbounds ([256 x i8], [256 x i8]* @104, i32 0, i32 0)
  br i1 %114, label %115, label %117

; <label>:115:                                    ; preds = %105
  %116 = load i8*, i8** %15, align 8
  call void @free(i8* %116) #11
  br label %117

; <label>:117:                                    ; preds = %115, %105
  %118 = load i64, i64* %14, align 8
  %119 = call noalias i8* @xcharalloc(i64 %118)
  store i8* %119, i8** %15, align 8
  %120 = load %4*, %4** %11, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %4, %4* %120, i64 %122
  %124 = getelementptr inbounds %4, %4* %123, i32 0, i32 1
  store i8* %119, i8** %124, align 8
  %125 = load i8*, i8** %15, align 8
  %126 = load i64, i64* %14, align 8
  %127 = load i8*, i8** %6, align 8
  %128 = load i64, i64* %7, align 8
  %129 = load %3*, %3** %8, align 8
  %130 = getelementptr inbounds %3, %3* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %16, align 4
  %133 = load %3*, %3** %8, align 8
  %134 = getelementptr inbounds %3, %3* %133, i32 0, i32 2
  %135 = getelementptr inbounds [8 x i32], [8 x i32]* %134, i32 0, i32 0
  %136 = load %3*, %3** %8, align 8
  %137 = getelementptr inbounds %3, %3* %136, i32 0, i32 3
  %138 = load i8*, i8** %137, align 8
  %139 = load %3*, %3** %8, align 8
  %140 = getelementptr inbounds %3, %3* %139, i32 0, i32 4
  %141 = load i8*, i8** %140, align 8
  %142 = call i64 @152(i8* %125, i64 %126, i8* %127, i64 %128, i32 %131, i32 %132, i32* %135, i8* %138, i8* %141)
  br label %143

; <label>:143:                                    ; preds = %117, %67
  %144 = load i32, i32* %9, align 4
  %145 = call i32* @__errno_location() #15
  store i32 %144, i32* %145, align 4
  %146 = load i8*, i8** %15, align 8
  ret i8* %146
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #10

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i8* @154(i32 %7, i8* %8, i64 %9, %3* @92)
  ret i8* %10
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg(i8*) #2 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i8* @quotearg_n(i32 0, i8* %3)
  ret i8* %4
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_mem(i8*, i64) #2 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i8* @quotearg_n_mem(i32 0, i8* %5, i64 %6)
  ret i8* %7
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_n_style(i32, i32, i8*) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %3, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* %5, align 4
  call void @155(%3* sret %7, i32 %8)
  %9 = load i32, i32* %4, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = call i8* @154(i32 %9, i8* %10, i64 -1, %3* %7)
  ret i8* %11
}

; Function Attrs: noinline nounwind uwtable
define internal void @155(%3* noalias sret, i32) #2 {
  %3 = alloca i32, align 4
  %4 = alloca %3, align 8
  store i32 %1, i32* %3, align 4
  %5 = bitcast %3* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 56, i32 8, i1 false)
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, 8
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %2
  call void @abort() #13
  unreachable

; <label>:9:                                      ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = getelementptr inbounds %3, %3* %4, i32 0, i32 0
  store i32 %10, i32* %11, align 8
  %12 = bitcast %3* %0 to i8*
  %13 = bitcast %3* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 56, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %3, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i32, i32* %6, align 4
  call void @155(%3* sret %9, i32 %10)
  %11 = load i32, i32* %5, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = load i64, i64* %8, align 8
  %14 = call i8* @154(i32 %11, i8* %12, i64 %13, %3* %9)
  ret i8* %14
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_style(i32, i8*) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i8*, i8** %4, align 8
  %7 = call i8* @quotearg_n_style(i32 0, i32 %5, i8* %6)
  ret i8* %7
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i8* @quotearg_n_style_mem(i32 0, i32 %7, i8* %8, i64 %9)
  ret i8* %10
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) #2 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %3, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8 %2, i8* %6, align 1
  %8 = bitcast %3* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast (%3* @92 to i8*), i64 56, i32 8, i1 false)
  %9 = load i8, i8* %6, align 1
  %10 = call i32 @set_char_quoting(%3* %7, i8 signext %9, i32 1)
  %11 = load i8*, i8** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i8* @154(i32 0, i8* %11, i64 %12, %3* %7)
  ret i8* %13
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_char(i8*, i8 signext) #2 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load i8*, i8** %3, align 8
  %6 = load i8, i8* %4, align 1
  %7 = call i8* @quotearg_char_mem(i8* %5, i64 -1, i8 signext %6)
  ret i8* %7
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_colon(i8*) #2 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i8* @quotearg_char(i8* %3, i8 signext 58)
  ret i8* %4
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_colon_mem(i8*, i64) #2 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i8* @quotearg_char_mem(i8* %5, i64 %6, i8 signext 58)
  ret i8* %7
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call i8* @quotearg_n_custom_mem(i32 %9, i8* %10, i8* %11, i8* %12, i64 -1)
  ret i8* %13
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) #2 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %3, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = bitcast %3* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* bitcast (%3* @92 to i8*), i64 56, i32 8, i1 false)
  %13 = load i8*, i8** %7, align 8
  %14 = load i8*, i8** %8, align 8
  call void @set_custom_quoting(%3* %11, i8* %13, i8* %14)
  %15 = load i32, i32* %6, align 4
  %16 = load i8*, i8** %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = call i8* @154(i32 %15, i8* %16, i64 %17, %3* %11)
  ret i8* %18
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) #2 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i8* @quotearg_n_custom(i32 0, i8* %7, i8* %8, i8* %9)
  ret i8* %10
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) #2 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call i8* @quotearg_n_custom_mem(i32 0, i8* %9, i8* %10, i8* %11, i64 %12)
  ret i8* %13
}

; Function Attrs: noinline nounwind uwtable
define i8* @quote_n(i32, i8*) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i8*, i8** %4, align 8
  %7 = call i8* @154(i32 %5, i8* %6, i64 -1, %3* @quote_quoting_options)
  ret i8* %7
}

; Function Attrs: noinline nounwind uwtable
define i8* @quote(i8*) #2 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i8* @quote_n(i32 0, i8* %3)
  ret i8* %4
}

; Function Attrs: noinline nounwind uwtable
define void @version_etc_arn(%0*, i8*, i8*, i8*, i8**, i64) #2 {
  %7 = alloca %0*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %0* %0, %0** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i64 %5, i64* %12, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp ne i8* %13, null
  %15 = load %0*, %0** %7, align 8
  br i1 %14, label %16, label %21

; <label>:16:                                     ; preds = %6
  %17 = load i8*, i8** %8, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = call i32 (%0*, i8*, ...) @fprintf(%0* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @106, i32 0, i32 0), i8* %17, i8* %18, i8* %19)
  br label %25

; <label>:21:                                     ; preds = %6
  %22 = load i8*, i8** %9, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = call i32 (%0*, i8*, ...) @fprintf(%0* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @107, i32 0, i32 0), i8* %22, i8* %23)
  br label %25

; <label>:25:                                     ; preds = %21, %16
  %26 = load %0*, %0** %7, align 8
  %27 = call i32 (%0*, i8*, ...) @fprintf(%0* %26, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @108, i32 0, i32 0), i32 2012)
  %28 = load %0*, %0** %7, align 8
  %29 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([203 x i8], [203 x i8]* @109, i32 0, i32 0), %0* %28)
  %30 = load i64, i64* %12, align 8
  switch i64 %30, label %194 [
    i64 0, label %31
    i64 1, label %32
    i64 2, label %38
    i64 3, label %47
    i64 4, label %59
    i64 5, label %74
    i64 6, label %92
    i64 7, label %113
    i64 8, label %137
    i64 9, label %164
  ]

; <label>:31:                                     ; preds = %25
  call void @abort() #13
  unreachable

; <label>:32:                                     ; preds = %25
  %33 = load %0*, %0** %7, align 8
  %34 = load i8**, i8*** %11, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 (%0*, i8*, ...) @fprintf(%0* %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @110, i32 0, i32 0), i8* %36)
  br label %224

; <label>:38:                                     ; preds = %25
  %39 = load %0*, %0** %7, align 8
  %40 = load i8**, i8*** %11, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i8**, i8*** %11, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (%0*, i8*, ...) @fprintf(%0* %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @111, i32 0, i32 0), i8* %42, i8* %45)
  br label %224

; <label>:47:                                     ; preds = %25
  %48 = load %0*, %0** %7, align 8
  %49 = load i8**, i8*** %11, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i8**, i8*** %11, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  %54 = load i8*, i8** %53, align 8
  %55 = load i8**, i8*** %11, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 2
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (%0*, i8*, ...) @fprintf(%0* %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @112, i32 0, i32 0), i8* %51, i8* %54, i8* %57)
  br label %224

; <label>:59:                                     ; preds = %25
  %60 = load %0*, %0** %7, align 8
  %61 = load i8**, i8*** %11, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i8**, i8*** %11, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 1
  %66 = load i8*, i8** %65, align 8
  %67 = load i8**, i8*** %11, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 2
  %69 = load i8*, i8** %68, align 8
  %70 = load i8**, i8*** %11, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 3
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 (%0*, i8*, ...) @fprintf(%0* %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @113, i32 0, i32 0), i8* %63, i8* %66, i8* %69, i8* %72)
  br label %224

; <label>:74:                                     ; preds = %25
  %75 = load %0*, %0** %7, align 8
  %76 = load i8**, i8*** %11, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 0
  %78 = load i8*, i8** %77, align 8
  %79 = load i8**, i8*** %11, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 1
  %81 = load i8*, i8** %80, align 8
  %82 = load i8**, i8*** %11, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 2
  %84 = load i8*, i8** %83, align 8
  %85 = load i8**, i8*** %11, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 3
  %87 = load i8*, i8** %86, align 8
  %88 = load i8**, i8*** %11, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 4
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 (%0*, i8*, ...) @fprintf(%0* %75, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @114, i32 0, i32 0), i8* %78, i8* %81, i8* %84, i8* %87, i8* %90)
  br label %224

; <label>:92:                                     ; preds = %25
  %93 = load %0*, %0** %7, align 8
  %94 = load i8**, i8*** %11, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 0
  %96 = load i8*, i8** %95, align 8
  %97 = load i8**, i8*** %11, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 1
  %99 = load i8*, i8** %98, align 8
  %100 = load i8**, i8*** %11, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 2
  %102 = load i8*, i8** %101, align 8
  %103 = load i8**, i8*** %11, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 3
  %105 = load i8*, i8** %104, align 8
  %106 = load i8**, i8*** %11, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 4
  %108 = load i8*, i8** %107, align 8
  %109 = load i8**, i8*** %11, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 5
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 (%0*, i8*, ...) @fprintf(%0* %93, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @115, i32 0, i32 0), i8* %96, i8* %99, i8* %102, i8* %105, i8* %108, i8* %111)
  br label %224

; <label>:113:                                    ; preds = %25
  %114 = load %0*, %0** %7, align 8
  %115 = load i8**, i8*** %11, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 0
  %117 = load i8*, i8** %116, align 8
  %118 = load i8**, i8*** %11, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i64 1
  %120 = load i8*, i8** %119, align 8
  %121 = load i8**, i8*** %11, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 2
  %123 = load i8*, i8** %122, align 8
  %124 = load i8**, i8*** %11, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 3
  %126 = load i8*, i8** %125, align 8
  %127 = load i8**, i8*** %11, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i64 4
  %129 = load i8*, i8** %128, align 8
  %130 = load i8**, i8*** %11, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 5
  %132 = load i8*, i8** %131, align 8
  %133 = load i8**, i8*** %11, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i64 6
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 (%0*, i8*, ...) @fprintf(%0* %114, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @116, i32 0, i32 0), i8* %117, i8* %120, i8* %123, i8* %126, i8* %129, i8* %132, i8* %135)
  br label %224

; <label>:137:                                    ; preds = %25
  %138 = load %0*, %0** %7, align 8
  %139 = load i8**, i8*** %11, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i64 0
  %141 = load i8*, i8** %140, align 8
  %142 = load i8**, i8*** %11, align 8
  %143 = getelementptr inbounds i8*, i8** %142, i64 1
  %144 = load i8*, i8** %143, align 8
  %145 = load i8**, i8*** %11, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 2
  %147 = load i8*, i8** %146, align 8
  %148 = load i8**, i8*** %11, align 8
  %149 = getelementptr inbounds i8*, i8** %148, i64 3
  %150 = load i8*, i8** %149, align 8
  %151 = load i8**, i8*** %11, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i64 4
  %153 = load i8*, i8** %152, align 8
  %154 = load i8**, i8*** %11, align 8
  %155 = getelementptr inbounds i8*, i8** %154, i64 5
  %156 = load i8*, i8** %155, align 8
  %157 = load i8**, i8*** %11, align 8
  %158 = getelementptr inbounds i8*, i8** %157, i64 6
  %159 = load i8*, i8** %158, align 8
  %160 = load i8**, i8*** %11, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i64 7
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 (%0*, i8*, ...) @fprintf(%0* %138, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @117, i32 0, i32 0), i8* %141, i8* %144, i8* %147, i8* %150, i8* %153, i8* %156, i8* %159, i8* %162)
  br label %224

; <label>:164:                                    ; preds = %25
  %165 = load %0*, %0** %7, align 8
  %166 = load i8**, i8*** %11, align 8
  %167 = getelementptr inbounds i8*, i8** %166, i64 0
  %168 = load i8*, i8** %167, align 8
  %169 = load i8**, i8*** %11, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i64 1
  %171 = load i8*, i8** %170, align 8
  %172 = load i8**, i8*** %11, align 8
  %173 = getelementptr inbounds i8*, i8** %172, i64 2
  %174 = load i8*, i8** %173, align 8
  %175 = load i8**, i8*** %11, align 8
  %176 = getelementptr inbounds i8*, i8** %175, i64 3
  %177 = load i8*, i8** %176, align 8
  %178 = load i8**, i8*** %11, align 8
  %179 = getelementptr inbounds i8*, i8** %178, i64 4
  %180 = load i8*, i8** %179, align 8
  %181 = load i8**, i8*** %11, align 8
  %182 = getelementptr inbounds i8*, i8** %181, i64 5
  %183 = load i8*, i8** %182, align 8
  %184 = load i8**, i8*** %11, align 8
  %185 = getelementptr inbounds i8*, i8** %184, i64 6
  %186 = load i8*, i8** %185, align 8
  %187 = load i8**, i8*** %11, align 8
  %188 = getelementptr inbounds i8*, i8** %187, i64 7
  %189 = load i8*, i8** %188, align 8
  %190 = load i8**, i8*** %11, align 8
  %191 = getelementptr inbounds i8*, i8** %190, i64 8
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 (%0*, i8*, ...) @fprintf(%0* %165, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @118, i32 0, i32 0), i8* %168, i8* %171, i8* %174, i8* %177, i8* %180, i8* %183, i8* %186, i8* %189, i8* %192)
  br label %224

; <label>:194:                                    ; preds = %25
  %195 = load %0*, %0** %7, align 8
  %196 = load i8**, i8*** %11, align 8
  %197 = getelementptr inbounds i8*, i8** %196, i64 0
  %198 = load i8*, i8** %197, align 8
  %199 = load i8**, i8*** %11, align 8
  %200 = getelementptr inbounds i8*, i8** %199, i64 1
  %201 = load i8*, i8** %200, align 8
  %202 = load i8**, i8*** %11, align 8
  %203 = getelementptr inbounds i8*, i8** %202, i64 2
  %204 = load i8*, i8** %203, align 8
  %205 = load i8**, i8*** %11, align 8
  %206 = getelementptr inbounds i8*, i8** %205, i64 3
  %207 = load i8*, i8** %206, align 8
  %208 = load i8**, i8*** %11, align 8
  %209 = getelementptr inbounds i8*, i8** %208, i64 4
  %210 = load i8*, i8** %209, align 8
  %211 = load i8**, i8*** %11, align 8
  %212 = getelementptr inbounds i8*, i8** %211, i64 5
  %213 = load i8*, i8** %212, align 8
  %214 = load i8**, i8*** %11, align 8
  %215 = getelementptr inbounds i8*, i8** %214, i64 6
  %216 = load i8*, i8** %215, align 8
  %217 = load i8**, i8*** %11, align 8
  %218 = getelementptr inbounds i8*, i8** %217, i64 7
  %219 = load i8*, i8** %218, align 8
  %220 = load i8**, i8*** %11, align 8
  %221 = getelementptr inbounds i8*, i8** %220, i64 8
  %222 = load i8*, i8** %221, align 8
  %223 = call i32 (%0*, i8*, ...) @fprintf(%0* %195, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @119, i32 0, i32 0), i8* %198, i8* %201, i8* %204, i8* %207, i8* %210, i8* %213, i8* %216, i8* %219, i8* %222)
  br label %224

; <label>:224:                                    ; preds = %194, %164, %137, %113, %92, %74, %59, %47, %38, %32
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @version_etc_ar(%0*, i8*, i8*, i8*, i8**) #2 {
  %6 = alloca %0*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %0* %0, %0** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8** %4, i8*** %10, align 8
  store i64 0, i64* %11, align 8
  br label %12

; <label>:12:                                     ; preds = %18, %5
  %13 = load i8**, i8*** %10, align 8
  %14 = load i64, i64* %11, align 8
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

; <label>:18:                                     ; preds = %12
  %19 = load i64, i64* %11, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %11, align 8
  br label %12

; <label>:21:                                     ; preds = %12
  %22 = load %0*, %0** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i8**, i8*** %10, align 8
  %27 = load i64, i64* %11, align 8
  call void @version_etc_arn(%0* %22, i8* %23, i8* %24, i8* %25, i8** %26, i64 %27)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @version_etc_va(%0*, i8*, i8*, i8*, %8*) #2 {
  %6 = alloca %0*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [10 x i8*], align 16
  store %0* %0, %0** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store %8* %4, %8** %10, align 8
  store i64 0, i64* %11, align 8
  br label %13

; <label>:13:                                     ; preds = %38, %5
  %14 = load i64, i64* %11, align 8
  %15 = icmp ult i64 %14, 10
  br i1 %15, label %16, label %.critedge

; <label>:16:                                     ; preds = %13
  %17 = load %8*, %8** %10, align 8
  %18 = getelementptr inbounds %8, %8* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ule i32 %19, 40
  br i1 %20, label %21, label %27

; <label>:21:                                     ; preds = %16
  %22 = getelementptr inbounds %8, %8* %17, i32 0, i32 3
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr i8, i8* %23, i32 %19
  %25 = bitcast i8* %24 to i8**
  %26 = add i32 %19, 8
  store i32 %26, i32* %18, align 8
  br label %32

; <label>:27:                                     ; preds = %16
  %28 = getelementptr inbounds %8, %8* %17, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = bitcast i8* %29 to i8**
  %31 = getelementptr i8, i8* %29, i32 8
  store i8* %31, i8** %28, align 8
  br label %32

; <label>:32:                                     ; preds = %27, %21
  %33 = phi i8** [ %25, %21 ], [ %30, %27 ]
  %34 = load i8*, i8** %33, align 8
  %35 = load i64, i64* %11, align 8
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %12, i64 0, i64 %35
  store i8* %34, i8** %36, align 8
  %37 = icmp ne i8* %34, null
  br i1 %37, label %38, label %.critedge

; <label>:38:                                     ; preds = %32
  %39 = load i64, i64* %11, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %11, align 8
  br label %13

.critedge:                                        ; preds = %13, %32
  %41 = load %0*, %0** %6, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %12, i32 0, i32 0
  %46 = load i64, i64* %11, align 8
  call void @version_etc_arn(%0* %41, i8* %42, i8* %43, i8* %44, i8** %45, i64 %46)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @version_etc(%0*, i8*, i8*, i8*, ...) #2 {
  %5 = alloca %0*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [1 x %8], align 16
  store %0* %0, %0** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = getelementptr inbounds [1 x %8], [1 x %8]* %9, i32 0, i32 0
  %11 = bitcast %8* %10 to i8*
  call void @llvm.va_start(i8* %11)
  %12 = load %0*, %0** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = getelementptr inbounds [1 x %8], [1 x %8]* %9, i32 0, i32 0
  call void @version_etc_va(%0* %12, i8* %13, i8* %14, i8* %15, %8* %16)
  %17 = getelementptr inbounds [1 x %8], [1 x %8]* %9, i32 0, i32 0
  %18 = bitcast %8* %17 to i8*
  call void @llvm.va_end(i8* %18)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: noinline nounwind uwtable
define void @emit_bug_reporting_address() #2 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @120, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @121, i32 0, i32 0))
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @122, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @123, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @124, i32 0, i32 0))
  %3 = load %0*, %0** @stdout, align 8
  %4 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @125, i32 0, i32 0), %0* %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define noalias i8* @xnmalloc(i64, i64) #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = udiv i64 -1, %5
  %7 = load i64, i64* %3, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %2
  call void @xalloc_die() #16
  unreachable

; <label>:10:                                     ; preds = %2
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* %4, align 8
  %13 = mul i64 %11, %12
  %14 = call noalias i8* @xmalloc(i64 %13)
  ret i8* %14
}

; Function Attrs: noinline nounwind uwtable
define noalias i8* @xmalloc(i64) #2 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call noalias i8* @malloc(i64 %4) #11
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  %8 = load i64, i64* %2, align 8
  %9 = icmp ne i64 %8, 0
  %or.cond = and i1 %7, %9
  br i1 %or.cond, label %10, label %11

; <label>:10:                                     ; preds = %1
  call void @xalloc_die() #16
  unreachable

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** %3, align 8
  ret i8* %12
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #5

; Function Attrs: noinline nounwind uwtable
define i8* @xnrealloc(i8*, i64, i64) #2 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = udiv i64 -1, %7
  %9 = load i64, i64* %5, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %3
  call void @xalloc_die() #16
  unreachable

; <label>:12:                                     ; preds = %3
  %13 = load i8*, i8** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = mul i64 %14, %15
  %17 = call i8* @xrealloc(i8* %13, i64 %16)
  ret i8* %17
}

; Function Attrs: noinline nounwind uwtable
define i8* @xrealloc(i8*, i64) #2 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  %or.cond = and i1 %7, %9
  %10 = load i8*, i8** %4, align 8
  br i1 %or.cond, label %11, label %12

; <label>:11:                                     ; preds = %2
  call void @free(i8* %10) #11
  store i8* null, i8** %3, align 8
  br label %22

; <label>:12:                                     ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = call i8* @realloc(i8* %10, i64 %13) #11
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp eq i8* %15, null
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  %or.cond3 = and i1 %16, %18
  br i1 %or.cond3, label %19, label %20

; <label>:19:                                     ; preds = %12
  call void @xalloc_die() #16
  unreachable

; <label>:20:                                     ; preds = %12
  %21 = load i8*, i8** %4, align 8
  store i8* %21, i8** %3, align 8
  br label %22

; <label>:22:                                     ; preds = %20, %11
  %23 = load i8*, i8** %3, align 8
  ret i8* %23
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #5

; Function Attrs: noinline nounwind uwtable
define i8* @x2nrealloc(i8*, i64*, i64) #2 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %25, label %12

; <label>:12:                                     ; preds = %3
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %37, label %15

; <label>:15:                                     ; preds = %12
  %16 = load i64, i64* %6, align 8
  %17 = udiv i64 128, %16
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %7, align 8
  %24 = add i64 %23, %22
  store i64 %24, i64* %7, align 8
  br label %37

; <label>:25:                                     ; preds = %3
  %26 = load i64, i64* %6, align 8
  %27 = udiv i64 -6148914691236517206, %26
  %28 = load i64, i64* %7, align 8
  %29 = icmp ule i64 %27, %28
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %25
  call void @xalloc_die() #16
  unreachable

; <label>:31:                                     ; preds = %25
  %32 = load i64, i64* %7, align 8
  %33 = add i64 %32, 1
  %34 = udiv i64 %33, 2
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %35, %34
  store i64 %36, i64* %7, align 8
  br label %37

; <label>:37:                                     ; preds = %12, %15, %31
  %38 = load i64, i64* %7, align 8
  %39 = load i64*, i64** %5, align 8
  store i64 %38, i64* %39, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %6, align 8
  %43 = mul i64 %41, %42
  %44 = call i8* @xrealloc(i8* %40, i64 %43)
  ret i8* %44
}

; Function Attrs: noinline nounwind uwtable
define noalias i8* @xcharalloc(i64) #2 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call noalias i8* @xmalloc(i64 %3)
  ret i8* %4
}

; Function Attrs: noinline nounwind uwtable
define i8* @x2realloc(i8*, i64*) #2 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  store i64* %1, i64** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i64*, i64** %4, align 8
  %7 = call i8* @x2nrealloc(i8* %5, i64* %6, i64 1)
  ret i8* %7
}

; Function Attrs: noinline nounwind uwtable
define noalias i8* @xzalloc(i64) #2 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call noalias i8* @xmalloc(i64 %3)
  %5 = load i64, i64* %2, align 8
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 %5, i32 1, i1 false)
  ret i8* %4
}

; Function Attrs: noinline nounwind uwtable
define noalias i8* @xcalloc(i64, i64) #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call noalias i8* @calloc(i64 %6, i64 %7) #11
  store i8* %8, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %2
  call void @xalloc_die() #16
  unreachable

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %5, align 8
  ret i8* %12
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #5

; Function Attrs: noinline nounwind uwtable
define noalias i8* @xmemdup(i8*, i64) #2 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = call noalias i8* @xmalloc(i64 %5)
  %7 = load i8*, i8** %3, align 8
  %8 = load i64, i64* %4, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 %8, i32 1, i1 false)
  ret i8* %6
}

; Function Attrs: noinline nounwind uwtable
define noalias i8* @xstrdup(i8*) #2 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i64 @strlen(i8* %4) #14
  %6 = add i64 %5, 1
  %7 = call noalias i8* @xmemdup(i8* %3, i64 %6)
  ret i8* %7
}

; Function Attrs: noinline noreturn nounwind uwtable
define void @xalloc_die() #0 {
  %1 = load volatile i32, i32* @exit_failure, align 4
  call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @126, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @127, i32 0, i32 0))
  call void @abort() #13
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define i32 @xmemcoll(i8*, i64, i8*, i64) #2 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @memcoll(i8* %11, i64 %12, i8* %13, i64 %14)
  store i32 %15, i32* %9, align 4
  %16 = call i32* @__errno_location() #15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

; <label>:20:                                     ; preds = %4
  %21 = load i32, i32* %10, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i64, i64* %8, align 8
  call void @156(i32 %21, i8* %22, i64 %23, i8* %24, i64 %25)
  br label %26

; <label>:26:                                     ; preds = %20, %4
  %27 = load i32, i32* %9, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind uwtable
define internal void @156(i32, i8*, i64, i8*, i64) #2 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load i32, i32* %6, align 4
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @128, i32 0, i32 0))
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @129, i32 0, i32 0))
  %12 = load volatile i32, i32* @exit_failure, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = call i8* @quotearg_n_style_mem(i32 0, i32 6, i8* %13, i64 %14)
  %16 = load i8*, i8** %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = call i8* @quotearg_n_style_mem(i32 1, i32 6, i8* %16, i64 %17)
  call void (i32, i32, i8*, ...) @error(i32 %12, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @130, i32 0, i32 0), i8* %15, i8* %18)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @xmemcoll0(i8*, i64, i8*, i64) #2 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @memcoll0(i8* %11, i64 %12, i8* %13, i64 %14)
  store i32 %15, i32* %9, align 4
  %16 = call i32* @__errno_location() #15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

; <label>:20:                                     ; preds = %4
  %21 = load i32, i32* %10, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = sub i64 %23, 1
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = sub i64 %26, 1
  call void @156(i32 %21, i8* %22, i64 %24, i8* %25, i64 %27)
  br label %28

; <label>:28:                                     ; preds = %20, %4
  %29 = load i32, i32* %9, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind uwtable
define i32 @xstrtoul(i8*, i8**, i32, i64*, i8*) #2 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %15, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp sle i32 0, %21
  %23 = load i32, i32* %9, align 4
  %24 = icmp sle i32 %23, 36
  %or.cond = and i1 %22, %24
  br i1 %or.cond, label %26, label %25

; <label>:25:                                     ; preds = %5
  call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @131, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @132, i32 0, i32 0), i32 96, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @133, i32 0, i32 0)) #13
  unreachable

; <label>:26:                                     ; preds = %5
  %27 = load i8**, i8*** %8, align 8
  %28 = icmp ne i8** %27, null
  %29 = load i8**, i8*** %8, align 8
  %30 = select i1 %28, i8** %29, i8** %12
  store i8** %30, i8*** %13, align 8
  %31 = load i8*, i8** %7, align 8
  store i8* %31, i8** %16, align 8
  %32 = load i8*, i8** %16, align 8
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %17, align 1
  br label %34

; <label>:34:                                     ; preds = %45, %26
  %35 = call i16** @__ctype_b_loc() #15
  %36 = load i16*, i16** %35, align 8
  %37 = load i8, i8* %17, align 1
  %38 = zext i8 %37 to i32
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i16, i16* %36, i64 %39
  %41 = load i16, i16* %40, align 2
  %42 = zext i16 %41 to i32
  %43 = and i32 %42, 8192
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

; <label>:45:                                     ; preds = %34
  %46 = load i8*, i8** %16, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %16, align 8
  %48 = load i8, i8* %47, align 1
  store i8 %48, i8* %17, align 1
  br label %34

; <label>:49:                                     ; preds = %34
  %50 = load i8, i8* %17, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %51, 45
  br i1 %52, label %53, label %54

; <label>:53:                                     ; preds = %49
  store i32 4, i32* %6, align 4
  br label %205

; <label>:54:                                     ; preds = %49
  %55 = call i32* @__errno_location() #15
  store i32 0, i32* %55, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = load i8**, i8*** %13, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i64 @strtoul(i8* %56, i8** %57, i32 %58) #11
  store i64 %59, i64* %14, align 8
  %60 = load i8**, i8*** %13, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = icmp eq i8* %61, %62
  br i1 %63, label %64, label %83

; <label>:64:                                     ; preds = %54
  %65 = load i8*, i8** %11, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %82

; <label>:67:                                     ; preds = %64
  %68 = load i8**, i8*** %13, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

; <label>:73:                                     ; preds = %67
  %74 = load i8*, i8** %11, align 8
  %75 = load i8**, i8*** %13, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = call i8* @strchr(i8* %74, i32 %78) #14
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %82

; <label>:81:                                     ; preds = %73
  store i64 1, i64* %14, align 8
  br label %93

; <label>:82:                                     ; preds = %73, %67, %64
  store i32 4, i32* %6, align 4
  br label %205

; <label>:83:                                     ; preds = %54
  %84 = call i32* @__errno_location() #15
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

; <label>:87:                                     ; preds = %83
  %88 = call i32* @__errno_location() #15
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 34
  br i1 %90, label %91, label %92

; <label>:91:                                     ; preds = %87
  store i32 4, i32* %6, align 4
  br label %205

; <label>:92:                                     ; preds = %87
  store i32 1, i32* %15, align 4
  br label %93

; <label>:93:                                     ; preds = %83, %92, %81
  %94 = load i8*, i8** %11, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %100, label %96

; <label>:96:                                     ; preds = %93
  %97 = load i64, i64* %14, align 8
  %98 = load i64*, i64** %10, align 8
  store i64 %97, i64* %98, align 8
  %99 = load i32, i32* %15, align 4
  store i32 %99, i32* %6, align 4
  br label %205

; <label>:100:                                    ; preds = %93
  %101 = load i8**, i8*** %13, align 8
  %102 = load i8*, i8** %101, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %201

; <label>:106:                                    ; preds = %100
  store i32 1024, i32* %18, align 4
  store i32 1, i32* %19, align 4
  %107 = load i8*, i8** %11, align 8
  %108 = load i8**, i8*** %13, align 8
  %109 = load i8*, i8** %108, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = call i8* @strchr(i8* %107, i32 %111) #14
  %113 = icmp ne i8* %112, null
  br i1 %113, label %119, label %114

; <label>:114:                                    ; preds = %106
  %115 = load i64, i64* %14, align 8
  %116 = load i64*, i64** %10, align 8
  store i64 %115, i64* %116, align 8
  %117 = load i32, i32* %15, align 4
  %118 = or i32 %117, 2
  store i32 %118, i32* %6, align 4
  br label %205

; <label>:119:                                    ; preds = %106
  %120 = load i8*, i8** %11, align 8
  %121 = call i8* @strchr(i8* %120, i32 48) #14
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %144

; <label>:123:                                    ; preds = %119
  %124 = load i8**, i8*** %13, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 0
  %126 = load i8*, i8** %125, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 1
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  switch i32 %129, label %144 [
    i32 105, label %130
    i32 66, label %141
    i32 68, label %141
  ]

; <label>:130:                                    ; preds = %123
  %131 = load i8**, i8*** %13, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i64 0
  %133 = load i8*, i8** %132, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 2
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 66
  br i1 %137, label %138, label %144

; <label>:138:                                    ; preds = %130
  %139 = load i32, i32* %19, align 4
  %140 = add nsw i32 %139, 2
  store i32 %140, i32* %19, align 4
  br label %144

; <label>:141:                                    ; preds = %123, %123
  store i32 1000, i32* %18, align 4
  %142 = load i32, i32* %19, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %19, align 4
  br label %144

; <label>:144:                                    ; preds = %141, %123, %138, %130, %119
  %145 = load i8**, i8*** %13, align 8
  %146 = load i8*, i8** %145, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  switch i32 %148, label %180 [
    i32 98, label %149
    i32 66, label %151
    i32 99, label %153
    i32 69, label %154
    i32 71, label %157
    i32 103, label %157
    i32 107, label %160
    i32 75, label %160
    i32 77, label %163
    i32 109, label %163
    i32 80, label %166
    i32 84, label %169
    i32 116, label %169
    i32 119, label %172
    i32 89, label %174
    i32 90, label %177
  ]

; <label>:149:                                    ; preds = %144
  %150 = call i32 @157(i64* %14, i32 512)
  store i32 %150, i32* %20, align 4
  br label %185

; <label>:151:                                    ; preds = %144
  %152 = call i32 @157(i64* %14, i32 1024)
  store i32 %152, i32* %20, align 4
  br label %185

; <label>:153:                                    ; preds = %144
  store i32 0, i32* %20, align 4
  br label %185

; <label>:154:                                    ; preds = %144
  %155 = load i32, i32* %18, align 4
  %156 = call i32 @158(i64* %14, i32 %155, i32 6)
  store i32 %156, i32* %20, align 4
  br label %185

; <label>:157:                                    ; preds = %144, %144
  %158 = load i32, i32* %18, align 4
  %159 = call i32 @158(i64* %14, i32 %158, i32 3)
  store i32 %159, i32* %20, align 4
  br label %185

; <label>:160:                                    ; preds = %144, %144
  %161 = load i32, i32* %18, align 4
  %162 = call i32 @158(i64* %14, i32 %161, i32 1)
  store i32 %162, i32* %20, align 4
  br label %185

; <label>:163:                                    ; preds = %144, %144
  %164 = load i32, i32* %18, align 4
  %165 = call i32 @158(i64* %14, i32 %164, i32 2)
  store i32 %165, i32* %20, align 4
  br label %185

; <label>:166:                                    ; preds = %144
  %167 = load i32, i32* %18, align 4
  %168 = call i32 @158(i64* %14, i32 %167, i32 5)
  store i32 %168, i32* %20, align 4
  br label %185

; <label>:169:                                    ; preds = %144, %144
  %170 = load i32, i32* %18, align 4
  %171 = call i32 @158(i64* %14, i32 %170, i32 4)
  store i32 %171, i32* %20, align 4
  br label %185

; <label>:172:                                    ; preds = %144
  %173 = call i32 @157(i64* %14, i32 2)
  store i32 %173, i32* %20, align 4
  br label %185

; <label>:174:                                    ; preds = %144
  %175 = load i32, i32* %18, align 4
  %176 = call i32 @158(i64* %14, i32 %175, i32 8)
  store i32 %176, i32* %20, align 4
  br label %185

; <label>:177:                                    ; preds = %144
  %178 = load i32, i32* %18, align 4
  %179 = call i32 @158(i64* %14, i32 %178, i32 7)
  store i32 %179, i32* %20, align 4
  br label %185

; <label>:180:                                    ; preds = %144
  %181 = load i64, i64* %14, align 8
  %182 = load i64*, i64** %10, align 8
  store i64 %181, i64* %182, align 8
  %183 = load i32, i32* %15, align 4
  %184 = or i32 %183, 2
  store i32 %184, i32* %6, align 4
  br label %205

; <label>:185:                                    ; preds = %177, %174, %172, %169, %166, %163, %160, %157, %154, %153, %151, %149
  %186 = load i32, i32* %20, align 4
  %187 = load i32, i32* %15, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %15, align 4
  %189 = load i32, i32* %19, align 4
  %190 = load i8**, i8*** %13, align 8
  %191 = load i8*, i8** %190, align 8
  %192 = sext i32 %189 to i64
  %193 = getelementptr inbounds i8, i8* %191, i64 %192
  store i8* %193, i8** %190, align 8
  %194 = load i8**, i8*** %13, align 8
  %195 = load i8*, i8** %194, align 8
  %196 = load i8, i8* %195, align 1
  %197 = icmp ne i8 %196, 0
  br i1 %197, label %198, label %201

; <label>:198:                                    ; preds = %185
  %199 = load i32, i32* %15, align 4
  %200 = or i32 %199, 2
  store i32 %200, i32* %15, align 4
  br label %201

; <label>:201:                                    ; preds = %185, %198, %100
  %202 = load i64, i64* %14, align 8
  %203 = load i64*, i64** %10, align 8
  store i64 %202, i64* %203, align 8
  %204 = load i32, i32* %15, align 4
  store i32 %204, i32* %6, align 4
  br label %205

; <label>:205:                                    ; preds = %201, %180, %114, %96, %91, %82, %53
  %206 = load i32, i32* %6, align 4
  ret i32 %206
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #5

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #6

; Function Attrs: noinline nounwind uwtable
define internal i32 @157(i64*, i32) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = sext i32 %6 to i64
  %8 = udiv i64 -1, %7
  %9 = load i64*, i64** %4, align 8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %8, %10
  br i1 %11, label %12, label %14

; <label>:12:                                     ; preds = %2
  %13 = load i64*, i64** %4, align 8
  store i64 -1, i64* %13, align 8
  store i32 1, i32* %3, align 4
  br label %20

; <label>:14:                                     ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64*, i64** %4, align 8
  %18 = load i64, i64* %17, align 8
  %19 = mul i64 %18, %16
  store i64 %19, i64* %17, align 8
  store i32 0, i32* %3, align 4
  br label %20

; <label>:20:                                     ; preds = %14, %12
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @158(i64*, i32, i32) #2 {
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

; <label>:8:                                      ; preds = %12, %3
  %9 = load i32, i32* %6, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %6, align 4
  %11 = icmp ne i32 %9, 0
  br i1 %11, label %12, label %18

; <label>:12:                                     ; preds = %8
  %13 = load i64*, i64** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @157(i64* %13, i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %7, align 4
  br label %8

; <label>:18:                                     ; preds = %8
  %19 = load i32, i32* %7, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define i32 @rpl_fclose(%0* nonnull) #2 {
  %2 = alloca i32, align 4
  %3 = alloca %0*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %0* %0, %0** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %0*, %0** %3, align 8
  %8 = call i32 @fileno(%0* %7) #11
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  %11 = load %0*, %0** %3, align 8
  br i1 %10, label %12, label %14

; <label>:12:                                     ; preds = %1
  %13 = call i32 @fclose(%0* %11)
  store i32 %13, i32* %2, align 4
  br label %39

; <label>:14:                                     ; preds = %1
  %15 = call i32 @__freading(%0* %11) #11
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

; <label>:17:                                     ; preds = %14
  %18 = load %0*, %0** %3, align 8
  %19 = call i32 @fileno(%0* %18) #11
  %20 = call i64 @lseek(i32 %19, i64 0, i32 1) #11
  %21 = icmp ne i64 %20, -1
  br i1 %21, label %22, label %29

; <label>:22:                                     ; preds = %17, %14
  %23 = load %0*, %0** %3, align 8
  %24 = call i32 @rpl_fflush(%0* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

; <label>:26:                                     ; preds = %22
  %27 = call i32* @__errno_location() #15
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %4, align 4
  br label %29

; <label>:29:                                     ; preds = %26, %22, %17
  %30 = load %0*, %0** %3, align 8
  %31 = call i32 @fclose(%0* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

; <label>:34:                                     ; preds = %29
  %35 = load i32, i32* %4, align 4
  %36 = call i32* @__errno_location() #15
  store i32 %35, i32* %36, align 4
  store i32 -1, i32* %6, align 4
  br label %37

; <label>:37:                                     ; preds = %34, %29
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %39

; <label>:39:                                     ; preds = %37, %12
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare i32 @fclose(%0*) #3

; Function Attrs: nounwind
declare i32 @__freading(%0*) #5

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #5

; Function Attrs: noinline nounwind uwtable
define i32 @rpl_fflush(%0*) #2 {
  %2 = alloca i32, align 4
  %3 = alloca %0*, align 8
  store %0* %0, %0** %3, align 8
  %4 = load %0*, %0** %3, align 8
  %5 = icmp eq %0* %4, null
  br i1 %5, label %10, label %6

; <label>:6:                                      ; preds = %1
  %7 = load %0*, %0** %3, align 8
  %8 = call i32 @__freading(%0* %7) #11
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

; <label>:10:                                     ; preds = %6, %1
  %11 = load %0*, %0** %3, align 8
  %12 = call i32 @fflush(%0* %11)
  store i32 %12, i32* %2, align 4
  br label %17

; <label>:13:                                     ; preds = %6
  %14 = load %0*, %0** %3, align 8
  call void @159(%0* %14)
  %15 = load %0*, %0** %3, align 8
  %16 = call i32 @fflush(%0* %15)
  store i32 %16, i32* %2, align 4
  br label %17

; <label>:17:                                     ; preds = %13, %10
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare i32 @fflush(%0*) #3

; Function Attrs: noinline nounwind uwtable
define internal void @159(%0*) #2 {
  %2 = alloca %0*, align 8
  store %0* %0, %0** %2, align 8
  %3 = load %0*, %0** %2, align 8
  %4 = getelementptr inbounds %0, %0* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = and i32 %5, 256
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

; <label>:8:                                      ; preds = %1
  %9 = load %0*, %0** %2, align 8
  %10 = call i32 @rpl_fseeko(%0* %9, i64 0, i32 1)
  br label %11

; <label>:11:                                     ; preds = %8, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @rpl_fseeko(%0* nonnull, i64, i32) #2 {
  %4 = alloca i32, align 4
  %5 = alloca %0*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %0* %0, %0** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %0*, %0** %5, align 8
  %10 = getelementptr inbounds %0, %0* %9, i32 0, i32 2
  %11 = load i8*, i8** %10, align 8
  %12 = load %0*, %0** %5, align 8
  %13 = getelementptr inbounds %0, %0* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = icmp eq i8* %11, %14
  br i1 %15, label %16, label %46

; <label>:16:                                     ; preds = %3
  %17 = load %0*, %0** %5, align 8
  %18 = getelementptr inbounds %0, %0* %17, i32 0, i32 5
  %19 = load i8*, i8** %18, align 8
  %20 = load %0*, %0** %5, align 8
  %21 = getelementptr inbounds %0, %0* %20, i32 0, i32 4
  %22 = load i8*, i8** %21, align 8
  %23 = icmp eq i8* %19, %22
  br i1 %23, label %24, label %46

; <label>:24:                                     ; preds = %16
  %25 = load %0*, %0** %5, align 8
  %26 = getelementptr inbounds %0, %0* %25, i32 0, i32 9
  %27 = load i8*, i8** %26, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %46

; <label>:29:                                     ; preds = %24
  %30 = load %0*, %0** %5, align 8
  %31 = call i32 @fileno(%0* %30) #11
  %32 = load i64, i64* %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @lseek(i32 %31, i64 %32, i32 %33) #11
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp eq i64 %35, -1
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %29
  store i32 -1, i32* %4, align 4
  br label %51

; <label>:38:                                     ; preds = %29
  %39 = load %0*, %0** %5, align 8
  %40 = getelementptr inbounds %0, %0* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, -17
  store i32 %42, i32* %40, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load %0*, %0** %5, align 8
  %45 = getelementptr inbounds %0, %0* %44, i32 0, i32 21
  store i64 %43, i64* %45, align 8
  store i32 0, i32* %4, align 4
  br label %51

; <label>:46:                                     ; preds = %24, %16, %3
  %47 = load %0*, %0** %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @fseeko(%0* %47, i64 %48, i32 %49)
  store i32 %50, i32* %4, align 4
  br label %51

; <label>:51:                                     ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare i32 @fseeko(%0*, i64, i32) #3

; Function Attrs: noinline nounwind readonly uwtable
define i32 @c_strcasecmp(i8*, i8*) #8 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp eq i8* %12, %13
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

; <label>:16:                                     ; preds = %2
  br label %17

; <label>:17:                                     ; preds = %31, %16
  %18 = load i8*, i8** %6, align 8
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = call i32 @c_tolower(i32 %20) #15
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %8, align 1
  %23 = load i8*, i8** %7, align 8
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = call i32 @c_tolower(i32 %25) #15
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %9, align 1
  %28 = load i8, i8* %8, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %41, label %31

; <label>:31:                                     ; preds = %17
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %6, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %7, align 8
  %36 = load i8, i8* %8, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* %9, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %17, label %41

; <label>:41:                                     ; preds = %17, %31
  %42 = load i8, i8* %8, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8, i8* %9, align 1
  %45 = zext i8 %44 to i32
  %46 = sub nsw i32 %43, %45
  store i32 %46, i32* %3, align 4
  br label %47

; <label>:47:                                     ; preds = %41, %15
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

; Function Attrs: noinline nounwind uwtable
define i32 @close_stream(%0*) #2 {
  %2 = alloca i32, align 4
  %3 = alloca %0*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %0* %0, %0** %3, align 8
  %7 = load %0*, %0** %3, align 8
  %8 = call i64 @__fpending(%0* %7) #11
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %4, align 1
  %11 = load %0*, %0** %3, align 8
  %12 = call i32 @ferror_unlocked(%0* %11) #11
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i8
  store i8 %14, i8* %5, align 1
  %15 = load %0*, %0** %3, align 8
  %16 = call i32 @rpl_fclose(%0* %15)
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %6, align 1
  %19 = load i8, i8* %5, align 1
  %20 = trunc i8 %19 to i1
  br i1 %20, label %31, label %21

; <label>:21:                                     ; preds = %1
  %22 = load i8, i8* %6, align 1
  %23 = trunc i8 %22 to i1
  br i1 %23, label %24, label %37

; <label>:24:                                     ; preds = %21
  %25 = load i8, i8* %4, align 1
  %26 = trunc i8 %25 to i1
  br i1 %26, label %31, label %27

; <label>:27:                                     ; preds = %24
  %28 = call i32* @__errno_location() #15
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 9
  br i1 %30, label %31, label %37

; <label>:31:                                     ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1
  %33 = trunc i8 %32 to i1
  br i1 %33, label %36, label %34

; <label>:34:                                     ; preds = %31
  %35 = call i32* @__errno_location() #15
  store i32 0, i32* %35, align 4
  br label %36

; <label>:36:                                     ; preds = %34, %31
  store i32 -1, i32* %2, align 4
  br label %38

; <label>:37:                                     ; preds = %27, %21
  store i32 0, i32* %2, align 4
  br label %38

; <label>:38:                                     ; preds = %37, %36
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

; Function Attrs: nounwind
declare i64 @__fpending(%0*) #5

; Function Attrs: noinline nounwind uwtable
define i8* @locale_charset() #2 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = call i8* @nl_langinfo(i32 14) #11
  store i8* %3, i8** %1, align 8
  %4 = load i8*, i8** %1, align 8
  %5 = icmp eq i8* %4, null
  %spec.store.select = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @134, i32 0, i32 0), i8* %3
  store i8* %spec.store.select, i8** %1, align 8
  %6 = call i8* @160()
  store i8* %6, i8** %2, align 8
  br label %7

; <label>:7:                                      ; preds = %35, %0
  %8 = load i8*, i8** %2, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %46

; <label>:12:                                     ; preds = %7
  %13 = load i8*, i8** %1, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @strcmp(i8* %13, i8* %14) #14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %29, label %17

; <label>:17:                                     ; preds = %12
  %18 = load i8*, i8** %2, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 42
  br i1 %22, label %23, label %35

; <label>:23:                                     ; preds = %17
  %24 = load i8*, i8** %2, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35

; <label>:29:                                     ; preds = %23, %12
  %30 = load i8*, i8** %2, align 8
  %31 = load i8*, i8** %2, align 8
  %32 = call i64 @strlen(i8* %31) #14
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  store i8* %34, i8** %1, align 8
  br label %46

; <label>:35:                                     ; preds = %17, %23
  %36 = load i8*, i8** %2, align 8
  %37 = call i64 @strlen(i8* %36) #14
  %38 = add i64 %37, 1
  %39 = load i8*, i8** %2, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 %38
  store i8* %40, i8** %2, align 8
  %41 = load i8*, i8** %2, align 8
  %42 = call i64 @strlen(i8* %41) #14
  %43 = add i64 %42, 1
  %44 = load i8*, i8** %2, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 %43
  store i8* %45, i8** %2, align 8
  br label %7

; <label>:46:                                     ; preds = %29, %7
  %47 = load i8*, i8** %1, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %46
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @135, i32 0, i32 0), i8** %1, align 8
  br label %53

; <label>:53:                                     ; preds = %52, %46
  %54 = load i8*, i8** %1, align 8
  ret i8* %54
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) #5

; Function Attrs: noinline nounwind uwtable
define internal i8* @160() #2 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %0*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca [51 x i8], align 16
  %14 = alloca [51 x i8], align 16
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = load volatile i8*, i8** @136, align 8
  store i8* %18, i8** %1, align 8
  %19 = load i8*, i8** %1, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %206

; <label>:21:                                     ; preds = %0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @137, i32 0, i32 0), i8** %3, align 8
  %22 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @138, i32 0, i32 0)) #11
  store i8* %22, i8** %2, align 8
  %23 = load i8*, i8** %2, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %31, label %25

; <label>:25:                                     ; preds = %21
  %26 = load i8*, i8** %2, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %25, %21
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @139, i32 0, i32 0), i8** %2, align 8
  br label %32

; <label>:32:                                     ; preds = %31, %25
  %33 = load i8*, i8** %2, align 8
  %34 = call i64 @strlen(i8* %33) #14
  store i64 %34, i64* %5, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = call i64 @strlen(i8* %35) #14
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp ugt i64 %37, 0
  br i1 %38, label %39, label %48

; <label>:39:                                     ; preds = %32
  %40 = load i8*, i8** %2, align 8
  %41 = load i64, i64* %5, align 8
  %42 = sub i64 %41, 1
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 47
  %47 = xor i1 %46, true
  br label %48

; <label>:48:                                     ; preds = %39, %32
  %49 = phi i1 [ false, %32 ], [ %47, %39 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %7, align 4
  %51 = load i64, i64* %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = add i64 %51, %53
  %55 = load i64, i64* %6, align 8
  %56 = add i64 %54, %55
  %57 = add i64 %56, 1
  %58 = call noalias i8* @malloc(i64 %57) #11
  store i8* %58, i8** %4, align 8
  %59 = load i8*, i8** %4, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %81

; <label>:61:                                     ; preds = %48
  %62 = load i8*, i8** %4, align 8
  %63 = load i8*, i8** %2, align 8
  %64 = load i64, i64* %5, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 %64, i32 1, i1 false)
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

; <label>:67:                                     ; preds = %61
  %68 = load i8*, i8** %4, align 8
  %69 = load i64, i64* %5, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8 47, i8* %70, align 1
  br label %71

; <label>:71:                                     ; preds = %67, %61
  %72 = load i8*, i8** %4, align 8
  %73 = load i64, i64* %5, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8*, i8** %3, align 8
  %79 = load i64, i64* %6, align 8
  %80 = add i64 %79, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %77, i8* %78, i64 %80, i32 1, i1 false)
  br label %81

; <label>:81:                                     ; preds = %71, %48
  %82 = load i8*, i8** %4, align 8
  %83 = icmp eq i8* %82, null
  br i1 %83, label %84, label %85

; <label>:84:                                     ; preds = %81
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @134, i32 0, i32 0), i8** %1, align 8
  br label %204

; <label>:85:                                     ; preds = %81
  %86 = load i8*, i8** %4, align 8
  %87 = call i32 (i8*, i32, ...) @open(i8* %86, i32 131072)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

; <label>:90:                                     ; preds = %85
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @134, i32 0, i32 0), i8** %1, align 8
  br label %202

; <label>:91:                                     ; preds = %85
  %92 = load i32, i32* %8, align 4
  %93 = call %0* @fdopen(i32 %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @140, i32 0, i32 0)) #11
  store %0* %93, %0** %9, align 8
  %94 = load %0*, %0** %9, align 8
  %95 = icmp eq %0* %94, null
  br i1 %95, label %96, label %99

; <label>:96:                                     ; preds = %91
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @close(i32 %97)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @134, i32 0, i32 0), i8** %1, align 8
  br label %202

; <label>:99:                                     ; preds = %91
  store i8* null, i8** %10, align 8
  store i64 0, i64* %11, align 8
  br label %100

; <label>:100:                                    ; preds = %168, %129, %112, %99
  %101 = load %0*, %0** %9, align 8
  %102 = call i32 @getc_unlocked(%0* %101)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %191, label %105

; <label>:105:                                    ; preds = %100
  %106 = load i32, i32* %12, align 4
  %107 = icmp eq i32 %106, 10
  %108 = load i32, i32* %12, align 4
  %109 = icmp eq i32 %108, 32
  %or.cond = or i1 %107, %109
  %110 = load i32, i32* %12, align 4
  %111 = icmp eq i32 %110, 9
  %or.cond3 = or i1 %or.cond, %111
  br i1 %or.cond3, label %112, label %113

; <label>:112:                                    ; preds = %105
  br label %100

; <label>:113:                                    ; preds = %105
  %114 = load i32, i32* %12, align 4
  %115 = icmp eq i32 %114, 35
  br i1 %115, label %116, label %130

; <label>:116:                                    ; preds = %113
  br label %117

; <label>:117:                                    ; preds = %117, %116
  %118 = load %0*, %0** %9, align 8
  %119 = call i32 @getc_unlocked(%0* %118)
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp eq i32 %120, -1
  %122 = load i32, i32* %12, align 4
  %123 = icmp eq i32 %122, 10
  %124 = select i1 %121, i1 true, i1 %123
  %125 = xor i1 %124, true
  br i1 %125, label %117, label %126

; <label>:126:                                    ; preds = %117
  %127 = load i32, i32* %12, align 4
  %128 = icmp eq i32 %127, -1
  br i1 %128, label %191, label %129

; <label>:129:                                    ; preds = %126
  br label %100

; <label>:130:                                    ; preds = %113
  %131 = load i32, i32* %12, align 4
  %132 = load %0*, %0** %9, align 8
  %133 = call i32 @ungetc(i32 %131, %0* %132)
  %134 = load %0*, %0** %9, align 8
  %135 = getelementptr inbounds [51 x i8], [51 x i8]* %13, i32 0, i32 0
  %136 = getelementptr inbounds [51 x i8], [51 x i8]* %14, i32 0, i32 0
  %137 = call i32 (%0*, i8*, ...) @fscanf(%0* %134, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @141, i32 0, i32 0), i8* %135, i8* %136)
  %138 = icmp slt i32 %137, 2
  br i1 %138, label %191, label %139

; <label>:139:                                    ; preds = %130
  %140 = getelementptr inbounds [51 x i8], [51 x i8]* %13, i32 0, i32 0
  %141 = call i64 @strlen(i8* %140) #14
  store i64 %141, i64* %15, align 8
  %142 = getelementptr inbounds [51 x i8], [51 x i8]* %14, i32 0, i32 0
  %143 = call i64 @strlen(i8* %142) #14
  store i64 %143, i64* %16, align 8
  %144 = load i8*, i8** %10, align 8
  store i8* %144, i8** %17, align 8
  %145 = load i64, i64* %11, align 8
  %146 = icmp eq i64 %145, 0
  %147 = load i64, i64* %15, align 8
  %148 = add i64 %147, 1
  %149 = load i64, i64* %16, align 8
  %150 = add i64 %148, %149
  %151 = add i64 %150, 1
  br i1 %146, label %152, label %156

; <label>:152:                                    ; preds = %139
  store i64 %151, i64* %11, align 8
  %153 = load i64, i64* %11, align 8
  %154 = add i64 %153, 1
  %155 = call noalias i8* @malloc(i64 %154) #11
  store i8* %155, i8** %10, align 8
  br label %163

; <label>:156:                                    ; preds = %139
  %157 = load i64, i64* %11, align 8
  %158 = add i64 %157, %151
  store i64 %158, i64* %11, align 8
  %159 = load i8*, i8** %10, align 8
  %160 = load i64, i64* %11, align 8
  %161 = add i64 %160, 1
  %162 = call i8* @realloc(i8* %159, i64 %161) #11
  store i8* %162, i8** %10, align 8
  br label %163

; <label>:163:                                    ; preds = %156, %152
  %164 = load i8*, i8** %10, align 8
  %165 = icmp eq i8* %164, null
  br i1 %165, label %166, label %168

; <label>:166:                                    ; preds = %163
  store i64 0, i64* %11, align 8
  %167 = load i8*, i8** %17, align 8
  call void @free(i8* %167) #11
  br label %191

; <label>:168:                                    ; preds = %163
  %169 = load i8*, i8** %10, align 8
  %170 = load i64, i64* %11, align 8
  %171 = getelementptr inbounds i8, i8* %169, i64 %170
  %172 = load i64, i64* %16, align 8
  %173 = add i64 %172, 1
  %174 = sub i64 0, %173
  %175 = getelementptr inbounds i8, i8* %171, i64 %174
  %176 = load i64, i64* %15, align 8
  %177 = add i64 %176, 1
  %178 = sub i64 0, %177
  %179 = getelementptr inbounds i8, i8* %175, i64 %178
  %180 = getelementptr inbounds [51 x i8], [51 x i8]* %13, i32 0, i32 0
  %181 = call i8* @strcpy(i8* %179, i8* %180) #11
  %182 = load i8*, i8** %10, align 8
  %183 = load i64, i64* %11, align 8
  %184 = getelementptr inbounds i8, i8* %182, i64 %183
  %185 = load i64, i64* %16, align 8
  %186 = add i64 %185, 1
  %187 = sub i64 0, %186
  %188 = getelementptr inbounds i8, i8* %184, i64 %187
  %189 = getelementptr inbounds [51 x i8], [51 x i8]* %14, i32 0, i32 0
  %190 = call i8* @strcpy(i8* %188, i8* %189) #11
  br label %100

; <label>:191:                                    ; preds = %130, %126, %100, %166
  %192 = load %0*, %0** %9, align 8
  %193 = call i32 @rpl_fclose(%0* %192)
  %194 = load i64, i64* %11, align 8
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %197

; <label>:196:                                    ; preds = %191
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @134, i32 0, i32 0), i8** %1, align 8
  br label %202

; <label>:197:                                    ; preds = %191
  %198 = load i8*, i8** %10, align 8
  %199 = load i64, i64* %11, align 8
  %200 = getelementptr inbounds i8, i8* %198, i64 %199
  store i8 0, i8* %200, align 1
  %201 = load i8*, i8** %10, align 8
  store i8* %201, i8** %1, align 8
  br label %202

; <label>:202:                                    ; preds = %96, %197, %196, %90
  %203 = load i8*, i8** %4, align 8
  call void @free(i8* %203) #11
  br label %204

; <label>:204:                                    ; preds = %202, %84
  %205 = load i8*, i8** %1, align 8
  store volatile i8* %205, i8** @136, align 8
  br label %206

; <label>:206:                                    ; preds = %204, %0
  %207 = load i8*, i8** %1, align 8
  ret i8* %207
}

; Function Attrs: nounwind
declare %0* @fdopen(i32, i8*) #5

declare i32 @ungetc(i32, %0*) #3

declare i32 @fscanf(%0*, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind uwtable
define i32 @memcoll(i8*, i64, i8*, i64) #2 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %23

; <label>:15:                                     ; preds = %4
  %16 = load i8*, i8** %5, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @memcmp(i8* %16, i8* %17, i64 %18) #14
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

; <label>:21:                                     ; preds = %15
  %22 = call i32* @__errno_location() #15
  store i32 0, i32* %22, align 4
  store i32 0, i32* %9, align 4
  br label %53

; <label>:23:                                     ; preds = %15, %4
  %24 = load i8*, i8** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %10, align 1
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i8, i8* %30, align 1
  store i8 %31, i8* %11, align 1
  %32 = load i8*, i8** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8 0, i8* %34, align 1
  %35 = load i8*, i8** %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8 0, i8* %37, align 1
  %38 = load i8*, i8** %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = add i64 %39, 1
  %41 = load i8*, i8** %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %42, 1
  %44 = call i32 @161(i8* %38, i64 %40, i8* %41, i64 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i8, i8* %10, align 1
  %46 = load i8*, i8** %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8 %45, i8* %48, align 1
  %49 = load i8, i8* %11, align 1
  %50 = load i8*, i8** %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8 %49, i8* %52, align 1
  br label %53

; <label>:53:                                     ; preds = %23, %21
  %54 = load i32, i32* %9, align 4
  ret i32 %54
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @161(i8*, i64, i8*, i64) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  br label %13

; <label>:13:                                     ; preds = %55, %4
  %14 = call i32* @__errno_location() #15
  store i32 0, i32* %14, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @strcoll(i8* %15, i8* %16) #14
  store i32 %17, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

; <label>:19:                                     ; preds = %13
  %20 = call i32* @__errno_location() #15
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br label %23

; <label>:23:                                     ; preds = %19, %13
  %24 = phi i1 [ true, %13 ], [ %22, %19 ]
  %25 = xor i1 %24, true
  br i1 %25, label %26, label %56

; <label>:26:                                     ; preds = %23
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @strlen(i8* %27) #14
  %29 = add i64 %28, 1
  store i64 %29, i64* %11, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i64 @strlen(i8* %30) #14
  %32 = add i64 %31, 1
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 %33
  store i8* %35, i8** %6, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 %36
  store i8* %38, i8** %8, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* %7, align 8
  %41 = sub i64 %40, %39
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* %9, align 8
  %44 = sub i64 %43, %42
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp eq i64 %45, 0
  %47 = load i64, i64* %9, align 8
  br i1 %46, label %48, label %52

; <label>:48:                                     ; preds = %26
  %49 = icmp ne i64 %47, 0
  %50 = zext i1 %49 to i32
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %58

; <label>:52:                                     ; preds = %26
  %53 = icmp eq i64 %47, 0
  br i1 %53, label %54, label %55

; <label>:54:                                     ; preds = %52
  store i32 1, i32* %5, align 4
  br label %58

; <label>:55:                                     ; preds = %52
  br label %13

; <label>:56:                                     ; preds = %23
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %5, align 4
  br label %58

; <label>:58:                                     ; preds = %56, %54, %48
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

; Function Attrs: nounwind readonly
declare i32 @strcoll(i8*, i8*) #6

; Function Attrs: noinline nounwind uwtable
define i32 @memcoll0(i8*, i64, i8*, i64) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* %9, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %21

; <label>:13:                                     ; preds = %4
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @memcmp(i8* %14, i8* %15, i64 %16) #14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

; <label>:19:                                     ; preds = %13
  %20 = call i32* @__errno_location() #15
  store i32 0, i32* %20, align 4
  store i32 0, i32* %5, align 4
  br label %27

; <label>:21:                                     ; preds = %13, %4
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @161(i8* %22, i64 %23, i8* %24, i64 %25)
  store i32 %26, i32* %5, align 4
  br label %27

; <label>:27:                                     ; preds = %21, %19
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isascii(i32) #12 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sge i32 %3, 0
  %5 = load i32, i32* %2, align 4
  %6 = icmp sle i32 %5, 127
  %7 = select i1 %4, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isalnum(i32) #12 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sge i32 %3, 48
  %5 = load i32, i32* %2, align 4
  %6 = icmp sle i32 %5, 57
  %or.cond = and i1 %4, %6
  br i1 %or.cond, label %15, label %7

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = and i32 %8, -33
  %10 = icmp sge i32 %9, 65
  br i1 %10, label %11, label %15

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* %2, align 4
  %13 = and i32 %12, -33
  %14 = icmp sle i32 %13, 90
  br label %15

; <label>:15:                                     ; preds = %7, %11, %1
  %16 = phi i1 [ true, %1 ], [ false, %7 ], [ %14, %11 ]
  ret i1 %16
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isalpha(i32) #12 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, -33
  %5 = icmp sge i32 %4, 65
  br i1 %5, label %6, label %10

; <label>:6:                                      ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = and i32 %7, -33
  %9 = icmp sle i32 %8, 90
  br label %10

; <label>:10:                                     ; preds = %6, %1
  %11 = phi i1 [ false, %1 ], [ %9, %6 ]
  ret i1 %11
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isblank(i32) #12 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 32
  %5 = load i32, i32* %2, align 4
  %6 = icmp eq i32 %5, 9
  %7 = select i1 %4, i1 true, i1 %6
  ret i1 %7
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_iscntrl(i32) #12 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, -32
  %5 = icmp eq i32 %4, 0
  %6 = load i32, i32* %2, align 4
  %7 = icmp eq i32 %6, 127
  %8 = select i1 %5, i1 true, i1 %7
  ret i1 %8
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isdigit(i32) #12 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sge i32 %3, 48
  %5 = load i32, i32* %2, align 4
  %6 = icmp sle i32 %5, 57
  %7 = select i1 %4, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_islower(i32) #12 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sge i32 %3, 97
  %5 = load i32, i32* %2, align 4
  %6 = icmp sle i32 %5, 122
  %7 = select i1 %4, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isgraph(i32) #12 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sge i32 %3, 33
  %5 = load i32, i32* %2, align 4
  %6 = icmp sle i32 %5, 126
  %7 = select i1 %4, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isprint(i32) #12 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sge i32 %3, 32
  %5 = load i32, i32* %2, align 4
  %6 = icmp sle i32 %5, 126
  %7 = select i1 %4, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_ispunct(i32) #12 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sge i32 %3, 33
  %5 = load i32, i32* %2, align 4
  %6 = icmp sle i32 %5, 126
  %or.cond = and i1 %4, %6
  br i1 %or.cond, label %7, label %23

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = icmp sge i32 %8, 48
  %10 = load i32, i32* %2, align 4
  %11 = icmp sle i32 %10, 57
  %or.cond3 = and i1 %9, %11
  br i1 %or.cond3, label %20, label %12

; <label>:12:                                     ; preds = %7
  %13 = load i32, i32* %2, align 4
  %14 = and i32 %13, -33
  %15 = icmp sge i32 %14, 65
  br i1 %15, label %16, label %20

; <label>:16:                                     ; preds = %12
  %17 = load i32, i32* %2, align 4
  %18 = and i32 %17, -33
  %19 = icmp sle i32 %18, 90
  br label %20

; <label>:20:                                     ; preds = %12, %16, %7
  %21 = phi i1 [ true, %7 ], [ false, %12 ], [ %19, %16 ]
  %22 = xor i1 %21, true
  br label %23

; <label>:23:                                     ; preds = %20, %1
  %24 = phi i1 [ false, %1 ], [ %22, %20 ]
  ret i1 %24
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isspace(i32) #12 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 32
  %5 = load i32, i32* %2, align 4
  %6 = icmp eq i32 %5, 9
  %or.cond = or i1 %4, %6
  %7 = load i32, i32* %2, align 4
  %8 = icmp eq i32 %7, 10
  %or.cond3 = or i1 %or.cond, %8
  %9 = load i32, i32* %2, align 4
  %10 = icmp eq i32 %9, 11
  %or.cond5 = or i1 %or.cond3, %10
  %11 = load i32, i32* %2, align 4
  %12 = icmp eq i32 %11, 12
  %or.cond7 = or i1 %or.cond5, %12
  br i1 %or.cond7, label %16, label %13

; <label>:13:                                     ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = icmp eq i32 %14, 13
  br label %16

; <label>:16:                                     ; preds = %13, %1
  %17 = phi i1 [ true, %1 ], [ %15, %13 ]
  ret i1 %17
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isupper(i32) #12 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sge i32 %3, 65
  %5 = load i32, i32* %2, align 4
  %6 = icmp sle i32 %5, 90
  %7 = select i1 %4, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isxdigit(i32) #12 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sge i32 %3, 48
  %5 = load i32, i32* %2, align 4
  %6 = icmp sle i32 %5, 57
  %or.cond = and i1 %4, %6
  br i1 %or.cond, label %15, label %7

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = and i32 %8, -33
  %10 = icmp sge i32 %9, 65
  br i1 %10, label %11, label %15

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* %2, align 4
  %13 = and i32 %12, -33
  %14 = icmp sle i32 %13, 70
  br label %15

; <label>:15:                                     ; preds = %7, %11, %1
  %16 = phi i1 [ true, %1 ], [ false, %7 ], [ %14, %11 ]
  ret i1 %16
}

; Function Attrs: noinline nounwind readnone uwtable
define i32 @c_tolower(i32) #12 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sge i32 %3, 65
  %5 = load i32, i32* %2, align 4
  %6 = icmp sle i32 %5, 90
  %or.cond = and i1 %4, %6
  %7 = load i32, i32* %2, align 4
  %8 = sub nsw i32 %7, 65
  %9 = add nsw i32 %8, 97
  %10 = select i1 %or.cond, i32 %9, i32 %7
  ret i32 %10
}

; Function Attrs: noinline nounwind readnone uwtable
define i32 @c_toupper(i32) #12 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sge i32 %3, 97
  %5 = load i32, i32* %2, align 4
  %6 = icmp sle i32 %5, 122
  %or.cond = and i1 %4, %6
  %7 = load i32, i32* %2, align 4
  %8 = sub nsw i32 %7, 97
  %9 = add nsw i32 %8, 65
  %10 = select i1 %or.cond, i32 %9, i32 %7
  ret i32 %10
}

attributes #0 = { noinline noreturn nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noinline nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { argmemonly nounwind }
attributes #11 = { nounwind }
attributes #12 = { noinline nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind readonly }
attributes #15 = { nounwind readnone }
attributes #16 = { noreturn }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}

!0 = !{!"clang version 6.0.0 (tags/RELEASE_600/final)"}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
