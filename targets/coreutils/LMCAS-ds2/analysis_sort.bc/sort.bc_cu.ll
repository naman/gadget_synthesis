; ModuleID = 'sort.bc_cu.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %1*, %0*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%1 = type { %1*, %0*, i32 }
%2 = type { [16 x i64] }
%3 = type { i8*, i32, i32*, i32 }
%4 = type { i64, i64, i64, i64, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %4* }
%5 = type { %5*, i32, i8, [1 x i8] }
%6 = type { %8*, %8*, i64, i64, i64, %7*, i64 (i8*, i64)*, i1 (i8*, i8*)*, void (i8*)*, %8* }
%7 = type { float, float, float, float, i8 }
%8 = type { i8*, %8* }
%9 = type { i8*, i64, i8*, i8* }
%10 = type { i8*, i32 }
%11 = type { i32, i32, i32, i32, [2 x i32], i32, [32 x i32] }
%12 = type { i32, i32, [8 x i32], i8*, i8* }
%13 = type { i64, i8* }
%14 = type { i64, i8**, i64*, %15, %15, %15 }
%15 = type { i64, %16*, i8*, i8*, i8*, %17, i32, %16* (i8*, i64)*, void (i8*, %16*)*, i8*, i8 }
%16 = type { i8*, %16*, [4 x i8] }
%17 = type { i64 }
%18 = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%19 = type { %20, %2, i32, void ()* }
%20 = type { void (i32)* }
%21 = type { i8*, %5* }
%22 = type { i8, %2 }
%23 = type { %0*, void (i8*)*, i8*, %24 }
%24 = type { %25 }
%25 = type { i64, %26, %27 }
%26 = type { [256 x i64], i64, i64, i64 }
%27 = type { [256 x i64] }
%28 = type { i8*, i64, i64, i64, i64, i64, i8 }
%29 = type { %30*, %31, %34 }
%30 = type { i8**, i64, i64, i32 (i8*, i8*)* }
%31 = type { %32 }
%32 = type { i32, i32, i32, i32, i32, i16, i16, %33 }
%33 = type { %33*, %33* }
%34 = type { %35 }
%35 = type { %17, %17, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%36 = type { %9*, %9*, %9*, %9*, %9**, i64, i64, %36*, %36*, %36*, i32, i8, %31 }
%37 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %38, %38, %38, [3 x i64] }
%38 = type { i64, i64 }
%39 = type { i32 }
%40 = type { %9*, i64, i64, %36*, %29*, %0*, i8* }
%41 = type { i64, [48 x i8] }
%42 = type { i32, %39 }
%43 = type { i32, i32 }
%44 = type { i32, i32, i8*, i8* }

@0 = private unnamed_addr constant [71 x i8] c"Usage: %s [OPTION]... [FILE]...\0A  or:  %s [OPTION]... --files0-from=F\0A\00", align 1
@stdout = external global %0*, align 8
@1 = private unnamed_addr constant [64 x i8] c"Write sorted concatenation of all FILE(s) to standard output.\0A\0A\00", align 1
@2 = private unnamed_addr constant [74 x i8] c"Mandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@3 = private unnamed_addr constant [20 x i8] c"Ordering options:\0A\0A\00", align 1
@4 = private unnamed_addr constant [204 x i8] c"  -b, --ignore-leading-blanks  ignore leading blanks\0A  -d, --dictionary-order      consider only blanks and alphanumeric characters\0A  -f, --ignore-case           fold lower case to upper case characters\0A\00", align 1
@5 = private unnamed_addr constant [211 x i8] c"  -g, --general-numeric-sort  compare according to general numerical value\0A  -i, --ignore-nonprinting    consider only printable characters\0A  -M, --month-sort            compare (unknown) < 'JAN' < ... < 'DEC'\0A\00", align 1
@6 = private unnamed_addr constant [76 x i8] c"  -h, --human-numeric-sort    compare human readable numbers (e.g., 2K 1G)\0A\00", align 1
@7 = private unnamed_addr constant [254 x i8] c"  -n, --numeric-sort          compare according to string numerical value\0A  -R, --random-sort           sort by random hash of keys\0A      --random-source=FILE    get random bytes from FILE\0A  -r, --reverse               reverse the result of comparisons\0A\00", align 1
@8 = private unnamed_addr constant [278 x i8] c"      --sort=WORD             sort according to WORD:\0A                                general-numeric -g, human-numeric -h, month -M,\0A                                numeric -n, random -R, version -V\0A  -V, --version-sort          natural sort of (version) numbers within text\0A\0A\00", align 1
@9 = private unnamed_addr constant [17 x i8] c"Other options:\0A\0A\00", align 1
@10 = private unnamed_addr constant [118 x i8] c"      --batch-size=NMERGE   merge at most NMERGE inputs at once;\0A                            for more use temp files\0A\00", align 1
@11 = private unnamed_addr constant [277 x i8] c"  -c, --check, --check=diagnose-first  check for sorted input; do not sort\0A  -C, --check=quiet, --check=silent  like -c, but do not report first bad line\0A      --compress-program=PROG  compress temporaries with PROG;\0A                              decompress them with PROG -d\0A\00", align 1
@12 = private unnamed_addr constant [348 x i8] c"      --debug               annotate the part of the line used to sort,\0A                              and warn about questionable usage to stderr\0A      --files0-from=F       read input from the files specified by\0A                            NUL-terminated names in file F;\0A                            If F is - then read names from standard input\0A\00", align 1
@13 = private unnamed_addr constant [144 x i8] c"  -k, --key=KEYDEF          sort via a key; KEYDEF gives location and type\0A  -m, --merge               merge already sorted files; do not sort\0A\00", align 1
@14 = private unnamed_addr constant [216 x i8] c"  -o, --output=FILE         write result to FILE instead of standard output\0A  -s, --stable              stabilize sort by disabling last-resort comparison\0A  -S, --buffer-size=SIZE    use SIZE for main memory buffer\0A\00", align 1
@15 = private unnamed_addr constant [453 x i8] c"  -t, --field-separator=SEP  use SEP instead of non-blank to blank transition\0A  -T, --temporary-directory=DIR  use DIR for temporaries, not $TMPDIR or %s;\0A                              multiple options specify multiple directories\0A      --parallel=N          change the number of sorts run concurrently to N\0A  -u, --unique              with -c, check for strict ordering;\0A                              without -c, output only the first of an equal run\0A\00", align 1
@16 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@17 = private unnamed_addr constant [64 x i8] c"  -z, --zero-terminated     end lines with 0 byte, not newline\0A\00", align 1
@18 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@19 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@20 = private unnamed_addr constant [558 x i8] c"\0AKEYDEF is F[.C][OPTS][,F[.C][OPTS]] for start and stop position, where F is a\0Afield number and C a character position in the field; both are origin 1, and\0Athe stop position defaults to the line's end.  If neither -t nor -b is in\0Aeffect, characters in a field are counted from the beginning of the preceding\0Awhitespace.  OPTS is one or more single-letter ordering options [bdfgiMhnRrV],\0Awhich override global ordering options for that key.  If no key is given, use\0Athe entire line as the key.\0A\0ASIZE may be followed by the following multiplicative suffixes:\0A\00", align 1
@21 = private unnamed_addr constant [284 x i8] c"% 1% of memory, b 1, K 1024 (default), and so on for M, G, T, P, E, Z, Y.\0A\0AWith no FILE, or when FILE is -, read standard input.\0A\0A*** WARNING ***\0AThe locale specified by the environment affects sort order.\0ASet LC_ALL=C to get the traditional sort order that uses\0Anative byte values.\0A\00", align 1
@22 = private unnamed_addr constant [23 x i8] c"\0AReport %s bugs to %s\0A\00", align 1
@23 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@24 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@25 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@26 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@27 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@28 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@29 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@30 = private unnamed_addr constant [65 x i8] c"For complete documentation, run: info coreutils '%s invocation'\0A\00", align 1
@stderr = external global %0*, align 8
@31 = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@32 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@33 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@34 = internal global i8 0, align 1
@35 = internal global i8 0, align 1
@36 = internal global i32 0, align 4
@37 = internal global i32 0, align 4
@38 = internal global i8 0, align 1
@39 = internal global %2 zeroinitializer, align 8
@optind = external global i32, align 4
@40 = internal constant [31 x %3] [%3 { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @143, i32 0, i32 0), i32 0, i32* null, i32 98 }, %3 { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @144, i32 0, i32 0), i32 2, i32* null, i32 128 }, %3 { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @145, i32 0, i32 0), i32 1, i32* null, i32 129 }, %3 { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @146, i32 0, i32 0), i32 0, i32* null, i32 130 }, %3 { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @147, i32 0, i32 0), i32 0, i32* null, i32 100 }, %3 { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @148, i32 0, i32 0), i32 0, i32* null, i32 102 }, %3 { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @149, i32 0, i32 0), i32 1, i32* null, i32 131 }, %3 { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @150, i32 0, i32 0), i32 0, i32* null, i32 103 }, %3 { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @151, i32 0, i32 0), i32 0, i32* null, i32 105 }, %3 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @152, i32 0, i32 0), i32 1, i32* null, i32 107 }, %3 { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @153, i32 0, i32 0), i32 0, i32* null, i32 109 }, %3 { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @154, i32 0, i32 0), i32 0, i32* null, i32 77 }, %3 { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @155, i32 0, i32 0), i32 0, i32* null, i32 110 }, %3 { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @156, i32 0, i32 0), i32 0, i32* null, i32 104 }, %3 { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @157, i32 0, i32 0), i32 0, i32* null, i32 86 }, %3 { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @158, i32 0, i32 0), i32 0, i32* null, i32 82 }, %3 { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @159, i32 0, i32 0), i32 1, i32* null, i32 133 }, %3 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @42, i32 0, i32 0), i32 1, i32* null, i32 134 }, %3 { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @160, i32 0, i32 0), i32 1, i32* null, i32 111 }, %3 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @161, i32 0, i32 0), i32 0, i32* null, i32 114 }, %3 { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @162, i32 0, i32 0), i32 0, i32* null, i32 115 }, %3 { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @163, i32 0, i32 0), i32 1, i32* null, i32 132 }, %3 { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @164, i32 0, i32 0), i32 1, i32* null, i32 83 }, %3 { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @165, i32 0, i32 0), i32 1, i32* null, i32 116 }, %3 { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @166, i32 0, i32 0), i32 1, i32* null, i32 84 }, %3 { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @167, i32 0, i32 0), i32 0, i32* null, i32 117 }, %3 { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @168, i32 0, i32 0), i32 0, i32* null, i32 122 }, %3 { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @169, i32 0, i32 0), i32 1, i32* null, i32 135 }, %3 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @170, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %3 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @140, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %3 zeroinitializer], align 16
@41 = internal global i8* null, align 8
@42 = private unnamed_addr constant [5 x i8] c"sort\00", align 1
@43 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@44 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@45 = private unnamed_addr constant [52 x i8] c"file operands cannot be combined with --files0-from\00", align 1
@46 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external global %0*, align 8
@47 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@48 = private unnamed_addr constant [27 x i8] c"cannot open %s for reading\00", align 1
@49 = private unnamed_addr constant [31 x i8] c"cannot read file names from %s\00", align 1
@50 = private unnamed_addr constant [63 x i8] c"when reading file names from stdin, no file name of %s allowed\00", align 1
@51 = private unnamed_addr constant [38 x i8] c"%s:%lu: invalid zero-length file name\00", align 1
@52 = private unnamed_addr constant [17 x i8] c"no input from %s\00", align 1
@53 = internal global %4* null, align 8
@54 = internal global i8 0, align 1
@55 = internal global i64 0, align 8
@56 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@57 = internal global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @46, i32 0, i32 0), align 8
@58 = internal global i64 0, align 8
@59 = internal global i32 16, align 4
@60 = private unnamed_addr constant [38 x i8] c"extra operand %s not allowed with -%c\00", align 1
@61 = internal global [3 x i8] c"\00o\00", align 1
@62 = private unnamed_addr constant [13 x i8] c"close failed\00", align 1
@63 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1
@64 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@65 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@66 = internal global %5* null, align 8
@67 = internal global i32 0, align 4
@68 = private unnamed_addr constant [20 x i8] c"waiting for %s [-d]\00", align 1
@69 = private unnamed_addr constant [30 x i8] c"%s [-d] terminated abnormally\00", align 1
@70 = internal global %6* null, align 8
@71 = internal global %9 zeroinitializer, align 8
@72 = private unnamed_addr constant [13 x i8] c"write failed\00", align 1
@73 = internal global [256 x i8] zeroinitializer, align 16
@74 = internal constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\06\00\03\00\00\00\01\00\02\00\00\05\00\00\00\04\00\00\00\00\08\07\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@75 = private unnamed_addr constant [20 x i8] c"^ no match for key\0A\00", align 1
@76 = internal global [12 x %10] [%10 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @78, i32 0, i32 0), i32 4 }, %10 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @79, i32 0, i32 0), i32 8 }, %10 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @80, i32 0, i32 0), i32 12 }, %10 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @81, i32 0, i32 0), i32 2 }, %10 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @82, i32 0, i32 0), i32 1 }, %10 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @83, i32 0, i32 0), i32 7 }, %10 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @84, i32 0, i32 0), i32 6 }, %10 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @85, i32 0, i32 0), i32 3 }, %10 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @86, i32 0, i32 0), i32 5 }, %10 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @87, i32 0, i32 0), i32 11 }, %10 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @88, i32 0, i32 0), i32 10 }, %10 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @89, i32 0, i32 0), i32 9 }], align 16
@77 = internal global [256 x i8] zeroinitializer, align 16
@78 = private unnamed_addr constant [4 x i8] c"APR\00", align 1
@79 = private unnamed_addr constant [4 x i8] c"AUG\00", align 1
@80 = private unnamed_addr constant [4 x i8] c"DEC\00", align 1
@81 = private unnamed_addr constant [4 x i8] c"FEB\00", align 1
@82 = private unnamed_addr constant [4 x i8] c"JAN\00", align 1
@83 = private unnamed_addr constant [4 x i8] c"JUL\00", align 1
@84 = private unnamed_addr constant [4 x i8] c"JUN\00", align 1
@85 = private unnamed_addr constant [4 x i8] c"MAR\00", align 1
@86 = private unnamed_addr constant [4 x i8] c"MAY\00", align 1
@87 = private unnamed_addr constant [4 x i8] c"NOV\00", align 1
@88 = private unnamed_addr constant [4 x i8] c"OCT\00", align 1
@89 = private unnamed_addr constant [4 x i8] c"SEP\00", align 1
@90 = internal global %11 zeroinitializer, align 4
@91 = private unnamed_addr constant [29 x i8] c"string transformation failed\00", align 1
@92 = private unnamed_addr constant [42 x i8] c"set LC_ALL='C' to work around the problem\00", align 1
@93 = private unnamed_addr constant [32 x i8] c"the untransformed string was %s\00", align 1
@94 = private unnamed_addr constant [20 x i8] c"couldn't execute %s\00", align 1
@95 = private unnamed_addr constant [31 x i8] c"couldn't create temporary file\00", align 1
@96 = private unnamed_addr constant [12 x i8] c"dup2 failed\00", align 1
@97 = internal global i8** null, align 8
@98 = internal global i64 0, align 8
@99 = internal constant [12 x i8] c"/sortXXXXXX\00", align 1
@100 = internal global %5** @66, align 8
@101 = private unnamed_addr constant [35 x i8] c"cannot create temporary file in %s\00", align 1
@102 = private unnamed_addr constant [14 x i8] c"fflush failed\00", align 1
@103 = internal global i64 262144, align 8
@104 = private unnamed_addr constant [12 x i8] c"read failed\00", align 1
@105 = private unnamed_addr constant [12 x i8] c"stat failed\00", align 1
@106 = internal global i64 0, align 8
@107 = private unnamed_addr constant [12 x i8] c"open failed\00", align 1
@108 = private unnamed_addr constant [27 x i8] c"warning: cannot remove: %s\00", align 1
@109 = private unnamed_addr constant [34 x i8] c"couldn't create process for %s -d\00", align 1
@110 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@111 = private unnamed_addr constant [23 x i8] c"couldn't execute %s -d\00", align 1
@112 = private unnamed_addr constant [22 x i8] c"%s: %s:%s: disorder: \00", align 1
@113 = private unnamed_addr constant [15 x i8] c"standard error\00", align 1
@114 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@115 = private unnamed_addr constant [4 x i8] c"-k \00", align 1
@116 = private unnamed_addr constant [3 x i8] c" -\00", align 1
@117 = private unnamed_addr constant [2 x i8] c",\00", align 1
@118 = private unnamed_addr constant [45 x i8] c"obsolescent key %s used; consider %s instead\00", align 1
@119 = private unnamed_addr constant [43 x i8] c"key %lu has zero width and will be ignored\00", align 1
@120 = private unnamed_addr constant [72 x i8] c"leading blanks are significant in key %lu; consider also specifying 'b'\00", align 1
@121 = private unnamed_addr constant [45 x i8] c"key %lu is numeric and spans multiple fields\00", align 1
@122 = private unnamed_addr constant [24 x i8] c"option '-%s' is ignored\00", align 1
@123 = private unnamed_addr constant [26 x i8] c"options '-%s' are ignored\00", align 1
@124 = internal global [256 x i8] zeroinitializer, align 16
@125 = internal global [256 x i8] zeroinitializer, align 16
@126 = private unnamed_addr constant [35 x i8] c"number in parallel must be nonzero\00", align 1
@127 = internal global i64 0, align 8
@128 = private unnamed_addr constant [13 x i8] c"EgGkKmMPtTYZ\00", align 1
@129 = private unnamed_addr constant [27 x i8] c"--%s argument %s too large\00", align 1
@130 = private unnamed_addr constant [48 x i8] c"maximum --%s argument with current rlimit is %s\00", align 1
@131 = private unnamed_addr constant [31 x i8] c"options '-%s' are incompatible\00", align 1
@132 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@133 = private unnamed_addr constant [7 x i8] c"silent\00", align 1
@134 = private unnamed_addr constant [15 x i8] c"diagnose-first\00", align 1
@135 = private unnamed_addr constant [16 x i8] c"general-numeric\00", align 1
@136 = private unnamed_addr constant [14 x i8] c"human-numeric\00", align 1
@137 = private unnamed_addr constant [6 x i8] c"month\00", align 1
@138 = private unnamed_addr constant [8 x i8] c"numeric\00", align 1
@139 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@140 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@141 = private unnamed_addr constant [35 x i8] c"%s: invalid field specification %s\00", align 1
@142 = private unnamed_addr constant [33 x i8] c"%s: invalid count at start of %s\00", align 1
@143 = private unnamed_addr constant [22 x i8] c"ignore-leading-blanks\00", align 1
@144 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@145 = private unnamed_addr constant [17 x i8] c"compress-program\00", align 1
@146 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@147 = private unnamed_addr constant [17 x i8] c"dictionary-order\00", align 1
@148 = private unnamed_addr constant [12 x i8] c"ignore-case\00", align 1
@149 = private unnamed_addr constant [12 x i8] c"files0-from\00", align 1
@150 = private unnamed_addr constant [21 x i8] c"general-numeric-sort\00", align 1
@151 = private unnamed_addr constant [19 x i8] c"ignore-nonprinting\00", align 1
@152 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@153 = private unnamed_addr constant [6 x i8] c"merge\00", align 1
@154 = private unnamed_addr constant [11 x i8] c"month-sort\00", align 1
@155 = private unnamed_addr constant [13 x i8] c"numeric-sort\00", align 1
@156 = private unnamed_addr constant [19 x i8] c"human-numeric-sort\00", align 1
@157 = private unnamed_addr constant [13 x i8] c"version-sort\00", align 1
@158 = private unnamed_addr constant [12 x i8] c"random-sort\00", align 1
@159 = private unnamed_addr constant [14 x i8] c"random-source\00", align 1
@160 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@161 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@162 = private unnamed_addr constant [7 x i8] c"stable\00", align 1
@163 = private unnamed_addr constant [11 x i8] c"batch-size\00", align 1
@164 = private unnamed_addr constant [12 x i8] c"buffer-size\00", align 1
@165 = private unnamed_addr constant [16 x i8] c"field-separator\00", align 1
@166 = private unnamed_addr constant [20 x i8] c"temporary-directory\00", align 1
@167 = private unnamed_addr constant [7 x i8] c"unique\00", align 1
@168 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1
@169 = private unnamed_addr constant [9 x i8] c"parallel\00", align 1
@170 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@171 = private unnamed_addr constant [5 x i8] c"8.16\00", align 1
@172 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@173 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@174 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@175 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1
@176 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@177 = internal global i8* null, align 8
@178 = internal global i8 0, align 1
@179 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@180 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@181 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@182 = internal constant [64 x i8] c"\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@exit_failure = global i32 1, align 4
@183 = private unnamed_addr constant [2 x i8] c".\00", align 1
@184 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@185 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@186 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@187 = private unnamed_addr constant [24 x i8] c"# entries:         %lu\0A\00", align 1
@188 = private unnamed_addr constant [24 x i8] c"# buckets:         %lu\0A\00", align 1
@189 = private unnamed_addr constant [33 x i8] c"# buckets used:    %lu (%.2f%%)\0A\00", align 1
@190 = private unnamed_addr constant [24 x i8] c"max bucket length: %lu\0A\00", align 1
@191 = internal constant %7 { float 0.000000e+00, float 1.000000e+00, float 0x3FE99999A0000000, float 0x3FF69FBE80000000, i8 0 }, align 4
@192 = private unnamed_addr constant [16 x i8] c"OMP_NUM_THREADS\00", align 1
@193 = private unnamed_addr constant [16 x i8] c"_POSIX2_VERSION\00", align 1
@program_name = global i8* null, align 8
@194 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@195 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@196 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external global i8*, align 8
@program_invocation_name = external global i8*, align 8
@197 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@198 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@199 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@200 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@201 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@202 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@203 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@204 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quote_quoting_options = global %12 { i32 6, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@205 = internal global %12 zeroinitializer, align 8
@206 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@207 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@208 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@209 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@210 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@211 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@212 = private unnamed_addr constant [8 x i8] c"GB18030\00", align 1
@213 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@214 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@215 = internal global %13* @218, align 8
@216 = internal global i32 1, align 4
@217 = internal global [256 x i8] zeroinitializer, align 16
@218 = internal global %13 { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @217, i32 0, i32 0) }, align 8
@219 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@220 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@221 = private unnamed_addr constant [16 x i8] c"%s: end of file\00", align 1
@222 = private unnamed_addr constant [15 x i8] c"%s: read error\00", align 1
@223 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@224 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@225 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@226 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@227 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@228 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@229 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@230 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@231 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@232 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@233 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@234 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@235 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@236 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@237 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@238 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@239 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@240 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@241 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@242 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16
@243 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@244 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@245 = private unnamed_addr constant [25 x i8] c"string comparison failed\00", align 1
@246 = private unnamed_addr constant [43 x i8] c"Set LC_ALL='C' to work around the problem.\00", align 1
@247 = private unnamed_addr constant [37 x i8] c"The strings compared were %s and %s.\00", align 1
@248 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@249 = private unnamed_addr constant [20 x i8] c"../../lib/xstrtol.c\00", align 1
@250 = private unnamed_addr constant [81 x i8] c"strtol_error xstrtoul(const char *, char **, int, unsigned long *, const char *)\00", align 1
@251 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@252 = private unnamed_addr constant [27 x i8] c"invalid %s%s argument '%s'\00", align 1
@253 = private unnamed_addr constant [37 x i8] c"invalid suffix in %s%s argument '%s'\00", align 1
@254 = private unnamed_addr constant [29 x i8] c"%s%s argument '%s' too large\00", align 1
@255 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@256 = private unnamed_addr constant [20 x i8] c"../../lib/xstrtol.c\00", align 1
@257 = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@258 = internal global i32 0, align 4
@259 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@260 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@261 = internal global i8* null, align 8
@262 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@263 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@264 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@265 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@266 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1

; Function Attrs: noinline noreturn nounwind uwtable
define void @usage(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %1
  call void @267()
  br label %49

; <label>:6:                                      ; preds = %1
  %7 = load i8*, i8** @program_name, align 8
  %8 = load i8*, i8** @program_name, align 8
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @0, i32 0, i32 0), i8* %7, i8* %8)
  %10 = load %0*, %0** @stdout, align 8
  %11 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1, i32 0, i32 0), %0* %10)
  %12 = load %0*, %0** @stdout, align 8
  %13 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @2, i32 0, i32 0), %0* %12)
  %14 = load %0*, %0** @stdout, align 8
  %15 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @3, i32 0, i32 0), %0* %14)
  %16 = load %0*, %0** @stdout, align 8
  %17 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([204 x i8], [204 x i8]* @4, i32 0, i32 0), %0* %16)
  %18 = load %0*, %0** @stdout, align 8
  %19 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([211 x i8], [211 x i8]* @5, i32 0, i32 0), %0* %18)
  %20 = load %0*, %0** @stdout, align 8
  %21 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @6, i32 0, i32 0), %0* %20)
  %22 = load %0*, %0** @stdout, align 8
  %23 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([254 x i8], [254 x i8]* @7, i32 0, i32 0), %0* %22)
  %24 = load %0*, %0** @stdout, align 8
  %25 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([278 x i8], [278 x i8]* @8, i32 0, i32 0), %0* %24)
  %26 = load %0*, %0** @stdout, align 8
  %27 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @9, i32 0, i32 0), %0* %26)
  %28 = load %0*, %0** @stdout, align 8
  %29 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([118 x i8], [118 x i8]* @10, i32 0, i32 0), %0* %28)
  %30 = load %0*, %0** @stdout, align 8
  %31 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([277 x i8], [277 x i8]* @11, i32 0, i32 0), %0* %30)
  %32 = load %0*, %0** @stdout, align 8
  %33 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([348 x i8], [348 x i8]* @12, i32 0, i32 0), %0* %32)
  %34 = load %0*, %0** @stdout, align 8
  %35 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([144 x i8], [144 x i8]* @13, i32 0, i32 0), %0* %34)
  %36 = load %0*, %0** @stdout, align 8
  %37 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([216 x i8], [216 x i8]* @14, i32 0, i32 0), %0* %36)
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([453 x i8], [453 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0))
  %39 = load %0*, %0** @stdout, align 8
  %40 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @17, i32 0, i32 0), %0* %39)
  %41 = load %0*, %0** @stdout, align 8
  %42 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @18, i32 0, i32 0), %0* %41)
  %43 = load %0*, %0** @stdout, align 8
  %44 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @19, i32 0, i32 0), %0* %43)
  %45 = load %0*, %0** @stdout, align 8
  %46 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([558 x i8], [558 x i8]* @20, i32 0, i32 0), %0* %45)
  %47 = load %0*, %0** @stdout, align 8
  %48 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([284 x i8], [284 x i8]* @21, i32 0, i32 0), %0* %47)
  call void @268()
  br label %49

; <label>:49:                                     ; preds = %6, %5
  %50 = load i32, i32* %2, align 4
  call void @exit(i32 %50) #12
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal void @267() #1 {
  %1 = load %0*, %0** @stderr, align 8
  %2 = load i8*, i8** @program_name, align 8
  %3 = call i32 (%0*, i8*, ...) @fprintf(%0* %1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @31, i32 0, i32 0), i8* %2)
  ret void
}

declare i32 @printf(i8*, ...) #2

declare i32 @fputs_unlocked(i8*, %0*) #2

; Function Attrs: noinline nounwind uwtable
define internal void @268() #1 {
  %1 = alloca i8*, align 8
  %2 = load i8*, i8** @program_name, align 8
  %3 = call i8* @last_component(i8* %2) #13
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @22, i32 0, i32 0), i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @23, i32 0, i32 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @26, i32 0, i32 0))
  %6 = load %0*, %0** @stdout, align 8
  %7 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @27, i32 0, i32 0), %0* %6)
  %8 = call i8* @setlocale(i32 5, i8* null) #11
  store i8* %8, i8** %1, align 8
  %9 = load i8*, i8** %1, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %19

; <label>:11:                                     ; preds = %0
  %12 = load i8*, i8** %1, align 8
  %13 = call i32 @strncmp(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @28, i32 0, i32 0), i64 3) #13
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

; <label>:15:                                     ; preds = %11
  %16 = load i8*, i8** @program_name, align 8
  %17 = call i8* @last_component(i8* %16) #13
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @29, i32 0, i32 0), i8* %17)
  br label %19

; <label>:19:                                     ; preds = %15, %11, %0
  %20 = load i8*, i8** @program_name, align 8
  %21 = call i8* @last_component(i8* %20) #13
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @30, i32 0, i32 0), i8* %21)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #4

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #5

declare i32 @fprintf(%0*, i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define void @klee_dump_memory() #1 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32, i8**) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %4*, align 8
  %6 = alloca %4, align 8
  %7 = alloca %4, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %14, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %18*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %19, align 8
  %23 = alloca i8, align 1
  %24 = alloca i8*, align 8
  %25 = alloca [2 x i8], align 1
  %26 = alloca i8, align 1
  %27 = alloca i8*, align 8
  %28 = alloca %0*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i8*, align 8
  %32 = alloca %21*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i8 0, i8* %8
  store i8 0, i8* %10
  store i8 0, i8* %11
  store i8* null, i8** %12, align 8
  store i8 0, i8* %13
  store i64 0, i64* %14
  store i64 0, i64* %15
  %36 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @32, i32 0, i32 0)) #11
  %37 = icmp ne i8* %36, null
  %38 = zext i1 %37 to i8
  %39 = call i32 @posix2_version()
  %40 = icmp slt i32 %39, 200112
  %41 = zext i1 %40 to i8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %19, align 8
  %42 = load i8**, i8*** %4, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  %44 = load i8*, i8** %43, align 8
  call void @set_program_name(i8* %44)
  %45 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @33, i32 0, i32 0)) #11
  call void @269(i32 2)
  %46 = call zeroext i1 @hard_locale(i32 3)
  %47 = zext i1 %46 to i8
  store i8 %47, i8* @34, align 1
  %48 = call zeroext i1 @hard_locale(i32 2)
  %49 = zext i1 %48 to i8
  store i8 %49, i8* @35, align 1
  %50 = call %18* @localeconv() #11
  store %18* %50, %18** %20, align 8
  %51 = load %18*, %18** %20, align 8
  %52 = getelementptr inbounds %18, %18* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = call zeroext i8 @270(i8 signext %55)
  %57 = zext i8 %56 to i32
  store i32 %57, i32* @36, align 4
  %58 = load %18*, %18** %20, align 8
  %59 = getelementptr inbounds %18, %18* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  %spec.store.select = select i1 %64, i32 46, i32 %57
  store i32 %spec.store.select, i32* @36, align 4
  %65 = load %18*, %18** %20, align 8
  %66 = getelementptr inbounds %18, %18* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = load i8, i8* %67, align 1
  %69 = call zeroext i8 @270(i8 signext %68)
  %70 = zext i8 %69 to i32
  store i32 %70, i32* @37, align 4
  %71 = load %18*, %18** %20, align 8
  %72 = getelementptr inbounds %18, %18* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  %spec.store.select1 = select i1 %77, i32 -1, i32 %70
  store i32 %spec.store.select1, i32* @37, align 4
  store i8 0, i8* @38, align 1
  call void @271()
  %78 = call i32 @sigemptyset(%2* @39) #11
  store i64 11, i64* %21
  %79 = getelementptr inbounds %19, %19* %22, i32 0, i32 0
  %80 = bitcast %20* %79 to void (i32)**
  store void (i32)* @272, void (i32)** %80, align 8
  %81 = getelementptr inbounds %19, %19* %22, i32 0, i32 1
  %82 = bitcast %2* %81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %82, i8* bitcast (%2* @39 to i8*), i64 128, i32 8, i1 false)
  %83 = getelementptr inbounds %19, %19* %22, i32 0, i32 2
  store i32 0, i32* %83, align 8
  store i64 11, i64* %21
  %84 = call void (i32)* @signal(i32 17, void (i32)* null) #11
  %85 = call i32 @atexit(void ()* @273) #11
  %86 = call %4* @274(%4* %7)
  %87 = getelementptr inbounds %4, %4* %7, i32 0, i32 0
  store i64 -1, i64* %87
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = call noalias i8* @xnmalloc(i64 %89, i64 8)
  %91 = bitcast i8* %90 to i8**
  store i8** %91, i8*** %16, align 8
  br label %92

; <label>:92:                                     ; preds = %2, %96
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* @optind, align 4
  %95 = icmp sle i32 %93, %94
  br i1 %95, label %105, label %96

; <label>:96:                                     ; preds = %92
  %97 = load i8**, i8*** %4, align 8
  %98 = load i32, i32* @optind, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* @optind, align 4
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8*, i8** %97, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = load i8**, i8*** %16, align 8
  store i64 1, i64* %15, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 0
  store i8* %102, i8** %104, align 8
  br label %92

; <label>:105:                                    ; preds = %92
  call void @klee_dump_memory()
  %106 = load i8*, i8** %17, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %189

; <label>:108:                                    ; preds = %105
  %109 = load i64, i64* %15, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

; <label>:111:                                    ; preds = %108
  %112 = load i8**, i8*** %16, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i64 0
  %114 = load i8*, i8** %113, align 8
  %115 = call i8* @quote(i8* %114)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @43, i32 0, i32 0), i8* %115)
  %116 = load %0*, %0** @stderr, align 8
  %117 = call i32 (%0*, i8*, ...) @fprintf(%0* %116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @44, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @45, i32 0, i32 0))
  call void @usage(i32 2) #14
  unreachable

; <label>:118:                                    ; preds = %108
  %119 = load i8*, i8** %17, align 8
  %120 = call i32 @strcmp(i8* %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @46, i32 0, i32 0)) #13
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %124

; <label>:122:                                    ; preds = %118
  %123 = load %0*, %0** @stdin, align 8
  store %0* %123, %0** %28, align 8
  br label %134

; <label>:124:                                    ; preds = %118
  %125 = load i8*, i8** %17, align 8
  %126 = call %0* @fopen_safer(i8* %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @47, i32 0, i32 0))
  store %0* %126, %0** %28, align 8
  %127 = load %0*, %0** %28, align 8
  %128 = icmp eq %0* %127, null
  br i1 %128, label %129, label %134

; <label>:129:                                    ; preds = %124
  %130 = call i32* @__errno_location() #15
  %131 = load i32, i32* %130, align 4
  %132 = load i8*, i8** %17, align 8
  %133 = call i8* @quote(i8* %132)
  call void (i32, i32, i8*, ...) @error(i32 2, i32 %131, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @48, i32 0, i32 0), i8* %133)
  br label %134

; <label>:134:                                    ; preds = %124, %129, %122
  call void @readtokens0_init(%14* %18)
  %135 = load %0*, %0** %28, align 8
  %136 = call zeroext i1 @readtokens0(%0* %135, %14* %18)
  br i1 %136, label %137, label %141

; <label>:137:                                    ; preds = %134
  %138 = load %0*, %0** %28, align 8
  %139 = call i32 @rpl_fclose(%0* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

; <label>:141:                                    ; preds = %137, %134
  %142 = load i8*, i8** %17, align 8
  %143 = call i8* @quote(i8* %142)
  call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @49, i32 0, i32 0), i8* %143)
  br label %144

; <label>:144:                                    ; preds = %141, %137
  %145 = getelementptr inbounds %14, %14* %18, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %186

; <label>:148:                                    ; preds = %144
  %149 = load i8**, i8*** %16, align 8
  %150 = bitcast i8** %149 to i8*
  call void @free(i8* %150) #11
  %151 = getelementptr inbounds %14, %14* %18, i32 0, i32 1
  %152 = load i8**, i8*** %151, align 8
  store i8** %152, i8*** %16, align 8
  %153 = getelementptr inbounds %14, %14* %18, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %15, align 8
  store i64 0, i64* %29, align 8
  br label %155

; <label>:155:                                    ; preds = %183, %148
  %156 = load i64, i64* %29, align 8
  %157 = load i64, i64* %15, align 8
  %158 = icmp ult i64 %156, %157
  br i1 %158, label %159, label %189

; <label>:159:                                    ; preds = %155
  %160 = load i8**, i8*** %16, align 8
  %161 = load i64, i64* %29, align 8
  %162 = getelementptr inbounds i8*, i8** %160, i64 %161
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 @strcmp(i8* %163, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @46, i32 0, i32 0)) #13
  %165 = icmp eq i32 %164, 0
  %166 = load i8**, i8*** %16, align 8
  %167 = load i64, i64* %29, align 8
  %168 = getelementptr inbounds i8*, i8** %166, i64 %167
  %169 = load i8*, i8** %168, align 8
  br i1 %165, label %170, label %172

; <label>:170:                                    ; preds = %159
  %171 = call i8* @quote(i8* %169)
  call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @50, i32 0, i32 0), i8* %171)
  br label %183

; <label>:172:                                    ; preds = %159
  %173 = getelementptr inbounds i8, i8* %169, i64 0
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %183

; <label>:177:                                    ; preds = %172
  %178 = load i64, i64* %29, align 8
  %179 = add i64 %178, 1
  store i64 %179, i64* %30, align 8
  %180 = load i8*, i8** %17, align 8
  %181 = call i8* @quotearg_colon(i8* %180)
  %182 = load i64, i64* %30, align 8
  call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @51, i32 0, i32 0), i8* %181, i64 %182)
  br label %183

; <label>:183:                                    ; preds = %170, %177, %172
  %184 = load i64, i64* %29, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %29, align 8
  br label %155

; <label>:186:                                    ; preds = %144
  %187 = load i8*, i8** %17, align 8
  %188 = call i8* @quote(i8* %187)
  call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @52, i32 0, i32 0), i8* %188)
  br label %189

; <label>:189:                                    ; preds = %186, %155, %105
  %190 = load %4*, %4** @53, align 8
  store %4* %190, %4** %5, align 8
  br label %191

; <label>:191:                                    ; preds = %265, %189
  %192 = load %4*, %4** %5, align 8
  %193 = icmp ne %4* %192, null
  br i1 %193, label %194, label %280

; <label>:194:                                    ; preds = %191
  %195 = load %4*, %4** %5, align 8
  %196 = call zeroext i1 @278(%4* %195)
  br i1 %196, label %197, label %265

; <label>:197:                                    ; preds = %194
  %198 = load %4*, %4** %5, align 8
  %199 = getelementptr inbounds %4, %4* %198, i32 0, i32 13
  %200 = load i8, i8* %199, align 1
  %201 = trunc i8 %200 to i1
  br i1 %201, label %265, label %202

; <label>:202:                                    ; preds = %197
  %203 = getelementptr inbounds %4, %4* %7, i32 0, i32 4
  %204 = load i8*, i8** %203, align 8
  %205 = load %4*, %4** %5, align 8
  %206 = getelementptr inbounds %4, %4* %205, i32 0, i32 4
  store i8* %204, i8** %206, align 8
  %207 = getelementptr inbounds %4, %4* %7, i32 0, i32 5
  %208 = load i8*, i8** %207, align 8
  %209 = load %4*, %4** %5, align 8
  %210 = getelementptr inbounds %4, %4* %209, i32 0, i32 5
  store i8* %208, i8** %210, align 8
  %211 = getelementptr inbounds %4, %4* %7, i32 0, i32 6
  %212 = load i8, i8* %211, align 8
  %213 = trunc i8 %212 to i1
  %214 = load %4*, %4** %5, align 8
  %215 = getelementptr inbounds %4, %4* %214, i32 0, i32 6
  %216 = zext i1 %213 to i8
  store i8 %216, i8* %215, align 8
  %217 = getelementptr inbounds %4, %4* %7, i32 0, i32 7
  %218 = load i8, i8* %217, align 1
  %219 = trunc i8 %218 to i1
  %220 = load %4*, %4** %5, align 8
  %221 = getelementptr inbounds %4, %4* %220, i32 0, i32 7
  %222 = zext i1 %219 to i8
  store i8 %222, i8* %221, align 1
  %223 = getelementptr inbounds %4, %4* %7, i32 0, i32 12
  %224 = load i8, i8* %223, align 2
  %225 = trunc i8 %224 to i1
  %226 = load %4*, %4** %5, align 8
  %227 = getelementptr inbounds %4, %4* %226, i32 0, i32 12
  %228 = zext i1 %225 to i8
  store i8 %228, i8* %227, align 2
  %229 = getelementptr inbounds %4, %4* %7, i32 0, i32 8
  %230 = load i8, i8* %229, align 2
  %231 = trunc i8 %230 to i1
  %232 = load %4*, %4** %5, align 8
  %233 = getelementptr inbounds %4, %4* %232, i32 0, i32 8
  %234 = zext i1 %231 to i8
  store i8 %234, i8* %233, align 2
  %235 = getelementptr inbounds %4, %4* %7, i32 0, i32 10
  %236 = load i8, i8* %235, align 4
  %237 = trunc i8 %236 to i1
  %238 = load %4*, %4** %5, align 8
  %239 = getelementptr inbounds %4, %4* %238, i32 0, i32 10
  %240 = zext i1 %237 to i8
  store i8 %240, i8* %239, align 4
  %241 = getelementptr inbounds %4, %4* %7, i32 0, i32 11
  %242 = load i8, i8* %241, align 1
  %243 = trunc i8 %242 to i1
  %244 = load %4*, %4** %5, align 8
  %245 = getelementptr inbounds %4, %4* %244, i32 0, i32 11
  %246 = zext i1 %243 to i8
  store i8 %246, i8* %245, align 1
  %247 = getelementptr inbounds %4, %4* %7, i32 0, i32 14
  %248 = load i8, i8* %247, align 8
  %249 = trunc i8 %248 to i1
  %250 = load %4*, %4** %5, align 8
  %251 = getelementptr inbounds %4, %4* %250, i32 0, i32 14
  %252 = zext i1 %249 to i8
  store i8 %252, i8* %251, align 8
  %253 = getelementptr inbounds %4, %4* %7, i32 0, i32 9
  %254 = load i8, i8* %253, align 1
  %255 = trunc i8 %254 to i1
  %256 = load %4*, %4** %5, align 8
  %257 = getelementptr inbounds %4, %4* %256, i32 0, i32 9
  %258 = zext i1 %255 to i8
  store i8 %258, i8* %257, align 1
  %259 = getelementptr inbounds %4, %4* %7, i32 0, i32 13
  %260 = load i8, i8* %259, align 1
  %261 = trunc i8 %260 to i1
  %262 = load %4*, %4** %5, align 8
  %263 = getelementptr inbounds %4, %4* %262, i32 0, i32 13
  %264 = zext i1 %261 to i8
  store i8 %264, i8* %263, align 1
  br label %265

; <label>:265:                                    ; preds = %202, %197, %194
  %266 = load %4*, %4** %5, align 8
  %267 = getelementptr inbounds %4, %4* %266, i32 0, i32 9
  %268 = load i8, i8* %267, align 1
  %269 = trunc i8 %268 to i1
  %270 = zext i1 %269 to i32
  %271 = load i8, i8* %13, align 1
  %272 = trunc i8 %271 to i1
  %273 = zext i1 %272 to i32
  %274 = or i32 %273, %270
  %275 = icmp ne i32 %274, 0
  %276 = zext i1 %275 to i8
  store i8 %276, i8* %13, align 1
  %277 = load %4*, %4** %5, align 8
  %278 = getelementptr inbounds %4, %4* %277, i32 0, i32 16
  %279 = load %4*, %4** %278, align 8
  store %4* %279, %4** %5, align 8
  br label %191

; <label>:280:                                    ; preds = %191
  %281 = load %4*, %4** @53, align 8
  %282 = icmp ne %4* %281, null
  br i1 %282, label %296, label %283

; <label>:283:                                    ; preds = %280
  %284 = call zeroext i1 @278(%4* %7)
  br i1 %284, label %296, label %285

; <label>:285:                                    ; preds = %283
  store i8 1, i8* %8, align 1
  call void @275(%4* %7)
  %286 = getelementptr inbounds %4, %4* %7, i32 0, i32 9
  %287 = load i8, i8* %286, align 1
  %288 = trunc i8 %287 to i1
  %289 = zext i1 %288 to i32
  %290 = load i8, i8* %13, align 1
  %291 = trunc i8 %290 to i1
  %292 = zext i1 %291 to i32
  %293 = or i32 %292, %289
  %294 = icmp ne i32 %293, 0
  %295 = zext i1 %294 to i8
  store i8 %295, i8* %13, align 1
  br label %296

; <label>:296:                                    ; preds = %285, %283, %280
  call void @279()
  %297 = getelementptr inbounds %4, %4* %7, i32 0, i32 13
  %298 = load i8, i8* %297, align 1
  %299 = trunc i8 %298 to i1
  %300 = zext i1 %299 to i8
  store i8 %300, i8* @54, align 1
  %301 = load i8, i8* %13, align 1
  %302 = trunc i8 %301 to i1
  br i1 %302, label %303, label %305

; <label>:303:                                    ; preds = %296
  %304 = load i8*, i8** %12, align 8
  call void @280(i8* %304)
  br label %305

; <label>:305:                                    ; preds = %296, %303
  %306 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @56, i32 0, i32 0)) #11
  store i8* %306, i8** %31, align 8
  %307 = load i8*, i8** %31, align 8
  %308 = icmp ne i8* %307, null
  %309 = load i8*, i8** %31, align 8
  %310 = select i1 %308, i8* %309, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0)
  call void @277(i8* %310)
  %311 = load i64, i64* %15, align 8
  %312 = icmp eq i64 %311, 0
  br i1 %312, label %313, label %316

; <label>:313:                                    ; preds = %305
  store i64 1, i64* %15, align 8
  %314 = load i8**, i8*** %16, align 8
  %315 = bitcast i8** %314 to i8*
  call void @free(i8* %315) #11
  store i8** @57, i8*** %16, align 8
  br label %316

; <label>:316:                                    ; preds = %305, %313
  %317 = load i8, i8* %10, align 1
  %318 = icmp ne i8 %317, 0
  br i1 %318, label %319, label %342

; <label>:319:                                    ; preds = %316
  %320 = load i64, i64* %15, align 8
  %321 = icmp ugt i64 %320, 1
  br i1 %321, label %322, label %329

; <label>:322:                                    ; preds = %319
  %323 = load i8**, i8*** %16, align 8
  %324 = getelementptr inbounds i8*, i8** %323, i64 1
  %325 = load i8*, i8** %324, align 8
  %326 = call i8* @quote(i8* %325)
  %327 = load i8, i8* %10, align 1
  %328 = sext i8 %327 to i32
  call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @60, i32 0, i32 0), i8* %326, i32 %328)
  br label %329

; <label>:329:                                    ; preds = %322, %319
  %330 = load i8*, i8** %19, align 8
  %331 = icmp ne i8* %330, null
  br i1 %331, label %332, label %334

; <label>:332:                                    ; preds = %329
  %333 = load i8, i8* %10, align 1
  store i8 %333, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @61, i64 0, i64 0), align 1
  call void @276(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @61, i32 0, i32 0)) #14
  unreachable

; <label>:334:                                    ; preds = %329
  %335 = load i8**, i8*** %16, align 8
  %336 = getelementptr inbounds i8*, i8** %335, i64 0
  %337 = load i8*, i8** %336, align 8
  %338 = load i8, i8* %10, align 1
  %339 = call zeroext i1 @281(i8* %337, i8 signext %338)
  %340 = zext i1 %339 to i64
  %341 = select i1 %339, i32 0, i32 1
  call void @exit(i32 %341) #12
  unreachable

; <label>:342:                                    ; preds = %316
  %343 = load i8, i8* %11, align 1
  %344 = trunc i8 %343 to i1
  br i1 %344, label %345, label %368

; <label>:345:                                    ; preds = %342
  %346 = load i64, i64* %15, align 8
  %347 = call noalias i8* @xcalloc(i64 %346, i64 16)
  %348 = bitcast i8* %347 to %21*
  store %21* %348, %21** %32, align 8
  store i64 0, i64* %33, align 8
  br label %349

; <label>:349:                                    ; preds = %353, %345
  %350 = load i64, i64* %33, align 8
  %351 = load i64, i64* %15, align 8
  %352 = icmp ult i64 %350, %351
  br i1 %352, label %353, label %364

; <label>:353:                                    ; preds = %349
  %354 = load i8**, i8*** %16, align 8
  %355 = load i64, i64* %33, align 8
  %356 = getelementptr inbounds i8*, i8** %354, i64 %355
  %357 = load i8*, i8** %356, align 8
  %358 = load %21*, %21** %32, align 8
  %359 = load i64, i64* %33, align 8
  %360 = getelementptr inbounds %21, %21* %358, i64 %359
  %361 = getelementptr inbounds %21, %21* %360, i32 0, i32 0
  store i8* %357, i8** %361, align 8
  %362 = load i64, i64* %33, align 8
  %363 = add i64 %362, 1
  store i64 %363, i64* %33, align 8
  br label %349

; <label>:364:                                    ; preds = %349
  %365 = load %21*, %21** %32, align 8
  %366 = load i64, i64* %15, align 8
  %367 = load i8*, i8** %19, align 8
  call void @282(%21* %365, i64 0, i64 %366, i8* %367)
  br label %388

; <label>:368:                                    ; preds = %342
  %369 = load i64, i64* %14, align 8
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %377, label %371

; <label>:371:                                    ; preds = %368
  %372 = call i64 @num_processors(i32 2)
  store i64 %372, i64* %34, align 8
  %373 = load i64, i64* %34, align 8
  %374 = icmp ult i64 %373, 8
  %375 = load i64, i64* %34, align 8
  %376 = select i1 %374, i64 %375, i64 8
  store i64 %376, i64* %14, align 8
  br label %377

; <label>:377:                                    ; preds = %371, %368
  store i64 72057594037927935, i64* %35, align 8
  %378 = load i64, i64* %14, align 8
  %379 = load i64, i64* %35, align 8
  %380 = icmp ult i64 %378, %379
  %381 = load i64, i64* %14, align 8
  %382 = load i64, i64* %35, align 8
  %383 = select i1 %380, i64 %381, i64 %382
  store i64 %383, i64* %14, align 8
  %384 = load i8**, i8*** %16, align 8
  %385 = load i64, i64* %15, align 8
  %386 = load i8*, i8** %19, align 8
  %387 = load i64, i64* %14, align 8
  call void @283(i8** %384, i64 %385, i8* %386, i64 %387)
  br label %388

; <label>:388:                                    ; preds = %364, %377
  call void @exit(i32 0) #12
  unreachable
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #4

; Function Attrs: noinline nounwind uwtable
define internal void @269(i32) #1 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 1
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4
  store volatile i32 %6, i32* @exit_failure, align 4
  br label %7

; <label>:7:                                      ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind
declare %18* @localeconv() #4

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @270(i8 signext) #1 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  ret i8 %3
}

; Function Attrs: noinline nounwind uwtable
define internal void @271() #1 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i64 0, i64* %1, align 8
  br label %7

; <label>:7:                                      ; preds = %62, %0
  %8 = load i64, i64* %1, align 8
  %9 = icmp ult i64 %8, 256
  br i1 %9, label %10, label %75

; <label>:10:                                     ; preds = %7
  %11 = call i16** @__ctype_b_loc() #15
  %12 = load i16*, i16** %11, align 8
  %13 = load i64, i64* %1, align 8
  %14 = trunc i64 %13 to i32
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i16, i16* %12, i64 %15
  %17 = load i16, i16* %16, align 2
  %18 = zext i16 %17 to i32
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = load i64, i64* %1, align 8
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* @73, i64 0, i64 %23
  %25 = zext i1 %22 to i8
  store i8 %25, i8* %24, align 1
  %26 = call i16** @__ctype_b_loc() #15
  %27 = load i16*, i16** %26, align 8
  %28 = load i64, i64* %1, align 8
  %29 = trunc i64 %28 to i32
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i16, i16* %27, i64 %30
  %32 = load i16, i16* %31, align 2
  %33 = zext i16 %32 to i32
  %34 = and i32 %33, 16384
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = load i64, i64* %1, align 8
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* @125, i64 0, i64 %37
  %39 = zext i1 %36 to i8
  store i8 %39, i8* %38, align 1
  %40 = call i16** @__ctype_b_loc() #15
  %41 = load i16*, i16** %40, align 8
  %42 = load i64, i64* %1, align 8
  %43 = trunc i64 %42 to i32
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i16, i16* %41, i64 %44
  %46 = load i16, i16* %45, align 2
  %47 = zext i16 %46 to i32
  %48 = and i32 %47, 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %62, label %50

; <label>:50:                                     ; preds = %10
  %51 = call i16** @__ctype_b_loc() #15
  %52 = load i16*, i16** %51, align 8
  %53 = load i64, i64* %1, align 8
  %54 = trunc i64 %53 to i32
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i16, i16* %52, i64 %55
  %57 = load i16, i16* %56, align 2
  %58 = zext i16 %57 to i32
  %59 = and i32 %58, 1
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  br label %62

; <label>:62:                                     ; preds = %50, %10
  %63 = phi i1 [ false, %10 ], [ %61, %50 ]
  %64 = load i64, i64* %1, align 8
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* @124, i64 0, i64 %64
  %66 = zext i1 %63 to i8
  store i8 %66, i8* %65, align 1
  %67 = load i64, i64* %1, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @toupper(i32 %68) #13
  %70 = trunc i32 %69 to i8
  %71 = load i64, i64* %1, align 8
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* @77, i64 0, i64 %71
  store i8 %70, i8* %72, align 1
  %73 = load i64, i64* %1, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %1, align 8
  br label %7

; <label>:75:                                     ; preds = %7
  store i64 0, i64* %1, align 8
  br label %76

; <label>:76:                                     ; preds = %133, %75
  %77 = load i64, i64* %1, align 8
  %78 = icmp ult i64 %77, 12
  br i1 %78, label %79, label %139

; <label>:79:                                     ; preds = %76
  %80 = load i64, i64* %1, align 8
  %81 = add i64 131086, %80
  %82 = trunc i64 %81 to i32
  %83 = call i8* @nl_langinfo(i32 %82) #11
  store i8* %83, i8** %2, align 8
  %84 = load i8*, i8** %2, align 8
  %85 = call i64 @strlen(i8* %84) #13
  store i64 %85, i64* %3, align 8
  %86 = load i64, i64* %3, align 8
  %87 = add i64 %86, 1
  %88 = call noalias i8* @xmalloc(i64 %87)
  store i8* %88, i8** %6, align 8
  %89 = load i64, i64* %1, align 8
  %90 = getelementptr inbounds [12 x %10], [12 x %10]* @76, i64 0, i64 %89
  %91 = getelementptr inbounds %10, %10* %90, i32 0, i32 0
  store i8* %88, i8** %91, align 16
  %92 = load i64, i64* %1, align 8
  %93 = add i64 %92, 1
  %94 = trunc i64 %93 to i32
  %95 = load i64, i64* %1, align 8
  %96 = getelementptr inbounds [12 x %10], [12 x %10]* @76, i64 0, i64 %95
  %97 = getelementptr inbounds %10, %10* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %98

; <label>:98:                                     ; preds = %130, %79
  %99 = load i64, i64* %4, align 8
  %100 = load i64, i64* %3, align 8
  %101 = icmp ult i64 %99, %100
  br i1 %101, label %102, label %133

; <label>:102:                                    ; preds = %98
  %103 = call i16** @__ctype_b_loc() #15
  %104 = load i16*, i16** %103, align 8
  %105 = load i8*, i8** %2, align 8
  %106 = load i64, i64* %4, align 8
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = call zeroext i8 @270(i8 signext %108)
  %110 = zext i8 %109 to i32
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i16, i16* %104, i64 %111
  %113 = load i16, i16* %112, align 2
  %114 = zext i16 %113 to i32
  %115 = and i32 %114, 1
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %130, label %117

; <label>:117:                                    ; preds = %102
  %118 = load i8*, i8** %2, align 8
  %119 = load i64, i64* %4, align 8
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = call zeroext i8 @270(i8 signext %121)
  %123 = zext i8 %122 to i64
  %124 = getelementptr inbounds [256 x i8], [256 x i8]* @77, i64 0, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = load i8*, i8** %6, align 8
  %127 = load i64, i64* %5, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %5, align 8
  %129 = getelementptr inbounds i8, i8* %126, i64 %127
  store i8 %125, i8* %129, align 1
  br label %130

; <label>:130:                                    ; preds = %102, %117
  %131 = load i64, i64* %4, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %4, align 8
  br label %98

; <label>:133:                                    ; preds = %98
  %134 = load i8*, i8** %6, align 8
  %135 = load i64, i64* %5, align 8
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  store i8 0, i8* %136, align 1
  %137 = load i64, i64* %1, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %1, align 8
  br label %76

; <label>:139:                                    ; preds = %76
  call void @qsort(i8* bitcast ([12 x %10]* @76 to i8*), i64 12, i64 16, i32 (i8*, i8*)* @354)
  ret void
}

; Function Attrs: nounwind
declare i32 @sigemptyset(%2*) #4

; Function Attrs: noinline nounwind uwtable
define internal void @272(i32) #1 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @353()
  %3 = load i32, i32* %2, align 4
  %4 = call void (i32)* @signal(i32 %3, void (i32)* null) #11
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @raise(i32 %5) #11
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #4

; Function Attrs: noinline nounwind uwtable
define internal void @273() #1 {
  %1 = alloca %22, align 8
  %2 = load volatile %5*, %5** @66, align 8
  %3 = icmp ne %5* %2, null
  br i1 %3, label %4, label %5

; <label>:4:                                      ; preds = %0
  call void @339(%22* sret %1)
  call void @353()
  call void @340(%22* byval align 8 %1)
  br label %5

; <label>:5:                                      ; preds = %4, %0
  call void @close_stdout()
  ret void
}

; Function Attrs: nounwind
declare i32 @atexit(void ()*) #4

; Function Attrs: noinline nounwind uwtable
define internal %4* @274(%4*) #1 {
  %2 = alloca %4*, align 8
  store %4* %0, %4** %2, align 8
  %3 = load %4*, %4** %2, align 8
  %4 = bitcast %4* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 72, i32 8, i1 false)
  %5 = load %4*, %4** %2, align 8
  %6 = getelementptr inbounds %4, %4* %5, i32 0, i32 2
  store i64 -1, i64* %6, align 8
  %7 = load %4*, %4** %2, align 8
  ret %4* %7
}

; Function Attrs: noinline nounwind uwtable
define internal void @275(%4*) #1 {
  %2 = alloca %4*, align 8
  %3 = alloca %4**, align 8
  %4 = alloca %4*, align 8
  store %4* %0, %4** %2, align 8
  %5 = load %4*, %4** %2, align 8
  %6 = bitcast %4* %5 to i8*
  %7 = call noalias i8* @xmemdup(i8* %6, i64 72)
  %8 = bitcast i8* %7 to %4*
  store %4* %8, %4** %4, align 8
  store %4** @53, %4*** %3, align 8
  br label %9

; <label>:9:                                      ; preds = %13, %1
  %10 = load %4**, %4*** %3, align 8
  %11 = load %4*, %4** %10, align 8
  %12 = icmp ne %4* %11, null
  br i1 %12, label %13, label %17

; <label>:13:                                     ; preds = %9
  %14 = load %4**, %4*** %3, align 8
  %15 = load %4*, %4** %14, align 8
  %16 = getelementptr inbounds %4, %4* %15, i32 0, i32 16
  store %4** %16, %4*** %3, align 8
  br label %9

; <label>:17:                                     ; preds = %9
  %18 = load %4*, %4** %4, align 8
  %19 = load %4**, %4*** %3, align 8
  store %4* %18, %4** %19, align 8
  %20 = load %4*, %4** %4, align 8
  %21 = getelementptr inbounds %4, %4* %20, i32 0, i32 16
  store %4* null, %4** %21, align 8
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define internal void @276(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @131, i32 0, i32 0), i8* %3)
  call void @abort() #12
  unreachable
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare void @error(i32, i32, i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @277(i8*) #1 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i64, i64* @127, align 8
  %4 = icmp eq i64 0, %3
  br i1 %4, label %5, label %10

; <label>:5:                                      ; preds = %1
  %6 = load i8**, i8*** @97, align 8
  %7 = bitcast i8** %6 to i8*
  %8 = call i8* @x2nrealloc(i8* %7, i64* @127, i64 8)
  %9 = bitcast i8* %8 to i8**
  store i8** %9, i8*** @97, align 8
  br label %10

; <label>:10:                                     ; preds = %5, %1
  %11 = load i8*, i8** %2, align 8
  %12 = load i8**, i8*** @97, align 8
  store i64 1, i64* @55, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  store i8* %11, i8** %13, align 8
  ret void
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @278(%4*) #1 {
  %2 = alloca %4*, align 8
  store %4* %0, %4** %2, align 8
  %3 = load %4*, %4** %2, align 8
  %4 = getelementptr inbounds %4, %4* %3, i32 0, i32 4
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %40, label %7

; <label>:7:                                      ; preds = %1
  %8 = load %4*, %4** %2, align 8
  %9 = getelementptr inbounds %4, %4* %8, i32 0, i32 5
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %40, label %12

; <label>:12:                                     ; preds = %7
  %13 = load %4*, %4** %2, align 8
  %14 = getelementptr inbounds %4, %4* %13, i32 0, i32 6
  %15 = load i8, i8* %14, align 8
  %16 = trunc i8 %15 to i1
  br i1 %16, label %40, label %17

; <label>:17:                                     ; preds = %12
  %18 = load %4*, %4** %2, align 8
  %19 = getelementptr inbounds %4, %4* %18, i32 0, i32 7
  %20 = load i8, i8* %19, align 1
  %21 = trunc i8 %20 to i1
  br i1 %21, label %40, label %22

; <label>:22:                                     ; preds = %17
  %23 = load %4*, %4** %2, align 8
  %24 = call zeroext i1 @306(%4* %23)
  br i1 %24, label %40, label %25

; <label>:25:                                     ; preds = %22
  %26 = load %4*, %4** %2, align 8
  %27 = getelementptr inbounds %4, %4* %26, i32 0, i32 12
  %28 = load i8, i8* %27, align 2
  %29 = trunc i8 %28 to i1
  br i1 %29, label %40, label %30

; <label>:30:                                     ; preds = %25
  %31 = load %4*, %4** %2, align 8
  %32 = getelementptr inbounds %4, %4* %31, i32 0, i32 14
  %33 = load i8, i8* %32, align 8
  %34 = trunc i8 %33 to i1
  br i1 %34, label %40, label %35

; <label>:35:                                     ; preds = %30
  %36 = load %4*, %4** %2, align 8
  %37 = getelementptr inbounds %4, %4* %36, i32 0, i32 9
  %38 = load i8, i8* %37, align 1
  %39 = trunc i8 %38 to i1
  br label %40

; <label>:40:                                     ; preds = %35, %30, %25, %22, %17, %12, %7, %1
  %41 = phi i1 [ true, %30 ], [ true, %25 ], [ true, %22 ], [ true, %17 ], [ true, %12 ], [ true, %7 ], [ true, %1 ], [ %39, %35 ]
  %42 = xor i1 %41, true
  ret i1 %42
}

; Function Attrs: noinline nounwind uwtable
define internal void @279() #1 {
  %1 = alloca %4*, align 8
  %2 = alloca [31 x i8], align 16
  %3 = load %4*, %4** @53, align 8
  store %4* %3, %4** %1, align 8
  br label %4

; <label>:4:                                      ; preds = %62, %0
  %5 = load %4*, %4** %1, align 8
  %6 = icmp ne %4* %5, null
  br i1 %6, label %7, label %65

; <label>:7:                                      ; preds = %4
  %8 = load %4*, %4** %1, align 8
  %9 = getelementptr inbounds %4, %4* %8, i32 0, i32 8
  %10 = load i8, i8* %9, align 2
  %11 = trunc i8 %10 to i1
  %12 = zext i1 %11 to i32
  %13 = load %4*, %4** %1, align 8
  %14 = getelementptr inbounds %4, %4* %13, i32 0, i32 10
  %15 = load i8, i8* %14, align 4
  %16 = trunc i8 %15 to i1
  %17 = zext i1 %16 to i32
  %18 = add nsw i32 %12, %17
  %19 = load %4*, %4** %1, align 8
  %20 = getelementptr inbounds %4, %4* %19, i32 0, i32 11
  %21 = load i8, i8* %20, align 1
  %22 = trunc i8 %21 to i1
  %23 = zext i1 %22 to i32
  %24 = add nsw i32 %18, %23
  %25 = load %4*, %4** %1, align 8
  %26 = getelementptr inbounds %4, %4* %25, i32 0, i32 12
  %27 = load i8, i8* %26, align 2
  %28 = trunc i8 %27 to i1
  %29 = zext i1 %28 to i32
  %30 = add nsw i32 %24, %29
  %31 = load %4*, %4** %1, align 8
  %32 = getelementptr inbounds %4, %4* %31, i32 0, i32 14
  %33 = load i8, i8* %32, align 8
  %34 = trunc i8 %33 to i1
  %35 = zext i1 %34 to i32
  %36 = load %4*, %4** %1, align 8
  %37 = getelementptr inbounds %4, %4* %36, i32 0, i32 9
  %38 = load i8, i8* %37, align 1
  %39 = trunc i8 %38 to i1
  %40 = zext i1 %39 to i32
  %41 = or i32 %35, %40
  %42 = load %4*, %4** %1, align 8
  %43 = getelementptr inbounds %4, %4* %42, i32 0, i32 4
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = or i32 %41, %48
  %50 = add nsw i32 %30, %49
  %51 = icmp slt i32 1, %50
  %52 = load %4*, %4** %1, align 8
  br i1 %51, label %53, label %62

; <label>:53:                                     ; preds = %7
  %54 = getelementptr inbounds %4, %4* %52, i32 0, i32 13
  store i8 0, i8* %54, align 1
  %55 = load %4*, %4** %1, align 8
  %56 = getelementptr inbounds %4, %4* %55, i32 0, i32 7
  store i8 0, i8* %56, align 1
  %57 = load %4*, %4** %1, align 8
  %58 = getelementptr inbounds %4, %4* %57, i32 0, i32 6
  store i8 0, i8* %58, align 8
  %59 = load %4*, %4** %1, align 8
  %60 = getelementptr inbounds [31 x i8], [31 x i8]* %2, i32 0, i32 0
  call void @351(%4* %59, i8* %60)
  %61 = getelementptr inbounds [31 x i8], [31 x i8]* %2, i32 0, i32 0
  call void @276(i8* %61) #14
  unreachable

; <label>:62:                                     ; preds = %7
  %63 = getelementptr inbounds %4, %4* %52, i32 0, i32 16
  %64 = load %4*, %4** %63, align 8
  store %4* %64, %4** %1, align 8
  br label %4

; <label>:65:                                     ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @280(i8*) #1 {
  %2 = alloca i8*, align 8
  %3 = alloca [16 x i8], align 16
  %4 = alloca %23*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call %23* @randread_new(i8* %5, i64 16)
  store %23* %6, %23** %4, align 8
  %7 = load %23*, %23** %4, align 8
  %8 = icmp ne %23* %7, null
  br i1 %8, label %11, label %9

; <label>:9:                                      ; preds = %1
  %10 = load i8*, i8** %2, align 8
  call void @284(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @107, i32 0, i32 0), i8* %10) #14
  unreachable

; <label>:11:                                     ; preds = %1
  %12 = load %23*, %23** %4, align 8
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i32 0, i32 0
  call void @randread(%23* %12, i8* %13, i64 16)
  %14 = load %23*, %23** %4, align 8
  %15 = call i32 @randread_free(%23* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %11
  %18 = load i8*, i8** %2, align 8
  call void @284(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @62, i32 0, i32 0), i8* %18) #14
  unreachable

; <label>:19:                                     ; preds = %11
  call void @md5_init_ctx(%11* @90) #11
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i32 0, i32 0
  call void @md5_process_bytes(i8* %20, i64 16, %11* @90) #11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @281(i8*, i8 signext) #1 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %0*, align 8
  %6 = alloca %28, align 8
  %7 = alloca %9, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %4*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca %9*, align 8
  %14 = alloca %9*, align 8
  %15 = alloca %9*, align 8
  %16 = alloca i64, align 8
  %17 = alloca [21 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i8 %1, i8* %4, align 1
  %18 = load i8*, i8** %3, align 8
  %19 = call %0* @285(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @47, i32 0, i32 0))
  store %0* %19, %0** %5, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %20 = load %4*, %4** @53, align 8
  store %4* %20, %4** %10, align 8
  store i8 0, i8* %11, align 1
  store i8 1, i8* %12, align 1
  %21 = load i64, i64* @103, align 8
  %22 = icmp ugt i64 %21, 0
  %23 = load i64, i64* @103, align 8
  %24 = select i1 %22, i64 %23, i64 0
  call void @287(%28* %6, i64 32, i64 %24)
  %25 = getelementptr inbounds %9, %9* %7, i32 0, i32 0
  store i8* null, i8** %25, align 8
  br label %26

; <label>:26:                                     ; preds = %162, %2
  %27 = load %0*, %0** %5, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = call zeroext i1 @288(%28* %6, %0* %27, i8* %28)
  br i1 %29, label %30, label %163

; <label>:30:                                     ; preds = %26
  %31 = call %9* @289(%28* %6)
  store %9* %31, %9** %13, align 8
  %32 = load %9*, %9** %13, align 8
  %33 = getelementptr inbounds %28, %28* %6, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = sub i64 0, %34
  %36 = getelementptr inbounds %9, %9* %32, i64 %35
  store %9* %36, %9** %14, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %72

; <label>:39:                                     ; preds = %30
  %40 = load i8, i8* %11, align 1
  %41 = trunc i8 %40 to i1
  %42 = zext i1 %41 to i32
  %43 = load %9*, %9** %13, align 8
  %44 = getelementptr inbounds %9, %9* %43, i64 -1
  %45 = call i32 @301(%9* %7, %9* %44)
  %46 = icmp sle i32 %42, %45
  br i1 %46, label %47, label %72

; <label>:47:                                     ; preds = %78, %39
  %48 = load i8, i8* %4, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 99
  br i1 %50, label %51, label %71

; <label>:51:                                     ; preds = %47
  %52 = load %9*, %9** %13, align 8
  %53 = getelementptr inbounds %9, %9* %52, i64 -1
  store %9* %53, %9** %15, align 8
  %54 = call %9* @289(%28* %6)
  %55 = load %9*, %9** %15, align 8
  %56 = ptrtoint %9* %54 to i64
  %57 = ptrtoint %9* %55 to i64
  %58 = sub i64 %56, %57
  %59 = sdiv exact i64 %58, 32
  %60 = load i64, i64* %9, align 8
  %61 = add i64 %59, %60
  store i64 %61, i64* %16, align 8
  %62 = load %0*, %0** @stderr, align 8
  %63 = load i8*, i8** @program_name, align 8
  %64 = load i8*, i8** %3, align 8
  %65 = load i64, i64* %16, align 8
  %66 = getelementptr inbounds [21 x i8], [21 x i8]* %17, i32 0, i32 0
  %67 = call i8* @umaxtostr(i64 %65, i8* %66)
  %68 = call i32 (%0*, i8*, ...) @fprintf(%0* %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @112, i32 0, i32 0), i8* %63, i8* %64, i8* %67)
  %69 = load %9*, %9** %15, align 8
  %70 = load %0*, %0** @stderr, align 8
  call void @302(%9* %69, %0* %70, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @113, i32 0, i32 0))
  br label %71

; <label>:71:                                     ; preds = %51, %47
  store i8 0, i8* %12, align 1
  br label %163

; <label>:72:                                     ; preds = %39, %30
  br label %73

; <label>:73:                                     ; preds = %87, %72
  %74 = load %9*, %9** %14, align 8
  %75 = load %9*, %9** %13, align 8
  %76 = getelementptr inbounds %9, %9* %75, i32 -1
  store %9* %76, %9** %13, align 8
  %77 = icmp ult %9* %74, %76
  br i1 %77, label %78, label %88

; <label>:78:                                     ; preds = %73
  %79 = load i8, i8* %11, align 1
  %80 = trunc i8 %79 to i1
  %81 = zext i1 %80 to i32
  %82 = load %9*, %9** %13, align 8
  %83 = load %9*, %9** %13, align 8
  %84 = getelementptr inbounds %9, %9* %83, i64 -1
  %85 = call i32 @301(%9* %82, %9* %84)
  %86 = icmp sle i32 %81, %85
  br i1 %86, label %47, label %87

; <label>:87:                                     ; preds = %78
  br label %73

; <label>:88:                                     ; preds = %73
  %89 = getelementptr inbounds %28, %28* %6, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %9, align 8
  %92 = add i64 %91, %90
  store i64 %92, i64* %9, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load %9*, %9** %13, align 8
  %95 = getelementptr inbounds %9, %9* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ult i64 %93, %96
  br i1 %97, label %98, label %120

; <label>:98:                                     ; preds = %88
  br label %99

; <label>:99:                                     ; preds = %108, %98
  %100 = load i64, i64* %8, align 8
  %101 = mul i64 %100, 2
  store i64 %101, i64* %8, align 8
  %102 = load i64, i64* %8, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %108, label %104

; <label>:104:                                    ; preds = %99
  %105 = load %9*, %9** %13, align 8
  %106 = getelementptr inbounds %9, %9* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %8, align 8
  br label %114

; <label>:108:                                    ; preds = %99
  %109 = load i64, i64* %8, align 8
  %110 = load %9*, %9** %13, align 8
  %111 = getelementptr inbounds %9, %9* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ult i64 %109, %112
  br i1 %113, label %99, label %114

; <label>:114:                                    ; preds = %108, %104
  %115 = getelementptr inbounds %9, %9* %7, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  call void @free(i8* %116) #11
  %117 = load i64, i64* %8, align 8
  %118 = call noalias i8* @xmalloc(i64 %117)
  %119 = getelementptr inbounds %9, %9* %7, i32 0, i32 0
  store i8* %118, i8** %119, align 8
  br label %120

; <label>:120:                                    ; preds = %114, %88
  %121 = getelementptr inbounds %9, %9* %7, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = load %9*, %9** %13, align 8
  %124 = getelementptr inbounds %9, %9* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = load %9*, %9** %13, align 8
  %127 = getelementptr inbounds %9, %9* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %122, i8* %125, i64 %128, i32 1, i1 false)
  %129 = load %9*, %9** %13, align 8
  %130 = getelementptr inbounds %9, %9* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %9, %9* %7, i32 0, i32 1
  store i64 %131, i64* %132, align 8
  %133 = load %4*, %4** %10, align 8
  %134 = icmp ne %4* %133, null
  br i1 %134, label %135, label %162

; <label>:135:                                    ; preds = %120
  %136 = getelementptr inbounds %9, %9* %7, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = load %9*, %9** %13, align 8
  %139 = getelementptr inbounds %9, %9* %138, i32 0, i32 2
  %140 = load i8*, i8** %139, align 8
  %141 = load %9*, %9** %13, align 8
  %142 = getelementptr inbounds %9, %9* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = ptrtoint i8* %140 to i64
  %145 = ptrtoint i8* %143 to i64
  %146 = sub i64 %144, %145
  %147 = getelementptr inbounds i8, i8* %137, i64 %146
  %148 = getelementptr inbounds %9, %9* %7, i32 0, i32 2
  store i8* %147, i8** %148, align 8
  %149 = getelementptr inbounds %9, %9* %7, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = load %9*, %9** %13, align 8
  %152 = getelementptr inbounds %9, %9* %151, i32 0, i32 3
  %153 = load i8*, i8** %152, align 8
  %154 = load %9*, %9** %13, align 8
  %155 = getelementptr inbounds %9, %9* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = ptrtoint i8* %153 to i64
  %158 = ptrtoint i8* %156 to i64
  %159 = sub i64 %157, %158
  %160 = getelementptr inbounds i8, i8* %150, i64 %159
  %161 = getelementptr inbounds %9, %9* %7, i32 0, i32 3
  store i8* %160, i8** %161, align 8
  br label %162

; <label>:162:                                    ; preds = %135, %120
  br label %26

; <label>:163:                                    ; preds = %71, %26
  %164 = load %0*, %0** %5, align 8
  %165 = load i8*, i8** %3, align 8
  call void @290(%0* %164, i8* %165)
  %166 = getelementptr inbounds %28, %28* %6, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  call void @free(i8* %167) #11
  %168 = getelementptr inbounds %9, %9* %7, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  call void @free(i8* %169) #11
  %170 = load i8, i8* %12, align 1
  %171 = trunc i8 %170 to i1
  ret i1 %171
}

; Function Attrs: noinline nounwind uwtable
define internal void @282(%21*, i64, i64, i8*) #1 {
  %5 = alloca %21*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %0*, align 8
  %14 = alloca %5*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %0*, align 8
  %18 = alloca %5*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %0**, align 8
  %21 = alloca i64, align 8
  %22 = alloca %0*, align 8
  %23 = alloca %0*, align 8
  %24 = alloca %5*, align 8
  store %21* %0, %21** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  br label %25

; <label>:25:                                     ; preds = %128, %4
  %26 = load i64, i64* %7, align 8
  %27 = icmp ult i64 16, %26
  br i1 %27, label %28, label %149

; <label>:28:                                     ; preds = %25
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %29

; <label>:29:                                     ; preds = %34, %28
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %9, align 8
  %32 = sub i64 %30, %31
  %33 = icmp ule i64 16, %32
  br i1 %33, label %34, label %73

; <label>:34:                                     ; preds = %29
  %35 = call %5* @291(%0** %13)
  store %5* %35, %5** %14, align 8
  %36 = load %21*, %21** %5, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds %21, %21* %36, i64 %37
  %39 = load i64, i64* %6, align 8
  %40 = icmp ult i64 %39, 16
  %41 = load i64, i64* %6, align 8
  %42 = select i1 %40, i64 %41, i64 16
  %43 = load %0*, %0** %13, align 8
  %44 = load %5*, %5** %14, align 8
  %45 = getelementptr inbounds %5, %5* %44, i32 0, i32 3
  %46 = getelementptr inbounds [1 x i8], [1 x i8]* %45, i32 0, i32 0
  %47 = call i64 @344(%21* %38, i64 %42, i64 16, %0* %43, i8* %46)
  store i64 %47, i64* %15, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %15, align 8
  %50 = icmp ult i64 %48, %49
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %15, align 8
  %53 = select i1 %50, i64 %51, i64 %52
  %54 = load i64, i64* %6, align 8
  %55 = sub i64 %54, %53
  store i64 %55, i64* %6, align 8
  %56 = load %5*, %5** %14, align 8
  %57 = getelementptr inbounds %5, %5* %56, i32 0, i32 3
  %58 = getelementptr inbounds [1 x i8], [1 x i8]* %57, i32 0, i32 0
  %59 = load %21*, %21** %5, align 8
  %60 = load i64, i64* %10, align 8
  %61 = getelementptr inbounds %21, %21* %59, i64 %60
  %62 = getelementptr inbounds %21, %21* %61, i32 0, i32 0
  store i8* %58, i8** %62, align 8
  %63 = load %5*, %5** %14, align 8
  %64 = load %21*, %21** %5, align 8
  %65 = load i64, i64* %10, align 8
  %66 = getelementptr inbounds %21, %21* %64, i64 %65
  %67 = getelementptr inbounds %21, %21* %66, i32 0, i32 1
  store %5* %63, %5** %67, align 8
  %68 = load i64, i64* %15, align 8
  %69 = load i64, i64* %9, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %9, align 8
  %71 = load i64, i64* %10, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %10, align 8
  br label %29

; <label>:73:                                     ; preds = %29
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* %9, align 8
  %76 = sub i64 %74, %75
  store i64 %76, i64* %11, align 8
  %77 = load i64, i64* %10, align 8
  %78 = urem i64 %77, 16
  %79 = sub i64 16, %78
  store i64 %79, i64* %12, align 8
  %80 = load i64, i64* %12, align 8
  %81 = load i64, i64* %11, align 8
  %82 = icmp ult i64 %80, %81
  br i1 %82, label %83, label %128

; <label>:83:                                     ; preds = %73
  %84 = load i64, i64* %11, align 8
  %85 = load i64, i64* %12, align 8
  %86 = sub i64 %84, %85
  %87 = add i64 %86, 1
  store i64 %87, i64* %16, align 8
  %88 = call %5* @291(%0** %17)
  store %5* %88, %5** %18, align 8
  %89 = load %21*, %21** %5, align 8
  %90 = load i64, i64* %9, align 8
  %91 = getelementptr inbounds %21, %21* %89, i64 %90
  %92 = load i64, i64* %6, align 8
  %93 = load i64, i64* %16, align 8
  %94 = icmp ult i64 %92, %93
  %95 = load i64, i64* %6, align 8
  %96 = load i64, i64* %16, align 8
  %97 = select i1 %94, i64 %95, i64 %96
  %98 = load i64, i64* %16, align 8
  %99 = load %0*, %0** %17, align 8
  %100 = load %5*, %5** %18, align 8
  %101 = getelementptr inbounds %5, %5* %100, i32 0, i32 3
  %102 = getelementptr inbounds [1 x i8], [1 x i8]* %101, i32 0, i32 0
  %103 = call i64 @344(%21* %91, i64 %97, i64 %98, %0* %99, i8* %102)
  store i64 %103, i64* %19, align 8
  %104 = load i64, i64* %6, align 8
  %105 = load i64, i64* %19, align 8
  %106 = icmp ult i64 %104, %105
  %107 = load i64, i64* %6, align 8
  %108 = load i64, i64* %19, align 8
  %109 = select i1 %106, i64 %107, i64 %108
  %110 = load i64, i64* %6, align 8
  %111 = sub i64 %110, %109
  store i64 %111, i64* %6, align 8
  %112 = load %5*, %5** %18, align 8
  %113 = getelementptr inbounds %5, %5* %112, i32 0, i32 3
  %114 = getelementptr inbounds [1 x i8], [1 x i8]* %113, i32 0, i32 0
  %115 = load %21*, %21** %5, align 8
  %116 = load i64, i64* %10, align 8
  %117 = getelementptr inbounds %21, %21* %115, i64 %116
  %118 = getelementptr inbounds %21, %21* %117, i32 0, i32 0
  store i8* %114, i8** %118, align 8
  %119 = load %5*, %5** %18, align 8
  %120 = load %21*, %21** %5, align 8
  %121 = load i64, i64* %10, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %10, align 8
  %123 = getelementptr inbounds %21, %21* %120, i64 %121
  %124 = getelementptr inbounds %21, %21* %123, i32 0, i32 1
  store %5* %119, %5** %124, align 8
  %125 = load i64, i64* %19, align 8
  %126 = load i64, i64* %9, align 8
  %127 = add i64 %126, %125
  store i64 %127, i64* %9, align 8
  br label %128

; <label>:128:                                    ; preds = %83, %73
  %129 = load %21*, %21** %5, align 8
  %130 = load i64, i64* %10, align 8
  %131 = getelementptr inbounds %21, %21* %129, i64 %130
  %132 = bitcast %21* %131 to i8*
  %133 = load %21*, %21** %5, align 8
  %134 = load i64, i64* %9, align 8
  %135 = getelementptr inbounds %21, %21* %133, i64 %134
  %136 = bitcast %21* %135 to i8*
  %137 = load i64, i64* %7, align 8
  %138 = load i64, i64* %9, align 8
  %139 = sub i64 %137, %138
  %140 = mul i64 %139, 16
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %132, i8* %136, i64 %140, i32 8, i1 false)
  %141 = load i64, i64* %10, align 8
  %142 = load i64, i64* %6, align 8
  %143 = add i64 %142, %141
  store i64 %143, i64* %6, align 8
  %144 = load i64, i64* %9, align 8
  %145 = load i64, i64* %10, align 8
  %146 = sub i64 %144, %145
  %147 = load i64, i64* %7, align 8
  %148 = sub i64 %147, %146
  store i64 %148, i64* %7, align 8
  br label %25

; <label>:149:                                    ; preds = %25
  %150 = load %21*, %21** %5, align 8
  %151 = load i64, i64* %6, align 8
  %152 = load i64, i64* %7, align 8
  %153 = load i8*, i8** %8, align 8
  call void @345(%21* %150, i64 %151, i64 %152, i8* %153)
  br label %154

; <label>:154:                                    ; preds = %149, %210
  %155 = load %21*, %21** %5, align 8
  %156 = load i64, i64* %7, align 8
  %157 = call i64 @346(%21* %155, i64 %156, %0*** %20)
  store i64 %157, i64* %21, align 8
  %158 = load i64, i64* %21, align 8
  %159 = load i64, i64* %7, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %181

; <label>:161:                                    ; preds = %154
  %162 = load i8*, i8** %8, align 8
  %163 = call %0* @343(i8* %162, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @65, i32 0, i32 0))
  store %0* %163, %0** %22, align 8
  %164 = load %0*, %0** %22, align 8
  %165 = icmp ne %0* %164, null
  br i1 %165, label %166, label %173

; <label>:166:                                    ; preds = %161
  %167 = load %21*, %21** %5, align 8
  %168 = load i64, i64* %6, align 8
  %169 = load i64, i64* %7, align 8
  %170 = load %0*, %0** %22, align 8
  %171 = load i8*, i8** %8, align 8
  %172 = load %0**, %0*** %20, align 8
  call void @347(%21* %167, i64 %168, i64 %169, %0* %170, i8* %171, %0** %172)
  ret void

; <label>:173:                                    ; preds = %161
  %174 = call i32* @__errno_location() #15
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 24
  %177 = load i64, i64* %21, align 8
  %178 = icmp ule i64 %177, 2
  %or.cond = or i1 %176, %178
  br i1 %or.cond, label %179, label %190

; <label>:179:                                    ; preds = %173
  %180 = load i8*, i8** %8, align 8
  call void @284(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @107, i32 0, i32 0), i8* %180) #14
  unreachable

; <label>:181:                                    ; preds = %154
  %182 = load i64, i64* %21, align 8
  %183 = icmp ule i64 %182, 2
  br i1 %183, label %184, label %190

; <label>:184:                                    ; preds = %181
  %185 = load %21*, %21** %5, align 8
  %186 = load i64, i64* %21, align 8
  %187 = getelementptr inbounds %21, %21* %185, i64 %186
  %188 = getelementptr inbounds %21, %21* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  call void @284(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @107, i32 0, i32 0), i8* %189) #14
  unreachable

; <label>:190:                                    ; preds = %181, %173
  br label %191

; <label>:191:                                    ; preds = %191, %190
  %192 = load i64, i64* %21, align 8
  %193 = add i64 %192, -1
  store i64 %193, i64* %21, align 8
  %194 = load %0**, %0*** %20, align 8
  %195 = load i64, i64* %21, align 8
  %196 = getelementptr inbounds %0*, %0** %194, i64 %195
  %197 = load %0*, %0** %196, align 8
  %198 = load %21*, %21** %5, align 8
  %199 = load i64, i64* %21, align 8
  %200 = getelementptr inbounds %21, %21* %198, i64 %199
  %201 = getelementptr inbounds %21, %21* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  call void @290(%0* %197, i8* %202)
  %203 = load i64, i64* %21, align 8
  %204 = icmp ule i64 %203, 2
  %205 = xor i1 %204, true
  %206 = call %5* @331(%0** %23, i1 zeroext %205)
  store %5* %206, %5** %24, align 8
  %207 = load %5*, %5** %24, align 8
  %208 = icmp ne %5* %207, null
  %209 = xor i1 %208, true
  br i1 %209, label %191, label %210

; <label>:210:                                    ; preds = %191
  %211 = load %21*, %21** %5, align 8
  %212 = getelementptr inbounds %21, %21* %211, i64 0
  %213 = load i64, i64* %6, align 8
  %214 = load i64, i64* %21, align 8
  %215 = icmp ult i64 %213, %214
  %216 = load i64, i64* %6, align 8
  %217 = load i64, i64* %21, align 8
  %218 = select i1 %215, i64 %216, i64 %217
  %219 = load i64, i64* %21, align 8
  %220 = load %0*, %0** %23, align 8
  %221 = load %5*, %5** %24, align 8
  %222 = getelementptr inbounds %5, %5* %221, i32 0, i32 3
  %223 = getelementptr inbounds [1 x i8], [1 x i8]* %222, i32 0, i32 0
  %224 = load %0**, %0*** %20, align 8
  call void @347(%21* %212, i64 %218, i64 %219, %0* %220, i8* %223, %0** %224)
  %225 = load i64, i64* %6, align 8
  %226 = load i64, i64* %21, align 8
  %227 = icmp ult i64 %225, %226
  %228 = load i64, i64* %6, align 8
  %229 = load i64, i64* %21, align 8
  %230 = select i1 %227, i64 %228, i64 %229
  %231 = load i64, i64* %6, align 8
  %232 = sub i64 %231, %230
  store i64 %232, i64* %6, align 8
  %233 = load %5*, %5** %24, align 8
  %234 = getelementptr inbounds %5, %5* %233, i32 0, i32 3
  %235 = getelementptr inbounds [1 x i8], [1 x i8]* %234, i32 0, i32 0
  %236 = load %21*, %21** %5, align 8
  %237 = getelementptr inbounds %21, %21* %236, i64 0
  %238 = getelementptr inbounds %21, %21* %237, i32 0, i32 0
  store i8* %235, i8** %238, align 8
  %239 = load %5*, %5** %24, align 8
  %240 = load %21*, %21** %5, align 8
  %241 = getelementptr inbounds %21, %21* %240, i64 0
  %242 = getelementptr inbounds %21, %21* %241, i32 0, i32 1
  store %5* %239, %5** %242, align 8
  %243 = load %21*, %21** %5, align 8
  %244 = getelementptr inbounds %21, %21* %243, i64 1
  %245 = bitcast %21* %244 to i8*
  %246 = load %21*, %21** %5, align 8
  %247 = load i64, i64* %21, align 8
  %248 = getelementptr inbounds %21, %21* %246, i64 %247
  %249 = bitcast %21* %248 to i8*
  %250 = load i64, i64* %7, align 8
  %251 = load i64, i64* %21, align 8
  %252 = sub i64 %250, %251
  %253 = mul i64 %252, 16
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %245, i8* %249, i64 %253, i32 8, i1 false)
  %254 = load i64, i64* %6, align 8
  %255 = add i64 %254, 1
  store i64 %255, i64* %6, align 8
  %256 = load i64, i64* %21, align 8
  %257 = sub i64 %256, 1
  %258 = load i64, i64* %7, align 8
  %259 = sub i64 %258, %257
  store i64 %259, i64* %7, align 8
  br label %154
}

; Function Attrs: noinline nounwind uwtable
define internal void @283(i8**, i64, i8*, i64) #1 {
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %28, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %0*, align 8
  %15 = alloca %0*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %9*, align 8
  %20 = alloca %29, align 8
  %21 = alloca %36*, align 8
  %22 = alloca %36*, align 8
  %23 = alloca i64, align 8
  %24 = alloca %5*, align 8
  %25 = alloca %21*, align 8
  store i8** %0, i8*** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %10, align 8
  store i8 0, i8* %11, align 1
  %26 = getelementptr inbounds %28, %28* %9, i32 0, i32 3
  store i64 0, i64* %26, align 8
  br label %27

; <label>:27:                                     ; preds = %155, %4
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %158

; <label>:30:                                     ; preds = %27
  %31 = load i8**, i8*** %5, align 8
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %13, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = call %0* @285(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @47, i32 0, i32 0))
  store %0* %34, %0** %14, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp ugt i64 %35, 1
  br i1 %36, label %37, label %50

; <label>:37:                                     ; preds = %30
  store i64 1, i64* %17, align 8
  store i64 1, i64* %18, align 8
  br label %38

; <label>:38:                                     ; preds = %42, %37
  %39 = load i64, i64* %17, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %47

; <label>:42:                                     ; preds = %38
  %43 = load i64, i64* %17, align 8
  %44 = mul i64 %43, 2
  store i64 %44, i64* %17, align 8
  %45 = load i64, i64* %18, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %18, align 8
  br label %38

; <label>:47:                                     ; preds = %38
  %48 = load i64, i64* %18, align 8
  %49 = mul i64 %48, 32
  store i64 %49, i64* %16, align 8
  br label %51

; <label>:50:                                     ; preds = %30
  store i64 48, i64* %16, align 8
  br label %51

; <label>:51:                                     ; preds = %50, %47
  %52 = getelementptr inbounds %28, %28* %9, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %61, label %55

; <label>:55:                                     ; preds = %51
  %56 = load i64, i64* %16, align 8
  %57 = load i8**, i8*** %5, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %16, align 8
  %60 = call i64 @286(%0** %14, i64 1, i8** %57, i64 %58, i64 %59)
  call void @287(%28* %9, i64 %56, i64 %60)
  br label %61

; <label>:61:                                     ; preds = %55, %51
  %62 = getelementptr inbounds %28, %28* %9, i32 0, i32 6
  store i8 0, i8* %62, align 8
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i32 1
  store i8** %64, i8*** %5, align 8
  %65 = load i64, i64* %6, align 8
  %66 = add i64 %65, -1
  store i64 %66, i64* %6, align 8
  br label %67

; <label>:67:                                     ; preds = %154, %61
  %68 = load %0*, %0** %14, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = call zeroext i1 @288(%28* %9, %0* %68, i8* %69)
  br i1 %70, label %71, label %155

; <label>:71:                                     ; preds = %67
  %72 = getelementptr inbounds %28, %28* %9, i32 0, i32 6
  %73 = load i8, i8* %72, align 8
  %74 = trunc i8 %73 to i1
  %75 = load i64, i64* %6, align 8
  %76 = icmp ne i64 %75, 0
  %or.cond = and i1 %74, %76
  br i1 %or.cond, label %77, label %95

; <label>:77:                                     ; preds = %71
  %78 = load i64, i64* %16, align 8
  %79 = add i64 %78, 1
  %80 = getelementptr inbounds %28, %28* %9, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %28, %28* %9, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = sub i64 %81, %83
  %85 = load i64, i64* %16, align 8
  %86 = getelementptr inbounds %28, %28* %9, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = mul i64 %85, %87
  %89 = sub i64 %84, %88
  %90 = icmp ult i64 %79, %89
  br i1 %90, label %91, label %95

; <label>:91:                                     ; preds = %77
  %92 = getelementptr inbounds %28, %28* %9, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %28, %28* %9, i32 0, i32 4
  store i64 %93, i64* %94, align 8
  br label %155

; <label>:95:                                     ; preds = %77, %71
  %96 = call %9* @289(%28* %9)
  store %9* %96, %9** %19, align 8
  %97 = getelementptr inbounds %28, %28* %9, i32 0, i32 6
  %98 = load i8, i8* %97, align 8
  %99 = trunc i8 %98 to i1
  %.not = xor i1 %99, true
  %100 = load i64, i64* %6, align 8
  %101 = icmp ne i64 %100, 0
  %or.cond3 = or i1 %.not, %101
  %102 = load i64, i64* %10, align 8
  %103 = icmp ne i64 %102, 0
  %or.cond5 = or i1 %or.cond3, %103
  br i1 %or.cond5, label %114, label %104

; <label>:104:                                    ; preds = %95
  %105 = getelementptr inbounds %28, %28* %9, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %114, label %108

; <label>:108:                                    ; preds = %104
  %109 = load %0*, %0** %14, align 8
  %110 = load i8*, i8** %13, align 8
  call void @290(%0* %109, i8* %110)
  %111 = load i8*, i8** %7, align 8
  %112 = call %0* @285(i8* %111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @65, i32 0, i32 0))
  store %0* %112, %0** %15, align 8
  %113 = load i8*, i8** %7, align 8
  store i8* %113, i8** %12, align 8
  store i8 1, i8* %11, align 1
  br label %120

; <label>:114:                                    ; preds = %95, %104
  %115 = load i64, i64* %10, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %10, align 8
  %117 = call %5* @291(%0** %15)
  %118 = getelementptr inbounds %5, %5* %117, i32 0, i32 3
  %119 = getelementptr inbounds [1 x i8], [1 x i8]* %118, i32 0, i32 0
  store i8* %119, i8** %12, align 8
  br label %120

; <label>:120:                                    ; preds = %114, %108
  %121 = getelementptr inbounds %28, %28* %9, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp ult i64 1, %122
  br i1 %123, label %124, label %144

; <label>:124:                                    ; preds = %120
  %125 = load i64, i64* %8, align 8
  call void @292(%29* %20, i64 %125)
  %126 = load i64, i64* %8, align 8
  %127 = getelementptr inbounds %28, %28* %9, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load %9*, %9** %19, align 8
  %130 = call %36* @293(i64 %126, i64 %128, %9* %129)
  store %36* %130, %36** %21, align 8
  %131 = load %36*, %36** %21, align 8
  %132 = getelementptr inbounds %36, %36* %131, i64 1
  store %36* %132, %36** %22, align 8
  %133 = load %9*, %9** %19, align 8
  %134 = load i64, i64* %8, align 8
  %135 = getelementptr inbounds %28, %28* %9, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load %36*, %36** %22, align 8
  %138 = load %0*, %0** %15, align 8
  %139 = load i8*, i8** %12, align 8
  call void @294(%9* %133, i64 %134, i64 %136, %36* %137, %29* %20, %0* %138, i8* %139)
  call void @295(%29* %20)
  %140 = load %36*, %36** %22, align 8
  %141 = getelementptr inbounds %36, %36* %140, i32 0, i32 12
  %142 = call i32 @pthread_mutex_destroy(%31* %141) #11
  %143 = load %36*, %36** %21, align 8
  call void @296(%36* %143)
  br label %149

; <label>:144:                                    ; preds = %120
  %145 = load %9*, %9** %19, align 8
  %146 = getelementptr inbounds %9, %9* %145, i64 -1
  %147 = load %0*, %0** %15, align 8
  %148 = load i8*, i8** %12, align 8
  call void @297(%9* %146, %0* %147, i8* %148)
  br label %149

; <label>:149:                                    ; preds = %144, %124
  %150 = load %0*, %0** %15, align 8
  %151 = load i8*, i8** %12, align 8
  call void @290(%0* %150, i8* %151)
  %152 = load i8, i8* %11, align 1
  %153 = trunc i8 %152 to i1
  br i1 %153, label %158, label %154

; <label>:154:                                    ; preds = %149
  br label %67

; <label>:155:                                    ; preds = %91, %67
  %156 = load %0*, %0** %14, align 8
  %157 = load i8*, i8** %13, align 8
  call void @290(%0* %156, i8* %157)
  br label %27

; <label>:158:                                    ; preds = %27, %149
  %159 = getelementptr inbounds %28, %28* %9, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  call void @free(i8* %160) #11
  %161 = load i8, i8* %11, align 1
  %162 = trunc i8 %161 to i1
  br i1 %162, label %196, label %163

; <label>:163:                                    ; preds = %158
  %164 = load volatile %5*, %5** @66, align 8
  store %5* %164, %5** %24, align 8
  %165 = load i64, i64* %10, align 8
  %166 = call noalias i8* @xnmalloc(i64 %165, i64 16)
  %167 = bitcast i8* %166 to %21*
  store %21* %167, %21** %25, align 8
  store i64 0, i64* %23, align 8
  br label %168

; <label>:168:                                    ; preds = %171, %163
  %169 = load %5*, %5** %24, align 8
  %170 = icmp ne %5* %169, null
  br i1 %170, label %171, label %189

; <label>:171:                                    ; preds = %168
  %172 = load %5*, %5** %24, align 8
  %173 = getelementptr inbounds %5, %5* %172, i32 0, i32 3
  %174 = getelementptr inbounds [1 x i8], [1 x i8]* %173, i32 0, i32 0
  %175 = load %21*, %21** %25, align 8
  %176 = load i64, i64* %23, align 8
  %177 = getelementptr inbounds %21, %21* %175, i64 %176
  %178 = getelementptr inbounds %21, %21* %177, i32 0, i32 0
  store i8* %174, i8** %178, align 8
  %179 = load %5*, %5** %24, align 8
  %180 = load %21*, %21** %25, align 8
  %181 = load i64, i64* %23, align 8
  %182 = getelementptr inbounds %21, %21* %180, i64 %181
  %183 = getelementptr inbounds %21, %21* %182, i32 0, i32 1
  store %5* %179, %5** %183, align 8
  %184 = load %5*, %5** %24, align 8
  %185 = getelementptr inbounds %5, %5* %184, i32 0, i32 0
  %186 = load volatile %5*, %5** %185, align 8
  store %5* %186, %5** %24, align 8
  %187 = load i64, i64* %23, align 8
  %188 = add i64 %187, 1
  store i64 %188, i64* %23, align 8
  br label %168

; <label>:189:                                    ; preds = %168
  %190 = load %21*, %21** %25, align 8
  %191 = load i64, i64* %10, align 8
  %192 = load i64, i64* %10, align 8
  %193 = load i8*, i8** %7, align 8
  call void @282(%21* %190, i64 %191, i64 %192, i8* %193)
  %194 = load %21*, %21** %25, align 8
  %195 = bitcast %21* %194 to i8*
  call void @free(i8* %195) #11
  br label %196

; <label>:196:                                    ; preds = %189, %158
  call void @298()
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define internal void @284(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = call i32* @__errno_location() #15
  %6 = load i32, i32* %5, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  %10 = load i8*, i8** %4, align 8
  %11 = select i1 %9, i8* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @63, i32 0, i32 0)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @64, i32 0, i32 0), i8* %7, i8* %11)
  call void @exit(i32 2) #12
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal %0* @285(i8*, i8*) #1 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %0*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call %0* @343(i8* %6, i8* %7)
  store %0* %8, %0** %5, align 8
  %9 = load %0*, %0** %5, align 8
  %10 = icmp ne %0* %9, null
  br i1 %10, label %13, label %11

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %3, align 8
  call void @284(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @107, i32 0, i32 0), i8* %12) #14
  unreachable

; <label>:13:                                     ; preds = %2
  %14 = load %0*, %0** %5, align 8
  ret %0* %14
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @286(%0**, i64, i8**, i64, i64) #1 {
  %6 = alloca i64, align 8
  %7 = alloca %0**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %37, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %0** %0, %0*** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8** %2, i8*** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* %12, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %22

; <label>:22:                                     ; preds = %95, %5
  %23 = load i64, i64* %14, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %101

; <label>:26:                                     ; preds = %22
  %27 = load i64, i64* %14, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %37

; <label>:30:                                     ; preds = %26
  %31 = load %0**, %0*** %7, align 8
  %32 = load i64, i64* %14, align 8
  %33 = getelementptr inbounds %0*, %0** %31, i64 %32
  %34 = load %0*, %0** %33, align 8
  %35 = call i32 @fileno(%0* %34) #11
  %36 = call i32 @fstat(i32 %35, %37* %15) #11
  br label %52

; <label>:37:                                     ; preds = %26
  %38 = load i8**, i8*** %9, align 8
  %39 = load i64, i64* %14, align 8
  %40 = getelementptr inbounds i8*, i8** %38, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @46, i32 0, i32 0)) #13
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

; <label>:44:                                     ; preds = %37
  %45 = call i32 @fstat(i32 0, %37* %15) #11
  br label %52

; <label>:46:                                     ; preds = %37
  %47 = load i8**, i8*** %9, align 8
  %48 = load i64, i64* %14, align 8
  %49 = getelementptr inbounds i8*, i8** %47, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @stat(i8* %50, %37* %15) #11
  br label %52

; <label>:52:                                     ; preds = %44, %46, %30
  %53 = phi i32 [ %36, %30 ], [ %45, %44 ], [ %51, %46 ]
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

; <label>:55:                                     ; preds = %52
  %56 = load i8**, i8*** %9, align 8
  %57 = load i64, i64* %14, align 8
  %58 = getelementptr inbounds i8*, i8** %56, i64 %57
  %59 = load i8*, i8** %58, align 8
  call void @284(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @105, i32 0, i32 0), i8* %59) #14
  unreachable

; <label>:60:                                     ; preds = %52
  %61 = getelementptr inbounds %37, %37* %15, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, 61440
  %64 = icmp eq i32 %63, 32768
  br i1 %64, label %65, label %68

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds %37, %37* %15, i32 0, i32 8
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %16, align 8
  br label %69

; <label>:68:                                     ; preds = %60
  store i64 131072, i64* %16, align 8
  br label %69

; <label>:69:                                     ; preds = %68, %65
  %70 = load i64, i64* @106, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %77, label %72

; <label>:72:                                     ; preds = %69
  store i64 0, i64* @106, align 8
  %73 = load i64, i64* @106, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %77, label %75

; <label>:75:                                     ; preds = %72
  %76 = call i64 @342()
  store i64 %76, i64* @106, align 8
  br label %77

; <label>:77:                                     ; preds = %72, %75, %69
  %78 = load i64, i64* %16, align 8
  %79 = load i64, i64* %12, align 8
  %80 = mul i64 %78, %79
  %81 = add i64 %80, 1
  store i64 %81, i64* %17, align 8
  %82 = load i64, i64* %16, align 8
  %83 = load i64, i64* %17, align 8
  %84 = load i64, i64* %12, align 8
  %85 = udiv i64 %83, %84
  %86 = icmp ne i64 %82, %85
  br i1 %86, label %93, label %87

; <label>:87:                                     ; preds = %77
  %88 = load i64, i64* @106, align 8
  %89 = load i64, i64* %13, align 8
  %90 = sub i64 %88, %89
  %91 = load i64, i64* %17, align 8
  %92 = icmp ule i64 %90, %91
  br i1 %92, label %93, label %95

; <label>:93:                                     ; preds = %87, %77
  %94 = load i64, i64* @106, align 8
  store i64 %94, i64* %6, align 8
  br label %103

; <label>:95:                                     ; preds = %87
  %96 = load i64, i64* %17, align 8
  %97 = load i64, i64* %13, align 8
  %98 = add i64 %97, %96
  store i64 %98, i64* %13, align 8
  %99 = load i64, i64* %14, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %14, align 8
  br label %22

; <label>:101:                                    ; preds = %22
  %102 = load i64, i64* %13, align 8
  store i64 %102, i64* %6, align 8
  br label %103

; <label>:103:                                    ; preds = %101, %93
  %104 = load i64, i64* %6, align 8
  ret i64 %104
}

; Function Attrs: noinline nounwind uwtable
define internal void @287(%28*, i64, i64) #1 {
  %4 = alloca %28*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %28* %0, %28** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  br label %7

; <label>:7:                                      ; preds = %3, %29
  %8 = load i64, i64* %6, align 8
  %9 = urem i64 %8, 32
  %10 = sub i64 32, %9
  %11 = load i64, i64* %6, align 8
  %12 = add i64 %11, %10
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call noalias i8* @malloc(i64 %13) #11
  %15 = load %28*, %28** %4, align 8
  %16 = getelementptr inbounds %28, %28* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  %17 = load %28*, %28** %4, align 8
  %18 = getelementptr inbounds %28, %28* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %30, label %21

; <label>:21:                                     ; preds = %7
  %22 = load i64, i64* %6, align 8
  %23 = udiv i64 %22, 2
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %5, align 8
  %26 = add i64 %25, 1
  %27 = icmp ule i64 %24, %26
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %21
  call void @xalloc_die() #14
  unreachable

; <label>:29:                                     ; preds = %21
  br label %7

; <label>:30:                                     ; preds = %7
  %31 = load i64, i64* %5, align 8
  %32 = load %28*, %28** %4, align 8
  %33 = getelementptr inbounds %28, %28* %32, i32 0, i32 5
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load %28*, %28** %4, align 8
  %36 = getelementptr inbounds %28, %28* %35, i32 0, i32 3
  store i64 %34, i64* %36, align 8
  %37 = load %28*, %28** %4, align 8
  %38 = getelementptr inbounds %28, %28* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %28*, %28** %4, align 8
  %40 = getelementptr inbounds %28, %28* %39, i32 0, i32 4
  store i64 0, i64* %40, align 8
  %41 = load %28*, %28** %4, align 8
  %42 = getelementptr inbounds %28, %28* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %28*, %28** %4, align 8
  %44 = getelementptr inbounds %28, %28* %43, i32 0, i32 6
  store i8 0, i8* %44, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @288(%28*, %0*, i8*) #1 {
  %4 = alloca i1, align 1
  %5 = alloca %28*, align 8
  %6 = alloca %0*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %4*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %9*, align 8
  %14 = alloca %9*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  store %28* %0, %28** %5, align 8
  store %0* %1, %0** %6, align 8
  store i8* %2, i8** %7, align 8
  %22 = load %4*, %4** @53, align 8
  store %4* %22, %4** %8, align 8
  store i8 10, i8* %9, align 1
  %23 = load %28*, %28** %5, align 8
  %24 = getelementptr inbounds %28, %28* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* @103, align 8
  %27 = sub i64 %26, 34
  store i64 %27, i64* %11, align 8
  %28 = load %28*, %28** %5, align 8
  %29 = getelementptr inbounds %28, %28* %28, i32 0, i32 6
  %30 = load i8, i8* %29, align 8
  %31 = trunc i8 %30 to i1
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %3
  store i1 false, i1* %4, align 1
  br label %323

; <label>:33:                                     ; preds = %3
  %34 = load %28*, %28** %5, align 8
  %35 = getelementptr inbounds %28, %28* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %28*, %28** %5, align 8
  %38 = getelementptr inbounds %28, %28* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %67

; <label>:41:                                     ; preds = %33
  %42 = load %28*, %28** %5, align 8
  %43 = getelementptr inbounds %28, %28* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load %28*, %28** %5, align 8
  %46 = getelementptr inbounds %28, %28* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load %28*, %28** %5, align 8
  %49 = getelementptr inbounds %28, %28* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  %52 = load %28*, %28** %5, align 8
  %53 = getelementptr inbounds %28, %28* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = sub i64 0, %54
  %56 = getelementptr inbounds i8, i8* %51, i64 %55
  %57 = load %28*, %28** %5, align 8
  %58 = getelementptr inbounds %28, %28* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %44, i8* %56, i64 %59, i32 1, i1 false)
  %60 = load %28*, %28** %5, align 8
  %61 = getelementptr inbounds %28, %28* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = load %28*, %28** %5, align 8
  %64 = getelementptr inbounds %28, %28* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load %28*, %28** %5, align 8
  %66 = getelementptr inbounds %28, %28* %65, i32 0, i32 2
  store i64 0, i64* %66, align 8
  br label %67

; <label>:67:                                     ; preds = %41, %33
  br label %68

; <label>:68:                                     ; preds = %67, %308
  %69 = load %28*, %28** %5, align 8
  %70 = getelementptr inbounds %28, %28* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load %28*, %28** %5, align 8
  %73 = getelementptr inbounds %28, %28* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  store i8* %75, i8** %12, align 8
  %76 = load %28*, %28** %5, align 8
  %77 = call %9* @289(%28* %76)
  store %9* %77, %9** %13, align 8
  %78 = load %9*, %9** %13, align 8
  %79 = load %28*, %28** %5, align 8
  %80 = getelementptr inbounds %28, %28* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = sub i64 0, %81
  %83 = getelementptr inbounds %9, %9* %78, i64 %82
  store %9* %83, %9** %14, align 8
  %84 = load %9*, %9** %13, align 8
  %85 = bitcast %9* %84 to i8*
  %86 = load %28*, %28** %5, align 8
  %87 = getelementptr inbounds %28, %28* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %10, align 8
  %90 = mul i64 %88, %89
  %91 = sub i64 0, %90
  %92 = getelementptr inbounds i8, i8* %85, i64 %91
  %93 = load i8*, i8** %12, align 8
  %94 = ptrtoint i8* %92 to i64
  %95 = ptrtoint i8* %93 to i64
  %96 = sub i64 %94, %95
  store i64 %96, i64* %15, align 8
  %97 = load %28*, %28** %5, align 8
  %98 = getelementptr inbounds %28, %28* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %109

; <label>:101:                                    ; preds = %68
  %102 = load %9*, %9** %14, align 8
  %103 = getelementptr inbounds %9, %9* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load %9*, %9** %14, align 8
  %106 = getelementptr inbounds %9, %9* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  br label %113

; <label>:109:                                    ; preds = %68
  %110 = load %28*, %28** %5, align 8
  %111 = getelementptr inbounds %28, %28* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  br label %113

; <label>:113:                                    ; preds = %109, %101
  %114 = phi i8* [ %108, %101 ], [ %112, %109 ]
  store i8* %114, i8** %16, align 8
  br label %115

; <label>:115:                                    ; preds = %274, %113
  %116 = load i64, i64* %10, align 8
  %117 = add i64 %116, 1
  %118 = load i64, i64* %15, align 8
  %119 = icmp ult i64 %117, %118
  br i1 %119, label %120, label %275

; <label>:120:                                    ; preds = %115
  %121 = load i64, i64* %15, align 8
  %122 = sub i64 %121, 1
  %123 = load i64, i64* %10, align 8
  %124 = add i64 %123, 1
  %125 = udiv i64 %122, %124
  store i64 %125, i64* %17, align 8
  %126 = load i8*, i8** %12, align 8
  %127 = load i64, i64* %17, align 8
  %128 = load %0*, %0** %6, align 8
  %129 = call i64 @fread_unlocked(i8* %126, i64 1, i64 %127, %0* %128)
  store i64 %129, i64* %18, align 8
  %130 = load i8*, i8** %12, align 8
  %131 = load i64, i64* %18, align 8
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  store i8* %132, i8** %19, align 8
  %133 = load i64, i64* %18, align 8
  %134 = load i64, i64* %15, align 8
  %135 = sub i64 %134, %133
  store i64 %135, i64* %15, align 8
  %136 = load i64, i64* %18, align 8
  %137 = load i64, i64* %17, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %174

; <label>:139:                                    ; preds = %120
  %140 = load %0*, %0** %6, align 8
  %141 = call i32 @ferror_unlocked(%0* %140) #11
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

; <label>:143:                                    ; preds = %139
  %144 = load i8*, i8** %7, align 8
  call void @284(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @104, i32 0, i32 0), i8* %144) #14
  unreachable

; <label>:145:                                    ; preds = %139
  %146 = load %0*, %0** %6, align 8
  %147 = call i32 @feof_unlocked(%0* %146) #11
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %174

; <label>:149:                                    ; preds = %145
  %150 = load %28*, %28** %5, align 8
  %151 = getelementptr inbounds %28, %28* %150, i32 0, i32 6
  store i8 1, i8* %151, align 8
  %152 = load %28*, %28** %5, align 8
  %153 = getelementptr inbounds %28, %28* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = load i8*, i8** %19, align 8
  %156 = icmp eq i8* %154, %155
  br i1 %156, label %157, label %158

; <label>:157:                                    ; preds = %149
  store i1 false, i1* %4, align 1
  br label %323

; <label>:158:                                    ; preds = %149
  %159 = load i8*, i8** %16, align 8
  %160 = load i8*, i8** %19, align 8
  %161 = icmp ne i8* %159, %160
  br i1 %161, label %162, label %174

; <label>:162:                                    ; preds = %158
  %163 = load i8*, i8** %19, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 -1
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = load i8, i8* %9, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp ne i32 %166, %168
  br i1 %169, label %170, label %174

; <label>:170:                                    ; preds = %162
  %171 = load i8, i8* %9, align 1
  %172 = load i8*, i8** %19, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %19, align 8
  store i8 %171, i8* %172, align 1
  br label %174

; <label>:174:                                    ; preds = %145, %170, %162, %158, %120
  br label %175

; <label>:175:                                    ; preds = %266, %174
  %176 = load i8*, i8** %12, align 8
  %177 = load i8, i8* %9, align 1
  %178 = sext i8 %177 to i32
  %179 = load i8*, i8** %19, align 8
  %180 = load i8*, i8** %12, align 8
  %181 = ptrtoint i8* %179 to i64
  %182 = ptrtoint i8* %180 to i64
  %183 = sub i64 %181, %182
  %184 = call i8* @memchr(i8* %176, i32 %178, i64 %183) #13
  store i8* %184, i8** %20, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %186, label %268

; <label>:186:                                    ; preds = %175
  %187 = load i8*, i8** %20, align 8
  store i8 0, i8* %187, align 1
  %188 = load i8*, i8** %20, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 1
  store i8* %189, i8** %12, align 8
  %190 = load %9*, %9** %14, align 8
  %191 = getelementptr inbounds %9, %9* %190, i32 -1
  store %9* %191, %9** %14, align 8
  %192 = load i8*, i8** %16, align 8
  %193 = load %9*, %9** %14, align 8
  %194 = getelementptr inbounds %9, %9* %193, i32 0, i32 0
  store i8* %192, i8** %194, align 8
  %195 = load i8*, i8** %12, align 8
  %196 = load i8*, i8** %16, align 8
  %197 = ptrtoint i8* %195 to i64
  %198 = ptrtoint i8* %196 to i64
  %199 = sub i64 %197, %198
  %200 = load %9*, %9** %14, align 8
  %201 = getelementptr inbounds %9, %9* %200, i32 0, i32 1
  store i64 %199, i64* %201, align 8
  %202 = load i64, i64* %11, align 8
  %203 = load %9*, %9** %14, align 8
  %204 = getelementptr inbounds %9, %9* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = icmp ugt i64 %202, %205
  br i1 %206, label %207, label %209

; <label>:207:                                    ; preds = %186
  %208 = load i64, i64* %11, align 8
  br label %213

; <label>:209:                                    ; preds = %186
  %210 = load %9*, %9** %14, align 8
  %211 = getelementptr inbounds %9, %9* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  br label %213

; <label>:213:                                    ; preds = %209, %207
  %214 = phi i64 [ %208, %207 ], [ %212, %209 ]
  store i64 %214, i64* %11, align 8
  %215 = load i64, i64* %10, align 8
  %216 = load i64, i64* %15, align 8
  %217 = sub i64 %216, %215
  store i64 %217, i64* %15, align 8
  %218 = load %4*, %4** %8, align 8
  %219 = icmp ne %4* %218, null
  br i1 %219, label %220, label %266

; <label>:220:                                    ; preds = %213
  %221 = load %4*, %4** %8, align 8
  %222 = getelementptr inbounds %4, %4* %221, i32 0, i32 2
  %223 = load i64, i64* %222, align 8
  %224 = icmp eq i64 %223, -1
  br i1 %224, label %225, label %227

; <label>:225:                                    ; preds = %220
  %226 = load i8*, i8** %20, align 8
  br label %231

; <label>:227:                                    ; preds = %220
  %228 = load %9*, %9** %14, align 8
  %229 = load %4*, %4** %8, align 8
  %230 = call i8* @305(%9* %228, %4* %229)
  br label %231

; <label>:231:                                    ; preds = %227, %225
  %232 = phi i8* [ %226, %225 ], [ %230, %227 ]
  %233 = load %9*, %9** %14, align 8
  %234 = getelementptr inbounds %9, %9* %233, i32 0, i32 3
  store i8* %232, i8** %234, align 8
  %235 = load %4*, %4** %8, align 8
  %236 = getelementptr inbounds %4, %4* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, -1
  br i1 %238, label %239, label %245

; <label>:239:                                    ; preds = %231
  %240 = load %9*, %9** %14, align 8
  %241 = load %4*, %4** %8, align 8
  %242 = call i8* @304(%9* %240, %4* %241)
  %243 = load %9*, %9** %14, align 8
  %244 = getelementptr inbounds %9, %9* %243, i32 0, i32 2
  store i8* %242, i8** %244, align 8
  br label %266

; <label>:245:                                    ; preds = %231
  %246 = load %4*, %4** %8, align 8
  %247 = getelementptr inbounds %4, %4* %246, i32 0, i32 6
  %248 = load i8, i8* %247, align 8
  %249 = trunc i8 %248 to i1
  br i1 %249, label %250, label %262

; <label>:250:                                    ; preds = %245
  br label %251

; <label>:251:                                    ; preds = %259, %250
  %252 = load i8*, i8** %16, align 8
  %253 = load i8, i8* %252, align 1
  %254 = call zeroext i8 @270(i8 signext %253)
  %255 = zext i8 %254 to i64
  %256 = getelementptr inbounds [256 x i8], [256 x i8]* @73, i64 0, i64 %255
  %257 = load i8, i8* %256, align 1
  %258 = trunc i8 %257 to i1
  br i1 %258, label %259, label %262

; <label>:259:                                    ; preds = %251
  %260 = load i8*, i8** %16, align 8
  %261 = getelementptr inbounds i8, i8* %260, i32 1
  store i8* %261, i8** %16, align 8
  br label %251

; <label>:262:                                    ; preds = %251, %245
  %263 = load i8*, i8** %16, align 8
  %264 = load %9*, %9** %14, align 8
  %265 = getelementptr inbounds %9, %9* %264, i32 0, i32 2
  store i8* %263, i8** %265, align 8
  br label %266

; <label>:266:                                    ; preds = %239, %262, %213
  %267 = load i8*, i8** %12, align 8
  store i8* %267, i8** %16, align 8
  br label %175

; <label>:268:                                    ; preds = %175
  %269 = load i8*, i8** %19, align 8
  store i8* %269, i8** %12, align 8
  %270 = load %28*, %28** %5, align 8
  %271 = getelementptr inbounds %28, %28* %270, i32 0, i32 6
  %272 = load i8, i8* %271, align 8
  %273 = trunc i8 %272 to i1
  br i1 %273, label %275, label %274

; <label>:274:                                    ; preds = %268
  br label %115

; <label>:275:                                    ; preds = %268, %115
  %276 = load i8*, i8** %12, align 8
  %277 = load %28*, %28** %5, align 8
  %278 = getelementptr inbounds %28, %28* %277, i32 0, i32 0
  %279 = load i8*, i8** %278, align 8
  %280 = ptrtoint i8* %276 to i64
  %281 = ptrtoint i8* %279 to i64
  %282 = sub i64 %280, %281
  %283 = load %28*, %28** %5, align 8
  %284 = getelementptr inbounds %28, %28* %283, i32 0, i32 1
  store i64 %282, i64* %284, align 8
  %285 = load %28*, %28** %5, align 8
  %286 = call %9* @289(%28* %285)
  %287 = load %9*, %9** %14, align 8
  %288 = ptrtoint %9* %286 to i64
  %289 = ptrtoint %9* %287 to i64
  %290 = sub i64 %288, %289
  %291 = sdiv exact i64 %290, 32
  %292 = load %28*, %28** %5, align 8
  %293 = getelementptr inbounds %28, %28* %292, i32 0, i32 2
  store i64 %291, i64* %293, align 8
  %294 = load %28*, %28** %5, align 8
  %295 = getelementptr inbounds %28, %28* %294, i32 0, i32 2
  %296 = load i64, i64* %295, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %308

; <label>:298:                                    ; preds = %275
  %299 = load i8*, i8** %12, align 8
  %300 = load i8*, i8** %16, align 8
  %301 = ptrtoint i8* %299 to i64
  %302 = ptrtoint i8* %300 to i64
  %303 = sub i64 %301, %302
  %304 = load %28*, %28** %5, align 8
  %305 = getelementptr inbounds %28, %28* %304, i32 0, i32 4
  store i64 %303, i64* %305, align 8
  %306 = load i64, i64* %11, align 8
  %307 = add i64 %306, 34
  store i64 %307, i64* @103, align 8
  store i1 true, i1* %4, align 1
  br label %323

; <label>:308:                                    ; preds = %275
  %309 = load %28*, %28** %5, align 8
  %310 = getelementptr inbounds %28, %28* %309, i32 0, i32 3
  %311 = load i64, i64* %310, align 8
  %312 = udiv i64 %311, 32
  store i64 %312, i64* %21, align 8
  %313 = load %28*, %28** %5, align 8
  %314 = getelementptr inbounds %28, %28* %313, i32 0, i32 0
  %315 = load i8*, i8** %314, align 8
  %316 = call i8* @x2nrealloc(i8* %315, i64* %21, i64 32)
  %317 = load %28*, %28** %5, align 8
  %318 = getelementptr inbounds %28, %28* %317, i32 0, i32 0
  store i8* %316, i8** %318, align 8
  %319 = load i64, i64* %21, align 8
  %320 = mul i64 %319, 32
  %321 = load %28*, %28** %5, align 8
  %322 = getelementptr inbounds %28, %28* %321, i32 0, i32 3
  store i64 %320, i64* %322, align 8
  br label %68

; <label>:323:                                    ; preds = %298, %157, %32
  %324 = load i1, i1* %4, align 1
  ret i1 %324
}

; Function Attrs: noinline nounwind uwtable
define internal %9* @289(%28*) #1 {
  %2 = alloca %28*, align 8
  store %28* %0, %28** %2, align 8
  %3 = load %28*, %28** %2, align 8
  %4 = getelementptr inbounds %28, %28* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = load %28*, %28** %2, align 8
  %7 = getelementptr inbounds %28, %28* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds i8, i8* %5, i64 %8
  %10 = bitcast i8* %9 to %9*
  ret %9* %10
}

; Function Attrs: noinline nounwind uwtable
define internal void @290(%0*, i8*) #1 {
  %3 = alloca %0*, align 8
  %4 = alloca i8*, align 8
  store %0* %0, %0** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %0*, %0** %3, align 8
  %6 = call i32 @fileno(%0* %5) #11
  switch i32 %6, label %19 [
    i32 0, label %7
    i32 1, label %13
  ]

; <label>:7:                                      ; preds = %2
  %8 = load %0*, %0** %3, align 8
  %9 = call i32 @feof_unlocked(%0* %8) #11
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %25

; <label>:11:                                     ; preds = %7
  %12 = load %0*, %0** %3, align 8
  call void @clearerr_unlocked(%0* %12) #11
  br label %25

; <label>:13:                                     ; preds = %2
  %14 = load %0*, %0** %3, align 8
  %15 = call i32 @fflush_unlocked(%0* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

; <label>:17:                                     ; preds = %13
  %18 = load i8*, i8** %4, align 8
  call void @284(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @102, i32 0, i32 0), i8* %18) #14
  unreachable

; <label>:19:                                     ; preds = %2
  %20 = load %0*, %0** %3, align 8
  %21 = call i32 @rpl_fclose(%0* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

; <label>:23:                                     ; preds = %19
  %24 = load i8*, i8** %4, align 8
  call void @284(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @62, i32 0, i32 0), i8* %24) #14
  unreachable

; <label>:25:                                     ; preds = %19, %13, %7, %11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal %5* @291(%0**) #1 {
  %2 = alloca %0**, align 8
  store %0** %0, %0*** %2, align 8
  %3 = load %0**, %0*** %2, align 8
  %4 = call %5* @331(%0** %3, i1 zeroext false)
  ret %5* %4
}

; Function Attrs: noinline nounwind uwtable
define internal void @292(%29*, i64) #1 {
  %3 = alloca %29*, align 8
  %4 = alloca i64, align 8
  store %29* %0, %29** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = mul i64 2, %5
  %7 = call %30* @heap_alloc(i32 (i8*, i8*)* @330, i64 %6)
  %8 = load %29*, %29** %3, align 8
  %9 = getelementptr inbounds %29, %29* %8, i32 0, i32 0
  store %30* %7, %30** %9, align 8
  %10 = load %29*, %29** %3, align 8
  %11 = getelementptr inbounds %29, %29* %10, i32 0, i32 1
  %12 = call i32 @pthread_mutex_init(%31* %11, %39* null) #11
  %13 = load %29*, %29** %3, align 8
  %14 = getelementptr inbounds %29, %29* %13, i32 0, i32 2
  %15 = call i32 @pthread_cond_init(%34* %14, %39* null) #11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal %36* @293(i64, i64, %9*) #1 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %9*, align 8
  %7 = alloca %36*, align 8
  %8 = alloca %36*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %9* %2, %9** %6, align 8
  %9 = load i64, i64* %4, align 8
  %10 = mul i64 256, %9
  %11 = call noalias i8* @xmalloc(i64 %10)
  %12 = bitcast i8* %11 to %36*
  store %36* %12, %36** %7, align 8
  %13 = load %36*, %36** %7, align 8
  store %36* %13, %36** %8, align 8
  %14 = load %36*, %36** %8, align 8
  %15 = getelementptr inbounds %36, %36* %14, i32 0, i32 3
  store %9* null, %9** %15, align 8
  %16 = load %36*, %36** %8, align 8
  %17 = getelementptr inbounds %36, %36* %16, i32 0, i32 2
  store %9* null, %9** %17, align 8
  %18 = load %36*, %36** %8, align 8
  %19 = getelementptr inbounds %36, %36* %18, i32 0, i32 1
  store %9* null, %9** %19, align 8
  %20 = load %36*, %36** %8, align 8
  %21 = getelementptr inbounds %36, %36* %20, i32 0, i32 0
  store %9* null, %9** %21, align 8
  %22 = load %36*, %36** %8, align 8
  %23 = getelementptr inbounds %36, %36* %22, i32 0, i32 4
  store %9** null, %9*** %23, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load %36*, %36** %8, align 8
  %26 = getelementptr inbounds %36, %36* %25, i32 0, i32 6
  store i64 %24, i64* %26, align 8
  %27 = load %36*, %36** %8, align 8
  %28 = getelementptr inbounds %36, %36* %27, i32 0, i32 5
  store i64 %24, i64* %28, align 8
  %29 = load %36*, %36** %8, align 8
  %30 = getelementptr inbounds %36, %36* %29, i32 0, i32 7
  store %36* null, %36** %30, align 8
  %31 = load %36*, %36** %8, align 8
  %32 = getelementptr inbounds %36, %36* %31, i32 0, i32 10
  store i32 0, i32* %32, align 8
  %33 = load %36*, %36** %8, align 8
  %34 = getelementptr inbounds %36, %36* %33, i32 0, i32 11
  store i8 0, i8* %34, align 4
  %35 = load %36*, %36** %8, align 8
  %36 = getelementptr inbounds %36, %36* %35, i32 0, i32 12
  %37 = call i32 @pthread_mutex_init(%31* %36, %39* null) #11
  %38 = load %36*, %36** %8, align 8
  %39 = load %36*, %36** %8, align 8
  %40 = getelementptr inbounds %36, %36* %39, i64 1
  %41 = load %9*, %9** %6, align 8
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call %36* @329(%36* %38, %36* %40, %9* %41, i64 %42, i64 %43, i1 zeroext false)
  %45 = load %36*, %36** %7, align 8
  ret %36* %45
}

; Function Attrs: noinline nounwind uwtable
define internal void @294(%9* noalias, i64, i64, %36*, %29*, %0*, i8*) #1 {
  %8 = alloca %9*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %36*, align 8
  %12 = alloca %29*, align 8
  %13 = alloca %0*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %40, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %9*, align 8
  store %9* %0, %9** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store %36* %3, %36** %11, align 8
  store %29* %4, %29** %12, align 8
  store %0* %5, %0** %13, align 8
  store i8* %6, i8** %14, align 8
  %23 = load %36*, %36** %11, align 8
  %24 = getelementptr inbounds %36, %36* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = load %36*, %36** %11, align 8
  %27 = getelementptr inbounds %36, %36* %26, i32 0, i32 6
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %25, %28
  store i64 %29, i64* %15, align 8
  %30 = load i64, i64* %9, align 8
  %31 = udiv i64 %30, 2
  store i64 %31, i64* %16, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %16, align 8
  %34 = sub i64 %32, %33
  store i64 %34, i64* %17, align 8
  %35 = getelementptr inbounds %40, %40* %19, i32 0, i32 0
  %36 = load %9*, %9** %8, align 8
  store %9* %36, %9** %35, align 8
  %37 = getelementptr inbounds %40, %40* %19, i32 0, i32 1
  %38 = load i64, i64* %16, align 8
  store i64 %38, i64* %37, align 8
  %39 = getelementptr inbounds %40, %40* %19, i32 0, i32 2
  %40 = load i64, i64* %10, align 8
  store i64 %40, i64* %39, align 8
  %41 = getelementptr inbounds %40, %40* %19, i32 0, i32 3
  %42 = load %36*, %36** %11, align 8
  %43 = getelementptr inbounds %36, %36* %42, i32 0, i32 8
  %44 = load %36*, %36** %43, align 8
  store %36* %44, %36** %41, align 8
  %45 = getelementptr inbounds %40, %40* %19, i32 0, i32 4
  %46 = load %29*, %29** %12, align 8
  store %29* %46, %29** %45, align 8
  %47 = getelementptr inbounds %40, %40* %19, i32 0, i32 5
  %48 = load %0*, %0** %13, align 8
  store %0* %48, %0** %47, align 8
  %49 = getelementptr inbounds %40, %40* %19, i32 0, i32 6
  %50 = load i8*, i8** %14, align 8
  store i8* %50, i8** %49, align 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp ugt i64 %51, 1
  %53 = load i64, i64* %15, align 8
  %54 = icmp ule i64 131072, %53
  %or.cond = and i1 %52, %54
  br i1 %or.cond, label %55, label %76

; <label>:55:                                     ; preds = %7
  %56 = bitcast %40* %19 to i8*
  %57 = call i32 @pthread_create(i64* %18, %41* null, i8* (i8*)* @318, i8* %56) #11
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %76

; <label>:59:                                     ; preds = %55
  %60 = load %9*, %9** %8, align 8
  %61 = load %36*, %36** %11, align 8
  %62 = getelementptr inbounds %36, %36* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = sub i64 0, %63
  %65 = getelementptr inbounds %9, %9* %60, i64 %64
  %66 = load i64, i64* %17, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load %36*, %36** %11, align 8
  %69 = getelementptr inbounds %36, %36* %68, i32 0, i32 9
  %70 = load %36*, %36** %69, align 8
  %71 = load %29*, %29** %12, align 8
  %72 = load %0*, %0** %13, align 8
  %73 = load i8*, i8** %14, align 8
  call void @294(%9* %65, i64 %66, i64 %67, %36* %70, %29* %71, %0* %72, i8* %73)
  %74 = load i64, i64* %18, align 8
  %75 = call i32 @pthread_join(i64 %74, i8** null)
  br label %138

; <label>:76:                                     ; preds = %55, %7
  %77 = load %36*, %36** %11, align 8
  %78 = getelementptr inbounds %36, %36* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %20, align 8
  %80 = load %36*, %36** %11, align 8
  %81 = getelementptr inbounds %36, %36* %80, i32 0, i32 6
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %21, align 8
  %83 = load %9*, %9** %8, align 8
  %84 = load i64, i64* %10, align 8
  %85 = sub i64 0, %84
  %86 = getelementptr inbounds %9, %9* %83, i64 %85
  store %9* %86, %9** %22, align 8
  %87 = load i64, i64* %21, align 8
  %88 = icmp ult i64 1, %87
  br i1 %88, label %89, label %100

; <label>:89:                                     ; preds = %76
  %90 = load %9*, %9** %8, align 8
  %91 = load i64, i64* %20, align 8
  %92 = sub i64 0, %91
  %93 = getelementptr inbounds %9, %9* %90, i64 %92
  %94 = load i64, i64* %21, align 8
  %95 = load %9*, %9** %22, align 8
  %96 = load i64, i64* %20, align 8
  %97 = udiv i64 %96, 2
  %98 = sub i64 0, %97
  %99 = getelementptr inbounds %9, %9* %95, i64 %98
  call void @319(%9* %93, i64 %94, %9* %99, i1 zeroext false)
  br label %100

; <label>:100:                                    ; preds = %89, %76
  %101 = load i64, i64* %20, align 8
  %102 = icmp ult i64 1, %101
  br i1 %102, label %103, label %107

; <label>:103:                                    ; preds = %100
  %104 = load %9*, %9** %8, align 8
  %105 = load i64, i64* %20, align 8
  %106 = load %9*, %9** %22, align 8
  call void @319(%9* %104, i64 %105, %9* %106, i1 zeroext false)
  br label %107

; <label>:107:                                    ; preds = %103, %100
  %108 = load %9*, %9** %8, align 8
  %109 = load %36*, %36** %11, align 8
  %110 = getelementptr inbounds %36, %36* %109, i32 0, i32 0
  store %9* %108, %9** %110, align 8
  %111 = load %9*, %9** %8, align 8
  %112 = load i64, i64* %20, align 8
  %113 = sub i64 0, %112
  %114 = getelementptr inbounds %9, %9* %111, i64 %113
  %115 = load %36*, %36** %11, align 8
  %116 = getelementptr inbounds %36, %36* %115, i32 0, i32 1
  store %9* %114, %9** %116, align 8
  %117 = load %9*, %9** %8, align 8
  %118 = load i64, i64* %20, align 8
  %119 = sub i64 0, %118
  %120 = getelementptr inbounds %9, %9* %117, i64 %119
  %121 = load %36*, %36** %11, align 8
  %122 = getelementptr inbounds %36, %36* %121, i32 0, i32 2
  store %9* %120, %9** %122, align 8
  %123 = load %9*, %9** %8, align 8
  %124 = load i64, i64* %20, align 8
  %125 = sub i64 0, %124
  %126 = getelementptr inbounds %9, %9* %123, i64 %125
  %127 = load i64, i64* %21, align 8
  %128 = sub i64 0, %127
  %129 = getelementptr inbounds %9, %9* %126, i64 %128
  %130 = load %36*, %36** %11, align 8
  %131 = getelementptr inbounds %36, %36* %130, i32 0, i32 3
  store %9* %129, %9** %131, align 8
  %132 = load %29*, %29** %12, align 8
  %133 = load %36*, %36** %11, align 8
  call void @320(%29* %132, %36* %133)
  %134 = load %29*, %29** %12, align 8
  %135 = load i64, i64* %10, align 8
  %136 = load %0*, %0** %13, align 8
  %137 = load i8*, i8** %14, align 8
  call void @321(%29* %134, i64 %135, %0* %136, i8* %137)
  br label %138

; <label>:138:                                    ; preds = %107, %59
  %139 = load %36*, %36** %11, align 8
  %140 = getelementptr inbounds %36, %36* %139, i32 0, i32 12
  %141 = call i32 @pthread_mutex_destroy(%31* %140) #11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @295(%29*) #1 {
  %2 = alloca %29*, align 8
  store %29* %0, %29** %2, align 8
  %3 = load %29*, %29** %2, align 8
  %4 = getelementptr inbounds %29, %29* %3, i32 0, i32 0
  %5 = load %30*, %30** %4, align 8
  call void @heap_free(%30* %5)
  %6 = load %29*, %29** %2, align 8
  %7 = getelementptr inbounds %29, %29* %6, i32 0, i32 2
  %8 = call i32 @pthread_cond_destroy(%34* %7) #11
  %9 = load %29*, %29** %2, align 8
  %10 = getelementptr inbounds %29, %29* %9, i32 0, i32 1
  %11 = call i32 @pthread_mutex_destroy(%31* %10) #11
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(%31*) #4

; Function Attrs: noinline nounwind uwtable
define internal void @296(%36*) #1 {
  %2 = alloca %36*, align 8
  store %36* %0, %36** %2, align 8
  %3 = load %36*, %36** %2, align 8
  %4 = bitcast %36* %3 to i8*
  call void @free(i8* %4) #11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @297(%9*, %0*, i8*) #1 {
  %4 = alloca %9*, align 8
  %5 = alloca %0*, align 8
  %6 = alloca i8*, align 8
  store %9* %0, %9** %4, align 8
  store %0* %1, %0** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** getelementptr inbounds (%9, %9* @71, i32 0, i32 0), align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %13

; <label>:9:                                      ; preds = %3
  %10 = load %9*, %9** %4, align 8
  %11 = call i32 @301(%9* %10, %9* @71)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

; <label>:13:                                     ; preds = %9, %3
  %14 = load %9*, %9** %4, align 8
  %15 = bitcast %9* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%9* @71 to i8*), i8* %15, i64 32, i32 8, i1 false)
  %16 = load %9*, %9** %4, align 8
  %17 = load %0*, %0** %5, align 8
  %18 = load i8*, i8** %6, align 8
  call void @302(%9* %16, %0* %17, i8* %18)
  br label %19

; <label>:19:                                     ; preds = %9, %13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @298() #1 {
  br label %1

; <label>:1:                                      ; preds = %4, %0
  %2 = load i32, i32* @67, align 4
  %3 = icmp slt i32 0, %2
  br i1 %3, label %4, label %6

; <label>:4:                                      ; preds = %1
  %5 = call i32 @299(i32 -1)
  br label %1

; <label>:6:                                      ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @299(i32) #1 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  %7 = load i32, i32* %2, align 4
  %8 = select i1 %6, i32 %7, i32 -1
  %9 = load i32, i32* %2, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 0, i32 1
  %13 = call i32 @waitpid(i32 %8, i32* %3, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %20

; <label>:16:                                     ; preds = %1
  %17 = call i32* @__errno_location() #15
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** @41, align 8
  call void (i32, i32, i8*, ...) @error(i32 2, i32 %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @68, i32 0, i32 0), i8* %19)
  br label %43

; <label>:20:                                     ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 0, %21
  br i1 %22, label %23, label %43

; <label>:23:                                     ; preds = %20
  %24 = load i32, i32* %2, align 4
  %25 = icmp slt i32 0, %24
  br i1 %25, label %29, label %26

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = call zeroext i1 @300(i32 %27)
  br i1 %28, label %29, label %43

; <label>:29:                                     ; preds = %26, %23
  %30 = load i32, i32* %3, align 4
  %31 = and i32 %30, 127
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

; <label>:33:                                     ; preds = %29
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, 65280
  %36 = ashr i32 %35, 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

; <label>:38:                                     ; preds = %33, %29
  %39 = load i8*, i8** @41, align 8
  call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @69, i32 0, i32 0), i8* %39)
  br label %40

; <label>:40:                                     ; preds = %38, %33
  %41 = load i32, i32* @67, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* @67, align 4
  br label %43

; <label>:43:                                     ; preds = %20, %26, %40, %16
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare i32 @waitpid(i32, i32*, i32) #2

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @300(i32) #1 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca %5, align 8
  %5 = alloca %5*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = getelementptr inbounds %5, %5* %4, i32 0, i32 1
  store i32 %6, i32* %7, align 8
  %8 = load %6*, %6** @70, align 8
  %9 = bitcast %5* %4 to i8*
  %10 = call i8* @hash_delete(%6* %8, i8* %9)
  %11 = bitcast i8* %10 to %5*
  store %5* %11, %5** %5, align 8
  %12 = load %5*, %5** %5, align 8
  %13 = icmp ne %5* %12, null
  br i1 %13, label %15, label %14

; <label>:14:                                     ; preds = %1
  store i1 false, i1* %2, align 1
  br label %18

; <label>:15:                                     ; preds = %1
  %16 = load %5*, %5** %5, align 8
  %17 = getelementptr inbounds %5, %5* %16, i32 0, i32 2
  store i8 2, i8* %17, align 4
  store i1 true, i1* %2, align 1
  br label %18

; <label>:18:                                     ; preds = %15, %14
  %19 = load i1, i1* %2, align 1
  ret i1 %19
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @301(%9*, %9*) #1 {
  %3 = alloca i32, align 4
  %4 = alloca %9*, align 8
  %5 = alloca %9*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %9* %0, %9** %4, align 8
  store %9* %1, %9** %5, align 8
  %9 = load %4*, %4** @53, align 8
  %10 = icmp ne %4* %9, null
  %11 = load %9*, %9** %4, align 8
  br i1 %10, label %12, label %18

; <label>:12:                                     ; preds = %2
  %13 = load %9*, %9** %5, align 8
  %14 = call i32 @310(%9* %11, %9* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %50

; <label>:18:                                     ; preds = %2
  %19 = getelementptr inbounds %9, %9* %11, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = sub i64 %20, 1
  store i64 %21, i64* %7, align 8
  %22 = load %9*, %9** %5, align 8
  %23 = getelementptr inbounds %9, %9* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = sub i64 %24, 1
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp eq i64 %26, 0
  %28 = load i64, i64* %8, align 8
  br i1 %27, label %29, label %33

; <label>:29:                                     ; preds = %18
  %30 = icmp ne i64 %28, 0
  %31 = zext i1 %30 to i32
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %48

; <label>:33:                                     ; preds = %18
  %34 = icmp eq i64 %28, 0
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %33
  store i32 1, i32* %6, align 4
  br label %48

; <label>:36:                                     ; preds = %33
  %37 = load %9*, %9** %4, align 8
  %38 = getelementptr inbounds %9, %9* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %40, 1
  %42 = load %9*, %9** %5, align 8
  %43 = getelementptr inbounds %9, %9* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = add i64 %45, 1
  %47 = call i32 @xmemcoll0(i8* %39, i64 %41, i8* %44, i64 %46)
  store i32 %47, i32* %6, align 4
  br label %48

; <label>:48:                                     ; preds = %29, %36, %35
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %50

; <label>:50:                                     ; preds = %48, %12
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

; Function Attrs: noinline nounwind uwtable
define internal void @302(%9*, %0*, i8*) #1 {
  %4 = alloca %9*, align 8
  %5 = alloca %0*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  store %9* %0, %9** %4, align 8
  store %0* %1, %0** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %9*, %9** %4, align 8
  %13 = getelementptr inbounds %9, %9* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %7, align 8
  %15 = load %9*, %9** %4, align 8
  %16 = getelementptr inbounds %9, %9* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  %23 = load i8*, i8** %9, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 -1
  store i8 10, i8* %24, align 1
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load %0*, %0** %5, align 8
  %28 = call i64 @fwrite_unlocked(i8* %25, i64 1, i64 %26, %0* %27)
  %29 = load i64, i64* %8, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

; <label>:31:                                     ; preds = %3
  %32 = load i8*, i8** %6, align 8
  call void @284(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @72, i32 0, i32 0), i8* %32) #14
  unreachable

; <label>:33:                                     ; preds = %3
  %34 = load i8*, i8** %9, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 -1
  store i8 0, i8* %35, align 1
  ret void
}

declare i64 @fwrite_unlocked(i8*, i64, i64, %0*) #2

; Function Attrs: noinline nounwind uwtable
define internal void @303(%9*, %4*) #1 {
  %3 = alloca %9*, align 8
  %4 = alloca %4*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca x86_fp80, align 16
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %9* %0, %9** %3, align 8
  store %4* %1, %4** %4, align 8
  %16 = load %9*, %9** %3, align 8
  %17 = getelementptr inbounds %9, %9* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load %9*, %9** %3, align 8
  %22 = getelementptr inbounds %9, %9* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  %25 = getelementptr inbounds i8, i8* %24, i64 -1
  store i8* %25, i8** %7, align 8
  %26 = load %4*, %4** %4, align 8
  %27 = icmp ne %4* %26, null
  br i1 %27, label %28, label %177

; <label>:28:                                     ; preds = %2
  %29 = load %4*, %4** %4, align 8
  %30 = getelementptr inbounds %4, %4* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, -1
  br i1 %32, label %33, label %37

; <label>:33:                                     ; preds = %28
  %34 = load %9*, %9** %3, align 8
  %35 = load %4*, %4** %4, align 8
  %36 = call i8* @304(%9* %34, %4* %35)
  store i8* %36, i8** %6, align 8
  br label %37

; <label>:37:                                     ; preds = %33, %28
  %38 = load %4*, %4** %4, align 8
  %39 = getelementptr inbounds %4, %4* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, -1
  br i1 %41, label %42, label %46

; <label>:42:                                     ; preds = %37
  %43 = load %9*, %9** %3, align 8
  %44 = load %4*, %4** %4, align 8
  %45 = call i8* @305(%9* %43, %4* %44)
  store i8* %45, i8** %7, align 8
  br label %46

; <label>:46:                                     ; preds = %42, %37
  %47 = load %4*, %4** %4, align 8
  %48 = getelementptr inbounds %4, %4* %47, i32 0, i32 6
  %49 = load i8, i8* %48, align 8
  %50 = trunc i8 %49 to i1
  br i1 %50, label %59, label %51

; <label>:51:                                     ; preds = %46
  %52 = load %4*, %4** %4, align 8
  %53 = getelementptr inbounds %4, %4* %52, i32 0, i32 12
  %54 = load i8, i8* %53, align 2
  %55 = trunc i8 %54 to i1
  br i1 %55, label %59, label %56

; <label>:56:                                     ; preds = %51
  %57 = load %4*, %4** %4, align 8
  %58 = call zeroext i1 @306(%4* %57)
  br i1 %58, label %59, label %177

; <label>:59:                                     ; preds = %56, %51, %46
  %60 = load i8*, i8** %7, align 8
  %61 = load i8, i8* %60, align 1
  store i8 %61, i8* %8, align 1
  %62 = load i8*, i8** %7, align 8
  store i8 0, i8* %62, align 1
  br label %63

; <label>:63:                                     ; preds = %72, %59
  %64 = load i8*, i8** %6, align 8
  %65 = load i8, i8* %64, align 1
  %66 = call zeroext i8 @270(i8 signext %65)
  %67 = zext i8 %66 to i64
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* @73, i64 0, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = trunc i8 %69 to i1
  %71 = load i8*, i8** %6, align 8
  br i1 %70, label %72, label %74

; <label>:72:                                     ; preds = %63
  %73 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %73, i8** %6, align 8
  br label %63

; <label>:74:                                     ; preds = %63
  store i8* %71, i8** %9, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = icmp ult i8* %75, %76
  br i1 %77, label %78, label %80

; <label>:78:                                     ; preds = %74
  %79 = load i8*, i8** %7, align 8
  store i8* %79, i8** %9, align 8
  br label %173

; <label>:80:                                     ; preds = %74
  %81 = load %4*, %4** %4, align 8
  %82 = getelementptr inbounds %4, %4* %81, i32 0, i32 12
  %83 = load i8, i8* %82, align 2
  %84 = trunc i8 %83 to i1
  br i1 %84, label %85, label %88

; <label>:85:                                     ; preds = %80
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 @307(i8* %86, i8** %9)
  br label %173

; <label>:88:                                     ; preds = %80
  %89 = load %4*, %4** %4, align 8
  %90 = getelementptr inbounds %4, %4* %89, i32 0, i32 10
  %91 = load i8, i8* %90, align 4
  %92 = trunc i8 %91 to i1
  br i1 %92, label %93, label %97

; <label>:93:                                     ; preds = %88
  %94 = load i8*, i8** %6, align 8
  %95 = call x86_fp80 @strtold(i8* %94, i8** %9) #11
  store x86_fp80 %95, x86_fp80* %10, align 16
  %96 = load x86_fp80, x86_fp80* %10, align 16
  br label %173

; <label>:97:                                     ; preds = %88
  %98 = load %4*, %4** %4, align 8
  %99 = getelementptr inbounds %4, %4* %98, i32 0, i32 8
  %100 = load i8, i8* %99, align 2
  %101 = trunc i8 %100 to i1
  br i1 %101, label %107, label %102

; <label>:102:                                    ; preds = %97
  %103 = load %4*, %4** %4, align 8
  %104 = getelementptr inbounds %4, %4* %103, i32 0, i32 11
  %105 = load i8, i8* %104, align 1
  %106 = trunc i8 %105 to i1
  br i1 %106, label %107, label %171

; <label>:107:                                    ; preds = %102, %97
  %108 = load i8*, i8** %6, align 8
  %109 = load i8*, i8** %6, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = icmp ult i8* %109, %110
  br i1 %111, label %112, label %117

; <label>:112:                                    ; preds = %107
  %113 = load i8*, i8** %6, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 45
  br label %117

; <label>:117:                                    ; preds = %112, %107
  %118 = phi i1 [ false, %107 ], [ %116, %112 ]
  %119 = zext i1 %118 to i32
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %108, i64 %120
  store i8* %121, i8** %11, align 8
  store i8 0, i8* %12, align 1
  br label %122

; <label>:122:                                    ; preds = %131, %117
  br label %123

; <label>:123:                                    ; preds = %130, %122
  %124 = load i8*, i8** %11, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %11, align 8
  %126 = load i8, i8* %124, align 1
  store i8 %126, i8* %13, align 1
  %127 = zext i8 %126 to i32
  %128 = sub i32 %127, 48
  %129 = icmp ule i32 %128, 9
  br i1 %129, label %130, label %131

; <label>:130:                                    ; preds = %123
  store i8 1, i8* %12, align 1
  br label %123

; <label>:131:                                    ; preds = %123
  %132 = load i8, i8* %13, align 1
  %133 = zext i8 %132 to i32
  %134 = icmp eq i32 %133, 44
  br i1 %134, label %122, label %135

; <label>:135:                                    ; preds = %131
  %136 = load i8, i8* %13, align 1
  %137 = zext i8 %136 to i32
  %138 = icmp eq i32 %137, 46
  br i1 %138, label %139, label %148

; <label>:139:                                    ; preds = %135
  br label %140

; <label>:140:                                    ; preds = %147, %139
  %141 = load i8*, i8** %11, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %11, align 8
  %143 = load i8, i8* %141, align 1
  store i8 %143, i8* %13, align 1
  %144 = zext i8 %143 to i32
  %145 = sub i32 %144, 48
  %146 = icmp ule i32 %145, 9
  br i1 %146, label %147, label %148

; <label>:147:                                    ; preds = %140
  store i8 1, i8* %12, align 1
  br label %140

; <label>:148:                                    ; preds = %140, %135
  %149 = load i8, i8* %12, align 1
  %150 = trunc i8 %149 to i1
  br i1 %150, label %151, label %173

; <label>:151:                                    ; preds = %148
  %152 = load i8*, i8** %11, align 8
  %153 = load %4*, %4** %4, align 8
  %154 = getelementptr inbounds %4, %4* %153, i32 0, i32 11
  %155 = load i8, i8* %154, align 1
  %156 = trunc i8 %155 to i1
  br i1 %156, label %157, label %164

; <label>:157:                                    ; preds = %151
  %158 = load i8, i8* %13, align 1
  %159 = zext i8 %158 to i64
  %160 = getelementptr inbounds [256 x i8], [256 x i8]* @74, i64 0, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp ne i32 %162, 0
  br label %164

; <label>:164:                                    ; preds = %157, %151
  %165 = phi i1 [ false, %151 ], [ %163, %157 ]
  %166 = xor i1 %165, true
  %167 = zext i1 %166 to i32
  %168 = sext i32 %167 to i64
  %169 = sub i64 0, %168
  %170 = getelementptr inbounds i8, i8* %152, i64 %169
  store i8* %170, i8** %9, align 8
  br label %173

; <label>:171:                                    ; preds = %102
  %172 = load i8*, i8** %7, align 8
  store i8* %172, i8** %9, align 8
  br label %173

; <label>:173:                                    ; preds = %85, %171, %164, %148, %93, %78
  %174 = load i8, i8* %8, align 1
  %175 = load i8*, i8** %7, align 8
  store i8 %174, i8* %175, align 1
  %176 = load i8*, i8** %9, align 8
  store i8* %176, i8** %7, align 8
  br label %177

; <label>:177:                                    ; preds = %56, %173, %2
  %178 = load i8*, i8** %5, align 8
  %179 = load i8*, i8** %6, align 8
  %180 = call i64 @308(i8* %178, i8* %179)
  store i64 %180, i64* %14, align 8
  %181 = load i8*, i8** %6, align 8
  %182 = load i8*, i8** %7, align 8
  %183 = call i64 @308(i8* %181, i8* %182)
  store i64 %183, i64* %15, align 8
  %184 = load i64, i64* %14, align 8
  %185 = load i64, i64* %15, align 8
  call void @309(i64 %184, i64 %185)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @304(%9*, %4*) #1 {
  %3 = alloca %9*, align 8
  %4 = alloca %4*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %9* %0, %9** %3, align 8
  store %4* %1, %4** %4, align 8
  %9 = load %9*, %9** %3, align 8
  %10 = getelementptr inbounds %9, %9* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load %9*, %9** %3, align 8
  %14 = getelementptr inbounds %9, %9* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i8, i8* %12, i64 %15
  %17 = getelementptr inbounds i8, i8* %16, i64 -1
  store i8* %17, i8** %6, align 8
  %18 = load %4*, %4** %4, align 8
  %19 = getelementptr inbounds %4, %4* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  %21 = load %4*, %4** %4, align 8
  %22 = getelementptr inbounds %4, %4* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %8, align 8
  br label %24

; <label>:24:                                     ; preds = %.critedge2, %2
  %25 = load i8*, i8** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ult i8* %25, %26
  br i1 %27, label %28, label %.critedge

; <label>:28:                                     ; preds = %24
  %29 = load i64, i64* %7, align 8
  %30 = add i64 %29, -1
  store i64 %30, i64* %7, align 8
  %31 = icmp ne i64 %29, 0
  br i1 %31, label %32, label %.critedge

; <label>:32:                                     ; preds = %28
  br label %33

; <label>:33:                                     ; preds = %45, %32
  %34 = load i8*, i8** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = icmp ult i8* %34, %35
  br i1 %36, label %37, label %.critedge1

; <label>:37:                                     ; preds = %33
  %38 = load i8*, i8** %5, align 8
  %39 = load i8, i8* %38, align 1
  %40 = call zeroext i8 @270(i8 signext %39)
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* @73, i64 0, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = trunc i8 %43 to i1
  br i1 %44, label %45, label %.critedge1

; <label>:45:                                     ; preds = %37
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %5, align 8
  br label %33

.critedge1:                                       ; preds = %33, %37
  br label %48

; <label>:48:                                     ; preds = %61, %.critedge1
  %49 = load i8*, i8** %5, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = icmp ult i8* %49, %50
  br i1 %51, label %52, label %.critedge2

; <label>:52:                                     ; preds = %48
  %53 = load i8*, i8** %5, align 8
  %54 = load i8, i8* %53, align 1
  %55 = call zeroext i8 @270(i8 signext %54)
  %56 = zext i8 %55 to i64
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* @73, i64 0, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = trunc i8 %58 to i1
  %60 = xor i1 %59, true
  br i1 %60, label %61, label %.critedge2

; <label>:61:                                     ; preds = %52
  %62 = load i8*, i8** %5, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %5, align 8
  br label %48

.critedge2:                                       ; preds = %48, %52
  br label %24

.critedge:                                        ; preds = %28, %24
  %64 = load %4*, %4** %4, align 8
  %65 = getelementptr inbounds %4, %4* %64, i32 0, i32 6
  %66 = load i8, i8* %65, align 8
  %67 = trunc i8 %66 to i1
  br i1 %67, label %68, label %.critedge3

; <label>:68:                                     ; preds = %.critedge
  br label %69

; <label>:69:                                     ; preds = %81, %68
  %70 = load i8*, i8** %5, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = icmp ult i8* %70, %71
  br i1 %72, label %73, label %.critedge3

; <label>:73:                                     ; preds = %69
  %74 = load i8*, i8** %5, align 8
  %75 = load i8, i8* %74, align 1
  %76 = call zeroext i8 @270(i8 signext %75)
  %77 = zext i8 %76 to i64
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* @73, i64 0, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = trunc i8 %79 to i1
  br i1 %80, label %81, label %.critedge3

; <label>:81:                                     ; preds = %73
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %5, align 8
  br label %69

.critedge3:                                       ; preds = %73, %69, %.critedge
  %84 = load i8*, i8** %6, align 8
  %85 = load i8*, i8** %5, align 8
  %86 = load i64, i64* %8, align 8
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  %88 = icmp ult i8* %84, %87
  %89 = load i8*, i8** %6, align 8
  %90 = load i8*, i8** %5, align 8
  %91 = load i64, i64* %8, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  %93 = select i1 %88, i8* %89, i8* %92
  store i8* %93, i8** %5, align 8
  %94 = load i8*, i8** %5, align 8
  ret i8* %94
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @305(%9*, %4*) #1 {
  %3 = alloca %9*, align 8
  %4 = alloca %4*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %9* %0, %9** %3, align 8
  store %4* %1, %4** %4, align 8
  %9 = load %9*, %9** %3, align 8
  %10 = getelementptr inbounds %9, %9* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load %9*, %9** %3, align 8
  %14 = getelementptr inbounds %9, %9* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i8, i8* %12, i64 %15
  %17 = getelementptr inbounds i8, i8* %16, i64 -1
  store i8* %17, i8** %6, align 8
  %18 = load %4*, %4** %4, align 8
  %19 = getelementptr inbounds %4, %4* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  %21 = load %4*, %4** %4, align 8
  %22 = getelementptr inbounds %4, %4* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

; <label>:26:                                     ; preds = %2
  %27 = load i64, i64* %7, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %7, align 8
  br label %29

; <label>:29:                                     ; preds = %2, %26
  br label %30

; <label>:30:                                     ; preds = %.critedge2, %29
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = icmp ult i8* %31, %32
  br i1 %33, label %34, label %.critedge

; <label>:34:                                     ; preds = %30
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %35, -1
  store i64 %36, i64* %7, align 8
  %37 = icmp ne i64 %35, 0
  br i1 %37, label %38, label %.critedge

; <label>:38:                                     ; preds = %34
  br label %39

; <label>:39:                                     ; preds = %51, %38
  %40 = load i8*, i8** %5, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = icmp ult i8* %40, %41
  br i1 %42, label %43, label %.critedge1

; <label>:43:                                     ; preds = %39
  %44 = load i8*, i8** %5, align 8
  %45 = load i8, i8* %44, align 1
  %46 = call zeroext i8 @270(i8 signext %45)
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* @73, i64 0, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = trunc i8 %49 to i1
  br i1 %50, label %51, label %.critedge1

; <label>:51:                                     ; preds = %43
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %5, align 8
  br label %39

.critedge1:                                       ; preds = %39, %43
  br label %54

; <label>:54:                                     ; preds = %67, %.critedge1
  %55 = load i8*, i8** %5, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = icmp ult i8* %55, %56
  br i1 %57, label %58, label %.critedge2

; <label>:58:                                     ; preds = %54
  %59 = load i8*, i8** %5, align 8
  %60 = load i8, i8* %59, align 1
  %61 = call zeroext i8 @270(i8 signext %60)
  %62 = zext i8 %61 to i64
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* @73, i64 0, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = trunc i8 %64 to i1
  %66 = xor i1 %65, true
  br i1 %66, label %67, label %.critedge2

; <label>:67:                                     ; preds = %58
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %5, align 8
  br label %54

.critedge2:                                       ; preds = %54, %58
  br label %30

.critedge:                                        ; preds = %34, %30
  %70 = load i64, i64* %8, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %103

; <label>:72:                                     ; preds = %.critedge
  %73 = load %4*, %4** %4, align 8
  %74 = getelementptr inbounds %4, %4* %73, i32 0, i32 7
  %75 = load i8, i8* %74, align 1
  %76 = trunc i8 %75 to i1
  br i1 %76, label %77, label %.critedge3

; <label>:77:                                     ; preds = %72
  br label %78

; <label>:78:                                     ; preds = %90, %77
  %79 = load i8*, i8** %5, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = icmp ult i8* %79, %80
  br i1 %81, label %82, label %.critedge3

; <label>:82:                                     ; preds = %78
  %83 = load i8*, i8** %5, align 8
  %84 = load i8, i8* %83, align 1
  %85 = call zeroext i8 @270(i8 signext %84)
  %86 = zext i8 %85 to i64
  %87 = getelementptr inbounds [256 x i8], [256 x i8]* @73, i64 0, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = trunc i8 %88 to i1
  br i1 %89, label %90, label %.critedge3

; <label>:90:                                     ; preds = %82
  %91 = load i8*, i8** %5, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %5, align 8
  br label %78

.critedge3:                                       ; preds = %82, %78, %72
  %93 = load i8*, i8** %6, align 8
  %94 = load i8*, i8** %5, align 8
  %95 = load i64, i64* %8, align 8
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  %97 = icmp ult i8* %93, %96
  %98 = load i8*, i8** %6, align 8
  %99 = load i8*, i8** %5, align 8
  %100 = load i64, i64* %8, align 8
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  %102 = select i1 %97, i8* %98, i8* %101
  store i8* %102, i8** %5, align 8
  br label %103

; <label>:103:                                    ; preds = %.critedge3, %.critedge
  %104 = load i8*, i8** %5, align 8
  ret i8* %104
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @306(%4*) #1 {
  %2 = alloca %4*, align 8
  store %4* %0, %4** %2, align 8
  %3 = load %4*, %4** %2, align 8
  %4 = getelementptr inbounds %4, %4* %3, i32 0, i32 8
  %5 = load i8, i8* %4, align 2
  %6 = trunc i8 %5 to i1
  br i1 %6, label %17, label %7

; <label>:7:                                      ; preds = %1
  %8 = load %4*, %4** %2, align 8
  %9 = getelementptr inbounds %4, %4* %8, i32 0, i32 10
  %10 = load i8, i8* %9, align 4
  %11 = trunc i8 %10 to i1
  br i1 %11, label %17, label %12

; <label>:12:                                     ; preds = %7
  %13 = load %4*, %4** %2, align 8
  %14 = getelementptr inbounds %4, %4* %13, i32 0, i32 11
  %15 = load i8, i8* %14, align 1
  %16 = trunc i8 %15 to i1
  br label %17

; <label>:17:                                     ; preds = %12, %7, %1
  %18 = phi i1 [ true, %7 ], [ true, %1 ], [ %16, %12 ]
  ret i1 %18
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @307(i8*, i8**) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 12, i64* %7, align 8
  br label %11

; <label>:11:                                     ; preds = %19, %2
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %14 = call zeroext i8 @270(i8 signext %13)
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* @73, i64 0, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = trunc i8 %17 to i1
  br i1 %18, label %19, label %22

; <label>:19:                                     ; preds = %11
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %4, align 8
  br label %11

; <label>:22:                                     ; preds = %11
  br label %23

; <label>:23:                                     ; preds = %86, %22
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = add i64 %24, %25
  %27 = udiv i64 %26, 2
  store i64 %27, i64* %8, align 8
  %28 = load i8*, i8** %4, align 8
  store i8* %28, i8** %9, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds [12 x %10], [12 x %10]* @76, i64 0, i64 %29
  %31 = getelementptr inbounds %10, %10* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 16
  store i8* %32, i8** %10, align 8
  br label %33

; <label>:33:                                     ; preds = %81, %23
  %34 = load i8*, i8** %10, align 8
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %48, label %37

; <label>:37:                                     ; preds = %33
  %38 = load i8**, i8*** %5, align 8
  %39 = icmp ne i8** %38, null
  br i1 %39, label %40, label %43

; <label>:40:                                     ; preds = %37
  %41 = load i8*, i8** %9, align 8
  %42 = load i8**, i8*** %5, align 8
  store i8* %41, i8** %42, align 8
  br label %43

; <label>:43:                                     ; preds = %40, %37
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds [12 x %10], [12 x %10]* @76, i64 0, i64 %44
  %46 = getelementptr inbounds %10, %10* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %3, align 4
  br label %91

; <label>:48:                                     ; preds = %33
  %49 = load i8*, i8** %9, align 8
  %50 = load i8, i8* %49, align 1
  %51 = call zeroext i8 @270(i8 signext %50)
  %52 = zext i8 %51 to i64
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* @77, i64 0, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = call zeroext i8 @270(i8 signext %54)
  %56 = zext i8 %55 to i32
  %57 = load i8*, i8** %10, align 8
  %58 = load i8, i8* %57, align 1
  %59 = call zeroext i8 @270(i8 signext %58)
  %60 = zext i8 %59 to i32
  %61 = icmp slt i32 %56, %60
  br i1 %61, label %62, label %64

; <label>:62:                                     ; preds = %48
  %63 = load i64, i64* %8, align 8
  store i64 %63, i64* %7, align 8
  br label %86

; <label>:64:                                     ; preds = %48
  %65 = load i8*, i8** %9, align 8
  %66 = load i8, i8* %65, align 1
  %67 = call zeroext i8 @270(i8 signext %66)
  %68 = zext i8 %67 to i64
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* @77, i64 0, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = call zeroext i8 @270(i8 signext %70)
  %72 = zext i8 %71 to i32
  %73 = load i8*, i8** %10, align 8
  %74 = load i8, i8* %73, align 1
  %75 = call zeroext i8 @270(i8 signext %74)
  %76 = zext i8 %75 to i32
  %77 = icmp sgt i32 %72, %76
  br i1 %77, label %78, label %81

; <label>:78:                                     ; preds = %64
  %79 = load i64, i64* %8, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %6, align 8
  br label %86

; <label>:81:                                     ; preds = %64
  %82 = load i8*, i8** %9, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %9, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %10, align 8
  br label %33

; <label>:86:                                     ; preds = %62, %78
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* %7, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %23, label %90

; <label>:90:                                     ; preds = %86
  store i32 0, i32* %3, align 4
  br label %91

; <label>:91:                                     ; preds = %90, %43
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

; Function Attrs: nounwind
declare x86_fp80 @strtold(i8*, i8**) #4

; Function Attrs: noinline nounwind uwtable
define internal i64 @308(i8*, i8*) #1 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = ptrtoint i8* %7 to i64
  %10 = ptrtoint i8* %8 to i64
  %11 = sub i64 %9, %10
  %12 = call i32 @mbsnwidth(i8* %6, i64 %11, i32 0)
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %5, align 8
  br label %14

; <label>:14:                                     ; preds = %18, %2
  %15 = load i8*, i8** %3, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ult i8* %15, %16
  br i1 %17, label %18, label %28

; <label>:18:                                     ; preds = %14
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %3, align 8
  %21 = load i8, i8* %19, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 9
  %24 = zext i1 %23 to i32
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %5, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %5, align 8
  br label %14

; <label>:28:                                     ; preds = %14
  %29 = load i64, i64* %5, align 8
  ret i64 %29
}

; Function Attrs: noinline nounwind uwtable
define internal void @309(i64, i64) #1 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  br label %5

; <label>:5:                                      ; preds = %9, %2
  %6 = load i64, i64* %3, align 8
  %7 = add i64 %6, -1
  store i64 %7, i64* %3, align 8
  %8 = icmp ne i64 %6, 0
  br i1 %8, label %9, label %11

; <label>:9:                                      ; preds = %5
  %10 = call i32 @putchar_unlocked(i32 32)
  br label %5

; <label>:11:                                     ; preds = %5
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %16, label %14

; <label>:14:                                     ; preds = %11
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @75, i32 0, i32 0))
  br label %24

; <label>:16:                                     ; preds = %11
  br label %17

; <label>:17:                                     ; preds = %17, %16
  %18 = call i32 @putchar_unlocked(i32 95)
  %19 = load i64, i64* %4, align 8
  %20 = add i64 %19, -1
  store i64 %20, i64* %4, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %17, label %22

; <label>:22:                                     ; preds = %17
  %23 = call i32 @putchar_unlocked(i32 10)
  br label %24

; <label>:24:                                     ; preds = %22, %14
  ret void
}

declare i32 @putchar_unlocked(i32) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @310(%9*, %9*) #1 {
  %3 = alloca i32, align 4
  %4 = alloca %9*, align 8
  %5 = alloca %9*, align 8
  %6 = alloca %4*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i8*, align 8
  %23 = alloca [4000 x i8], align 16
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %9* %0, %9** %4, align 8
  store %9* %1, %9** %5, align 8
  %26 = load %4*, %4** @53, align 8
  store %4* %26, %4** %6, align 8
  %27 = load %9*, %9** %4, align 8
  %28 = getelementptr inbounds %9, %9* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %7, align 8
  %30 = load %9*, %9** %5, align 8
  %31 = getelementptr inbounds %9, %9* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %8, align 8
  %33 = load %9*, %9** %4, align 8
  %34 = getelementptr inbounds %9, %9* %33, i32 0, i32 3
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %9, align 8
  %36 = load %9*, %9** %5, align 8
  %37 = getelementptr inbounds %9, %9* %36, i32 0, i32 3
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %10, align 8
  br label %39

; <label>:39:                                     ; preds = %2, %.critedge4
  %40 = load %4*, %4** %6, align 8
  %41 = getelementptr inbounds %4, %4* %40, i32 0, i32 5
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %12, align 8
  %43 = load %4*, %4** %6, align 8
  %44 = getelementptr inbounds %4, %4* %43, i32 0, i32 4
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %13, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = icmp ugt i8* %46, %47
  %49 = load i8*, i8** %7, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = select i1 %48, i8* %49, i8* %50
  store i8* %51, i8** %9, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = icmp ugt i8* %52, %53
  %55 = load i8*, i8** %8, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = select i1 %54, i8* %55, i8* %56
  store i8* %57, i8** %10, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  store i64 %62, i64* %14, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  store i64 %67, i64* %15, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = icmp ne i8* %68, null
  %70 = load i8*, i8** %12, align 8
  %71 = icmp ne i8* %70, null
  %or.cond = or i1 %69, %71
  br i1 %or.cond, label %72, label %194

; <label>:72:                                     ; preds = %39
  %73 = load i64, i64* %14, align 8
  %74 = add i64 %73, 1
  %75 = load i64, i64* %15, align 8
  %76 = add i64 %74, %75
  %77 = add i64 %76, 1
  store i64 %77, i64* %25, align 8
  %78 = load i64, i64* %25, align 8
  %79 = icmp ule i64 %78, 4000
  br i1 %79, label %80, label %82

; <label>:80:                                     ; preds = %72
  %81 = getelementptr inbounds [4000 x i8], [4000 x i8]* %23, i32 0, i32 0
  store i8* %81, i8** %16, align 8
  store i8* null, i8** %22, align 8
  br label %85

; <label>:82:                                     ; preds = %72
  %83 = load i64, i64* %25, align 8
  %84 = call noalias i8* @xmalloc(i64 %83)
  store i8* %84, i8** %22, align 8
  store i8* %84, i8** %16, align 8
  br label %85

; <label>:85:                                     ; preds = %82, %80
  %86 = load i8*, i8** %16, align 8
  %87 = load i64, i64* %14, align 8
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  store i8* %89, i8** %17, align 8
  store i64 0, i64* %24, align 8
  store i64 0, i64* %18, align 8
  br label %90

; <label>:90:                                     ; preds = %135, %85
  %91 = load i64, i64* %24, align 8
  %92 = load i64, i64* %14, align 8
  %93 = icmp ult i64 %91, %92
  br i1 %93, label %94, label %138

; <label>:94:                                     ; preds = %90
  %95 = load i8*, i8** %13, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %108

; <label>:97:                                     ; preds = %94
  %98 = load i8*, i8** %13, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = load i64, i64* %24, align 8
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = call zeroext i8 @270(i8 signext %102)
  %104 = zext i8 %103 to i64
  %105 = getelementptr inbounds i8, i8* %98, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = trunc i8 %106 to i1
  br i1 %107, label %135, label %108

; <label>:108:                                    ; preds = %97, %94
  %109 = load i8*, i8** %12, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %122

; <label>:111:                                    ; preds = %108
  %112 = load i8*, i8** %12, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = load i64, i64* %24, align 8
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = call zeroext i8 @270(i8 signext %116)
  %118 = zext i8 %117 to i64
  %119 = getelementptr inbounds i8, i8* %112, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  br label %128

; <label>:122:                                    ; preds = %108
  %123 = load i8*, i8** %7, align 8
  %124 = load i64, i64* %24, align 8
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  br label %128

; <label>:128:                                    ; preds = %122, %111
  %129 = phi i32 [ %121, %111 ], [ %127, %122 ]
  %130 = trunc i32 %129 to i8
  %131 = load i8*, i8** %16, align 8
  %132 = load i64, i64* %18, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %18, align 8
  %134 = getelementptr inbounds i8, i8* %131, i64 %132
  store i8 %130, i8* %134, align 1
  br label %135

; <label>:135:                                    ; preds = %97, %128
  %136 = load i64, i64* %24, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %24, align 8
  br label %90

; <label>:138:                                    ; preds = %90
  %139 = load i8*, i8** %16, align 8
  %140 = load i64, i64* %18, align 8
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  store i8 0, i8* %141, align 1
  store i64 0, i64* %24, align 8
  store i64 0, i64* %19, align 8
  br label %142

; <label>:142:                                    ; preds = %187, %138
  %143 = load i64, i64* %24, align 8
  %144 = load i64, i64* %15, align 8
  %145 = icmp ult i64 %143, %144
  br i1 %145, label %146, label %190

; <label>:146:                                    ; preds = %142
  %147 = load i8*, i8** %13, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %160

; <label>:149:                                    ; preds = %146
  %150 = load i8*, i8** %13, align 8
  %151 = load i8*, i8** %8, align 8
  %152 = load i64, i64* %24, align 8
  %153 = getelementptr inbounds i8, i8* %151, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = call zeroext i8 @270(i8 signext %154)
  %156 = zext i8 %155 to i64
  %157 = getelementptr inbounds i8, i8* %150, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = trunc i8 %158 to i1
  br i1 %159, label %187, label %160

; <label>:160:                                    ; preds = %149, %146
  %161 = load i8*, i8** %12, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %174

; <label>:163:                                    ; preds = %160
  %164 = load i8*, i8** %12, align 8
  %165 = load i8*, i8** %8, align 8
  %166 = load i64, i64* %24, align 8
  %167 = getelementptr inbounds i8, i8* %165, i64 %166
  %168 = load i8, i8* %167, align 1
  %169 = call zeroext i8 @270(i8 signext %168)
  %170 = zext i8 %169 to i64
  %171 = getelementptr inbounds i8, i8* %164, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  br label %180

; <label>:174:                                    ; preds = %160
  %175 = load i8*, i8** %8, align 8
  %176 = load i64, i64* %24, align 8
  %177 = getelementptr inbounds i8, i8* %175, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  br label %180

; <label>:180:                                    ; preds = %174, %163
  %181 = phi i32 [ %173, %163 ], [ %179, %174 ]
  %182 = trunc i32 %181 to i8
  %183 = load i8*, i8** %17, align 8
  %184 = load i64, i64* %19, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %19, align 8
  %186 = getelementptr inbounds i8, i8* %183, i64 %184
  store i8 %182, i8* %186, align 1
  br label %187

; <label>:187:                                    ; preds = %149, %180
  %188 = load i64, i64* %24, align 8
  %189 = add i64 %188, 1
  store i64 %189, i64* %24, align 8
  br label %142

; <label>:190:                                    ; preds = %142
  %191 = load i8*, i8** %17, align 8
  %192 = load i64, i64* %19, align 8
  %193 = getelementptr inbounds i8, i8* %191, i64 %192
  store i8 0, i8* %193, align 1
  br label %213

; <label>:194:                                    ; preds = %39
  %195 = load i8*, i8** %7, align 8
  store i8* %195, i8** %16, align 8
  %196 = load i64, i64* %14, align 8
  store i64 %196, i64* %18, align 8
  %197 = load i8*, i8** %16, align 8
  %198 = load i64, i64* %18, align 8
  %199 = getelementptr inbounds i8, i8* %197, i64 %198
  %200 = load i8, i8* %199, align 1
  store i8 %200, i8* %20, align 1
  %201 = load i8*, i8** %16, align 8
  %202 = load i64, i64* %18, align 8
  %203 = getelementptr inbounds i8, i8* %201, i64 %202
  store i8 0, i8* %203, align 1
  %204 = load i8*, i8** %8, align 8
  store i8* %204, i8** %17, align 8
  %205 = load i64, i64* %15, align 8
  store i64 %205, i64* %19, align 8
  %206 = load i8*, i8** %17, align 8
  %207 = load i64, i64* %19, align 8
  %208 = getelementptr inbounds i8, i8* %206, i64 %207
  %209 = load i8, i8* %208, align 1
  store i8 %209, i8* %21, align 1
  %210 = load i8*, i8** %17, align 8
  %211 = load i64, i64* %19, align 8
  %212 = getelementptr inbounds i8, i8* %210, i64 %211
  store i8 0, i8* %212, align 1
  br label %213

; <label>:213:                                    ; preds = %194, %190
  %214 = load %4*, %4** %6, align 8
  %215 = getelementptr inbounds %4, %4* %214, i32 0, i32 8
  %216 = load i8, i8* %215, align 2
  %217 = trunc i8 %216 to i1
  br i1 %217, label %218, label %222

; <label>:218:                                    ; preds = %213
  %219 = load i8*, i8** %16, align 8
  %220 = load i8*, i8** %17, align 8
  %221 = call i32 @311(i8* %219, i8* %220)
  store i32 %221, i32* %11, align 4
  br label %290

; <label>:222:                                    ; preds = %213
  %223 = load %4*, %4** %6, align 8
  %224 = getelementptr inbounds %4, %4* %223, i32 0, i32 10
  %225 = load i8, i8* %224, align 4
  %226 = trunc i8 %225 to i1
  br i1 %226, label %227, label %231

; <label>:227:                                    ; preds = %222
  %228 = load i8*, i8** %16, align 8
  %229 = load i8*, i8** %17, align 8
  %230 = call i32 @312(i8* %228, i8* %229)
  store i32 %230, i32* %11, align 4
  br label %290

; <label>:231:                                    ; preds = %222
  %232 = load %4*, %4** %6, align 8
  %233 = getelementptr inbounds %4, %4* %232, i32 0, i32 11
  %234 = load i8, i8* %233, align 1
  %235 = trunc i8 %234 to i1
  br i1 %235, label %236, label %240

; <label>:236:                                    ; preds = %231
  %237 = load i8*, i8** %16, align 8
  %238 = load i8*, i8** %17, align 8
  %239 = call i32 @313(i8* %237, i8* %238)
  store i32 %239, i32* %11, align 4
  br label %290

; <label>:240:                                    ; preds = %231
  %241 = load %4*, %4** %6, align 8
  %242 = getelementptr inbounds %4, %4* %241, i32 0, i32 12
  %243 = load i8, i8* %242, align 2
  %244 = trunc i8 %243 to i1
  br i1 %244, label %245, label %251

; <label>:245:                                    ; preds = %240
  %246 = load i8*, i8** %16, align 8
  %247 = call i32 @307(i8* %246, i8** null)
  %248 = load i8*, i8** %17, align 8
  %249 = call i32 @307(i8* %248, i8** null)
  %250 = sub nsw i32 %247, %249
  store i32 %250, i32* %11, align 4
  br label %290

; <label>:251:                                    ; preds = %240
  %252 = load %4*, %4** %6, align 8
  %253 = getelementptr inbounds %4, %4* %252, i32 0, i32 9
  %254 = load i8, i8* %253, align 1
  %255 = trunc i8 %254 to i1
  br i1 %255, label %256, label %262

; <label>:256:                                    ; preds = %251
  %257 = load i8*, i8** %16, align 8
  %258 = load i64, i64* %18, align 8
  %259 = load i8*, i8** %17, align 8
  %260 = load i64, i64* %19, align 8
  %261 = call i32 @314(i8* %257, i64 %258, i8* %259, i64 %260)
  store i32 %261, i32* %11, align 4
  br label %290

; <label>:262:                                    ; preds = %251
  %263 = load %4*, %4** %6, align 8
  %264 = getelementptr inbounds %4, %4* %263, i32 0, i32 14
  %265 = load i8, i8* %264, align 8
  %266 = trunc i8 %265 to i1
  br i1 %266, label %267, label %271

; <label>:267:                                    ; preds = %262
  %268 = load i8*, i8** %16, align 8
  %269 = load i8*, i8** %17, align 8
  %270 = call i32 @filevercmp(i8* %268, i8* %269)
  store i32 %270, i32* %11, align 4
  br label %290

; <label>:271:                                    ; preds = %262
  %272 = load i64, i64* %18, align 8
  %273 = icmp eq i64 %272, 0
  %274 = load i64, i64* %19, align 8
  br i1 %273, label %275, label %279

; <label>:275:                                    ; preds = %271
  %276 = icmp ne i64 %274, 0
  %277 = zext i1 %276 to i32
  %278 = sub nsw i32 0, %277
  store i32 %278, i32* %11, align 4
  br label %290

; <label>:279:                                    ; preds = %271
  %280 = icmp eq i64 %274, 0
  br i1 %280, label %281, label %282

; <label>:281:                                    ; preds = %279
  store i32 1, i32* %11, align 4
  br label %290

; <label>:282:                                    ; preds = %279
  %283 = load i8*, i8** %16, align 8
  %284 = load i64, i64* %18, align 8
  %285 = add i64 %284, 1
  %286 = load i8*, i8** %17, align 8
  %287 = load i64, i64* %19, align 8
  %288 = add i64 %287, 1
  %289 = call i32 @xmemcoll0(i8* %283, i64 %285, i8* %286, i64 %288)
  store i32 %289, i32* %11, align 4
  br label %290

; <label>:290:                                    ; preds = %227, %245, %267, %281, %282, %275, %256, %236, %218
  %291 = load i8*, i8** %13, align 8
  %292 = icmp ne i8* %291, null
  %293 = load i8*, i8** %12, align 8
  %294 = icmp ne i8* %293, null
  %or.cond3 = or i1 %292, %294
  br i1 %or.cond3, label %295, label %297

; <label>:295:                                    ; preds = %290
  %296 = load i8*, i8** %22, align 8
  call void @free(i8* %296) #11
  br label %306

; <label>:297:                                    ; preds = %290
  %298 = load i8, i8* %20, align 1
  %299 = load i8*, i8** %16, align 8
  %300 = load i64, i64* %18, align 8
  %301 = getelementptr inbounds i8, i8* %299, i64 %300
  store i8 %298, i8* %301, align 1
  %302 = load i8, i8* %21, align 1
  %303 = load i8*, i8** %17, align 8
  %304 = load i64, i64* %19, align 8
  %305 = getelementptr inbounds i8, i8* %303, i64 %304
  store i8 %302, i8* %305, align 1
  br label %306

; <label>:306:                                    ; preds = %295, %297
  %307 = load i32, i32* %11, align 4
  %308 = icmp ne i32 %307, 0
  %309 = load %4*, %4** %6, align 8
  br i1 %308, label %397, label %310

; <label>:310:                                    ; preds = %306
  %311 = getelementptr inbounds %4, %4* %309, i32 0, i32 16
  %312 = load %4*, %4** %311, align 8
  store %4* %312, %4** %6, align 8
  %313 = load %4*, %4** %6, align 8
  %314 = icmp ne %4* %313, null
  br i1 %314, label %315, label %396

; <label>:315:                                    ; preds = %310
  %316 = load %4*, %4** %6, align 8
  %317 = getelementptr inbounds %4, %4* %316, i32 0, i32 2
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, -1
  %320 = load %9*, %9** %4, align 8
  br i1 %319, label %321, label %327

; <label>:321:                                    ; preds = %315
  %322 = load %4*, %4** %6, align 8
  %323 = call i8* @305(%9* %320, %4* %322)
  store i8* %323, i8** %9, align 8
  %324 = load %9*, %9** %5, align 8
  %325 = load %4*, %4** %6, align 8
  %326 = call i8* @305(%9* %324, %4* %325)
  store i8* %326, i8** %10, align 8
  br label %343

; <label>:327:                                    ; preds = %315
  %328 = getelementptr inbounds %9, %9* %320, i32 0, i32 0
  %329 = load i8*, i8** %328, align 8
  %330 = load %9*, %9** %4, align 8
  %331 = getelementptr inbounds %9, %9* %330, i32 0, i32 1
  %332 = load i64, i64* %331, align 8
  %333 = getelementptr inbounds i8, i8* %329, i64 %332
  %334 = getelementptr inbounds i8, i8* %333, i64 -1
  store i8* %334, i8** %9, align 8
  %335 = load %9*, %9** %5, align 8
  %336 = getelementptr inbounds %9, %9* %335, i32 0, i32 0
  %337 = load i8*, i8** %336, align 8
  %338 = load %9*, %9** %5, align 8
  %339 = getelementptr inbounds %9, %9* %338, i32 0, i32 1
  %340 = load i64, i64* %339, align 8
  %341 = getelementptr inbounds i8, i8* %337, i64 %340
  %342 = getelementptr inbounds i8, i8* %341, i64 -1
  store i8* %342, i8** %10, align 8
  br label %343

; <label>:343:                                    ; preds = %327, %321
  %344 = load %4*, %4** %6, align 8
  %345 = getelementptr inbounds %4, %4* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = icmp ne i64 %346, -1
  %348 = load %9*, %9** %4, align 8
  br i1 %347, label %349, label %355

; <label>:349:                                    ; preds = %343
  %350 = load %4*, %4** %6, align 8
  %351 = call i8* @304(%9* %348, %4* %350)
  store i8* %351, i8** %7, align 8
  %352 = load %9*, %9** %5, align 8
  %353 = load %4*, %4** %6, align 8
  %354 = call i8* @304(%9* %352, %4* %353)
  store i8* %354, i8** %8, align 8
  br label %.critedge4

; <label>:355:                                    ; preds = %343
  %356 = getelementptr inbounds %9, %9* %348, i32 0, i32 0
  %357 = load i8*, i8** %356, align 8
  store i8* %357, i8** %7, align 8
  %358 = load %9*, %9** %5, align 8
  %359 = getelementptr inbounds %9, %9* %358, i32 0, i32 0
  %360 = load i8*, i8** %359, align 8
  store i8* %360, i8** %8, align 8
  %361 = load %4*, %4** %6, align 8
  %362 = getelementptr inbounds %4, %4* %361, i32 0, i32 6
  %363 = load i8, i8* %362, align 8
  %364 = trunc i8 %363 to i1
  br i1 %364, label %365, label %.critedge4

; <label>:365:                                    ; preds = %355
  br label %366

; <label>:366:                                    ; preds = %378, %365
  %367 = load i8*, i8** %7, align 8
  %368 = load i8*, i8** %9, align 8
  %369 = icmp ult i8* %367, %368
  br i1 %369, label %370, label %.critedge

; <label>:370:                                    ; preds = %366
  %371 = load i8*, i8** %7, align 8
  %372 = load i8, i8* %371, align 1
  %373 = call zeroext i8 @270(i8 signext %372)
  %374 = zext i8 %373 to i64
  %375 = getelementptr inbounds [256 x i8], [256 x i8]* @73, i64 0, i64 %374
  %376 = load i8, i8* %375, align 1
  %377 = trunc i8 %376 to i1
  br i1 %377, label %378, label %.critedge

; <label>:378:                                    ; preds = %370
  %379 = load i8*, i8** %7, align 8
  %380 = getelementptr inbounds i8, i8* %379, i32 1
  store i8* %380, i8** %7, align 8
  br label %366

.critedge:                                        ; preds = %366, %370
  br label %381

; <label>:381:                                    ; preds = %393, %.critedge
  %382 = load i8*, i8** %8, align 8
  %383 = load i8*, i8** %10, align 8
  %384 = icmp ult i8* %382, %383
  br i1 %384, label %385, label %.critedge4

; <label>:385:                                    ; preds = %381
  %386 = load i8*, i8** %8, align 8
  %387 = load i8, i8* %386, align 1
  %388 = call zeroext i8 @270(i8 signext %387)
  %389 = zext i8 %388 to i64
  %390 = getelementptr inbounds [256 x i8], [256 x i8]* @73, i64 0, i64 %389
  %391 = load i8, i8* %390, align 1
  %392 = trunc i8 %391 to i1
  br i1 %392, label %393, label %.critedge4

; <label>:393:                                    ; preds = %385
  %394 = load i8*, i8** %8, align 8
  %395 = getelementptr inbounds i8, i8* %394, i32 1
  store i8* %395, i8** %8, align 8
  br label %381

.critedge4:                                       ; preds = %355, %381, %385, %349
  br label %39

; <label>:396:                                    ; preds = %310
  store i32 0, i32* %3, align 4
  br label %404

; <label>:397:                                    ; preds = %306
  %398 = getelementptr inbounds %4, %4* %309, i32 0, i32 13
  %399 = load i8, i8* %398, align 1
  %400 = trunc i8 %399 to i1
  %401 = load i32, i32* %11, align 4
  %402 = sub nsw i32 0, %401
  %403 = select i1 %400, i32 %402, i32 %401
  store i32 %403, i32* %3, align 4
  br label %404

; <label>:404:                                    ; preds = %397, %396
  %405 = load i32, i32* %3, align 4
  ret i32 %405
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #5

; Function Attrs: noinline nounwind uwtable
define internal i32 @311(i8*, i8*) #1 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  br label %5

; <label>:5:                                      ; preds = %13, %2
  %6 = load i8*, i8** %3, align 8
  %7 = load i8, i8* %6, align 1
  %8 = call zeroext i8 @270(i8 signext %7)
  %9 = zext i8 %8 to i64
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* @73, i64 0, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = trunc i8 %11 to i1
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %3, align 8
  br label %5

; <label>:16:                                     ; preds = %5
  br label %17

; <label>:17:                                     ; preds = %25, %16
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = call zeroext i8 @270(i8 signext %19)
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* @73, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = trunc i8 %23 to i1
  br i1 %24, label %25, label %28

; <label>:25:                                     ; preds = %17
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %4, align 8
  br label %17

; <label>:28:                                     ; preds = %17
  %29 = load i8*, i8** %3, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* @37, align 4
  %32 = call i32 @strnumcmp(i8* %29, i8* %30, i32 46, i32 %31)
  ret i32 %32
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @312(i8*, i8*) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca x86_fp80, align 16
  %9 = alloca x86_fp80, align 16
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call x86_fp80 @strtold(i8* %10, i8** %6) #11
  store x86_fp80 %11, x86_fp80* %8, align 16
  %12 = load i8*, i8** %5, align 8
  %13 = call x86_fp80 @strtold(i8* %12, i8** %7) #11
  store x86_fp80 %13, x86_fp80* %9, align 16
  %14 = load i8*, i8** %4, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp eq i8* %14, %15
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp eq i8* %17, %18
  br i1 %16, label %20, label %23

; <label>:20:                                     ; preds = %2
  %21 = zext i1 %19 to i64
  %22 = select i1 %19, i32 0, i32 -1
  store i32 %22, i32* %3, align 4
  br label %51

; <label>:23:                                     ; preds = %2
  br i1 %19, label %24, label %25

; <label>:24:                                     ; preds = %23
  store i32 1, i32* %3, align 4
  br label %51

; <label>:25:                                     ; preds = %23
  %26 = load x86_fp80, x86_fp80* %8, align 16
  %27 = load x86_fp80, x86_fp80* %9, align 16
  %28 = fcmp olt x86_fp80 %26, %27
  br i1 %28, label %49, label %29

; <label>:29:                                     ; preds = %25
  %30 = load x86_fp80, x86_fp80* %8, align 16
  %31 = load x86_fp80, x86_fp80* %9, align 16
  %32 = fcmp ogt x86_fp80 %30, %31
  br i1 %32, label %49, label %33

; <label>:33:                                     ; preds = %29
  %34 = load x86_fp80, x86_fp80* %8, align 16
  %35 = load x86_fp80, x86_fp80* %9, align 16
  %36 = fcmp oeq x86_fp80 %34, %35
  br i1 %36, label %49, label %37

; <label>:37:                                     ; preds = %33
  %38 = load x86_fp80, x86_fp80* %9, align 16
  %39 = load x86_fp80, x86_fp80* %9, align 16
  %40 = fcmp oeq x86_fp80 %38, %39
  br i1 %40, label %49, label %41

; <label>:41:                                     ; preds = %37
  %42 = load x86_fp80, x86_fp80* %8, align 16
  %43 = load x86_fp80, x86_fp80* %8, align 16
  %44 = fcmp oeq x86_fp80 %42, %43
  br i1 %44, label %49, label %45

; <label>:45:                                     ; preds = %41
  %46 = load i8*, i8** %4, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @317(i8* %46, i8* %47)
  br label %49

; <label>:49:                                     ; preds = %29, %37, %41, %45, %33, %25
  %50 = phi i32 [ -1, %25 ], [ 1, %29 ], [ 0, %33 ], [ -1, %37 ], [ %48, %45 ], [ 1, %41 ]
  store i32 %50, i32* %3, align 4
  br label %51

; <label>:51:                                     ; preds = %49, %24, %20
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @313(i8*, i8*) #1 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  br label %6

; <label>:6:                                      ; preds = %14, %2
  %7 = load i8*, i8** %3, align 8
  %8 = load i8, i8* %7, align 1
  %9 = call zeroext i8 @270(i8 signext %8)
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* @73, i64 0, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = trunc i8 %12 to i1
  br i1 %13, label %14, label %17

; <label>:14:                                     ; preds = %6
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %3, align 8
  br label %6

; <label>:17:                                     ; preds = %6
  br label %18

; <label>:18:                                     ; preds = %26, %17
  %19 = load i8*, i8** %4, align 8
  %20 = load i8, i8* %19, align 1
  %21 = call zeroext i8 @270(i8 signext %20)
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* @73, i64 0, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = trunc i8 %24 to i1
  br i1 %25, label %26, label %29

; <label>:26:                                     ; preds = %18
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %4, align 8
  br label %18

; <label>:29:                                     ; preds = %18
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @316(i8* %30) #13
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @316(i8* %32) #13
  %34 = sub nsw i32 %31, %33
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

; <label>:37:                                     ; preds = %29
  %38 = load i32, i32* %5, align 4
  br label %44

; <label>:39:                                     ; preds = %29
  %40 = load i8*, i8** %3, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* @37, align 4
  %43 = call i32 @strnumcmp(i8* %40, i8* %41, i32 46, i32 %42)
  br label %44

; <label>:44:                                     ; preds = %39, %37
  %45 = phi i32 [ %38, %37 ], [ %43, %39 ]
  ret i32 %45
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @314(i8* noalias, i64, i8* noalias, i64) #1 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [4000 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [2 x [4 x i32]], align 16
  %15 = alloca [2 x %11], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8, align 1
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %23 = getelementptr inbounds [4000 x i8], [4000 x i8]* %10, i32 0, i32 0
  store i8* %23, i8** %11, align 8
  store i64 4000, i64* %12, align 8
  store i8* null, i8** %13, align 8
  %24 = getelementptr inbounds [2 x %11], [2 x %11]* %15, i64 0, i64 0
  %25 = getelementptr inbounds [2 x %11], [2 x %11]* %15, i64 0, i64 1
  %26 = bitcast %11* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* bitcast (%11* @90 to i8*), i64 156, i32 4, i1 false)
  %27 = bitcast %11* %24 to i8*
  %28 = bitcast %11* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 156, i32 4, i1 false)
  %29 = load i8*, i8** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %16, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8* %34, i8** %17, align 8
  br label %35

; <label>:35:                                     ; preds = %4, %240
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %8, align 8
  %38 = add i64 %36, %37
  %39 = mul i64 3, %38
  %40 = add i64 %39, 2
  store i64 %40, i64* %18, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* %18, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %65

; <label>:44:                                     ; preds = %35
  %45 = load i64, i64* %18, align 8
  %46 = load i64, i64* %12, align 8
  %47 = mul i64 %46, 3
  %48 = udiv i64 %47, 2
  %49 = icmp ugt i64 %45, %48
  br i1 %49, label %50, label %52

; <label>:50:                                     ; preds = %44
  %51 = load i64, i64* %18, align 8
  br label %56

; <label>:52:                                     ; preds = %44
  %53 = load i64, i64* %12, align 8
  %54 = mul i64 %53, 3
  %55 = udiv i64 %54, 2
  br label %56

; <label>:56:                                     ; preds = %52, %50
  %57 = phi i64 [ %51, %50 ], [ %55, %52 ]
  store i64 %57, i64* %12, align 8
  %58 = load i8*, i8** %13, align 8
  call void @free(i8* %58) #11
  %59 = load i64, i64* %12, align 8
  %60 = call noalias i8* @malloc(i64 %59) #11
  store i8* %60, i8** %13, align 8
  store i8* %60, i8** %11, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %65, label %63

; <label>:63:                                     ; preds = %56
  %64 = getelementptr inbounds [4000 x i8], [4000 x i8]* %10, i32 0, i32 0
  store i8* %64, i8** %11, align 8
  store i64 4000, i64* %12, align 8
  br label %65

; <label>:65:                                     ; preds = %56, %63, %35
  %66 = load i8*, i8** %5, align 8
  %67 = load i8*, i8** %16, align 8
  %68 = icmp ult i8* %66, %67
  br i1 %68, label %69, label %75

; <label>:69:                                     ; preds = %65
  %70 = load i8*, i8** %11, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = load i64, i64* %12, align 8
  %73 = call i64 @315(i8* %70, i8* %71, i64 %72)
  %74 = add i64 %73, 1
  br label %75

; <label>:75:                                     ; preds = %65, %69
  %76 = phi i64 [ %74, %69 ], [ 0, %65 ]
  store i64 %76, i64* %19, align 8
  %77 = load i64, i64* %19, align 8
  %78 = load i64, i64* %12, align 8
  %79 = icmp ule i64 %77, %78
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %20, align 1
  %81 = load i8*, i8** %7, align 8
  %82 = load i8*, i8** %17, align 8
  %83 = icmp ult i8* %81, %82
  br i1 %83, label %84, label %102

; <label>:84:                                     ; preds = %75
  %85 = load i8, i8* %20, align 1
  %86 = trunc i8 %85 to i1
  %87 = load i8*, i8** %11, align 8
  %88 = load i64, i64* %19, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  %90 = select i1 %86, i8* %89, i8* null
  %91 = load i8*, i8** %7, align 8
  %92 = load i8, i8* %20, align 1
  %93 = trunc i8 %92 to i1
  br i1 %93, label %94, label %98

; <label>:94:                                     ; preds = %84
  %95 = load i64, i64* %12, align 8
  %96 = load i64, i64* %19, align 8
  %97 = sub i64 %95, %96
  br label %98

; <label>:98:                                     ; preds = %84, %94
  %99 = phi i64 [ %97, %94 ], [ 0, %84 ]
  %100 = call i64 @315(i8* %90, i8* %91, i64 %99)
  %101 = add i64 %100, 1
  br label %102

; <label>:102:                                    ; preds = %75, %98
  %103 = phi i64 [ %101, %98 ], [ 0, %75 ]
  store i64 %103, i64* %21, align 8
  %104 = load i8, i8* %20, align 1
  %105 = trunc i8 %104 to i1
  br i1 %105, label %106, label %112

; <label>:106:                                    ; preds = %102
  %107 = load i64, i64* %19, align 8
  %108 = load i64, i64* %21, align 8
  %109 = add i64 %107, %108
  %110 = load i64, i64* %12, align 8
  %111 = icmp ule i64 %109, %110
  br i1 %111, label %145, label %112

; <label>:112:                                    ; preds = %106, %102
  %113 = load i64, i64* %19, align 8
  %114 = load i64, i64* %21, align 8
  %115 = add i64 %113, %114
  store i64 %115, i64* %12, align 8
  %116 = load i64, i64* %12, align 8
  %117 = icmp ult i64 %116, 6148914691236517205
  br i1 %117, label %118, label %122

; <label>:118:                                    ; preds = %112
  %119 = load i64, i64* %12, align 8
  %120 = mul i64 %119, 3
  %121 = udiv i64 %120, 2
  store i64 %121, i64* %12, align 8
  br label %122

; <label>:122:                                    ; preds = %118, %112
  %123 = load i8*, i8** %13, align 8
  call void @free(i8* %123) #11
  %124 = load i64, i64* %12, align 8
  %125 = call noalias i8* @xmalloc(i64 %124)
  store i8* %125, i8** %13, align 8
  store i8* %125, i8** %11, align 8
  %126 = load i8*, i8** %5, align 8
  %127 = load i8*, i8** %16, align 8
  %128 = icmp ult i8* %126, %127
  br i1 %128, label %129, label %134

; <label>:129:                                    ; preds = %122
  %130 = load i8*, i8** %11, align 8
  %131 = load i8*, i8** %5, align 8
  %132 = load i64, i64* %19, align 8
  %133 = call i64 @strxfrm(i8* %130, i8* %131, i64 %132) #11
  br label %134

; <label>:134:                                    ; preds = %129, %122
  %135 = load i8*, i8** %7, align 8
  %136 = load i8*, i8** %17, align 8
  %137 = icmp ult i8* %135, %136
  br i1 %137, label %138, label %145

; <label>:138:                                    ; preds = %134
  %139 = load i8*, i8** %11, align 8
  %140 = load i64, i64* %19, align 8
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  %142 = load i8*, i8** %7, align 8
  %143 = load i64, i64* %21, align 8
  %144 = call i64 @strxfrm(i8* %141, i8* %142, i64 %143) #11
  br label %145

; <label>:145:                                    ; preds = %134, %138, %106
  %146 = load i8*, i8** %5, align 8
  %147 = load i8*, i8** %16, align 8
  %148 = icmp ult i8* %146, %147
  br i1 %148, label %149, label %155

; <label>:149:                                    ; preds = %145
  %150 = load i8*, i8** %5, align 8
  %151 = call i64 @strlen(i8* %150) #13
  %152 = add i64 %151, 1
  %153 = load i8*, i8** %5, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 %152
  store i8* %154, i8** %5, align 8
  br label %155

; <label>:155:                                    ; preds = %149, %145
  %156 = load i8*, i8** %7, align 8
  %157 = load i8*, i8** %17, align 8
  %158 = icmp ult i8* %156, %157
  br i1 %158, label %159, label %165

; <label>:159:                                    ; preds = %155
  %160 = load i8*, i8** %7, align 8
  %161 = call i64 @strlen(i8* %160) #13
  %162 = add i64 %161, 1
  %163 = load i8*, i8** %7, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 %162
  store i8* %164, i8** %7, align 8
  br label %165

; <label>:165:                                    ; preds = %159, %155
  %166 = load i8*, i8** %5, align 8
  %167 = load i8*, i8** %16, align 8
  %168 = icmp ult i8* %166, %167
  br i1 %168, label %205, label %169

; <label>:169:                                    ; preds = %165
  %170 = load i8*, i8** %7, align 8
  %171 = load i8*, i8** %17, align 8
  %172 = icmp ult i8* %170, %171
  br i1 %172, label %205, label %173

; <label>:173:                                    ; preds = %169
  %174 = load i64, i64* %19, align 8
  store i64 %174, i64* %6, align 8
  %175 = load i8*, i8** %11, align 8
  store i8* %175, i8** %5, align 8
  %176 = load i64, i64* %21, align 8
  store i64 %176, i64* %8, align 8
  %177 = load i8*, i8** %11, align 8
  %178 = load i64, i64* %19, align 8
  %179 = getelementptr inbounds i8, i8* %177, i64 %178
  store i8* %179, i8** %7, align 8
  %180 = load i8*, i8** %5, align 8
  %181 = load i64, i64* %6, align 8
  %182 = getelementptr inbounds [2 x %11], [2 x %11]* %15, i64 0, i64 0
  call void @md5_process_bytes(i8* %180, i64 %181, %11* %182) #11
  %183 = getelementptr inbounds [2 x %11], [2 x %11]* %15, i64 0, i64 0
  %184 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %14, i64 0, i64 0
  %185 = getelementptr inbounds [4 x i32], [4 x i32]* %184, i32 0, i32 0
  %186 = bitcast i32* %185 to i8*
  %187 = call i8* @md5_finish_ctx(%11* %183, i8* %186) #11
  %188 = load i8*, i8** %7, align 8
  %189 = load i64, i64* %8, align 8
  %190 = getelementptr inbounds [2 x %11], [2 x %11]* %15, i64 0, i64 1
  call void @md5_process_bytes(i8* %188, i64 %189, %11* %190) #11
  %191 = getelementptr inbounds [2 x %11], [2 x %11]* %15, i64 0, i64 1
  %192 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %14, i64 0, i64 1
  %193 = getelementptr inbounds [4 x i32], [4 x i32]* %192, i32 0, i32 0
  %194 = bitcast i32* %193 to i8*
  %195 = call i8* @md5_finish_ctx(%11* %191, i8* %194) #11
  %196 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %14, i64 0, i64 0
  %197 = getelementptr inbounds [4 x i32], [4 x i32]* %196, i32 0, i32 0
  %198 = bitcast i32* %197 to i8*
  %199 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %14, i64 0, i64 1
  %200 = getelementptr inbounds [4 x i32], [4 x i32]* %199, i32 0, i32 0
  %201 = bitcast i32* %200 to i8*
  %202 = call i32 @memcmp(i8* %198, i8* %201, i64 16) #13
  store i32 %202, i32* %22, align 4
  %203 = load i32, i32* %22, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %268, label %241

; <label>:205:                                    ; preds = %169, %165
  %206 = load i8*, i8** %11, align 8
  %207 = load i64, i64* %19, align 8
  %208 = getelementptr inbounds [2 x %11], [2 x %11]* %15, i64 0, i64 0
  call void @md5_process_bytes(i8* %206, i64 %207, %11* %208) #11
  %209 = load i8*, i8** %11, align 8
  %210 = load i64, i64* %19, align 8
  %211 = getelementptr inbounds i8, i8* %209, i64 %210
  %212 = load i64, i64* %21, align 8
  %213 = getelementptr inbounds [2 x %11], [2 x %11]* %15, i64 0, i64 1
  call void @md5_process_bytes(i8* %211, i64 %212, %11* %213) #11
  %214 = load i32, i32* %9, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %240, label %216

; <label>:216:                                    ; preds = %205
  %217 = load i8*, i8** %11, align 8
  %218 = load i8*, i8** %11, align 8
  %219 = load i64, i64* %19, align 8
  %220 = getelementptr inbounds i8, i8* %218, i64 %219
  %221 = load i64, i64* %19, align 8
  %222 = load i64, i64* %21, align 8
  %223 = icmp ult i64 %221, %222
  %224 = load i64, i64* %19, align 8
  %225 = load i64, i64* %21, align 8
  %226 = select i1 %223, i64 %224, i64 %225
  %227 = call i32 @memcmp(i8* %217, i8* %220, i64 %226) #13
  store i32 %227, i32* %9, align 4
  %228 = load i32, i32* %9, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %240, label %230

; <label>:230:                                    ; preds = %216
  %231 = load i64, i64* %19, align 8
  %232 = load i64, i64* %21, align 8
  %233 = icmp ugt i64 %231, %232
  %234 = zext i1 %233 to i32
  %235 = load i64, i64* %19, align 8
  %236 = load i64, i64* %21, align 8
  %237 = icmp ult i64 %235, %236
  %238 = zext i1 %237 to i32
  %239 = sub nsw i32 %234, %238
  store i32 %239, i32* %9, align 4
  br label %240

; <label>:240:                                    ; preds = %216, %230, %205
  br label %35

; <label>:241:                                    ; preds = %173
  %242 = load i32, i32* %9, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %266, label %244

; <label>:244:                                    ; preds = %241
  %245 = load i8*, i8** %5, align 8
  %246 = load i8*, i8** %7, align 8
  %247 = load i64, i64* %6, align 8
  %248 = load i64, i64* %8, align 8
  %249 = icmp ult i64 %247, %248
  %250 = load i64, i64* %6, align 8
  %251 = load i64, i64* %8, align 8
  %252 = select i1 %249, i64 %250, i64 %251
  %253 = call i32 @memcmp(i8* %245, i8* %246, i64 %252) #13
  store i32 %253, i32* %9, align 4
  %254 = load i32, i32* %9, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %266, label %256

; <label>:256:                                    ; preds = %244
  %257 = load i64, i64* %6, align 8
  %258 = load i64, i64* %8, align 8
  %259 = icmp ugt i64 %257, %258
  %260 = zext i1 %259 to i32
  %261 = load i64, i64* %6, align 8
  %262 = load i64, i64* %8, align 8
  %263 = icmp ult i64 %261, %262
  %264 = zext i1 %263 to i32
  %265 = sub nsw i32 %260, %264
  store i32 %265, i32* %9, align 4
  br label %266

; <label>:266:                                    ; preds = %244, %256, %241
  %267 = load i32, i32* %9, align 4
  store i32 %267, i32* %22, align 4
  br label %268

; <label>:268:                                    ; preds = %266, %173
  %269 = load i8*, i8** %13, align 8
  call void @free(i8* %269) #11
  %270 = load i32, i32* %22, align 4
  ret i32 %270
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: noinline nounwind uwtable
define internal i64 @315(i8* noalias, i8* noalias, i64) #1 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = call i32* @__errno_location() #15
  store i32 0, i32* %8, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i64 @strxfrm(i8* %9, i8* %10, i64 %11) #11
  store i64 %12, i64* %7, align 8
  %13 = call i32* @__errno_location() #15
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

; <label>:16:                                     ; preds = %3
  %17 = call i32* @__errno_location() #15
  %18 = load i32, i32* %17, align 4
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @91, i32 0, i32 0))
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @92, i32 0, i32 0))
  %19 = load i8*, i8** %5, align 8
  %20 = call i8* @quotearg_n_style(i32 0, i32 6, i8* %19)
  call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @93, i32 0, i32 0), i8* %20)
  br label %21

; <label>:21:                                     ; preds = %16, %3
  %22 = load i64, i64* %7, align 8
  ret i64 %22
}

; Function Attrs: nounwind
declare i64 @strxfrm(i8*, i8*, i64) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: noinline nounwind readonly uwtable
define internal i32 @316(i8*) #8 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 45
  %13 = zext i1 %12 to i8
  store i8 %13, i8* %4, align 1
  %14 = load i8*, i8** %3, align 8
  %15 = load i8, i8* %4, align 1
  %16 = trunc i8 %15 to i1
  %17 = zext i1 %16 to i32
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %14, i64 %18
  store i8* %19, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %20

; <label>:20:                                     ; preds = %34, %1
  br label %21

; <label>:21:                                     ; preds = %30, %20
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %5, align 8
  %24 = load i8, i8* %22, align 1
  store i8 %24, i8* %7, align 1
  %25 = zext i8 %24 to i32
  %26 = sub i32 %25, 48
  %27 = icmp ule i32 %26, 9
  %28 = load i8, i8* %7, align 1
  %29 = zext i8 %28 to i32
  br i1 %27, label %30, label %34

; <label>:30:                                     ; preds = %21
  %31 = sub nsw i32 %29, 48
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %21

; <label>:34:                                     ; preds = %21
  %35 = icmp eq i32 %29, 44
  br i1 %35, label %20, label %36

; <label>:36:                                     ; preds = %34
  %37 = load i8, i8* %7, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %38, 46
  br i1 %39, label %40, label %54

; <label>:40:                                     ; preds = %36
  br label %41

; <label>:41:                                     ; preds = %48, %40
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %5, align 8
  %44 = load i8, i8* %42, align 1
  store i8 %44, i8* %7, align 1
  %45 = zext i8 %44 to i32
  %46 = sub i32 %45, 48
  %47 = icmp ule i32 %46, 9
  br i1 %47, label %48, label %54

; <label>:48:                                     ; preds = %41
  %49 = load i8, i8* %7, align 1
  %50 = zext i8 %49 to i32
  %51 = sub nsw i32 %50, 48
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %41

; <label>:54:                                     ; preds = %41, %36
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

; <label>:57:                                     ; preds = %54
  %58 = load i8, i8* %7, align 1
  %59 = zext i8 %58 to i64
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* @74, i64 0, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  store i32 %62, i32* %8, align 4
  %63 = load i8, i8* %4, align 1
  %64 = trunc i8 %63 to i1
  %65 = load i32, i32* %8, align 4
  %66 = sub nsw i32 0, %65
  %67 = select i1 %64, i32 %66, i32 %65
  store i32 %67, i32* %2, align 4
  br label %69

; <label>:68:                                     ; preds = %54
  store i32 0, i32* %2, align 4
  br label %69

; <label>:69:                                     ; preds = %68, %57
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @317(i8*, i8*) #1 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca x86_fp80, align 16
  %6 = alloca x86_fp80, align 16
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = bitcast x86_fp80* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 16, i32 16, i1 false)
  %8 = load i8*, i8** %3, align 8
  %9 = call x86_fp80 @strtold(i8* %8, i8** null) #11
  store x86_fp80 %9, x86_fp80* %5, align 16
  %10 = bitcast x86_fp80* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 16, i32 16, i1 false)
  %11 = load i8*, i8** %4, align 8
  %12 = call x86_fp80 @strtold(i8* %11, i8** null) #11
  store x86_fp80 %12, x86_fp80* %6, align 16
  %13 = bitcast x86_fp80* %5 to i8*
  %14 = bitcast x86_fp80* %6 to i8*
  %15 = call i32 @memcmp(i8* %13, i8* %14, i64 16) #13
  ret i32 %15
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

; Function Attrs: nounwind
declare i32 @pthread_cond_destroy(%34*) #4

; Function Attrs: noinline nounwind uwtable
define internal i8* @318(i8*) #1 {
  %2 = alloca i8*, align 8
  %3 = alloca %40*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %40*
  store %40* %5, %40** %3, align 8
  %6 = load %40*, %40** %3, align 8
  %7 = getelementptr inbounds %40, %40* %6, i32 0, i32 0
  %8 = load %9*, %9** %7, align 8
  %9 = load %40*, %40** %3, align 8
  %10 = getelementptr inbounds %40, %40* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load %40*, %40** %3, align 8
  %13 = getelementptr inbounds %40, %40* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load %40*, %40** %3, align 8
  %16 = getelementptr inbounds %40, %40* %15, i32 0, i32 3
  %17 = load %36*, %36** %16, align 8
  %18 = load %40*, %40** %3, align 8
  %19 = getelementptr inbounds %40, %40* %18, i32 0, i32 4
  %20 = load %29*, %29** %19, align 8
  %21 = load %40*, %40** %3, align 8
  %22 = getelementptr inbounds %40, %40* %21, i32 0, i32 5
  %23 = load %0*, %0** %22, align 8
  %24 = load %40*, %40** %3, align 8
  %25 = getelementptr inbounds %40, %40* %24, i32 0, i32 6
  %26 = load i8*, i8** %25, align 8
  call void @294(%9* %8, i64 %11, i64 %14, %36* %17, %29* %20, %0* %23, i8* %26)
  ret i8* null
}

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %41*, i8* (i8*)*, i8*) #4

declare i32 @pthread_join(i64, i8**) #2

; Function Attrs: noinline nounwind uwtable
define internal void @319(%9* noalias, i64, %9* noalias, i1 zeroext) #1 {
  %5 = alloca %9*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %9*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %9*, align 8
  %13 = alloca %9*, align 8
  %14 = alloca %9*, align 8
  %15 = alloca %9*, align 8
  store %9* %0, %9** %5, align 8
  store i64 %1, i64* %6, align 8
  store %9* %2, %9** %7, align 8
  %16 = zext i1 %3 to i8
  store i8 %16, i8* %8, align 1
  %17 = load i64, i64* %6, align 8
  %18 = icmp eq i64 %17, 2
  br i1 %18, label %19, label %70

; <label>:19:                                     ; preds = %4
  %20 = load %9*, %9** %5, align 8
  %21 = getelementptr inbounds %9, %9* %20, i64 -1
  %22 = load %9*, %9** %5, align 8
  %23 = getelementptr inbounds %9, %9* %22, i64 -2
  %24 = call i32 @301(%9* %21, %9* %23)
  %25 = icmp slt i32 0, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %9, align 4
  %27 = load i8, i8* %8, align 1
  %28 = trunc i8 %27 to i1
  br i1 %28, label %29, label %48

; <label>:29:                                     ; preds = %19
  %30 = load %9*, %9** %7, align 8
  %31 = getelementptr inbounds %9, %9* %30, i64 -1
  %32 = load %9*, %9** %5, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sub nsw i32 -1, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %9, %9* %32, i64 %35
  %37 = bitcast %9* %31 to i8*
  %38 = bitcast %9* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 32, i32 8, i1 false)
  %39 = load %9*, %9** %7, align 8
  %40 = getelementptr inbounds %9, %9* %39, i64 -2
  %41 = load %9*, %9** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 -2, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %9, %9* %41, i64 %44
  %46 = bitcast %9* %40 to i8*
  %47 = bitcast %9* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 32, i32 8, i1 false)
  br label %124

; <label>:48:                                     ; preds = %19
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %124

; <label>:51:                                     ; preds = %48
  %52 = load %9*, %9** %7, align 8
  %53 = getelementptr inbounds %9, %9* %52, i64 -1
  %54 = load %9*, %9** %5, align 8
  %55 = getelementptr inbounds %9, %9* %54, i64 -1
  %56 = bitcast %9* %53 to i8*
  %57 = bitcast %9* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %57, i64 32, i32 8, i1 false)
  %58 = load %9*, %9** %5, align 8
  %59 = getelementptr inbounds %9, %9* %58, i64 -1
  %60 = load %9*, %9** %5, align 8
  %61 = getelementptr inbounds %9, %9* %60, i64 -2
  %62 = bitcast %9* %59 to i8*
  %63 = bitcast %9* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 32, i32 8, i1 false)
  %64 = load %9*, %9** %5, align 8
  %65 = getelementptr inbounds %9, %9* %64, i64 -2
  %66 = load %9*, %9** %7, align 8
  %67 = getelementptr inbounds %9, %9* %66, i64 -1
  %68 = bitcast %9* %65 to i8*
  %69 = bitcast %9* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 32, i32 8, i1 false)
  br label %124

; <label>:70:                                     ; preds = %4
  %71 = load i64, i64* %6, align 8
  %72 = udiv i64 %71, 2
  store i64 %72, i64* %10, align 8
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* %10, align 8
  %75 = sub i64 %73, %74
  store i64 %75, i64* %11, align 8
  %76 = load %9*, %9** %5, align 8
  store %9* %76, %9** %12, align 8
  %77 = load %9*, %9** %5, align 8
  %78 = load i64, i64* %10, align 8
  %79 = sub i64 0, %78
  %80 = getelementptr inbounds %9, %9* %77, i64 %79
  store %9* %80, %9** %13, align 8
  %81 = load %9*, %9** %13, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load %9*, %9** %7, align 8
  %84 = load i8, i8* %8, align 1
  %85 = trunc i8 %84 to i1
  %86 = load i64, i64* %10, align 8
  %87 = select i1 %85, i64 %86, i64 0
  %88 = sub i64 0, %87
  %89 = getelementptr inbounds %9, %9* %83, i64 %88
  %90 = load i8, i8* %8, align 1
  %91 = trunc i8 %90 to i1
  call void @319(%9* %81, i64 %82, %9* %89, i1 zeroext %91)
  %92 = load i64, i64* %10, align 8
  %93 = icmp ult i64 1, %92
  br i1 %93, label %94, label %101

; <label>:94:                                     ; preds = %70
  %95 = load %9*, %9** %12, align 8
  %96 = load i64, i64* %10, align 8
  %97 = load %9*, %9** %7, align 8
  %98 = load i8, i8* %8, align 1
  %99 = trunc i8 %98 to i1
  %100 = xor i1 %99, true
  call void @319(%9* %95, i64 %96, %9* %97, i1 zeroext %100)
  br label %111

; <label>:101:                                    ; preds = %70
  %102 = load i8, i8* %8, align 1
  %103 = trunc i8 %102 to i1
  br i1 %103, label %111, label %104

; <label>:104:                                    ; preds = %101
  %105 = load %9*, %9** %7, align 8
  %106 = getelementptr inbounds %9, %9* %105, i64 -1
  %107 = load %9*, %9** %12, align 8
  %108 = getelementptr inbounds %9, %9* %107, i64 -1
  %109 = bitcast %9* %106 to i8*
  %110 = bitcast %9* %108 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %109, i8* %110, i64 32, i32 8, i1 false)
  br label %111

; <label>:111:                                    ; preds = %101, %104, %94
  %112 = load i8, i8* %8, align 1
  %113 = trunc i8 %112 to i1
  br i1 %113, label %114, label %117

; <label>:114:                                    ; preds = %111
  %115 = load %9*, %9** %7, align 8
  store %9* %115, %9** %14, align 8
  %116 = load %9*, %9** %5, align 8
  store %9* %116, %9** %15, align 8
  br label %120

; <label>:117:                                    ; preds = %111
  %118 = load %9*, %9** %5, align 8
  store %9* %118, %9** %14, align 8
  %119 = load %9*, %9** %7, align 8
  store %9* %119, %9** %15, align 8
  br label %120

; <label>:120:                                    ; preds = %117, %114
  %121 = load %9*, %9** %14, align 8
  %122 = load i64, i64* %6, align 8
  %123 = load %9*, %9** %15, align 8
  call void @328(%9* %121, i64 %122, %9* %123)
  br label %124

; <label>:124:                                    ; preds = %29, %51, %48, %120
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @320(%29*, %36*) #1 {
  %3 = alloca %29*, align 8
  %4 = alloca %36*, align 8
  store %29* %0, %29** %3, align 8
  store %36* %1, %36** %4, align 8
  %5 = load %29*, %29** %3, align 8
  %6 = getelementptr inbounds %29, %29* %5, i32 0, i32 1
  %7 = call i32 @pthread_mutex_lock(%31* %6) #11
  %8 = load %29*, %29** %3, align 8
  %9 = getelementptr inbounds %29, %29* %8, i32 0, i32 0
  %10 = load %30*, %30** %9, align 8
  %11 = load %36*, %36** %4, align 8
  %12 = bitcast %36* %11 to i8*
  %13 = call i32 @heap_insert(%30* %10, i8* %12)
  %14 = load %36*, %36** %4, align 8
  %15 = getelementptr inbounds %36, %36* %14, i32 0, i32 11
  store i8 1, i8* %15, align 4
  %16 = load %29*, %29** %3, align 8
  %17 = getelementptr inbounds %29, %29* %16, i32 0, i32 1
  %18 = call i32 @pthread_mutex_unlock(%31* %17) #11
  %19 = load %29*, %29** %3, align 8
  %20 = getelementptr inbounds %29, %29* %19, i32 0, i32 2
  %21 = call i32 @pthread_cond_signal(%34* %20) #11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @321(%29*, i64, %0*, i8*) #1 {
  %5 = alloca %29*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %0*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %36*, align 8
  store %29* %0, %29** %5, align 8
  store i64 %1, i64* %6, align 8
  store %0* %2, %0** %7, align 8
  store i8* %3, i8** %8, align 8
  br label %10

; <label>:10:                                     ; preds = %4, %21
  %11 = load %29*, %29** %5, align 8
  %12 = call %36* @322(%29* %11)
  store %36* %12, %36** %9, align 8
  %13 = load %36*, %36** %9, align 8
  %14 = getelementptr inbounds %36, %36* %13, i32 0, i32 10
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 0
  %17 = load %36*, %36** %9, align 8
  br i1 %16, label %18, label %21

; <label>:18:                                     ; preds = %10
  call void @323(%36* %17)
  %19 = load %29*, %29** %5, align 8
  %20 = load %36*, %36** %9, align 8
  call void @320(%29* %19, %36* %20)
  ret void

; <label>:21:                                     ; preds = %10
  %22 = load i64, i64* %6, align 8
  %23 = load %0*, %0** %7, align 8
  %24 = load i8*, i8** %8, align 8
  call void @324(%36* %17, i64 %22, %0* %23, i8* %24)
  %25 = load %29*, %29** %5, align 8
  %26 = load %36*, %36** %9, align 8
  call void @325(%29* %25, %36* %26)
  %27 = load %29*, %29** %5, align 8
  %28 = load %36*, %36** %9, align 8
  call void @326(%29* %27, %36* %28)
  %29 = load %36*, %36** %9, align 8
  call void @323(%36* %29)
  br label %10
}

; Function Attrs: noinline nounwind uwtable
define internal %36* @322(%29*) #1 {
  %2 = alloca %29*, align 8
  %3 = alloca %36*, align 8
  store %29* %0, %29** %2, align 8
  %4 = load %29*, %29** %2, align 8
  %5 = getelementptr inbounds %29, %29* %4, i32 0, i32 1
  %6 = call i32 @pthread_mutex_lock(%31* %5) #11
  br label %7

; <label>:7:                                      ; preds = %16, %1
  %8 = load %29*, %29** %2, align 8
  %9 = getelementptr inbounds %29, %29* %8, i32 0, i32 0
  %10 = load %30*, %30** %9, align 8
  %11 = call i8* @heap_remove_top(%30* %10)
  %12 = bitcast i8* %11 to %36*
  store %36* %12, %36** %3, align 8
  %13 = icmp ne %36* %12, null
  %14 = xor i1 %13, true
  %15 = load %29*, %29** %2, align 8
  br i1 %14, label %16, label %21

; <label>:16:                                     ; preds = %7
  %17 = getelementptr inbounds %29, %29* %15, i32 0, i32 2
  %18 = load %29*, %29** %2, align 8
  %19 = getelementptr inbounds %29, %29* %18, i32 0, i32 1
  %20 = call i32 @pthread_cond_wait(%34* %17, %31* %19)
  br label %7

; <label>:21:                                     ; preds = %7
  %22 = getelementptr inbounds %29, %29* %15, i32 0, i32 1
  %23 = call i32 @pthread_mutex_unlock(%31* %22) #11
  %24 = load %36*, %36** %3, align 8
  call void @327(%36* %24)
  %25 = load %36*, %36** %3, align 8
  %26 = getelementptr inbounds %36, %36* %25, i32 0, i32 11
  store i8 0, i8* %26, align 4
  %27 = load %36*, %36** %3, align 8
  ret %36* %27
}

; Function Attrs: noinline nounwind uwtable
define internal void @323(%36*) #1 {
  %2 = alloca %36*, align 8
  store %36* %0, %36** %2, align 8
  %3 = load %36*, %36** %2, align 8
  %4 = getelementptr inbounds %36, %36* %3, i32 0, i32 12
  %5 = call i32 @pthread_mutex_unlock(%31* %4) #11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @324(%36* noalias, i64, %0*, i8*) #1 {
  %5 = alloca %36*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %0*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %9*, align 8
  %10 = alloca %9*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %9*, align 8
  store %36* %0, %36** %5, align 8
  store i64 %1, i64* %6, align 8
  store %0* %2, %0** %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = load %36*, %36** %5, align 8
  %16 = getelementptr inbounds %36, %36* %15, i32 0, i32 0
  %17 = load %9*, %9** %16, align 8
  store %9* %17, %9** %9, align 8
  %18 = load %36*, %36** %5, align 8
  %19 = getelementptr inbounds %36, %36* %18, i32 0, i32 1
  %20 = load %9*, %9** %19, align 8
  store %9* %20, %9** %10, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load %36*, %36** %5, align 8
  %23 = getelementptr inbounds %36, %36* %22, i32 0, i32 10
  %24 = load i32, i32* %23, align 8
  %25 = add i32 %24, 1
  %26 = mul i32 2, %25
  %27 = zext i32 %26 to i64
  %28 = lshr i64 %21, %27
  %29 = add i64 %28, 1
  store i64 %29, i64* %11, align 8
  %30 = load %36*, %36** %5, align 8
  %31 = getelementptr inbounds %36, %36* %30, i32 0, i32 10
  %32 = load i32, i32* %31, align 8
  %33 = icmp ugt i32 %32, 1
  br i1 %33, label %34, label %161

; <label>:34:                                     ; preds = %4
  %35 = load %36*, %36** %5, align 8
  %36 = getelementptr inbounds %36, %36* %35, i32 0, i32 4
  %37 = load %9**, %9*** %36, align 8
  %38 = load %9*, %9** %37, align 8
  store %9* %38, %9** %14, align 8
  br label %39

; <label>:39:                                     ; preds = %85, %34
  %40 = load %36*, %36** %5, align 8
  %41 = getelementptr inbounds %36, %36* %40, i32 0, i32 0
  %42 = load %9*, %9** %41, align 8
  %43 = load %36*, %36** %5, align 8
  %44 = getelementptr inbounds %36, %36* %43, i32 0, i32 2
  %45 = load %9*, %9** %44, align 8
  %46 = icmp ne %9* %42, %45
  br i1 %46, label %47, label %.critedge

; <label>:47:                                     ; preds = %39
  %48 = load %36*, %36** %5, align 8
  %49 = getelementptr inbounds %36, %36* %48, i32 0, i32 1
  %50 = load %9*, %9** %49, align 8
  %51 = load %36*, %36** %5, align 8
  %52 = getelementptr inbounds %36, %36* %51, i32 0, i32 3
  %53 = load %9*, %9** %52, align 8
  %54 = icmp ne %9* %50, %53
  br i1 %54, label %55, label %.critedge

; <label>:55:                                     ; preds = %47
  %56 = load i64, i64* %11, align 8
  %57 = add i64 %56, -1
  store i64 %57, i64* %11, align 8
  %58 = icmp ne i64 %56, 0
  br i1 %58, label %59, label %.critedge

; <label>:59:                                     ; preds = %55
  %60 = load %36*, %36** %5, align 8
  %61 = getelementptr inbounds %36, %36* %60, i32 0, i32 0
  %62 = load %9*, %9** %61, align 8
  %63 = getelementptr inbounds %9, %9* %62, i64 -1
  %64 = load %36*, %36** %5, align 8
  %65 = getelementptr inbounds %36, %36* %64, i32 0, i32 1
  %66 = load %9*, %9** %65, align 8
  %67 = getelementptr inbounds %9, %9* %66, i64 -1
  %68 = call i32 @301(%9* %63, %9* %67)
  %69 = icmp sle i32 %68, 0
  %70 = load %9*, %9** %14, align 8
  %71 = getelementptr inbounds %9, %9* %70, i32 -1
  store %9* %71, %9** %14, align 8
  %72 = load %36*, %36** %5, align 8
  br i1 %69, label %73, label %79

; <label>:73:                                     ; preds = %59
  %74 = getelementptr inbounds %36, %36* %72, i32 0, i32 0
  %75 = load %9*, %9** %74, align 8
  %76 = getelementptr inbounds %9, %9* %75, i32 -1
  store %9* %76, %9** %74, align 8
  %77 = bitcast %9* %71 to i8*
  %78 = bitcast %9* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %77, i8* %78, i64 32, i32 8, i1 false)
  br label %85

; <label>:79:                                     ; preds = %59
  %80 = getelementptr inbounds %36, %36* %72, i32 0, i32 1
  %81 = load %9*, %9** %80, align 8
  %82 = getelementptr inbounds %9, %9* %81, i32 -1
  store %9* %82, %9** %80, align 8
  %83 = bitcast %9* %71 to i8*
  %84 = bitcast %9* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %83, i8* %84, i64 32, i32 8, i1 false)
  br label %85

; <label>:85:                                     ; preds = %79, %73
  br label %39

.critedge:                                        ; preds = %39, %47, %55
  %86 = load %9*, %9** %9, align 8
  %87 = load %36*, %36** %5, align 8
  %88 = getelementptr inbounds %36, %36* %87, i32 0, i32 0
  %89 = load %9*, %9** %88, align 8
  %90 = ptrtoint %9* %86 to i64
  %91 = ptrtoint %9* %89 to i64
  %92 = sub i64 %90, %91
  %93 = sdiv exact i64 %92, 32
  store i64 %93, i64* %12, align 8
  %94 = load %9*, %9** %10, align 8
  %95 = load %36*, %36** %5, align 8
  %96 = getelementptr inbounds %36, %36* %95, i32 0, i32 1
  %97 = load %9*, %9** %96, align 8
  %98 = ptrtoint %9* %94 to i64
  %99 = ptrtoint %9* %97 to i64
  %100 = sub i64 %98, %99
  %101 = sdiv exact i64 %100, 32
  store i64 %101, i64* %13, align 8
  %102 = load %36*, %36** %5, align 8
  %103 = getelementptr inbounds %36, %36* %102, i32 0, i32 6
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %13, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %129

; <label>:107:                                    ; preds = %.critedge
  br label %108

; <label>:108:                                    ; preds = %120, %107
  %109 = load %36*, %36** %5, align 8
  %110 = getelementptr inbounds %36, %36* %109, i32 0, i32 0
  %111 = load %9*, %9** %110, align 8
  %112 = load %36*, %36** %5, align 8
  %113 = getelementptr inbounds %36, %36* %112, i32 0, i32 2
  %114 = load %9*, %9** %113, align 8
  %115 = icmp ne %9* %111, %114
  br i1 %115, label %116, label %.critedge2

; <label>:116:                                    ; preds = %108
  %117 = load i64, i64* %11, align 8
  %118 = add i64 %117, -1
  store i64 %118, i64* %11, align 8
  %119 = icmp ne i64 %117, 0
  br i1 %119, label %120, label %.critedge2

; <label>:120:                                    ; preds = %116
  %121 = load %9*, %9** %14, align 8
  %122 = getelementptr inbounds %9, %9* %121, i32 -1
  store %9* %122, %9** %14, align 8
  %123 = load %36*, %36** %5, align 8
  %124 = getelementptr inbounds %36, %36* %123, i32 0, i32 0
  %125 = load %9*, %9** %124, align 8
  %126 = getelementptr inbounds %9, %9* %125, i32 -1
  store %9* %126, %9** %124, align 8
  %127 = bitcast %9* %122 to i8*
  %128 = bitcast %9* %126 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %127, i8* %128, i64 32, i32 8, i1 false)
  br label %108

; <label>:129:                                    ; preds = %.critedge
  %130 = load %36*, %36** %5, align 8
  %131 = getelementptr inbounds %36, %36* %130, i32 0, i32 5
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %12, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %.critedge2

; <label>:135:                                    ; preds = %129
  br label %136

; <label>:136:                                    ; preds = %148, %135
  %137 = load %36*, %36** %5, align 8
  %138 = getelementptr inbounds %36, %36* %137, i32 0, i32 1
  %139 = load %9*, %9** %138, align 8
  %140 = load %36*, %36** %5, align 8
  %141 = getelementptr inbounds %36, %36* %140, i32 0, i32 3
  %142 = load %9*, %9** %141, align 8
  %143 = icmp ne %9* %139, %142
  br i1 %143, label %144, label %.critedge2

; <label>:144:                                    ; preds = %136
  %145 = load i64, i64* %11, align 8
  %146 = add i64 %145, -1
  store i64 %146, i64* %11, align 8
  %147 = icmp ne i64 %145, 0
  br i1 %147, label %148, label %.critedge2

; <label>:148:                                    ; preds = %144
  %149 = load %9*, %9** %14, align 8
  %150 = getelementptr inbounds %9, %9* %149, i32 -1
  store %9* %150, %9** %14, align 8
  %151 = load %36*, %36** %5, align 8
  %152 = getelementptr inbounds %36, %36* %151, i32 0, i32 1
  %153 = load %9*, %9** %152, align 8
  %154 = getelementptr inbounds %9, %9* %153, i32 -1
  store %9* %154, %9** %152, align 8
  %155 = bitcast %9* %150 to i8*
  %156 = bitcast %9* %154 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %155, i8* %156, i64 32, i32 8, i1 false)
  br label %136

.critedge2:                                       ; preds = %129, %136, %144, %116, %108
  %157 = load %9*, %9** %14, align 8
  %158 = load %36*, %36** %5, align 8
  %159 = getelementptr inbounds %36, %36* %158, i32 0, i32 4
  %160 = load %9**, %9*** %159, align 8
  store %9* %157, %9** %160, align 8
  br label %.critedge6

; <label>:161:                                    ; preds = %4
  br label %162

; <label>:162:                                    ; preds = %206, %161
  %163 = load %36*, %36** %5, align 8
  %164 = getelementptr inbounds %36, %36* %163, i32 0, i32 0
  %165 = load %9*, %9** %164, align 8
  %166 = load %36*, %36** %5, align 8
  %167 = getelementptr inbounds %36, %36* %166, i32 0, i32 2
  %168 = load %9*, %9** %167, align 8
  %169 = icmp ne %9* %165, %168
  br i1 %169, label %170, label %.critedge4

; <label>:170:                                    ; preds = %162
  %171 = load %36*, %36** %5, align 8
  %172 = getelementptr inbounds %36, %36* %171, i32 0, i32 1
  %173 = load %9*, %9** %172, align 8
  %174 = load %36*, %36** %5, align 8
  %175 = getelementptr inbounds %36, %36* %174, i32 0, i32 3
  %176 = load %9*, %9** %175, align 8
  %177 = icmp ne %9* %173, %176
  br i1 %177, label %178, label %.critedge4

; <label>:178:                                    ; preds = %170
  %179 = load i64, i64* %11, align 8
  %180 = add i64 %179, -1
  store i64 %180, i64* %11, align 8
  %181 = icmp ne i64 %179, 0
  br i1 %181, label %182, label %.critedge4

; <label>:182:                                    ; preds = %178
  %183 = load %36*, %36** %5, align 8
  %184 = getelementptr inbounds %36, %36* %183, i32 0, i32 0
  %185 = load %9*, %9** %184, align 8
  %186 = getelementptr inbounds %9, %9* %185, i64 -1
  %187 = load %36*, %36** %5, align 8
  %188 = getelementptr inbounds %36, %36* %187, i32 0, i32 1
  %189 = load %9*, %9** %188, align 8
  %190 = getelementptr inbounds %9, %9* %189, i64 -1
  %191 = call i32 @301(%9* %186, %9* %190)
  %192 = icmp sle i32 %191, 0
  %193 = load %36*, %36** %5, align 8
  br i1 %192, label %194, label %200

; <label>:194:                                    ; preds = %182
  %195 = getelementptr inbounds %36, %36* %193, i32 0, i32 0
  %196 = load %9*, %9** %195, align 8
  %197 = getelementptr inbounds %9, %9* %196, i32 -1
  store %9* %197, %9** %195, align 8
  %198 = load %0*, %0** %7, align 8
  %199 = load i8*, i8** %8, align 8
  call void @297(%9* %197, %0* %198, i8* %199)
  br label %206

; <label>:200:                                    ; preds = %182
  %201 = getelementptr inbounds %36, %36* %193, i32 0, i32 1
  %202 = load %9*, %9** %201, align 8
  %203 = getelementptr inbounds %9, %9* %202, i32 -1
  store %9* %203, %9** %201, align 8
  %204 = load %0*, %0** %7, align 8
  %205 = load i8*, i8** %8, align 8
  call void @297(%9* %203, %0* %204, i8* %205)
  br label %206

; <label>:206:                                    ; preds = %200, %194
  br label %162

.critedge4:                                       ; preds = %162, %170, %178
  %207 = load %9*, %9** %9, align 8
  %208 = load %36*, %36** %5, align 8
  %209 = getelementptr inbounds %36, %36* %208, i32 0, i32 0
  %210 = load %9*, %9** %209, align 8
  %211 = ptrtoint %9* %207 to i64
  %212 = ptrtoint %9* %210 to i64
  %213 = sub i64 %211, %212
  %214 = sdiv exact i64 %213, 32
  store i64 %214, i64* %12, align 8
  %215 = load %9*, %9** %10, align 8
  %216 = load %36*, %36** %5, align 8
  %217 = getelementptr inbounds %36, %36* %216, i32 0, i32 1
  %218 = load %9*, %9** %217, align 8
  %219 = ptrtoint %9* %215 to i64
  %220 = ptrtoint %9* %218 to i64
  %221 = sub i64 %219, %220
  %222 = sdiv exact i64 %221, 32
  store i64 %222, i64* %13, align 8
  %223 = load %36*, %36** %5, align 8
  %224 = getelementptr inbounds %36, %36* %223, i32 0, i32 6
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* %13, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %248

; <label>:228:                                    ; preds = %.critedge4
  br label %229

; <label>:229:                                    ; preds = %241, %228
  %230 = load %36*, %36** %5, align 8
  %231 = getelementptr inbounds %36, %36* %230, i32 0, i32 0
  %232 = load %9*, %9** %231, align 8
  %233 = load %36*, %36** %5, align 8
  %234 = getelementptr inbounds %36, %36* %233, i32 0, i32 2
  %235 = load %9*, %9** %234, align 8
  %236 = icmp ne %9* %232, %235
  br i1 %236, label %237, label %.critedge6

; <label>:237:                                    ; preds = %229
  %238 = load i64, i64* %11, align 8
  %239 = add i64 %238, -1
  store i64 %239, i64* %11, align 8
  %240 = icmp ne i64 %238, 0
  br i1 %240, label %241, label %.critedge6

; <label>:241:                                    ; preds = %237
  %242 = load %36*, %36** %5, align 8
  %243 = getelementptr inbounds %36, %36* %242, i32 0, i32 0
  %244 = load %9*, %9** %243, align 8
  %245 = getelementptr inbounds %9, %9* %244, i32 -1
  store %9* %245, %9** %243, align 8
  %246 = load %0*, %0** %7, align 8
  %247 = load i8*, i8** %8, align 8
  call void @297(%9* %245, %0* %246, i8* %247)
  br label %229

; <label>:248:                                    ; preds = %.critedge4
  %249 = load %36*, %36** %5, align 8
  %250 = getelementptr inbounds %36, %36* %249, i32 0, i32 5
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* %12, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %.critedge6

; <label>:254:                                    ; preds = %248
  br label %255

; <label>:255:                                    ; preds = %267, %254
  %256 = load %36*, %36** %5, align 8
  %257 = getelementptr inbounds %36, %36* %256, i32 0, i32 1
  %258 = load %9*, %9** %257, align 8
  %259 = load %36*, %36** %5, align 8
  %260 = getelementptr inbounds %36, %36* %259, i32 0, i32 3
  %261 = load %9*, %9** %260, align 8
  %262 = icmp ne %9* %258, %261
  br i1 %262, label %263, label %.critedge6

; <label>:263:                                    ; preds = %255
  %264 = load i64, i64* %11, align 8
  %265 = add i64 %264, -1
  store i64 %265, i64* %11, align 8
  %266 = icmp ne i64 %264, 0
  br i1 %266, label %267, label %.critedge6

; <label>:267:                                    ; preds = %263
  %268 = load %36*, %36** %5, align 8
  %269 = getelementptr inbounds %36, %36* %268, i32 0, i32 1
  %270 = load %9*, %9** %269, align 8
  %271 = getelementptr inbounds %9, %9* %270, i32 -1
  store %9* %271, %9** %269, align 8
  %272 = load %0*, %0** %7, align 8
  %273 = load i8*, i8** %8, align 8
  call void @297(%9* %271, %0* %272, i8* %273)
  br label %255

.critedge6:                                       ; preds = %229, %237, %263, %255, %248, %.critedge2
  %274 = load %9*, %9** %9, align 8
  %275 = load %36*, %36** %5, align 8
  %276 = getelementptr inbounds %36, %36* %275, i32 0, i32 0
  %277 = load %9*, %9** %276, align 8
  %278 = ptrtoint %9* %274 to i64
  %279 = ptrtoint %9* %277 to i64
  %280 = sub i64 %278, %279
  %281 = sdiv exact i64 %280, 32
  store i64 %281, i64* %12, align 8
  %282 = load %9*, %9** %10, align 8
  %283 = load %36*, %36** %5, align 8
  %284 = getelementptr inbounds %36, %36* %283, i32 0, i32 1
  %285 = load %9*, %9** %284, align 8
  %286 = ptrtoint %9* %282 to i64
  %287 = ptrtoint %9* %285 to i64
  %288 = sub i64 %286, %287
  %289 = sdiv exact i64 %288, 32
  store i64 %289, i64* %13, align 8
  %290 = load i64, i64* %12, align 8
  %291 = load %36*, %36** %5, align 8
  %292 = getelementptr inbounds %36, %36* %291, i32 0, i32 5
  %293 = load i64, i64* %292, align 8
  %294 = sub i64 %293, %290
  store i64 %294, i64* %292, align 8
  %295 = load i64, i64* %13, align 8
  %296 = load %36*, %36** %5, align 8
  %297 = getelementptr inbounds %36, %36* %296, i32 0, i32 6
  %298 = load i64, i64* %297, align 8
  %299 = sub i64 %298, %295
  store i64 %299, i64* %297, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @325(%29*, %36*) #1 {
  %3 = alloca %29*, align 8
  %4 = alloca %36*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %29* %0, %29** %3, align 8
  store %36* %1, %36** %4, align 8
  %7 = load %36*, %36** %4, align 8
  %8 = getelementptr inbounds %36, %36* %7, i32 0, i32 11
  %9 = load i8, i8* %8, align 4
  %10 = trunc i8 %9 to i1
  br i1 %10, label %55, label %11

; <label>:11:                                     ; preds = %2
  %12 = load %36*, %36** %4, align 8
  %13 = getelementptr inbounds %36, %36* %12, i32 0, i32 0
  %14 = load %9*, %9** %13, align 8
  %15 = load %36*, %36** %4, align 8
  %16 = getelementptr inbounds %36, %36* %15, i32 0, i32 2
  %17 = load %9*, %9** %16, align 8
  %18 = ptrtoint %9* %14 to i64
  %19 = ptrtoint %9* %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 32
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %5, align 1
  %24 = load %36*, %36** %4, align 8
  %25 = getelementptr inbounds %36, %36* %24, i32 0, i32 1
  %26 = load %9*, %9** %25, align 8
  %27 = load %36*, %36** %4, align 8
  %28 = getelementptr inbounds %36, %36* %27, i32 0, i32 3
  %29 = load %9*, %9** %28, align 8
  %30 = ptrtoint %9* %26 to i64
  %31 = ptrtoint %9* %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 32
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i8
  store i8 %35, i8* %6, align 1
  %36 = load i8, i8* %5, align 1
  %37 = trunc i8 %36 to i1
  %38 = load i8, i8* %6, align 1
  %39 = trunc i8 %38 to i1
  br i1 %37, label %40, label %46

; <label>:40:                                     ; preds = %11
  br i1 %39, label %52, label %41

; <label>:41:                                     ; preds = %40
  %42 = load %36*, %36** %4, align 8
  %43 = getelementptr inbounds %36, %36* %42, i32 0, i32 6
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %55, label %52

; <label>:46:                                     ; preds = %11
  br i1 %39, label %47, label %55

; <label>:47:                                     ; preds = %46
  %48 = load %36*, %36** %4, align 8
  %49 = getelementptr inbounds %36, %36* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %55, label %52

; <label>:52:                                     ; preds = %47, %41, %40
  %53 = load %29*, %29** %3, align 8
  %54 = load %36*, %36** %4, align 8
  call void @320(%29* %53, %36* %54)
  br label %55

; <label>:55:                                     ; preds = %41, %46, %47, %52, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @326(%29*, %36*) #1 {
  %3 = alloca %29*, align 8
  %4 = alloca %36*, align 8
  store %29* %0, %29** %3, align 8
  store %36* %1, %36** %4, align 8
  %5 = load %36*, %36** %4, align 8
  %6 = getelementptr inbounds %36, %36* %5, i32 0, i32 10
  %7 = load i32, i32* %6, align 8
  %8 = icmp ugt i32 %7, 1
  %9 = load %36*, %36** %4, align 8
  br i1 %8, label %10, label %20

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %36, %36* %9, i32 0, i32 7
  %12 = load %36*, %36** %11, align 8
  call void @327(%36* %12)
  %13 = load %29*, %29** %3, align 8
  %14 = load %36*, %36** %4, align 8
  %15 = getelementptr inbounds %36, %36* %14, i32 0, i32 7
  %16 = load %36*, %36** %15, align 8
  call void @325(%29* %13, %36* %16)
  %17 = load %36*, %36** %4, align 8
  %18 = getelementptr inbounds %36, %36* %17, i32 0, i32 7
  %19 = load %36*, %36** %18, align 8
  call void @323(%36* %19)
  br label %33

; <label>:20:                                     ; preds = %2
  %21 = getelementptr inbounds %36, %36* %9, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = load %36*, %36** %4, align 8
  %24 = getelementptr inbounds %36, %36* %23, i32 0, i32 6
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %22, %25
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %33

; <label>:28:                                     ; preds = %20
  %29 = load %29*, %29** %3, align 8
  %30 = load %36*, %36** %4, align 8
  %31 = getelementptr inbounds %36, %36* %30, i32 0, i32 7
  %32 = load %36*, %36** %31, align 8
  call void @320(%29* %29, %36* %32)
  br label %33

; <label>:33:                                     ; preds = %20, %28, %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @327(%36*) #1 {
  %2 = alloca %36*, align 8
  store %36* %0, %36** %2, align 8
  %3 = load %36*, %36** %2, align 8
  %4 = getelementptr inbounds %36, %36* %3, i32 0, i32 12
  %5 = call i32 @pthread_mutex_lock(%31* %4) #11
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(%31*) #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(%31*) #4

declare i32 @pthread_cond_wait(%34*, %31*) #2

; Function Attrs: nounwind
declare i32 @pthread_cond_signal(%34*) #4

; Function Attrs: noinline nounwind uwtable
define internal void @328(%9* noalias, i64, %9* noalias) #1 {
  %4 = alloca %9*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %9*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %9*, align 8
  store %9* %0, %9** %4, align 8
  store i64 %1, i64* %5, align 8
  store %9* %2, %9** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = udiv i64 %10, 2
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* %7, align 8
  %14 = sub i64 %12, %13
  store i64 %14, i64* %8, align 8
  %15 = load %9*, %9** %4, align 8
  %16 = load i64, i64* %7, align 8
  %17 = sub i64 0, %16
  %18 = getelementptr inbounds %9, %9* %15, i64 %17
  store %9* %18, %9** %9, align 8
  br label %19

; <label>:19:                                     ; preds = %3, %55
  %20 = load %9*, %9** %6, align 8
  %21 = getelementptr inbounds %9, %9* %20, i64 -1
  %22 = load %9*, %9** %9, align 8
  %23 = getelementptr inbounds %9, %9* %22, i64 -1
  %24 = call i32 @301(%9* %21, %9* %23)
  %25 = icmp sle i32 %24, 0
  %26 = load %9*, %9** %4, align 8
  %27 = getelementptr inbounds %9, %9* %26, i32 -1
  store %9* %27, %9** %4, align 8
  br i1 %25, label %28, label %36

; <label>:28:                                     ; preds = %19
  %29 = load %9*, %9** %6, align 8
  %30 = getelementptr inbounds %9, %9* %29, i32 -1
  store %9* %30, %9** %6, align 8
  %31 = bitcast %9* %27 to i8*
  %32 = bitcast %9* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 32, i32 8, i1 false)
  %33 = load i64, i64* %7, align 8
  %34 = add i64 %33, -1
  store i64 %34, i64* %7, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %55, label %56

; <label>:36:                                     ; preds = %19
  %37 = load %9*, %9** %9, align 8
  %38 = getelementptr inbounds %9, %9* %37, i32 -1
  store %9* %38, %9** %9, align 8
  %39 = bitcast %9* %27 to i8*
  %40 = bitcast %9* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 32, i32 8, i1 false)
  %41 = load i64, i64* %8, align 8
  %42 = add i64 %41, -1
  store i64 %42, i64* %8, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %55, label %44

; <label>:44:                                     ; preds = %36
  br label %45

; <label>:45:                                     ; preds = %45, %44
  %46 = load %9*, %9** %4, align 8
  %47 = getelementptr inbounds %9, %9* %46, i32 -1
  store %9* %47, %9** %4, align 8
  %48 = load %9*, %9** %6, align 8
  %49 = getelementptr inbounds %9, %9* %48, i32 -1
  store %9* %49, %9** %6, align 8
  %50 = bitcast %9* %47 to i8*
  %51 = bitcast %9* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %51, i64 32, i32 8, i1 false)
  %52 = load i64, i64* %7, align 8
  %53 = add i64 %52, -1
  store i64 %53, i64* %7, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %45, label %56

; <label>:55:                                     ; preds = %36, %28
  br label %19

; <label>:56:                                     ; preds = %45, %28
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(%31*, %39*) #4

; Function Attrs: noinline nounwind uwtable
define internal %36* @329(%36* noalias, %36* noalias, %9*, i64, i64, i1 zeroext) #1 {
  %7 = alloca %36*, align 8
  %8 = alloca %36*, align 8
  %9 = alloca %9*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %9*, align 8
  %17 = alloca %9*, align 8
  %18 = alloca %9**, align 8
  %19 = alloca %36*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %36* %0, %36** %7, align 8
  store %36* %1, %36** %8, align 8
  store %9* %2, %9** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %22 = zext i1 %5 to i8
  store i8 %22, i8* %12, align 1
  %23 = load i8, i8* %12, align 1
  %24 = trunc i8 %23 to i1
  %25 = load %36*, %36** %7, align 8
  br i1 %24, label %26, label %29

; <label>:26:                                     ; preds = %6
  %27 = getelementptr inbounds %36, %36* %25, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  br label %32

; <label>:29:                                     ; preds = %6
  %30 = getelementptr inbounds %36, %36* %25, i32 0, i32 6
  %31 = load i64, i64* %30, align 8
  br label %32

; <label>:32:                                     ; preds = %29, %26
  %33 = phi i64 [ %28, %26 ], [ %31, %29 ]
  store i64 %33, i64* %13, align 8
  %34 = load i64, i64* %13, align 8
  %35 = udiv i64 %34, 2
  store i64 %35, i64* %14, align 8
  %36 = load i64, i64* %13, align 8
  %37 = load i64, i64* %14, align 8
  %38 = sub i64 %36, %37
  store i64 %38, i64* %15, align 8
  %39 = load %9*, %9** %9, align 8
  %40 = load i64, i64* %11, align 8
  %41 = sub i64 0, %40
  %42 = getelementptr inbounds %9, %9* %39, i64 %41
  store %9* %42, %9** %16, align 8
  %43 = load %9*, %9** %16, align 8
  %44 = load i64, i64* %14, align 8
  %45 = sub i64 0, %44
  %46 = getelementptr inbounds %9, %9* %43, i64 %45
  store %9* %46, %9** %17, align 8
  %47 = load i8, i8* %12, align 1
  %48 = trunc i8 %47 to i1
  %49 = load %36*, %36** %7, align 8
  %50 = getelementptr inbounds %36, %36* %49, i32 0, i32 2
  %51 = getelementptr inbounds %36, %36* %49, i32 0, i32 3
  %52 = select i1 %48, %9** %50, %9** %51
  store %9** %52, %9*** %18, align 8
  %53 = load %36*, %36** %8, align 8
  %54 = getelementptr inbounds %36, %36* %53, i32 1
  store %36* %54, %36** %8, align 8
  store %36* %53, %36** %19, align 8
  %55 = load %9*, %9** %16, align 8
  %56 = load %36*, %36** %19, align 8
  %57 = getelementptr inbounds %36, %36* %56, i32 0, i32 2
  store %9* %55, %9** %57, align 8
  %58 = load %36*, %36** %19, align 8
  %59 = getelementptr inbounds %36, %36* %58, i32 0, i32 0
  store %9* %55, %9** %59, align 8
  %60 = load %9*, %9** %17, align 8
  %61 = load %36*, %36** %19, align 8
  %62 = getelementptr inbounds %36, %36* %61, i32 0, i32 3
  store %9* %60, %9** %62, align 8
  %63 = load %36*, %36** %19, align 8
  %64 = getelementptr inbounds %36, %36* %63, i32 0, i32 1
  store %9* %60, %9** %64, align 8
  %65 = load %9**, %9*** %18, align 8
  %66 = load %36*, %36** %19, align 8
  %67 = getelementptr inbounds %36, %36* %66, i32 0, i32 4
  store %9** %65, %9*** %67, align 8
  %68 = load i64, i64* %14, align 8
  %69 = load %36*, %36** %19, align 8
  %70 = getelementptr inbounds %36, %36* %69, i32 0, i32 5
  store i64 %68, i64* %70, align 8
  %71 = load i64, i64* %15, align 8
  %72 = load %36*, %36** %19, align 8
  %73 = getelementptr inbounds %36, %36* %72, i32 0, i32 6
  store i64 %71, i64* %73, align 8
  %74 = load %36*, %36** %7, align 8
  %75 = load %36*, %36** %19, align 8
  %76 = getelementptr inbounds %36, %36* %75, i32 0, i32 7
  store %36* %74, %36** %76, align 8
  %77 = load %36*, %36** %7, align 8
  %78 = getelementptr inbounds %36, %36* %77, i32 0, i32 10
  %79 = load i32, i32* %78, align 8
  %80 = add i32 %79, 1
  %81 = load %36*, %36** %19, align 8
  %82 = getelementptr inbounds %36, %36* %81, i32 0, i32 10
  store i32 %80, i32* %82, align 8
  %83 = load %36*, %36** %19, align 8
  %84 = getelementptr inbounds %36, %36* %83, i32 0, i32 11
  store i8 0, i8* %84, align 4
  %85 = load %36*, %36** %19, align 8
  %86 = getelementptr inbounds %36, %36* %85, i32 0, i32 12
  %87 = call i32 @pthread_mutex_init(%31* %86, %39* null) #11
  %88 = load i64, i64* %10, align 8
  %89 = icmp ugt i64 %88, 1
  br i1 %89, label %90, label %114

; <label>:90:                                     ; preds = %32
  %91 = load i64, i64* %10, align 8
  %92 = udiv i64 %91, 2
  store i64 %92, i64* %20, align 8
  %93 = load i64, i64* %10, align 8
  %94 = load i64, i64* %20, align 8
  %95 = sub i64 %93, %94
  store i64 %95, i64* %21, align 8
  %96 = load %36*, %36** %8, align 8
  %97 = load %36*, %36** %19, align 8
  %98 = getelementptr inbounds %36, %36* %97, i32 0, i32 8
  store %36* %96, %36** %98, align 8
  %99 = load %36*, %36** %19, align 8
  %100 = load %36*, %36** %8, align 8
  %101 = load %9*, %9** %16, align 8
  %102 = load i64, i64* %20, align 8
  %103 = load i64, i64* %11, align 8
  %104 = call %36* @329(%36* %99, %36* %100, %9* %101, i64 %102, i64 %103, i1 zeroext true)
  store %36* %104, %36** %8, align 8
  %105 = load %36*, %36** %8, align 8
  %106 = load %36*, %36** %19, align 8
  %107 = getelementptr inbounds %36, %36* %106, i32 0, i32 9
  store %36* %105, %36** %107, align 8
  %108 = load %36*, %36** %19, align 8
  %109 = load %36*, %36** %8, align 8
  %110 = load %9*, %9** %17, align 8
  %111 = load i64, i64* %21, align 8
  %112 = load i64, i64* %11, align 8
  %113 = call %36* @329(%36* %108, %36* %109, %9* %110, i64 %111, i64 %112, i1 zeroext false)
  store %36* %113, %36** %8, align 8
  br label %119

; <label>:114:                                    ; preds = %32
  %115 = load %36*, %36** %19, align 8
  %116 = getelementptr inbounds %36, %36* %115, i32 0, i32 8
  store %36* null, %36** %116, align 8
  %117 = load %36*, %36** %19, align 8
  %118 = getelementptr inbounds %36, %36* %117, i32 0, i32 9
  store %36* null, %36** %118, align 8
  br label %119

; <label>:119:                                    ; preds = %114, %90
  %120 = load %36*, %36** %8, align 8
  ret %36* %120
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @330(i8*, i8*) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %36*, align 8
  %7 = alloca %36*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %36*
  store %36* %9, %36** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %36*
  store %36* %11, %36** %7, align 8
  %12 = load %36*, %36** %6, align 8
  %13 = getelementptr inbounds %36, %36* %12, i32 0, i32 10
  %14 = load i32, i32* %13, align 8
  %15 = load %36*, %36** %7, align 8
  %16 = getelementptr inbounds %36, %36* %15, i32 0, i32 10
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %14, %17
  %19 = load %36*, %36** %6, align 8
  br i1 %18, label %20, label %36

; <label>:20:                                     ; preds = %2
  %21 = getelementptr inbounds %36, %36* %19, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = load %36*, %36** %6, align 8
  %24 = getelementptr inbounds %36, %36* %23, i32 0, i32 6
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %22, %25
  %27 = load %36*, %36** %7, align 8
  %28 = getelementptr inbounds %36, %36* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = load %36*, %36** %7, align 8
  %31 = getelementptr inbounds %36, %36* %30, i32 0, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %29, %32
  %34 = icmp ult i64 %26, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %44

; <label>:36:                                     ; preds = %2
  %37 = getelementptr inbounds %36, %36* %19, i32 0, i32 10
  %38 = load i32, i32* %37, align 8
  %39 = load %36*, %36** %7, align 8
  %40 = getelementptr inbounds %36, %36* %39, i32 0, i32 10
  %41 = load i32, i32* %40, align 8
  %42 = icmp ult i32 %38, %41
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %3, align 4
  br label %44

; <label>:44:                                     ; preds = %36, %20
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

; Function Attrs: nounwind
declare i32 @pthread_cond_init(%34*, %39*) #4

; Function Attrs: noinline nounwind uwtable
define internal %5* @331(%0**, i1 zeroext) #1 {
  %3 = alloca %5*, align 8
  %4 = alloca %0**, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %5*, align 8
  %8 = alloca [2 x i32], align 4
  store %0** %0, %0*** %4, align 8
  %9 = zext i1 %1 to i8
  store i8 %9, i8* %5, align 1
  %10 = load i8, i8* %5, align 1
  %11 = trunc i8 %10 to i1
  %12 = call %5* @332(i32* %6, i1 zeroext %11)
  store %5* %12, %5** %7, align 8
  %13 = load %5*, %5** %7, align 8
  %14 = icmp ne %5* %13, null
  br i1 %14, label %16, label %15

; <label>:15:                                     ; preds = %2
  store %5* null, %5** %3, align 8
  br label %76

; <label>:16:                                     ; preds = %2
  %17 = load %5*, %5** %7, align 8
  %18 = getelementptr inbounds %5, %5* %17, i32 0, i32 2
  store i8 0, i8* %18, align 4
  %19 = load i8*, i8** @41, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %64

; <label>:21:                                     ; preds = %16
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i32 0, i32 0
  %23 = call i32 @333(i32* %22, i64 4)
  %24 = load %5*, %5** %7, align 8
  %25 = getelementptr inbounds %5, %5* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %5*, %5** %7, align 8
  %27 = getelementptr inbounds %5, %5* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 0, %28
  br i1 %29, label %30, label %39

; <label>:30:                                     ; preds = %21
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @close(i32 %31)
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @close(i32 %34)
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  %38 = load %5*, %5** %7, align 8
  call void @334(%5* %38)
  br label %64

; <label>:39:                                     ; preds = %21
  %40 = load %5*, %5** %7, align 8
  %41 = getelementptr inbounds %5, %5* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %64

; <label>:44:                                     ; preds = %39
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @close(i32 %46)
  %48 = load i32, i32* %6, align 4
  call void @335(i32 %48, i32 1)
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @close(i32 %49)
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %52 = load i32, i32* %51, align 4
  call void @335(i32 %52, i32 0)
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @close(i32 %54)
  %56 = load i8*, i8** @41, align 8
  %57 = load i8*, i8** @41, align 8
  %58 = call i32 (i8*, i8*, ...) @execlp(i8* %56, i8* %57, i8* null) #11
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %64

; <label>:60:                                     ; preds = %44
  %61 = call i32* @__errno_location() #15
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** @41, align 8
  call void (i32, i32, i8*, ...) @error(i32 2, i32 %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @94, i32 0, i32 0), i8* %63)
  br label %64

; <label>:64:                                     ; preds = %30, %44, %60, %39, %16
  %65 = load i32, i32* %6, align 4
  %66 = call %0* @fdopen(i32 %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @65, i32 0, i32 0)) #11
  %67 = load %0**, %0*** %4, align 8
  store %0* %66, %0** %67, align 8
  %68 = load %0**, %0*** %4, align 8
  %69 = load %0*, %0** %68, align 8
  %70 = icmp ne %0* %69, null
  %71 = load %5*, %5** %7, align 8
  br i1 %70, label %75, label %72

; <label>:72:                                     ; preds = %64
  %73 = getelementptr inbounds %5, %5* %71, i32 0, i32 3
  %74 = getelementptr inbounds [1 x i8], [1 x i8]* %73, i32 0, i32 0
  call void @284(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @95, i32 0, i32 0), i8* %74) #14
  unreachable

; <label>:75:                                     ; preds = %64
  store %5* %71, %5** %3, align 8
  br label %76

; <label>:76:                                     ; preds = %75, %15
  %77 = load %5*, %5** %3, align 8
  ret %5* %77
}

; Function Attrs: noinline nounwind uwtable
define internal %5* @332(i32*, i1 zeroext) #1 {
  %3 = alloca i32*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %5*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %22, align 8
  %12 = alloca %22, align 8
  store i32* %0, i32** %3, align 8
  %13 = zext i1 %1 to i8
  store i8 %13, i8* %4, align 1
  %14 = load i8**, i8*** @97, align 8
  %15 = load i64, i64* @98, align 8
  %16 = getelementptr inbounds i8*, i8** %14, i64 %15
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i64 @strlen(i8* %18) #13
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = add i64 13, %20
  %22 = add i64 %21, 12
  %23 = call noalias i8* @xmalloc(i64 %22)
  %24 = bitcast i8* %23 to %5*
  store %5* %24, %5** %9, align 8
  %25 = load %5*, %5** %9, align 8
  %26 = getelementptr inbounds %5, %5* %25, i32 0, i32 3
  %27 = getelementptr inbounds [1 x i8], [1 x i8]* %26, i32 0, i32 0
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i64, i64* %8, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 %30, i32 1, i1 false)
  %31 = load i8*, i8** %10, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @99, i32 0, i32 0), i64 12, i32 1, i1 false)
  %34 = load %5*, %5** %9, align 8
  %35 = getelementptr inbounds %5, %5* %34, i32 0, i32 0
  store volatile %5* null, %5** %35, align 8
  %36 = load i64, i64* @98, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* @98, align 8
  %38 = icmp eq i64 %37, 0
  %spec.store.select = select i1 %38, i64 0, i64 %37
  store i64 %spec.store.select, i64* @98, align 8
  call void @339(%22* sret %12)
  %39 = bitcast %22* %11 to i8*
  %40 = bitcast %22* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 136, i32 8, i1 false)
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @mkstemp_safer(i8* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp sle i32 0, %43
  br i1 %44, label %45, label %50

; <label>:45:                                     ; preds = %2
  %46 = load %5*, %5** %9, align 8
  %47 = load %5**, %5*** @100, align 8
  store volatile %5* %46, %5** %47, align 8
  %48 = load %5*, %5** %9, align 8
  %49 = getelementptr inbounds %5, %5* %48, i32 0, i32 0
  store %5** %49, %5*** @100, align 8
  br label %50

; <label>:50:                                     ; preds = %45, %2
  %51 = call i32* @__errno_location() #15
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %6, align 4
  call void @340(%22* byval align 8 %11)
  %53 = load i32, i32* %6, align 4
  %54 = call i32* @__errno_location() #15
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %72

; <label>:57:                                     ; preds = %50
  %58 = load i8, i8* %4, align 1
  %59 = trunc i8 %58 to i1
  br i1 %59, label %60, label %64

; <label>:60:                                     ; preds = %57
  %61 = call i32* @__errno_location() #15
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 24
  br i1 %63, label %69, label %64

; <label>:64:                                     ; preds = %60, %57
  %65 = call i32* @__errno_location() #15
  %66 = load i32, i32* %65, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = call i8* @quote(i8* %67)
  call void (i32, i32, i8*, ...) @error(i32 2, i32 %66, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @101, i32 0, i32 0), i8* %68)
  br label %69

; <label>:69:                                     ; preds = %64, %60
  %70 = load %5*, %5** %9, align 8
  %71 = bitcast %5* %70 to i8*
  call void @free(i8* %71) #11
  store %5* null, %5** %9, align 8
  br label %72

; <label>:72:                                     ; preds = %69, %50
  %73 = load i32, i32* %5, align 4
  %74 = load i32*, i32** %3, align 8
  store i32 %73, i32* %74, align 4
  %75 = load %5*, %5** %9, align 8
  ret %5* %75
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @333(i32*, i64) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %5*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca %22, align 8
  %11 = alloca %22, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store double 2.500000e-01, double* %8, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @pipe(i32* %12) #11
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %77

; <label>:16:                                     ; preds = %2
  %17 = load i32, i32* @67, align 4
  %18 = icmp ult i32 17, %17
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %16
  call void @338()
  br label %20

; <label>:20:                                     ; preds = %19, %16
  br label %21

; <label>:21:                                     ; preds = %45, %20
  %22 = load i64, i64* %5, align 8
  %23 = add i64 %22, -1
  store i64 %23, i64* %5, align 8
  %24 = icmp ne i64 %22, 0
  br i1 %24, label %25, label %50

; <label>:25:                                     ; preds = %21
  call void @339(%22* sret %11)
  %26 = bitcast %22* %10 to i8*
  %27 = bitcast %22* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 136, i32 8, i1 false)
  %28 = load volatile %5*, %5** @66, align 8
  store %5* %28, %5** %6, align 8
  store volatile %5* null, %5** @66, align 8
  %29 = call i32 @fork() #11
  store i32 %29, i32* %9, align 4
  %30 = call i32* @__errno_location() #15
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

; <label>:34:                                     ; preds = %25
  %35 = load %5*, %5** %6, align 8
  store volatile %5* %35, %5** @66, align 8
  br label %36

; <label>:36:                                     ; preds = %34, %25
  call void @340(%22* byval align 8 %10)
  %37 = load i32, i32* %7, align 4
  %38 = call i32* @__errno_location() #15
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp sle i32 0, %39
  br i1 %40, label %50, label %41

; <label>:41:                                     ; preds = %36
  %42 = call i32* @__errno_location() #15
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 11
  br i1 %44, label %50, label %45

; <label>:45:                                     ; preds = %41
  %46 = load double, double* %8, align 8
  %47 = call i32 @xnanosleep(double %46)
  %48 = load double, double* %8, align 8
  %49 = fmul double %48, 2.000000e+00
  store double %49, double* %8, align 8
  call void @341()
  br label %21

; <label>:50:                                     ; preds = %36, %41, %21
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %66

; <label>:53:                                     ; preds = %50
  %54 = call i32* @__errno_location() #15
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %7, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @close(i32 %58)
  %60 = load i32*, i32** %4, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @close(i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = call i32* @__errno_location() #15
  store i32 %64, i32* %65, align 4
  br label %75

; <label>:66:                                     ; preds = %50
  %67 = load i32, i32* %9, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

; <label>:69:                                     ; preds = %66
  %70 = call i32 @close(i32 0)
  %71 = call i32 @close(i32 1)
  br label %75

; <label>:72:                                     ; preds = %66
  %73 = load i32, i32* @67, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* @67, align 4
  br label %75

; <label>:75:                                     ; preds = %69, %72, %53
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %3, align 4
  br label %77

; <label>:77:                                     ; preds = %75, %15
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare i32 @close(i32) #2

; Function Attrs: noinline nounwind uwtable
define internal void @334(%5*) #1 {
  %2 = alloca %5*, align 8
  store %5* %0, %5** %2, align 8
  %3 = load %6*, %6** @70, align 8
  %4 = icmp ne %6* %3, null
  br i1 %4, label %10, label %5

; <label>:5:                                      ; preds = %1
  %6 = call %6* @hash_initialize(i64 47, %7* null, i64 (i8*, i64)* @336, i1 (i8*, i8*)* @337, void (i8*)* null)
  store %6* %6, %6** @70, align 8
  %7 = load %6*, %6** @70, align 8
  %8 = icmp ne %6* %7, null
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %5
  call void @xalloc_die() #14
  unreachable

; <label>:10:                                     ; preds = %5, %1
  %11 = load %5*, %5** %2, align 8
  %12 = getelementptr inbounds %5, %5* %11, i32 0, i32 2
  store i8 1, i8* %12, align 4
  %13 = load %6*, %6** @70, align 8
  %14 = load %5*, %5** %2, align 8
  %15 = bitcast %5* %14 to i8*
  %16 = call i8* @hash_insert(%6* %13, i8* %15)
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

; <label>:18:                                     ; preds = %10
  call void @xalloc_die() #14
  unreachable

; <label>:19:                                     ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @335(i32, i32) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @dup2(i32 %5, i32 %6) #11
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %12

; <label>:9:                                      ; preds = %2
  %10 = call i32* @__errno_location() #15
  %11 = load i32, i32* %10, align 4
  call void (i32, i32, i8*, ...) @error(i32 2, i32 %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @96, i32 0, i32 0))
  br label %12

; <label>:12:                                     ; preds = %9, %2
  ret void
}

; Function Attrs: nounwind
declare i32 @execlp(i8*, i8*, ...) #4

; Function Attrs: nounwind
declare %0* @fdopen(i32, i8*) #4

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) #4

; Function Attrs: noinline nounwind uwtable
define internal i64 @336(i8*, i64) #1 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %5*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %5*
  store %5* %7, %5** %5, align 8
  %8 = load %5*, %5** %5, align 8
  %9 = getelementptr inbounds %5, %5* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = load i64, i64* %4, align 8
  %13 = urem i64 %11, %12
  ret i64 %13
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @337(i8*, i8*) #1 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %5*, align 8
  %6 = alloca %5*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %5*
  store %5* %8, %5** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %5*
  store %5* %10, %5** %6, align 8
  %11 = load %5*, %5** %5, align 8
  %12 = getelementptr inbounds %5, %5* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %5*, %5** %6, align 8
  %15 = getelementptr inbounds %5, %5* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %13, %16
  ret i1 %17
}

; Function Attrs: nounwind
declare i32 @pipe(i32*) #4

; Function Attrs: noinline nounwind uwtable
define internal void @338() #1 {
  %1 = call i32 @299(i32 -1)
  call void @341()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @339(%22* noalias sret) #1 {
  %2 = alloca %22, align 8
  %3 = getelementptr inbounds %22, %22* %2, i32 0, i32 1
  %4 = call i32 @sigprocmask(i32 0, %2* @39, %2* %3) #11
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %22, %22* %2, i32 0, i32 0
  %7 = zext i1 %5 to i8
  store i8 %7, i8* %6, align 8
  %8 = bitcast %22* %0 to i8*
  %9 = bitcast %22* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 136, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind
declare i32 @fork() #4

; Function Attrs: noinline nounwind uwtable
define internal void @340(%22* byval align 8) #1 {
  %2 = getelementptr inbounds %22, %22* %0, i32 0, i32 0
  %3 = load i8, i8* %2, align 8
  %4 = trunc i8 %3 to i1
  br i1 %4, label %5, label %8

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %22, %22* %0, i32 0, i32 1
  %7 = call i32 @sigprocmask(i32 2, %2* %6, %2* null) #11
  br label %8

; <label>:8:                                      ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @341() #1 {
  br label %1

; <label>:1:                                      ; preds = %7, %0
  %2 = load i32, i32* @67, align 4
  %3 = icmp slt i32 0, %2
  br i1 %3, label %4, label %.critedge

; <label>:4:                                      ; preds = %1
  %5 = call i32 @299(i32 0)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %.critedge

; <label>:7:                                      ; preds = %4
  br label %1

.critedge:                                        ; preds = %1, %4
  ret void
}

; Function Attrs: nounwind
declare i32 @sigprocmask(i32, %2*, %2*) #4

; Function Attrs: nounwind
declare i32 @fileno(%0*) #4

; Function Attrs: nounwind
declare i32 @feof_unlocked(%0*) #4

; Function Attrs: nounwind
declare void @clearerr_unlocked(%0*) #4

declare i32 @fflush_unlocked(%0*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

declare i64 @fread_unlocked(i8*, i64, i64, %0*) #2

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%0*) #4

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #5

; Function Attrs: nounwind
declare i32 @fstat(i32, %37*) #4

; Function Attrs: nounwind
declare i32 @stat(i8*, %37*) #4

; Function Attrs: noinline nounwind uwtable
define internal i64 @342() #1 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %38, align 8
  %5 = alloca i64, align 8
  %6 = call double @physmem_available()
  store double %6, double* %1, align 8
  %7 = call double @physmem_total()
  store double %7, double* %2, align 8
  %8 = load double, double* %1, align 8
  %9 = load double, double* %2, align 8
  %10 = fdiv double %9, 8.000000e+00
  %11 = fcmp ogt double %8, %10
  br i1 %11, label %12, label %14

; <label>:12:                                     ; preds = %0
  %13 = load double, double* %1, align 8
  br label %17

; <label>:14:                                     ; preds = %0
  %15 = load double, double* %2, align 8
  %16 = fdiv double %15, 8.000000e+00
  br label %17

; <label>:17:                                     ; preds = %14, %12
  %18 = phi double [ %13, %12 ], [ %16, %14 ]
  store double %18, double* %3, align 8
  store i64 -1, i64* %5, align 8
  %19 = call i32 @getrlimit(i32 2, %38* %4) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %29

; <label>:21:                                     ; preds = %17
  %22 = getelementptr inbounds %38, %38* %4, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %29

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %38, %38* %4, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %5, align 8
  br label %29

; <label>:29:                                     ; preds = %26, %21, %17
  %30 = call i32 @getrlimit(i32 9, %38* %4) #11
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %40

; <label>:32:                                     ; preds = %29
  %33 = getelementptr inbounds %38, %38* %4, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %40

; <label>:37:                                     ; preds = %32
  %38 = getelementptr inbounds %38, %38* %4, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %5, align 8
  br label %40

; <label>:40:                                     ; preds = %37, %32, %29
  %41 = load i64, i64* %5, align 8
  %42 = udiv i64 %41, 2
  store i64 %42, i64* %5, align 8
  %43 = call i32 @getrlimit(i32 5, %38* %4) #11
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %57

; <label>:45:                                     ; preds = %40
  %46 = getelementptr inbounds %38, %38* %4, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = udiv i64 %47, 16
  %49 = mul i64 %48, 15
  %50 = load i64, i64* %5, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %57

; <label>:52:                                     ; preds = %45
  %53 = getelementptr inbounds %38, %38* %4, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = udiv i64 %54, 16
  %56 = mul i64 %55, 15
  store i64 %56, i64* %5, align 8
  br label %57

; <label>:57:                                     ; preds = %52, %45, %40
  %58 = load double, double* %3, align 8
  %59 = load i64, i64* %5, align 8
  %60 = uitofp i64 %59 to double
  %61 = fcmp olt double %58, %60
  br i1 %61, label %62, label %65

; <label>:62:                                     ; preds = %57
  %63 = load double, double* %3, align 8
  %64 = fptoui double %63 to i64
  store i64 %64, i64* %5, align 8
  br label %65

; <label>:65:                                     ; preds = %62, %57
  %66 = load i64, i64* %5, align 8
  %67 = icmp ugt i64 %66, 544
  %68 = load i64, i64* %5, align 8
  %69 = select i1 %67, i64 %68, i64 544
  ret i64 %69
}

; Function Attrs: nounwind
declare i32 @getrlimit(i32, %38*) #4

; Function Attrs: noinline nounwind uwtable
define internal %0* @343(i8*, i8*) #1 {
  %3 = alloca %0*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %0*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %11, label %9

; <label>:9:                                      ; preds = %2
  %10 = load %0*, %0** @stdout, align 8
  store %0* %10, %0** %3, align 8
  br label %32

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 114
  %16 = load i8*, i8** %4, align 8
  br i1 %15, label %17, label %29

; <label>:17:                                     ; preds = %11
  %18 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @46, i32 0, i32 0)) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %17
  store i8 1, i8* @38, align 1
  %21 = load %0*, %0** @stdin, align 8
  store %0* %21, %0** %6, align 8
  br label %26

; <label>:22:                                     ; preds = %17
  %23 = load i8*, i8** %4, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call %0* @fopen_safer(i8* %23, i8* %24)
  store %0* %25, %0** %6, align 8
  br label %26

; <label>:26:                                     ; preds = %22, %20
  %27 = load %0*, %0** %6, align 8
  call void @fadvise(%0* %27, i32 2)
  %28 = load %0*, %0** %6, align 8
  store %0* %28, %0** %3, align 8
  br label %32

; <label>:29:                                     ; preds = %11
  %30 = load i8*, i8** %5, align 8
  %31 = call %0* @fopen_safer(i8* %16, i8* %30)
  store %0* %31, %0** %3, align 8
  br label %32

; <label>:32:                                     ; preds = %29, %26, %9
  %33 = load %0*, %0** %3, align 8
  ret %0* %33
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @344(%21*, i64, i64, %0*, i8*) #1 {
  %6 = alloca %21*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %0*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %0**, align 8
  %12 = alloca i64, align 8
  store %21* %0, %21** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %0* %3, %0** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load %21*, %21** %6, align 8
  %14 = load i64, i64* %8, align 8
  %15 = call i64 @346(%21* %13, i64 %14, %0*** %11)
  store i64 %15, i64* %12, align 8
  %16 = load i64, i64* %12, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp ult i64 %16, %17
  %19 = load i64, i64* %12, align 8
  %20 = icmp ult i64 %19, 2
  %or.cond = and i1 %18, %20
  %21 = load %21*, %21** %6, align 8
  br i1 %or.cond, label %22, label %27

; <label>:22:                                     ; preds = %5
  %23 = load i64, i64* %12, align 8
  %24 = getelementptr inbounds %21, %21* %21, i64 %23
  %25 = getelementptr inbounds %21, %21* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  call void @284(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @107, i32 0, i32 0), i8* %26) #14
  unreachable

; <label>:27:                                     ; preds = %5
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %12, align 8
  %30 = load %0*, %0** %9, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load %0**, %0*** %11, align 8
  call void @347(%21* %21, i64 %28, i64 %29, %0* %30, i8* %31, %0** %32)
  %33 = load i64, i64* %12, align 8
  ret i64 %33
}

; Function Attrs: noinline nounwind uwtable
define internal void @345(%21*, i64, i64, i8*) #1 {
  %5 = alloca %21*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca %37, align 8
  %12 = alloca %5*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca %37, align 8
  %16 = alloca %0*, align 8
  store %21* %0, %21** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  store i8 0, i8* %10, align 1
  store %5* null, %5** %12, align 8
  %17 = load i64, i64* %6, align 8
  store i64 %17, i64* %9, align 8
  br label %18

; <label>:18:                                     ; preds = %120, %4
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %123

; <label>:22:                                     ; preds = %18
  %23 = load %21*, %21** %5, align 8
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds %21, %21* %23, i64 %24
  %26 = getelementptr inbounds %21, %21* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @46, i32 0, i32 0)) #13
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %13, align 1
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %46

; <label>:33:                                     ; preds = %22
  %34 = load i8*, i8** %8, align 8
  %35 = load %21*, %21** %5, align 8
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds %21, %21* %35, i64 %36
  %38 = getelementptr inbounds %21, %21* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @strcmp(i8* %34, i8* %39) #13
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

; <label>:42:                                     ; preds = %33
  %43 = load i8, i8* %13, align 1
  %44 = trunc i8 %43 to i1
  br i1 %44, label %46, label %45

; <label>:45:                                     ; preds = %42
  store i8 1, i8* %14, align 1
  br label %91

; <label>:46:                                     ; preds = %42, %33, %22
  %47 = load i8, i8* %10, align 1
  %48 = trunc i8 %47 to i1
  br i1 %48, label %61, label %49

; <label>:49:                                     ; preds = %46
  %50 = load i8*, i8** %8, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %55

; <label>:52:                                     ; preds = %49
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @stat(i8* %53, %37* %11) #11
  br label %57

; <label>:55:                                     ; preds = %49
  %56 = call i32 @fstat(i32 1, %37* %11) #11
  br label %57

; <label>:57:                                     ; preds = %55, %52
  %58 = phi i32 [ %54, %52 ], [ %56, %55 ]
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %123, label %60

; <label>:60:                                     ; preds = %57
  store i8 1, i8* %10, align 1
  br label %61

; <label>:61:                                     ; preds = %60, %46
  %62 = load i8, i8* %13, align 1
  %63 = trunc i8 %62 to i1
  br i1 %63, label %64, label %66

; <label>:64:                                     ; preds = %61
  %65 = call i32 @fstat(i32 0, %37* %15) #11
  br label %73

; <label>:66:                                     ; preds = %61
  %67 = load %21*, %21** %5, align 8
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds %21, %21* %67, i64 %68
  %70 = getelementptr inbounds %21, %21* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @stat(i8* %71, %37* %15) #11
  br label %73

; <label>:73:                                     ; preds = %66, %64
  %74 = phi i32 [ %65, %64 ], [ %72, %66 ]
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %88

; <label>:76:                                     ; preds = %73
  %77 = getelementptr inbounds %37, %37* %15, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %37, %37* %11, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %78, %80
  br i1 %81, label %82, label %88

; <label>:82:                                     ; preds = %76
  %83 = getelementptr inbounds %37, %37* %15, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %37, %37* %11, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %84, %86
  br label %88

; <label>:88:                                     ; preds = %76, %82, %73
  %89 = phi i1 [ false, %73 ], [ false, %76 ], [ %87, %82 ]
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %14, align 1
  br label %91

; <label>:91:                                     ; preds = %88, %45
  %92 = load i8, i8* %14, align 1
  %93 = trunc i8 %92 to i1
  br i1 %93, label %94, label %120

; <label>:94:                                     ; preds = %91
  %95 = load %5*, %5** %12, align 8
  %96 = icmp ne %5* %95, null
  br i1 %96, label %107, label %97

; <label>:97:                                     ; preds = %94
  %98 = call %5* @291(%0** %16)
  store %5* %98, %5** %12, align 8
  %99 = load %21*, %21** %5, align 8
  %100 = load i64, i64* %9, align 8
  %101 = getelementptr inbounds %21, %21* %99, i64 %100
  %102 = load %0*, %0** %16, align 8
  %103 = load %5*, %5** %12, align 8
  %104 = getelementptr inbounds %5, %5* %103, i32 0, i32 3
  %105 = getelementptr inbounds [1 x i8], [1 x i8]* %104, i32 0, i32 0
  %106 = call i64 @344(%21* %101, i64 0, i64 1, %0* %102, i8* %105)
  br label %107

; <label>:107:                                    ; preds = %97, %94
  %108 = load %5*, %5** %12, align 8
  %109 = getelementptr inbounds %5, %5* %108, i32 0, i32 3
  %110 = getelementptr inbounds [1 x i8], [1 x i8]* %109, i32 0, i32 0
  %111 = load %21*, %21** %5, align 8
  %112 = load i64, i64* %9, align 8
  %113 = getelementptr inbounds %21, %21* %111, i64 %112
  %114 = getelementptr inbounds %21, %21* %113, i32 0, i32 0
  store i8* %110, i8** %114, align 8
  %115 = load %5*, %5** %12, align 8
  %116 = load %21*, %21** %5, align 8
  %117 = load i64, i64* %9, align 8
  %118 = getelementptr inbounds %21, %21* %116, i64 %117
  %119 = getelementptr inbounds %21, %21* %118, i32 0, i32 1
  store %5* %115, %5** %119, align 8
  br label %120

; <label>:120:                                    ; preds = %91, %107
  %121 = load i64, i64* %9, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %9, align 8
  br label %18

; <label>:123:                                    ; preds = %57, %18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @346(%21*, i64, %0***) #1 {
  %4 = alloca %21*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %0***, align 8
  %7 = alloca %0**, align 8
  %8 = alloca i32, align 4
  store %21* %0, %21** %4, align 8
  store i64 %1, i64* %5, align 8
  store %0*** %2, %0**** %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call noalias i8* @xnmalloc(i64 %9, i64 8)
  %11 = bitcast i8* %10 to %0**
  %12 = load %0***, %0**** %6, align 8
  store %0** %11, %0*** %12, align 8
  store %0** %11, %0*** %7, align 8
  store i32 0, i32* %8, align 4
  br label %13

; <label>:13:                                     ; preds = %65, %3
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* %5, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %68

; <label>:18:                                     ; preds = %13
  %19 = load %21*, %21** %4, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %21, %21* %19, i64 %21
  %23 = getelementptr inbounds %21, %21* %22, i32 0, i32 1
  %24 = load %5*, %5** %23, align 8
  %25 = icmp ne %5* %24, null
  br i1 %25, label %26, label %45

; <label>:26:                                     ; preds = %18
  %27 = load %21*, %21** %4, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %21, %21* %27, i64 %29
  %31 = getelementptr inbounds %21, %21* %30, i32 0, i32 1
  %32 = load %5*, %5** %31, align 8
  %33 = getelementptr inbounds %5, %5* %32, i32 0, i32 2
  %34 = load i8, i8* %33, align 4
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

; <label>:37:                                     ; preds = %26
  %38 = load %21*, %21** %4, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %21, %21* %38, i64 %40
  %42 = getelementptr inbounds %21, %21* %41, i32 0, i32 1
  %43 = load %5*, %5** %42, align 8
  %44 = call %0* @350(%5* %43)
  br label %53

; <label>:45:                                     ; preds = %26, %18
  %46 = load %21*, %21** %4, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %21, %21* %46, i64 %48
  %50 = getelementptr inbounds %21, %21* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call %0* @343(i8* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @47, i32 0, i32 0))
  br label %53

; <label>:53:                                     ; preds = %45, %37
  %54 = phi %0* [ %44, %37 ], [ %52, %45 ]
  %55 = load %0**, %0*** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %0*, %0** %55, i64 %57
  store %0* %54, %0** %58, align 8
  %59 = load %0**, %0*** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %0*, %0** %59, i64 %61
  %63 = load %0*, %0** %62, align 8
  %64 = icmp ne %0* %63, null
  br i1 %64, label %65, label %68

; <label>:65:                                     ; preds = %53
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %13

; <label>:68:                                     ; preds = %53, %13
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  ret i64 %70
}

; Function Attrs: noinline nounwind uwtable
define internal void @347(%21*, i64, i64, %0*, i8*, %0**) #1 {
  %7 = alloca %21*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %0*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %0**, align 8
  %13 = alloca %28*, align 8
  %14 = alloca %9, align 8
  %15 = alloca %9*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %9**, align 8
  %18 = alloca %9**, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %4*, align 8
  %24 = alloca %9*, align 8
  %25 = alloca %9*, align 8
  %26 = alloca %9*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  store %21* %0, %21** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %0* %3, %0** %10, align 8
  store i8* %4, i8** %11, align 8
  store %0** %5, %0*** %12, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call noalias i8* @xnmalloc(i64 %33, i64 56)
  %35 = bitcast i8* %34 to %28*
  store %28* %35, %28** %13, align 8
  store %9* null, %9** %15, align 8
  store i64 0, i64* %16, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call noalias i8* @xnmalloc(i64 %36, i64 8)
  %38 = bitcast i8* %37 to %9**
  store %9** %38, %9*** %17, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call noalias i8* @xnmalloc(i64 %39, i64 8)
  %41 = bitcast i8* %40 to %9**
  store %9** %41, %9*** %18, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call noalias i8* @xnmalloc(i64 %42, i64 8)
  %44 = bitcast i8* %43 to i64*
  store i64* %44, i64** %19, align 8
  %45 = load %4*, %4** @53, align 8
  store %4* %45, %4** %23, align 8
  %46 = getelementptr inbounds %9, %9* %14, i32 0, i32 0
  store i8* null, i8** %46, align 8
  store i64 0, i64* %20, align 8
  br label %47

; <label>:47:                                     ; preds = %156, %6
  %48 = load i64, i64* %20, align 8
  %49 = load i64, i64* %9, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %157

; <label>:51:                                     ; preds = %47
  %52 = load %28*, %28** %13, align 8
  %53 = load i64, i64* %20, align 8
  %54 = getelementptr inbounds %28, %28* %52, i64 %53
  %55 = load i64, i64* @103, align 8
  %56 = load i64, i64* %9, align 8
  %57 = udiv i64 0, %56
  %58 = icmp ugt i64 %55, %57
  br i1 %58, label %59, label %61

; <label>:59:                                     ; preds = %51
  %60 = load i64, i64* @103, align 8
  br label %64

; <label>:61:                                     ; preds = %51
  %62 = load i64, i64* %9, align 8
  %63 = udiv i64 0, %62
  br label %64

; <label>:64:                                     ; preds = %61, %59
  %65 = phi i64 [ %60, %59 ], [ %63, %61 ]
  call void @287(%28* %54, i64 32, i64 %65)
  %66 = load %28*, %28** %13, align 8
  %67 = load i64, i64* %20, align 8
  %68 = getelementptr inbounds %28, %28* %66, i64 %67
  %69 = load %0**, %0*** %12, align 8
  %70 = load i64, i64* %20, align 8
  %71 = getelementptr inbounds %0*, %0** %69, i64 %70
  %72 = load %0*, %0** %71, align 8
  %73 = load %21*, %21** %7, align 8
  %74 = load i64, i64* %20, align 8
  %75 = getelementptr inbounds %21, %21* %73, i64 %74
  %76 = getelementptr inbounds %21, %21* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call zeroext i1 @288(%28* %68, %0* %72, i8* %77)
  br i1 %78, label %79, label %102

; <label>:79:                                     ; preds = %64
  %80 = load %28*, %28** %13, align 8
  %81 = load i64, i64* %20, align 8
  %82 = getelementptr inbounds %28, %28* %80, i64 %81
  %83 = call %9* @289(%28* %82)
  store %9* %83, %9** %24, align 8
  %84 = load %9*, %9** %24, align 8
  %85 = getelementptr inbounds %9, %9* %84, i64 -1
  %86 = load %9**, %9*** %17, align 8
  %87 = load i64, i64* %20, align 8
  %88 = getelementptr inbounds %9*, %9** %86, i64 %87
  store %9* %85, %9** %88, align 8
  %89 = load %9*, %9** %24, align 8
  %90 = load %28*, %28** %13, align 8
  %91 = load i64, i64* %20, align 8
  %92 = getelementptr inbounds %28, %28* %90, i64 %91
  %93 = getelementptr inbounds %28, %28* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = sub i64 0, %94
  %96 = getelementptr inbounds %9, %9* %89, i64 %95
  %97 = load %9**, %9*** %18, align 8
  %98 = load i64, i64* %20, align 8
  %99 = getelementptr inbounds %9*, %9** %97, i64 %98
  store %9* %96, %9** %99, align 8
  %100 = load i64, i64* %20, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %20, align 8
  br label %156

; <label>:102:                                    ; preds = %64
  %103 = load %0**, %0*** %12, align 8
  %104 = load i64, i64* %20, align 8
  %105 = getelementptr inbounds %0*, %0** %103, i64 %104
  %106 = load %0*, %0** %105, align 8
  %107 = load %21*, %21** %7, align 8
  %108 = load i64, i64* %20, align 8
  %109 = getelementptr inbounds %21, %21* %107, i64 %108
  %110 = getelementptr inbounds %21, %21* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  call void @290(%0* %106, i8* %111)
  %112 = load i64, i64* %20, align 8
  %113 = load i64, i64* %8, align 8
  %114 = icmp ult i64 %112, %113
  br i1 %114, label %115, label %123

; <label>:115:                                    ; preds = %102
  %116 = load i64, i64* %8, align 8
  %117 = add i64 %116, -1
  store i64 %117, i64* %8, align 8
  %118 = load %21*, %21** %7, align 8
  %119 = load i64, i64* %20, align 8
  %120 = getelementptr inbounds %21, %21* %118, i64 %119
  %121 = getelementptr inbounds %21, %21* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  call void @348(i8* %122)
  br label %123

; <label>:123:                                    ; preds = %115, %102
  %124 = load %28*, %28** %13, align 8
  %125 = load i64, i64* %20, align 8
  %126 = getelementptr inbounds %28, %28* %124, i64 %125
  %127 = getelementptr inbounds %28, %28* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  call void @free(i8* %128) #11
  %129 = load i64, i64* %9, align 8
  %130 = add i64 %129, -1
  store i64 %130, i64* %9, align 8
  %131 = load i64, i64* %20, align 8
  store i64 %131, i64* %21, align 8
  br label %132

; <label>:132:                                    ; preds = %136, %123
  %133 = load i64, i64* %21, align 8
  %134 = load i64, i64* %9, align 8
  %135 = icmp ult i64 %133, %134
  br i1 %135, label %136, label %156

; <label>:136:                                    ; preds = %132
  %137 = load %21*, %21** %7, align 8
  %138 = load i64, i64* %21, align 8
  %139 = getelementptr inbounds %21, %21* %137, i64 %138
  %140 = load %21*, %21** %7, align 8
  %141 = load i64, i64* %21, align 8
  %142 = add i64 %141, 1
  %143 = getelementptr inbounds %21, %21* %140, i64 %142
  %144 = bitcast %21* %139 to i8*
  %145 = bitcast %21* %143 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %144, i8* %145, i64 16, i32 8, i1 false)
  %146 = load %0**, %0*** %12, align 8
  %147 = load i64, i64* %21, align 8
  %148 = add i64 %147, 1
  %149 = getelementptr inbounds %0*, %0** %146, i64 %148
  %150 = load %0*, %0** %149, align 8
  %151 = load %0**, %0*** %12, align 8
  %152 = load i64, i64* %21, align 8
  %153 = getelementptr inbounds %0*, %0** %151, i64 %152
  store %0* %150, %0** %153, align 8
  %154 = load i64, i64* %21, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %21, align 8
  br label %132

; <label>:156:                                    ; preds = %132, %79
  br label %47

; <label>:157:                                    ; preds = %47
  store i64 0, i64* %20, align 8
  br label %158

; <label>:158:                                    ; preds = %162, %157
  %159 = load i64, i64* %20, align 8
  %160 = load i64, i64* %9, align 8
  %161 = icmp ult i64 %159, %160
  br i1 %161, label %162, label %169

; <label>:162:                                    ; preds = %158
  %163 = load i64, i64* %20, align 8
  %164 = load i64*, i64** %19, align 8
  %165 = load i64, i64* %20, align 8
  %166 = getelementptr inbounds i64, i64* %164, i64 %165
  store i64 %163, i64* %166, align 8
  %167 = load i64, i64* %20, align 8
  %168 = add i64 %167, 1
  store i64 %168, i64* %20, align 8
  br label %158

; <label>:169:                                    ; preds = %158
  store i64 1, i64* %20, align 8
  br label %170

; <label>:170:                                    ; preds = %210, %169
  %171 = load i64, i64* %20, align 8
  %172 = load i64, i64* %9, align 8
  %173 = icmp ult i64 %171, %172
  br i1 %173, label %174, label %213

; <label>:174:                                    ; preds = %170
  %175 = load %9**, %9*** %17, align 8
  %176 = load i64*, i64** %19, align 8
  %177 = load i64, i64* %20, align 8
  %178 = sub i64 %177, 1
  %179 = getelementptr inbounds i64, i64* %176, i64 %178
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds %9*, %9** %175, i64 %180
  %182 = load %9*, %9** %181, align 8
  %183 = load %9**, %9*** %17, align 8
  %184 = load i64*, i64** %19, align 8
  %185 = load i64, i64* %20, align 8
  %186 = getelementptr inbounds i64, i64* %184, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds %9*, %9** %183, i64 %187
  %189 = load %9*, %9** %188, align 8
  %190 = call i32 @301(%9* %182, %9* %189)
  %191 = icmp slt i32 0, %190
  br i1 %191, label %192, label %210

; <label>:192:                                    ; preds = %174
  %193 = load i64*, i64** %19, align 8
  %194 = load i64, i64* %20, align 8
  %195 = sub i64 %194, 1
  %196 = getelementptr inbounds i64, i64* %193, i64 %195
  %197 = load i64, i64* %196, align 8
  store i64 %197, i64* %22, align 8
  %198 = load i64*, i64** %19, align 8
  %199 = load i64, i64* %20, align 8
  %200 = getelementptr inbounds i64, i64* %198, i64 %199
  %201 = load i64, i64* %200, align 8
  %202 = load i64*, i64** %19, align 8
  %203 = load i64, i64* %20, align 8
  %204 = sub i64 %203, 1
  %205 = getelementptr inbounds i64, i64* %202, i64 %204
  store i64 %201, i64* %205, align 8
  %206 = load i64, i64* %22, align 8
  %207 = load i64*, i64** %19, align 8
  %208 = load i64, i64* %20, align 8
  %209 = getelementptr inbounds i64, i64* %207, i64 %208
  store i64 %206, i64* %209, align 8
  store i64 0, i64* %20, align 8
  br label %210

; <label>:210:                                    ; preds = %174, %192
  %211 = load i64, i64* %20, align 8
  %212 = add i64 %211, 1
  store i64 %212, i64* %20, align 8
  br label %170

; <label>:213:                                    ; preds = %170
  br label %214

; <label>:214:                                    ; preds = %565, %501, %213
  %215 = load i64, i64* %9, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %570

; <label>:217:                                    ; preds = %214
  %218 = load %9**, %9*** %17, align 8
  %219 = load i64*, i64** %19, align 8
  %220 = getelementptr inbounds i64, i64* %219, i64 0
  %221 = load i64, i64* %220, align 8
  %222 = getelementptr inbounds %9*, %9** %218, i64 %221
  %223 = load %9*, %9** %222, align 8
  store %9* %223, %9** %25, align 8
  %224 = load %9*, %9** %15, align 8
  %225 = icmp ne %9* %224, null
  br i1 %225, label %226, label %234

; <label>:226:                                    ; preds = %217
  %227 = load %9*, %9** %15, align 8
  %228 = load %9*, %9** %25, align 8
  %229 = call i32 @301(%9* %227, %9* %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %234

; <label>:231:                                    ; preds = %226
  store %9* null, %9** %15, align 8
  %232 = load %0*, %0** %10, align 8
  %233 = load i8*, i8** %11, align 8
  call void @302(%9* %14, %0* %232, i8* %233)
  br label %234

; <label>:234:                                    ; preds = %231, %226, %217
  %235 = load %9*, %9** %15, align 8
  %236 = icmp ne %9* %235, null
  br i1 %236, label %305, label %237

; <label>:237:                                    ; preds = %234
  store %9* %14, %9** %15, align 8
  %238 = load i64, i64* %16, align 8
  %239 = load %9*, %9** %25, align 8
  %240 = getelementptr inbounds %9, %9* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = icmp ult i64 %238, %241
  br i1 %242, label %243, label %264

; <label>:243:                                    ; preds = %237
  br label %244

; <label>:244:                                    ; preds = %251, %243
  %245 = load i64, i64* %16, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %251, label %247

; <label>:247:                                    ; preds = %244
  %248 = load %9*, %9** %25, align 8
  %249 = getelementptr inbounds %9, %9* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  store i64 %250, i64* %16, align 8
  br label %258

; <label>:251:                                    ; preds = %244
  %252 = load i64, i64* %16, align 8
  %253 = mul i64 %252, 2
  store i64 %253, i64* %16, align 8
  %254 = load %9*, %9** %25, align 8
  %255 = getelementptr inbounds %9, %9* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = icmp ult i64 %253, %256
  br i1 %257, label %244, label %258

; <label>:258:                                    ; preds = %251, %247
  %259 = getelementptr inbounds %9, %9* %14, i32 0, i32 0
  %260 = load i8*, i8** %259, align 8
  call void @free(i8* %260) #11
  %261 = load i64, i64* %16, align 8
  %262 = call noalias i8* @xmalloc(i64 %261)
  %263 = getelementptr inbounds %9, %9* %14, i32 0, i32 0
  store i8* %262, i8** %263, align 8
  br label %264

; <label>:264:                                    ; preds = %258, %237
  %265 = load %9*, %9** %25, align 8
  %266 = getelementptr inbounds %9, %9* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = getelementptr inbounds %9, %9* %14, i32 0, i32 1
  store i64 %267, i64* %268, align 8
  %269 = getelementptr inbounds %9, %9* %14, i32 0, i32 0
  %270 = load i8*, i8** %269, align 8
  %271 = load %9*, %9** %25, align 8
  %272 = getelementptr inbounds %9, %9* %271, i32 0, i32 0
  %273 = load i8*, i8** %272, align 8
  %274 = getelementptr inbounds %9, %9* %14, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %270, i8* %273, i64 %275, i32 1, i1 false)
  %276 = load %4*, %4** %23, align 8
  %277 = icmp ne %4* %276, null
  br i1 %277, label %278, label %305

; <label>:278:                                    ; preds = %264
  %279 = getelementptr inbounds %9, %9* %14, i32 0, i32 0
  %280 = load i8*, i8** %279, align 8
  %281 = load %9*, %9** %25, align 8
  %282 = getelementptr inbounds %9, %9* %281, i32 0, i32 2
  %283 = load i8*, i8** %282, align 8
  %284 = load %9*, %9** %25, align 8
  %285 = getelementptr inbounds %9, %9* %284, i32 0, i32 0
  %286 = load i8*, i8** %285, align 8
  %287 = ptrtoint i8* %283 to i64
  %288 = ptrtoint i8* %286 to i64
  %289 = sub i64 %287, %288
  %290 = getelementptr inbounds i8, i8* %280, i64 %289
  %291 = getelementptr inbounds %9, %9* %14, i32 0, i32 2
  store i8* %290, i8** %291, align 8
  %292 = getelementptr inbounds %9, %9* %14, i32 0, i32 0
  %293 = load i8*, i8** %292, align 8
  %294 = load %9*, %9** %25, align 8
  %295 = getelementptr inbounds %9, %9* %294, i32 0, i32 3
  %296 = load i8*, i8** %295, align 8
  %297 = load %9*, %9** %25, align 8
  %298 = getelementptr inbounds %9, %9* %297, i32 0, i32 0
  %299 = load i8*, i8** %298, align 8
  %300 = ptrtoint i8* %296 to i64
  %301 = ptrtoint i8* %299 to i64
  %302 = sub i64 %300, %301
  %303 = getelementptr inbounds i8, i8* %293, i64 %302
  %304 = getelementptr inbounds %9, %9* %14, i32 0, i32 3
  store i8* %303, i8** %304, align 8
  br label %305

; <label>:305:                                    ; preds = %234, %278, %264
  %306 = load %9**, %9*** %18, align 8
  %307 = load i64*, i64** %19, align 8
  %308 = getelementptr inbounds i64, i64* %307, i64 0
  %309 = load i64, i64* %308, align 8
  %310 = getelementptr inbounds %9*, %9** %306, i64 %309
  %311 = load %9*, %9** %310, align 8
  %312 = load %9*, %9** %25, align 8
  %313 = icmp ult %9* %311, %312
  br i1 %313, label %314, label %322

; <label>:314:                                    ; preds = %305
  %315 = load %9*, %9** %25, align 8
  %316 = getelementptr inbounds %9, %9* %315, i64 -1
  %317 = load %9**, %9*** %17, align 8
  %318 = load i64*, i64** %19, align 8
  %319 = getelementptr inbounds i64, i64* %318, i64 0
  %320 = load i64, i64* %319, align 8
  %321 = getelementptr inbounds %9*, %9** %317, i64 %320
  store %9* %316, %9** %321, align 8
  br label %502

; <label>:322:                                    ; preds = %305
  %323 = load %28*, %28** %13, align 8
  %324 = load i64*, i64** %19, align 8
  %325 = getelementptr inbounds i64, i64* %324, i64 0
  %326 = load i64, i64* %325, align 8
  %327 = getelementptr inbounds %28, %28* %323, i64 %326
  %328 = load %0**, %0*** %12, align 8
  %329 = load i64*, i64** %19, align 8
  %330 = getelementptr inbounds i64, i64* %329, i64 0
  %331 = load i64, i64* %330, align 8
  %332 = getelementptr inbounds %0*, %0** %328, i64 %331
  %333 = load %0*, %0** %332, align 8
  %334 = load %21*, %21** %7, align 8
  %335 = load i64*, i64** %19, align 8
  %336 = getelementptr inbounds i64, i64* %335, i64 0
  %337 = load i64, i64* %336, align 8
  %338 = getelementptr inbounds %21, %21* %334, i64 %337
  %339 = getelementptr inbounds %21, %21* %338, i32 0, i32 0
  %340 = load i8*, i8** %339, align 8
  %341 = call zeroext i1 @288(%28* %327, %0* %333, i8* %340)
  br i1 %341, label %342, label %371

; <label>:342:                                    ; preds = %322
  %343 = load %28*, %28** %13, align 8
  %344 = load i64*, i64** %19, align 8
  %345 = getelementptr inbounds i64, i64* %344, i64 0
  %346 = load i64, i64* %345, align 8
  %347 = getelementptr inbounds %28, %28* %343, i64 %346
  %348 = call %9* @289(%28* %347)
  store %9* %348, %9** %26, align 8
  %349 = load %9*, %9** %26, align 8
  %350 = getelementptr inbounds %9, %9* %349, i64 -1
  %351 = load %9**, %9*** %17, align 8
  %352 = load i64*, i64** %19, align 8
  %353 = getelementptr inbounds i64, i64* %352, i64 0
  %354 = load i64, i64* %353, align 8
  %355 = getelementptr inbounds %9*, %9** %351, i64 %354
  store %9* %350, %9** %355, align 8
  %356 = load %9*, %9** %26, align 8
  %357 = load %28*, %28** %13, align 8
  %358 = load i64*, i64** %19, align 8
  %359 = getelementptr inbounds i64, i64* %358, i64 0
  %360 = load i64, i64* %359, align 8
  %361 = getelementptr inbounds %28, %28* %357, i64 %360
  %362 = getelementptr inbounds %28, %28* %361, i32 0, i32 2
  %363 = load i64, i64* %362, align 8
  %364 = sub i64 0, %363
  %365 = getelementptr inbounds %9, %9* %356, i64 %364
  %366 = load %9**, %9*** %18, align 8
  %367 = load i64*, i64** %19, align 8
  %368 = getelementptr inbounds i64, i64* %367, i64 0
  %369 = load i64, i64* %368, align 8
  %370 = getelementptr inbounds %9*, %9** %366, i64 %369
  store %9* %365, %9** %370, align 8
  br label %502

; <label>:371:                                    ; preds = %322
  store i64 1, i64* %20, align 8
  br label %372

; <label>:372:                                    ; preds = %391, %371
  %373 = load i64, i64* %20, align 8
  %374 = load i64, i64* %9, align 8
  %375 = icmp ult i64 %373, %374
  br i1 %375, label %376, label %394

; <label>:376:                                    ; preds = %372
  %377 = load i64*, i64** %19, align 8
  %378 = load i64, i64* %20, align 8
  %379 = getelementptr inbounds i64, i64* %377, i64 %378
  %380 = load i64, i64* %379, align 8
  %381 = load i64*, i64** %19, align 8
  %382 = getelementptr inbounds i64, i64* %381, i64 0
  %383 = load i64, i64* %382, align 8
  %384 = icmp ugt i64 %380, %383
  br i1 %384, label %385, label %391

; <label>:385:                                    ; preds = %376
  %386 = load i64*, i64** %19, align 8
  %387 = load i64, i64* %20, align 8
  %388 = getelementptr inbounds i64, i64* %386, i64 %387
  %389 = load i64, i64* %388, align 8
  %390 = add i64 %389, -1
  store i64 %390, i64* %388, align 8
  br label %391

; <label>:391:                                    ; preds = %376, %385
  %392 = load i64, i64* %20, align 8
  %393 = add i64 %392, 1
  store i64 %393, i64* %20, align 8
  br label %372

; <label>:394:                                    ; preds = %372
  %395 = load i64, i64* %9, align 8
  %396 = add i64 %395, -1
  store i64 %396, i64* %9, align 8
  %397 = load %0**, %0*** %12, align 8
  %398 = load i64*, i64** %19, align 8
  %399 = getelementptr inbounds i64, i64* %398, i64 0
  %400 = load i64, i64* %399, align 8
  %401 = getelementptr inbounds %0*, %0** %397, i64 %400
  %402 = load %0*, %0** %401, align 8
  %403 = load %21*, %21** %7, align 8
  %404 = load i64*, i64** %19, align 8
  %405 = getelementptr inbounds i64, i64* %404, i64 0
  %406 = load i64, i64* %405, align 8
  %407 = getelementptr inbounds %21, %21* %403, i64 %406
  %408 = getelementptr inbounds %21, %21* %407, i32 0, i32 0
  %409 = load i8*, i8** %408, align 8
  call void @290(%0* %402, i8* %409)
  %410 = load i64*, i64** %19, align 8
  %411 = getelementptr inbounds i64, i64* %410, i64 0
  %412 = load i64, i64* %411, align 8
  %413 = load i64, i64* %8, align 8
  %414 = icmp ult i64 %412, %413
  br i1 %414, label %415, label %425

; <label>:415:                                    ; preds = %394
  %416 = load i64, i64* %8, align 8
  %417 = add i64 %416, -1
  store i64 %417, i64* %8, align 8
  %418 = load %21*, %21** %7, align 8
  %419 = load i64*, i64** %19, align 8
  %420 = getelementptr inbounds i64, i64* %419, i64 0
  %421 = load i64, i64* %420, align 8
  %422 = getelementptr inbounds %21, %21* %418, i64 %421
  %423 = getelementptr inbounds %21, %21* %422, i32 0, i32 0
  %424 = load i8*, i8** %423, align 8
  call void @348(i8* %424)
  br label %425

; <label>:425:                                    ; preds = %415, %394
  %426 = load %28*, %28** %13, align 8
  %427 = load i64*, i64** %19, align 8
  %428 = getelementptr inbounds i64, i64* %427, i64 0
  %429 = load i64, i64* %428, align 8
  %430 = getelementptr inbounds %28, %28* %426, i64 %429
  %431 = getelementptr inbounds %28, %28* %430, i32 0, i32 0
  %432 = load i8*, i8** %431, align 8
  call void @free(i8* %432) #11
  %433 = load i64*, i64** %19, align 8
  %434 = getelementptr inbounds i64, i64* %433, i64 0
  %435 = load i64, i64* %434, align 8
  store i64 %435, i64* %20, align 8
  br label %436

; <label>:436:                                    ; preds = %440, %425
  %437 = load i64, i64* %20, align 8
  %438 = load i64, i64* %9, align 8
  %439 = icmp ult i64 %437, %438
  br i1 %439, label %440, label %485

; <label>:440:                                    ; preds = %436
  %441 = load %0**, %0*** %12, align 8
  %442 = load i64, i64* %20, align 8
  %443 = add i64 %442, 1
  %444 = getelementptr inbounds %0*, %0** %441, i64 %443
  %445 = load %0*, %0** %444, align 8
  %446 = load %0**, %0*** %12, align 8
  %447 = load i64, i64* %20, align 8
  %448 = getelementptr inbounds %0*, %0** %446, i64 %447
  store %0* %445, %0** %448, align 8
  %449 = load %21*, %21** %7, align 8
  %450 = load i64, i64* %20, align 8
  %451 = getelementptr inbounds %21, %21* %449, i64 %450
  %452 = load %21*, %21** %7, align 8
  %453 = load i64, i64* %20, align 8
  %454 = add i64 %453, 1
  %455 = getelementptr inbounds %21, %21* %452, i64 %454
  %456 = bitcast %21* %451 to i8*
  %457 = bitcast %21* %455 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %456, i8* %457, i64 16, i32 8, i1 false)
  %458 = load %28*, %28** %13, align 8
  %459 = load i64, i64* %20, align 8
  %460 = getelementptr inbounds %28, %28* %458, i64 %459
  %461 = load %28*, %28** %13, align 8
  %462 = load i64, i64* %20, align 8
  %463 = add i64 %462, 1
  %464 = getelementptr inbounds %28, %28* %461, i64 %463
  %465 = bitcast %28* %460 to i8*
  %466 = bitcast %28* %464 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %465, i8* %466, i64 56, i32 8, i1 false)
  %467 = load %9**, %9*** %17, align 8
  %468 = load i64, i64* %20, align 8
  %469 = add i64 %468, 1
  %470 = getelementptr inbounds %9*, %9** %467, i64 %469
  %471 = load %9*, %9** %470, align 8
  %472 = load %9**, %9*** %17, align 8
  %473 = load i64, i64* %20, align 8
  %474 = getelementptr inbounds %9*, %9** %472, i64 %473
  store %9* %471, %9** %474, align 8
  %475 = load %9**, %9*** %18, align 8
  %476 = load i64, i64* %20, align 8
  %477 = add i64 %476, 1
  %478 = getelementptr inbounds %9*, %9** %475, i64 %477
  %479 = load %9*, %9** %478, align 8
  %480 = load %9**, %9*** %18, align 8
  %481 = load i64, i64* %20, align 8
  %482 = getelementptr inbounds %9*, %9** %480, i64 %481
  store %9* %479, %9** %482, align 8
  %483 = load i64, i64* %20, align 8
  %484 = add i64 %483, 1
  store i64 %484, i64* %20, align 8
  br label %436

; <label>:485:                                    ; preds = %436
  store i64 0, i64* %20, align 8
  br label %486

; <label>:486:                                    ; preds = %490, %485
  %487 = load i64, i64* %20, align 8
  %488 = load i64, i64* %9, align 8
  %489 = icmp ult i64 %487, %488
  br i1 %489, label %490, label %501

; <label>:490:                                    ; preds = %486
  %491 = load i64*, i64** %19, align 8
  %492 = load i64, i64* %20, align 8
  %493 = add i64 %492, 1
  %494 = getelementptr inbounds i64, i64* %491, i64 %493
  %495 = load i64, i64* %494, align 8
  %496 = load i64*, i64** %19, align 8
  %497 = load i64, i64* %20, align 8
  %498 = getelementptr inbounds i64, i64* %496, i64 %497
  store i64 %495, i64* %498, align 8
  %499 = load i64, i64* %20, align 8
  %500 = add i64 %499, 1
  store i64 %500, i64* %20, align 8
  br label %486

; <label>:501:                                    ; preds = %486
  br label %214

; <label>:502:                                    ; preds = %342, %314
  store i64 1, i64* %27, align 8
  %503 = load i64, i64* %9, align 8
  store i64 %503, i64* %28, align 8
  %504 = load i64, i64* %27, align 8
  store i64 %504, i64* %29, align 8
  %505 = load i64*, i64** %19, align 8
  %506 = getelementptr inbounds i64, i64* %505, i64 0
  %507 = load i64, i64* %506, align 8
  store i64 %507, i64* %30, align 8
  br label %508

; <label>:508:                                    ; preds = %542, %502
  %509 = load i64, i64* %27, align 8
  %510 = load i64, i64* %28, align 8
  %511 = icmp ult i64 %509, %510
  br i1 %511, label %512, label %547

; <label>:512:                                    ; preds = %508
  %513 = load %9**, %9*** %17, align 8
  %514 = load i64, i64* %30, align 8
  %515 = getelementptr inbounds %9*, %9** %513, i64 %514
  %516 = load %9*, %9** %515, align 8
  %517 = load %9**, %9*** %17, align 8
  %518 = load i64*, i64** %19, align 8
  %519 = load i64, i64* %29, align 8
  %520 = getelementptr inbounds i64, i64* %518, i64 %519
  %521 = load i64, i64* %520, align 8
  %522 = getelementptr inbounds %9*, %9** %517, i64 %521
  %523 = load %9*, %9** %522, align 8
  %524 = call i32 @301(%9* %516, %9* %523)
  store i32 %524, i32* %32, align 4
  %525 = load i32, i32* %32, align 4
  %526 = icmp slt i32 %525, 0
  br i1 %526, label %537, label %527

; <label>:527:                                    ; preds = %512
  %528 = load i32, i32* %32, align 4
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %530, label %539

; <label>:530:                                    ; preds = %527
  %531 = load i64, i64* %30, align 8
  %532 = load i64*, i64** %19, align 8
  %533 = load i64, i64* %29, align 8
  %534 = getelementptr inbounds i64, i64* %532, i64 %533
  %535 = load i64, i64* %534, align 8
  %536 = icmp ult i64 %531, %535
  br i1 %536, label %537, label %539

; <label>:537:                                    ; preds = %530, %512
  %538 = load i64, i64* %29, align 8
  store i64 %538, i64* %28, align 8
  br label %542

; <label>:539:                                    ; preds = %530, %527
  %540 = load i64, i64* %29, align 8
  %541 = add i64 %540, 1
  store i64 %541, i64* %27, align 8
  br label %542

; <label>:542:                                    ; preds = %539, %537
  %543 = load i64, i64* %27, align 8
  %544 = load i64, i64* %28, align 8
  %545 = add i64 %543, %544
  %546 = udiv i64 %545, 2
  store i64 %546, i64* %29, align 8
  br label %508

; <label>:547:                                    ; preds = %508
  %548 = load i64, i64* %27, align 8
  %549 = sub i64 %548, 1
  store i64 %549, i64* %31, align 8
  store i64 0, i64* %21, align 8
  br label %550

; <label>:550:                                    ; preds = %554, %547
  %551 = load i64, i64* %21, align 8
  %552 = load i64, i64* %31, align 8
  %553 = icmp ult i64 %551, %552
  br i1 %553, label %554, label %565

; <label>:554:                                    ; preds = %550
  %555 = load i64*, i64** %19, align 8
  %556 = load i64, i64* %21, align 8
  %557 = add i64 %556, 1
  %558 = getelementptr inbounds i64, i64* %555, i64 %557
  %559 = load i64, i64* %558, align 8
  %560 = load i64*, i64** %19, align 8
  %561 = load i64, i64* %21, align 8
  %562 = getelementptr inbounds i64, i64* %560, i64 %561
  store i64 %559, i64* %562, align 8
  %563 = load i64, i64* %21, align 8
  %564 = add i64 %563, 1
  store i64 %564, i64* %21, align 8
  br label %550

; <label>:565:                                    ; preds = %550
  %566 = load i64, i64* %30, align 8
  %567 = load i64*, i64** %19, align 8
  %568 = load i64, i64* %31, align 8
  %569 = getelementptr inbounds i64, i64* %567, i64 %568
  store i64 %566, i64* %569, align 8
  br label %214

; <label>:570:                                    ; preds = %214
  %571 = load %9*, %9** %15, align 8
  %572 = icmp ne %9* %571, null
  br i1 %572, label %573, label %578

; <label>:573:                                    ; preds = %570
  %574 = load %0*, %0** %10, align 8
  %575 = load i8*, i8** %11, align 8
  call void @302(%9* %14, %0* %574, i8* %575)
  %576 = getelementptr inbounds %9, %9* %14, i32 0, i32 0
  %577 = load i8*, i8** %576, align 8
  call void @free(i8* %577) #11
  br label %578

; <label>:578:                                    ; preds = %573, %570
  %579 = load %0*, %0** %10, align 8
  %580 = load i8*, i8** %11, align 8
  call void @290(%0* %579, i8* %580)
  %581 = load %0**, %0*** %12, align 8
  %582 = bitcast %0** %581 to i8*
  call void @free(i8* %582) #11
  %583 = load %28*, %28** %13, align 8
  %584 = bitcast %28* %583 to i8*
  call void @free(i8* %584) #11
  %585 = load i64*, i64** %19, align 8
  %586 = bitcast i64* %585 to i8*
  call void @free(i8* %586) #11
  %587 = load %9**, %9*** %18, align 8
  %588 = bitcast %9** %587 to i8*
  call void @free(i8* %588) #11
  %589 = load %9**, %9*** %17, align 8
  %590 = bitcast %9** %589 to i8*
  call void @free(i8* %590) #11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @348(i8*) #1 {
  %2 = alloca i8*, align 8
  %3 = alloca %5**, align 8
  %4 = alloca %5*, align 8
  %5 = alloca %5*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %22, align 8
  %9 = alloca %22, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %7, align 4
  store %5** @66, %5*** %3, align 8
  br label %10

; <label>:10:                                     ; preds = %18, %1
  %11 = load %5**, %5*** %3, align 8
  %12 = load volatile %5*, %5** %11, align 8
  store %5* %12, %5** %4, align 8
  %13 = getelementptr inbounds %5, %5* %12, i32 0, i32 3
  %14 = getelementptr inbounds [1 x i8], [1 x i8]* %13, i32 0, i32 0
  %15 = load i8*, i8** %2, align 8
  %16 = icmp ne i8* %14, %15
  %17 = load %5*, %5** %4, align 8
  br i1 %16, label %18, label %20

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds %5, %5* %17, i32 0, i32 0
  store %5** %19, %5*** %3, align 8
  br label %10

; <label>:20:                                     ; preds = %10
  %21 = getelementptr inbounds %5, %5* %17, i32 0, i32 2
  %22 = load i8, i8* %21, align 4
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %29

; <label>:25:                                     ; preds = %20
  %26 = load %5*, %5** %4, align 8
  %27 = getelementptr inbounds %5, %5* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  call void @349(i32 %28)
  br label %29

; <label>:29:                                     ; preds = %25, %20
  %30 = load %5*, %5** %4, align 8
  %31 = getelementptr inbounds %5, %5* %30, i32 0, i32 0
  %32 = load volatile %5*, %5** %31, align 8
  store %5* %32, %5** %5, align 8
  call void @339(%22* sret %9)
  %33 = bitcast %22* %8 to i8*
  %34 = bitcast %22* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 136, i32 8, i1 false)
  %35 = load i8*, i8** %2, align 8
  %36 = call i32 @unlink(i8* %35) #11
  store i32 %36, i32* %6, align 4
  %37 = call i32* @__errno_location() #15
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %7, align 4
  %39 = load %5*, %5** %5, align 8
  %40 = load %5**, %5*** %3, align 8
  store volatile %5* %39, %5** %40, align 8
  call void @340(%22* byval align 8 %8)
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

; <label>:43:                                     ; preds = %29
  %44 = load i32, i32* %7, align 4
  %45 = load i8*, i8** %2, align 8
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @108, i32 0, i32 0), i8* %45)
  br label %46

; <label>:46:                                     ; preds = %43, %29
  %47 = load %5*, %5** %5, align 8
  %48 = icmp ne %5* %47, null
  br i1 %48, label %51, label %49

; <label>:49:                                     ; preds = %46
  %50 = load %5**, %5*** %3, align 8
  store %5** %50, %5*** @100, align 8
  br label %51

; <label>:51:                                     ; preds = %49, %46
  %52 = load %5*, %5** %4, align 8
  %53 = bitcast %5* %52 to i8*
  call void @free(i8* %53) #11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @349(i32) #1 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call zeroext i1 @300(i32 %3)
  br i1 %4, label %5, label %8

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @299(i32 %6)
  br label %8

; <label>:8:                                      ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind
declare i32 @unlink(i8*) #4

; Function Attrs: noinline nounwind uwtable
define internal %0* @350(%5*) #1 {
  %2 = alloca %0*, align 8
  %3 = alloca %5*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca %0*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %5* %0, %5** %3, align 8
  store %0* null, %0** %6, align 8
  %9 = load %5*, %5** %3, align 8
  %10 = getelementptr inbounds %5, %5* %9, i32 0, i32 2
  %11 = load i8, i8* %10, align 4
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %18

; <label>:14:                                     ; preds = %1
  %15 = load %5*, %5** %3, align 8
  %16 = getelementptr inbounds %5, %5* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  call void @349(i32 %17)
  br label %18

; <label>:18:                                     ; preds = %14, %1
  %19 = load %5*, %5** %3, align 8
  %20 = getelementptr inbounds %5, %5* %19, i32 0, i32 3
  %21 = getelementptr inbounds [1 x i8], [1 x i8]* %20, i32 0, i32 0
  %22 = call i32 (i8*, i32, ...) @open(i8* %21, i32 0)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %18
  store %0* null, %0** %2, align 8
  br label %85

; <label>:26:                                     ; preds = %18
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i32 0, i32 0
  %28 = call i32 @333(i32* %27, i64 9)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  switch i32 %29, label %60 [
    i32 -1, label %30
    i32 0, label %42
  ]

; <label>:30:                                     ; preds = %26
  %31 = call i32* @__errno_location() #15
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 24
  br i1 %33, label %34, label %38

; <label>:34:                                     ; preds = %30
  %35 = call i32* @__errno_location() #15
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** @41, align 8
  call void (i32, i32, i8*, ...) @error(i32 2, i32 %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @109, i32 0, i32 0), i8* %37)
  br label %38

; <label>:38:                                     ; preds = %34, %30
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @close(i32 %39)
  %41 = call i32* @__errno_location() #15
  store i32 24, i32* %41, align 4
  br label %83

; <label>:42:                                     ; preds = %26
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @close(i32 %44)
  %46 = load i32, i32* %4, align 4
  call void @335(i32 %46, i32 0)
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @close(i32 %47)
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %50 = load i32, i32* %49, align 4
  call void @335(i32 %50, i32 1)
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @close(i32 %52)
  %54 = load i8*, i8** @41, align 8
  %55 = load i8*, i8** @41, align 8
  %56 = call i32 (i8*, i8*, ...) @execlp(i8* %54, i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @110, i32 0, i32 0), i8* null) #11
  %57 = call i32* @__errno_location() #15
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** @41, align 8
  call void (i32, i32, i8*, ...) @error(i32 2, i32 %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @111, i32 0, i32 0), i8* %59)
  br label %60

; <label>:60:                                     ; preds = %26, %42
  %61 = load i32, i32* %7, align 4
  %62 = load %5*, %5** %3, align 8
  %63 = getelementptr inbounds %5, %5* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %5*, %5** %3, align 8
  call void @334(%5* %64)
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @close(i32 %65)
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @close(i32 %68)
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = call %0* @fdopen(i32 %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @47, i32 0, i32 0)) #11
  store %0* %72, %0** %6, align 8
  %73 = load %0*, %0** %6, align 8
  %74 = icmp ne %0* %73, null
  br i1 %74, label %83, label %75

; <label>:75:                                     ; preds = %60
  %76 = call i32* @__errno_location() #15
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %8, align 4
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @close(i32 %79)
  %81 = load i32, i32* %8, align 4
  %82 = call i32* @__errno_location() #15
  store i32 %81, i32* %82, align 4
  br label %83

; <label>:83:                                     ; preds = %60, %75, %38
  %84 = load %0*, %0** %6, align 8
  store %0* %84, %0** %2, align 8
  br label %85

; <label>:85:                                     ; preds = %83, %25
  %86 = load %0*, %0** %2, align 8
  ret %0* %86
}

declare i32 @open(i8*, i32, ...) #2

; Function Attrs: nounwind
declare i8* @stpcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind uwtable
define internal void @351(%4*, i8*) #1 {
  %3 = alloca %4*, align 8
  %4 = alloca i8*, align 8
  store %4* %0, %4** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %4*, %4** %3, align 8
  %6 = getelementptr inbounds %4, %4* %5, i32 0, i32 6
  %7 = load i8, i8* %6, align 8
  %8 = trunc i8 %7 to i1
  br i1 %8, label %14, label %9

; <label>:9:                                      ; preds = %2
  %10 = load %4*, %4** %3, align 8
  %11 = getelementptr inbounds %4, %4* %10, i32 0, i32 7
  %12 = load i8, i8* %11, align 1
  %13 = trunc i8 %12 to i1
  br i1 %13, label %14, label %17

; <label>:14:                                     ; preds = %9, %2
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %4, align 8
  store i8 98, i8* %15, align 1
  br label %17

; <label>:17:                                     ; preds = %14, %9
  %18 = load %4*, %4** %3, align 8
  %19 = getelementptr inbounds %4, %4* %18, i32 0, i32 4
  %20 = load i8*, i8** %19, align 8
  %21 = icmp eq i8* %20, getelementptr inbounds ([256 x i8], [256 x i8]* @124, i32 0, i32 0)
  br i1 %21, label %22, label %25

; <label>:22:                                     ; preds = %17
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %4, align 8
  store i8 100, i8* %23, align 1
  br label %25

; <label>:25:                                     ; preds = %22, %17
  %26 = load %4*, %4** %3, align 8
  %27 = getelementptr inbounds %4, %4* %26, i32 0, i32 5
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %33

; <label>:30:                                     ; preds = %25
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %4, align 8
  store i8 102, i8* %31, align 1
  br label %33

; <label>:33:                                     ; preds = %30, %25
  %34 = load %4*, %4** %3, align 8
  %35 = getelementptr inbounds %4, %4* %34, i32 0, i32 10
  %36 = load i8, i8* %35, align 4
  %37 = trunc i8 %36 to i1
  br i1 %37, label %38, label %41

; <label>:38:                                     ; preds = %33
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %4, align 8
  store i8 103, i8* %39, align 1
  br label %41

; <label>:41:                                     ; preds = %38, %33
  %42 = load %4*, %4** %3, align 8
  %43 = getelementptr inbounds %4, %4* %42, i32 0, i32 11
  %44 = load i8, i8* %43, align 1
  %45 = trunc i8 %44 to i1
  br i1 %45, label %46, label %49

; <label>:46:                                     ; preds = %41
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %4, align 8
  store i8 104, i8* %47, align 1
  br label %49

; <label>:49:                                     ; preds = %46, %41
  %50 = load %4*, %4** %3, align 8
  %51 = getelementptr inbounds %4, %4* %50, i32 0, i32 4
  %52 = load i8*, i8** %51, align 8
  %53 = icmp eq i8* %52, getelementptr inbounds ([256 x i8], [256 x i8]* @125, i32 0, i32 0)
  br i1 %53, label %54, label %57

; <label>:54:                                     ; preds = %49
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %4, align 8
  store i8 105, i8* %55, align 1
  br label %57

; <label>:57:                                     ; preds = %54, %49
  %58 = load %4*, %4** %3, align 8
  %59 = getelementptr inbounds %4, %4* %58, i32 0, i32 12
  %60 = load i8, i8* %59, align 2
  %61 = trunc i8 %60 to i1
  br i1 %61, label %62, label %65

; <label>:62:                                     ; preds = %57
  %63 = load i8*, i8** %4, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %4, align 8
  store i8 77, i8* %63, align 1
  br label %65

; <label>:65:                                     ; preds = %62, %57
  %66 = load %4*, %4** %3, align 8
  %67 = getelementptr inbounds %4, %4* %66, i32 0, i32 8
  %68 = load i8, i8* %67, align 2
  %69 = trunc i8 %68 to i1
  br i1 %69, label %70, label %73

; <label>:70:                                     ; preds = %65
  %71 = load i8*, i8** %4, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %4, align 8
  store i8 110, i8* %71, align 1
  br label %73

; <label>:73:                                     ; preds = %70, %65
  %74 = load %4*, %4** %3, align 8
  %75 = getelementptr inbounds %4, %4* %74, i32 0, i32 9
  %76 = load i8, i8* %75, align 1
  %77 = trunc i8 %76 to i1
  br i1 %77, label %78, label %81

; <label>:78:                                     ; preds = %73
  %79 = load i8*, i8** %4, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %4, align 8
  store i8 82, i8* %79, align 1
  br label %81

; <label>:81:                                     ; preds = %78, %73
  %82 = load %4*, %4** %3, align 8
  %83 = getelementptr inbounds %4, %4* %82, i32 0, i32 13
  %84 = load i8, i8* %83, align 1
  %85 = trunc i8 %84 to i1
  br i1 %85, label %86, label %89

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %4, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %4, align 8
  store i8 114, i8* %87, align 1
  br label %89

; <label>:89:                                     ; preds = %86, %81
  %90 = load %4*, %4** %3, align 8
  %91 = getelementptr inbounds %4, %4* %90, i32 0, i32 14
  %92 = load i8, i8* %91, align 8
  %93 = trunc i8 %92 to i1
  br i1 %93, label %94, label %97

; <label>:94:                                     ; preds = %89
  %95 = load i8*, i8** %4, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %4, align 8
  store i8 86, i8* %95, align 1
  br label %97

; <label>:97:                                     ; preds = %94, %89
  %98 = load i8*, i8** %4, align 8
  store i8 0, i8* %98, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @352(i64) #1 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp ule i64 %3, -1
  %5 = load i64, i64* %2, align 8
  br i1 %4, label %9, label %6

; <label>:6:                                      ; preds = %1
  %7 = urem i64 %5, 1000000
  %8 = add i64 %7, 1000000
  br label %9

; <label>:9:                                      ; preds = %1, %6
  %10 = phi i64 [ %8, %6 ], [ %5, %1 ]
  ret i64 %10
}

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: noinline nounwind uwtable
define internal void @353() #1 {
  %1 = alloca %5*, align 8
  %2 = load volatile %5*, %5** @66, align 8
  store %5* %2, %5** %1, align 8
  br label %3

; <label>:3:                                      ; preds = %6, %0
  %4 = load %5*, %5** %1, align 8
  %5 = icmp ne %5* %4, null
  br i1 %5, label %6, label %14

; <label>:6:                                      ; preds = %3
  %7 = load %5*, %5** %1, align 8
  %8 = getelementptr inbounds %5, %5* %7, i32 0, i32 3
  %9 = getelementptr inbounds [1 x i8], [1 x i8]* %8, i32 0, i32 0
  %10 = call i32 @unlink(i8* %9) #11
  %11 = load %5*, %5** %1, align 8
  %12 = getelementptr inbounds %5, %5* %11, i32 0, i32 0
  %13 = load volatile %5*, %5** %12, align 8
  store %5* %13, %5** %1, align 8
  br label %3

; <label>:14:                                     ; preds = %3
  store volatile %5* null, %5** @66, align 8
  ret void
}

; Function Attrs: nounwind
declare i32 @raise(i32) #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #7

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) #5

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @354(i8*, i8*) #1 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %10*, align 8
  %6 = alloca %10*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %10*
  store %10* %8, %10** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %10*
  store %10* %10, %10** %6, align 8
  %11 = load %10*, %10** %5, align 8
  %12 = getelementptr inbounds %10, %10* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load %10*, %10** %6, align 8
  %15 = getelementptr inbounds %10, %10* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @strcmp(i8* %13, i8* %16) #13
  ret i32 %17
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #2

; Function Attrs: noinline nounwind uwtable
define internal void @355() #1 {
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
  %15 = call i64 @strlen(i8* %14) #13
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
  %29 = call i32 @strncmp(i8* %26, i8* %27, i64 %28) #13
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %64, label %31

; <label>:31:                                     ; preds = %22
  %32 = load i8**, i8*** %7, align 8
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @strlen(i8* %35) #13
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
  %61 = call i32 @memcmp(i8* %54, i8* %59, i64 %60) #13
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

; Function Attrs: noinline nounwind uwtable
define void @argmatch_invalid(i8*, i8*, i64) #1 {
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
  %11 = select i1 %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @172, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @173, i32 0, i32 0)
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
define void @argmatch_valid(i8**, i8*, i64) #1 {
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
  %10 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @174, i32 0, i32 0), %0* %9)
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
  %28 = call i32 @memcmp(i8* %21, i8* %26, i64 %27) #13
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

; <label>:30:                                     ; preds = %20, %17
  %31 = load %0*, %0** @stderr, align 8
  %32 = load i8**, i8*** %4, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @quote(i8* %35)
  %37 = call i32 (%0*, i8*, ...) @fprintf(%0* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @175, i32 0, i32 0), i8* %36)
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
  %50 = call i32 (%0*, i8*, ...) @fprintf(%0* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @176, i32 0, i32 0), i8* %49)
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

declare i32 @putc_unlocked(i32, %0*) #2

; Function Attrs: noinline nounwind uwtable
define void @close_stdout() #1 {
  %1 = alloca i8*, align 8
  %2 = load %0*, %0** @stdout, align 8
  %3 = call i32 @close_stream(%0* %2)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %25

; <label>:5:                                      ; preds = %0
  %6 = load i8, i8* @178, align 1
  %7 = trunc i8 %6 to i1
  br i1 %7, label %8, label %12

; <label>:8:                                      ; preds = %5
  %9 = call i32* @__errno_location() #15
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 32
  br i1 %11, label %25, label %12

; <label>:12:                                     ; preds = %8, %5
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @179, i32 0, i32 0), i8** %1, align 8
  %13 = load i8*, i8** @177, align 8
  %14 = icmp ne i8* %13, null
  %15 = call i32* @__errno_location() #15
  %16 = load i32, i32* %15, align 4
  br i1 %14, label %17, label %21

; <label>:17:                                     ; preds = %12
  %18 = load i8*, i8** @177, align 8
  %19 = call i8* @quotearg_colon(i8* %18)
  %20 = load i8*, i8** %1, align 8
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @180, i32 0, i32 0), i8* %19, i8* %20)
  br label %23

; <label>:21:                                     ; preds = %12
  %22 = load i8*, i8** %1, align 8
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @181, i32 0, i32 0), i8* %22)
  br label %23

; <label>:23:                                     ; preds = %21, %17
  %24 = load volatile i32, i32* @exit_failure, align 4
  call void @_exit(i32 %24) #14
  unreachable

; <label>:25:                                     ; preds = %8, %0
  %26 = load %0*, %0** @stderr, align 8
  %27 = call i32 @close_stream(%0* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

; <label>:29:                                     ; preds = %25
  %30 = load volatile i32, i32* @exit_failure, align 4
  call void @_exit(i32 %30) #14
  unreachable

; <label>:31:                                     ; preds = %25
  ret void
}

; Function Attrs: noreturn
declare void @_exit(i32) #9

; Function Attrs: noinline nounwind uwtable
define void @md5_init_ctx(%11*) #1 {
  %2 = alloca %11*, align 8
  store %11* %0, %11** %2, align 8
  %3 = load %11*, %11** %2, align 8
  %4 = getelementptr inbounds %11, %11* %3, i32 0, i32 0
  store i32 1732584193, i32* %4, align 4
  %5 = load %11*, %11** %2, align 8
  %6 = getelementptr inbounds %11, %11* %5, i32 0, i32 1
  store i32 -271733879, i32* %6, align 4
  %7 = load %11*, %11** %2, align 8
  %8 = getelementptr inbounds %11, %11* %7, i32 0, i32 2
  store i32 -1732584194, i32* %8, align 4
  %9 = load %11*, %11** %2, align 8
  %10 = getelementptr inbounds %11, %11* %9, i32 0, i32 3
  store i32 271733878, i32* %10, align 4
  %11 = load %11*, %11** %2, align 8
  %12 = getelementptr inbounds %11, %11* %11, i32 0, i32 4
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 0, i32* %13, align 4
  %14 = load %11*, %11** %2, align 8
  %15 = getelementptr inbounds %11, %11* %14, i32 0, i32 4
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  store i32 0, i32* %16, align 4
  %17 = load %11*, %11** %2, align 8
  %18 = getelementptr inbounds %11, %11* %17, i32 0, i32 5
  store i32 0, i32* %18, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i8* @md5_read_ctx(%11*, i8*) #1 {
  %3 = alloca %11*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %11* %0, %11** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  store i8* %6, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load %11*, %11** %3, align 8
  %10 = getelementptr inbounds %11, %11* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  call void @356(i8* %8, i32 %11)
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 4
  %14 = load %11*, %11** %3, align 8
  %15 = getelementptr inbounds %11, %11* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  call void @356(i8* %13, i32 %16)
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 8
  %19 = load %11*, %11** %3, align 8
  %20 = getelementptr inbounds %11, %11* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  call void @356(i8* %18, i32 %21)
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 12
  %24 = load %11*, %11** %3, align 8
  %25 = getelementptr inbounds %11, %11* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  call void @356(i8* %23, i32 %26)
  %27 = load i8*, i8** %4, align 8
  ret i8* %27
}

; Function Attrs: noinline nounwind uwtable
define internal void @356(i8*, i32) #1 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i32* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 4, i32 1, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i8* @md5_finish_ctx(%11*, i8*) #1 {
  %3 = alloca %11*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %11* %0, %11** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %11*, %11** %3, align 8
  %8 = getelementptr inbounds %11, %11* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ult i32 %10, 56
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 16, i32 32
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %11*, %11** %3, align 8
  %17 = getelementptr inbounds %11, %11* %16, i32 0, i32 4
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = add i32 %19, %15
  store i32 %20, i32* %18, align 4
  %21 = load %11*, %11** %3, align 8
  %22 = getelementptr inbounds %11, %11* %21, i32 0, i32 4
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %33

; <label>:27:                                     ; preds = %2
  %28 = load %11*, %11** %3, align 8
  %29 = getelementptr inbounds %11, %11* %28, i32 0, i32 4
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %30, align 4
  br label %33

; <label>:33:                                     ; preds = %27, %2
  %34 = load %11*, %11** %3, align 8
  %35 = getelementptr inbounds %11, %11* %34, i32 0, i32 4
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %35, i64 0, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 3
  %39 = load %11*, %11** %3, align 8
  %40 = getelementptr inbounds %11, %11* %39, i32 0, i32 6
  %41 = load i64, i64* %6, align 8
  %42 = sub i64 %41, 2
  %43 = getelementptr inbounds [32 x i32], [32 x i32]* %40, i64 0, i64 %42
  store i32 %38, i32* %43, align 4
  %44 = load %11*, %11** %3, align 8
  %45 = getelementptr inbounds %11, %11* %44, i32 0, i32 4
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %45, i64 0, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 3
  %49 = load %11*, %11** %3, align 8
  %50 = getelementptr inbounds %11, %11* %49, i32 0, i32 4
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %50, i64 0, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = lshr i32 %52, 29
  %54 = or i32 %48, %53
  %55 = load %11*, %11** %3, align 8
  %56 = getelementptr inbounds %11, %11* %55, i32 0, i32 6
  %57 = load i64, i64* %6, align 8
  %58 = sub i64 %57, 1
  %59 = getelementptr inbounds [32 x i32], [32 x i32]* %56, i64 0, i64 %58
  store i32 %54, i32* %59, align 4
  %60 = load %11*, %11** %3, align 8
  %61 = getelementptr inbounds %11, %11* %60, i32 0, i32 6
  %62 = getelementptr inbounds [32 x i32], [32 x i32]* %61, i32 0, i32 0
  %63 = bitcast i32* %62 to i8*
  %64 = load i32, i32* %5, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i64, i64* %6, align 8
  %68 = sub i64 %67, 2
  %69 = mul i64 %68, 4
  %70 = load i32, i32* %5, align 4
  %71 = zext i32 %70 to i64
  %72 = sub i64 %69, %71
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @182, i32 0, i32 0), i64 %72, i32 1, i1 false)
  %73 = load %11*, %11** %3, align 8
  %74 = getelementptr inbounds %11, %11* %73, i32 0, i32 6
  %75 = getelementptr inbounds [32 x i32], [32 x i32]* %74, i32 0, i32 0
  %76 = bitcast i32* %75 to i8*
  %77 = load i64, i64* %6, align 8
  %78 = mul i64 %77, 4
  %79 = load %11*, %11** %3, align 8
  call void @md5_process_block(i8* %76, i64 %78, %11* %79) #11
  %80 = load %11*, %11** %3, align 8
  %81 = load i8*, i8** %4, align 8
  %82 = call i8* @md5_read_ctx(%11* %80, i8* %81) #11
  ret i8* %82
}

; Function Attrs: noinline nounwind uwtable
define void @md5_process_block(i8*, i64, %11*) #1 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %11*, align 8
  %7 = alloca [16 x i32], align 16
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %11* %2, %11** %6, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %8, align 8
  %22 = load i64, i64* %5, align 8
  %23 = udiv i64 %22, 4
  store i64 %23, i64* %9, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32* %26, i32** %10, align 8
  %27 = load %11*, %11** %6, align 8
  %28 = getelementptr inbounds %11, %11* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %11, align 4
  %30 = load %11*, %11** %6, align 8
  %31 = getelementptr inbounds %11, %11* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %12, align 4
  %33 = load %11*, %11** %6, align 8
  %34 = getelementptr inbounds %11, %11* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %13, align 4
  %36 = load %11*, %11** %6, align 8
  %37 = getelementptr inbounds %11, %11* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %14, align 4
  %39 = load i64, i64* %5, align 8
  %40 = load %11*, %11** %6, align 8
  %41 = getelementptr inbounds %11, %11* %40, i32 0, i32 4
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %41, i64 0, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = zext i32 %43 to i64
  %45 = add i64 %44, %39
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 4
  %47 = load %11*, %11** %6, align 8
  %48 = getelementptr inbounds %11, %11* %47, i32 0, i32 4
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %48, i64 0, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = zext i32 %50 to i64
  %52 = load i64, i64* %5, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %60

; <label>:54:                                     ; preds = %3
  %55 = load %11*, %11** %6, align 8
  %56 = getelementptr inbounds %11, %11* %55, i32 0, i32 4
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %56, i64 0, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %57, align 4
  br label %60

; <label>:60:                                     ; preds = %54, %3
  br label %61

; <label>:61:                                     ; preds = %65, %60
  %62 = load i32*, i32** %8, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = icmp ult i32* %62, %63
  br i1 %64, label %65, label %1443

; <label>:65:                                     ; preds = %61
  %66 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i32 0, i32 0
  store i32* %66, i32** %15, align 8
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %18, align 4
  %70 = load i32, i32* %14, align 4
  store i32 %70, i32* %19, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %14, align 4
  %75 = xor i32 %73, %74
  %76 = and i32 %72, %75
  %77 = xor i32 %71, %76
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %15, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %15, align 8
  store i32 %79, i32* %80, align 4
  %82 = add i32 %77, %79
  %83 = add i32 %82, -680876936
  %84 = load i32, i32* %11, align 4
  %85 = add i32 %84, %83
  store i32 %85, i32* %11, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %8, align 8
  %88 = load i32, i32* %11, align 4
  %89 = shl i32 %88, 7
  %90 = load i32, i32* %11, align 4
  %91 = lshr i32 %90, 25
  %92 = or i32 %89, %91
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %11, align 4
  %95 = add i32 %94, %93
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %13, align 4
  %100 = xor i32 %98, %99
  %101 = and i32 %97, %100
  %102 = xor i32 %96, %101
  %103 = load i32*, i32** %8, align 8
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %15, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %15, align 8
  store i32 %104, i32* %105, align 4
  %107 = add i32 %102, %104
  %108 = add i32 %107, -389564586
  %109 = load i32, i32* %14, align 4
  %110 = add i32 %109, %108
  store i32 %110, i32* %14, align 4
  %111 = load i32*, i32** %8, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %8, align 8
  %113 = load i32, i32* %14, align 4
  %114 = shl i32 %113, 12
  %115 = load i32, i32* %14, align 4
  %116 = lshr i32 %115, 20
  %117 = or i32 %114, %116
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %14, align 4
  %120 = add i32 %119, %118
  store i32 %120, i32* %14, align 4
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %12, align 4
  %125 = xor i32 %123, %124
  %126 = and i32 %122, %125
  %127 = xor i32 %121, %126
  %128 = load i32*, i32** %8, align 8
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %15, align 8
  %131 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %131, i32** %15, align 8
  store i32 %129, i32* %130, align 4
  %132 = add i32 %127, %129
  %133 = add i32 %132, 606105819
  %134 = load i32, i32* %13, align 4
  %135 = add i32 %134, %133
  store i32 %135, i32* %13, align 4
  %136 = load i32*, i32** %8, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 1
  store i32* %137, i32** %8, align 8
  %138 = load i32, i32* %13, align 4
  %139 = shl i32 %138, 17
  %140 = load i32, i32* %13, align 4
  %141 = lshr i32 %140, 15
  %142 = or i32 %139, %141
  store i32 %142, i32* %13, align 4
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* %13, align 4
  %145 = add i32 %144, %143
  store i32 %145, i32* %13, align 4
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* %11, align 4
  %150 = xor i32 %148, %149
  %151 = and i32 %147, %150
  %152 = xor i32 %146, %151
  %153 = load i32*, i32** %8, align 8
  %154 = load i32, i32* %153, align 4
  %155 = load i32*, i32** %15, align 8
  %156 = getelementptr inbounds i32, i32* %155, i32 1
  store i32* %156, i32** %15, align 8
  store i32 %154, i32* %155, align 4
  %157 = add i32 %152, %154
  %158 = add i32 %157, -1044525330
  %159 = load i32, i32* %12, align 4
  %160 = add i32 %159, %158
  store i32 %160, i32* %12, align 4
  %161 = load i32*, i32** %8, align 8
  %162 = getelementptr inbounds i32, i32* %161, i32 1
  store i32* %162, i32** %8, align 8
  %163 = load i32, i32* %12, align 4
  %164 = shl i32 %163, 22
  %165 = load i32, i32* %12, align 4
  %166 = lshr i32 %165, 10
  %167 = or i32 %164, %166
  store i32 %167, i32* %12, align 4
  %168 = load i32, i32* %13, align 4
  %169 = load i32, i32* %12, align 4
  %170 = add i32 %169, %168
  store i32 %170, i32* %12, align 4
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* %14, align 4
  %175 = xor i32 %173, %174
  %176 = and i32 %172, %175
  %177 = xor i32 %171, %176
  %178 = load i32*, i32** %8, align 8
  %179 = load i32, i32* %178, align 4
  %180 = load i32*, i32** %15, align 8
  %181 = getelementptr inbounds i32, i32* %180, i32 1
  store i32* %181, i32** %15, align 8
  store i32 %179, i32* %180, align 4
  %182 = add i32 %177, %179
  %183 = add i32 %182, -176418897
  %184 = load i32, i32* %11, align 4
  %185 = add i32 %184, %183
  store i32 %185, i32* %11, align 4
  %186 = load i32*, i32** %8, align 8
  %187 = getelementptr inbounds i32, i32* %186, i32 1
  store i32* %187, i32** %8, align 8
  %188 = load i32, i32* %11, align 4
  %189 = shl i32 %188, 7
  %190 = load i32, i32* %11, align 4
  %191 = lshr i32 %190, 25
  %192 = or i32 %189, %191
  store i32 %192, i32* %11, align 4
  %193 = load i32, i32* %12, align 4
  %194 = load i32, i32* %11, align 4
  %195 = add i32 %194, %193
  store i32 %195, i32* %11, align 4
  %196 = load i32, i32* %13, align 4
  %197 = load i32, i32* %11, align 4
  %198 = load i32, i32* %12, align 4
  %199 = load i32, i32* %13, align 4
  %200 = xor i32 %198, %199
  %201 = and i32 %197, %200
  %202 = xor i32 %196, %201
  %203 = load i32*, i32** %8, align 8
  %204 = load i32, i32* %203, align 4
  %205 = load i32*, i32** %15, align 8
  %206 = getelementptr inbounds i32, i32* %205, i32 1
  store i32* %206, i32** %15, align 8
  store i32 %204, i32* %205, align 4
  %207 = add i32 %202, %204
  %208 = add i32 %207, 1200080426
  %209 = load i32, i32* %14, align 4
  %210 = add i32 %209, %208
  store i32 %210, i32* %14, align 4
  %211 = load i32*, i32** %8, align 8
  %212 = getelementptr inbounds i32, i32* %211, i32 1
  store i32* %212, i32** %8, align 8
  %213 = load i32, i32* %14, align 4
  %214 = shl i32 %213, 12
  %215 = load i32, i32* %14, align 4
  %216 = lshr i32 %215, 20
  %217 = or i32 %214, %216
  store i32 %217, i32* %14, align 4
  %218 = load i32, i32* %11, align 4
  %219 = load i32, i32* %14, align 4
  %220 = add i32 %219, %218
  store i32 %220, i32* %14, align 4
  %221 = load i32, i32* %12, align 4
  %222 = load i32, i32* %14, align 4
  %223 = load i32, i32* %11, align 4
  %224 = load i32, i32* %12, align 4
  %225 = xor i32 %223, %224
  %226 = and i32 %222, %225
  %227 = xor i32 %221, %226
  %228 = load i32*, i32** %8, align 8
  %229 = load i32, i32* %228, align 4
  %230 = load i32*, i32** %15, align 8
  %231 = getelementptr inbounds i32, i32* %230, i32 1
  store i32* %231, i32** %15, align 8
  store i32 %229, i32* %230, align 4
  %232 = add i32 %227, %229
  %233 = add i32 %232, -1473231341
  %234 = load i32, i32* %13, align 4
  %235 = add i32 %234, %233
  store i32 %235, i32* %13, align 4
  %236 = load i32*, i32** %8, align 8
  %237 = getelementptr inbounds i32, i32* %236, i32 1
  store i32* %237, i32** %8, align 8
  %238 = load i32, i32* %13, align 4
  %239 = shl i32 %238, 17
  %240 = load i32, i32* %13, align 4
  %241 = lshr i32 %240, 15
  %242 = or i32 %239, %241
  store i32 %242, i32* %13, align 4
  %243 = load i32, i32* %14, align 4
  %244 = load i32, i32* %13, align 4
  %245 = add i32 %244, %243
  store i32 %245, i32* %13, align 4
  %246 = load i32, i32* %11, align 4
  %247 = load i32, i32* %13, align 4
  %248 = load i32, i32* %14, align 4
  %249 = load i32, i32* %11, align 4
  %250 = xor i32 %248, %249
  %251 = and i32 %247, %250
  %252 = xor i32 %246, %251
  %253 = load i32*, i32** %8, align 8
  %254 = load i32, i32* %253, align 4
  %255 = load i32*, i32** %15, align 8
  %256 = getelementptr inbounds i32, i32* %255, i32 1
  store i32* %256, i32** %15, align 8
  store i32 %254, i32* %255, align 4
  %257 = add i32 %252, %254
  %258 = add i32 %257, -45705983
  %259 = load i32, i32* %12, align 4
  %260 = add i32 %259, %258
  store i32 %260, i32* %12, align 4
  %261 = load i32*, i32** %8, align 8
  %262 = getelementptr inbounds i32, i32* %261, i32 1
  store i32* %262, i32** %8, align 8
  %263 = load i32, i32* %12, align 4
  %264 = shl i32 %263, 22
  %265 = load i32, i32* %12, align 4
  %266 = lshr i32 %265, 10
  %267 = or i32 %264, %266
  store i32 %267, i32* %12, align 4
  %268 = load i32, i32* %13, align 4
  %269 = load i32, i32* %12, align 4
  %270 = add i32 %269, %268
  store i32 %270, i32* %12, align 4
  %271 = load i32, i32* %14, align 4
  %272 = load i32, i32* %12, align 4
  %273 = load i32, i32* %13, align 4
  %274 = load i32, i32* %14, align 4
  %275 = xor i32 %273, %274
  %276 = and i32 %272, %275
  %277 = xor i32 %271, %276
  %278 = load i32*, i32** %8, align 8
  %279 = load i32, i32* %278, align 4
  %280 = load i32*, i32** %15, align 8
  %281 = getelementptr inbounds i32, i32* %280, i32 1
  store i32* %281, i32** %15, align 8
  store i32 %279, i32* %280, align 4
  %282 = add i32 %277, %279
  %283 = add i32 %282, 1770035416
  %284 = load i32, i32* %11, align 4
  %285 = add i32 %284, %283
  store i32 %285, i32* %11, align 4
  %286 = load i32*, i32** %8, align 8
  %287 = getelementptr inbounds i32, i32* %286, i32 1
  store i32* %287, i32** %8, align 8
  %288 = load i32, i32* %11, align 4
  %289 = shl i32 %288, 7
  %290 = load i32, i32* %11, align 4
  %291 = lshr i32 %290, 25
  %292 = or i32 %289, %291
  store i32 %292, i32* %11, align 4
  %293 = load i32, i32* %12, align 4
  %294 = load i32, i32* %11, align 4
  %295 = add i32 %294, %293
  store i32 %295, i32* %11, align 4
  %296 = load i32, i32* %13, align 4
  %297 = load i32, i32* %11, align 4
  %298 = load i32, i32* %12, align 4
  %299 = load i32, i32* %13, align 4
  %300 = xor i32 %298, %299
  %301 = and i32 %297, %300
  %302 = xor i32 %296, %301
  %303 = load i32*, i32** %8, align 8
  %304 = load i32, i32* %303, align 4
  %305 = load i32*, i32** %15, align 8
  %306 = getelementptr inbounds i32, i32* %305, i32 1
  store i32* %306, i32** %15, align 8
  store i32 %304, i32* %305, align 4
  %307 = add i32 %302, %304
  %308 = add i32 %307, -1958414417
  %309 = load i32, i32* %14, align 4
  %310 = add i32 %309, %308
  store i32 %310, i32* %14, align 4
  %311 = load i32*, i32** %8, align 8
  %312 = getelementptr inbounds i32, i32* %311, i32 1
  store i32* %312, i32** %8, align 8
  %313 = load i32, i32* %14, align 4
  %314 = shl i32 %313, 12
  %315 = load i32, i32* %14, align 4
  %316 = lshr i32 %315, 20
  %317 = or i32 %314, %316
  store i32 %317, i32* %14, align 4
  %318 = load i32, i32* %11, align 4
  %319 = load i32, i32* %14, align 4
  %320 = add i32 %319, %318
  store i32 %320, i32* %14, align 4
  %321 = load i32, i32* %12, align 4
  %322 = load i32, i32* %14, align 4
  %323 = load i32, i32* %11, align 4
  %324 = load i32, i32* %12, align 4
  %325 = xor i32 %323, %324
  %326 = and i32 %322, %325
  %327 = xor i32 %321, %326
  %328 = load i32*, i32** %8, align 8
  %329 = load i32, i32* %328, align 4
  %330 = load i32*, i32** %15, align 8
  %331 = getelementptr inbounds i32, i32* %330, i32 1
  store i32* %331, i32** %15, align 8
  store i32 %329, i32* %330, align 4
  %332 = add i32 %327, %329
  %333 = add i32 %332, -42063
  %334 = load i32, i32* %13, align 4
  %335 = add i32 %334, %333
  store i32 %335, i32* %13, align 4
  %336 = load i32*, i32** %8, align 8
  %337 = getelementptr inbounds i32, i32* %336, i32 1
  store i32* %337, i32** %8, align 8
  %338 = load i32, i32* %13, align 4
  %339 = shl i32 %338, 17
  %340 = load i32, i32* %13, align 4
  %341 = lshr i32 %340, 15
  %342 = or i32 %339, %341
  store i32 %342, i32* %13, align 4
  %343 = load i32, i32* %14, align 4
  %344 = load i32, i32* %13, align 4
  %345 = add i32 %344, %343
  store i32 %345, i32* %13, align 4
  %346 = load i32, i32* %11, align 4
  %347 = load i32, i32* %13, align 4
  %348 = load i32, i32* %14, align 4
  %349 = load i32, i32* %11, align 4
  %350 = xor i32 %348, %349
  %351 = and i32 %347, %350
  %352 = xor i32 %346, %351
  %353 = load i32*, i32** %8, align 8
  %354 = load i32, i32* %353, align 4
  %355 = load i32*, i32** %15, align 8
  %356 = getelementptr inbounds i32, i32* %355, i32 1
  store i32* %356, i32** %15, align 8
  store i32 %354, i32* %355, align 4
  %357 = add i32 %352, %354
  %358 = add i32 %357, -1990404162
  %359 = load i32, i32* %12, align 4
  %360 = add i32 %359, %358
  store i32 %360, i32* %12, align 4
  %361 = load i32*, i32** %8, align 8
  %362 = getelementptr inbounds i32, i32* %361, i32 1
  store i32* %362, i32** %8, align 8
  %363 = load i32, i32* %12, align 4
  %364 = shl i32 %363, 22
  %365 = load i32, i32* %12, align 4
  %366 = lshr i32 %365, 10
  %367 = or i32 %364, %366
  store i32 %367, i32* %12, align 4
  %368 = load i32, i32* %13, align 4
  %369 = load i32, i32* %12, align 4
  %370 = add i32 %369, %368
  store i32 %370, i32* %12, align 4
  %371 = load i32, i32* %14, align 4
  %372 = load i32, i32* %12, align 4
  %373 = load i32, i32* %13, align 4
  %374 = load i32, i32* %14, align 4
  %375 = xor i32 %373, %374
  %376 = and i32 %372, %375
  %377 = xor i32 %371, %376
  %378 = load i32*, i32** %8, align 8
  %379 = load i32, i32* %378, align 4
  %380 = load i32*, i32** %15, align 8
  %381 = getelementptr inbounds i32, i32* %380, i32 1
  store i32* %381, i32** %15, align 8
  store i32 %379, i32* %380, align 4
  %382 = add i32 %377, %379
  %383 = add i32 %382, 1804603682
  %384 = load i32, i32* %11, align 4
  %385 = add i32 %384, %383
  store i32 %385, i32* %11, align 4
  %386 = load i32*, i32** %8, align 8
  %387 = getelementptr inbounds i32, i32* %386, i32 1
  store i32* %387, i32** %8, align 8
  %388 = load i32, i32* %11, align 4
  %389 = shl i32 %388, 7
  %390 = load i32, i32* %11, align 4
  %391 = lshr i32 %390, 25
  %392 = or i32 %389, %391
  store i32 %392, i32* %11, align 4
  %393 = load i32, i32* %12, align 4
  %394 = load i32, i32* %11, align 4
  %395 = add i32 %394, %393
  store i32 %395, i32* %11, align 4
  %396 = load i32, i32* %13, align 4
  %397 = load i32, i32* %11, align 4
  %398 = load i32, i32* %12, align 4
  %399 = load i32, i32* %13, align 4
  %400 = xor i32 %398, %399
  %401 = and i32 %397, %400
  %402 = xor i32 %396, %401
  %403 = load i32*, i32** %8, align 8
  %404 = load i32, i32* %403, align 4
  %405 = load i32*, i32** %15, align 8
  %406 = getelementptr inbounds i32, i32* %405, i32 1
  store i32* %406, i32** %15, align 8
  store i32 %404, i32* %405, align 4
  %407 = add i32 %402, %404
  %408 = add i32 %407, -40341101
  %409 = load i32, i32* %14, align 4
  %410 = add i32 %409, %408
  store i32 %410, i32* %14, align 4
  %411 = load i32*, i32** %8, align 8
  %412 = getelementptr inbounds i32, i32* %411, i32 1
  store i32* %412, i32** %8, align 8
  %413 = load i32, i32* %14, align 4
  %414 = shl i32 %413, 12
  %415 = load i32, i32* %14, align 4
  %416 = lshr i32 %415, 20
  %417 = or i32 %414, %416
  store i32 %417, i32* %14, align 4
  %418 = load i32, i32* %11, align 4
  %419 = load i32, i32* %14, align 4
  %420 = add i32 %419, %418
  store i32 %420, i32* %14, align 4
  %421 = load i32, i32* %12, align 4
  %422 = load i32, i32* %14, align 4
  %423 = load i32, i32* %11, align 4
  %424 = load i32, i32* %12, align 4
  %425 = xor i32 %423, %424
  %426 = and i32 %422, %425
  %427 = xor i32 %421, %426
  %428 = load i32*, i32** %8, align 8
  %429 = load i32, i32* %428, align 4
  %430 = load i32*, i32** %15, align 8
  %431 = getelementptr inbounds i32, i32* %430, i32 1
  store i32* %431, i32** %15, align 8
  store i32 %429, i32* %430, align 4
  %432 = add i32 %427, %429
  %433 = add i32 %432, -1502002290
  %434 = load i32, i32* %13, align 4
  %435 = add i32 %434, %433
  store i32 %435, i32* %13, align 4
  %436 = load i32*, i32** %8, align 8
  %437 = getelementptr inbounds i32, i32* %436, i32 1
  store i32* %437, i32** %8, align 8
  %438 = load i32, i32* %13, align 4
  %439 = shl i32 %438, 17
  %440 = load i32, i32* %13, align 4
  %441 = lshr i32 %440, 15
  %442 = or i32 %439, %441
  store i32 %442, i32* %13, align 4
  %443 = load i32, i32* %14, align 4
  %444 = load i32, i32* %13, align 4
  %445 = add i32 %444, %443
  store i32 %445, i32* %13, align 4
  %446 = load i32, i32* %11, align 4
  %447 = load i32, i32* %13, align 4
  %448 = load i32, i32* %14, align 4
  %449 = load i32, i32* %11, align 4
  %450 = xor i32 %448, %449
  %451 = and i32 %447, %450
  %452 = xor i32 %446, %451
  %453 = load i32*, i32** %8, align 8
  %454 = load i32, i32* %453, align 4
  %455 = load i32*, i32** %15, align 8
  %456 = getelementptr inbounds i32, i32* %455, i32 1
  store i32* %456, i32** %15, align 8
  store i32 %454, i32* %455, align 4
  %457 = add i32 %452, %454
  %458 = add i32 %457, 1236535329
  %459 = load i32, i32* %12, align 4
  %460 = add i32 %459, %458
  store i32 %460, i32* %12, align 4
  %461 = load i32*, i32** %8, align 8
  %462 = getelementptr inbounds i32, i32* %461, i32 1
  store i32* %462, i32** %8, align 8
  %463 = load i32, i32* %12, align 4
  %464 = shl i32 %463, 22
  %465 = load i32, i32* %12, align 4
  %466 = lshr i32 %465, 10
  %467 = or i32 %464, %466
  store i32 %467, i32* %12, align 4
  %468 = load i32, i32* %13, align 4
  %469 = load i32, i32* %12, align 4
  %470 = add i32 %469, %468
  store i32 %470, i32* %12, align 4
  %471 = load i32, i32* %13, align 4
  %472 = load i32, i32* %14, align 4
  %473 = load i32, i32* %12, align 4
  %474 = load i32, i32* %13, align 4
  %475 = xor i32 %473, %474
  %476 = and i32 %472, %475
  %477 = xor i32 %471, %476
  %478 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 1
  %479 = load i32, i32* %478, align 4
  %480 = add i32 %477, %479
  %481 = add i32 %480, -165796510
  %482 = load i32, i32* %11, align 4
  %483 = add i32 %482, %481
  store i32 %483, i32* %11, align 4
  %484 = load i32, i32* %11, align 4
  %485 = shl i32 %484, 5
  %486 = load i32, i32* %11, align 4
  %487 = lshr i32 %486, 27
  %488 = or i32 %485, %487
  store i32 %488, i32* %11, align 4
  %489 = load i32, i32* %12, align 4
  %490 = load i32, i32* %11, align 4
  %491 = add i32 %490, %489
  store i32 %491, i32* %11, align 4
  %492 = load i32, i32* %12, align 4
  %493 = load i32, i32* %13, align 4
  %494 = load i32, i32* %11, align 4
  %495 = load i32, i32* %12, align 4
  %496 = xor i32 %494, %495
  %497 = and i32 %493, %496
  %498 = xor i32 %492, %497
  %499 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 6
  %500 = load i32, i32* %499, align 8
  %501 = add i32 %498, %500
  %502 = add i32 %501, -1069501632
  %503 = load i32, i32* %14, align 4
  %504 = add i32 %503, %502
  store i32 %504, i32* %14, align 4
  %505 = load i32, i32* %14, align 4
  %506 = shl i32 %505, 9
  %507 = load i32, i32* %14, align 4
  %508 = lshr i32 %507, 23
  %509 = or i32 %506, %508
  store i32 %509, i32* %14, align 4
  %510 = load i32, i32* %11, align 4
  %511 = load i32, i32* %14, align 4
  %512 = add i32 %511, %510
  store i32 %512, i32* %14, align 4
  %513 = load i32, i32* %11, align 4
  %514 = load i32, i32* %12, align 4
  %515 = load i32, i32* %14, align 4
  %516 = load i32, i32* %11, align 4
  %517 = xor i32 %515, %516
  %518 = and i32 %514, %517
  %519 = xor i32 %513, %518
  %520 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 11
  %521 = load i32, i32* %520, align 4
  %522 = add i32 %519, %521
  %523 = add i32 %522, 643717713
  %524 = load i32, i32* %13, align 4
  %525 = add i32 %524, %523
  store i32 %525, i32* %13, align 4
  %526 = load i32, i32* %13, align 4
  %527 = shl i32 %526, 14
  %528 = load i32, i32* %13, align 4
  %529 = lshr i32 %528, 18
  %530 = or i32 %527, %529
  store i32 %530, i32* %13, align 4
  %531 = load i32, i32* %14, align 4
  %532 = load i32, i32* %13, align 4
  %533 = add i32 %532, %531
  store i32 %533, i32* %13, align 4
  %534 = load i32, i32* %14, align 4
  %535 = load i32, i32* %11, align 4
  %536 = load i32, i32* %13, align 4
  %537 = load i32, i32* %14, align 4
  %538 = xor i32 %536, %537
  %539 = and i32 %535, %538
  %540 = xor i32 %534, %539
  %541 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %542 = load i32, i32* %541, align 16
  %543 = add i32 %540, %542
  %544 = add i32 %543, -373897302
  %545 = load i32, i32* %12, align 4
  %546 = add i32 %545, %544
  store i32 %546, i32* %12, align 4
  %547 = load i32, i32* %12, align 4
  %548 = shl i32 %547, 20
  %549 = load i32, i32* %12, align 4
  %550 = lshr i32 %549, 12
  %551 = or i32 %548, %550
  store i32 %551, i32* %12, align 4
  %552 = load i32, i32* %13, align 4
  %553 = load i32, i32* %12, align 4
  %554 = add i32 %553, %552
  store i32 %554, i32* %12, align 4
  %555 = load i32, i32* %13, align 4
  %556 = load i32, i32* %14, align 4
  %557 = load i32, i32* %12, align 4
  %558 = load i32, i32* %13, align 4
  %559 = xor i32 %557, %558
  %560 = and i32 %556, %559
  %561 = xor i32 %555, %560
  %562 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 5
  %563 = load i32, i32* %562, align 4
  %564 = add i32 %561, %563
  %565 = add i32 %564, -701558691
  %566 = load i32, i32* %11, align 4
  %567 = add i32 %566, %565
  store i32 %567, i32* %11, align 4
  %568 = load i32, i32* %11, align 4
  %569 = shl i32 %568, 5
  %570 = load i32, i32* %11, align 4
  %571 = lshr i32 %570, 27
  %572 = or i32 %569, %571
  store i32 %572, i32* %11, align 4
  %573 = load i32, i32* %12, align 4
  %574 = load i32, i32* %11, align 4
  %575 = add i32 %574, %573
  store i32 %575, i32* %11, align 4
  %576 = load i32, i32* %12, align 4
  %577 = load i32, i32* %13, align 4
  %578 = load i32, i32* %11, align 4
  %579 = load i32, i32* %12, align 4
  %580 = xor i32 %578, %579
  %581 = and i32 %577, %580
  %582 = xor i32 %576, %581
  %583 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 10
  %584 = load i32, i32* %583, align 8
  %585 = add i32 %582, %584
  %586 = add i32 %585, 38016083
  %587 = load i32, i32* %14, align 4
  %588 = add i32 %587, %586
  store i32 %588, i32* %14, align 4
  %589 = load i32, i32* %14, align 4
  %590 = shl i32 %589, 9
  %591 = load i32, i32* %14, align 4
  %592 = lshr i32 %591, 23
  %593 = or i32 %590, %592
  store i32 %593, i32* %14, align 4
  %594 = load i32, i32* %11, align 4
  %595 = load i32, i32* %14, align 4
  %596 = add i32 %595, %594
  store i32 %596, i32* %14, align 4
  %597 = load i32, i32* %11, align 4
  %598 = load i32, i32* %12, align 4
  %599 = load i32, i32* %14, align 4
  %600 = load i32, i32* %11, align 4
  %601 = xor i32 %599, %600
  %602 = and i32 %598, %601
  %603 = xor i32 %597, %602
  %604 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 15
  %605 = load i32, i32* %604, align 4
  %606 = add i32 %603, %605
  %607 = add i32 %606, -660478335
  %608 = load i32, i32* %13, align 4
  %609 = add i32 %608, %607
  store i32 %609, i32* %13, align 4
  %610 = load i32, i32* %13, align 4
  %611 = shl i32 %610, 14
  %612 = load i32, i32* %13, align 4
  %613 = lshr i32 %612, 18
  %614 = or i32 %611, %613
  store i32 %614, i32* %13, align 4
  %615 = load i32, i32* %14, align 4
  %616 = load i32, i32* %13, align 4
  %617 = add i32 %616, %615
  store i32 %617, i32* %13, align 4
  %618 = load i32, i32* %14, align 4
  %619 = load i32, i32* %11, align 4
  %620 = load i32, i32* %13, align 4
  %621 = load i32, i32* %14, align 4
  %622 = xor i32 %620, %621
  %623 = and i32 %619, %622
  %624 = xor i32 %618, %623
  %625 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 4
  %626 = load i32, i32* %625, align 16
  %627 = add i32 %624, %626
  %628 = add i32 %627, -405537848
  %629 = load i32, i32* %12, align 4
  %630 = add i32 %629, %628
  store i32 %630, i32* %12, align 4
  %631 = load i32, i32* %12, align 4
  %632 = shl i32 %631, 20
  %633 = load i32, i32* %12, align 4
  %634 = lshr i32 %633, 12
  %635 = or i32 %632, %634
  store i32 %635, i32* %12, align 4
  %636 = load i32, i32* %13, align 4
  %637 = load i32, i32* %12, align 4
  %638 = add i32 %637, %636
  store i32 %638, i32* %12, align 4
  %639 = load i32, i32* %13, align 4
  %640 = load i32, i32* %14, align 4
  %641 = load i32, i32* %12, align 4
  %642 = load i32, i32* %13, align 4
  %643 = xor i32 %641, %642
  %644 = and i32 %640, %643
  %645 = xor i32 %639, %644
  %646 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 9
  %647 = load i32, i32* %646, align 4
  %648 = add i32 %645, %647
  %649 = add i32 %648, 568446438
  %650 = load i32, i32* %11, align 4
  %651 = add i32 %650, %649
  store i32 %651, i32* %11, align 4
  %652 = load i32, i32* %11, align 4
  %653 = shl i32 %652, 5
  %654 = load i32, i32* %11, align 4
  %655 = lshr i32 %654, 27
  %656 = or i32 %653, %655
  store i32 %656, i32* %11, align 4
  %657 = load i32, i32* %12, align 4
  %658 = load i32, i32* %11, align 4
  %659 = add i32 %658, %657
  store i32 %659, i32* %11, align 4
  %660 = load i32, i32* %12, align 4
  %661 = load i32, i32* %13, align 4
  %662 = load i32, i32* %11, align 4
  %663 = load i32, i32* %12, align 4
  %664 = xor i32 %662, %663
  %665 = and i32 %661, %664
  %666 = xor i32 %660, %665
  %667 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 14
  %668 = load i32, i32* %667, align 8
  %669 = add i32 %666, %668
  %670 = add i32 %669, -1019803690
  %671 = load i32, i32* %14, align 4
  %672 = add i32 %671, %670
  store i32 %672, i32* %14, align 4
  %673 = load i32, i32* %14, align 4
  %674 = shl i32 %673, 9
  %675 = load i32, i32* %14, align 4
  %676 = lshr i32 %675, 23
  %677 = or i32 %674, %676
  store i32 %677, i32* %14, align 4
  %678 = load i32, i32* %11, align 4
  %679 = load i32, i32* %14, align 4
  %680 = add i32 %679, %678
  store i32 %680, i32* %14, align 4
  %681 = load i32, i32* %11, align 4
  %682 = load i32, i32* %12, align 4
  %683 = load i32, i32* %14, align 4
  %684 = load i32, i32* %11, align 4
  %685 = xor i32 %683, %684
  %686 = and i32 %682, %685
  %687 = xor i32 %681, %686
  %688 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 3
  %689 = load i32, i32* %688, align 4
  %690 = add i32 %687, %689
  %691 = add i32 %690, -187363961
  %692 = load i32, i32* %13, align 4
  %693 = add i32 %692, %691
  store i32 %693, i32* %13, align 4
  %694 = load i32, i32* %13, align 4
  %695 = shl i32 %694, 14
  %696 = load i32, i32* %13, align 4
  %697 = lshr i32 %696, 18
  %698 = or i32 %695, %697
  store i32 %698, i32* %13, align 4
  %699 = load i32, i32* %14, align 4
  %700 = load i32, i32* %13, align 4
  %701 = add i32 %700, %699
  store i32 %701, i32* %13, align 4
  %702 = load i32, i32* %14, align 4
  %703 = load i32, i32* %11, align 4
  %704 = load i32, i32* %13, align 4
  %705 = load i32, i32* %14, align 4
  %706 = xor i32 %704, %705
  %707 = and i32 %703, %706
  %708 = xor i32 %702, %707
  %709 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 8
  %710 = load i32, i32* %709, align 16
  %711 = add i32 %708, %710
  %712 = add i32 %711, 1163531501
  %713 = load i32, i32* %12, align 4
  %714 = add i32 %713, %712
  store i32 %714, i32* %12, align 4
  %715 = load i32, i32* %12, align 4
  %716 = shl i32 %715, 20
  %717 = load i32, i32* %12, align 4
  %718 = lshr i32 %717, 12
  %719 = or i32 %716, %718
  store i32 %719, i32* %12, align 4
  %720 = load i32, i32* %13, align 4
  %721 = load i32, i32* %12, align 4
  %722 = add i32 %721, %720
  store i32 %722, i32* %12, align 4
  %723 = load i32, i32* %13, align 4
  %724 = load i32, i32* %14, align 4
  %725 = load i32, i32* %12, align 4
  %726 = load i32, i32* %13, align 4
  %727 = xor i32 %725, %726
  %728 = and i32 %724, %727
  %729 = xor i32 %723, %728
  %730 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 13
  %731 = load i32, i32* %730, align 4
  %732 = add i32 %729, %731
  %733 = add i32 %732, -1444681467
  %734 = load i32, i32* %11, align 4
  %735 = add i32 %734, %733
  store i32 %735, i32* %11, align 4
  %736 = load i32, i32* %11, align 4
  %737 = shl i32 %736, 5
  %738 = load i32, i32* %11, align 4
  %739 = lshr i32 %738, 27
  %740 = or i32 %737, %739
  store i32 %740, i32* %11, align 4
  %741 = load i32, i32* %12, align 4
  %742 = load i32, i32* %11, align 4
  %743 = add i32 %742, %741
  store i32 %743, i32* %11, align 4
  %744 = load i32, i32* %12, align 4
  %745 = load i32, i32* %13, align 4
  %746 = load i32, i32* %11, align 4
  %747 = load i32, i32* %12, align 4
  %748 = xor i32 %746, %747
  %749 = and i32 %745, %748
  %750 = xor i32 %744, %749
  %751 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 2
  %752 = load i32, i32* %751, align 8
  %753 = add i32 %750, %752
  %754 = add i32 %753, -51403784
  %755 = load i32, i32* %14, align 4
  %756 = add i32 %755, %754
  store i32 %756, i32* %14, align 4
  %757 = load i32, i32* %14, align 4
  %758 = shl i32 %757, 9
  %759 = load i32, i32* %14, align 4
  %760 = lshr i32 %759, 23
  %761 = or i32 %758, %760
  store i32 %761, i32* %14, align 4
  %762 = load i32, i32* %11, align 4
  %763 = load i32, i32* %14, align 4
  %764 = add i32 %763, %762
  store i32 %764, i32* %14, align 4
  %765 = load i32, i32* %11, align 4
  %766 = load i32, i32* %12, align 4
  %767 = load i32, i32* %14, align 4
  %768 = load i32, i32* %11, align 4
  %769 = xor i32 %767, %768
  %770 = and i32 %766, %769
  %771 = xor i32 %765, %770
  %772 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 7
  %773 = load i32, i32* %772, align 4
  %774 = add i32 %771, %773
  %775 = add i32 %774, 1735328473
  %776 = load i32, i32* %13, align 4
  %777 = add i32 %776, %775
  store i32 %777, i32* %13, align 4
  %778 = load i32, i32* %13, align 4
  %779 = shl i32 %778, 14
  %780 = load i32, i32* %13, align 4
  %781 = lshr i32 %780, 18
  %782 = or i32 %779, %781
  store i32 %782, i32* %13, align 4
  %783 = load i32, i32* %14, align 4
  %784 = load i32, i32* %13, align 4
  %785 = add i32 %784, %783
  store i32 %785, i32* %13, align 4
  %786 = load i32, i32* %14, align 4
  %787 = load i32, i32* %11, align 4
  %788 = load i32, i32* %13, align 4
  %789 = load i32, i32* %14, align 4
  %790 = xor i32 %788, %789
  %791 = and i32 %787, %790
  %792 = xor i32 %786, %791
  %793 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 12
  %794 = load i32, i32* %793, align 16
  %795 = add i32 %792, %794
  %796 = add i32 %795, -1926607734
  %797 = load i32, i32* %12, align 4
  %798 = add i32 %797, %796
  store i32 %798, i32* %12, align 4
  %799 = load i32, i32* %12, align 4
  %800 = shl i32 %799, 20
  %801 = load i32, i32* %12, align 4
  %802 = lshr i32 %801, 12
  %803 = or i32 %800, %802
  store i32 %803, i32* %12, align 4
  %804 = load i32, i32* %13, align 4
  %805 = load i32, i32* %12, align 4
  %806 = add i32 %805, %804
  store i32 %806, i32* %12, align 4
  %807 = load i32, i32* %12, align 4
  %808 = load i32, i32* %13, align 4
  %809 = xor i32 %807, %808
  %810 = load i32, i32* %14, align 4
  %811 = xor i32 %809, %810
  %812 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 5
  %813 = load i32, i32* %812, align 4
  %814 = add i32 %811, %813
  %815 = add i32 %814, -378558
  %816 = load i32, i32* %11, align 4
  %817 = add i32 %816, %815
  store i32 %817, i32* %11, align 4
  %818 = load i32, i32* %11, align 4
  %819 = shl i32 %818, 4
  %820 = load i32, i32* %11, align 4
  %821 = lshr i32 %820, 28
  %822 = or i32 %819, %821
  store i32 %822, i32* %11, align 4
  %823 = load i32, i32* %12, align 4
  %824 = load i32, i32* %11, align 4
  %825 = add i32 %824, %823
  store i32 %825, i32* %11, align 4
  %826 = load i32, i32* %11, align 4
  %827 = load i32, i32* %12, align 4
  %828 = xor i32 %826, %827
  %829 = load i32, i32* %13, align 4
  %830 = xor i32 %828, %829
  %831 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 8
  %832 = load i32, i32* %831, align 16
  %833 = add i32 %830, %832
  %834 = add i32 %833, -2022574463
  %835 = load i32, i32* %14, align 4
  %836 = add i32 %835, %834
  store i32 %836, i32* %14, align 4
  %837 = load i32, i32* %14, align 4
  %838 = shl i32 %837, 11
  %839 = load i32, i32* %14, align 4
  %840 = lshr i32 %839, 21
  %841 = or i32 %838, %840
  store i32 %841, i32* %14, align 4
  %842 = load i32, i32* %11, align 4
  %843 = load i32, i32* %14, align 4
  %844 = add i32 %843, %842
  store i32 %844, i32* %14, align 4
  %845 = load i32, i32* %14, align 4
  %846 = load i32, i32* %11, align 4
  %847 = xor i32 %845, %846
  %848 = load i32, i32* %12, align 4
  %849 = xor i32 %847, %848
  %850 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 11
  %851 = load i32, i32* %850, align 4
  %852 = add i32 %849, %851
  %853 = add i32 %852, 1839030562
  %854 = load i32, i32* %13, align 4
  %855 = add i32 %854, %853
  store i32 %855, i32* %13, align 4
  %856 = load i32, i32* %13, align 4
  %857 = shl i32 %856, 16
  %858 = load i32, i32* %13, align 4
  %859 = lshr i32 %858, 16
  %860 = or i32 %857, %859
  store i32 %860, i32* %13, align 4
  %861 = load i32, i32* %14, align 4
  %862 = load i32, i32* %13, align 4
  %863 = add i32 %862, %861
  store i32 %863, i32* %13, align 4
  %864 = load i32, i32* %13, align 4
  %865 = load i32, i32* %14, align 4
  %866 = xor i32 %864, %865
  %867 = load i32, i32* %11, align 4
  %868 = xor i32 %866, %867
  %869 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 14
  %870 = load i32, i32* %869, align 8
  %871 = add i32 %868, %870
  %872 = add i32 %871, -35309556
  %873 = load i32, i32* %12, align 4
  %874 = add i32 %873, %872
  store i32 %874, i32* %12, align 4
  %875 = load i32, i32* %12, align 4
  %876 = shl i32 %875, 23
  %877 = load i32, i32* %12, align 4
  %878 = lshr i32 %877, 9
  %879 = or i32 %876, %878
  store i32 %879, i32* %12, align 4
  %880 = load i32, i32* %13, align 4
  %881 = load i32, i32* %12, align 4
  %882 = add i32 %881, %880
  store i32 %882, i32* %12, align 4
  %883 = load i32, i32* %12, align 4
  %884 = load i32, i32* %13, align 4
  %885 = xor i32 %883, %884
  %886 = load i32, i32* %14, align 4
  %887 = xor i32 %885, %886
  %888 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 1
  %889 = load i32, i32* %888, align 4
  %890 = add i32 %887, %889
  %891 = add i32 %890, -1530992060
  %892 = load i32, i32* %11, align 4
  %893 = add i32 %892, %891
  store i32 %893, i32* %11, align 4
  %894 = load i32, i32* %11, align 4
  %895 = shl i32 %894, 4
  %896 = load i32, i32* %11, align 4
  %897 = lshr i32 %896, 28
  %898 = or i32 %895, %897
  store i32 %898, i32* %11, align 4
  %899 = load i32, i32* %12, align 4
  %900 = load i32, i32* %11, align 4
  %901 = add i32 %900, %899
  store i32 %901, i32* %11, align 4
  %902 = load i32, i32* %11, align 4
  %903 = load i32, i32* %12, align 4
  %904 = xor i32 %902, %903
  %905 = load i32, i32* %13, align 4
  %906 = xor i32 %904, %905
  %907 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 4
  %908 = load i32, i32* %907, align 16
  %909 = add i32 %906, %908
  %910 = add i32 %909, 1272893353
  %911 = load i32, i32* %14, align 4
  %912 = add i32 %911, %910
  store i32 %912, i32* %14, align 4
  %913 = load i32, i32* %14, align 4
  %914 = shl i32 %913, 11
  %915 = load i32, i32* %14, align 4
  %916 = lshr i32 %915, 21
  %917 = or i32 %914, %916
  store i32 %917, i32* %14, align 4
  %918 = load i32, i32* %11, align 4
  %919 = load i32, i32* %14, align 4
  %920 = add i32 %919, %918
  store i32 %920, i32* %14, align 4
  %921 = load i32, i32* %14, align 4
  %922 = load i32, i32* %11, align 4
  %923 = xor i32 %921, %922
  %924 = load i32, i32* %12, align 4
  %925 = xor i32 %923, %924
  %926 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 7
  %927 = load i32, i32* %926, align 4
  %928 = add i32 %925, %927
  %929 = add i32 %928, -155497632
  %930 = load i32, i32* %13, align 4
  %931 = add i32 %930, %929
  store i32 %931, i32* %13, align 4
  %932 = load i32, i32* %13, align 4
  %933 = shl i32 %932, 16
  %934 = load i32, i32* %13, align 4
  %935 = lshr i32 %934, 16
  %936 = or i32 %933, %935
  store i32 %936, i32* %13, align 4
  %937 = load i32, i32* %14, align 4
  %938 = load i32, i32* %13, align 4
  %939 = add i32 %938, %937
  store i32 %939, i32* %13, align 4
  %940 = load i32, i32* %13, align 4
  %941 = load i32, i32* %14, align 4
  %942 = xor i32 %940, %941
  %943 = load i32, i32* %11, align 4
  %944 = xor i32 %942, %943
  %945 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 10
  %946 = load i32, i32* %945, align 8
  %947 = add i32 %944, %946
  %948 = add i32 %947, -1094730640
  %949 = load i32, i32* %12, align 4
  %950 = add i32 %949, %948
  store i32 %950, i32* %12, align 4
  %951 = load i32, i32* %12, align 4
  %952 = shl i32 %951, 23
  %953 = load i32, i32* %12, align 4
  %954 = lshr i32 %953, 9
  %955 = or i32 %952, %954
  store i32 %955, i32* %12, align 4
  %956 = load i32, i32* %13, align 4
  %957 = load i32, i32* %12, align 4
  %958 = add i32 %957, %956
  store i32 %958, i32* %12, align 4
  %959 = load i32, i32* %12, align 4
  %960 = load i32, i32* %13, align 4
  %961 = xor i32 %959, %960
  %962 = load i32, i32* %14, align 4
  %963 = xor i32 %961, %962
  %964 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 13
  %965 = load i32, i32* %964, align 4
  %966 = add i32 %963, %965
  %967 = add i32 %966, 681279174
  %968 = load i32, i32* %11, align 4
  %969 = add i32 %968, %967
  store i32 %969, i32* %11, align 4
  %970 = load i32, i32* %11, align 4
  %971 = shl i32 %970, 4
  %972 = load i32, i32* %11, align 4
  %973 = lshr i32 %972, 28
  %974 = or i32 %971, %973
  store i32 %974, i32* %11, align 4
  %975 = load i32, i32* %12, align 4
  %976 = load i32, i32* %11, align 4
  %977 = add i32 %976, %975
  store i32 %977, i32* %11, align 4
  %978 = load i32, i32* %11, align 4
  %979 = load i32, i32* %12, align 4
  %980 = xor i32 %978, %979
  %981 = load i32, i32* %13, align 4
  %982 = xor i32 %980, %981
  %983 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %984 = load i32, i32* %983, align 16
  %985 = add i32 %982, %984
  %986 = add i32 %985, -358537222
  %987 = load i32, i32* %14, align 4
  %988 = add i32 %987, %986
  store i32 %988, i32* %14, align 4
  %989 = load i32, i32* %14, align 4
  %990 = shl i32 %989, 11
  %991 = load i32, i32* %14, align 4
  %992 = lshr i32 %991, 21
  %993 = or i32 %990, %992
  store i32 %993, i32* %14, align 4
  %994 = load i32, i32* %11, align 4
  %995 = load i32, i32* %14, align 4
  %996 = add i32 %995, %994
  store i32 %996, i32* %14, align 4
  %997 = load i32, i32* %14, align 4
  %998 = load i32, i32* %11, align 4
  %999 = xor i32 %997, %998
  %1000 = load i32, i32* %12, align 4
  %1001 = xor i32 %999, %1000
  %1002 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 3
  %1003 = load i32, i32* %1002, align 4
  %1004 = add i32 %1001, %1003
  %1005 = add i32 %1004, -722521979
  %1006 = load i32, i32* %13, align 4
  %1007 = add i32 %1006, %1005
  store i32 %1007, i32* %13, align 4
  %1008 = load i32, i32* %13, align 4
  %1009 = shl i32 %1008, 16
  %1010 = load i32, i32* %13, align 4
  %1011 = lshr i32 %1010, 16
  %1012 = or i32 %1009, %1011
  store i32 %1012, i32* %13, align 4
  %1013 = load i32, i32* %14, align 4
  %1014 = load i32, i32* %13, align 4
  %1015 = add i32 %1014, %1013
  store i32 %1015, i32* %13, align 4
  %1016 = load i32, i32* %13, align 4
  %1017 = load i32, i32* %14, align 4
  %1018 = xor i32 %1016, %1017
  %1019 = load i32, i32* %11, align 4
  %1020 = xor i32 %1018, %1019
  %1021 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 6
  %1022 = load i32, i32* %1021, align 8
  %1023 = add i32 %1020, %1022
  %1024 = add i32 %1023, 76029189
  %1025 = load i32, i32* %12, align 4
  %1026 = add i32 %1025, %1024
  store i32 %1026, i32* %12, align 4
  %1027 = load i32, i32* %12, align 4
  %1028 = shl i32 %1027, 23
  %1029 = load i32, i32* %12, align 4
  %1030 = lshr i32 %1029, 9
  %1031 = or i32 %1028, %1030
  store i32 %1031, i32* %12, align 4
  %1032 = load i32, i32* %13, align 4
  %1033 = load i32, i32* %12, align 4
  %1034 = add i32 %1033, %1032
  store i32 %1034, i32* %12, align 4
  %1035 = load i32, i32* %12, align 4
  %1036 = load i32, i32* %13, align 4
  %1037 = xor i32 %1035, %1036
  %1038 = load i32, i32* %14, align 4
  %1039 = xor i32 %1037, %1038
  %1040 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 9
  %1041 = load i32, i32* %1040, align 4
  %1042 = add i32 %1039, %1041
  %1043 = add i32 %1042, -640364487
  %1044 = load i32, i32* %11, align 4
  %1045 = add i32 %1044, %1043
  store i32 %1045, i32* %11, align 4
  %1046 = load i32, i32* %11, align 4
  %1047 = shl i32 %1046, 4
  %1048 = load i32, i32* %11, align 4
  %1049 = lshr i32 %1048, 28
  %1050 = or i32 %1047, %1049
  store i32 %1050, i32* %11, align 4
  %1051 = load i32, i32* %12, align 4
  %1052 = load i32, i32* %11, align 4
  %1053 = add i32 %1052, %1051
  store i32 %1053, i32* %11, align 4
  %1054 = load i32, i32* %11, align 4
  %1055 = load i32, i32* %12, align 4
  %1056 = xor i32 %1054, %1055
  %1057 = load i32, i32* %13, align 4
  %1058 = xor i32 %1056, %1057
  %1059 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 12
  %1060 = load i32, i32* %1059, align 16
  %1061 = add i32 %1058, %1060
  %1062 = add i32 %1061, -421815835
  %1063 = load i32, i32* %14, align 4
  %1064 = add i32 %1063, %1062
  store i32 %1064, i32* %14, align 4
  %1065 = load i32, i32* %14, align 4
  %1066 = shl i32 %1065, 11
  %1067 = load i32, i32* %14, align 4
  %1068 = lshr i32 %1067, 21
  %1069 = or i32 %1066, %1068
  store i32 %1069, i32* %14, align 4
  %1070 = load i32, i32* %11, align 4
  %1071 = load i32, i32* %14, align 4
  %1072 = add i32 %1071, %1070
  store i32 %1072, i32* %14, align 4
  %1073 = load i32, i32* %14, align 4
  %1074 = load i32, i32* %11, align 4
  %1075 = xor i32 %1073, %1074
  %1076 = load i32, i32* %12, align 4
  %1077 = xor i32 %1075, %1076
  %1078 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 15
  %1079 = load i32, i32* %1078, align 4
  %1080 = add i32 %1077, %1079
  %1081 = add i32 %1080, 530742520
  %1082 = load i32, i32* %13, align 4
  %1083 = add i32 %1082, %1081
  store i32 %1083, i32* %13, align 4
  %1084 = load i32, i32* %13, align 4
  %1085 = shl i32 %1084, 16
  %1086 = load i32, i32* %13, align 4
  %1087 = lshr i32 %1086, 16
  %1088 = or i32 %1085, %1087
  store i32 %1088, i32* %13, align 4
  %1089 = load i32, i32* %14, align 4
  %1090 = load i32, i32* %13, align 4
  %1091 = add i32 %1090, %1089
  store i32 %1091, i32* %13, align 4
  %1092 = load i32, i32* %13, align 4
  %1093 = load i32, i32* %14, align 4
  %1094 = xor i32 %1092, %1093
  %1095 = load i32, i32* %11, align 4
  %1096 = xor i32 %1094, %1095
  %1097 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 2
  %1098 = load i32, i32* %1097, align 8
  %1099 = add i32 %1096, %1098
  %1100 = add i32 %1099, -995338651
  %1101 = load i32, i32* %12, align 4
  %1102 = add i32 %1101, %1100
  store i32 %1102, i32* %12, align 4
  %1103 = load i32, i32* %12, align 4
  %1104 = shl i32 %1103, 23
  %1105 = load i32, i32* %12, align 4
  %1106 = lshr i32 %1105, 9
  %1107 = or i32 %1104, %1106
  store i32 %1107, i32* %12, align 4
  %1108 = load i32, i32* %13, align 4
  %1109 = load i32, i32* %12, align 4
  %1110 = add i32 %1109, %1108
  store i32 %1110, i32* %12, align 4
  %1111 = load i32, i32* %13, align 4
  %1112 = load i32, i32* %12, align 4
  %1113 = load i32, i32* %14, align 4
  %1114 = xor i32 %1113, -1
  %1115 = or i32 %1112, %1114
  %1116 = xor i32 %1111, %1115
  %1117 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %1118 = load i32, i32* %1117, align 16
  %1119 = add i32 %1116, %1118
  %1120 = add i32 %1119, -198630844
  %1121 = load i32, i32* %11, align 4
  %1122 = add i32 %1121, %1120
  store i32 %1122, i32* %11, align 4
  %1123 = load i32, i32* %11, align 4
  %1124 = shl i32 %1123, 6
  %1125 = load i32, i32* %11, align 4
  %1126 = lshr i32 %1125, 26
  %1127 = or i32 %1124, %1126
  store i32 %1127, i32* %11, align 4
  %1128 = load i32, i32* %12, align 4
  %1129 = load i32, i32* %11, align 4
  %1130 = add i32 %1129, %1128
  store i32 %1130, i32* %11, align 4
  %1131 = load i32, i32* %12, align 4
  %1132 = load i32, i32* %11, align 4
  %1133 = load i32, i32* %13, align 4
  %1134 = xor i32 %1133, -1
  %1135 = or i32 %1132, %1134
  %1136 = xor i32 %1131, %1135
  %1137 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 7
  %1138 = load i32, i32* %1137, align 4
  %1139 = add i32 %1136, %1138
  %1140 = add i32 %1139, 1126891415
  %1141 = load i32, i32* %14, align 4
  %1142 = add i32 %1141, %1140
  store i32 %1142, i32* %14, align 4
  %1143 = load i32, i32* %14, align 4
  %1144 = shl i32 %1143, 10
  %1145 = load i32, i32* %14, align 4
  %1146 = lshr i32 %1145, 22
  %1147 = or i32 %1144, %1146
  store i32 %1147, i32* %14, align 4
  %1148 = load i32, i32* %11, align 4
  %1149 = load i32, i32* %14, align 4
  %1150 = add i32 %1149, %1148
  store i32 %1150, i32* %14, align 4
  %1151 = load i32, i32* %11, align 4
  %1152 = load i32, i32* %14, align 4
  %1153 = load i32, i32* %12, align 4
  %1154 = xor i32 %1153, -1
  %1155 = or i32 %1152, %1154
  %1156 = xor i32 %1151, %1155
  %1157 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 14
  %1158 = load i32, i32* %1157, align 8
  %1159 = add i32 %1156, %1158
  %1160 = add i32 %1159, -1416354905
  %1161 = load i32, i32* %13, align 4
  %1162 = add i32 %1161, %1160
  store i32 %1162, i32* %13, align 4
  %1163 = load i32, i32* %13, align 4
  %1164 = shl i32 %1163, 15
  %1165 = load i32, i32* %13, align 4
  %1166 = lshr i32 %1165, 17
  %1167 = or i32 %1164, %1166
  store i32 %1167, i32* %13, align 4
  %1168 = load i32, i32* %14, align 4
  %1169 = load i32, i32* %13, align 4
  %1170 = add i32 %1169, %1168
  store i32 %1170, i32* %13, align 4
  %1171 = load i32, i32* %14, align 4
  %1172 = load i32, i32* %13, align 4
  %1173 = load i32, i32* %11, align 4
  %1174 = xor i32 %1173, -1
  %1175 = or i32 %1172, %1174
  %1176 = xor i32 %1171, %1175
  %1177 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 5
  %1178 = load i32, i32* %1177, align 4
  %1179 = add i32 %1176, %1178
  %1180 = add i32 %1179, -57434055
  %1181 = load i32, i32* %12, align 4
  %1182 = add i32 %1181, %1180
  store i32 %1182, i32* %12, align 4
  %1183 = load i32, i32* %12, align 4
  %1184 = shl i32 %1183, 21
  %1185 = load i32, i32* %12, align 4
  %1186 = lshr i32 %1185, 11
  %1187 = or i32 %1184, %1186
  store i32 %1187, i32* %12, align 4
  %1188 = load i32, i32* %13, align 4
  %1189 = load i32, i32* %12, align 4
  %1190 = add i32 %1189, %1188
  store i32 %1190, i32* %12, align 4
  %1191 = load i32, i32* %13, align 4
  %1192 = load i32, i32* %12, align 4
  %1193 = load i32, i32* %14, align 4
  %1194 = xor i32 %1193, -1
  %1195 = or i32 %1192, %1194
  %1196 = xor i32 %1191, %1195
  %1197 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 12
  %1198 = load i32, i32* %1197, align 16
  %1199 = add i32 %1196, %1198
  %1200 = add i32 %1199, 1700485571
  %1201 = load i32, i32* %11, align 4
  %1202 = add i32 %1201, %1200
  store i32 %1202, i32* %11, align 4
  %1203 = load i32, i32* %11, align 4
  %1204 = shl i32 %1203, 6
  %1205 = load i32, i32* %11, align 4
  %1206 = lshr i32 %1205, 26
  %1207 = or i32 %1204, %1206
  store i32 %1207, i32* %11, align 4
  %1208 = load i32, i32* %12, align 4
  %1209 = load i32, i32* %11, align 4
  %1210 = add i32 %1209, %1208
  store i32 %1210, i32* %11, align 4
  %1211 = load i32, i32* %12, align 4
  %1212 = load i32, i32* %11, align 4
  %1213 = load i32, i32* %13, align 4
  %1214 = xor i32 %1213, -1
  %1215 = or i32 %1212, %1214
  %1216 = xor i32 %1211, %1215
  %1217 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 3
  %1218 = load i32, i32* %1217, align 4
  %1219 = add i32 %1216, %1218
  %1220 = add i32 %1219, -1894986606
  %1221 = load i32, i32* %14, align 4
  %1222 = add i32 %1221, %1220
  store i32 %1222, i32* %14, align 4
  %1223 = load i32, i32* %14, align 4
  %1224 = shl i32 %1223, 10
  %1225 = load i32, i32* %14, align 4
  %1226 = lshr i32 %1225, 22
  %1227 = or i32 %1224, %1226
  store i32 %1227, i32* %14, align 4
  %1228 = load i32, i32* %11, align 4
  %1229 = load i32, i32* %14, align 4
  %1230 = add i32 %1229, %1228
  store i32 %1230, i32* %14, align 4
  %1231 = load i32, i32* %11, align 4
  %1232 = load i32, i32* %14, align 4
  %1233 = load i32, i32* %12, align 4
  %1234 = xor i32 %1233, -1
  %1235 = or i32 %1232, %1234
  %1236 = xor i32 %1231, %1235
  %1237 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 10
  %1238 = load i32, i32* %1237, align 8
  %1239 = add i32 %1236, %1238
  %1240 = add i32 %1239, -1051523
  %1241 = load i32, i32* %13, align 4
  %1242 = add i32 %1241, %1240
  store i32 %1242, i32* %13, align 4
  %1243 = load i32, i32* %13, align 4
  %1244 = shl i32 %1243, 15
  %1245 = load i32, i32* %13, align 4
  %1246 = lshr i32 %1245, 17
  %1247 = or i32 %1244, %1246
  store i32 %1247, i32* %13, align 4
  %1248 = load i32, i32* %14, align 4
  %1249 = load i32, i32* %13, align 4
  %1250 = add i32 %1249, %1248
  store i32 %1250, i32* %13, align 4
  %1251 = load i32, i32* %14, align 4
  %1252 = load i32, i32* %13, align 4
  %1253 = load i32, i32* %11, align 4
  %1254 = xor i32 %1253, -1
  %1255 = or i32 %1252, %1254
  %1256 = xor i32 %1251, %1255
  %1257 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 1
  %1258 = load i32, i32* %1257, align 4
  %1259 = add i32 %1256, %1258
  %1260 = add i32 %1259, -2054922799
  %1261 = load i32, i32* %12, align 4
  %1262 = add i32 %1261, %1260
  store i32 %1262, i32* %12, align 4
  %1263 = load i32, i32* %12, align 4
  %1264 = shl i32 %1263, 21
  %1265 = load i32, i32* %12, align 4
  %1266 = lshr i32 %1265, 11
  %1267 = or i32 %1264, %1266
  store i32 %1267, i32* %12, align 4
  %1268 = load i32, i32* %13, align 4
  %1269 = load i32, i32* %12, align 4
  %1270 = add i32 %1269, %1268
  store i32 %1270, i32* %12, align 4
  %1271 = load i32, i32* %13, align 4
  %1272 = load i32, i32* %12, align 4
  %1273 = load i32, i32* %14, align 4
  %1274 = xor i32 %1273, -1
  %1275 = or i32 %1272, %1274
  %1276 = xor i32 %1271, %1275
  %1277 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 8
  %1278 = load i32, i32* %1277, align 16
  %1279 = add i32 %1276, %1278
  %1280 = add i32 %1279, 1873313359
  %1281 = load i32, i32* %11, align 4
  %1282 = add i32 %1281, %1280
  store i32 %1282, i32* %11, align 4
  %1283 = load i32, i32* %11, align 4
  %1284 = shl i32 %1283, 6
  %1285 = load i32, i32* %11, align 4
  %1286 = lshr i32 %1285, 26
  %1287 = or i32 %1284, %1286
  store i32 %1287, i32* %11, align 4
  %1288 = load i32, i32* %12, align 4
  %1289 = load i32, i32* %11, align 4
  %1290 = add i32 %1289, %1288
  store i32 %1290, i32* %11, align 4
  %1291 = load i32, i32* %12, align 4
  %1292 = load i32, i32* %11, align 4
  %1293 = load i32, i32* %13, align 4
  %1294 = xor i32 %1293, -1
  %1295 = or i32 %1292, %1294
  %1296 = xor i32 %1291, %1295
  %1297 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 15
  %1298 = load i32, i32* %1297, align 4
  %1299 = add i32 %1296, %1298
  %1300 = add i32 %1299, -30611744
  %1301 = load i32, i32* %14, align 4
  %1302 = add i32 %1301, %1300
  store i32 %1302, i32* %14, align 4
  %1303 = load i32, i32* %14, align 4
  %1304 = shl i32 %1303, 10
  %1305 = load i32, i32* %14, align 4
  %1306 = lshr i32 %1305, 22
  %1307 = or i32 %1304, %1306
  store i32 %1307, i32* %14, align 4
  %1308 = load i32, i32* %11, align 4
  %1309 = load i32, i32* %14, align 4
  %1310 = add i32 %1309, %1308
  store i32 %1310, i32* %14, align 4
  %1311 = load i32, i32* %11, align 4
  %1312 = load i32, i32* %14, align 4
  %1313 = load i32, i32* %12, align 4
  %1314 = xor i32 %1313, -1
  %1315 = or i32 %1312, %1314
  %1316 = xor i32 %1311, %1315
  %1317 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 6
  %1318 = load i32, i32* %1317, align 8
  %1319 = add i32 %1316, %1318
  %1320 = add i32 %1319, -1560198380
  %1321 = load i32, i32* %13, align 4
  %1322 = add i32 %1321, %1320
  store i32 %1322, i32* %13, align 4
  %1323 = load i32, i32* %13, align 4
  %1324 = shl i32 %1323, 15
  %1325 = load i32, i32* %13, align 4
  %1326 = lshr i32 %1325, 17
  %1327 = or i32 %1324, %1326
  store i32 %1327, i32* %13, align 4
  %1328 = load i32, i32* %14, align 4
  %1329 = load i32, i32* %13, align 4
  %1330 = add i32 %1329, %1328
  store i32 %1330, i32* %13, align 4
  %1331 = load i32, i32* %14, align 4
  %1332 = load i32, i32* %13, align 4
  %1333 = load i32, i32* %11, align 4
  %1334 = xor i32 %1333, -1
  %1335 = or i32 %1332, %1334
  %1336 = xor i32 %1331, %1335
  %1337 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 13
  %1338 = load i32, i32* %1337, align 4
  %1339 = add i32 %1336, %1338
  %1340 = add i32 %1339, 1309151649
  %1341 = load i32, i32* %12, align 4
  %1342 = add i32 %1341, %1340
  store i32 %1342, i32* %12, align 4
  %1343 = load i32, i32* %12, align 4
  %1344 = shl i32 %1343, 21
  %1345 = load i32, i32* %12, align 4
  %1346 = lshr i32 %1345, 11
  %1347 = or i32 %1344, %1346
  store i32 %1347, i32* %12, align 4
  %1348 = load i32, i32* %13, align 4
  %1349 = load i32, i32* %12, align 4
  %1350 = add i32 %1349, %1348
  store i32 %1350, i32* %12, align 4
  %1351 = load i32, i32* %13, align 4
  %1352 = load i32, i32* %12, align 4
  %1353 = load i32, i32* %14, align 4
  %1354 = xor i32 %1353, -1
  %1355 = or i32 %1352, %1354
  %1356 = xor i32 %1351, %1355
  %1357 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 4
  %1358 = load i32, i32* %1357, align 16
  %1359 = add i32 %1356, %1358
  %1360 = add i32 %1359, -145523070
  %1361 = load i32, i32* %11, align 4
  %1362 = add i32 %1361, %1360
  store i32 %1362, i32* %11, align 4
  %1363 = load i32, i32* %11, align 4
  %1364 = shl i32 %1363, 6
  %1365 = load i32, i32* %11, align 4
  %1366 = lshr i32 %1365, 26
  %1367 = or i32 %1364, %1366
  store i32 %1367, i32* %11, align 4
  %1368 = load i32, i32* %12, align 4
  %1369 = load i32, i32* %11, align 4
  %1370 = add i32 %1369, %1368
  store i32 %1370, i32* %11, align 4
  %1371 = load i32, i32* %12, align 4
  %1372 = load i32, i32* %11, align 4
  %1373 = load i32, i32* %13, align 4
  %1374 = xor i32 %1373, -1
  %1375 = or i32 %1372, %1374
  %1376 = xor i32 %1371, %1375
  %1377 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 11
  %1378 = load i32, i32* %1377, align 4
  %1379 = add i32 %1376, %1378
  %1380 = add i32 %1379, -1120210379
  %1381 = load i32, i32* %14, align 4
  %1382 = add i32 %1381, %1380
  store i32 %1382, i32* %14, align 4
  %1383 = load i32, i32* %14, align 4
  %1384 = shl i32 %1383, 10
  %1385 = load i32, i32* %14, align 4
  %1386 = lshr i32 %1385, 22
  %1387 = or i32 %1384, %1386
  store i32 %1387, i32* %14, align 4
  %1388 = load i32, i32* %11, align 4
  %1389 = load i32, i32* %14, align 4
  %1390 = add i32 %1389, %1388
  store i32 %1390, i32* %14, align 4
  %1391 = load i32, i32* %11, align 4
  %1392 = load i32, i32* %14, align 4
  %1393 = load i32, i32* %12, align 4
  %1394 = xor i32 %1393, -1
  %1395 = or i32 %1392, %1394
  %1396 = xor i32 %1391, %1395
  %1397 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 2
  %1398 = load i32, i32* %1397, align 8
  %1399 = add i32 %1396, %1398
  %1400 = add i32 %1399, 718787259
  %1401 = load i32, i32* %13, align 4
  %1402 = add i32 %1401, %1400
  store i32 %1402, i32* %13, align 4
  %1403 = load i32, i32* %13, align 4
  %1404 = shl i32 %1403, 15
  %1405 = load i32, i32* %13, align 4
  %1406 = lshr i32 %1405, 17
  %1407 = or i32 %1404, %1406
  store i32 %1407, i32* %13, align 4
  %1408 = load i32, i32* %14, align 4
  %1409 = load i32, i32* %13, align 4
  %1410 = add i32 %1409, %1408
  store i32 %1410, i32* %13, align 4
  %1411 = load i32, i32* %14, align 4
  %1412 = load i32, i32* %13, align 4
  %1413 = load i32, i32* %11, align 4
  %1414 = xor i32 %1413, -1
  %1415 = or i32 %1412, %1414
  %1416 = xor i32 %1411, %1415
  %1417 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 9
  %1418 = load i32, i32* %1417, align 4
  %1419 = add i32 %1416, %1418
  %1420 = add i32 %1419, -343485551
  %1421 = load i32, i32* %12, align 4
  %1422 = add i32 %1421, %1420
  store i32 %1422, i32* %12, align 4
  %1423 = load i32, i32* %12, align 4
  %1424 = shl i32 %1423, 21
  %1425 = load i32, i32* %12, align 4
  %1426 = lshr i32 %1425, 11
  %1427 = or i32 %1424, %1426
  store i32 %1427, i32* %12, align 4
  %1428 = load i32, i32* %13, align 4
  %1429 = load i32, i32* %12, align 4
  %1430 = add i32 %1429, %1428
  store i32 %1430, i32* %12, align 4
  %1431 = load i32, i32* %16, align 4
  %1432 = load i32, i32* %11, align 4
  %1433 = add i32 %1432, %1431
  store i32 %1433, i32* %11, align 4
  %1434 = load i32, i32* %17, align 4
  %1435 = load i32, i32* %12, align 4
  %1436 = add i32 %1435, %1434
  store i32 %1436, i32* %12, align 4
  %1437 = load i32, i32* %18, align 4
  %1438 = load i32, i32* %13, align 4
  %1439 = add i32 %1438, %1437
  store i32 %1439, i32* %13, align 4
  %1440 = load i32, i32* %19, align 4
  %1441 = load i32, i32* %14, align 4
  %1442 = add i32 %1441, %1440
  store i32 %1442, i32* %14, align 4
  br label %61

; <label>:1443:                                   ; preds = %61
  %1444 = load i32, i32* %11, align 4
  %1445 = load %11*, %11** %6, align 8
  %1446 = getelementptr inbounds %11, %11* %1445, i32 0, i32 0
  store i32 %1444, i32* %1446, align 4
  %1447 = load i32, i32* %12, align 4
  %1448 = load %11*, %11** %6, align 8
  %1449 = getelementptr inbounds %11, %11* %1448, i32 0, i32 1
  store i32 %1447, i32* %1449, align 4
  %1450 = load i32, i32* %13, align 4
  %1451 = load %11*, %11** %6, align 8
  %1452 = getelementptr inbounds %11, %11* %1451, i32 0, i32 2
  store i32 %1450, i32* %1452, align 4
  %1453 = load i32, i32* %14, align 4
  %1454 = load %11*, %11** %6, align 8
  %1455 = getelementptr inbounds %11, %11* %1454, i32 0, i32 3
  store i32 %1453, i32* %1455, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @md5_process_bytes(i8*, i64, %11*) #1 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %11*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %11* %2, %11** %6, align 8
  %10 = load %11*, %11** %6, align 8
  %11 = getelementptr inbounds %11, %11* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %85

; <label>:14:                                     ; preds = %3
  %15 = load %11*, %11** %6, align 8
  %16 = getelementptr inbounds %11, %11* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = sub i64 128, %19
  %21 = load i64, i64* %5, align 8
  %22 = icmp ugt i64 %20, %21
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %7, align 8
  %25 = sub i64 128, %24
  %26 = select i1 %22, i64 %23, i64 %25
  store i64 %26, i64* %8, align 8
  %27 = load %11*, %11** %6, align 8
  %28 = getelementptr inbounds %11, %11* %27, i32 0, i32 6
  %29 = getelementptr inbounds [32 x i32], [32 x i32]* %28, i32 0, i32 0
  %30 = bitcast i32* %29 to i8*
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load i8*, i8** %4, align 8
  %34 = load i64, i64* %8, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 %34, i32 1, i1 false)
  %35 = load i64, i64* %8, align 8
  %36 = load %11*, %11** %6, align 8
  %37 = getelementptr inbounds %11, %11* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = zext i32 %38 to i64
  %40 = add i64 %39, %35
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 4
  %42 = load %11*, %11** %6, align 8
  %43 = getelementptr inbounds %11, %11* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = icmp ugt i32 %44, 64
  br i1 %45, label %46, label %78

; <label>:46:                                     ; preds = %14
  %47 = load %11*, %11** %6, align 8
  %48 = getelementptr inbounds %11, %11* %47, i32 0, i32 6
  %49 = getelementptr inbounds [32 x i32], [32 x i32]* %48, i32 0, i32 0
  %50 = bitcast i32* %49 to i8*
  %51 = load %11*, %11** %6, align 8
  %52 = getelementptr inbounds %11, %11* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, -64
  %55 = zext i32 %54 to i64
  %56 = load %11*, %11** %6, align 8
  call void @md5_process_block(i8* %50, i64 %55, %11* %56) #11
  %57 = load %11*, %11** %6, align 8
  %58 = getelementptr inbounds %11, %11* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 63
  store i32 %60, i32* %58, align 4
  %61 = load %11*, %11** %6, align 8
  %62 = getelementptr inbounds %11, %11* %61, i32 0, i32 6
  %63 = getelementptr inbounds [32 x i32], [32 x i32]* %62, i32 0, i32 0
  %64 = bitcast i32* %63 to i8*
  %65 = load %11*, %11** %6, align 8
  %66 = getelementptr inbounds %11, %11* %65, i32 0, i32 6
  %67 = getelementptr inbounds [32 x i32], [32 x i32]* %66, i32 0, i32 0
  %68 = bitcast i32* %67 to i8*
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* %8, align 8
  %71 = add i64 %69, %70
  %72 = and i64 %71, -64
  %73 = getelementptr inbounds i8, i8* %68, i64 %72
  %74 = load %11*, %11** %6, align 8
  %75 = getelementptr inbounds %11, %11* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = zext i32 %76 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %73, i64 %77, i32 1, i1 false)
  br label %78

; <label>:78:                                     ; preds = %46, %14
  %79 = load i8*, i8** %4, align 8
  %80 = load i64, i64* %8, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8* %81, i8** %4, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %5, align 8
  %84 = sub i64 %83, %82
  store i64 %84, i64* %5, align 8
  br label %85

; <label>:85:                                     ; preds = %78, %3
  %86 = load i64, i64* %5, align 8
  %87 = icmp uge i64 %86, 64
  br i1 %87, label %88, label %119

; <label>:88:                                     ; preds = %85
  %89 = load i8*, i8** %4, align 8
  %90 = ptrtoint i8* %89 to i64
  %91 = urem i64 %90, 4
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %108

; <label>:93:                                     ; preds = %88
  br label %94

; <label>:94:                                     ; preds = %97, %93
  %95 = load i64, i64* %5, align 8
  %96 = icmp ugt i64 %95, 64
  br i1 %96, label %97, label %119

; <label>:97:                                     ; preds = %94
  %98 = load %11*, %11** %6, align 8
  %99 = getelementptr inbounds %11, %11* %98, i32 0, i32 6
  %100 = getelementptr inbounds [32 x i32], [32 x i32]* %99, i32 0, i32 0
  %101 = bitcast i32* %100 to i8*
  %102 = load i8*, i8** %4, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %101, i8* %102, i64 64, i32 1, i1 false)
  %103 = load %11*, %11** %6, align 8
  call void @md5_process_block(i8* %101, i64 64, %11* %103) #11
  %104 = load i8*, i8** %4, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 64
  store i8* %105, i8** %4, align 8
  %106 = load i64, i64* %5, align 8
  %107 = sub i64 %106, 64
  store i64 %107, i64* %5, align 8
  br label %94

; <label>:108:                                    ; preds = %88
  %109 = load i8*, i8** %4, align 8
  %110 = load i64, i64* %5, align 8
  %111 = and i64 %110, -64
  %112 = load %11*, %11** %6, align 8
  call void @md5_process_block(i8* %109, i64 %111, %11* %112) #11
  %113 = load i8*, i8** %4, align 8
  %114 = load i64, i64* %5, align 8
  %115 = and i64 %114, -64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  store i8* %116, i8** %4, align 8
  %117 = load i64, i64* %5, align 8
  %118 = and i64 %117, 63
  store i64 %118, i64* %5, align 8
  br label %119

; <label>:119:                                    ; preds = %108, %94, %85
  %120 = load i64, i64* %5, align 8
  %121 = icmp ugt i64 %120, 0
  br i1 %121, label %122, label %162

; <label>:122:                                    ; preds = %119
  %123 = load %11*, %11** %6, align 8
  %124 = getelementptr inbounds %11, %11* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = zext i32 %125 to i64
  store i64 %126, i64* %9, align 8
  %127 = load %11*, %11** %6, align 8
  %128 = getelementptr inbounds %11, %11* %127, i32 0, i32 6
  %129 = getelementptr inbounds [32 x i32], [32 x i32]* %128, i32 0, i32 0
  %130 = bitcast i32* %129 to i8*
  %131 = load i64, i64* %9, align 8
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  %133 = load i8*, i8** %4, align 8
  %134 = load i64, i64* %5, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %132, i8* %133, i64 %134, i32 1, i1 false)
  %135 = load i64, i64* %5, align 8
  %136 = load i64, i64* %9, align 8
  %137 = add i64 %136, %135
  store i64 %137, i64* %9, align 8
  %138 = load i64, i64* %9, align 8
  %139 = icmp uge i64 %138, 64
  br i1 %139, label %140, label %157

; <label>:140:                                    ; preds = %122
  %141 = load %11*, %11** %6, align 8
  %142 = getelementptr inbounds %11, %11* %141, i32 0, i32 6
  %143 = getelementptr inbounds [32 x i32], [32 x i32]* %142, i32 0, i32 0
  %144 = bitcast i32* %143 to i8*
  %145 = load %11*, %11** %6, align 8
  call void @md5_process_block(i8* %144, i64 64, %11* %145) #11
  %146 = load i64, i64* %9, align 8
  %147 = sub i64 %146, 64
  store i64 %147, i64* %9, align 8
  %148 = load %11*, %11** %6, align 8
  %149 = getelementptr inbounds %11, %11* %148, i32 0, i32 6
  %150 = getelementptr inbounds [32 x i32], [32 x i32]* %149, i32 0, i32 0
  %151 = bitcast i32* %150 to i8*
  %152 = load %11*, %11** %6, align 8
  %153 = getelementptr inbounds %11, %11* %152, i32 0, i32 6
  %154 = getelementptr inbounds [32 x i32], [32 x i32]* %153, i64 0, i64 16
  %155 = bitcast i32* %154 to i8*
  %156 = load i64, i64* %9, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %151, i8* %155, i64 %156, i32 4, i1 false)
  br label %157

; <label>:157:                                    ; preds = %140, %122
  %158 = load i64, i64* %9, align 8
  %159 = trunc i64 %158 to i32
  %160 = load %11*, %11** %6, align 8
  %161 = getelementptr inbounds %11, %11* %160, i32 0, i32 5
  store i32 %159, i32* %161, align 4
  br label %162

; <label>:162:                                    ; preds = %157, %119
  ret void
}

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

; Function Attrs: noinline nounwind uwtable
define void @fdadvise(i32, i64, i64, i32) #1 {
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
declare i32 @posix_fadvise(i32, i64, i64, i32) #4

; Function Attrs: noinline nounwind uwtable
define void @fadvise(%0*, i32) #1 {
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

; Function Attrs: noinline nounwind uwtable
define i32 @filevercmp(i8*, i8*) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @strcmp(i8* %14, i8* %15) #13
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %146

; <label>:20:                                     ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %25, label %24

; <label>:24:                                     ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %146

; <label>:25:                                     ; preds = %20
  %26 = load i8*, i8** %5, align 8
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %30, label %29

; <label>:29:                                     ; preds = %25
  store i32 1, i32* %3, align 4
  br label %146

; <label>:30:                                     ; preds = %25
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @183, i32 0, i32 0), i8* %31) #13
  %33 = icmp eq i32 0, %32
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %30
  store i32 -1, i32* %3, align 4
  br label %146

; <label>:35:                                     ; preds = %30
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @183, i32 0, i32 0), i8* %36) #13
  %38 = icmp eq i32 0, %37
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %35
  store i32 1, i32* %3, align 4
  br label %146

; <label>:40:                                     ; preds = %35
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @184, i32 0, i32 0), i8* %41) #13
  %43 = icmp eq i32 0, %42
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %40
  store i32 -1, i32* %3, align 4
  br label %146

; <label>:45:                                     ; preds = %40
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @184, i32 0, i32 0), i8* %46) #13
  %48 = icmp eq i32 0, %47
  br i1 %48, label %49, label %50

; <label>:49:                                     ; preds = %45
  store i32 1, i32* %3, align 4
  br label %146

; <label>:50:                                     ; preds = %45
  %51 = load i8*, i8** %4, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 46
  br i1 %54, label %55, label %61

; <label>:55:                                     ; preds = %50
  %56 = load i8*, i8** %5, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 46
  br i1 %59, label %60, label %61

; <label>:60:                                     ; preds = %55
  store i32 -1, i32* %3, align 4
  br label %146

; <label>:61:                                     ; preds = %55, %50
  %62 = load i8*, i8** %4, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 46
  br i1 %65, label %66, label %72

; <label>:66:                                     ; preds = %61
  %67 = load i8*, i8** %5, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 46
  br i1 %70, label %71, label %72

; <label>:71:                                     ; preds = %66
  store i32 1, i32* %3, align 4
  br label %146

; <label>:72:                                     ; preds = %66, %61
  %73 = load i8*, i8** %4, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 46
  br i1 %76, label %77, label %87

; <label>:77:                                     ; preds = %72
  %78 = load i8*, i8** %5, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 46
  br i1 %81, label %82, label %87

; <label>:82:                                     ; preds = %77
  %83 = load i8*, i8** %4, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %4, align 8
  %85 = load i8*, i8** %5, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %5, align 8
  br label %87

; <label>:87:                                     ; preds = %82, %77, %72
  %88 = load i8*, i8** %4, align 8
  store i8* %88, i8** %6, align 8
  %89 = load i8*, i8** %5, align 8
  store i8* %89, i8** %7, align 8
  %90 = call i8* @357(i8** %6)
  store i8* %90, i8** %8, align 8
  %91 = call i8* @357(i8** %7)
  store i8* %91, i8** %9, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = icmp ne i8* %92, null
  %94 = load i8*, i8** %8, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = select i1 %93, i8* %94, i8* %95
  %97 = load i8*, i8** %4, align 8
  %98 = ptrtoint i8* %96 to i64
  %99 = ptrtoint i8* %97 to i64
  %100 = sub i64 %98, %99
  store i64 %100, i64* %10, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = icmp ne i8* %101, null
  %103 = load i8*, i8** %9, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = select i1 %102, i8* %103, i8* %104
  %106 = load i8*, i8** %5, align 8
  %107 = ptrtoint i8* %105 to i64
  %108 = ptrtoint i8* %106 to i64
  %109 = sub i64 %107, %108
  store i64 %109, i64* %11, align 8
  %110 = load i8*, i8** %8, align 8
  %111 = icmp ne i8* %110, null
  %112 = load i8*, i8** %9, align 8
  %113 = icmp ne i8* %112, null
  %or.cond = or i1 %111, %113
  br i1 %or.cond, label %114, label %135

; <label>:114:                                    ; preds = %87
  %115 = load i64, i64* %10, align 8
  %116 = load i64, i64* %11, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %135

; <label>:118:                                    ; preds = %114
  %119 = load i8*, i8** %4, align 8
  %120 = load i8*, i8** %5, align 8
  %121 = load i64, i64* %10, align 8
  %122 = call i32 @strncmp(i8* %119, i8* %120, i64 %121) #13
  %123 = icmp eq i32 0, %122
  br i1 %123, label %124, label %135

; <label>:124:                                    ; preds = %118
  %125 = load i8*, i8** %6, align 8
  %126 = load i8*, i8** %4, align 8
  %127 = ptrtoint i8* %125 to i64
  %128 = ptrtoint i8* %126 to i64
  %129 = sub i64 %127, %128
  store i64 %129, i64* %10, align 8
  %130 = load i8*, i8** %7, align 8
  %131 = load i8*, i8** %5, align 8
  %132 = ptrtoint i8* %130 to i64
  %133 = ptrtoint i8* %131 to i64
  %134 = sub i64 %132, %133
  store i64 %134, i64* %11, align 8
  br label %135

; <label>:135:                                    ; preds = %87, %124, %118, %114
  %136 = load i8*, i8** %4, align 8
  %137 = load i64, i64* %10, align 8
  %138 = load i8*, i8** %5, align 8
  %139 = load i64, i64* %11, align 8
  %140 = call i32 @358(i8* %136, i64 %137, i8* %138, i64 %139) #13
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* %12, align 4
  %142 = icmp eq i32 %141, 0
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* %12, align 4
  %145 = select i1 %142, i32 %143, i32 %144
  store i32 %145, i32* %3, align 4
  br label %146

; <label>:146:                                    ; preds = %135, %71, %60, %49, %44, %39, %34, %29, %24, %19
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @357(i8**) #1 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8** %0, i8*** %2, align 8
  store i8* null, i8** %3, align 8
  store i8 0, i8* %4, align 1
  br label %5

; <label>:5:                                      ; preds = %51, %1
  %6 = load i8**, i8*** %2, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %10, label %55

; <label>:10:                                     ; preds = %5
  %11 = load i8, i8* %4, align 1
  %12 = trunc i8 %11 to i1
  br i1 %12, label %13, label %26

; <label>:13:                                     ; preds = %10
  store i8 0, i8* %4, align 1
  %14 = load i8**, i8*** %2, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = call zeroext i1 @c_isalpha(i32 %17) #15
  br i1 %18, label %51, label %19

; <label>:19:                                     ; preds = %13
  %20 = load i8**, i8*** %2, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 126, %23
  br i1 %24, label %25, label %51

; <label>:25:                                     ; preds = %19
  store i8* null, i8** %3, align 8
  br label %51

; <label>:26:                                     ; preds = %10
  %27 = load i8**, i8*** %2, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 46, %30
  br i1 %31, label %32, label %38

; <label>:32:                                     ; preds = %26
  store i8 1, i8* %4, align 1
  %33 = load i8*, i8** %3, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %51, label %35

; <label>:35:                                     ; preds = %32
  %36 = load i8**, i8*** %2, align 8
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %3, align 8
  br label %51

; <label>:38:                                     ; preds = %26
  %39 = load i8**, i8*** %2, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = call zeroext i1 @c_isalnum(i32 %42) #15
  br i1 %43, label %51, label %44

; <label>:44:                                     ; preds = %38
  %45 = load i8**, i8*** %2, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 126, %48
  br i1 %49, label %50, label %51

; <label>:50:                                     ; preds = %44
  store i8* null, i8** %3, align 8
  br label %51

; <label>:51:                                     ; preds = %35, %32, %50, %44, %38, %13, %19, %25
  %52 = load i8**, i8*** %2, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %52, align 8
  br label %5

; <label>:55:                                     ; preds = %5
  %56 = load i8*, i8** %3, align 8
  ret i8* %56
}

; Function Attrs: noinline nounwind readonly uwtable
define internal i32 @358(i8*, i64, i8*, i64) #8 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %15

; <label>:15:                                     ; preds = %156, %4
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %.critedge, label %19

; <label>:19:                                     ; preds = %15
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %.critedge, label %157

.critedge:                                        ; preds = %15, %19
  store i32 0, i32* %12, align 4
  br label %23

; <label>:23:                                     ; preds = %75, %.critedge
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %34

; <label>:27:                                     ; preds = %23
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = call zeroext i1 @c_isdigit(i32 %32) #15
  br i1 %33, label %34, label %.critedge1

; <label>:34:                                     ; preds = %27, %23
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %.critedge2

; <label>:38:                                     ; preds = %34
  %39 = load i8*, i8** %8, align 8
  %40 = load i64, i64* %11, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = call zeroext i1 @c_isdigit(i32 %43) #15
  %45 = xor i1 %44, true
  br i1 %45, label %.critedge1, label %.critedge2

.critedge1:                                       ; preds = %27, %38
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %7, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %55, label %49

; <label>:49:                                     ; preds = %.critedge1
  %50 = load i8*, i8** %6, align 8
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = call i32 @359(i8 zeroext %53)
  br label %55

; <label>:55:                                     ; preds = %.critedge1, %49
  %56 = phi i32 [ %54, %49 ], [ 0, %.critedge1 ]
  store i32 %56, i32* %13, align 4
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %66, label %60

; <label>:60:                                     ; preds = %55
  %61 = load i8*, i8** %8, align 8
  %62 = load i64, i64* %11, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = call i32 @359(i8 zeroext %64)
  br label %66

; <label>:66:                                     ; preds = %55, %60
  %67 = phi i32 [ %65, %60 ], [ 0, %55 ]
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %75

; <label>:71:                                     ; preds = %66
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %14, align 4
  %74 = sub nsw i32 %72, %73
  store i32 %74, i32* %5, align 4
  br label %158

; <label>:75:                                     ; preds = %66
  %76 = load i64, i64* %10, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %10, align 8
  %78 = load i64, i64* %11, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %11, align 8
  br label %23

.critedge2:                                       ; preds = %34, %38
  br label %80

; <label>:80:                                     ; preds = %87, %.critedge2
  %81 = load i8*, i8** %6, align 8
  %82 = load i64, i64* %10, align 8
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 48
  br i1 %86, label %87, label %90

; <label>:87:                                     ; preds = %80
  %88 = load i64, i64* %10, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %10, align 8
  br label %80

; <label>:90:                                     ; preds = %80
  br label %91

; <label>:91:                                     ; preds = %98, %90
  %92 = load i8*, i8** %8, align 8
  %93 = load i64, i64* %11, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 48
  br i1 %97, label %98, label %101

; <label>:98:                                     ; preds = %91
  %99 = load i64, i64* %11, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %11, align 8
  br label %91

; <label>:101:                                    ; preds = %91
  br label %102

; <label>:102:                                    ; preds = %131, %101
  %103 = load i8*, i8** %6, align 8
  %104 = load i64, i64* %10, align 8
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = call zeroext i1 @c_isdigit(i32 %107) #15
  br i1 %108, label %109, label %.critedge3

; <label>:109:                                    ; preds = %102
  %110 = load i8*, i8** %8, align 8
  %111 = load i64, i64* %11, align 8
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = call zeroext i1 @c_isdigit(i32 %114) #15
  br i1 %115, label %116, label %.critedge3

; <label>:116:                                    ; preds = %109
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %131, label %119

; <label>:119:                                    ; preds = %116
  %120 = load i8*, i8** %6, align 8
  %121 = load i64, i64* %10, align 8
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = load i8*, i8** %8, align 8
  %126 = load i64, i64* %11, align 8
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = sub nsw i32 %124, %129
  store i32 %130, i32* %12, align 4
  br label %131

; <label>:131:                                    ; preds = %119, %116
  %132 = load i64, i64* %10, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %10, align 8
  %134 = load i64, i64* %11, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %11, align 8
  br label %102

.critedge3:                                       ; preds = %102, %109
  %136 = load i8*, i8** %6, align 8
  %137 = load i64, i64* %10, align 8
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = call zeroext i1 @c_isdigit(i32 %140) #15
  br i1 %141, label %142, label %143

; <label>:142:                                    ; preds = %.critedge3
  store i32 1, i32* %5, align 4
  br label %158

; <label>:143:                                    ; preds = %.critedge3
  %144 = load i8*, i8** %8, align 8
  %145 = load i64, i64* %11, align 8
  %146 = getelementptr inbounds i8, i8* %144, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = call zeroext i1 @c_isdigit(i32 %148) #15
  br i1 %149, label %150, label %151

; <label>:150:                                    ; preds = %143
  store i32 -1, i32* %5, align 4
  br label %158

; <label>:151:                                    ; preds = %143
  %152 = load i32, i32* %12, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

; <label>:154:                                    ; preds = %151
  %155 = load i32, i32* %12, align 4
  store i32 %155, i32* %5, align 4
  br label %158

; <label>:156:                                    ; preds = %151
  br label %15

; <label>:157:                                    ; preds = %19
  store i32 0, i32* %5, align 4
  br label %158

; <label>:158:                                    ; preds = %157, %154, %150, %142, %71
  %159 = load i32, i32* %5, align 4
  ret i32 %159
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @359(i8 zeroext) #1 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = zext i8 %4 to i32
  %6 = call zeroext i1 @c_isdigit(i32 %5) #15
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

; <label>:8:                                      ; preds = %1
  %9 = load i8, i8* %3, align 1
  %10 = zext i8 %9 to i32
  %11 = call zeroext i1 @c_isalpha(i32 %10) #15
  %12 = load i8, i8* %3, align 1
  %13 = zext i8 %12 to i32
  br i1 %11, label %14, label %15

; <label>:14:                                     ; preds = %8
  store i32 %13, i32* %2, align 4
  br label %23

; <label>:15:                                     ; preds = %8
  %16 = icmp eq i32 %13, 126
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %15
  store i32 -1, i32* %2, align 4
  br label %23

; <label>:18:                                     ; preds = %15
  %19 = load i8, i8* %3, align 1
  %20 = zext i8 %19 to i32
  %21 = add nsw i32 %20, 255
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %2, align 4
  br label %23

; <label>:23:                                     ; preds = %18, %17, %14, %7
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind uwtable
define %0* @fopen_safer(i8*, i8*) #1 {
  %3 = alloca %0*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %0*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call %0* @fopen(i8* %11, i8* %12)
  store %0* %13, %0** %6, align 8
  %14 = load %0*, %0** %6, align 8
  %15 = icmp ne %0* %14, null
  br i1 %15, label %16, label %51

; <label>:16:                                     ; preds = %2
  %17 = load %0*, %0** %6, align 8
  %18 = call i32 @fileno(%0* %17) #11
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp sle i32 0, %19
  %21 = load i32, i32* %7, align 4
  %22 = icmp sle i32 %21, 2
  %or.cond = and i1 %20, %22
  br i1 %or.cond, label %23, label %51

; <label>:23:                                     ; preds = %16
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @dup_safer(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %23
  %29 = call i32* @__errno_location() #15
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load %0*, %0** %6, align 8
  %32 = call i32 @rpl_fclose(%0* %31)
  %33 = load i32, i32* %9, align 4
  %34 = call i32* @__errno_location() #15
  store i32 %33, i32* %34, align 4
  store %0* null, %0** %3, align 8
  br label %53

; <label>:35:                                     ; preds = %23
  %36 = load %0*, %0** %6, align 8
  %37 = call i32 @rpl_fclose(%0* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

; <label>:39:                                     ; preds = %35
  %40 = load i32, i32* %8, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = call %0* @fdopen(i32 %40, i8* %41) #11
  store %0* %42, %0** %6, align 8
  %43 = icmp ne %0* %42, null
  br i1 %43, label %51, label %44

; <label>:44:                                     ; preds = %39, %35
  %45 = call i32* @__errno_location() #15
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @close(i32 %47)
  %49 = load i32, i32* %10, align 4
  %50 = call i32* @__errno_location() #15
  store i32 %49, i32* %50, align 4
  store %0* null, %0** %3, align 8
  br label %53

; <label>:51:                                     ; preds = %16, %39, %2
  %52 = load %0*, %0** %6, align 8
  store %0* %52, %0** %3, align 8
  br label %53

; <label>:53:                                     ; preds = %51, %44, %28
  %54 = load %0*, %0** %3, align 8
  ret %0* %54
}

declare %0* @fopen(i8*, i8*) #2

; Function Attrs: noinline nounwind uwtable
define zeroext i1 @hard_locale(i32) #1 {
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
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @185, i32 0, i32 0)) #13
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

; <label>:13:                                     ; preds = %9
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @186, i32 0, i32 0)) #13
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

; Function Attrs: noinline nounwind readonly uwtable
define i64 @hash_get_n_buckets(%6*) #8 {
  %2 = alloca %6*, align 8
  store %6* %0, %6** %2, align 8
  %3 = load %6*, %6** %2, align 8
  %4 = getelementptr inbounds %6, %6* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: noinline nounwind readonly uwtable
define i64 @hash_get_n_buckets_used(%6*) #8 {
  %2 = alloca %6*, align 8
  store %6* %0, %6** %2, align 8
  %3 = load %6*, %6** %2, align 8
  %4 = getelementptr inbounds %6, %6* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: noinline nounwind readonly uwtable
define i64 @hash_get_n_entries(%6*) #8 {
  %2 = alloca %6*, align 8
  store %6* %0, %6** %2, align 8
  %3 = load %6*, %6** %2, align 8
  %4 = getelementptr inbounds %6, %6* %3, i32 0, i32 4
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: noinline nounwind readonly uwtable
define i64 @hash_get_max_bucket_length(%6*) #8 {
  %2 = alloca %6*, align 8
  %3 = alloca %8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %8*, align 8
  %6 = alloca i64, align 8
  store %6* %0, %6** %2, align 8
  store i64 0, i64* %4, align 8
  %7 = load %6*, %6** %2, align 8
  %8 = getelementptr inbounds %6, %6* %7, i32 0, i32 0
  %9 = load %8*, %8** %8, align 8
  store %8* %9, %8** %3, align 8
  br label %10

; <label>:10:                                     ; preds = %37, %1
  %11 = load %8*, %8** %3, align 8
  %12 = load %6*, %6** %2, align 8
  %13 = getelementptr inbounds %6, %6* %12, i32 0, i32 1
  %14 = load %8*, %8** %13, align 8
  %15 = icmp ult %8* %11, %14
  br i1 %15, label %16, label %40

; <label>:16:                                     ; preds = %10
  %17 = load %8*, %8** %3, align 8
  %18 = getelementptr inbounds %8, %8* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %37

; <label>:21:                                     ; preds = %16
  %22 = load %8*, %8** %3, align 8
  store %8* %22, %8** %5, align 8
  store i64 1, i64* %6, align 8
  br label %23

; <label>:23:                                     ; preds = %30, %21
  %24 = load %8*, %8** %5, align 8
  %25 = getelementptr inbounds %8, %8* %24, i32 0, i32 1
  %26 = load %8*, %8** %25, align 8
  store %8* %26, %8** %5, align 8
  %27 = load %8*, %8** %5, align 8
  %28 = icmp ne %8* %27, null
  %29 = load i64, i64* %6, align 8
  br i1 %28, label %30, label %32

; <label>:30:                                     ; preds = %23
  %31 = add i64 %29, 1
  store i64 %31, i64* %6, align 8
  br label %23

; <label>:32:                                     ; preds = %23
  %33 = load i64, i64* %4, align 8
  %34 = icmp ugt i64 %29, %33
  br i1 %34, label %35, label %37

; <label>:35:                                     ; preds = %32
  %36 = load i64, i64* %6, align 8
  store i64 %36, i64* %4, align 8
  br label %37

; <label>:37:                                     ; preds = %16, %35, %32
  %38 = load %8*, %8** %3, align 8
  %39 = getelementptr inbounds %8, %8* %38, i32 1
  store %8* %39, %8** %3, align 8
  br label %10

; <label>:40:                                     ; preds = %10
  %41 = load i64, i64* %4, align 8
  ret i64 %41
}

; Function Attrs: noinline nounwind uwtable
define internal %8* @360(%6*, i8*) #1 {
  %3 = alloca %6*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %6* %0, %6** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %6*, %6** %3, align 8
  %7 = getelementptr inbounds %6, %6* %6, i32 0, i32 6
  %8 = load i64 (i8*, i64)*, i64 (i8*, i64)** %7, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load %6*, %6** %3, align 8
  %11 = getelementptr inbounds %6, %6* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = call i64 %8(i8* %9, i64 %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load %6*, %6** %3, align 8
  %16 = getelementptr inbounds %6, %6* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %20, label %19

; <label>:19:                                     ; preds = %2
  call void @abort() #12
  unreachable

; <label>:20:                                     ; preds = %2
  %21 = load %6*, %6** %3, align 8
  %22 = getelementptr inbounds %6, %6* %21, i32 0, i32 0
  %23 = load %8*, %8** %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds %8, %8* %23, i64 %24
  ret %8* %25
}

; Function Attrs: noinline nounwind uwtable
define %6* @hash_initialize(i64, %7*, i64 (i8*, i64)*, i1 (i8*, i8*)*, void (i8*)*) #1 {
  %6 = alloca %6*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %7*, align 8
  %9 = alloca i64 (i8*, i64)*, align 8
  %10 = alloca i1 (i8*, i8*)*, align 8
  %11 = alloca void (i8*)*, align 8
  %12 = alloca %6*, align 8
  store i64 %0, i64* %7, align 8
  store %7* %1, %7** %8, align 8
  store i64 (i8*, i64)* %2, i64 (i8*, i64)** %9, align 8
  store i1 (i8*, i8*)* %3, i1 (i8*, i8*)** %10, align 8
  store void (i8*)* %4, void (i8*)** %11, align 8
  %13 = load i64 (i8*, i64)*, i64 (i8*, i64)** %9, align 8
  %14 = icmp eq i64 (i8*, i64)* %13, null
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %5
  store i64 (i8*, i64)* @361, i64 (i8*, i64)** %9, align 8
  br label %16

; <label>:16:                                     ; preds = %15, %5
  %17 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %10, align 8
  %18 = icmp eq i1 (i8*, i8*)* %17, null
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %16
  store i1 (i8*, i8*)* @362, i1 (i8*, i8*)** %10, align 8
  br label %20

; <label>:20:                                     ; preds = %19, %16
  %21 = call noalias i8* @malloc(i64 80) #11
  %22 = bitcast i8* %21 to %6*
  store %6* %22, %6** %12, align 8
  %23 = load %6*, %6** %12, align 8
  %24 = icmp eq %6* %23, null
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %20
  store %6* null, %6** %6, align 8
  br label %87

; <label>:26:                                     ; preds = %20
  %27 = load %7*, %7** %8, align 8
  %28 = icmp ne %7* %27, null
  br i1 %28, label %30, label %29

; <label>:29:                                     ; preds = %26
  store %7* @191, %7** %8, align 8
  br label %30

; <label>:30:                                     ; preds = %29, %26
  %31 = load %7*, %7** %8, align 8
  %32 = load %6*, %6** %12, align 8
  %33 = getelementptr inbounds %6, %6* %32, i32 0, i32 5
  store %7* %31, %7** %33, align 8
  %34 = load %6*, %6** %12, align 8
  %35 = call zeroext i1 @363(%6* %34)
  br i1 %35, label %36, label %84

; <label>:36:                                     ; preds = %30
  %37 = load i64, i64* %7, align 8
  %38 = load %7*, %7** %8, align 8
  %39 = call i64 @364(i64 %37, %7* %38) #13
  %40 = load %6*, %6** %12, align 8
  %41 = getelementptr inbounds %6, %6* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  %42 = load %6*, %6** %12, align 8
  %43 = getelementptr inbounds %6, %6* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %84

; <label>:46:                                     ; preds = %36
  %47 = load %6*, %6** %12, align 8
  %48 = getelementptr inbounds %6, %6* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call noalias i8* @calloc(i64 %49, i64 16) #11
  %51 = bitcast i8* %50 to %8*
  %52 = load %6*, %6** %12, align 8
  %53 = getelementptr inbounds %6, %6* %52, i32 0, i32 0
  store %8* %51, %8** %53, align 8
  %54 = load %6*, %6** %12, align 8
  %55 = getelementptr inbounds %6, %6* %54, i32 0, i32 0
  %56 = load %8*, %8** %55, align 8
  %57 = icmp eq %8* %56, null
  br i1 %57, label %84, label %58

; <label>:58:                                     ; preds = %46
  %59 = load %6*, %6** %12, align 8
  %60 = getelementptr inbounds %6, %6* %59, i32 0, i32 0
  %61 = load %8*, %8** %60, align 8
  %62 = load %6*, %6** %12, align 8
  %63 = getelementptr inbounds %6, %6* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %8, %8* %61, i64 %64
  %66 = load %6*, %6** %12, align 8
  %67 = getelementptr inbounds %6, %6* %66, i32 0, i32 1
  store %8* %65, %8** %67, align 8
  %68 = load %6*, %6** %12, align 8
  %69 = getelementptr inbounds %6, %6* %68, i32 0, i32 3
  store i64 0, i64* %69, align 8
  %70 = load %6*, %6** %12, align 8
  %71 = getelementptr inbounds %6, %6* %70, i32 0, i32 4
  store i64 0, i64* %71, align 8
  %72 = load i64 (i8*, i64)*, i64 (i8*, i64)** %9, align 8
  %73 = load %6*, %6** %12, align 8
  %74 = getelementptr inbounds %6, %6* %73, i32 0, i32 6
  store i64 (i8*, i64)* %72, i64 (i8*, i64)** %74, align 8
  %75 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %10, align 8
  %76 = load %6*, %6** %12, align 8
  %77 = getelementptr inbounds %6, %6* %76, i32 0, i32 7
  store i1 (i8*, i8*)* %75, i1 (i8*, i8*)** %77, align 8
  %78 = load void (i8*)*, void (i8*)** %11, align 8
  %79 = load %6*, %6** %12, align 8
  %80 = getelementptr inbounds %6, %6* %79, i32 0, i32 8
  store void (i8*)* %78, void (i8*)** %80, align 8
  %81 = load %6*, %6** %12, align 8
  %82 = getelementptr inbounds %6, %6* %81, i32 0, i32 9
  store %8* null, %8** %82, align 8
  %83 = load %6*, %6** %12, align 8
  store %6* %83, %6** %6, align 8
  br label %87

; <label>:84:                                     ; preds = %46, %36, %30
  %85 = load %6*, %6** %12, align 8
  %86 = bitcast %6* %85 to i8*
  call void @free(i8* %86) #11
  store %6* null, %6** %6, align 8
  br label %87

; <label>:87:                                     ; preds = %84, %58, %25
  %88 = load %6*, %6** %6, align 8
  ret %6* %88
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @361(i8*, i64) #1 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = ptrtoint i8* %6 to i64
  %8 = call i64 @367(i64 %7, i32 3)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = urem i64 %9, %10
  ret i64 %11
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @362(i8*, i8*) #1 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp eq i8* %5, %6
  ret i1 %7
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @363(%6*) #1 {
  %2 = alloca i1, align 1
  %3 = alloca %6*, align 8
  %4 = alloca %7*, align 8
  %5 = alloca float, align 4
  store %6* %0, %6** %3, align 8
  %6 = load %6*, %6** %3, align 8
  %7 = getelementptr inbounds %6, %6* %6, i32 0, i32 5
  %8 = load %7*, %7** %7, align 8
  store %7* %8, %7** %4, align 8
  %9 = load %7*, %7** %4, align 8
  %10 = icmp eq %7* %9, @191
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %1
  store i1 true, i1* %2, align 1
  br label %66

; <label>:12:                                     ; preds = %1
  store float 0x3FB99999A0000000, float* %5, align 4
  %13 = load float, float* %5, align 4
  %14 = load %7*, %7** %4, align 8
  %15 = getelementptr inbounds %7, %7* %14, i32 0, i32 2
  %16 = load float, float* %15, align 4
  %17 = fcmp olt float %13, %16
  br i1 %17, label %18, label %63

; <label>:18:                                     ; preds = %12
  %19 = load %7*, %7** %4, align 8
  %20 = getelementptr inbounds %7, %7* %19, i32 0, i32 2
  %21 = load float, float* %20, align 4
  %22 = load float, float* %5, align 4
  %23 = fsub float 1.000000e+00, %22
  %24 = fcmp olt float %21, %23
  br i1 %24, label %25, label %63

; <label>:25:                                     ; preds = %18
  %26 = load float, float* %5, align 4
  %27 = fadd float 1.000000e+00, %26
  %28 = load %7*, %7** %4, align 8
  %29 = getelementptr inbounds %7, %7* %28, i32 0, i32 3
  %30 = load float, float* %29, align 4
  %31 = fcmp olt float %27, %30
  br i1 %31, label %32, label %63

; <label>:32:                                     ; preds = %25
  %33 = load %7*, %7** %4, align 8
  %34 = getelementptr inbounds %7, %7* %33, i32 0, i32 0
  %35 = load float, float* %34, align 4
  %36 = fcmp ole float 0.000000e+00, %35
  br i1 %36, label %37, label %63

; <label>:37:                                     ; preds = %32
  %38 = load %7*, %7** %4, align 8
  %39 = getelementptr inbounds %7, %7* %38, i32 0, i32 0
  %40 = load float, float* %39, align 4
  %41 = load float, float* %5, align 4
  %42 = fadd float %40, %41
  %43 = load %7*, %7** %4, align 8
  %44 = getelementptr inbounds %7, %7* %43, i32 0, i32 1
  %45 = load float, float* %44, align 4
  %46 = fcmp olt float %42, %45
  br i1 %46, label %47, label %63

; <label>:47:                                     ; preds = %37
  %48 = load %7*, %7** %4, align 8
  %49 = getelementptr inbounds %7, %7* %48, i32 0, i32 1
  %50 = load float, float* %49, align 4
  %51 = fcmp ole float %50, 1.000000e+00
  br i1 %51, label %52, label %63

; <label>:52:                                     ; preds = %47
  %53 = load %7*, %7** %4, align 8
  %54 = getelementptr inbounds %7, %7* %53, i32 0, i32 0
  %55 = load float, float* %54, align 4
  %56 = load float, float* %5, align 4
  %57 = fadd float %55, %56
  %58 = load %7*, %7** %4, align 8
  %59 = getelementptr inbounds %7, %7* %58, i32 0, i32 2
  %60 = load float, float* %59, align 4
  %61 = fcmp olt float %57, %60
  br i1 %61, label %62, label %63

; <label>:62:                                     ; preds = %52
  store i1 true, i1* %2, align 1
  br label %66

; <label>:63:                                     ; preds = %52, %47, %37, %32, %25, %18, %12
  %64 = load %6*, %6** %3, align 8
  %65 = getelementptr inbounds %6, %6* %64, i32 0, i32 5
  store %7* @191, %7** %65, align 8
  store i1 false, i1* %2, align 1
  br label %66

; <label>:66:                                     ; preds = %63, %62, %11
  %67 = load i1, i1* %2, align 1
  ret i1 %67
}

; Function Attrs: noinline nounwind readonly uwtable
define internal i64 @364(i64, %7*) #8 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %7*, align 8
  %6 = alloca float, align 4
  store i64 %0, i64* %4, align 8
  store %7* %1, %7** %5, align 8
  %7 = load %7*, %7** %5, align 8
  %8 = getelementptr inbounds %7, %7* %7, i32 0, i32 4
  %9 = load i8, i8* %8, align 4
  %10 = trunc i8 %9 to i1
  br i1 %10, label %24, label %11

; <label>:11:                                     ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = uitofp i64 %12 to float
  %14 = load %7*, %7** %5, align 8
  %15 = getelementptr inbounds %7, %7* %14, i32 0, i32 2
  %16 = load float, float* %15, align 4
  %17 = fdiv float %13, %16
  store float %17, float* %6, align 4
  %18 = load float, float* %6, align 4
  %19 = fcmp ole float 0x43F0000000000000, %18
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %11
  store i64 0, i64* %3, align 8
  br label %32

; <label>:21:                                     ; preds = %11
  %22 = load float, float* %6, align 4
  %23 = fptoui float %22 to i64
  store i64 %23, i64* %4, align 8
  br label %24

; <label>:24:                                     ; preds = %21, %2
  %25 = load i64, i64* %4, align 8
  %26 = call i64 @365(i64 %25) #15
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %4, align 8
  %28 = icmp ult i64 2305843009213693951, %27
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %24
  store i64 0, i64* %3, align 8
  br label %32

; <label>:30:                                     ; preds = %24
  %31 = load i64, i64* %4, align 8
  store i64 %31, i64* %3, align 8
  br label %32

; <label>:32:                                     ; preds = %30, %29, %20
  %33 = load i64, i64* %3, align 8
  ret i64 %33
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #4

; Function Attrs: noinline nounwind readnone uwtable
define internal i64 @365(i64) #10 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp ult i64 %3, 10
  %spec.store.select = select i1 %4, i64 10, i64 %0
  store i64 %spec.store.select, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = or i64 %5, 1
  store i64 %6, i64* %2, align 8
  br label %7

; <label>:7:                                      ; preds = %17, %1
  %8 = load i64, i64* %2, align 8
  %9 = icmp ne i64 -1, %8
  br i1 %9, label %10, label %14

; <label>:10:                                     ; preds = %7
  %11 = load i64, i64* %2, align 8
  %12 = call zeroext i1 @366(i64 %11) #15
  %13 = xor i1 %12, true
  br label %14

; <label>:14:                                     ; preds = %10, %7
  %15 = phi i1 [ false, %7 ], [ %13, %10 ]
  %16 = load i64, i64* %2, align 8
  br i1 %15, label %17, label %19

; <label>:17:                                     ; preds = %14
  %18 = add i64 %16, 2
  store i64 %18, i64* %2, align 8
  br label %7

; <label>:19:                                     ; preds = %14
  ret i64 %16
}

; Function Attrs: noinline nounwind readnone uwtable
define internal zeroext i1 @366(i64) #10 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i64 3, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = mul i64 %5, %6
  store i64 %7, i64* %4, align 8
  br label %8

; <label>:8:                                      ; preds = %17, %1
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* %2, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %.critedge

; <label>:12:                                     ; preds = %8
  %13 = load i64, i64* %2, align 8
  %14 = load i64, i64* %3, align 8
  %15 = urem i64 %13, %14
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %.critedge

; <label>:17:                                     ; preds = %12
  %18 = load i64, i64* %3, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* %3, align 8
  %21 = mul i64 4, %20
  %22 = load i64, i64* %4, align 8
  %23 = add i64 %22, %21
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %3, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %3, align 8
  br label %8

.critedge:                                        ; preds = %8, %12
  %26 = load i64, i64* %2, align 8
  %27 = load i64, i64* %3, align 8
  %28 = urem i64 %26, %27
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1, i32 0
  %32 = icmp ne i32 %31, 0
  ret i1 %32
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @367(i64, i32) #1 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = zext i32 %6 to i64
  %8 = lshr i64 %5, %7
  %9 = load i64, i64* %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = sub i64 64, %11
  %13 = shl i64 %9, %12
  %14 = or i64 %8, %13
  ret i64 %14
}

; Function Attrs: noinline nounwind uwtable
define zeroext i1 @hash_rehash(%6*, i64) #1 {
  %3 = alloca i1, align 1
  %4 = alloca %6*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %6, align 8
  %7 = alloca %6*, align 8
  %8 = alloca i64, align 8
  store %6* %0, %6** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %6*, %6** %4, align 8
  %11 = getelementptr inbounds %6, %6* %10, i32 0, i32 5
  %12 = load %7*, %7** %11, align 8
  %13 = call i64 @364(i64 %9, %7* %12) #13
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

; <label>:16:                                     ; preds = %2
  store i1 false, i1* %3, align 1
  br label %127

; <label>:17:                                     ; preds = %2
  %18 = load i64, i64* %8, align 8
  %19 = load %6*, %6** %4, align 8
  %20 = getelementptr inbounds %6, %6* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %17
  store i1 true, i1* %3, align 1
  br label %127

; <label>:24:                                     ; preds = %17
  store %6* %6, %6** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call noalias i8* @calloc(i64 %25, i64 16) #11
  %27 = bitcast i8* %26 to %8*
  %28 = load %6*, %6** %7, align 8
  %29 = getelementptr inbounds %6, %6* %28, i32 0, i32 0
  store %8* %27, %8** %29, align 8
  %30 = load %6*, %6** %7, align 8
  %31 = getelementptr inbounds %6, %6* %30, i32 0, i32 0
  %32 = load %8*, %8** %31, align 8
  %33 = icmp eq %8* %32, null
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %24
  store i1 false, i1* %3, align 1
  br label %127

; <label>:35:                                     ; preds = %24
  %36 = load i64, i64* %8, align 8
  %37 = load %6*, %6** %7, align 8
  %38 = getelementptr inbounds %6, %6* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  %39 = load %6*, %6** %7, align 8
  %40 = getelementptr inbounds %6, %6* %39, i32 0, i32 0
  %41 = load %8*, %8** %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds %8, %8* %41, i64 %42
  %44 = load %6*, %6** %7, align 8
  %45 = getelementptr inbounds %6, %6* %44, i32 0, i32 1
  store %8* %43, %8** %45, align 8
  %46 = load %6*, %6** %7, align 8
  %47 = getelementptr inbounds %6, %6* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load %6*, %6** %7, align 8
  %49 = getelementptr inbounds %6, %6* %48, i32 0, i32 4
  store i64 0, i64* %49, align 8
  %50 = load %6*, %6** %4, align 8
  %51 = getelementptr inbounds %6, %6* %50, i32 0, i32 5
  %52 = load %7*, %7** %51, align 8
  %53 = load %6*, %6** %7, align 8
  %54 = getelementptr inbounds %6, %6* %53, i32 0, i32 5
  store %7* %52, %7** %54, align 8
  %55 = load %6*, %6** %4, align 8
  %56 = getelementptr inbounds %6, %6* %55, i32 0, i32 6
  %57 = load i64 (i8*, i64)*, i64 (i8*, i64)** %56, align 8
  %58 = load %6*, %6** %7, align 8
  %59 = getelementptr inbounds %6, %6* %58, i32 0, i32 6
  store i64 (i8*, i64)* %57, i64 (i8*, i64)** %59, align 8
  %60 = load %6*, %6** %4, align 8
  %61 = getelementptr inbounds %6, %6* %60, i32 0, i32 7
  %62 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %61, align 8
  %63 = load %6*, %6** %7, align 8
  %64 = getelementptr inbounds %6, %6* %63, i32 0, i32 7
  store i1 (i8*, i8*)* %62, i1 (i8*, i8*)** %64, align 8
  %65 = load %6*, %6** %4, align 8
  %66 = getelementptr inbounds %6, %6* %65, i32 0, i32 8
  %67 = load void (i8*)*, void (i8*)** %66, align 8
  %68 = load %6*, %6** %7, align 8
  %69 = getelementptr inbounds %6, %6* %68, i32 0, i32 8
  store void (i8*)* %67, void (i8*)** %69, align 8
  %70 = load %6*, %6** %4, align 8
  %71 = getelementptr inbounds %6, %6* %70, i32 0, i32 9
  %72 = load %8*, %8** %71, align 8
  %73 = load %6*, %6** %7, align 8
  %74 = getelementptr inbounds %6, %6* %73, i32 0, i32 9
  store %8* %72, %8** %74, align 8
  %75 = load %6*, %6** %7, align 8
  %76 = load %6*, %6** %4, align 8
  %77 = call zeroext i1 @368(%6* %75, %6* %76, i1 zeroext false)
  br i1 %77, label %78, label %108

; <label>:78:                                     ; preds = %35
  %79 = load %6*, %6** %4, align 8
  %80 = getelementptr inbounds %6, %6* %79, i32 0, i32 0
  %81 = load %8*, %8** %80, align 8
  %82 = bitcast %8* %81 to i8*
  call void @free(i8* %82) #11
  %83 = load %6*, %6** %7, align 8
  %84 = getelementptr inbounds %6, %6* %83, i32 0, i32 0
  %85 = load %8*, %8** %84, align 8
  %86 = load %6*, %6** %4, align 8
  %87 = getelementptr inbounds %6, %6* %86, i32 0, i32 0
  store %8* %85, %8** %87, align 8
  %88 = load %6*, %6** %7, align 8
  %89 = getelementptr inbounds %6, %6* %88, i32 0, i32 1
  %90 = load %8*, %8** %89, align 8
  %91 = load %6*, %6** %4, align 8
  %92 = getelementptr inbounds %6, %6* %91, i32 0, i32 1
  store %8* %90, %8** %92, align 8
  %93 = load %6*, %6** %7, align 8
  %94 = getelementptr inbounds %6, %6* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load %6*, %6** %4, align 8
  %97 = getelementptr inbounds %6, %6* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  %98 = load %6*, %6** %7, align 8
  %99 = getelementptr inbounds %6, %6* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load %6*, %6** %4, align 8
  %102 = getelementptr inbounds %6, %6* %101, i32 0, i32 3
  store i64 %100, i64* %102, align 8
  %103 = load %6*, %6** %7, align 8
  %104 = getelementptr inbounds %6, %6* %103, i32 0, i32 9
  %105 = load %8*, %8** %104, align 8
  %106 = load %6*, %6** %4, align 8
  %107 = getelementptr inbounds %6, %6* %106, i32 0, i32 9
  store %8* %105, %8** %107, align 8
  store i1 true, i1* %3, align 1
  br label %127

; <label>:108:                                    ; preds = %35
  %109 = load %6*, %6** %7, align 8
  %110 = getelementptr inbounds %6, %6* %109, i32 0, i32 9
  %111 = load %8*, %8** %110, align 8
  %112 = load %6*, %6** %4, align 8
  %113 = getelementptr inbounds %6, %6* %112, i32 0, i32 9
  store %8* %111, %8** %113, align 8
  %114 = load %6*, %6** %4, align 8
  %115 = load %6*, %6** %7, align 8
  %116 = call zeroext i1 @368(%6* %114, %6* %115, i1 zeroext true)
  br i1 %116, label %117, label %121

; <label>:117:                                    ; preds = %108
  %118 = load %6*, %6** %4, align 8
  %119 = load %6*, %6** %7, align 8
  %120 = call zeroext i1 @368(%6* %118, %6* %119, i1 zeroext false)
  br i1 %120, label %122, label %121

; <label>:121:                                    ; preds = %117, %108
  call void @abort() #12
  unreachable

; <label>:122:                                    ; preds = %117
  %123 = load %6*, %6** %7, align 8
  %124 = getelementptr inbounds %6, %6* %123, i32 0, i32 0
  %125 = load %8*, %8** %124, align 8
  %126 = bitcast %8* %125 to i8*
  call void @free(i8* %126) #11
  store i1 false, i1* %3, align 1
  br label %127

; <label>:127:                                    ; preds = %122, %78, %34, %23, %16
  %128 = load i1, i1* %3, align 1
  ret i1 %128
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @368(%6*, %6*, i1 zeroext) #1 {
  %4 = alloca i1, align 1
  %5 = alloca %6*, align 8
  %6 = alloca %6*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %8*, align 8
  %9 = alloca %8*, align 8
  %10 = alloca %8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %8*, align 8
  %13 = alloca %8*, align 8
  store %6* %0, %6** %5, align 8
  store %6* %1, %6** %6, align 8
  %14 = zext i1 %2 to i8
  store i8 %14, i8* %7, align 1
  %15 = load %6*, %6** %6, align 8
  %16 = getelementptr inbounds %6, %6* %15, i32 0, i32 0
  %17 = load %8*, %8** %16, align 8
  store %8* %17, %8** %8, align 8
  br label %18

; <label>:18:                                     ; preds = %120, %3
  %19 = load %8*, %8** %8, align 8
  %20 = load %6*, %6** %6, align 8
  %21 = getelementptr inbounds %6, %6* %20, i32 0, i32 1
  %22 = load %8*, %8** %21, align 8
  %23 = icmp ult %8* %19, %22
  br i1 %23, label %24, label %123

; <label>:24:                                     ; preds = %18
  %25 = load %8*, %8** %8, align 8
  %26 = getelementptr inbounds %8, %8* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %120

; <label>:29:                                     ; preds = %24
  %30 = load %8*, %8** %8, align 8
  %31 = getelementptr inbounds %8, %8* %30, i32 0, i32 1
  %32 = load %8*, %8** %31, align 8
  store %8* %32, %8** %9, align 8
  br label %33

; <label>:33:                                     ; preds = %69, %29
  %34 = load %8*, %8** %9, align 8
  %35 = icmp ne %8* %34, null
  br i1 %35, label %36, label %71

; <label>:36:                                     ; preds = %33
  %37 = load %8*, %8** %9, align 8
  %38 = getelementptr inbounds %8, %8* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %11, align 8
  %40 = load %6*, %6** %5, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = call %8* @360(%6* %40, i8* %41)
  store %8* %42, %8** %12, align 8
  %43 = load %8*, %8** %9, align 8
  %44 = getelementptr inbounds %8, %8* %43, i32 0, i32 1
  %45 = load %8*, %8** %44, align 8
  store %8* %45, %8** %10, align 8
  %46 = load %8*, %8** %12, align 8
  %47 = getelementptr inbounds %8, %8* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %59

; <label>:50:                                     ; preds = %36
  %51 = load %8*, %8** %12, align 8
  %52 = getelementptr inbounds %8, %8* %51, i32 0, i32 1
  %53 = load %8*, %8** %52, align 8
  %54 = load %8*, %8** %9, align 8
  %55 = getelementptr inbounds %8, %8* %54, i32 0, i32 1
  store %8* %53, %8** %55, align 8
  %56 = load %8*, %8** %9, align 8
  %57 = load %8*, %8** %12, align 8
  %58 = getelementptr inbounds %8, %8* %57, i32 0, i32 1
  store %8* %56, %8** %58, align 8
  br label %69

; <label>:59:                                     ; preds = %36
  %60 = load i8*, i8** %11, align 8
  %61 = load %8*, %8** %12, align 8
  %62 = getelementptr inbounds %8, %8* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load %6*, %6** %5, align 8
  %64 = getelementptr inbounds %6, %6* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %64, align 8
  %67 = load %6*, %6** %5, align 8
  %68 = load %8*, %8** %9, align 8
  call void @369(%6* %67, %8* %68)
  br label %69

; <label>:69:                                     ; preds = %50, %59
  %70 = load %8*, %8** %10, align 8
  store %8* %70, %8** %9, align 8
  br label %33

; <label>:71:                                     ; preds = %33
  %72 = load %8*, %8** %8, align 8
  %73 = getelementptr inbounds %8, %8* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %11, align 8
  %75 = load %8*, %8** %8, align 8
  %76 = getelementptr inbounds %8, %8* %75, i32 0, i32 1
  store %8* null, %8** %76, align 8
  %77 = load i8, i8* %7, align 1
  %78 = trunc i8 %77 to i1
  br i1 %78, label %120, label %79

; <label>:79:                                     ; preds = %71
  %80 = load %6*, %6** %5, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = call %8* @360(%6* %80, i8* %81)
  store %8* %82, %8** %12, align 8
  %83 = load %8*, %8** %12, align 8
  %84 = getelementptr inbounds %8, %8* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %105

; <label>:87:                                     ; preds = %79
  %88 = load %6*, %6** %5, align 8
  %89 = call %8* @370(%6* %88)
  store %8* %89, %8** %13, align 8
  %90 = load %8*, %8** %13, align 8
  %91 = icmp eq %8* %90, null
  br i1 %91, label %92, label %93

; <label>:92:                                     ; preds = %87
  store i1 false, i1* %4, align 1
  br label %124

; <label>:93:                                     ; preds = %87
  %94 = load i8*, i8** %11, align 8
  %95 = load %8*, %8** %13, align 8
  %96 = getelementptr inbounds %8, %8* %95, i32 0, i32 0
  store i8* %94, i8** %96, align 8
  %97 = load %8*, %8** %12, align 8
  %98 = getelementptr inbounds %8, %8* %97, i32 0, i32 1
  %99 = load %8*, %8** %98, align 8
  %100 = load %8*, %8** %13, align 8
  %101 = getelementptr inbounds %8, %8* %100, i32 0, i32 1
  store %8* %99, %8** %101, align 8
  %102 = load %8*, %8** %13, align 8
  %103 = load %8*, %8** %12, align 8
  %104 = getelementptr inbounds %8, %8* %103, i32 0, i32 1
  store %8* %102, %8** %104, align 8
  br label %113

; <label>:105:                                    ; preds = %79
  %106 = load i8*, i8** %11, align 8
  %107 = load %8*, %8** %12, align 8
  %108 = getelementptr inbounds %8, %8* %107, i32 0, i32 0
  store i8* %106, i8** %108, align 8
  %109 = load %6*, %6** %5, align 8
  %110 = getelementptr inbounds %6, %6* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %110, align 8
  br label %113

; <label>:113:                                    ; preds = %105, %93
  %114 = load %8*, %8** %8, align 8
  %115 = getelementptr inbounds %8, %8* %114, i32 0, i32 0
  store i8* null, i8** %115, align 8
  %116 = load %6*, %6** %6, align 8
  %117 = getelementptr inbounds %6, %6* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = add i64 %118, -1
  store i64 %119, i64* %117, align 8
  br label %120

; <label>:120:                                    ; preds = %24, %113, %71
  %121 = load %8*, %8** %8, align 8
  %122 = getelementptr inbounds %8, %8* %121, i32 1
  store %8* %122, %8** %8, align 8
  br label %18

; <label>:123:                                    ; preds = %18
  store i1 true, i1* %4, align 1
  br label %124

; <label>:124:                                    ; preds = %123, %92
  %125 = load i1, i1* %4, align 1
  ret i1 %125
}

; Function Attrs: noinline nounwind uwtable
define internal void @369(%6*, %8*) #1 {
  %3 = alloca %6*, align 8
  %4 = alloca %8*, align 8
  store %6* %0, %6** %3, align 8
  store %8* %1, %8** %4, align 8
  %5 = load %8*, %8** %4, align 8
  %6 = getelementptr inbounds %8, %8* %5, i32 0, i32 0
  store i8* null, i8** %6, align 8
  %7 = load %6*, %6** %3, align 8
  %8 = getelementptr inbounds %6, %6* %7, i32 0, i32 9
  %9 = load %8*, %8** %8, align 8
  %10 = load %8*, %8** %4, align 8
  %11 = getelementptr inbounds %8, %8* %10, i32 0, i32 1
  store %8* %9, %8** %11, align 8
  %12 = load %8*, %8** %4, align 8
  %13 = load %6*, %6** %3, align 8
  %14 = getelementptr inbounds %6, %6* %13, i32 0, i32 9
  store %8* %12, %8** %14, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal %8* @370(%6*) #1 {
  %2 = alloca %6*, align 8
  %3 = alloca %8*, align 8
  store %6* %0, %6** %2, align 8
  %4 = load %6*, %6** %2, align 8
  %5 = getelementptr inbounds %6, %6* %4, i32 0, i32 9
  %6 = load %8*, %8** %5, align 8
  %7 = icmp ne %8* %6, null
  br i1 %7, label %8, label %17

; <label>:8:                                      ; preds = %1
  %9 = load %6*, %6** %2, align 8
  %10 = getelementptr inbounds %6, %6* %9, i32 0, i32 9
  %11 = load %8*, %8** %10, align 8
  store %8* %11, %8** %3, align 8
  %12 = load %8*, %8** %3, align 8
  %13 = getelementptr inbounds %8, %8* %12, i32 0, i32 1
  %14 = load %8*, %8** %13, align 8
  %15 = load %6*, %6** %2, align 8
  %16 = getelementptr inbounds %6, %6* %15, i32 0, i32 9
  store %8* %14, %8** %16, align 8
  br label %20

; <label>:17:                                     ; preds = %1
  %18 = call noalias i8* @malloc(i64 16) #11
  %19 = bitcast i8* %18 to %8*
  store %8* %19, %8** %3, align 8
  br label %20

; <label>:20:                                     ; preds = %17, %8
  %21 = load %8*, %8** %3, align 8
  ret %8* %21
}

; Function Attrs: noinline nounwind uwtable
define i32 @hash_insert_if_absent(%6*, i8*, i8**) #1 {
  %4 = alloca i32, align 4
  %5 = alloca %6*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %8*, align 8
  %10 = alloca %7*, align 8
  %11 = alloca float, align 4
  %12 = alloca %8*, align 8
  store %6* %0, %6** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

; <label>:15:                                     ; preds = %3
  call void @abort() #12
  unreachable

; <label>:16:                                     ; preds = %3
  %17 = load %6*, %6** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i8* @371(%6* %17, i8* %18, %8** %9, i1 zeroext false)
  store i8* %19, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %28

; <label>:21:                                     ; preds = %16
  %22 = load i8**, i8*** %7, align 8
  %23 = icmp ne i8** %22, null
  br i1 %23, label %24, label %27

; <label>:24:                                     ; preds = %21
  %25 = load i8*, i8** %8, align 8
  %26 = load i8**, i8*** %7, align 8
  store i8* %25, i8** %26, align 8
  br label %27

; <label>:27:                                     ; preds = %24, %21
  store i32 0, i32* %4, align 4
  br label %139

; <label>:28:                                     ; preds = %16
  %29 = load %6*, %6** %5, align 8
  %30 = getelementptr inbounds %6, %6* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = uitofp i64 %31 to float
  %33 = load %6*, %6** %5, align 8
  %34 = getelementptr inbounds %6, %6* %33, i32 0, i32 5
  %35 = load %7*, %7** %34, align 8
  %36 = getelementptr inbounds %7, %7* %35, i32 0, i32 2
  %37 = load float, float* %36, align 4
  %38 = load %6*, %6** %5, align 8
  %39 = getelementptr inbounds %6, %6* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = uitofp i64 %40 to float
  %42 = fmul float %37, %41
  %43 = fcmp ogt float %32, %42
  br i1 %43, label %44, label %100

; <label>:44:                                     ; preds = %28
  %45 = load %6*, %6** %5, align 8
  %46 = call zeroext i1 @363(%6* %45)
  %47 = load %6*, %6** %5, align 8
  %48 = getelementptr inbounds %6, %6* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = uitofp i64 %49 to float
  %51 = load %6*, %6** %5, align 8
  %52 = getelementptr inbounds %6, %6* %51, i32 0, i32 5
  %53 = load %7*, %7** %52, align 8
  %54 = getelementptr inbounds %7, %7* %53, i32 0, i32 2
  %55 = load float, float* %54, align 4
  %56 = load %6*, %6** %5, align 8
  %57 = getelementptr inbounds %6, %6* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = uitofp i64 %58 to float
  %60 = fmul float %55, %59
  %61 = fcmp ogt float %50, %60
  br i1 %61, label %62, label %100

; <label>:62:                                     ; preds = %44
  %63 = load %6*, %6** %5, align 8
  %64 = getelementptr inbounds %6, %6* %63, i32 0, i32 5
  %65 = load %7*, %7** %64, align 8
  store %7* %65, %7** %10, align 8
  %66 = load %7*, %7** %10, align 8
  %67 = getelementptr inbounds %7, %7* %66, i32 0, i32 4
  %68 = load i8, i8* %67, align 4
  %69 = trunc i8 %68 to i1
  %70 = load %6*, %6** %5, align 8
  %71 = getelementptr inbounds %6, %6* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = uitofp i64 %72 to float
  %74 = load %7*, %7** %10, align 8
  %75 = getelementptr inbounds %7, %7* %74, i32 0, i32 3
  %76 = load float, float* %75, align 4
  %77 = fmul float %73, %76
  br i1 %69, label %83, label %78

; <label>:78:                                     ; preds = %62
  %79 = load %7*, %7** %10, align 8
  %80 = getelementptr inbounds %7, %7* %79, i32 0, i32 2
  %81 = load float, float* %80, align 4
  %82 = fmul float %77, %81
  br label %83

; <label>:83:                                     ; preds = %62, %78
  %84 = phi float [ %82, %78 ], [ %77, %62 ]
  store float %84, float* %11, align 4
  %85 = load float, float* %11, align 4
  %86 = fcmp ole float 0x43F0000000000000, %85
  br i1 %86, label %87, label %88

; <label>:87:                                     ; preds = %83
  store i32 -1, i32* %4, align 4
  br label %139

; <label>:88:                                     ; preds = %83
  %89 = load %6*, %6** %5, align 8
  %90 = load float, float* %11, align 4
  %91 = fptoui float %90 to i64
  %92 = call zeroext i1 @hash_rehash(%6* %89, i64 %91)
  br i1 %92, label %94, label %93

; <label>:93:                                     ; preds = %88
  store i32 -1, i32* %4, align 4
  br label %139

; <label>:94:                                     ; preds = %88
  %95 = load %6*, %6** %5, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = call i8* @371(%6* %95, i8* %96, %8** %9, i1 zeroext false)
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %100

; <label>:99:                                     ; preds = %94
  call void @abort() #12
  unreachable

; <label>:100:                                    ; preds = %44, %94, %28
  %101 = load %8*, %8** %9, align 8
  %102 = getelementptr inbounds %8, %8* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %127

; <label>:105:                                    ; preds = %100
  %106 = load %6*, %6** %5, align 8
  %107 = call %8* @370(%6* %106)
  store %8* %107, %8** %12, align 8
  %108 = load %8*, %8** %12, align 8
  %109 = icmp eq %8* %108, null
  br i1 %109, label %110, label %111

; <label>:110:                                    ; preds = %105
  store i32 -1, i32* %4, align 4
  br label %139

; <label>:111:                                    ; preds = %105
  %112 = load i8*, i8** %6, align 8
  %113 = load %8*, %8** %12, align 8
  %114 = getelementptr inbounds %8, %8* %113, i32 0, i32 0
  store i8* %112, i8** %114, align 8
  %115 = load %8*, %8** %9, align 8
  %116 = getelementptr inbounds %8, %8* %115, i32 0, i32 1
  %117 = load %8*, %8** %116, align 8
  %118 = load %8*, %8** %12, align 8
  %119 = getelementptr inbounds %8, %8* %118, i32 0, i32 1
  store %8* %117, %8** %119, align 8
  %120 = load %8*, %8** %12, align 8
  %121 = load %8*, %8** %9, align 8
  %122 = getelementptr inbounds %8, %8* %121, i32 0, i32 1
  store %8* %120, %8** %122, align 8
  %123 = load %6*, %6** %5, align 8
  %124 = getelementptr inbounds %6, %6* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %124, align 8
  store i32 1, i32* %4, align 4
  br label %139

; <label>:127:                                    ; preds = %100
  %128 = load i8*, i8** %6, align 8
  %129 = load %8*, %8** %9, align 8
  %130 = getelementptr inbounds %8, %8* %129, i32 0, i32 0
  store i8* %128, i8** %130, align 8
  %131 = load %6*, %6** %5, align 8
  %132 = getelementptr inbounds %6, %6* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %132, align 8
  %135 = load %6*, %6** %5, align 8
  %136 = getelementptr inbounds %6, %6* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %136, align 8
  store i32 1, i32* %4, align 4
  br label %139

; <label>:139:                                    ; preds = %127, %111, %110, %93, %87, %27
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @371(%6*, i8*, %8**, i1 zeroext) #1 {
  %5 = alloca i8*, align 8
  %6 = alloca %6*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %8**, align 8
  %9 = alloca i8, align 1
  %10 = alloca %8*, align 8
  %11 = alloca %8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %8*, align 8
  store %6* %0, %6** %6, align 8
  store i8* %1, i8** %7, align 8
  store %8** %2, %8*** %8, align 8
  %16 = zext i1 %3 to i8
  store i8 %16, i8* %9, align 1
  %17 = load %6*, %6** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call %8* @360(%6* %17, i8* %18)
  store %8* %19, %8** %10, align 8
  %20 = load %8*, %8** %10, align 8
  %21 = load %8**, %8*** %8, align 8
  store %8* %20, %8** %21, align 8
  %22 = load %8*, %8** %10, align 8
  %23 = getelementptr inbounds %8, %8* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %4
  store i8* null, i8** %5, align 8
  br label %119

; <label>:27:                                     ; preds = %4
  %28 = load i8*, i8** %7, align 8
  %29 = load %8*, %8** %10, align 8
  %30 = getelementptr inbounds %8, %8* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = icmp eq i8* %28, %31
  br i1 %32, label %42, label %33

; <label>:33:                                     ; preds = %27
  %34 = load %6*, %6** %6, align 8
  %35 = getelementptr inbounds %6, %6* %34, i32 0, i32 7
  %36 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %35, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load %8*, %8** %10, align 8
  %39 = getelementptr inbounds %8, %8* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call zeroext i1 %36(i8* %37, i8* %40)
  br i1 %41, label %42, label %67

; <label>:42:                                     ; preds = %33, %27
  %43 = load %8*, %8** %10, align 8
  %44 = getelementptr inbounds %8, %8* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %12, align 8
  %46 = load i8, i8* %9, align 1
  %47 = trunc i8 %46 to i1
  br i1 %47, label %48, label %65

; <label>:48:                                     ; preds = %42
  %49 = load %8*, %8** %10, align 8
  %50 = getelementptr inbounds %8, %8* %49, i32 0, i32 1
  %51 = load %8*, %8** %50, align 8
  %52 = icmp ne %8* %51, null
  %53 = load %8*, %8** %10, align 8
  br i1 %52, label %54, label %63

; <label>:54:                                     ; preds = %48
  %55 = getelementptr inbounds %8, %8* %53, i32 0, i32 1
  %56 = load %8*, %8** %55, align 8
  store %8* %56, %8** %13, align 8
  %57 = load %8*, %8** %10, align 8
  %58 = load %8*, %8** %13, align 8
  %59 = bitcast %8* %57 to i8*
  %60 = bitcast %8* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 16, i32 8, i1 false)
  %61 = load %6*, %6** %6, align 8
  %62 = load %8*, %8** %13, align 8
  call void @369(%6* %61, %8* %62)
  br label %65

; <label>:63:                                     ; preds = %48
  %64 = getelementptr inbounds %8, %8* %53, i32 0, i32 0
  store i8* null, i8** %64, align 8
  br label %65

; <label>:65:                                     ; preds = %54, %63, %42
  %66 = load i8*, i8** %12, align 8
  store i8* %66, i8** %5, align 8
  br label %119

; <label>:67:                                     ; preds = %33
  %68 = load %8*, %8** %10, align 8
  store %8* %68, %8** %11, align 8
  br label %69

; <label>:69:                                     ; preds = %114, %67
  %70 = load %8*, %8** %11, align 8
  %71 = getelementptr inbounds %8, %8* %70, i32 0, i32 1
  %72 = load %8*, %8** %71, align 8
  %73 = icmp ne %8* %72, null
  br i1 %73, label %74, label %118

; <label>:74:                                     ; preds = %69
  %75 = load i8*, i8** %7, align 8
  %76 = load %8*, %8** %11, align 8
  %77 = getelementptr inbounds %8, %8* %76, i32 0, i32 1
  %78 = load %8*, %8** %77, align 8
  %79 = getelementptr inbounds %8, %8* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = icmp eq i8* %75, %80
  br i1 %81, label %93, label %82

; <label>:82:                                     ; preds = %74
  %83 = load %6*, %6** %6, align 8
  %84 = getelementptr inbounds %6, %6* %83, i32 0, i32 7
  %85 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %84, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = load %8*, %8** %11, align 8
  %88 = getelementptr inbounds %8, %8* %87, i32 0, i32 1
  %89 = load %8*, %8** %88, align 8
  %90 = getelementptr inbounds %8, %8* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call zeroext i1 %85(i8* %86, i8* %91)
  br i1 %92, label %93, label %114

; <label>:93:                                     ; preds = %82, %74
  %94 = load %8*, %8** %11, align 8
  %95 = getelementptr inbounds %8, %8* %94, i32 0, i32 1
  %96 = load %8*, %8** %95, align 8
  %97 = getelementptr inbounds %8, %8* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %14, align 8
  %99 = load i8, i8* %9, align 1
  %100 = trunc i8 %99 to i1
  br i1 %100, label %101, label %112

; <label>:101:                                    ; preds = %93
  %102 = load %8*, %8** %11, align 8
  %103 = getelementptr inbounds %8, %8* %102, i32 0, i32 1
  %104 = load %8*, %8** %103, align 8
  store %8* %104, %8** %15, align 8
  %105 = load %8*, %8** %15, align 8
  %106 = getelementptr inbounds %8, %8* %105, i32 0, i32 1
  %107 = load %8*, %8** %106, align 8
  %108 = load %8*, %8** %11, align 8
  %109 = getelementptr inbounds %8, %8* %108, i32 0, i32 1
  store %8* %107, %8** %109, align 8
  %110 = load %6*, %6** %6, align 8
  %111 = load %8*, %8** %15, align 8
  call void @369(%6* %110, %8* %111)
  br label %112

; <label>:112:                                    ; preds = %101, %93
  %113 = load i8*, i8** %14, align 8
  store i8* %113, i8** %5, align 8
  br label %119

; <label>:114:                                    ; preds = %82
  %115 = load %8*, %8** %11, align 8
  %116 = getelementptr inbounds %8, %8* %115, i32 0, i32 1
  %117 = load %8*, %8** %116, align 8
  store %8* %117, %8** %11, align 8
  br label %69

; <label>:118:                                    ; preds = %69
  store i8* null, i8** %5, align 8
  br label %119

; <label>:119:                                    ; preds = %118, %112, %65, %26
  %120 = load i8*, i8** %5, align 8
  ret i8* %120
}

; Function Attrs: noinline nounwind uwtable
define i8* @hash_insert(%6*, i8*) #1 {
  %3 = alloca %6*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %6* %0, %6** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %6*, %6** %3, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @hash_insert_if_absent(%6* %7, i8* %8, i8** %5)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %18, label %12

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 0
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = select i1 %14, i8* %15, i8* %16
  br label %18

; <label>:18:                                     ; preds = %12, %2
  %19 = phi i8* [ null, %2 ], [ %17, %12 ]
  ret i8* %19
}

; Function Attrs: noinline nounwind uwtable
define i8* @hash_delete(%6*, i8*) #1 {
  %3 = alloca i8*, align 8
  %4 = alloca %6*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %8*, align 8
  %8 = alloca %7*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %8*, align 8
  %11 = alloca %8*, align 8
  store %6* %0, %6** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %6*, %6** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i8* @371(%6* %12, i8* %13, %8** %7, i1 zeroext true)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

; <label>:17:                                     ; preds = %2
  store i8* null, i8** %3, align 8
  br label %111

; <label>:18:                                     ; preds = %2
  %19 = load %6*, %6** %4, align 8
  %20 = getelementptr inbounds %6, %6* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* %20, align 8
  %23 = load %8*, %8** %7, align 8
  %24 = getelementptr inbounds %8, %8* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %109, label %27

; <label>:27:                                     ; preds = %18
  %28 = load %6*, %6** %4, align 8
  %29 = getelementptr inbounds %6, %6* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, -1
  store i64 %31, i64* %29, align 8
  %32 = load %6*, %6** %4, align 8
  %33 = getelementptr inbounds %6, %6* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = uitofp i64 %34 to float
  %36 = load %6*, %6** %4, align 8
  %37 = getelementptr inbounds %6, %6* %36, i32 0, i32 5
  %38 = load %7*, %7** %37, align 8
  %39 = getelementptr inbounds %7, %7* %38, i32 0, i32 0
  %40 = load float, float* %39, align 4
  %41 = load %6*, %6** %4, align 8
  %42 = getelementptr inbounds %6, %6* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = uitofp i64 %43 to float
  %45 = fmul float %40, %44
  %46 = fcmp olt float %35, %45
  br i1 %46, label %47, label %109

; <label>:47:                                     ; preds = %27
  %48 = load %6*, %6** %4, align 8
  %49 = call zeroext i1 @363(%6* %48)
  %50 = load %6*, %6** %4, align 8
  %51 = getelementptr inbounds %6, %6* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = uitofp i64 %52 to float
  %54 = load %6*, %6** %4, align 8
  %55 = getelementptr inbounds %6, %6* %54, i32 0, i32 5
  %56 = load %7*, %7** %55, align 8
  %57 = getelementptr inbounds %7, %7* %56, i32 0, i32 0
  %58 = load float, float* %57, align 4
  %59 = load %6*, %6** %4, align 8
  %60 = getelementptr inbounds %6, %6* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = uitofp i64 %61 to float
  %63 = fmul float %58, %62
  %64 = fcmp olt float %53, %63
  br i1 %64, label %65, label %109

; <label>:65:                                     ; preds = %47
  %66 = load %6*, %6** %4, align 8
  %67 = getelementptr inbounds %6, %6* %66, i32 0, i32 5
  %68 = load %7*, %7** %67, align 8
  store %7* %68, %7** %8, align 8
  %69 = load %7*, %7** %8, align 8
  %70 = getelementptr inbounds %7, %7* %69, i32 0, i32 4
  %71 = load i8, i8* %70, align 4
  %72 = trunc i8 %71 to i1
  %73 = load %6*, %6** %4, align 8
  %74 = getelementptr inbounds %6, %6* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = uitofp i64 %75 to float
  %77 = load %7*, %7** %8, align 8
  %78 = getelementptr inbounds %7, %7* %77, i32 0, i32 1
  %79 = load float, float* %78, align 4
  %80 = fmul float %76, %79
  br i1 %72, label %86, label %81

; <label>:81:                                     ; preds = %65
  %82 = load %7*, %7** %8, align 8
  %83 = getelementptr inbounds %7, %7* %82, i32 0, i32 2
  %84 = load float, float* %83, align 4
  %85 = fmul float %80, %84
  br label %86

; <label>:86:                                     ; preds = %65, %81
  %87 = phi float [ %85, %81 ], [ %80, %65 ]
  %88 = fptoui float %87 to i64
  store i64 %88, i64* %9, align 8
  %89 = load %6*, %6** %4, align 8
  %90 = load i64, i64* %9, align 8
  %91 = call zeroext i1 @hash_rehash(%6* %89, i64 %90)
  br i1 %91, label %109, label %92

; <label>:92:                                     ; preds = %86
  %93 = load %6*, %6** %4, align 8
  %94 = getelementptr inbounds %6, %6* %93, i32 0, i32 9
  %95 = load %8*, %8** %94, align 8
  store %8* %95, %8** %10, align 8
  br label %96

; <label>:96:                                     ; preds = %99, %92
  %97 = load %8*, %8** %10, align 8
  %98 = icmp ne %8* %97, null
  br i1 %98, label %99, label %106

; <label>:99:                                     ; preds = %96
  %100 = load %8*, %8** %10, align 8
  %101 = getelementptr inbounds %8, %8* %100, i32 0, i32 1
  %102 = load %8*, %8** %101, align 8
  store %8* %102, %8** %11, align 8
  %103 = load %8*, %8** %10, align 8
  %104 = bitcast %8* %103 to i8*
  call void @free(i8* %104) #11
  %105 = load %8*, %8** %11, align 8
  store %8* %105, %8** %10, align 8
  br label %96

; <label>:106:                                    ; preds = %96
  %107 = load %6*, %6** %4, align 8
  %108 = getelementptr inbounds %6, %6* %107, i32 0, i32 9
  store %8* null, %8** %108, align 8
  br label %109

; <label>:109:                                    ; preds = %27, %86, %106, %47, %18
  %110 = load i8*, i8** %6, align 8
  store i8* %110, i8** %3, align 8
  br label %111

; <label>:111:                                    ; preds = %109, %17
  %112 = load i8*, i8** %3, align 8
  ret i8* %112
}

; Function Attrs: noinline nounwind uwtable
define %30* @heap_alloc(i32 (i8*, i8*)*, i64) #1 {
  %3 = alloca i32 (i8*, i8*)*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %30*, align 8
  store i32 (i8*, i8*)* %0, i32 (i8*, i8*)** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = call noalias i8* @xmalloc(i64 32)
  %7 = bitcast i8* %6 to %30*
  store %30* %7, %30** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %2
  store i64 1, i64* %4, align 8
  br label %11

; <label>:11:                                     ; preds = %10, %2
  %12 = load i64, i64* %4, align 8
  %13 = call noalias i8* @xnmalloc(i64 %12, i64 8)
  %14 = bitcast i8* %13 to i8**
  %15 = load %30*, %30** %5, align 8
  %16 = getelementptr inbounds %30, %30* %15, i32 0, i32 0
  store i8** %14, i8*** %16, align 8
  %17 = load %30*, %30** %5, align 8
  %18 = getelementptr inbounds %30, %30* %17, i32 0, i32 0
  %19 = load i8**, i8*** %18, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  store i8* null, i8** %20, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load %30*, %30** %5, align 8
  %23 = getelementptr inbounds %30, %30* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load %30*, %30** %5, align 8
  %25 = getelementptr inbounds %30, %30* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %3, align 8
  %27 = icmp ne i32 (i8*, i8*)* %26, null
  %28 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %3, align 8
  %29 = select i1 %27, i32 (i8*, i8*)* %28, i32 (i8*, i8*)* @372
  %30 = load %30*, %30** %5, align 8
  %31 = getelementptr inbounds %30, %30* %30, i32 0, i32 3
  store i32 (i8*, i8*)* %29, i32 (i8*, i8*)** %31, align 8
  %32 = load %30*, %30** %5, align 8
  ret %30* %32
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @372(i8*, i8*) #1 {
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define void @heap_free(%30*) #1 {
  %2 = alloca %30*, align 8
  store %30* %0, %30** %2, align 8
  %3 = load %30*, %30** %2, align 8
  %4 = getelementptr inbounds %30, %30* %3, i32 0, i32 0
  %5 = load i8**, i8*** %4, align 8
  %6 = bitcast i8** %5 to i8*
  call void @free(i8* %6) #11
  %7 = load %30*, %30** %2, align 8
  %8 = bitcast %30* %7 to i8*
  call void @free(i8* %8) #11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @heap_insert(%30*, i8*) #1 {
  %3 = alloca %30*, align 8
  %4 = alloca i8*, align 8
  store %30* %0, %30** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %30*, %30** %3, align 8
  %6 = getelementptr inbounds %30, %30* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = sub i64 %7, 1
  %9 = load %30*, %30** %3, align 8
  %10 = getelementptr inbounds %30, %30* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ule i64 %8, %11
  br i1 %12, label %13, label %24

; <label>:13:                                     ; preds = %2
  %14 = load %30*, %30** %3, align 8
  %15 = getelementptr inbounds %30, %30* %14, i32 0, i32 0
  %16 = load i8**, i8*** %15, align 8
  %17 = bitcast i8** %16 to i8*
  %18 = load %30*, %30** %3, align 8
  %19 = getelementptr inbounds %30, %30* %18, i32 0, i32 1
  %20 = call i8* @x2nrealloc(i8* %17, i64* %19, i64 8)
  %21 = bitcast i8* %20 to i8**
  %22 = load %30*, %30** %3, align 8
  %23 = getelementptr inbounds %30, %30* %22, i32 0, i32 0
  store i8** %21, i8*** %23, align 8
  br label %24

; <label>:24:                                     ; preds = %13, %2
  %25 = load i8*, i8** %4, align 8
  %26 = load %30*, %30** %3, align 8
  %27 = getelementptr inbounds %30, %30* %26, i32 0, i32 0
  %28 = load i8**, i8*** %27, align 8
  %29 = load %30*, %30** %3, align 8
  %30 = getelementptr inbounds %30, %30* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %30, align 8
  %33 = getelementptr inbounds i8*, i8** %28, i64 %32
  store i8* %25, i8** %33, align 8
  %34 = load %30*, %30** %3, align 8
  %35 = getelementptr inbounds %30, %30* %34, i32 0, i32 0
  %36 = load i8**, i8*** %35, align 8
  %37 = load %30*, %30** %3, align 8
  %38 = getelementptr inbounds %30, %30* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %30*, %30** %3, align 8
  %41 = getelementptr inbounds %30, %30* %40, i32 0, i32 3
  %42 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %41, align 8
  call void @373(i8** %36, i64 %39, i32 (i8*, i8*)* %42)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @373(i8**, i64, i32 (i8*, i8*)*) #1 {
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32 (i8*, i8*)*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 (i8*, i8*)* %2, i32 (i8*, i8*)** %6, align 8
  %9 = load i64, i64* %5, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i8**, i8*** %4, align 8
  %11 = load i64, i64* %7, align 8
  %12 = getelementptr inbounds i8*, i8** %10, i64 %11
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %8, align 8
  br label %14

; <label>:14:                                     ; preds = %27, %3
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 1
  br i1 %16, label %17, label %.critedge

; <label>:17:                                     ; preds = %14
  %18 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %6, align 8
  %19 = load i8**, i8*** %4, align 8
  %20 = load i64, i64* %7, align 8
  %21 = udiv i64 %20, 2
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 %18(i8* %23, i8* %24)
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %.critedge

; <label>:27:                                     ; preds = %17
  %28 = load i8**, i8*** %4, align 8
  %29 = load i64, i64* %7, align 8
  %30 = udiv i64 %29, 2
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = load i8**, i8*** %4, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds i8*, i8** %33, i64 %34
  store i8* %32, i8** %35, align 8
  %36 = load i64, i64* %7, align 8
  %37 = udiv i64 %36, 2
  store i64 %37, i64* %7, align 8
  br label %14

.critedge:                                        ; preds = %14, %17
  %38 = load i8*, i8** %8, align 8
  %39 = load i8**, i8*** %4, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds i8*, i8** %39, i64 %40
  store i8* %38, i8** %41, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i8* @heap_remove_top(%30*) #1 {
  %2 = alloca i8*, align 8
  %3 = alloca %30*, align 8
  %4 = alloca i8*, align 8
  store %30* %0, %30** %3, align 8
  %5 = load %30*, %30** %3, align 8
  %6 = getelementptr inbounds %30, %30* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %1
  store i8* null, i8** %2, align 8
  br label %40

; <label>:10:                                     ; preds = %1
  %11 = load %30*, %30** %3, align 8
  %12 = getelementptr inbounds %30, %30* %11, i32 0, i32 0
  %13 = load i8**, i8*** %12, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %4, align 8
  %16 = load %30*, %30** %3, align 8
  %17 = getelementptr inbounds %30, %30* %16, i32 0, i32 0
  %18 = load i8**, i8*** %17, align 8
  %19 = load %30*, %30** %3, align 8
  %20 = getelementptr inbounds %30, %30* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* %20, align 8
  %23 = getelementptr inbounds i8*, i8** %18, i64 %21
  %24 = load i8*, i8** %23, align 8
  %25 = load %30*, %30** %3, align 8
  %26 = getelementptr inbounds %30, %30* %25, i32 0, i32 0
  %27 = load i8**, i8*** %26, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  store i8* %24, i8** %28, align 8
  %29 = load %30*, %30** %3, align 8
  %30 = getelementptr inbounds %30, %30* %29, i32 0, i32 0
  %31 = load i8**, i8*** %30, align 8
  %32 = load %30*, %30** %3, align 8
  %33 = getelementptr inbounds %30, %30* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %30*, %30** %3, align 8
  %36 = getelementptr inbounds %30, %30* %35, i32 0, i32 3
  %37 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %36, align 8
  %38 = call i64 @374(i8** %31, i64 %34, i64 1, i32 (i8*, i8*)* %37)
  %39 = load i8*, i8** %4, align 8
  store i8* %39, i8** %2, align 8
  br label %40

; <label>:40:                                     ; preds = %10, %9
  %41 = load i8*, i8** %2, align 8
  ret i8* %41
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @374(i8**, i64, i64, i32 (i8*, i8*)*) #1 {
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32 (i8*, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 (i8*, i8*)* %3, i32 (i8*, i8*)** %8, align 8
  %12 = load i8**, i8*** %5, align 8
  %13 = load i64, i64* %7, align 8
  %14 = getelementptr inbounds i8*, i8** %12, i64 %13
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %9, align 8
  %16 = load i64, i64* %7, align 8
  store i64 %16, i64* %10, align 8
  br label %17

; <label>:17:                                     ; preds = %53, %4
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* %6, align 8
  %20 = udiv i64 %19, 2
  %21 = icmp ule i64 %18, %20
  br i1 %21, label %22, label %62

; <label>:22:                                     ; preds = %17
  %23 = load i64, i64* %10, align 8
  %24 = mul i64 2, %23
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %44

; <label>:28:                                     ; preds = %22
  %29 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8
  %30 = load i8**, i8*** %5, align 8
  %31 = load i64, i64* %11, align 8
  %32 = getelementptr inbounds i8*, i8** %30, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = load i8**, i8*** %5, align 8
  %35 = load i64, i64* %11, align 8
  %36 = add i64 %35, 1
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 %29(i8* %33, i8* %38)
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

; <label>:41:                                     ; preds = %28
  %42 = load i64, i64* %11, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %11, align 8
  br label %44

; <label>:44:                                     ; preds = %41, %28, %22
  %45 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8
  %46 = load i8**, i8*** %5, align 8
  %47 = load i64, i64* %11, align 8
  %48 = getelementptr inbounds i8*, i8** %46, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 %45(i8* %49, i8* %50)
  %52 = icmp sle i32 %51, 0
  br i1 %52, label %62, label %53

; <label>:53:                                     ; preds = %44
  %54 = load i8**, i8*** %5, align 8
  %55 = load i64, i64* %11, align 8
  %56 = getelementptr inbounds i8*, i8** %54, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = load i8**, i8*** %5, align 8
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds i8*, i8** %58, i64 %59
  store i8* %57, i8** %60, align 8
  %61 = load i64, i64* %11, align 8
  store i64 %61, i64* %10, align 8
  br label %17

; <label>:62:                                     ; preds = %44, %17
  %63 = load i8*, i8** %9, align 8
  %64 = load i8**, i8*** %5, align 8
  %65 = load i64, i64* %10, align 8
  %66 = getelementptr inbounds i8*, i8** %64, i64 %65
  store i8* %63, i8** %66, align 8
  %67 = load i64, i64* %10, align 8
  ret i64 %67
}

; Function Attrs: noinline nounwind uwtable
define i8* @uinttostr(i32, i8*) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 10
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  store i8 0, i8* %8, align 1
  %9 = load i32, i32* %3, align 4
  %10 = icmp ult i32 %9, 0
  br i1 %10, label %11, label %25

; <label>:11:                                     ; preds = %2
  br label %12

; <label>:12:                                     ; preds = %12, %11
  %13 = load i32, i32* %3, align 4
  %14 = urem i32 %13, 10
  %15 = sub i32 48, %14
  %16 = trunc i32 %15 to i8
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 -1
  store i8* %18, i8** %5, align 8
  store i8 %16, i8* %18, align 1
  %19 = load i32, i32* %3, align 4
  %20 = udiv i32 %19, 10
  store i32 %20, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %12, label %22

; <label>:22:                                     ; preds = %12
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 -1
  store i8* %24, i8** %5, align 8
  store i8 45, i8* %24, align 1
  br label %36

; <label>:25:                                     ; preds = %2
  br label %26

; <label>:26:                                     ; preds = %26, %25
  %27 = load i32, i32* %3, align 4
  %28 = urem i32 %27, 10
  %29 = add i32 48, %28
  %30 = trunc i32 %29 to i8
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 -1
  store i8* %32, i8** %5, align 8
  store i8 %30, i8* %32, align 1
  %33 = load i32, i32* %3, align 4
  %34 = udiv i32 %33, 10
  store i32 %34, i32* %3, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %26, label %36

; <label>:36:                                     ; preds = %26, %22
  %37 = load i8*, i8** %5, align 8
  ret i8* %37
}

; Function Attrs: noinline nounwind uwtable
define i8* @umaxtostr(i64, i8*) #1 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 20
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  store i8 0, i8* %8, align 1
  %9 = load i64, i64* %3, align 8
  %10 = icmp ult i64 %9, 0
  br i1 %10, label %11, label %25

; <label>:11:                                     ; preds = %2
  br label %12

; <label>:12:                                     ; preds = %12, %11
  %13 = load i64, i64* %3, align 8
  %14 = urem i64 %13, 10
  %15 = sub i64 48, %14
  %16 = trunc i64 %15 to i8
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 -1
  store i8* %18, i8** %5, align 8
  store i8 %16, i8* %18, align 1
  %19 = load i64, i64* %3, align 8
  %20 = udiv i64 %19, 10
  store i64 %20, i64* %3, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %12, label %22

; <label>:22:                                     ; preds = %12
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 -1
  store i8* %24, i8** %5, align 8
  store i8 45, i8* %24, align 1
  br label %36

; <label>:25:                                     ; preds = %2
  br label %26

; <label>:26:                                     ; preds = %26, %25
  %27 = load i64, i64* %3, align 8
  %28 = urem i64 %27, 10
  %29 = add i64 48, %28
  %30 = trunc i64 %29 to i8
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 -1
  store i8* %32, i8** %5, align 8
  store i8 %30, i8* %32, align 1
  %33 = load i64, i64* %3, align 8
  %34 = udiv i64 %33, 10
  store i64 %34, i64* %3, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %26, label %36

; <label>:36:                                     ; preds = %26, %22
  %37 = load i8*, i8** %5, align 8
  ret i8* %37
}

; Function Attrs: noinline nounwind uwtable
define i32 @mbsnwidth(i8*, i64, i32) #1 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %42, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i8*, i8** %5, align 8
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  store i8* %19, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %20 = call i64 @__ctype_get_mb_cur_max() #11
  %21 = icmp ugt i64 %20, 1
  br i1 %21, label %22, label %113

; <label>:22:                                     ; preds = %3
  br label %23

; <label>:23:                                     ; preds = %110, %22
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = icmp ult i8* %24, %25
  br i1 %26, label %27, label %111

; <label>:27:                                     ; preds = %23
  %28 = load i8*, i8** %8, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  switch i32 %30, label %36 [
    i32 32, label %31
    i32 33, label %31
    i32 34, label %31
    i32 35, label %31
    i32 37, label %31
    i32 38, label %31
    i32 39, label %31
    i32 40, label %31
    i32 41, label %31
    i32 42, label %31
    i32 43, label %31
    i32 44, label %31
    i32 45, label %31
    i32 46, label %31
    i32 47, label %31
    i32 48, label %31
    i32 49, label %31
    i32 50, label %31
    i32 51, label %31
    i32 52, label %31
    i32 53, label %31
    i32 54, label %31
    i32 55, label %31
    i32 56, label %31
    i32 57, label %31
    i32 58, label %31
    i32 59, label %31
    i32 60, label %31
    i32 61, label %31
    i32 62, label %31
    i32 63, label %31
    i32 65, label %31
    i32 66, label %31
    i32 67, label %31
    i32 68, label %31
    i32 69, label %31
    i32 70, label %31
    i32 71, label %31
    i32 72, label %31
    i32 73, label %31
    i32 74, label %31
    i32 75, label %31
    i32 76, label %31
    i32 77, label %31
    i32 78, label %31
    i32 79, label %31
    i32 80, label %31
    i32 81, label %31
    i32 82, label %31
    i32 83, label %31
    i32 84, label %31
    i32 85, label %31
    i32 86, label %31
    i32 87, label %31
    i32 88, label %31
    i32 89, label %31
    i32 90, label %31
    i32 91, label %31
    i32 92, label %31
    i32 93, label %31
    i32 94, label %31
    i32 95, label %31
    i32 97, label %31
    i32 98, label %31
    i32 99, label %31
    i32 100, label %31
    i32 101, label %31
    i32 102, label %31
    i32 103, label %31
    i32 104, label %31
    i32 105, label %31
    i32 106, label %31
    i32 107, label %31
    i32 108, label %31
    i32 109, label %31
    i32 110, label %31
    i32 111, label %31
    i32 112, label %31
    i32 113, label %31
    i32 114, label %31
    i32 115, label %31
    i32 116, label %31
    i32 117, label %31
    i32 118, label %31
    i32 119, label %31
    i32 120, label %31
    i32 121, label %31
    i32 122, label %31
    i32 123, label %31
    i32 124, label %31
    i32 125, label %31
    i32 126, label %31
  ]

; <label>:31:                                     ; preds = %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %8, align 8
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %10, align 4
  br label %110

; <label>:36:                                     ; preds = %27
  %37 = bitcast %42* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* %37, i8 0, i64 8, i32 4, i1 false)
  br label %38

; <label>:38:                                     ; preds = %103, %36
  %39 = load i8*, i8** %8, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = call i64 @mbrtowc(i32* %12, i8* %39, i64 %44, %42* %11) #11
  store i64 %45, i64* %13, align 8
  %46 = load i64, i64* %13, align 8
  %47 = icmp eq i64 %46, -1
  br i1 %47, label %48, label %58

; <label>:48:                                     ; preds = %38
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, 1
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

; <label>:52:                                     ; preds = %48
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %8, align 8
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %110

; <label>:57:                                     ; preds = %48
  store i32 -1, i32* %4, align 4
  br label %164

; <label>:58:                                     ; preds = %38
  %59 = load i64, i64* %13, align 8
  %60 = icmp eq i64 %59, -2
  br i1 %60, label %61, label %70

; <label>:61:                                     ; preds = %58
  %62 = load i32, i32* %7, align 4
  %63 = and i32 %62, 1
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

; <label>:65:                                     ; preds = %61
  %66 = load i8*, i8** %9, align 8
  store i8* %66, i8** %8, align 8
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %110

; <label>:69:                                     ; preds = %61
  store i32 -1, i32* %4, align 4
  br label %164

; <label>:70:                                     ; preds = %58
  %71 = load i64, i64* %13, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %74

; <label>:73:                                     ; preds = %70
  store i64 1, i64* %13, align 8
  br label %74

; <label>:74:                                     ; preds = %73, %70
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @wcwidth(i32 %75) #11
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %88

; <label>:79:                                     ; preds = %74
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %10, align 4
  %82 = sub nsw i32 2147483647, %81
  %83 = icmp sgt i32 %80, %82
  br i1 %83, label %163, label %84

; <label>:84:                                     ; preds = %79
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %10, align 4
  br label %103

; <label>:88:                                     ; preds = %74
  %89 = load i32, i32* %7, align 4
  %90 = and i32 %89, 2
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %102, label %92

; <label>:92:                                     ; preds = %88
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @iswcntrl(i32 %93) #11
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %103, label %96

; <label>:96:                                     ; preds = %92
  %97 = load i32, i32* %10, align 4
  %98 = icmp eq i32 %97, 2147483647
  br i1 %98, label %163, label %99

; <label>:99:                                     ; preds = %96
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %103

; <label>:102:                                    ; preds = %88
  store i32 -1, i32* %4, align 4
  br label %164

; <label>:103:                                    ; preds = %99, %92, %84
  %104 = load i64, i64* %13, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 %104
  store i8* %106, i8** %8, align 8
  %107 = call i32 @mbsinit(%42* %11) #13
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  br i1 %109, label %38, label %110

; <label>:110:                                    ; preds = %52, %65, %103, %31
  br label %23

; <label>:111:                                    ; preds = %23
  %112 = load i32, i32* %10, align 4
  store i32 %112, i32* %4, align 4
  br label %164

; <label>:113:                                    ; preds = %3
  br label %114

; <label>:114:                                    ; preds = %160, %113
  %115 = load i8*, i8** %8, align 8
  %116 = load i8*, i8** %9, align 8
  %117 = icmp ult i8* %115, %116
  br i1 %117, label %118, label %161

; <label>:118:                                    ; preds = %114
  %119 = load i8*, i8** %8, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %8, align 8
  %121 = load i8, i8* %119, align 1
  store i8 %121, i8* %15, align 1
  %122 = call i16** @__ctype_b_loc() #15
  %123 = load i16*, i16** %122, align 8
  %124 = load i8, i8* %15, align 1
  %125 = zext i8 %124 to i32
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i16, i16* %123, i64 %126
  %128 = load i16, i16* %127, align 2
  %129 = zext i16 %128 to i32
  %130 = and i32 %129, 16384
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

; <label>:132:                                    ; preds = %118
  %133 = load i32, i32* %10, align 4
  %134 = icmp eq i32 %133, 2147483647
  br i1 %134, label %163, label %135

; <label>:135:                                    ; preds = %132
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %10, align 4
  br label %160

; <label>:138:                                    ; preds = %118
  %139 = load i32, i32* %7, align 4
  %140 = and i32 %139, 2
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %159, label %142

; <label>:142:                                    ; preds = %138
  %143 = call i16** @__ctype_b_loc() #15
  %144 = load i16*, i16** %143, align 8
  %145 = load i8, i8* %15, align 1
  %146 = zext i8 %145 to i32
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i16, i16* %144, i64 %147
  %149 = load i16, i16* %148, align 2
  %150 = zext i16 %149 to i32
  %151 = and i32 %150, 2
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %160, label %153

; <label>:153:                                    ; preds = %142
  %154 = load i32, i32* %10, align 4
  %155 = icmp eq i32 %154, 2147483647
  br i1 %155, label %163, label %156

; <label>:156:                                    ; preds = %153
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %10, align 4
  br label %160

; <label>:159:                                    ; preds = %138
  store i32 -1, i32* %4, align 4
  br label %164

; <label>:160:                                    ; preds = %156, %142, %135
  br label %114

; <label>:161:                                    ; preds = %114
  %162 = load i32, i32* %10, align 4
  store i32 %162, i32* %4, align 4
  br label %164

; <label>:163:                                    ; preds = %153, %132, %96, %79
  store i32 2147483647, i32* %4, align 4
  br label %164

; <label>:164:                                    ; preds = %163, %161, %159, %111, %102, %69, %57
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #4

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %42*) #4

; Function Attrs: nounwind
declare i32 @wcwidth(i32) #4

; Function Attrs: nounwind
declare i32 @iswcntrl(i32) #4

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%42*) #5

; Function Attrs: noinline nounwind uwtable
define i64 @num_processors(i32) #1 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %68

; <label>:13:                                     ; preds = %1
  %14 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @192, i32 0, i32 0)) #11
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %67

; <label>:17:                                     ; preds = %13
  br label %18

; <label>:18:                                     ; preds = %31, %17
  %19 = load i8*, i8** %4, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %4, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = call zeroext i1 @c_isspace(i32 %26) #15
  br label %28

; <label>:28:                                     ; preds = %23, %18
  %29 = phi i1 [ false, %18 ], [ %27, %23 ]
  %30 = load i8*, i8** %4, align 8
  br i1 %29, label %31, label %33

; <label>:31:                                     ; preds = %28
  %32 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %32, i8** %4, align 8
  br label %18

; <label>:33:                                     ; preds = %28
  %34 = load i8, i8* %30, align 1
  %35 = sext i8 %34 to i32
  %36 = call zeroext i1 @c_isdigit(i32 %35) #15
  br i1 %36, label %37, label %67

; <label>:37:                                     ; preds = %33
  store i8* null, i8** %5, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = call i64 @strtoul(i8* %38, i8** %5, i32 10) #11
  store i64 %39, i64* %6, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %67

; <label>:42:                                     ; preds = %37
  br label %43

; <label>:43:                                     ; preds = %56, %42
  %44 = load i8*, i8** %5, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

; <label>:48:                                     ; preds = %43
  %49 = load i8*, i8** %5, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = call zeroext i1 @c_isspace(i32 %51) #15
  br label %53

; <label>:53:                                     ; preds = %48, %43
  %54 = phi i1 [ false, %43 ], [ %52, %48 ]
  %55 = load i8*, i8** %5, align 8
  br i1 %54, label %56, label %58

; <label>:56:                                     ; preds = %53
  %57 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %57, i8** %5, align 8
  br label %43

; <label>:58:                                     ; preds = %53
  %59 = load i8, i8* %55, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %67

; <label>:62:                                     ; preds = %58
  %63 = load i64, i64* %6, align 8
  %64 = icmp ugt i64 %63, 0
  %65 = load i64, i64* %6, align 8
  %66 = select i1 %64, i64 %65, i64 1
  store i64 %66, i64* %2, align 8
  br label %99

; <label>:67:                                     ; preds = %33, %58, %37, %13
  store i32 1, i32* %3, align 4
  br label %68

; <label>:68:                                     ; preds = %67, %1
  %69 = load i32, i32* %3, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %83

; <label>:71:                                     ; preds = %68
  %72 = call i64 @375()
  store i64 %72, i64* %7, align 8
  %73 = load i64, i64* %7, align 8
  %74 = icmp ugt i64 %73, 0
  br i1 %74, label %75, label %77

; <label>:75:                                     ; preds = %71
  %76 = load i64, i64* %7, align 8
  store i64 %76, i64* %2, align 8
  br label %99

; <label>:77:                                     ; preds = %71
  %78 = call i64 @sysconf(i32 84) #11
  store i64 %78, i64* %8, align 8
  %79 = load i64, i64* %8, align 8
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %98

; <label>:81:                                     ; preds = %77
  %82 = load i64, i64* %8, align 8
  store i64 %82, i64* %2, align 8
  br label %99

; <label>:83:                                     ; preds = %68
  %84 = call i64 @sysconf(i32 83) #11
  store i64 %84, i64* %9, align 8
  %85 = load i64, i64* %9, align 8
  %86 = icmp eq i64 %85, 1
  br i1 %86, label %87, label %93

; <label>:87:                                     ; preds = %83
  %88 = call i64 @375()
  store i64 %88, i64* %10, align 8
  %89 = load i64, i64* %10, align 8
  %90 = icmp ugt i64 %89, 0
  br i1 %90, label %91, label %93

; <label>:91:                                     ; preds = %87
  %92 = load i64, i64* %10, align 8
  store i64 %92, i64* %9, align 8
  br label %93

; <label>:93:                                     ; preds = %87, %91, %83
  %94 = load i64, i64* %9, align 8
  %95 = icmp sgt i64 %94, 0
  br i1 %95, label %96, label %98

; <label>:96:                                     ; preds = %93
  %97 = load i64, i64* %9, align 8
  store i64 %97, i64* %2, align 8
  br label %99

; <label>:98:                                     ; preds = %93, %77
  store i64 1, i64* %2, align 8
  br label %99

; <label>:99:                                     ; preds = %98, %96, %81, %75, %62
  %100 = load i64, i64* %2, align 8
  ret i64 %100
}

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #4

; Function Attrs: noinline nounwind uwtable
define internal i64 @375() #1 {
  %1 = alloca i64, align 8
  %2 = alloca %2, align 8
  %3 = alloca i64, align 8
  %4 = call i32 @sched_getaffinity(i32 0, i64 128, %2* %2) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

; <label>:6:                                      ; preds = %0
  %7 = call i32 @__sched_cpucount(i64 128, %2* %2) #11
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = icmp ugt i64 %9, 0
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %6
  %12 = load i64, i64* %3, align 8
  store i64 %12, i64* %1, align 8
  br label %14

; <label>:13:                                     ; preds = %6, %0
  store i64 0, i64* %1, align 8
  br label %14

; <label>:14:                                     ; preds = %13, %11
  %15 = load i64, i64* %1, align 8
  ret i64 %15
}

; Function Attrs: nounwind
declare i64 @sysconf(i32) #4

; Function Attrs: nounwind
declare i32 @sched_getaffinity(i32, i64, %2*) #4

; Function Attrs: nounwind
declare i32 @__sched_cpucount(i64, %2*) #4

; Function Attrs: noinline nounwind uwtable
define double @physmem_total() #1 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = call i64 @sysconf(i32 85) #11
  %5 = sitofp i64 %4 to double
  store double %5, double* %2, align 8
  %6 = call i64 @sysconf(i32 30) #11
  %7 = sitofp i64 %6 to double
  store double %7, double* %3, align 8
  %8 = load double, double* %2, align 8
  %9 = fcmp ole double 0.000000e+00, %8
  %10 = load double, double* %3, align 8
  %11 = fcmp ole double 0.000000e+00, %10
  %or.cond = and i1 %9, %11
  br i1 %or.cond, label %12, label %16

; <label>:12:                                     ; preds = %0
  %13 = load double, double* %2, align 8
  %14 = load double, double* %3, align 8
  %15 = fmul double %13, %14
  store double %15, double* %1, align 8
  br label %17

; <label>:16:                                     ; preds = %0
  store double 0x4190000000000000, double* %1, align 8
  br label %17

; <label>:17:                                     ; preds = %16, %12
  %18 = load double, double* %1, align 8
  ret double %18
}

; Function Attrs: noinline nounwind uwtable
define double @physmem_available() #1 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = call i64 @sysconf(i32 86) #11
  %5 = sitofp i64 %4 to double
  store double %5, double* %2, align 8
  %6 = call i64 @sysconf(i32 30) #11
  %7 = sitofp i64 %6 to double
  store double %7, double* %3, align 8
  %8 = load double, double* %2, align 8
  %9 = fcmp ole double 0.000000e+00, %8
  %10 = load double, double* %3, align 8
  %11 = fcmp ole double 0.000000e+00, %10
  %or.cond = and i1 %9, %11
  br i1 %or.cond, label %12, label %16

; <label>:12:                                     ; preds = %0
  %13 = load double, double* %2, align 8
  %14 = load double, double* %3, align 8
  %15 = fmul double %13, %14
  store double %15, double* %1, align 8
  br label %19

; <label>:16:                                     ; preds = %0
  %17 = call double @physmem_total()
  %18 = fdiv double %17, 4.000000e+00
  store double %18, double* %1, align 8
  br label %19

; <label>:19:                                     ; preds = %16, %12
  %20 = load double, double* %1, align 8
  ret double %20
}

; Function Attrs: noinline nounwind uwtable
define i32 @posix2_version() #1 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i64 200809, i64* %1, align 8
  %5 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @193, i32 0, i32 0)) #11
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
declare i64 @strtol(i8*, i8**, i32) #4

; Function Attrs: noinline nounwind uwtable
define void @set_program_name(i8*) #1 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %10

; <label>:7:                                      ; preds = %1
  %8 = load %0*, %0** @stderr, align 8
  %9 = call i32 @fputs(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @194, i32 0, i32 0), %0* %8)
  call void @abort() #12
  unreachable

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i8* @strrchr(i8* %11, i32 47) #13
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
  %28 = call i32 @strncmp(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @195, i32 0, i32 0), i64 7) #13
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %39

; <label>:30:                                     ; preds = %25
  %31 = load i8*, i8** %4, align 8
  store i8* %31, i8** %2, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @strncmp(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @196, i32 0, i32 0), i64 3) #13
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

declare i32 @fputs(i8*, %0*) #2

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #5

; Function Attrs: noinline nounwind uwtable
define i32 @set_char_quoting(%12*, i8 signext, i32) #1 {
  %4 = alloca %12*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %12* %0, %12** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %11 = load i8, i8* %5, align 1
  store i8 %11, i8* %7, align 1
  %12 = load %12*, %12** %4, align 8
  %13 = icmp ne %12* %12, null
  %14 = load %12*, %12** %4, align 8
  %15 = select i1 %13, %12* %14, %12* @205
  %16 = getelementptr inbounds %12, %12* %15, i32 0, i32 2
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
define void @set_custom_quoting(%12*, i8*, i8*) #1 {
  %4 = alloca %12*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %12* %0, %12** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %12*, %12** %4, align 8
  %8 = icmp ne %12* %7, null
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %3
  store %12* @205, %12** %4, align 8
  br label %10

; <label>:10:                                     ; preds = %9, %3
  %11 = load %12*, %12** %4, align 8
  %12 = getelementptr inbounds %12, %12* %11, i32 0, i32 0
  store i32 8, i32* %12, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  %or.cond = and i1 %14, %16
  br i1 %or.cond, label %18, label %17

; <label>:17:                                     ; preds = %10
  call void @abort() #12
  unreachable

; <label>:18:                                     ; preds = %10
  %19 = load i8*, i8** %5, align 8
  %20 = load %12*, %12** %4, align 8
  %21 = getelementptr inbounds %12, %12* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load %12*, %12** %4, align 8
  %24 = getelementptr inbounds %12, %12* %23, i32 0, i32 4
  store i8* %22, i8** %24, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @376(i8*, i64, i8*, i64, i32, i32, i32*, i8*, i8*) #1 {
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
  %32 = alloca %42, align 4
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
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @206, i32 0, i32 0), i8** %22, align 8
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
  %67 = call i8* @377(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @207, i32 0, i32 0), i32 %66)
  store i8* %67, i8** %18, align 8
  %68 = load i32, i32* %15, align 4
  %69 = call i8* @377(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @208, i32 0, i32 0), i32 %68)
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
  %97 = call i64 @strlen(i8* %96) #13
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
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @208, i32 0, i32 0), i8** %22, align 8
  store i64 1, i64* %23, align 8
  br label %116

; <label>:114:                                    ; preds = %9
  store i8 0, i8* %26, align 1
  br label %116

; <label>:115:                                    ; preds = %9
  call void @abort() #12
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
  %154 = call i32 @memcmp(i8* %151, i8* %152, i64 %153) #13
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
  %411 = bitcast %42* %32 to i8*
  call void @llvm.memset.p0i8.i64(i8* %411, i8 0, i64 8, i32 4, i1 false)
  store i64 0, i64* %30, align 8
  store i8 1, i8* %31, align 1
  %412 = load i64, i64* %14, align 8
  %413 = icmp eq i64 %412, -1
  br i1 %413, label %414, label %417

; <label>:414:                                    ; preds = %410
  %415 = load i8*, i8** %13, align 8
  %416 = call i64 @strlen(i8* %415) #13
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
  %429 = call i64 @mbrtowc(i32* %33, i8* %423, i64 %428, %42* %32) #11
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
  %490 = call i32 @mbsinit(%42* %32) #13
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
  %706 = call i64 @376(i8* %697, i64 %698, i8* %699, i64 %700, i32 %701, i32 %703, i32* null, i8* %704, i8* %705)
  store i64 %706, i64* %10, align 8
  br label %707

; <label>:707:                                    ; preds = %696, %694
  %708 = load i64, i64* %10, align 8
  ret i64 %708
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @377(i8*, i32) #1 {
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
  %17 = call i32 @c_strcasecmp(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @209, i32 0, i32 0)) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %27

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 96
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @210, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @211, i32 0, i32 0)
  store i8* %26, i8** %3, align 8
  br label %44

; <label>:27:                                     ; preds = %14
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @c_strcasecmp(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @212, i32 0, i32 0)) #13
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39

; <label>:31:                                     ; preds = %27
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 96
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @213, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @214, i32 0, i32 0)
  store i8* %38, i8** %3, align 8
  br label %44

; <label>:39:                                     ; preds = %27
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 7
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @206, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @208, i32 0, i32 0)
  store i8* %43, i8** %3, align 8
  br label %44

; <label>:44:                                     ; preds = %39, %31, %19, %12
  %45 = load i8*, i8** %3, align 8
  ret i8* %45
}

; Function Attrs: nounwind
declare i32 @iswprint(i32) #4

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %12*) #1 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %12*, align 8
  %9 = alloca %12*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store %12* %3, %12** %8, align 8
  %14 = load %12*, %12** %8, align 8
  %15 = icmp ne %12* %14, null
  %16 = load %12*, %12** %8, align 8
  %17 = select i1 %15, %12* %16, %12* @205
  store %12* %17, %12** %9, align 8
  %18 = call i32* @__errno_location() #15
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %12*, %12** %9, align 8
  %21 = getelementptr inbounds %12, %12* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i64*, i64** %7, align 8
  %24 = icmp ne i64* %23, null
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 0, i32 1
  %27 = or i32 %22, %26
  store i32 %27, i32* %11, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load %12*, %12** %9, align 8
  %31 = getelementptr inbounds %12, %12* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load %12*, %12** %9, align 8
  %35 = getelementptr inbounds %12, %12* %34, i32 0, i32 2
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* %35, i32 0, i32 0
  %37 = load %12*, %12** %9, align 8
  %38 = getelementptr inbounds %12, %12* %37, i32 0, i32 3
  %39 = load i8*, i8** %38, align 8
  %40 = load %12*, %12** %9, align 8
  %41 = getelementptr inbounds %12, %12* %40, i32 0, i32 4
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @376(i8* null, i64 0, i8* %28, i64 %29, i32 %32, i32 %33, i32* %36, i8* %39, i8* %42)
  %44 = add i64 %43, 1
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %12, align 8
  %46 = call noalias i8* @xcharalloc(i64 %45)
  store i8* %46, i8** %13, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = load i64, i64* %12, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load %12*, %12** %9, align 8
  %52 = getelementptr inbounds %12, %12* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load %12*, %12** %9, align 8
  %56 = getelementptr inbounds %12, %12* %55, i32 0, i32 2
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* %56, i32 0, i32 0
  %58 = load %12*, %12** %9, align 8
  %59 = getelementptr inbounds %12, %12* %58, i32 0, i32 3
  %60 = load i8*, i8** %59, align 8
  %61 = load %12*, %12** %9, align 8
  %62 = getelementptr inbounds %12, %12* %61, i32 0, i32 4
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @376(i8* %47, i64 %48, i8* %49, i64 %50, i32 %53, i32 %54, i32* %57, i8* %60, i8* %63)
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
define i8* @quotearg_n(i32, i8*) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i8*, i8** %4, align 8
  %7 = call i8* @378(i32 %5, i8* %6, i64 -1, %12* @205)
  ret i8* %7
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @378(i32, i8*, i64, %12*) #1 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %12*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %13*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %12* %3, %12** %8, align 8
  %18 = call i32* @__errno_location() #15
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %13*, %13** @215, align 8
  store %13* %21, %13** %11, align 8
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %4
  call void @abort() #12
  unreachable

; <label>:25:                                     ; preds = %4
  %26 = load i32, i32* @216, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ule i32 %26, %27
  br i1 %28, label %29, label %67

; <label>:29:                                     ; preds = %25
  %30 = load i32, i32* %10, align 4
  %31 = add i32 %30, 1
  %32 = zext i32 %31 to i64
  store i64 %32, i64* %12, align 8
  %33 = load %13*, %13** %11, align 8
  %34 = icmp eq %13* %33, @218
  %35 = zext i1 %34 to i8
  store i8 %35, i8* %13, align 1
  %36 = load i64, i64* %12, align 8
  %37 = icmp ult i64 1152921504606846975, %36
  br i1 %37, label %38, label %39

; <label>:38:                                     ; preds = %29
  call void @xalloc_die() #14
  unreachable

; <label>:39:                                     ; preds = %29
  %40 = load i8, i8* %13, align 1
  %41 = trunc i8 %40 to i1
  %42 = load %13*, %13** %11, align 8
  %43 = select i1 %41, %13* null, %13* %42
  %44 = bitcast %13* %43 to i8*
  %45 = load i64, i64* %12, align 8
  %46 = mul i64 %45, 16
  %47 = call i8* @xrealloc(i8* %44, i64 %46)
  %48 = bitcast i8* %47 to %13*
  store %13* %48, %13** %11, align 8
  store %13* %48, %13** @215, align 8
  %49 = load i8, i8* %13, align 1
  %50 = trunc i8 %49 to i1
  br i1 %50, label %51, label %54

; <label>:51:                                     ; preds = %39
  %52 = load %13*, %13** %11, align 8
  %53 = bitcast %13* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* bitcast (%13* @218 to i8*), i64 16, i32 8, i1 false)
  br label %54

; <label>:54:                                     ; preds = %51, %39
  %55 = load %13*, %13** %11, align 8
  %56 = load i32, i32* @216, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %13, %13* %55, i64 %57
  %59 = bitcast %13* %58 to i8*
  %60 = load i64, i64* %12, align 8
  %61 = load i32, i32* @216, align 4
  %62 = zext i32 %61 to i64
  %63 = sub i64 %60, %62
  %64 = mul i64 %63, 16
  call void @llvm.memset.p0i8.i64(i8* %59, i8 0, i64 %64, i32 8, i1 false)
  %65 = load i64, i64* %12, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* @216, align 4
  br label %67

; <label>:67:                                     ; preds = %54, %25
  %68 = load %13*, %13** %11, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %13, %13* %68, i64 %70
  %72 = getelementptr inbounds %13, %13* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %14, align 8
  %74 = load %13*, %13** %11, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %13, %13* %74, i64 %76
  %78 = getelementptr inbounds %13, %13* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %15, align 8
  %80 = load %12*, %12** %8, align 8
  %81 = getelementptr inbounds %12, %12* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, 1
  store i32 %83, i32* %16, align 4
  %84 = load i8*, i8** %15, align 8
  %85 = load i64, i64* %14, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = load i64, i64* %7, align 8
  %88 = load %12*, %12** %8, align 8
  %89 = getelementptr inbounds %12, %12* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %16, align 4
  %92 = load %12*, %12** %8, align 8
  %93 = getelementptr inbounds %12, %12* %92, i32 0, i32 2
  %94 = getelementptr inbounds [8 x i32], [8 x i32]* %93, i32 0, i32 0
  %95 = load %12*, %12** %8, align 8
  %96 = getelementptr inbounds %12, %12* %95, i32 0, i32 3
  %97 = load i8*, i8** %96, align 8
  %98 = load %12*, %12** %8, align 8
  %99 = getelementptr inbounds %12, %12* %98, i32 0, i32 4
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 @376(i8* %84, i64 %85, i8* %86, i64 %87, i32 %90, i32 %91, i32* %94, i8* %97, i8* %100)
  store i64 %101, i64* %17, align 8
  %102 = load i64, i64* %14, align 8
  %103 = load i64, i64* %17, align 8
  %104 = icmp ule i64 %102, %103
  br i1 %104, label %105, label %143

; <label>:105:                                    ; preds = %67
  %106 = load i64, i64* %17, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %14, align 8
  %108 = load %13*, %13** %11, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %13, %13* %108, i64 %110
  %112 = getelementptr inbounds %13, %13* %111, i32 0, i32 0
  store i64 %107, i64* %112, align 8
  %113 = load i8*, i8** %15, align 8
  %114 = icmp ne i8* %113, getelementptr inbounds ([256 x i8], [256 x i8]* @217, i32 0, i32 0)
  br i1 %114, label %115, label %117

; <label>:115:                                    ; preds = %105
  %116 = load i8*, i8** %15, align 8
  call void @free(i8* %116) #11
  br label %117

; <label>:117:                                    ; preds = %115, %105
  %118 = load i64, i64* %14, align 8
  %119 = call noalias i8* @xcharalloc(i64 %118)
  store i8* %119, i8** %15, align 8
  %120 = load %13*, %13** %11, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %13, %13* %120, i64 %122
  %124 = getelementptr inbounds %13, %13* %123, i32 0, i32 1
  store i8* %119, i8** %124, align 8
  %125 = load i8*, i8** %15, align 8
  %126 = load i64, i64* %14, align 8
  %127 = load i8*, i8** %6, align 8
  %128 = load i64, i64* %7, align 8
  %129 = load %12*, %12** %8, align 8
  %130 = getelementptr inbounds %12, %12* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %16, align 4
  %133 = load %12*, %12** %8, align 8
  %134 = getelementptr inbounds %12, %12* %133, i32 0, i32 2
  %135 = getelementptr inbounds [8 x i32], [8 x i32]* %134, i32 0, i32 0
  %136 = load %12*, %12** %8, align 8
  %137 = getelementptr inbounds %12, %12* %136, i32 0, i32 3
  %138 = load i8*, i8** %137, align 8
  %139 = load %12*, %12** %8, align 8
  %140 = getelementptr inbounds %12, %12* %139, i32 0, i32 4
  %141 = load i8*, i8** %140, align 8
  %142 = call i64 @376(i8* %125, i64 %126, i8* %127, i64 %128, i32 %131, i32 %132, i32* %135, i8* %138, i8* %141)
  br label %143

; <label>:143:                                    ; preds = %117, %67
  %144 = load i32, i32* %9, align 4
  %145 = call i32* @__errno_location() #15
  store i32 %144, i32* %145, align 4
  %146 = load i8*, i8** %15, align 8
  ret i8* %146
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) #1 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i8* @378(i32 %7, i8* %8, i64 %9, %12* @205)
  ret i8* %10
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_n_style(i32, i32, i8*) #1 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %12, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* %5, align 4
  call void @379(%12* sret %7, i32 %8)
  %9 = load i32, i32* %4, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = call i8* @378(i32 %9, i8* %10, i64 -1, %12* %7)
  ret i8* %11
}

; Function Attrs: noinline nounwind uwtable
define internal void @379(%12* noalias sret, i32) #1 {
  %3 = alloca i32, align 4
  %4 = alloca %12, align 8
  store i32 %1, i32* %3, align 4
  %5 = bitcast %12* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 56, i32 8, i1 false)
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, 8
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %2
  call void @abort() #12
  unreachable

; <label>:9:                                      ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = getelementptr inbounds %12, %12* %4, i32 0, i32 0
  store i32 %10, i32* %11, align 8
  %12 = bitcast %12* %0 to i8*
  %13 = bitcast %12* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 56, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) #1 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %12, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i32, i32* %6, align 4
  call void @379(%12* sret %9, i32 %10)
  %11 = load i32, i32* %5, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = load i64, i64* %8, align 8
  %14 = call i8* @378(i32 %11, i8* %12, i64 %13, %12* %9)
  ret i8* %14
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) #1 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %12, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8 %2, i8* %6, align 1
  %8 = bitcast %12* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast (%12* @205 to i8*), i64 56, i32 8, i1 false)
  %9 = load i8, i8* %6, align 1
  %10 = call i32 @set_char_quoting(%12* %7, i8 signext %9, i32 1)
  %11 = load i8*, i8** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i8* @378(i32 0, i8* %11, i64 %12, %12* %7)
  ret i8* %13
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_char(i8*, i8 signext) #1 {
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
define i8* @quotearg_colon(i8*) #1 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i8* @quotearg_char(i8* %3, i8 signext 58)
  ret i8* %4
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) #1 {
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
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) #1 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %12, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = bitcast %12* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* bitcast (%12* @205 to i8*), i64 56, i32 8, i1 false)
  %13 = load i8*, i8** %7, align 8
  %14 = load i8*, i8** %8, align 8
  call void @set_custom_quoting(%12* %11, i8* %13, i8* %14)
  %15 = load i32, i32* %6, align 4
  %16 = load i8*, i8** %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = call i8* @378(i32 %15, i8* %16, i64 %17, %12* %11)
  ret i8* %18
}

; Function Attrs: noinline nounwind uwtable
define i8* @quote_n(i32, i8*) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i8*, i8** %4, align 8
  %7 = call i8* @378(i32 %5, i8* %6, i64 -1, %12* @quote_quoting_options)
  ret i8* %7
}

; Function Attrs: noinline nounwind uwtable
define i8* @quote(i8*) #1 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i8* @quote_n(i32 0, i8* %3)
  ret i8* %4
}

; Function Attrs: noinline nounwind uwtable
define %23* @randread_new(i8*, i64) #1 {
  %3 = alloca %23*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %0*, align 8
  %7 = alloca %23*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %2
  %11 = call %23* @380(%0* null, i8* null)
  store %23* %11, %23** %3, align 8
  br label %56

; <label>:12:                                     ; preds = %2
  store %0* null, %0** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %20

; <label>:15:                                     ; preds = %12
  %16 = load i8*, i8** %4, align 8
  %17 = call %0* @fopen_safer(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @219, i32 0, i32 0))
  store %0* %17, %0** %6, align 8
  %18 = icmp ne %0* %17, null
  br i1 %18, label %20, label %19

; <label>:19:                                     ; preds = %15
  store %23* null, %23** %3, align 8
  br label %56

; <label>:20:                                     ; preds = %15, %12
  %21 = load %0*, %0** %6, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call %23* @380(%0* %21, i8* %22)
  store %23* %23, %23** %7, align 8
  %24 = load %0*, %0** %6, align 8
  %25 = icmp ne %0* %24, null
  br i1 %25, label %26, label %37

; <label>:26:                                     ; preds = %20
  %27 = load %0*, %0** %6, align 8
  %28 = load %23*, %23** %7, align 8
  %29 = getelementptr inbounds %23, %23* %28, i32 0, i32 3
  %30 = bitcast %24* %29 to [4096 x i8]*
  %31 = getelementptr inbounds [4096 x i8], [4096 x i8]* %30, i32 0, i32 0
  %32 = load i64, i64* %5, align 8
  %33 = icmp ult i64 4096, %32
  %34 = load i64, i64* %5, align 8
  %35 = select i1 %33, i64 4096, i64 %34
  %36 = call i32 @setvbuf(%0* %27, i8* %31, i32 0, i64 %35) #11
  br label %54

; <label>:37:                                     ; preds = %20
  %38 = load %23*, %23** %7, align 8
  %39 = getelementptr inbounds %23, %23* %38, i32 0, i32 3
  %40 = bitcast %24* %39 to %25*
  %41 = getelementptr inbounds %25, %25* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %23*, %23** %7, align 8
  %43 = getelementptr inbounds %23, %23* %42, i32 0, i32 3
  %44 = bitcast %24* %43 to %25*
  %45 = getelementptr inbounds %25, %25* %44, i32 0, i32 1
  %46 = getelementptr inbounds %26, %26* %45, i32 0, i32 0
  %47 = getelementptr inbounds [256 x i64], [256 x i64]* %46, i32 0, i32 0
  %48 = bitcast i64* %47 to i8*
  %49 = load i64, i64* %5, align 8
  call void @381(i8* %48, i64 2048, i64 %49)
  %50 = load %23*, %23** %7, align 8
  %51 = getelementptr inbounds %23, %23* %50, i32 0, i32 3
  %52 = bitcast %24* %51 to %25*
  %53 = getelementptr inbounds %25, %25* %52, i32 0, i32 1
  call void @isaac_seed(%26* %53)
  br label %54

; <label>:54:                                     ; preds = %37, %26
  %55 = load %23*, %23** %7, align 8
  store %23* %55, %23** %3, align 8
  br label %56

; <label>:56:                                     ; preds = %54, %19, %10
  %57 = load %23*, %23** %3, align 8
  ret %23* %57
}

; Function Attrs: noinline nounwind uwtable
define internal %23* @380(%0*, i8*) #1 {
  %3 = alloca %0*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %23*, align 8
  store %0* %0, %0** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call noalias i8* @xmalloc(i64 4152)
  %7 = bitcast i8* %6 to %23*
  store %23* %7, %23** %5, align 8
  %8 = load %0*, %0** %3, align 8
  %9 = load %23*, %23** %5, align 8
  %10 = getelementptr inbounds %23, %23* %9, i32 0, i32 0
  store %0* %8, %0** %10, align 8
  %11 = load %23*, %23** %5, align 8
  %12 = getelementptr inbounds %23, %23* %11, i32 0, i32 1
  store void (i8*)* @382, void (i8*)** %12, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load %23*, %23** %5, align 8
  %15 = getelementptr inbounds %23, %23* %14, i32 0, i32 2
  store i8* %13, i8** %15, align 8
  %16 = load %23*, %23** %5, align 8
  ret %23* %16
}

; Function Attrs: nounwind
declare i32 @setvbuf(%0*, i8*, i32, i64) #4

; Function Attrs: noinline nounwind uwtable
define internal void @381(i8*, i64, i64) #1 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %38, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %20 = load i8*, i8** %4, align 8
  store i8* %20, i8** %7, align 8
  store i64 0, i64* %8, align 8
  %21 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @220, i32 0, i32 0), i32 0)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp sle i32 0, %22
  br i1 %23, label %24, label %38

; <label>:24:                                     ; preds = %3
  %25 = load i32, i32* %9, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp ult i64 %27, %28
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = select i1 %29, i64 %30, i64 %31
  %33 = call i64 @read(i32 %25, i8* %26, i64 %32)
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp slt i64 %34, 0
  %spec.store.select = select i1 %35, i64 0, i64 %33
  store i64 %spec.store.select, i64* %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @close(i32 %36)
  br label %38

; <label>:38:                                     ; preds = %24, %3
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %62

; <label>:42:                                     ; preds = %38
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %8, align 8
  %45 = sub i64 %43, %44
  %46 = icmp ult i64 16, %45
  br i1 %46, label %51, label %47

; <label>:47:                                     ; preds = %42
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* %8, align 8
  %50 = sub i64 %48, %49
  br label %51

; <label>:51:                                     ; preds = %42, %47
  %52 = phi i64 [ %50, %47 ], [ 16, %42 ]
  store i64 %52, i64* %11, align 8
  %53 = call i32 @gettimeofday(%38* %10, %43* null) #11
  %54 = load i8*, i8** %7, align 8
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = bitcast %38* %10 to i8*
  %58 = load i64, i64* %11, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %57, i64 %58, i32 1, i1 false)
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* %8, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %8, align 8
  br label %62

; <label>:62:                                     ; preds = %51, %38
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %5, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %86

; <label>:66:                                     ; preds = %62
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* %8, align 8
  %69 = sub i64 %67, %68
  %70 = icmp ult i64 4, %69
  br i1 %70, label %75, label %71

; <label>:71:                                     ; preds = %66
  %72 = load i64, i64* %5, align 8
  %73 = load i64, i64* %8, align 8
  %74 = sub i64 %72, %73
  br label %75

; <label>:75:                                     ; preds = %66, %71
  %76 = phi i64 [ %74, %71 ], [ 4, %66 ]
  store i64 %76, i64* %13, align 8
  %77 = call i32 @getpid() #11
  store i32 %77, i32* %12, align 4
  %78 = load i8*, i8** %7, align 8
  %79 = load i64, i64* %8, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  %81 = bitcast i32* %12 to i8*
  %82 = load i64, i64* %13, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %80, i8* %81, i64 %82, i32 1, i1 false)
  %83 = load i64, i64* %13, align 8
  %84 = load i64, i64* %8, align 8
  %85 = add i64 %84, %83
  store i64 %85, i64* %8, align 8
  br label %86

; <label>:86:                                     ; preds = %75, %62
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* %5, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %90, label %110

; <label>:90:                                     ; preds = %86
  %91 = load i64, i64* %5, align 8
  %92 = load i64, i64* %8, align 8
  %93 = sub i64 %91, %92
  %94 = icmp ult i64 4, %93
  br i1 %94, label %99, label %95

; <label>:95:                                     ; preds = %90
  %96 = load i64, i64* %5, align 8
  %97 = load i64, i64* %8, align 8
  %98 = sub i64 %96, %97
  br label %99

; <label>:99:                                     ; preds = %90, %95
  %100 = phi i64 [ %98, %95 ], [ 4, %90 ]
  store i64 %100, i64* %15, align 8
  %101 = call i32 @getppid() #11
  store i32 %101, i32* %14, align 4
  %102 = load i8*, i8** %7, align 8
  %103 = load i64, i64* %8, align 8
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  %105 = bitcast i32* %14 to i8*
  %106 = load i64, i64* %15, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %104, i8* %105, i64 %106, i32 1, i1 false)
  %107 = load i64, i64* %15, align 8
  %108 = load i64, i64* %8, align 8
  %109 = add i64 %108, %107
  store i64 %109, i64* %8, align 8
  br label %110

; <label>:110:                                    ; preds = %99, %86
  %111 = load i64, i64* %8, align 8
  %112 = load i64, i64* %5, align 8
  %113 = icmp ult i64 %111, %112
  br i1 %113, label %114, label %134

; <label>:114:                                    ; preds = %110
  %115 = load i64, i64* %5, align 8
  %116 = load i64, i64* %8, align 8
  %117 = sub i64 %115, %116
  %118 = icmp ult i64 4, %117
  br i1 %118, label %123, label %119

; <label>:119:                                    ; preds = %114
  %120 = load i64, i64* %5, align 8
  %121 = load i64, i64* %8, align 8
  %122 = sub i64 %120, %121
  br label %123

; <label>:123:                                    ; preds = %114, %119
  %124 = phi i64 [ %122, %119 ], [ 4, %114 ]
  store i64 %124, i64* %17, align 8
  %125 = call i32 @getuid() #11
  store i32 %125, i32* %16, align 4
  %126 = load i8*, i8** %7, align 8
  %127 = load i64, i64* %8, align 8
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  %129 = bitcast i32* %16 to i8*
  %130 = load i64, i64* %17, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %128, i8* %129, i64 %130, i32 1, i1 false)
  %131 = load i64, i64* %17, align 8
  %132 = load i64, i64* %8, align 8
  %133 = add i64 %132, %131
  store i64 %133, i64* %8, align 8
  br label %134

; <label>:134:                                    ; preds = %123, %110
  %135 = load i64, i64* %8, align 8
  %136 = load i64, i64* %5, align 8
  %137 = icmp ult i64 %135, %136
  br i1 %137, label %138, label %158

; <label>:138:                                    ; preds = %134
  %139 = load i64, i64* %5, align 8
  %140 = load i64, i64* %8, align 8
  %141 = sub i64 %139, %140
  %142 = icmp ult i64 4, %141
  br i1 %142, label %147, label %143

; <label>:143:                                    ; preds = %138
  %144 = load i64, i64* %5, align 8
  %145 = load i64, i64* %8, align 8
  %146 = sub i64 %144, %145
  br label %147

; <label>:147:                                    ; preds = %138, %143
  %148 = phi i64 [ %146, %143 ], [ 4, %138 ]
  store i64 %148, i64* %19, align 8
  %149 = call i32 @getgid() #11
  store i32 %149, i32* %18, align 4
  %150 = load i8*, i8** %7, align 8
  %151 = load i64, i64* %8, align 8
  %152 = getelementptr inbounds i8, i8* %150, i64 %151
  %153 = bitcast i32* %18 to i8*
  %154 = load i64, i64* %19, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %152, i8* %153, i64 %154, i32 1, i1 false)
  %155 = load i64, i64* %19, align 8
  %156 = load i64, i64* %8, align 8
  %157 = add i64 %156, %155
  store i64 %157, i64* %8, align 8
  br label %158

; <label>:158:                                    ; preds = %147, %134
  ret void
}

declare i64 @read(i32, i8*, i64) #2

; Function Attrs: nounwind
declare i32 @gettimeofday(%38*, %43*) #4

; Function Attrs: nounwind
declare i32 @getpid() #4

; Function Attrs: nounwind
declare i32 @getppid() #4

; Function Attrs: nounwind
declare i32 @getuid() #4

; Function Attrs: nounwind
declare i32 @getgid() #4

; Function Attrs: noinline noreturn nounwind uwtable
define internal void @382(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %5, label %16

; <label>:5:                                      ; preds = %1
  %6 = load volatile i32, i32* @exit_failure, align 4
  %7 = call i32* @__errno_location() #15
  %8 = load i32, i32* %7, align 4
  %9 = call i32* @__errno_location() #15
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @221, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @222, i32 0, i32 0)
  %14 = load i8*, i8** %2, align 8
  %15 = call i8* @quotearg_colon(i8* %14)
  call void (i32, i32, i8*, ...) @error(i32 %6, i32 %8, i8* %13, i8* %15)
  br label %16

; <label>:16:                                     ; preds = %5, %1
  call void @abort() #12
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define void @randread(%23*, i8*, i64) #1 {
  %4 = alloca %23*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %23* %0, %23** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %23*, %23** %4, align 8
  %8 = getelementptr inbounds %23, %23* %7, i32 0, i32 0
  %9 = load %0*, %0** %8, align 8
  %10 = icmp ne %0* %9, null
  %11 = load %23*, %23** %4, align 8
  br i1 %10, label %12, label %15

; <label>:12:                                     ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = load i64, i64* %6, align 8
  call void @383(%23* %11, i8* %13, i64 %14)
  br label %20

; <label>:15:                                     ; preds = %3
  %16 = getelementptr inbounds %23, %23* %11, i32 0, i32 3
  %17 = bitcast %24* %16 to %25*
  %18 = load i8*, i8** %5, align 8
  %19 = load i64, i64* %6, align 8
  call void @384(%25* %17, i8* %18, i64 %19)
  br label %20

; <label>:20:                                     ; preds = %15, %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @383(%23*, i8*, i64) #1 {
  %4 = alloca %23*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %23* %0, %23** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  br label %9

; <label>:9:                                      ; preds = %3, %26
  %10 = load i8*, i8** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load %23*, %23** %4, align 8
  %13 = getelementptr inbounds %23, %23* %12, i32 0, i32 0
  %14 = load %0*, %0** %13, align 8
  %15 = call i64 @fread_unlocked(i8* %10, i64 1, i64 %11, %0* %14)
  store i64 %15, i64* %7, align 8
  %16 = call i32* @__errno_location() #15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i64, i64* %7, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 %18
  store i8* %20, i8** %5, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %6, align 8
  %23 = sub i64 %22, %21
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %41, label %26

; <label>:26:                                     ; preds = %9
  %27 = load %23*, %23** %4, align 8
  %28 = getelementptr inbounds %23, %23* %27, i32 0, i32 0
  %29 = load %0*, %0** %28, align 8
  %30 = call i32 @ferror_unlocked(%0* %29) #11
  %31 = icmp ne i32 %30, 0
  %32 = load i32, i32* %8, align 4
  %33 = select i1 %31, i32 %32, i32 0
  %34 = call i32* @__errno_location() #15
  store i32 %33, i32* %34, align 4
  %35 = load %23*, %23** %4, align 8
  %36 = getelementptr inbounds %23, %23* %35, i32 0, i32 1
  %37 = load void (i8*)*, void (i8*)** %36, align 8
  %38 = load %23*, %23** %4, align 8
  %39 = getelementptr inbounds %23, %23* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  call void %37(i8* %40)
  br label %9

; <label>:41:                                     ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @384(%25*, i8*, i64) #1 {
  %4 = alloca %25*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  store %25* %0, %25** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %25*, %25** %4, align 8
  %10 = getelementptr inbounds %25, %25* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  br label %12

; <label>:12:                                     ; preds = %3, %67
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ule i64 %13, %14
  %16 = load i8*, i8** %5, align 8
  %17 = load %25*, %25** %4, align 8
  %18 = getelementptr inbounds %25, %25* %17, i32 0, i32 2
  %19 = bitcast %27* %18 to [2048 x i8]*
  %20 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i32 0, i32 0
  %21 = getelementptr inbounds i8, i8* %20, i64 2048
  %22 = load i64, i64* %7, align 8
  %23 = sub i64 0, %22
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  br i1 %15, label %25, label %32

; <label>:25:                                     ; preds = %12
  %26 = load i64, i64* %6, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %24, i64 %26, i32 1, i1 false)
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %6, align 8
  %29 = sub i64 %27, %28
  %30 = load %25*, %25** %4, align 8
  %31 = getelementptr inbounds %25, %25* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %74

; <label>:32:                                     ; preds = %12
  %33 = load i64, i64* %7, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %24, i64 %33, i32 1, i1 false)
  %34 = load i64, i64* %7, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 %34
  store i8* %36, i8** %5, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %6, align 8
  %39 = sub i64 %38, %37
  store i64 %39, i64* %6, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = ptrtoint i8* %40 to i64
  %42 = urem i64 %41, 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %67

; <label>:44:                                     ; preds = %32
  %45 = load i8*, i8** %5, align 8
  %46 = bitcast i8* %45 to i64*
  store i64* %46, i64** %8, align 8
  br label %47

; <label>:47:                                     ; preds = %63, %44
  %48 = load i64, i64* %6, align 8
  %49 = icmp ule i64 2048, %48
  br i1 %49, label %50, label %64

; <label>:50:                                     ; preds = %47
  %51 = load %25*, %25** %4, align 8
  %52 = getelementptr inbounds %25, %25* %51, i32 0, i32 1
  %53 = load i64*, i64** %8, align 8
  call void @isaac_refill(%26* %52, i64* %53)
  %54 = load i64*, i64** %8, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 256
  store i64* %55, i64** %8, align 8
  %56 = load i64, i64* %6, align 8
  %57 = sub i64 %56, 2048
  store i64 %57, i64* %6, align 8
  %58 = load i64, i64* %6, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %63

; <label>:60:                                     ; preds = %50
  %61 = load %25*, %25** %4, align 8
  %62 = getelementptr inbounds %25, %25* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  br label %74

; <label>:63:                                     ; preds = %50
  br label %47

; <label>:64:                                     ; preds = %47
  %65 = load i64*, i64** %8, align 8
  %66 = bitcast i64* %65 to i8*
  store i8* %66, i8** %5, align 8
  br label %67

; <label>:67:                                     ; preds = %64, %32
  %68 = load %25*, %25** %4, align 8
  %69 = getelementptr inbounds %25, %25* %68, i32 0, i32 1
  %70 = load %25*, %25** %4, align 8
  %71 = getelementptr inbounds %25, %25* %70, i32 0, i32 2
  %72 = bitcast %27* %71 to [256 x i64]*
  %73 = getelementptr inbounds [256 x i64], [256 x i64]* %72, i32 0, i32 0
  call void @isaac_refill(%26* %69, i64* %73)
  store i64 2048, i64* %7, align 8
  br label %12

; <label>:74:                                     ; preds = %60, %25
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @randread_free(%23*) #1 {
  %2 = alloca %23*, align 8
  %3 = alloca %0*, align 8
  store %23* %0, %23** %2, align 8
  %4 = load %23*, %23** %2, align 8
  %5 = getelementptr inbounds %23, %23* %4, i32 0, i32 0
  %6 = load %0*, %0** %5, align 8
  store %0* %6, %0** %3, align 8
  %7 = load %23*, %23** %2, align 8
  %8 = bitcast %23* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 4152, i32 8, i1 false)
  %9 = load %23*, %23** %2, align 8
  %10 = bitcast %23* %9 to i8*
  call void @free(i8* %10) #11
  %11 = load %0*, %0** %3, align 8
  %12 = icmp ne %0* %11, null
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %1
  %14 = load %0*, %0** %3, align 8
  %15 = call i32 @rpl_fclose(%0* %14)
  br label %16

; <label>:16:                                     ; preds = %1, %13
  %17 = phi i32 [ %15, %13 ], [ 0, %1 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define void @isaac_refill(%26*, i64*) #1 {
  %3 = alloca %26*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %26* %0, %26** %3, align 8
  store i64* %1, i64** %4, align 8
  %25 = load %26*, %26** %3, align 8
  %26 = getelementptr inbounds %26, %26* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %5, align 8
  %28 = load %26*, %26** %3, align 8
  %29 = getelementptr inbounds %26, %26* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %26*, %26** %3, align 8
  %32 = getelementptr inbounds %26, %26* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %32, align 8
  %35 = add i64 %30, %34
  store i64 %35, i64* %6, align 8
  %36 = load %26*, %26** %3, align 8
  %37 = getelementptr inbounds %26, %26* %36, i32 0, i32 0
  %38 = getelementptr inbounds [256 x i64], [256 x i64]* %37, i32 0, i32 0
  store i64* %38, i64** %7, align 8
  %39 = load i64*, i64** %4, align 8
  store i64* %39, i64** %8, align 8
  br label %40

; <label>:40:                                     ; preds = %40, %2
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* %5, align 8
  %43 = shl i64 %42, 21
  %44 = xor i64 %41, %43
  %45 = xor i64 %44, -1
  %46 = xor i64 0, %45
  %47 = load i64*, i64** %7, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 128
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %46, %49
  store i64 %50, i64* %5, align 8
  %51 = load i64*, i64** %7, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %9, align 8
  %54 = load %26*, %26** %3, align 8
  %55 = getelementptr inbounds %26, %26* %54, i32 0, i32 0
  %56 = getelementptr inbounds [256 x i64], [256 x i64]* %55, i32 0, i32 0
  %57 = load i64, i64* %9, align 8
  %58 = call i64 @385(i64* %56, i64 %57)
  %59 = load i64, i64* %5, align 8
  %60 = add i64 %58, %59
  %61 = load i64, i64* %6, align 8
  %62 = add i64 %60, %61
  store i64 %62, i64* %10, align 8
  %63 = load i64*, i64** %7, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  store i64 %62, i64* %64, align 8
  %65 = load %26*, %26** %3, align 8
  %66 = getelementptr inbounds %26, %26* %65, i32 0, i32 0
  %67 = getelementptr inbounds [256 x i64], [256 x i64]* %66, i32 0, i32 0
  %68 = load i64, i64* %10, align 8
  %69 = lshr i64 %68, 8
  %70 = call i64 @385(i64* %67, i64 %69)
  %71 = load i64, i64* %9, align 8
  %72 = add i64 %70, %71
  %73 = call i64 @386(i64 %72)
  store i64 %73, i64* %6, align 8
  %74 = load i64*, i64** %8, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 0
  store i64 %73, i64* %75, align 8
  %76 = load i64, i64* %5, align 8
  %77 = load i64, i64* %5, align 8
  %78 = call i64 @386(i64 %77)
  %79 = lshr i64 %78, 5
  %80 = xor i64 %76, %79
  %81 = xor i64 0, %80
  %82 = load i64*, i64** %7, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 129
  %84 = load i64, i64* %83, align 8
  %85 = add i64 %81, %84
  store i64 %85, i64* %5, align 8
  %86 = load i64*, i64** %7, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 1
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %11, align 8
  %89 = load %26*, %26** %3, align 8
  %90 = getelementptr inbounds %26, %26* %89, i32 0, i32 0
  %91 = getelementptr inbounds [256 x i64], [256 x i64]* %90, i32 0, i32 0
  %92 = load i64, i64* %11, align 8
  %93 = call i64 @385(i64* %91, i64 %92)
  %94 = load i64, i64* %5, align 8
  %95 = add i64 %93, %94
  %96 = load i64, i64* %6, align 8
  %97 = add i64 %95, %96
  store i64 %97, i64* %12, align 8
  %98 = load i64*, i64** %7, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 1
  store i64 %97, i64* %99, align 8
  %100 = load %26*, %26** %3, align 8
  %101 = getelementptr inbounds %26, %26* %100, i32 0, i32 0
  %102 = getelementptr inbounds [256 x i64], [256 x i64]* %101, i32 0, i32 0
  %103 = load i64, i64* %12, align 8
  %104 = lshr i64 %103, 8
  %105 = call i64 @385(i64* %102, i64 %104)
  %106 = load i64, i64* %11, align 8
  %107 = add i64 %105, %106
  %108 = call i64 @386(i64 %107)
  store i64 %108, i64* %6, align 8
  %109 = load i64*, i64** %8, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 1
  store i64 %108, i64* %110, align 8
  %111 = load i64, i64* %5, align 8
  %112 = load i64, i64* %5, align 8
  %113 = shl i64 %112, 12
  %114 = xor i64 %111, %113
  %115 = xor i64 0, %114
  %116 = load i64*, i64** %7, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 130
  %118 = load i64, i64* %117, align 8
  %119 = add i64 %115, %118
  store i64 %119, i64* %5, align 8
  %120 = load i64*, i64** %7, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 2
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %13, align 8
  %123 = load %26*, %26** %3, align 8
  %124 = getelementptr inbounds %26, %26* %123, i32 0, i32 0
  %125 = getelementptr inbounds [256 x i64], [256 x i64]* %124, i32 0, i32 0
  %126 = load i64, i64* %13, align 8
  %127 = call i64 @385(i64* %125, i64 %126)
  %128 = load i64, i64* %5, align 8
  %129 = add i64 %127, %128
  %130 = load i64, i64* %6, align 8
  %131 = add i64 %129, %130
  store i64 %131, i64* %14, align 8
  %132 = load i64*, i64** %7, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 2
  store i64 %131, i64* %133, align 8
  %134 = load %26*, %26** %3, align 8
  %135 = getelementptr inbounds %26, %26* %134, i32 0, i32 0
  %136 = getelementptr inbounds [256 x i64], [256 x i64]* %135, i32 0, i32 0
  %137 = load i64, i64* %14, align 8
  %138 = lshr i64 %137, 8
  %139 = call i64 @385(i64* %136, i64 %138)
  %140 = load i64, i64* %13, align 8
  %141 = add i64 %139, %140
  %142 = call i64 @386(i64 %141)
  store i64 %142, i64* %6, align 8
  %143 = load i64*, i64** %8, align 8
  %144 = getelementptr inbounds i64, i64* %143, i64 2
  store i64 %142, i64* %144, align 8
  %145 = load i64, i64* %5, align 8
  %146 = load i64, i64* %5, align 8
  %147 = call i64 @386(i64 %146)
  %148 = lshr i64 %147, 33
  %149 = xor i64 %145, %148
  %150 = xor i64 0, %149
  %151 = load i64*, i64** %7, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 131
  %153 = load i64, i64* %152, align 8
  %154 = add i64 %150, %153
  store i64 %154, i64* %5, align 8
  %155 = load i64*, i64** %7, align 8
  %156 = getelementptr inbounds i64, i64* %155, i64 3
  %157 = load i64, i64* %156, align 8
  store i64 %157, i64* %15, align 8
  %158 = load %26*, %26** %3, align 8
  %159 = getelementptr inbounds %26, %26* %158, i32 0, i32 0
  %160 = getelementptr inbounds [256 x i64], [256 x i64]* %159, i32 0, i32 0
  %161 = load i64, i64* %15, align 8
  %162 = call i64 @385(i64* %160, i64 %161)
  %163 = load i64, i64* %5, align 8
  %164 = add i64 %162, %163
  %165 = load i64, i64* %6, align 8
  %166 = add i64 %164, %165
  store i64 %166, i64* %16, align 8
  %167 = load i64*, i64** %7, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 3
  store i64 %166, i64* %168, align 8
  %169 = load %26*, %26** %3, align 8
  %170 = getelementptr inbounds %26, %26* %169, i32 0, i32 0
  %171 = getelementptr inbounds [256 x i64], [256 x i64]* %170, i32 0, i32 0
  %172 = load i64, i64* %16, align 8
  %173 = lshr i64 %172, 8
  %174 = call i64 @385(i64* %171, i64 %173)
  %175 = load i64, i64* %15, align 8
  %176 = add i64 %174, %175
  %177 = call i64 @386(i64 %176)
  store i64 %177, i64* %6, align 8
  %178 = load i64*, i64** %8, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 3
  store i64 %177, i64* %179, align 8
  %180 = load i64*, i64** %8, align 8
  %181 = getelementptr inbounds i64, i64* %180, i64 4
  store i64* %181, i64** %8, align 8
  %182 = load i64*, i64** %7, align 8
  %183 = getelementptr inbounds i64, i64* %182, i64 4
  store i64* %183, i64** %7, align 8
  %184 = load %26*, %26** %3, align 8
  %185 = getelementptr inbounds %26, %26* %184, i32 0, i32 0
  %186 = getelementptr inbounds [256 x i64], [256 x i64]* %185, i32 0, i32 0
  %187 = getelementptr inbounds i64, i64* %186, i64 128
  %188 = icmp ult i64* %183, %187
  br i1 %188, label %40, label %189

; <label>:189:                                    ; preds = %40
  br label %190

; <label>:190:                                    ; preds = %190, %189
  %191 = load i64, i64* %5, align 8
  %192 = load i64, i64* %5, align 8
  %193 = shl i64 %192, 21
  %194 = xor i64 %191, %193
  %195 = xor i64 %194, -1
  %196 = xor i64 0, %195
  %197 = load i64*, i64** %7, align 8
  %198 = getelementptr inbounds i64, i64* %197, i64 -128
  %199 = load i64, i64* %198, align 8
  %200 = add i64 %196, %199
  store i64 %200, i64* %5, align 8
  %201 = load i64*, i64** %7, align 8
  %202 = getelementptr inbounds i64, i64* %201, i64 0
  %203 = load i64, i64* %202, align 8
  store i64 %203, i64* %17, align 8
  %204 = load %26*, %26** %3, align 8
  %205 = getelementptr inbounds %26, %26* %204, i32 0, i32 0
  %206 = getelementptr inbounds [256 x i64], [256 x i64]* %205, i32 0, i32 0
  %207 = load i64, i64* %17, align 8
  %208 = call i64 @385(i64* %206, i64 %207)
  %209 = load i64, i64* %5, align 8
  %210 = add i64 %208, %209
  %211 = load i64, i64* %6, align 8
  %212 = add i64 %210, %211
  store i64 %212, i64* %18, align 8
  %213 = load i64*, i64** %7, align 8
  %214 = getelementptr inbounds i64, i64* %213, i64 0
  store i64 %212, i64* %214, align 8
  %215 = load %26*, %26** %3, align 8
  %216 = getelementptr inbounds %26, %26* %215, i32 0, i32 0
  %217 = getelementptr inbounds [256 x i64], [256 x i64]* %216, i32 0, i32 0
  %218 = load i64, i64* %18, align 8
  %219 = lshr i64 %218, 8
  %220 = call i64 @385(i64* %217, i64 %219)
  %221 = load i64, i64* %17, align 8
  %222 = add i64 %220, %221
  %223 = call i64 @386(i64 %222)
  store i64 %223, i64* %6, align 8
  %224 = load i64*, i64** %8, align 8
  %225 = getelementptr inbounds i64, i64* %224, i64 0
  store i64 %223, i64* %225, align 8
  %226 = load i64, i64* %5, align 8
  %227 = load i64, i64* %5, align 8
  %228 = call i64 @386(i64 %227)
  %229 = lshr i64 %228, 5
  %230 = xor i64 %226, %229
  %231 = xor i64 0, %230
  %232 = load i64*, i64** %7, align 8
  %233 = getelementptr inbounds i64, i64* %232, i64 -127
  %234 = load i64, i64* %233, align 8
  %235 = add i64 %231, %234
  store i64 %235, i64* %5, align 8
  %236 = load i64*, i64** %7, align 8
  %237 = getelementptr inbounds i64, i64* %236, i64 1
  %238 = load i64, i64* %237, align 8
  store i64 %238, i64* %19, align 8
  %239 = load %26*, %26** %3, align 8
  %240 = getelementptr inbounds %26, %26* %239, i32 0, i32 0
  %241 = getelementptr inbounds [256 x i64], [256 x i64]* %240, i32 0, i32 0
  %242 = load i64, i64* %19, align 8
  %243 = call i64 @385(i64* %241, i64 %242)
  %244 = load i64, i64* %5, align 8
  %245 = add i64 %243, %244
  %246 = load i64, i64* %6, align 8
  %247 = add i64 %245, %246
  store i64 %247, i64* %20, align 8
  %248 = load i64*, i64** %7, align 8
  %249 = getelementptr inbounds i64, i64* %248, i64 1
  store i64 %247, i64* %249, align 8
  %250 = load %26*, %26** %3, align 8
  %251 = getelementptr inbounds %26, %26* %250, i32 0, i32 0
  %252 = getelementptr inbounds [256 x i64], [256 x i64]* %251, i32 0, i32 0
  %253 = load i64, i64* %20, align 8
  %254 = lshr i64 %253, 8
  %255 = call i64 @385(i64* %252, i64 %254)
  %256 = load i64, i64* %19, align 8
  %257 = add i64 %255, %256
  %258 = call i64 @386(i64 %257)
  store i64 %258, i64* %6, align 8
  %259 = load i64*, i64** %8, align 8
  %260 = getelementptr inbounds i64, i64* %259, i64 1
  store i64 %258, i64* %260, align 8
  %261 = load i64, i64* %5, align 8
  %262 = load i64, i64* %5, align 8
  %263 = shl i64 %262, 12
  %264 = xor i64 %261, %263
  %265 = xor i64 0, %264
  %266 = load i64*, i64** %7, align 8
  %267 = getelementptr inbounds i64, i64* %266, i64 -126
  %268 = load i64, i64* %267, align 8
  %269 = add i64 %265, %268
  store i64 %269, i64* %5, align 8
  %270 = load i64*, i64** %7, align 8
  %271 = getelementptr inbounds i64, i64* %270, i64 2
  %272 = load i64, i64* %271, align 8
  store i64 %272, i64* %21, align 8
  %273 = load %26*, %26** %3, align 8
  %274 = getelementptr inbounds %26, %26* %273, i32 0, i32 0
  %275 = getelementptr inbounds [256 x i64], [256 x i64]* %274, i32 0, i32 0
  %276 = load i64, i64* %21, align 8
  %277 = call i64 @385(i64* %275, i64 %276)
  %278 = load i64, i64* %5, align 8
  %279 = add i64 %277, %278
  %280 = load i64, i64* %6, align 8
  %281 = add i64 %279, %280
  store i64 %281, i64* %22, align 8
  %282 = load i64*, i64** %7, align 8
  %283 = getelementptr inbounds i64, i64* %282, i64 2
  store i64 %281, i64* %283, align 8
  %284 = load %26*, %26** %3, align 8
  %285 = getelementptr inbounds %26, %26* %284, i32 0, i32 0
  %286 = getelementptr inbounds [256 x i64], [256 x i64]* %285, i32 0, i32 0
  %287 = load i64, i64* %22, align 8
  %288 = lshr i64 %287, 8
  %289 = call i64 @385(i64* %286, i64 %288)
  %290 = load i64, i64* %21, align 8
  %291 = add i64 %289, %290
  %292 = call i64 @386(i64 %291)
  store i64 %292, i64* %6, align 8
  %293 = load i64*, i64** %8, align 8
  %294 = getelementptr inbounds i64, i64* %293, i64 2
  store i64 %292, i64* %294, align 8
  %295 = load i64, i64* %5, align 8
  %296 = load i64, i64* %5, align 8
  %297 = call i64 @386(i64 %296)
  %298 = lshr i64 %297, 33
  %299 = xor i64 %295, %298
  %300 = xor i64 0, %299
  %301 = load i64*, i64** %7, align 8
  %302 = getelementptr inbounds i64, i64* %301, i64 -125
  %303 = load i64, i64* %302, align 8
  %304 = add i64 %300, %303
  store i64 %304, i64* %5, align 8
  %305 = load i64*, i64** %7, align 8
  %306 = getelementptr inbounds i64, i64* %305, i64 3
  %307 = load i64, i64* %306, align 8
  store i64 %307, i64* %23, align 8
  %308 = load %26*, %26** %3, align 8
  %309 = getelementptr inbounds %26, %26* %308, i32 0, i32 0
  %310 = getelementptr inbounds [256 x i64], [256 x i64]* %309, i32 0, i32 0
  %311 = load i64, i64* %23, align 8
  %312 = call i64 @385(i64* %310, i64 %311)
  %313 = load i64, i64* %5, align 8
  %314 = add i64 %312, %313
  %315 = load i64, i64* %6, align 8
  %316 = add i64 %314, %315
  store i64 %316, i64* %24, align 8
  %317 = load i64*, i64** %7, align 8
  %318 = getelementptr inbounds i64, i64* %317, i64 3
  store i64 %316, i64* %318, align 8
  %319 = load %26*, %26** %3, align 8
  %320 = getelementptr inbounds %26, %26* %319, i32 0, i32 0
  %321 = getelementptr inbounds [256 x i64], [256 x i64]* %320, i32 0, i32 0
  %322 = load i64, i64* %24, align 8
  %323 = lshr i64 %322, 8
  %324 = call i64 @385(i64* %321, i64 %323)
  %325 = load i64, i64* %23, align 8
  %326 = add i64 %324, %325
  %327 = call i64 @386(i64 %326)
  store i64 %327, i64* %6, align 8
  %328 = load i64*, i64** %8, align 8
  %329 = getelementptr inbounds i64, i64* %328, i64 3
  store i64 %327, i64* %329, align 8
  %330 = load i64*, i64** %8, align 8
  %331 = getelementptr inbounds i64, i64* %330, i64 4
  store i64* %331, i64** %8, align 8
  %332 = load i64*, i64** %7, align 8
  %333 = getelementptr inbounds i64, i64* %332, i64 4
  store i64* %333, i64** %7, align 8
  %334 = load %26*, %26** %3, align 8
  %335 = getelementptr inbounds %26, %26* %334, i32 0, i32 0
  %336 = getelementptr inbounds [256 x i64], [256 x i64]* %335, i32 0, i32 0
  %337 = getelementptr inbounds i64, i64* %336, i64 256
  %338 = icmp ult i64* %333, %337
  br i1 %338, label %190, label %339

; <label>:339:                                    ; preds = %190
  %340 = load i64, i64* %5, align 8
  %341 = load %26*, %26** %3, align 8
  %342 = getelementptr inbounds %26, %26* %341, i32 0, i32 1
  store i64 %340, i64* %342, align 8
  %343 = load i64, i64* %6, align 8
  %344 = load %26*, %26** %3, align 8
  %345 = getelementptr inbounds %26, %26* %344, i32 0, i32 2
  store i64 %343, i64* %345, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @385(i64*, i64) #1 {
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64*, i64** %3, align 8
  %6 = bitcast i64* %5 to i8*
  %7 = load i64, i64* %4, align 8
  %8 = and i64 %7, 2040
  %9 = getelementptr inbounds i8, i8* %6, i64 %8
  %10 = bitcast i8* %9 to i64*
  %11 = load i64, i64* %10, align 8
  ret i64 %11
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @386(i64) #1 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i64 -1, i64* %3, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* %3, align 8
  %6 = and i64 %4, %5
  ret i64 %6
}

; Function Attrs: noinline nounwind uwtable
define void @isaac_seed(%26*) #1 {
  %2 = alloca %26*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %26* %0, %26** %2, align 8
  store i64 7240739780546808700, i64* %3, align 8
  store i64 -5046086420515862430, i64* %4, align 8
  store i64 -8354558816804203872, i64* %5, align 8
  store i64 -5576812576440232668, i64* %6, align 8
  store i64 -9011610652101975858, i64* %7, align 8
  store i64 5259722845879046933, i64* %8, align 8
  store i64 -5865837416287532563, i64* %9, align 8
  store i64 -7424904924229222229, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %13

; <label>:13:                                     ; preds = %16, %1
  %14 = load i32, i32* %11, align 4
  %15 = icmp slt i32 %14, 256
  br i1 %15, label %16, label %229

; <label>:16:                                     ; preds = %13
  %17 = load %26*, %26** %2, align 8
  %18 = getelementptr inbounds %26, %26* %17, i32 0, i32 0
  %19 = load i32, i32* %11, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [256 x i64], [256 x i64]* %18, i64 0, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %3, align 8
  %24 = add i64 %23, %22
  store i64 %24, i64* %3, align 8
  %25 = load %26*, %26** %2, align 8
  %26 = getelementptr inbounds %26, %26* %25, i32 0, i32 0
  %27 = load i32, i32* %11, align 4
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [256 x i64], [256 x i64]* %26, i64 0, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %4, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %4, align 8
  %34 = load %26*, %26** %2, align 8
  %35 = getelementptr inbounds %26, %26* %34, i32 0, i32 0
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [256 x i64], [256 x i64]* %35, i64 0, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %5, align 8
  %43 = load %26*, %26** %2, align 8
  %44 = getelementptr inbounds %26, %26* %43, i32 0, i32 0
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 3
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [256 x i64], [256 x i64]* %44, i64 0, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %6, align 8
  %52 = load %26*, %26** %2, align 8
  %53 = getelementptr inbounds %26, %26* %52, i32 0, i32 0
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [256 x i64], [256 x i64]* %53, i64 0, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %7, align 8
  %61 = load %26*, %26** %2, align 8
  %62 = getelementptr inbounds %26, %26* %61, i32 0, i32 0
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 5
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [256 x i64], [256 x i64]* %62, i64 0, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %8, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %8, align 8
  %70 = load %26*, %26** %2, align 8
  %71 = getelementptr inbounds %26, %26* %70, i32 0, i32 0
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 6
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [256 x i64], [256 x i64]* %71, i64 0, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = add i64 %77, %76
  store i64 %78, i64* %9, align 8
  %79 = load %26*, %26** %2, align 8
  %80 = getelementptr inbounds %26, %26* %79, i32 0, i32 0
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 7
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [256 x i64], [256 x i64]* %80, i64 0, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %10, align 8
  %87 = add i64 %86, %85
  store i64 %87, i64* %10, align 8
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* %3, align 8
  %90 = sub i64 %89, %88
  store i64 %90, i64* %3, align 8
  %91 = load i64, i64* %10, align 8
  %92 = call i64 @386(i64 %91)
  %93 = lshr i64 %92, 9
  %94 = load i64, i64* %8, align 8
  %95 = xor i64 %94, %93
  store i64 %95, i64* %8, align 8
  %96 = load i64, i64* %3, align 8
  %97 = load i64, i64* %10, align 8
  %98 = add i64 %97, %96
  store i64 %98, i64* %10, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* %4, align 8
  %101 = sub i64 %100, %99
  store i64 %101, i64* %4, align 8
  %102 = load i64, i64* %3, align 8
  %103 = shl i64 %102, 9
  %104 = load i64, i64* %9, align 8
  %105 = xor i64 %104, %103
  store i64 %105, i64* %9, align 8
  %106 = load i64, i64* %4, align 8
  %107 = load i64, i64* %3, align 8
  %108 = add i64 %107, %106
  store i64 %108, i64* %3, align 8
  %109 = load i64, i64* %9, align 8
  %110 = load i64, i64* %5, align 8
  %111 = sub i64 %110, %109
  store i64 %111, i64* %5, align 8
  %112 = load i64, i64* %4, align 8
  %113 = call i64 @386(i64 %112)
  %114 = lshr i64 %113, 23
  %115 = load i64, i64* %10, align 8
  %116 = xor i64 %115, %114
  store i64 %116, i64* %10, align 8
  %117 = load i64, i64* %5, align 8
  %118 = load i64, i64* %4, align 8
  %119 = add i64 %118, %117
  store i64 %119, i64* %4, align 8
  %120 = load i64, i64* %10, align 8
  %121 = load i64, i64* %6, align 8
  %122 = sub i64 %121, %120
  store i64 %122, i64* %6, align 8
  %123 = load i64, i64* %5, align 8
  %124 = shl i64 %123, 15
  %125 = load i64, i64* %3, align 8
  %126 = xor i64 %125, %124
  store i64 %126, i64* %3, align 8
  %127 = load i64, i64* %6, align 8
  %128 = load i64, i64* %5, align 8
  %129 = add i64 %128, %127
  store i64 %129, i64* %5, align 8
  %130 = load i64, i64* %3, align 8
  %131 = load i64, i64* %7, align 8
  %132 = sub i64 %131, %130
  store i64 %132, i64* %7, align 8
  %133 = load i64, i64* %6, align 8
  %134 = call i64 @386(i64 %133)
  %135 = lshr i64 %134, 14
  %136 = load i64, i64* %4, align 8
  %137 = xor i64 %136, %135
  store i64 %137, i64* %4, align 8
  %138 = load i64, i64* %7, align 8
  %139 = load i64, i64* %6, align 8
  %140 = add i64 %139, %138
  store i64 %140, i64* %6, align 8
  %141 = load i64, i64* %4, align 8
  %142 = load i64, i64* %8, align 8
  %143 = sub i64 %142, %141
  store i64 %143, i64* %8, align 8
  %144 = load i64, i64* %7, align 8
  %145 = shl i64 %144, 20
  %146 = load i64, i64* %5, align 8
  %147 = xor i64 %146, %145
  store i64 %147, i64* %5, align 8
  %148 = load i64, i64* %8, align 8
  %149 = load i64, i64* %7, align 8
  %150 = add i64 %149, %148
  store i64 %150, i64* %7, align 8
  %151 = load i64, i64* %5, align 8
  %152 = load i64, i64* %9, align 8
  %153 = sub i64 %152, %151
  store i64 %153, i64* %9, align 8
  %154 = load i64, i64* %8, align 8
  %155 = call i64 @386(i64 %154)
  %156 = lshr i64 %155, 17
  %157 = load i64, i64* %6, align 8
  %158 = xor i64 %157, %156
  store i64 %158, i64* %6, align 8
  %159 = load i64, i64* %9, align 8
  %160 = load i64, i64* %8, align 8
  %161 = add i64 %160, %159
  store i64 %161, i64* %8, align 8
  %162 = load i64, i64* %6, align 8
  %163 = load i64, i64* %10, align 8
  %164 = sub i64 %163, %162
  store i64 %164, i64* %10, align 8
  %165 = load i64, i64* %9, align 8
  %166 = shl i64 %165, 14
  %167 = load i64, i64* %7, align 8
  %168 = xor i64 %167, %166
  store i64 %168, i64* %7, align 8
  %169 = load i64, i64* %10, align 8
  %170 = load i64, i64* %9, align 8
  %171 = add i64 %170, %169
  store i64 %171, i64* %9, align 8
  %172 = load i64, i64* %3, align 8
  %173 = load %26*, %26** %2, align 8
  %174 = getelementptr inbounds %26, %26* %173, i32 0, i32 0
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [256 x i64], [256 x i64]* %174, i64 0, i64 %176
  store i64 %172, i64* %177, align 8
  %178 = load i64, i64* %4, align 8
  %179 = load %26*, %26** %2, align 8
  %180 = getelementptr inbounds %26, %26* %179, i32 0, i32 0
  %181 = load i32, i32* %11, align 4
  %182 = add nsw i32 %181, 1
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [256 x i64], [256 x i64]* %180, i64 0, i64 %183
  store i64 %178, i64* %184, align 8
  %185 = load i64, i64* %5, align 8
  %186 = load %26*, %26** %2, align 8
  %187 = getelementptr inbounds %26, %26* %186, i32 0, i32 0
  %188 = load i32, i32* %11, align 4
  %189 = add nsw i32 %188, 2
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [256 x i64], [256 x i64]* %187, i64 0, i64 %190
  store i64 %185, i64* %191, align 8
  %192 = load i64, i64* %6, align 8
  %193 = load %26*, %26** %2, align 8
  %194 = getelementptr inbounds %26, %26* %193, i32 0, i32 0
  %195 = load i32, i32* %11, align 4
  %196 = add nsw i32 %195, 3
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [256 x i64], [256 x i64]* %194, i64 0, i64 %197
  store i64 %192, i64* %198, align 8
  %199 = load i64, i64* %7, align 8
  %200 = load %26*, %26** %2, align 8
  %201 = getelementptr inbounds %26, %26* %200, i32 0, i32 0
  %202 = load i32, i32* %11, align 4
  %203 = add nsw i32 %202, 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [256 x i64], [256 x i64]* %201, i64 0, i64 %204
  store i64 %199, i64* %205, align 8
  %206 = load i64, i64* %8, align 8
  %207 = load %26*, %26** %2, align 8
  %208 = getelementptr inbounds %26, %26* %207, i32 0, i32 0
  %209 = load i32, i32* %11, align 4
  %210 = add nsw i32 %209, 5
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [256 x i64], [256 x i64]* %208, i64 0, i64 %211
  store i64 %206, i64* %212, align 8
  %213 = load i64, i64* %9, align 8
  %214 = load %26*, %26** %2, align 8
  %215 = getelementptr inbounds %26, %26* %214, i32 0, i32 0
  %216 = load i32, i32* %11, align 4
  %217 = add nsw i32 %216, 6
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [256 x i64], [256 x i64]* %215, i64 0, i64 %218
  store i64 %213, i64* %219, align 8
  %220 = load i64, i64* %10, align 8
  %221 = load %26*, %26** %2, align 8
  %222 = getelementptr inbounds %26, %26* %221, i32 0, i32 0
  %223 = load i32, i32* %11, align 4
  %224 = add nsw i32 %223, 7
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [256 x i64], [256 x i64]* %222, i64 0, i64 %225
  store i64 %220, i64* %226, align 8
  %227 = load i32, i32* %11, align 4
  %228 = add nsw i32 %227, 8
  store i32 %228, i32* %11, align 4
  br label %13

; <label>:229:                                    ; preds = %13
  store i32 0, i32* %12, align 4
  br label %230

; <label>:230:                                    ; preds = %234, %229
  %231 = load i32, i32* %12, align 4
  %232 = icmp slt i32 %231, 256
  %233 = load %26*, %26** %2, align 8
  br i1 %232, label %234, label %446

; <label>:234:                                    ; preds = %230
  %235 = getelementptr inbounds %26, %26* %233, i32 0, i32 0
  %236 = load i32, i32* %12, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [256 x i64], [256 x i64]* %235, i64 0, i64 %237
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* %3, align 8
  %241 = add i64 %240, %239
  store i64 %241, i64* %3, align 8
  %242 = load %26*, %26** %2, align 8
  %243 = getelementptr inbounds %26, %26* %242, i32 0, i32 0
  %244 = load i32, i32* %12, align 4
  %245 = add nsw i32 %244, 1
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [256 x i64], [256 x i64]* %243, i64 0, i64 %246
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* %4, align 8
  %250 = add i64 %249, %248
  store i64 %250, i64* %4, align 8
  %251 = load %26*, %26** %2, align 8
  %252 = getelementptr inbounds %26, %26* %251, i32 0, i32 0
  %253 = load i32, i32* %12, align 4
  %254 = add nsw i32 %253, 2
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [256 x i64], [256 x i64]* %252, i64 0, i64 %255
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* %5, align 8
  %259 = add i64 %258, %257
  store i64 %259, i64* %5, align 8
  %260 = load %26*, %26** %2, align 8
  %261 = getelementptr inbounds %26, %26* %260, i32 0, i32 0
  %262 = load i32, i32* %12, align 4
  %263 = add nsw i32 %262, 3
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [256 x i64], [256 x i64]* %261, i64 0, i64 %264
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* %6, align 8
  %268 = add i64 %267, %266
  store i64 %268, i64* %6, align 8
  %269 = load %26*, %26** %2, align 8
  %270 = getelementptr inbounds %26, %26* %269, i32 0, i32 0
  %271 = load i32, i32* %12, align 4
  %272 = add nsw i32 %271, 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [256 x i64], [256 x i64]* %270, i64 0, i64 %273
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* %7, align 8
  %277 = add i64 %276, %275
  store i64 %277, i64* %7, align 8
  %278 = load %26*, %26** %2, align 8
  %279 = getelementptr inbounds %26, %26* %278, i32 0, i32 0
  %280 = load i32, i32* %12, align 4
  %281 = add nsw i32 %280, 5
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [256 x i64], [256 x i64]* %279, i64 0, i64 %282
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* %8, align 8
  %286 = add i64 %285, %284
  store i64 %286, i64* %8, align 8
  %287 = load %26*, %26** %2, align 8
  %288 = getelementptr inbounds %26, %26* %287, i32 0, i32 0
  %289 = load i32, i32* %12, align 4
  %290 = add nsw i32 %289, 6
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [256 x i64], [256 x i64]* %288, i64 0, i64 %291
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* %9, align 8
  %295 = add i64 %294, %293
  store i64 %295, i64* %9, align 8
  %296 = load %26*, %26** %2, align 8
  %297 = getelementptr inbounds %26, %26* %296, i32 0, i32 0
  %298 = load i32, i32* %12, align 4
  %299 = add nsw i32 %298, 7
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [256 x i64], [256 x i64]* %297, i64 0, i64 %300
  %302 = load i64, i64* %301, align 8
  %303 = load i64, i64* %10, align 8
  %304 = add i64 %303, %302
  store i64 %304, i64* %10, align 8
  %305 = load i64, i64* %7, align 8
  %306 = load i64, i64* %3, align 8
  %307 = sub i64 %306, %305
  store i64 %307, i64* %3, align 8
  %308 = load i64, i64* %10, align 8
  %309 = call i64 @386(i64 %308)
  %310 = lshr i64 %309, 9
  %311 = load i64, i64* %8, align 8
  %312 = xor i64 %311, %310
  store i64 %312, i64* %8, align 8
  %313 = load i64, i64* %3, align 8
  %314 = load i64, i64* %10, align 8
  %315 = add i64 %314, %313
  store i64 %315, i64* %10, align 8
  %316 = load i64, i64* %8, align 8
  %317 = load i64, i64* %4, align 8
  %318 = sub i64 %317, %316
  store i64 %318, i64* %4, align 8
  %319 = load i64, i64* %3, align 8
  %320 = shl i64 %319, 9
  %321 = load i64, i64* %9, align 8
  %322 = xor i64 %321, %320
  store i64 %322, i64* %9, align 8
  %323 = load i64, i64* %4, align 8
  %324 = load i64, i64* %3, align 8
  %325 = add i64 %324, %323
  store i64 %325, i64* %3, align 8
  %326 = load i64, i64* %9, align 8
  %327 = load i64, i64* %5, align 8
  %328 = sub i64 %327, %326
  store i64 %328, i64* %5, align 8
  %329 = load i64, i64* %4, align 8
  %330 = call i64 @386(i64 %329)
  %331 = lshr i64 %330, 23
  %332 = load i64, i64* %10, align 8
  %333 = xor i64 %332, %331
  store i64 %333, i64* %10, align 8
  %334 = load i64, i64* %5, align 8
  %335 = load i64, i64* %4, align 8
  %336 = add i64 %335, %334
  store i64 %336, i64* %4, align 8
  %337 = load i64, i64* %10, align 8
  %338 = load i64, i64* %6, align 8
  %339 = sub i64 %338, %337
  store i64 %339, i64* %6, align 8
  %340 = load i64, i64* %5, align 8
  %341 = shl i64 %340, 15
  %342 = load i64, i64* %3, align 8
  %343 = xor i64 %342, %341
  store i64 %343, i64* %3, align 8
  %344 = load i64, i64* %6, align 8
  %345 = load i64, i64* %5, align 8
  %346 = add i64 %345, %344
  store i64 %346, i64* %5, align 8
  %347 = load i64, i64* %3, align 8
  %348 = load i64, i64* %7, align 8
  %349 = sub i64 %348, %347
  store i64 %349, i64* %7, align 8
  %350 = load i64, i64* %6, align 8
  %351 = call i64 @386(i64 %350)
  %352 = lshr i64 %351, 14
  %353 = load i64, i64* %4, align 8
  %354 = xor i64 %353, %352
  store i64 %354, i64* %4, align 8
  %355 = load i64, i64* %7, align 8
  %356 = load i64, i64* %6, align 8
  %357 = add i64 %356, %355
  store i64 %357, i64* %6, align 8
  %358 = load i64, i64* %4, align 8
  %359 = load i64, i64* %8, align 8
  %360 = sub i64 %359, %358
  store i64 %360, i64* %8, align 8
  %361 = load i64, i64* %7, align 8
  %362 = shl i64 %361, 20
  %363 = load i64, i64* %5, align 8
  %364 = xor i64 %363, %362
  store i64 %364, i64* %5, align 8
  %365 = load i64, i64* %8, align 8
  %366 = load i64, i64* %7, align 8
  %367 = add i64 %366, %365
  store i64 %367, i64* %7, align 8
  %368 = load i64, i64* %5, align 8
  %369 = load i64, i64* %9, align 8
  %370 = sub i64 %369, %368
  store i64 %370, i64* %9, align 8
  %371 = load i64, i64* %8, align 8
  %372 = call i64 @386(i64 %371)
  %373 = lshr i64 %372, 17
  %374 = load i64, i64* %6, align 8
  %375 = xor i64 %374, %373
  store i64 %375, i64* %6, align 8
  %376 = load i64, i64* %9, align 8
  %377 = load i64, i64* %8, align 8
  %378 = add i64 %377, %376
  store i64 %378, i64* %8, align 8
  %379 = load i64, i64* %6, align 8
  %380 = load i64, i64* %10, align 8
  %381 = sub i64 %380, %379
  store i64 %381, i64* %10, align 8
  %382 = load i64, i64* %9, align 8
  %383 = shl i64 %382, 14
  %384 = load i64, i64* %7, align 8
  %385 = xor i64 %384, %383
  store i64 %385, i64* %7, align 8
  %386 = load i64, i64* %10, align 8
  %387 = load i64, i64* %9, align 8
  %388 = add i64 %387, %386
  store i64 %388, i64* %9, align 8
  %389 = load i64, i64* %3, align 8
  %390 = load %26*, %26** %2, align 8
  %391 = getelementptr inbounds %26, %26* %390, i32 0, i32 0
  %392 = load i32, i32* %12, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds [256 x i64], [256 x i64]* %391, i64 0, i64 %393
  store i64 %389, i64* %394, align 8
  %395 = load i64, i64* %4, align 8
  %396 = load %26*, %26** %2, align 8
  %397 = getelementptr inbounds %26, %26* %396, i32 0, i32 0
  %398 = load i32, i32* %12, align 4
  %399 = add nsw i32 %398, 1
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds [256 x i64], [256 x i64]* %397, i64 0, i64 %400
  store i64 %395, i64* %401, align 8
  %402 = load i64, i64* %5, align 8
  %403 = load %26*, %26** %2, align 8
  %404 = getelementptr inbounds %26, %26* %403, i32 0, i32 0
  %405 = load i32, i32* %12, align 4
  %406 = add nsw i32 %405, 2
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds [256 x i64], [256 x i64]* %404, i64 0, i64 %407
  store i64 %402, i64* %408, align 8
  %409 = load i64, i64* %6, align 8
  %410 = load %26*, %26** %2, align 8
  %411 = getelementptr inbounds %26, %26* %410, i32 0, i32 0
  %412 = load i32, i32* %12, align 4
  %413 = add nsw i32 %412, 3
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds [256 x i64], [256 x i64]* %411, i64 0, i64 %414
  store i64 %409, i64* %415, align 8
  %416 = load i64, i64* %7, align 8
  %417 = load %26*, %26** %2, align 8
  %418 = getelementptr inbounds %26, %26* %417, i32 0, i32 0
  %419 = load i32, i32* %12, align 4
  %420 = add nsw i32 %419, 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds [256 x i64], [256 x i64]* %418, i64 0, i64 %421
  store i64 %416, i64* %422, align 8
  %423 = load i64, i64* %8, align 8
  %424 = load %26*, %26** %2, align 8
  %425 = getelementptr inbounds %26, %26* %424, i32 0, i32 0
  %426 = load i32, i32* %12, align 4
  %427 = add nsw i32 %426, 5
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds [256 x i64], [256 x i64]* %425, i64 0, i64 %428
  store i64 %423, i64* %429, align 8
  %430 = load i64, i64* %9, align 8
  %431 = load %26*, %26** %2, align 8
  %432 = getelementptr inbounds %26, %26* %431, i32 0, i32 0
  %433 = load i32, i32* %12, align 4
  %434 = add nsw i32 %433, 6
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds [256 x i64], [256 x i64]* %432, i64 0, i64 %435
  store i64 %430, i64* %436, align 8
  %437 = load i64, i64* %10, align 8
  %438 = load %26*, %26** %2, align 8
  %439 = getelementptr inbounds %26, %26* %438, i32 0, i32 0
  %440 = load i32, i32* %12, align 4
  %441 = add nsw i32 %440, 7
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds [256 x i64], [256 x i64]* %439, i64 0, i64 %442
  store i64 %437, i64* %443, align 8
  %444 = load i32, i32* %12, align 4
  %445 = add nsw i32 %444, 8
  store i32 %445, i32* %12, align 4
  br label %230

; <label>:446:                                    ; preds = %230
  %447 = getelementptr inbounds %26, %26* %233, i32 0, i32 3
  store i64 0, i64* %447, align 8
  %448 = load %26*, %26** %2, align 8
  %449 = getelementptr inbounds %26, %26* %448, i32 0, i32 2
  store i64 0, i64* %449, align 8
  %450 = load %26*, %26** %2, align 8
  %451 = getelementptr inbounds %26, %26* %450, i32 0, i32 1
  store i64 0, i64* %451, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @readtokens0_init(%14*) #1 {
  %2 = alloca %14*, align 8
  store %14* %0, %14** %2, align 8
  %3 = load %14*, %14** %2, align 8
  %4 = getelementptr inbounds %14, %14* %3, i32 0, i32 0
  store i64 0, i64* %4, align 8
  %5 = load %14*, %14** %2, align 8
  %6 = getelementptr inbounds %14, %14* %5, i32 0, i32 1
  store i8** null, i8*** %6, align 8
  %7 = load %14*, %14** %2, align 8
  %8 = getelementptr inbounds %14, %14* %7, i32 0, i32 2
  store i64* null, i64** %8, align 8
  %9 = load %14*, %14** %2, align 8
  %10 = getelementptr inbounds %14, %14* %9, i32 0, i32 3
  %11 = call i32 @_obstack_begin(%15* %10, i32 0, i32 0, i8* (i64)* @malloc, void (i8*)* @free)
  %12 = load %14*, %14** %2, align 8
  %13 = getelementptr inbounds %14, %14* %12, i32 0, i32 4
  %14 = call i32 @_obstack_begin(%15* %13, i32 0, i32 0, i8* (i64)* @malloc, void (i8*)* @free)
  %15 = load %14*, %14** %2, align 8
  %16 = getelementptr inbounds %14, %14* %15, i32 0, i32 5
  %17 = call i32 @_obstack_begin(%15* %16, i32 0, i32 0, i8* (i64)* @malloc, void (i8*)* @free)
  ret void
}

declare i32 @_obstack_begin(%15*, i32, i32, i8* (i64)*, void (i8*)*) #2

declare void @obstack_free(%15*, i8*) #2

; Function Attrs: noinline nounwind uwtable
define zeroext i1 @readtokens0(%0*, %14*) #1 {
  %3 = alloca %0*, align 8
  %4 = alloca %14*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %15*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %15*, align 8
  %10 = alloca %15*, align 8
  %11 = alloca %15*, align 8
  %12 = alloca %15*, align 8
  %13 = alloca %15*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %15*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %0* %0, %0** %3, align 8
  store %14* %1, %14** %4, align 8
  br label %19

; <label>:19:                                     ; preds = %2, %82
  %20 = load %0*, %0** %3, align 8
  %21 = call i32 @fgetc(%0* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, -1
  %24 = load %14*, %14** %4, align 8
  %25 = getelementptr inbounds %14, %14* %24, i32 0, i32 3
  br i1 %23, label %26, label %60

; <label>:26:                                     ; preds = %19
  store %15* %25, %15** %7, align 8
  %27 = load %15*, %15** %7, align 8
  %28 = getelementptr inbounds %15, %15* %27, i32 0, i32 3
  %29 = load i8*, i8** %28, align 8
  %30 = load %15*, %15** %7, align 8
  %31 = getelementptr inbounds %15, %15* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = ptrtoint i8* %29 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %83

; <label>:41:                                     ; preds = %26
  %42 = load %14*, %14** %4, align 8
  %43 = getelementptr inbounds %14, %14* %42, i32 0, i32 3
  store %15* %43, %15** %9, align 8
  %44 = load %15*, %15** %9, align 8
  %45 = getelementptr inbounds %15, %15* %44, i32 0, i32 3
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load %15*, %15** %9, align 8
  %49 = getelementptr inbounds %15, %15* %48, i32 0, i32 4
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ugt i8* %47, %50
  br i1 %51, label %52, label %54

; <label>:52:                                     ; preds = %41
  %53 = load %15*, %15** %9, align 8
  call void @_obstack_newchunk(%15* %53, i32 1)
  br label %54

; <label>:54:                                     ; preds = %52, %41
  %55 = load %15*, %15** %9, align 8
  %56 = getelementptr inbounds %15, %15* %55, i32 0, i32 3
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %56, align 8
  store i8 0, i8* %57, align 1
  %59 = load %14*, %14** %4, align 8
  call void @387(%14* %59)
  br label %83

; <label>:60:                                     ; preds = %19
  store %15* %25, %15** %10, align 8
  %61 = load %15*, %15** %10, align 8
  %62 = getelementptr inbounds %15, %15* %61, i32 0, i32 3
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = load %15*, %15** %10, align 8
  %66 = getelementptr inbounds %15, %15* %65, i32 0, i32 4
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ugt i8* %64, %67
  br i1 %68, label %69, label %71

; <label>:69:                                     ; preds = %60
  %70 = load %15*, %15** %10, align 8
  call void @_obstack_newchunk(%15* %70, i32 1)
  br label %71

; <label>:71:                                     ; preds = %69, %60
  %72 = load i32, i32* %5, align 4
  %73 = trunc i32 %72 to i8
  %74 = load %15*, %15** %10, align 8
  %75 = getelementptr inbounds %15, %15* %74, i32 0, i32 3
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %75, align 8
  store i8 %73, i8* %76, align 1
  %78 = load i32, i32* %5, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82

; <label>:80:                                     ; preds = %71
  %81 = load %14*, %14** %4, align 8
  call void @387(%14* %81)
  br label %82

; <label>:82:                                     ; preds = %80, %71
  br label %19

; <label>:83:                                     ; preds = %26, %54
  %84 = load %14*, %14** %4, align 8
  %85 = getelementptr inbounds %14, %14* %84, i32 0, i32 4
  store %15* %85, %15** %11, align 8
  %86 = load %15*, %15** %11, align 8
  %87 = getelementptr inbounds %15, %15* %86, i32 0, i32 3
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 8
  %90 = load %15*, %15** %11, align 8
  %91 = getelementptr inbounds %15, %15* %90, i32 0, i32 4
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ugt i8* %89, %92
  br i1 %93, label %94, label %96

; <label>:94:                                     ; preds = %83
  %95 = load %15*, %15** %11, align 8
  call void @_obstack_newchunk(%15* %95, i32 8)
  br label %96

; <label>:96:                                     ; preds = %94, %83
  %97 = load %15*, %15** %11, align 8
  store %15* %97, %15** %12, align 8
  %98 = load %15*, %15** %12, align 8
  %99 = getelementptr inbounds %15, %15* %98, i32 0, i32 3
  %100 = load i8*, i8** %99, align 8
  %101 = bitcast i8* %100 to i8**
  store i8* null, i8** %101, align 8
  %102 = load %15*, %15** %12, align 8
  %103 = getelementptr inbounds %15, %15* %102, i32 0, i32 3
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 8
  store i8* %105, i8** %103, align 8
  %106 = load %14*, %14** %4, align 8
  %107 = getelementptr inbounds %14, %14* %106, i32 0, i32 4
  store %15* %107, %15** %13, align 8
  %108 = load %15*, %15** %13, align 8
  %109 = getelementptr inbounds %15, %15* %108, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  store i8* %110, i8** %14, align 8
  %111 = load %15*, %15** %13, align 8
  %112 = getelementptr inbounds %15, %15* %111, i32 0, i32 3
  %113 = load i8*, i8** %112, align 8
  %114 = load i8*, i8** %14, align 8
  %115 = icmp eq i8* %113, %114
  br i1 %115, label %116, label %122

; <label>:116:                                    ; preds = %96
  %117 = load %15*, %15** %13, align 8
  %118 = getelementptr inbounds %15, %15* %117, i32 0, i32 10
  %119 = load i8, i8* %118, align 8
  %120 = and i8 %119, -3
  %121 = or i8 %120, 2
  store i8 %121, i8* %118, align 8
  br label %122

; <label>:122:                                    ; preds = %116, %96
  %123 = load %15*, %15** %13, align 8
  %124 = getelementptr inbounds %15, %15* %123, i32 0, i32 3
  %125 = load i8*, i8** %124, align 8
  %126 = ptrtoint i8* %125 to i64
  %127 = sub i64 %126, 0
  %128 = load %15*, %15** %13, align 8
  %129 = getelementptr inbounds %15, %15* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %127, %131
  %133 = load %15*, %15** %13, align 8
  %134 = getelementptr inbounds %15, %15* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 8
  %136 = xor i32 %135, -1
  %137 = sext i32 %136 to i64
  %138 = and i64 %132, %137
  %139 = getelementptr inbounds i8, i8* null, i64 %138
  %140 = load %15*, %15** %13, align 8
  %141 = getelementptr inbounds %15, %15* %140, i32 0, i32 3
  store i8* %139, i8** %141, align 8
  %142 = load %15*, %15** %13, align 8
  %143 = getelementptr inbounds %15, %15* %142, i32 0, i32 3
  %144 = load i8*, i8** %143, align 8
  %145 = load %15*, %15** %13, align 8
  %146 = getelementptr inbounds %15, %15* %145, i32 0, i32 1
  %147 = load %16*, %16** %146, align 8
  %148 = bitcast %16* %147 to i8*
  %149 = ptrtoint i8* %144 to i64
  %150 = ptrtoint i8* %148 to i64
  %151 = sub i64 %149, %150
  %152 = load %15*, %15** %13, align 8
  %153 = getelementptr inbounds %15, %15* %152, i32 0, i32 4
  %154 = load i8*, i8** %153, align 8
  %155 = load %15*, %15** %13, align 8
  %156 = getelementptr inbounds %15, %15* %155, i32 0, i32 1
  %157 = load %16*, %16** %156, align 8
  %158 = bitcast %16* %157 to i8*
  %159 = ptrtoint i8* %154 to i64
  %160 = ptrtoint i8* %158 to i64
  %161 = sub i64 %159, %160
  %162 = icmp sgt i64 %151, %161
  br i1 %162, label %163, label %169

; <label>:163:                                    ; preds = %122
  %164 = load %15*, %15** %13, align 8
  %165 = getelementptr inbounds %15, %15* %164, i32 0, i32 4
  %166 = load i8*, i8** %165, align 8
  %167 = load %15*, %15** %13, align 8
  %168 = getelementptr inbounds %15, %15* %167, i32 0, i32 3
  store i8* %166, i8** %168, align 8
  br label %169

; <label>:169:                                    ; preds = %163, %122
  %170 = load %15*, %15** %13, align 8
  %171 = getelementptr inbounds %15, %15* %170, i32 0, i32 3
  %172 = load i8*, i8** %171, align 8
  %173 = load %15*, %15** %13, align 8
  %174 = getelementptr inbounds %15, %15* %173, i32 0, i32 2
  store i8* %172, i8** %174, align 8
  %175 = load i8*, i8** %14, align 8
  store i8* %175, i8** %15, align 8
  %176 = load i8*, i8** %15, align 8
  %177 = bitcast i8* %176 to i8**
  %178 = load %14*, %14** %4, align 8
  %179 = getelementptr inbounds %14, %14* %178, i32 0, i32 1
  store i8** %177, i8*** %179, align 8
  %180 = load %14*, %14** %4, align 8
  %181 = getelementptr inbounds %14, %14* %180, i32 0, i32 5
  store %15* %181, %15** %16, align 8
  %182 = load %15*, %15** %16, align 8
  %183 = getelementptr inbounds %15, %15* %182, i32 0, i32 2
  %184 = load i8*, i8** %183, align 8
  store i8* %184, i8** %17, align 8
  %185 = load %15*, %15** %16, align 8
  %186 = getelementptr inbounds %15, %15* %185, i32 0, i32 3
  %187 = load i8*, i8** %186, align 8
  %188 = load i8*, i8** %17, align 8
  %189 = icmp eq i8* %187, %188
  br i1 %189, label %190, label %196

; <label>:190:                                    ; preds = %169
  %191 = load %15*, %15** %16, align 8
  %192 = getelementptr inbounds %15, %15* %191, i32 0, i32 10
  %193 = load i8, i8* %192, align 8
  %194 = and i8 %193, -3
  %195 = or i8 %194, 2
  store i8 %195, i8* %192, align 8
  br label %196

; <label>:196:                                    ; preds = %190, %169
  %197 = load %15*, %15** %16, align 8
  %198 = getelementptr inbounds %15, %15* %197, i32 0, i32 3
  %199 = load i8*, i8** %198, align 8
  %200 = ptrtoint i8* %199 to i64
  %201 = sub i64 %200, 0
  %202 = load %15*, %15** %16, align 8
  %203 = getelementptr inbounds %15, %15* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 8
  %205 = sext i32 %204 to i64
  %206 = add nsw i64 %201, %205
  %207 = load %15*, %15** %16, align 8
  %208 = getelementptr inbounds %15, %15* %207, i32 0, i32 6
  %209 = load i32, i32* %208, align 8
  %210 = xor i32 %209, -1
  %211 = sext i32 %210 to i64
  %212 = and i64 %206, %211
  %213 = getelementptr inbounds i8, i8* null, i64 %212
  %214 = load %15*, %15** %16, align 8
  %215 = getelementptr inbounds %15, %15* %214, i32 0, i32 3
  store i8* %213, i8** %215, align 8
  %216 = load %15*, %15** %16, align 8
  %217 = getelementptr inbounds %15, %15* %216, i32 0, i32 3
  %218 = load i8*, i8** %217, align 8
  %219 = load %15*, %15** %16, align 8
  %220 = getelementptr inbounds %15, %15* %219, i32 0, i32 1
  %221 = load %16*, %16** %220, align 8
  %222 = bitcast %16* %221 to i8*
  %223 = ptrtoint i8* %218 to i64
  %224 = ptrtoint i8* %222 to i64
  %225 = sub i64 %223, %224
  %226 = load %15*, %15** %16, align 8
  %227 = getelementptr inbounds %15, %15* %226, i32 0, i32 4
  %228 = load i8*, i8** %227, align 8
  %229 = load %15*, %15** %16, align 8
  %230 = getelementptr inbounds %15, %15* %229, i32 0, i32 1
  %231 = load %16*, %16** %230, align 8
  %232 = bitcast %16* %231 to i8*
  %233 = ptrtoint i8* %228 to i64
  %234 = ptrtoint i8* %232 to i64
  %235 = sub i64 %233, %234
  %236 = icmp sgt i64 %225, %235
  br i1 %236, label %237, label %243

; <label>:237:                                    ; preds = %196
  %238 = load %15*, %15** %16, align 8
  %239 = getelementptr inbounds %15, %15* %238, i32 0, i32 4
  %240 = load i8*, i8** %239, align 8
  %241 = load %15*, %15** %16, align 8
  %242 = getelementptr inbounds %15, %15* %241, i32 0, i32 3
  store i8* %240, i8** %242, align 8
  br label %243

; <label>:243:                                    ; preds = %237, %196
  %244 = load %15*, %15** %16, align 8
  %245 = getelementptr inbounds %15, %15* %244, i32 0, i32 3
  %246 = load i8*, i8** %245, align 8
  %247 = load %15*, %15** %16, align 8
  %248 = getelementptr inbounds %15, %15* %247, i32 0, i32 2
  store i8* %246, i8** %248, align 8
  %249 = load i8*, i8** %17, align 8
  store i8* %249, i8** %18, align 8
  %250 = load i8*, i8** %18, align 8
  %251 = bitcast i8* %250 to i64*
  %252 = load %14*, %14** %4, align 8
  %253 = getelementptr inbounds %14, %14* %252, i32 0, i32 2
  store i64* %251, i64** %253, align 8
  %254 = load %0*, %0** %3, align 8
  %255 = call i32 @ferror(%0* %254) #11
  %256 = icmp ne i32 %255, 0
  %257 = xor i1 %256, true
  ret i1 %257
}

declare i32 @fgetc(%0*) #2

declare void @_obstack_newchunk(%15*, i32) #2

; Function Attrs: noinline nounwind uwtable
define internal void @387(%14*) #1 {
  %2 = alloca %14*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %15*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %15*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %15*, align 8
  %11 = alloca %15*, align 8
  %12 = alloca %15*, align 8
  %13 = alloca i32, align 4
  store %14* %0, %14** %2, align 8
  %14 = load %14*, %14** %2, align 8
  %15 = getelementptr inbounds %14, %14* %14, i32 0, i32 3
  store %15* %15, %15** %4, align 8
  %16 = load %15*, %15** %4, align 8
  %17 = getelementptr inbounds %15, %15* %16, i32 0, i32 3
  %18 = load i8*, i8** %17, align 8
  %19 = load %15*, %15** %4, align 8
  %20 = getelementptr inbounds %15, %15* %19, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  %22 = ptrtoint i8* %18 to i64
  %23 = ptrtoint i8* %21 to i64
  %24 = sub i64 %22, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sub i32 %26, 1
  %28 = zext i32 %27 to i64
  store i64 %28, i64* %3, align 8
  %29 = load %14*, %14** %2, align 8
  %30 = getelementptr inbounds %14, %14* %29, i32 0, i32 3
  store %15* %30, %15** %7, align 8
  %31 = load %15*, %15** %7, align 8
  %32 = getelementptr inbounds %15, %15* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %8, align 8
  %34 = load %15*, %15** %7, align 8
  %35 = getelementptr inbounds %15, %15* %34, i32 0, i32 3
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = icmp eq i8* %36, %37
  br i1 %38, label %39, label %45

; <label>:39:                                     ; preds = %1
  %40 = load %15*, %15** %7, align 8
  %41 = getelementptr inbounds %15, %15* %40, i32 0, i32 10
  %42 = load i8, i8* %41, align 8
  %43 = and i8 %42, -3
  %44 = or i8 %43, 2
  store i8 %44, i8* %41, align 8
  br label %45

; <label>:45:                                     ; preds = %39, %1
  %46 = load %15*, %15** %7, align 8
  %47 = getelementptr inbounds %15, %15* %46, i32 0, i32 3
  %48 = load i8*, i8** %47, align 8
  %49 = ptrtoint i8* %48 to i64
  %50 = sub i64 %49, 0
  %51 = load %15*, %15** %7, align 8
  %52 = getelementptr inbounds %15, %15* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %50, %54
  %56 = load %15*, %15** %7, align 8
  %57 = getelementptr inbounds %15, %15* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = xor i32 %58, -1
  %60 = sext i32 %59 to i64
  %61 = and i64 %55, %60
  %62 = getelementptr inbounds i8, i8* null, i64 %61
  %63 = load %15*, %15** %7, align 8
  %64 = getelementptr inbounds %15, %15* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = load %15*, %15** %7, align 8
  %66 = getelementptr inbounds %15, %15* %65, i32 0, i32 3
  %67 = load i8*, i8** %66, align 8
  %68 = load %15*, %15** %7, align 8
  %69 = getelementptr inbounds %15, %15* %68, i32 0, i32 1
  %70 = load %16*, %16** %69, align 8
  %71 = bitcast %16* %70 to i8*
  %72 = ptrtoint i8* %67 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = load %15*, %15** %7, align 8
  %76 = getelementptr inbounds %15, %15* %75, i32 0, i32 4
  %77 = load i8*, i8** %76, align 8
  %78 = load %15*, %15** %7, align 8
  %79 = getelementptr inbounds %15, %15* %78, i32 0, i32 1
  %80 = load %16*, %16** %79, align 8
  %81 = bitcast %16* %80 to i8*
  %82 = ptrtoint i8* %77 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  %85 = icmp sgt i64 %74, %84
  br i1 %85, label %86, label %92

; <label>:86:                                     ; preds = %45
  %87 = load %15*, %15** %7, align 8
  %88 = getelementptr inbounds %15, %15* %87, i32 0, i32 4
  %89 = load i8*, i8** %88, align 8
  %90 = load %15*, %15** %7, align 8
  %91 = getelementptr inbounds %15, %15* %90, i32 0, i32 3
  store i8* %89, i8** %91, align 8
  br label %92

; <label>:92:                                     ; preds = %86, %45
  %93 = load %15*, %15** %7, align 8
  %94 = getelementptr inbounds %15, %15* %93, i32 0, i32 3
  %95 = load i8*, i8** %94, align 8
  %96 = load %15*, %15** %7, align 8
  %97 = getelementptr inbounds %15, %15* %96, i32 0, i32 2
  store i8* %95, i8** %97, align 8
  %98 = load i8*, i8** %8, align 8
  store i8* %98, i8** %9, align 8
  %99 = load i8*, i8** %9, align 8
  store i8* %99, i8** %6, align 8
  %100 = load %14*, %14** %2, align 8
  %101 = getelementptr inbounds %14, %14* %100, i32 0, i32 4
  store %15* %101, %15** %10, align 8
  %102 = load %15*, %15** %10, align 8
  %103 = getelementptr inbounds %15, %15* %102, i32 0, i32 3
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 8
  %106 = load %15*, %15** %10, align 8
  %107 = getelementptr inbounds %15, %15* %106, i32 0, i32 4
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ugt i8* %105, %108
  br i1 %109, label %110, label %112

; <label>:110:                                    ; preds = %92
  %111 = load %15*, %15** %10, align 8
  call void @_obstack_newchunk(%15* %111, i32 8)
  br label %112

; <label>:112:                                    ; preds = %110, %92
  %113 = load %15*, %15** %10, align 8
  store %15* %113, %15** %11, align 8
  %114 = load i8*, i8** %6, align 8
  %115 = load %15*, %15** %11, align 8
  %116 = getelementptr inbounds %15, %15* %115, i32 0, i32 3
  %117 = load i8*, i8** %116, align 8
  %118 = bitcast i8* %117 to i8**
  store i8* %114, i8** %118, align 8
  %119 = load %15*, %15** %11, align 8
  %120 = getelementptr inbounds %15, %15* %119, i32 0, i32 3
  %121 = load i8*, i8** %120, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 8
  store i8* %122, i8** %120, align 8
  %123 = load %14*, %14** %2, align 8
  %124 = getelementptr inbounds %14, %14* %123, i32 0, i32 5
  store %15* %124, %15** %12, align 8
  store i32 8, i32* %13, align 4
  %125 = load %15*, %15** %12, align 8
  %126 = getelementptr inbounds %15, %15* %125, i32 0, i32 3
  %127 = load i8*, i8** %126, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = load %15*, %15** %12, align 8
  %132 = getelementptr inbounds %15, %15* %131, i32 0, i32 4
  %133 = load i8*, i8** %132, align 8
  %134 = icmp ugt i8* %130, %133
  br i1 %134, label %135, label %138

; <label>:135:                                    ; preds = %112
  %136 = load %15*, %15** %12, align 8
  %137 = load i32, i32* %13, align 4
  call void @_obstack_newchunk(%15* %136, i32 %137)
  br label %138

; <label>:138:                                    ; preds = %135, %112
  %139 = load %15*, %15** %12, align 8
  %140 = getelementptr inbounds %15, %15* %139, i32 0, i32 3
  %141 = load i8*, i8** %140, align 8
  %142 = bitcast i64* %3 to i8*
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %141, i8* %142, i64 %144, i32 1, i1 false)
  %145 = load i32, i32* %13, align 4
  %146 = load %15*, %15** %12, align 8
  %147 = getelementptr inbounds %15, %15* %146, i32 0, i32 3
  %148 = load i8*, i8** %147, align 8
  %149 = sext i32 %145 to i64
  %150 = getelementptr inbounds i8, i8* %148, i64 %149
  store i8* %150, i8** %147, align 8
  %151 = load %14*, %14** %2, align 8
  %152 = getelementptr inbounds %14, %14* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %152, align 8
  ret void
}

; Function Attrs: nounwind
declare i32 @ferror(%0*) #4

; Function Attrs: noinline nounwind uwtable
define i32 @mkstemp_safer(i8*) #1 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @mkstemp(i8* %3)
  %5 = call i32 @fd_safer(i32 %4)
  ret i32 %5
}

declare i32 @mkstemp(i8*) #2

; Function Attrs: noinline nounwind uwtable
define i32 @dup_safer(i32) #1 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %3, i32 0, i32 3)
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define i32 @fd_safer(i32) #1 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp sle i32 0, %5
  %7 = load i32, i32* %2, align 4
  %8 = icmp sle i32 %7, 2
  %or.cond = and i1 %6, %8
  br i1 %or.cond, label %9, label %19

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @dup_safer(i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = call i32* @__errno_location() #15
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @close(i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = call i32* @__errno_location() #15
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %3, align 4
  store i32 %18, i32* %2, align 4
  br label %19

; <label>:19:                                     ; preds = %9, %1
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define void @version_etc_arn(%0*, i8*, i8*, i8*, i8**, i64) #1 {
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
  %20 = call i32 (%0*, i8*, ...) @fprintf(%0* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @223, i32 0, i32 0), i8* %17, i8* %18, i8* %19)
  br label %25

; <label>:21:                                     ; preds = %6
  %22 = load i8*, i8** %9, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = call i32 (%0*, i8*, ...) @fprintf(%0* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @224, i32 0, i32 0), i8* %22, i8* %23)
  br label %25

; <label>:25:                                     ; preds = %21, %16
  %26 = load %0*, %0** %7, align 8
  %27 = call i32 (%0*, i8*, ...) @fprintf(%0* %26, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @225, i32 0, i32 0), i32 2012)
  %28 = load %0*, %0** %7, align 8
  %29 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([203 x i8], [203 x i8]* @226, i32 0, i32 0), %0* %28)
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
  call void @abort() #12
  unreachable

; <label>:32:                                     ; preds = %25
  %33 = load %0*, %0** %7, align 8
  %34 = load i8**, i8*** %11, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 (%0*, i8*, ...) @fprintf(%0* %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @227, i32 0, i32 0), i8* %36)
  br label %224

; <label>:38:                                     ; preds = %25
  %39 = load %0*, %0** %7, align 8
  %40 = load i8**, i8*** %11, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i8**, i8*** %11, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (%0*, i8*, ...) @fprintf(%0* %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @228, i32 0, i32 0), i8* %42, i8* %45)
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
  %58 = call i32 (%0*, i8*, ...) @fprintf(%0* %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @229, i32 0, i32 0), i8* %51, i8* %54, i8* %57)
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
  %73 = call i32 (%0*, i8*, ...) @fprintf(%0* %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @230, i32 0, i32 0), i8* %63, i8* %66, i8* %69, i8* %72)
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
  %91 = call i32 (%0*, i8*, ...) @fprintf(%0* %75, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @231, i32 0, i32 0), i8* %78, i8* %81, i8* %84, i8* %87, i8* %90)
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
  %112 = call i32 (%0*, i8*, ...) @fprintf(%0* %93, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @232, i32 0, i32 0), i8* %96, i8* %99, i8* %102, i8* %105, i8* %108, i8* %111)
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
  %136 = call i32 (%0*, i8*, ...) @fprintf(%0* %114, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @233, i32 0, i32 0), i8* %117, i8* %120, i8* %123, i8* %126, i8* %129, i8* %132, i8* %135)
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
  %163 = call i32 (%0*, i8*, ...) @fprintf(%0* %138, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @234, i32 0, i32 0), i8* %141, i8* %144, i8* %147, i8* %150, i8* %153, i8* %156, i8* %159, i8* %162)
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
  %193 = call i32 (%0*, i8*, ...) @fprintf(%0* %165, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @235, i32 0, i32 0), i8* %168, i8* %171, i8* %174, i8* %177, i8* %180, i8* %183, i8* %186, i8* %189, i8* %192)
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
  %223 = call i32 (%0*, i8*, ...) @fprintf(%0* %195, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @236, i32 0, i32 0), i8* %198, i8* %201, i8* %204, i8* %207, i8* %210, i8* %213, i8* %216, i8* %219, i8* %222)
  br label %224

; <label>:224:                                    ; preds = %194, %164, %137, %113, %92, %74, %59, %47, %38, %32
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @version_etc_va(%0*, i8*, i8*, i8*, %44*) #1 {
  %6 = alloca %0*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %44*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [10 x i8*], align 16
  store %0* %0, %0** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store %44* %4, %44** %10, align 8
  store i64 0, i64* %11, align 8
  br label %13

; <label>:13:                                     ; preds = %38, %5
  %14 = load i64, i64* %11, align 8
  %15 = icmp ult i64 %14, 10
  br i1 %15, label %16, label %.critedge

; <label>:16:                                     ; preds = %13
  %17 = load %44*, %44** %10, align 8
  %18 = getelementptr inbounds %44, %44* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ule i32 %19, 40
  br i1 %20, label %21, label %27

; <label>:21:                                     ; preds = %16
  %22 = getelementptr inbounds %44, %44* %17, i32 0, i32 3
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr i8, i8* %23, i32 %19
  %25 = bitcast i8* %24 to i8**
  %26 = add i32 %19, 8
  store i32 %26, i32* %18, align 8
  br label %32

; <label>:27:                                     ; preds = %16
  %28 = getelementptr inbounds %44, %44* %17, i32 0, i32 2
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

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: noinline nounwind uwtable
define noalias i8* @xnmalloc(i64, i64) #1 {
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
  call void @xalloc_die() #14
  unreachable

; <label>:10:                                     ; preds = %2
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* %4, align 8
  %13 = mul i64 %11, %12
  %14 = call noalias i8* @xmalloc(i64 %13)
  ret i8* %14
}

; Function Attrs: noinline nounwind uwtable
define noalias i8* @xmalloc(i64) #1 {
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
  call void @xalloc_die() #14
  unreachable

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** %3, align 8
  ret i8* %12
}

; Function Attrs: noinline nounwind uwtable
define i8* @xrealloc(i8*, i64) #1 {
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
  call void @xalloc_die() #14
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
declare i8* @realloc(i8*, i64) #4

; Function Attrs: noinline nounwind uwtable
define i8* @x2nrealloc(i8*, i64*, i64) #1 {
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
  call void @xalloc_die() #14
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
define noalias i8* @xcharalloc(i64) #1 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call noalias i8* @xmalloc(i64 %3)
  ret i8* %4
}

; Function Attrs: noinline nounwind uwtable
define noalias i8* @xcalloc(i64, i64) #1 {
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
  call void @xalloc_die() #14
  unreachable

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %5, align 8
  ret i8* %12
}

; Function Attrs: noinline nounwind uwtable
define noalias i8* @xmemdup(i8*, i64) #1 {
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

; Function Attrs: noinline noreturn nounwind uwtable
define void @xalloc_die() #0 {
  %1 = load volatile i32, i32* @exit_failure, align 4
  call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @243, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @244, i32 0, i32 0))
  call void @abort() #12
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal void @388(i32, i8*, i64, i8*, i64) #1 {
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
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @245, i32 0, i32 0))
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @246, i32 0, i32 0))
  %12 = load volatile i32, i32* @exit_failure, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = call i8* @quotearg_n_style_mem(i32 0, i32 6, i8* %13, i64 %14)
  %16 = load i8*, i8** %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = call i8* @quotearg_n_style_mem(i32 1, i32 6, i8* %16, i64 %17)
  call void (i32, i32, i8*, ...) @error(i32 %12, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @247, i32 0, i32 0), i8* %15, i8* %18)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @xmemcoll0(i8*, i64, i8*, i64) #1 {
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
  call void @388(i32 %21, i8* %22, i64 %24, i8* %25, i64 %27)
  br label %28

; <label>:28:                                     ; preds = %20, %4
  %29 = load i32, i32* %9, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind uwtable
define i32 @xnanosleep(double) #1 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca %38, align 8
  store double %0, double* %3, align 8
  %5 = load double, double* %3, align 8
  %6 = call { i64, i64 } @dtotimespec(double %5)
  %7 = bitcast %38* %4 to { i64, i64 }*
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 0
  %9 = extractvalue { i64, i64 } %6, 0
  store i64 %9, i64* %8, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 1
  %11 = extractvalue { i64, i64 } %6, 1
  store i64 %11, i64* %10, align 8
  br label %12

; <label>:12:                                     ; preds = %25, %1
  %13 = call i32* @__errno_location() #15
  store i32 0, i32* %13, align 4
  %14 = call i32 @rpl_nanosleep(%38* %4, %38* null)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %26, label %16

; <label>:16:                                     ; preds = %12
  %17 = call i32* @__errno_location() #15
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 4
  br i1 %19, label %20, label %25

; <label>:20:                                     ; preds = %16
  %21 = call i32* @__errno_location() #15
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %20
  store i32 -1, i32* %2, align 4
  br label %27

; <label>:25:                                     ; preds = %20, %16
  br label %12

; <label>:26:                                     ; preds = %12
  store i32 0, i32* %2, align 4
  br label %27

; <label>:27:                                     ; preds = %26, %24
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind uwtable
define i32 @xstrtoul(i8*, i8**, i32, i64*, i8*) #1 {
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
  call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @248, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @249, i32 0, i32 0), i32 96, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @250, i32 0, i32 0)) #12
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
  %79 = call i8* @strchr(i8* %74, i32 %78) #13
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
  %112 = call i8* @strchr(i8* %107, i32 %111) #13
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
  %121 = call i8* @strchr(i8* %120, i32 48) #13
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
  %150 = call i32 @389(i64* %14, i32 512)
  store i32 %150, i32* %20, align 4
  br label %185

; <label>:151:                                    ; preds = %144
  %152 = call i32 @389(i64* %14, i32 1024)
  store i32 %152, i32* %20, align 4
  br label %185

; <label>:153:                                    ; preds = %144
  store i32 0, i32* %20, align 4
  br label %185

; <label>:154:                                    ; preds = %144
  %155 = load i32, i32* %18, align 4
  %156 = call i32 @390(i64* %14, i32 %155, i32 6)
  store i32 %156, i32* %20, align 4
  br label %185

; <label>:157:                                    ; preds = %144, %144
  %158 = load i32, i32* %18, align 4
  %159 = call i32 @390(i64* %14, i32 %158, i32 3)
  store i32 %159, i32* %20, align 4
  br label %185

; <label>:160:                                    ; preds = %144, %144
  %161 = load i32, i32* %18, align 4
  %162 = call i32 @390(i64* %14, i32 %161, i32 1)
  store i32 %162, i32* %20, align 4
  br label %185

; <label>:163:                                    ; preds = %144, %144
  %164 = load i32, i32* %18, align 4
  %165 = call i32 @390(i64* %14, i32 %164, i32 2)
  store i32 %165, i32* %20, align 4
  br label %185

; <label>:166:                                    ; preds = %144
  %167 = load i32, i32* %18, align 4
  %168 = call i32 @390(i64* %14, i32 %167, i32 5)
  store i32 %168, i32* %20, align 4
  br label %185

; <label>:169:                                    ; preds = %144, %144
  %170 = load i32, i32* %18, align 4
  %171 = call i32 @390(i64* %14, i32 %170, i32 4)
  store i32 %171, i32* %20, align 4
  br label %185

; <label>:172:                                    ; preds = %144
  %173 = call i32 @389(i64* %14, i32 2)
  store i32 %173, i32* %20, align 4
  br label %185

; <label>:174:                                    ; preds = %144
  %175 = load i32, i32* %18, align 4
  %176 = call i32 @390(i64* %14, i32 %175, i32 8)
  store i32 %176, i32* %20, align 4
  br label %185

; <label>:177:                                    ; preds = %144
  %178 = load i32, i32* %18, align 4
  %179 = call i32 @390(i64* %14, i32 %178, i32 7)
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
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

; Function Attrs: noinline nounwind uwtable
define internal i32 @389(i64*, i32) #1 {
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
define internal i32 @390(i64*, i32, i32) #1 {
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
  %15 = call i32 @389(i64* %13, i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %7, align 4
  br label %8

; <label>:18:                                     ; preds = %8
  %19 = load i32, i32* %7, align 4
  ret i32 %19
}

; Function Attrs: noinline noreturn nounwind uwtable
define void @xstrtol_fatal(i32, i32, i8 signext, %3*, i8*) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca %3*, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8 %2, i8* %8, align 1
  store %3* %3, %3** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i8, i8* %8, align 1
  %14 = load %3*, %3** %9, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = load volatile i32, i32* @exit_failure, align 4
  call void @391(i32 %11, i32 %12, i8 signext %13, %3* %14, i8* %15, i32 %16)
  call void @abort() #12
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal void @391(i32, i32, i8 signext, %3*, i8*, i32) #1 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca %3*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca [2 x i8], align 1
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8 %2, i8* %9, align 1
  store %3* %3, %3** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @251, i32 0, i32 0), i8** %13, align 8
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %18 [
    i32 4, label %19
    i32 2, label %20
    i32 3, label %20
    i32 1, label %21
  ]

; <label>:18:                                     ; preds = %6
  call void @abort() #12
  unreachable

; <label>:19:                                     ; preds = %6
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @252, i32 0, i32 0), i8** %14, align 8
  br label %22

; <label>:20:                                     ; preds = %6, %6
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @253, i32 0, i32 0), i8** %14, align 8
  br label %22

; <label>:21:                                     ; preds = %6
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @254, i32 0, i32 0), i8** %14, align 8
  br label %22

; <label>:22:                                     ; preds = %21, %20, %19
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %35

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* %8, align 4
  %27 = load i8*, i8** %13, align 8
  %28 = sext i32 %26 to i64
  %29 = sub i64 0, %28
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  store i8* %30, i8** %13, align 8
  %31 = load i8, i8* %9, align 1
  %32 = getelementptr inbounds [2 x i8], [2 x i8]* %16, i64 0, i64 0
  store i8 %31, i8* %32, align 1
  %33 = getelementptr inbounds [2 x i8], [2 x i8]* %16, i64 0, i64 1
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds [2 x i8], [2 x i8]* %16, i32 0, i32 0
  store i8* %34, i8** %15, align 8
  br label %42

; <label>:35:                                     ; preds = %22
  %36 = load %3*, %3** %10, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %3, %3* %36, i64 %38
  %40 = getelementptr inbounds %3, %3* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %15, align 8
  br label %42

; <label>:42:                                     ; preds = %35, %25
  %43 = load i32, i32* %12, align 4
  %44 = load i8*, i8** %14, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = load i8*, i8** %15, align 8
  %47 = load i8*, i8** %11, align 8
  call void (i32, i32, i8*, ...) @error(i32 %43, i32 0, i8* %44, i8* %45, i8* %46, i8* %47)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @xstrtoumax(i8*, i8**, i32, i64*, i8*) #1 {
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
  call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @255, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @256, i32 0, i32 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @257, i32 0, i32 0)) #12
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
  %59 = call i64 @strtoumax(i8* %56, i8** %57, i32 %58) #11
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
  %79 = call i8* @strchr(i8* %74, i32 %78) #13
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
  %112 = call i8* @strchr(i8* %107, i32 %111) #13
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
  %121 = call i8* @strchr(i8* %120, i32 48) #13
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
  %150 = call i32 @392(i64* %14, i32 512)
  store i32 %150, i32* %20, align 4
  br label %185

; <label>:151:                                    ; preds = %144
  %152 = call i32 @392(i64* %14, i32 1024)
  store i32 %152, i32* %20, align 4
  br label %185

; <label>:153:                                    ; preds = %144
  store i32 0, i32* %20, align 4
  br label %185

; <label>:154:                                    ; preds = %144
  %155 = load i32, i32* %18, align 4
  %156 = call i32 @393(i64* %14, i32 %155, i32 6)
  store i32 %156, i32* %20, align 4
  br label %185

; <label>:157:                                    ; preds = %144, %144
  %158 = load i32, i32* %18, align 4
  %159 = call i32 @393(i64* %14, i32 %158, i32 3)
  store i32 %159, i32* %20, align 4
  br label %185

; <label>:160:                                    ; preds = %144, %144
  %161 = load i32, i32* %18, align 4
  %162 = call i32 @393(i64* %14, i32 %161, i32 1)
  store i32 %162, i32* %20, align 4
  br label %185

; <label>:163:                                    ; preds = %144, %144
  %164 = load i32, i32* %18, align 4
  %165 = call i32 @393(i64* %14, i32 %164, i32 2)
  store i32 %165, i32* %20, align 4
  br label %185

; <label>:166:                                    ; preds = %144
  %167 = load i32, i32* %18, align 4
  %168 = call i32 @393(i64* %14, i32 %167, i32 5)
  store i32 %168, i32* %20, align 4
  br label %185

; <label>:169:                                    ; preds = %144, %144
  %170 = load i32, i32* %18, align 4
  %171 = call i32 @393(i64* %14, i32 %170, i32 4)
  store i32 %171, i32* %20, align 4
  br label %185

; <label>:172:                                    ; preds = %144
  %173 = call i32 @392(i64* %14, i32 2)
  store i32 %173, i32* %20, align 4
  br label %185

; <label>:174:                                    ; preds = %144
  %175 = load i32, i32* %18, align 4
  %176 = call i32 @393(i64* %14, i32 %175, i32 8)
  store i32 %176, i32* %20, align 4
  br label %185

; <label>:177:                                    ; preds = %144
  %178 = load i32, i32* %18, align 4
  %179 = call i32 @393(i64* %14, i32 %178, i32 7)
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

; Function Attrs: nounwind
declare i64 @strtoumax(i8*, i8**, i32) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @392(i64*, i32) #1 {
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
define internal i32 @393(i64*, i32, i32) #1 {
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
  %15 = call i32 @392(i64* %13, i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %7, align 4
  br label %8

; <label>:18:                                     ; preds = %8
  %19 = load i32, i32* %7, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define i32 @rpl_fclose(%0* nonnull) #1 {
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

declare i32 @fclose(%0*) #2

; Function Attrs: nounwind
declare i32 @__freading(%0*) #4

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #4

; Function Attrs: noinline nounwind uwtable
define i32 @rpl_fcntl(i32, i32, ...) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [1 x %44], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %6, align 4
  %11 = getelementptr inbounds [1 x %44], [1 x %44]* %5, i32 0, i32 0
  %12 = bitcast %44* %11 to i8*
  call void @llvm.va_start(i8* %12)
  %13 = load i32, i32* %4, align 4
  %cond = icmp eq i32 %13, 1030
  %14 = getelementptr inbounds [1 x %44], [1 x %44]* %5, i32 0, i32 0
  %15 = getelementptr inbounds %44, %44* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 16
  %17 = icmp ule i32 %16, 40
  br i1 %cond, label %18, label %80

; <label>:18:                                     ; preds = %2
  br i1 %17, label %19, label %25

; <label>:19:                                     ; preds = %18
  %20 = getelementptr inbounds %44, %44* %14, i32 0, i32 3
  %21 = load i8*, i8** %20, align 16
  %22 = getelementptr i8, i8* %21, i32 %16
  %23 = bitcast i8* %22 to i32*
  %24 = add i32 %16, 8
  store i32 %24, i32* %15, align 16
  br label %30

; <label>:25:                                     ; preds = %18
  %26 = getelementptr inbounds %44, %44* %14, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = bitcast i8* %27 to i32*
  %29 = getelementptr i8, i8* %27, i32 8
  store i8* %29, i8** %26, align 8
  br label %30

; <label>:30:                                     ; preds = %25, %19
  %31 = phi i32* [ %23, %19 ], [ %28, %25 ]
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @258, align 4
  %34 = icmp sle i32 0, %33
  %35 = load i32, i32* %3, align 4
  br i1 %34, label %36, label %54

; <label>:36:                                     ; preds = %30
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 (i32, i32, ...) @fcntl(i32 %35, i32 %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp sle i32 0, %40
  br i1 %41, label %46, label %42

; <label>:42:                                     ; preds = %36
  %43 = call i32* @__errno_location() #15
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 22
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %42, %36
  store i32 1, i32* @258, align 4
  br label %57

; <label>:47:                                     ; preds = %42
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %48, i32 0, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %99, label %53

; <label>:53:                                     ; preds = %47
  store i32 -1, i32* @258, align 4
  br label %57

; <label>:54:                                     ; preds = %30
  %55 = load i32, i32* %7, align 4
  %56 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %35, i32 0, i32 %55)
  store i32 %56, i32* %6, align 4
  br label %57

; <label>:57:                                     ; preds = %46, %53, %54
  %58 = load i32, i32* %6, align 4
  %59 = icmp sle i32 0, %58
  %60 = load i32, i32* @258, align 4
  %61 = icmp eq i32 %60, -1
  %or.cond = and i1 %59, %61
  br i1 %or.cond, label %62, label %99

; <label>:62:                                     ; preds = %57
  %63 = load i32, i32* %6, align 4
  %64 = call i32 (i32, i32, ...) @fcntl(i32 %63, i32 1)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %73, label %67

; <label>:67:                                     ; preds = %62
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %8, align 4
  %70 = or i32 %69, 1
  %71 = call i32 (i32, i32, ...) @fcntl(i32 %68, i32 2, i32 %70)
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %99

; <label>:73:                                     ; preds = %67, %62
  %74 = call i32* @__errno_location() #15
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @close(i32 %76)
  %78 = load i32, i32* %9, align 4
  %79 = call i32* @__errno_location() #15
  store i32 %78, i32* %79, align 4
  store i32 -1, i32* %6, align 4
  br label %99

; <label>:80:                                     ; preds = %2
  br i1 %17, label %81, label %87

; <label>:81:                                     ; preds = %80
  %82 = getelementptr inbounds %44, %44* %14, i32 0, i32 3
  %83 = load i8*, i8** %82, align 16
  %84 = getelementptr i8, i8* %83, i32 %16
  %85 = bitcast i8* %84 to i8**
  %86 = add i32 %16, 8
  store i32 %86, i32* %15, align 16
  br label %92

; <label>:87:                                     ; preds = %80
  %88 = getelementptr inbounds %44, %44* %14, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = bitcast i8* %89 to i8**
  %91 = getelementptr i8, i8* %89, i32 8
  store i8* %91, i8** %88, align 8
  br label %92

; <label>:92:                                     ; preds = %87, %81
  %93 = phi i8** [ %85, %81 ], [ %90, %87 ]
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %10, align 8
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* %4, align 4
  %97 = load i8*, i8** %10, align 8
  %98 = call i32 (i32, i32, ...) @fcntl(i32 %95, i32 %96, i8* %97)
  store i32 %98, i32* %6, align 4
  br label %99

; <label>:99:                                     ; preds = %57, %73, %67, %47, %92
  %100 = getelementptr inbounds [1 x %44], [1 x %44]* %5, i32 0, i32 0
  %101 = bitcast %44* %100 to i8*
  call void @llvm.va_end(i8* %101)
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare i32 @fcntl(i32, i32, ...) #2

; Function Attrs: noinline nounwind uwtable
define i32 @rpl_fflush(%0*) #1 {
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
  call void @394(%0* %14)
  %15 = load %0*, %0** %3, align 8
  %16 = call i32 @fflush(%0* %15)
  store i32 %16, i32* %2, align 4
  br label %17

; <label>:17:                                     ; preds = %13, %10
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare i32 @fflush(%0*) #2

; Function Attrs: noinline nounwind uwtable
define internal void @394(%0*) #1 {
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
define i32 @rpl_fseeko(%0* nonnull, i64, i32) #1 {
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

declare i32 @fseeko(%0*, i64, i32) #2

; Function Attrs: noinline nounwind uwtable
define i32 @rpl_nanosleep(%38* nonnull, %38*) #1 {
  %3 = alloca i32, align 4
  %4 = alloca %38*, align 8
  %5 = alloca %38*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %38, align 8
  %8 = alloca i32, align 4
  store %38* %0, %38** %4, align 8
  store %38* %1, %38** %5, align 8
  %9 = load %38*, %38** %4, align 8
  %10 = getelementptr inbounds %38, %38* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %18, label %13

; <label>:13:                                     ; preds = %2
  %14 = load %38*, %38** %4, align 8
  %15 = getelementptr inbounds %38, %38* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp sle i64 1000000000, %16
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %13, %2
  %19 = call i32* @__errno_location() #15
  store i32 22, i32* %19, align 4
  store i32 -1, i32* %3, align 4
  br label %57

; <label>:20:                                     ; preds = %13
  %21 = load %38*, %38** %4, align 8
  %22 = getelementptr inbounds %38, %38* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %6, align 8
  %24 = load %38*, %38** %4, align 8
  %25 = getelementptr inbounds %38, %38* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %38, %38* %7, i32 0, i32 1
  store i64 %26, i64* %27, align 8
  br label %28

; <label>:28:                                     ; preds = %50, %20
  %29 = load i64, i64* %6, align 8
  %30 = icmp slt i64 2073600, %29
  br i1 %30, label %31, label %52

; <label>:31:                                     ; preds = %28
  %32 = getelementptr inbounds %38, %38* %7, i32 0, i32 0
  store i64 2073600, i64* %32, align 8
  %33 = load %38*, %38** %5, align 8
  %34 = call i32 @nanosleep(%38* %7, %38* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i64, i64* %6, align 8
  %36 = sub nsw i64 %35, 2073600
  store i64 %36, i64* %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

; <label>:39:                                     ; preds = %31
  %40 = load %38*, %38** %5, align 8
  %41 = icmp ne %38* %40, null
  br i1 %41, label %42, label %48

; <label>:42:                                     ; preds = %39
  %43 = load i64, i64* %6, align 8
  %44 = load %38*, %38** %5, align 8
  %45 = getelementptr inbounds %38, %38* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, %43
  store i64 %47, i64* %45, align 8
  br label %48

; <label>:48:                                     ; preds = %42, %39
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %57

; <label>:50:                                     ; preds = %31
  %51 = getelementptr inbounds %38, %38* %7, i32 0, i32 1
  store i64 0, i64* %51, align 8
  br label %28

; <label>:52:                                     ; preds = %28
  %53 = load i64, i64* %6, align 8
  %54 = getelementptr inbounds %38, %38* %7, i32 0, i32 0
  store i64 %53, i64* %54, align 8
  %55 = load %38*, %38** %5, align 8
  %56 = call i32 @nanosleep(%38* %7, %38* %55)
  store i32 %56, i32* %3, align 4
  br label %57

; <label>:57:                                     ; preds = %52, %48, %18
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare i32 @nanosleep(%38*, %38*) #2

; Function Attrs: noinline nounwind readonly uwtable
define i32 @strnumcmp(i8*, i8*, i32, i32) #8 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @395(i8* %9, i8* %10, i32 %11, i32 %12) #13
  ret i32 %13
}

; Function Attrs: noinline nounwind readonly uwtable
define internal i32 @395(i8*, i8*, i32, i32) #8 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = load i8, i8* %15, align 1
  store i8 %16, i8* %10, align 1
  %17 = load i8*, i8** %7, align 8
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %11, align 1
  %19 = load i8, i8* %10, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 45
  br i1 %21, label %22, label %216

; <label>:22:                                     ; preds = %4
  br label %23

.critedge:                                        ; preds = %23
  br label %23

; <label>:23:                                     ; preds = %.critedge, %30, %22
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  store i8 %26, i8* %10, align 1
  %27 = load i8, i8* %10, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, 48
  br i1 %29, label %.critedge, label %30

; <label>:30:                                     ; preds = %23
  %31 = load i8, i8* %10, align 1
  %32 = zext i8 %31 to i32
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %23, label %35

; <label>:35:                                     ; preds = %30
  %36 = load i8, i8* %11, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp ne i32 %37, 45
  br i1 %38, label %39, label %91

; <label>:39:                                     ; preds = %35
  %40 = load i8, i8* %10, align 1
  %41 = zext i8 %40 to i32
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %52

; <label>:44:                                     ; preds = %39
  br label %45

; <label>:45:                                     ; preds = %45, %44
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %6, align 8
  %48 = load i8, i8* %47, align 1
  store i8 %48, i8* %10, align 1
  %49 = load i8, i8* %10, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %50, 48
  br i1 %51, label %45, label %52

; <label>:52:                                     ; preds = %45, %39
  %53 = load i8, i8* %10, align 1
  %54 = zext i8 %53 to i32
  %55 = sub i32 %54, 48
  %56 = icmp ule i32 %55, 9
  br i1 %56, label %57, label %58

; <label>:57:                                     ; preds = %52
  store i32 -1, i32* %5, align 4
  br label %422

; <label>:58:                                     ; preds = %52
  br label %59

; <label>:59:                                     ; preds = %.critedge1, %58
  %60 = load i8, i8* %11, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 48
  br i1 %62, label %.critedge1, label %63

; <label>:63:                                     ; preds = %59
  %64 = load i8, i8* %11, align 1
  %65 = zext i8 %64 to i32
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %.critedge1, label %71

.critedge1:                                       ; preds = %59, %63
  %68 = load i8*, i8** %7, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %7, align 8
  %70 = load i8, i8* %69, align 1
  store i8 %70, i8* %11, align 1
  br label %59

; <label>:71:                                     ; preds = %63
  %72 = load i8, i8* %11, align 1
  %73 = zext i8 %72 to i32
  %74 = load i32, i32* %8, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %84

; <label>:76:                                     ; preds = %71
  br label %77

; <label>:77:                                     ; preds = %77, %76
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %7, align 8
  %80 = load i8, i8* %79, align 1
  store i8 %80, i8* %11, align 1
  %81 = load i8, i8* %11, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp eq i32 %82, 48
  br i1 %83, label %77, label %84

; <label>:84:                                     ; preds = %77, %71
  %85 = load i8, i8* %11, align 1
  %86 = zext i8 %85 to i32
  %87 = sub i32 %86, 48
  %88 = icmp ule i32 %87, 9
  %89 = zext i1 %88 to i32
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  br label %422

; <label>:91:                                     ; preds = %35
  br label %92

.critedge2:                                       ; preds = %92
  br label %92

; <label>:92:                                     ; preds = %.critedge2, %99, %91
  %93 = load i8*, i8** %7, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %7, align 8
  %95 = load i8, i8* %94, align 1
  store i8 %95, i8* %11, align 1
  %96 = load i8, i8* %11, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp eq i32 %97, 48
  br i1 %98, label %.critedge2, label %99

; <label>:99:                                     ; preds = %92
  %100 = load i8, i8* %11, align 1
  %101 = zext i8 %100 to i32
  %102 = load i32, i32* %9, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %92, label %104

; <label>:104:                                    ; preds = %99
  br label %105

; <label>:105:                                    ; preds = %134, %104
  %106 = load i8, i8* %10, align 1
  %107 = zext i8 %106 to i32
  %108 = load i8, i8* %11, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp eq i32 %107, %109
  br i1 %110, label %111, label %.critedge3

; <label>:111:                                    ; preds = %105
  %112 = load i8, i8* %10, align 1
  %113 = zext i8 %112 to i32
  %114 = sub i32 %113, 48
  %115 = icmp ule i32 %114, 9
  br i1 %115, label %116, label %.critedge3

; <label>:116:                                    ; preds = %111
  br label %117

; <label>:117:                                    ; preds = %117, %116
  %118 = load i8*, i8** %6, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %6, align 8
  %120 = load i8, i8* %119, align 1
  store i8 %120, i8* %10, align 1
  %121 = load i8, i8* %10, align 1
  %122 = zext i8 %121 to i32
  %123 = load i32, i32* %9, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %117, label %125

; <label>:125:                                    ; preds = %117
  br label %126

; <label>:126:                                    ; preds = %126, %125
  %127 = load i8*, i8** %7, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %7, align 8
  %129 = load i8, i8* %128, align 1
  store i8 %129, i8* %11, align 1
  %130 = load i8, i8* %11, align 1
  %131 = zext i8 %130 to i32
  %132 = load i32, i32* %9, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %126, label %134

; <label>:134:                                    ; preds = %126
  br label %105

.critedge3:                                       ; preds = %105, %111
  %135 = load i8, i8* %10, align 1
  %136 = zext i8 %135 to i32
  %137 = load i32, i32* %8, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %144

; <label>:139:                                    ; preds = %.critedge3
  %140 = load i8, i8* %11, align 1
  %141 = zext i8 %140 to i32
  %142 = sub i32 %141, 48
  %143 = icmp ule i32 %142, 9
  br i1 %143, label %144, label %154

; <label>:144:                                    ; preds = %139, %.critedge3
  %145 = load i8, i8* %11, align 1
  %146 = zext i8 %145 to i32
  %147 = load i32, i32* %8, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %160

; <label>:149:                                    ; preds = %144
  %150 = load i8, i8* %10, align 1
  %151 = zext i8 %150 to i32
  %152 = sub i32 %151, 48
  %153 = icmp ule i32 %152, 9
  br i1 %153, label %160, label %154

; <label>:154:                                    ; preds = %149, %139
  %155 = load i8*, i8** %7, align 8
  %156 = load i8*, i8** %6, align 8
  %157 = load i32, i32* %8, align 4
  %158 = trunc i32 %157 to i8
  %159 = call i32 @396(i8* %155, i8* %156, i8 signext %158) #13
  store i32 %159, i32* %5, align 4
  br label %422

; <label>:160:                                    ; preds = %149, %144
  %161 = load i8, i8* %11, align 1
  %162 = zext i8 %161 to i32
  %163 = load i8, i8* %10, align 1
  %164 = zext i8 %163 to i32
  %165 = sub nsw i32 %162, %164
  store i32 %165, i32* %12, align 4
  store i64 0, i64* %13, align 8
  br label %166

; <label>:166:                                    ; preds = %180, %160
  %167 = load i8, i8* %10, align 1
  %168 = zext i8 %167 to i32
  %169 = sub i32 %168, 48
  %170 = icmp ule i32 %169, 9
  br i1 %170, label %171, label %183

; <label>:171:                                    ; preds = %166
  br label %172

; <label>:172:                                    ; preds = %172, %171
  %173 = load i8*, i8** %6, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %6, align 8
  %175 = load i8, i8* %174, align 1
  store i8 %175, i8* %10, align 1
  %176 = load i8, i8* %10, align 1
  %177 = zext i8 %176 to i32
  %178 = load i32, i32* %9, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %172, label %180

; <label>:180:                                    ; preds = %172
  %181 = load i64, i64* %13, align 8
  %182 = add i64 %181, 1
  store i64 %182, i64* %13, align 8
  br label %166

; <label>:183:                                    ; preds = %166
  store i64 0, i64* %14, align 8
  br label %184

; <label>:184:                                    ; preds = %198, %183
  %185 = load i8, i8* %11, align 1
  %186 = zext i8 %185 to i32
  %187 = sub i32 %186, 48
  %188 = icmp ule i32 %187, 9
  br i1 %188, label %189, label %201

; <label>:189:                                    ; preds = %184
  br label %190

; <label>:190:                                    ; preds = %190, %189
  %191 = load i8*, i8** %7, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %7, align 8
  %193 = load i8, i8* %192, align 1
  store i8 %193, i8* %11, align 1
  %194 = load i8, i8* %11, align 1
  %195 = zext i8 %194 to i32
  %196 = load i32, i32* %9, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %190, label %198

; <label>:198:                                    ; preds = %190
  %199 = load i64, i64* %14, align 8
  %200 = add i64 %199, 1
  store i64 %200, i64* %14, align 8
  br label %184

; <label>:201:                                    ; preds = %184
  %202 = load i64, i64* %13, align 8
  %203 = load i64, i64* %14, align 8
  %204 = icmp ne i64 %202, %203
  %205 = load i64, i64* %13, align 8
  br i1 %204, label %206, label %211

; <label>:206:                                    ; preds = %201
  %207 = load i64, i64* %14, align 8
  %208 = icmp ult i64 %205, %207
  %209 = zext i1 %208 to i64
  %210 = select i1 %208, i32 1, i32 -1
  store i32 %210, i32* %5, align 4
  br label %422

; <label>:211:                                    ; preds = %201
  %212 = icmp ne i64 %205, 0
  br i1 %212, label %214, label %213

; <label>:213:                                    ; preds = %211
  store i32 0, i32* %5, align 4
  br label %422

; <label>:214:                                    ; preds = %211
  %215 = load i32, i32* %12, align 4
  store i32 %215, i32* %5, align 4
  br label %422

; <label>:216:                                    ; preds = %4
  %217 = load i8, i8* %11, align 1
  %218 = zext i8 %217 to i32
  %219 = icmp eq i32 %218, 45
  br i1 %219, label %220, label %284

; <label>:220:                                    ; preds = %216
  br label %221

.critedge4:                                       ; preds = %221
  br label %221

; <label>:221:                                    ; preds = %.critedge4, %228, %220
  %222 = load i8*, i8** %7, align 8
  %223 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %223, i8** %7, align 8
  %224 = load i8, i8* %223, align 1
  store i8 %224, i8* %11, align 1
  %225 = load i8, i8* %11, align 1
  %226 = zext i8 %225 to i32
  %227 = icmp eq i32 %226, 48
  br i1 %227, label %.critedge4, label %228

; <label>:228:                                    ; preds = %221
  %229 = load i8, i8* %11, align 1
  %230 = zext i8 %229 to i32
  %231 = load i32, i32* %9, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %221, label %233

; <label>:233:                                    ; preds = %228
  %234 = load i8, i8* %11, align 1
  %235 = zext i8 %234 to i32
  %236 = load i32, i32* %8, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %246

; <label>:238:                                    ; preds = %233
  br label %239

; <label>:239:                                    ; preds = %239, %238
  %240 = load i8*, i8** %7, align 8
  %241 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %241, i8** %7, align 8
  %242 = load i8, i8* %241, align 1
  store i8 %242, i8* %11, align 1
  %243 = load i8, i8* %11, align 1
  %244 = zext i8 %243 to i32
  %245 = icmp eq i32 %244, 48
  br i1 %245, label %239, label %246

; <label>:246:                                    ; preds = %239, %233
  %247 = load i8, i8* %11, align 1
  %248 = zext i8 %247 to i32
  %249 = sub i32 %248, 48
  %250 = icmp ule i32 %249, 9
  br i1 %250, label %251, label %252

; <label>:251:                                    ; preds = %246
  store i32 1, i32* %5, align 4
  br label %422

; <label>:252:                                    ; preds = %246
  br label %253

; <label>:253:                                    ; preds = %.critedge5, %252
  %254 = load i8, i8* %10, align 1
  %255 = zext i8 %254 to i32
  %256 = icmp eq i32 %255, 48
  br i1 %256, label %.critedge5, label %257

; <label>:257:                                    ; preds = %253
  %258 = load i8, i8* %10, align 1
  %259 = zext i8 %258 to i32
  %260 = load i32, i32* %9, align 4
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %.critedge5, label %265

.critedge5:                                       ; preds = %253, %257
  %262 = load i8*, i8** %6, align 8
  %263 = getelementptr inbounds i8, i8* %262, i32 1
  store i8* %263, i8** %6, align 8
  %264 = load i8, i8* %263, align 1
  store i8 %264, i8* %10, align 1
  br label %253

; <label>:265:                                    ; preds = %257
  %266 = load i8, i8* %10, align 1
  %267 = zext i8 %266 to i32
  %268 = load i32, i32* %8, align 4
  %269 = icmp eq i32 %267, %268
  br i1 %269, label %270, label %278

; <label>:270:                                    ; preds = %265
  br label %271

; <label>:271:                                    ; preds = %271, %270
  %272 = load i8*, i8** %6, align 8
  %273 = getelementptr inbounds i8, i8* %272, i32 1
  store i8* %273, i8** %6, align 8
  %274 = load i8, i8* %273, align 1
  store i8 %274, i8* %10, align 1
  %275 = load i8, i8* %10, align 1
  %276 = zext i8 %275 to i32
  %277 = icmp eq i32 %276, 48
  br i1 %277, label %271, label %278

; <label>:278:                                    ; preds = %271, %265
  %279 = load i8, i8* %10, align 1
  %280 = zext i8 %279 to i32
  %281 = sub i32 %280, 48
  %282 = icmp ule i32 %281, 9
  %283 = zext i1 %282 to i32
  store i32 %283, i32* %5, align 4
  br label %422

; <label>:284:                                    ; preds = %216
  br label %285

; <label>:285:                                    ; preds = %.critedge6, %284
  %286 = load i8, i8* %10, align 1
  %287 = zext i8 %286 to i32
  %288 = icmp eq i32 %287, 48
  br i1 %288, label %.critedge6, label %289

; <label>:289:                                    ; preds = %285
  %290 = load i8, i8* %10, align 1
  %291 = zext i8 %290 to i32
  %292 = load i32, i32* %9, align 4
  %293 = icmp eq i32 %291, %292
  br i1 %293, label %.critedge6, label %297

.critedge6:                                       ; preds = %285, %289
  %294 = load i8*, i8** %6, align 8
  %295 = getelementptr inbounds i8, i8* %294, i32 1
  store i8* %295, i8** %6, align 8
  %296 = load i8, i8* %295, align 1
  store i8 %296, i8* %10, align 1
  br label %285

; <label>:297:                                    ; preds = %289
  br label %298

; <label>:298:                                    ; preds = %.critedge7, %297
  %299 = load i8, i8* %11, align 1
  %300 = zext i8 %299 to i32
  %301 = icmp eq i32 %300, 48
  br i1 %301, label %.critedge7, label %302

; <label>:302:                                    ; preds = %298
  %303 = load i8, i8* %11, align 1
  %304 = zext i8 %303 to i32
  %305 = load i32, i32* %9, align 4
  %306 = icmp eq i32 %304, %305
  br i1 %306, label %.critedge7, label %310

.critedge7:                                       ; preds = %298, %302
  %307 = load i8*, i8** %7, align 8
  %308 = getelementptr inbounds i8, i8* %307, i32 1
  store i8* %308, i8** %7, align 8
  %309 = load i8, i8* %308, align 1
  store i8 %309, i8* %11, align 1
  br label %298

; <label>:310:                                    ; preds = %302
  br label %311

; <label>:311:                                    ; preds = %340, %310
  %312 = load i8, i8* %10, align 1
  %313 = zext i8 %312 to i32
  %314 = load i8, i8* %11, align 1
  %315 = zext i8 %314 to i32
  %316 = icmp eq i32 %313, %315
  br i1 %316, label %317, label %.critedge8

; <label>:317:                                    ; preds = %311
  %318 = load i8, i8* %10, align 1
  %319 = zext i8 %318 to i32
  %320 = sub i32 %319, 48
  %321 = icmp ule i32 %320, 9
  br i1 %321, label %322, label %.critedge8

; <label>:322:                                    ; preds = %317
  br label %323

; <label>:323:                                    ; preds = %323, %322
  %324 = load i8*, i8** %6, align 8
  %325 = getelementptr inbounds i8, i8* %324, i32 1
  store i8* %325, i8** %6, align 8
  %326 = load i8, i8* %325, align 1
  store i8 %326, i8* %10, align 1
  %327 = load i8, i8* %10, align 1
  %328 = zext i8 %327 to i32
  %329 = load i32, i32* %9, align 4
  %330 = icmp eq i32 %328, %329
  br i1 %330, label %323, label %331

; <label>:331:                                    ; preds = %323
  br label %332

; <label>:332:                                    ; preds = %332, %331
  %333 = load i8*, i8** %7, align 8
  %334 = getelementptr inbounds i8, i8* %333, i32 1
  store i8* %334, i8** %7, align 8
  %335 = load i8, i8* %334, align 1
  store i8 %335, i8* %11, align 1
  %336 = load i8, i8* %11, align 1
  %337 = zext i8 %336 to i32
  %338 = load i32, i32* %9, align 4
  %339 = icmp eq i32 %337, %338
  br i1 %339, label %332, label %340

; <label>:340:                                    ; preds = %332
  br label %311

.critedge8:                                       ; preds = %311, %317
  %341 = load i8, i8* %10, align 1
  %342 = zext i8 %341 to i32
  %343 = load i32, i32* %8, align 4
  %344 = icmp eq i32 %342, %343
  br i1 %344, label %345, label %350

; <label>:345:                                    ; preds = %.critedge8
  %346 = load i8, i8* %11, align 1
  %347 = zext i8 %346 to i32
  %348 = sub i32 %347, 48
  %349 = icmp ule i32 %348, 9
  br i1 %349, label %350, label %360

; <label>:350:                                    ; preds = %345, %.critedge8
  %351 = load i8, i8* %11, align 1
  %352 = zext i8 %351 to i32
  %353 = load i32, i32* %8, align 4
  %354 = icmp eq i32 %352, %353
  br i1 %354, label %355, label %366

; <label>:355:                                    ; preds = %350
  %356 = load i8, i8* %10, align 1
  %357 = zext i8 %356 to i32
  %358 = sub i32 %357, 48
  %359 = icmp ule i32 %358, 9
  br i1 %359, label %366, label %360

; <label>:360:                                    ; preds = %355, %345
  %361 = load i8*, i8** %6, align 8
  %362 = load i8*, i8** %7, align 8
  %363 = load i32, i32* %8, align 4
  %364 = trunc i32 %363 to i8
  %365 = call i32 @396(i8* %361, i8* %362, i8 signext %364) #13
  store i32 %365, i32* %5, align 4
  br label %422

; <label>:366:                                    ; preds = %355, %350
  %367 = load i8, i8* %10, align 1
  %368 = zext i8 %367 to i32
  %369 = load i8, i8* %11, align 1
  %370 = zext i8 %369 to i32
  %371 = sub nsw i32 %368, %370
  store i32 %371, i32* %12, align 4
  store i64 0, i64* %13, align 8
  br label %372

; <label>:372:                                    ; preds = %386, %366
  %373 = load i8, i8* %10, align 1
  %374 = zext i8 %373 to i32
  %375 = sub i32 %374, 48
  %376 = icmp ule i32 %375, 9
  br i1 %376, label %377, label %389

; <label>:377:                                    ; preds = %372
  br label %378

; <label>:378:                                    ; preds = %378, %377
  %379 = load i8*, i8** %6, align 8
  %380 = getelementptr inbounds i8, i8* %379, i32 1
  store i8* %380, i8** %6, align 8
  %381 = load i8, i8* %380, align 1
  store i8 %381, i8* %10, align 1
  %382 = load i8, i8* %10, align 1
  %383 = zext i8 %382 to i32
  %384 = load i32, i32* %9, align 4
  %385 = icmp eq i32 %383, %384
  br i1 %385, label %378, label %386

; <label>:386:                                    ; preds = %378
  %387 = load i64, i64* %13, align 8
  %388 = add i64 %387, 1
  store i64 %388, i64* %13, align 8
  br label %372

; <label>:389:                                    ; preds = %372
  store i64 0, i64* %14, align 8
  br label %390

; <label>:390:                                    ; preds = %404, %389
  %391 = load i8, i8* %11, align 1
  %392 = zext i8 %391 to i32
  %393 = sub i32 %392, 48
  %394 = icmp ule i32 %393, 9
  br i1 %394, label %395, label %407

; <label>:395:                                    ; preds = %390
  br label %396

; <label>:396:                                    ; preds = %396, %395
  %397 = load i8*, i8** %7, align 8
  %398 = getelementptr inbounds i8, i8* %397, i32 1
  store i8* %398, i8** %7, align 8
  %399 = load i8, i8* %398, align 1
  store i8 %399, i8* %11, align 1
  %400 = load i8, i8* %11, align 1
  %401 = zext i8 %400 to i32
  %402 = load i32, i32* %9, align 4
  %403 = icmp eq i32 %401, %402
  br i1 %403, label %396, label %404

; <label>:404:                                    ; preds = %396
  %405 = load i64, i64* %14, align 8
  %406 = add i64 %405, 1
  store i64 %406, i64* %14, align 8
  br label %390

; <label>:407:                                    ; preds = %390
  %408 = load i64, i64* %13, align 8
  %409 = load i64, i64* %14, align 8
  %410 = icmp ne i64 %408, %409
  %411 = load i64, i64* %13, align 8
  br i1 %410, label %412, label %417

; <label>:412:                                    ; preds = %407
  %413 = load i64, i64* %14, align 8
  %414 = icmp ult i64 %411, %413
  %415 = zext i1 %414 to i64
  %416 = select i1 %414, i32 -1, i32 1
  store i32 %416, i32* %5, align 4
  br label %422

; <label>:417:                                    ; preds = %407
  %418 = icmp ne i64 %411, 0
  br i1 %418, label %420, label %419

; <label>:419:                                    ; preds = %417
  store i32 0, i32* %5, align 4
  br label %422

; <label>:420:                                    ; preds = %417
  %421 = load i32, i32* %12, align 4
  store i32 %421, i32* %5, align 4
  br label %422

; <label>:422:                                    ; preds = %420, %419, %412, %360, %278, %251, %214, %213, %206, %154, %84, %57
  %423 = load i32, i32* %5, align 4
  ret i32 %423
}

; Function Attrs: noinline nounwind readonly uwtable
define internal i32 @396(i8*, i8*, i8 signext) #8 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8 %2, i8* %7, align 1
  %8 = load i8*, i8** %5, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = load i8, i8* %7, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %68

; <label>:14:                                     ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = load i8, i8* %7, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %68

; <label>:21:                                     ; preds = %14
  br label %22

; <label>:22:                                     ; preds = %39, %21
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %5, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %26, %30
  %32 = load i8*, i8** %5, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = sub i32 %34, 48
  %36 = icmp ule i32 %35, 9
  br i1 %31, label %37, label %40

; <label>:37:                                     ; preds = %22
  br i1 %36, label %39, label %38

; <label>:38:                                     ; preds = %37
  store i32 0, i32* %4, align 4
  br label %116

; <label>:39:                                     ; preds = %37
  br label %22

; <label>:40:                                     ; preds = %22
  br i1 %36, label %41, label %55

; <label>:41:                                     ; preds = %40
  %42 = load i8*, i8** %6, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = sub i32 %44, 48
  %46 = icmp ule i32 %45, 9
  br i1 %46, label %47, label %55

; <label>:47:                                     ; preds = %41
  %48 = load i8*, i8** %5, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = load i8*, i8** %6, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = sub nsw i32 %50, %53
  store i32 %54, i32* %4, align 4
  br label %116

; <label>:55:                                     ; preds = %41, %40
  %56 = load i8*, i8** %5, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = sub i32 %58, 48
  %60 = icmp ule i32 %59, 9
  br i1 %60, label %76, label %61

; <label>:61:                                     ; preds = %55
  %62 = load i8*, i8** %6, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = sub i32 %64, 48
  %66 = icmp ule i32 %65, 9
  br i1 %66, label %99, label %67

; <label>:67:                                     ; preds = %61
  store i32 0, i32* %4, align 4
  br label %116

; <label>:68:                                     ; preds = %14, %3
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %5, align 8
  %71 = load i8, i8* %69, align 1
  %72 = sext i8 %71 to i32
  %73 = load i8, i8* %7, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %91

; <label>:76:                                     ; preds = %68, %55
  br label %77

; <label>:77:                                     ; preds = %83, %76
  %78 = load i8*, i8** %5, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 48
  %82 = load i8*, i8** %5, align 8
  br i1 %81, label %83, label %85

; <label>:83:                                     ; preds = %77
  %84 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %84, i8** %5, align 8
  br label %77

; <label>:85:                                     ; preds = %77
  %86 = load i8, i8* %82, align 1
  %87 = sext i8 %86 to i32
  %88 = sub i32 %87, 48
  %89 = icmp ule i32 %88, 9
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %4, align 4
  br label %116

; <label>:91:                                     ; preds = %68
  %92 = load i8*, i8** %6, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %6, align 8
  %94 = load i8, i8* %92, align 1
  %95 = sext i8 %94 to i32
  %96 = load i8, i8* %7, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %115

; <label>:99:                                     ; preds = %91, %61
  br label %100

; <label>:100:                                    ; preds = %106, %99
  %101 = load i8*, i8** %6, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 48
  %105 = load i8*, i8** %6, align 8
  br i1 %104, label %106, label %108

; <label>:106:                                    ; preds = %100
  %107 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %107, i8** %6, align 8
  br label %100

; <label>:108:                                    ; preds = %100
  %109 = load i8, i8* %105, align 1
  %110 = sext i8 %109 to i32
  %111 = sub i32 %110, 48
  %112 = icmp ule i32 %111, 9
  %113 = zext i1 %112 to i32
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  br label %116

; <label>:115:                                    ; preds = %91
  store i32 0, i32* %4, align 4
  br label %116

; <label>:116:                                    ; preds = %115, %108, %85, %67, %47, %38
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isalnum(i32) #10 {
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
define zeroext i1 @c_isalpha(i32) #10 {
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
define zeroext i1 @c_isdigit(i32) #10 {
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
define zeroext i1 @c_isspace(i32) #10 {
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
define i32 @c_tolower(i32) #10 {
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
define i32 @close_stream(%0*) #1 {
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
declare i64 @__fpending(%0*) #4

; Function Attrs: noinline nounwind uwtable
define { i64, i64 } @dtotimespec(double) #1 {
  %2 = alloca %38, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %38, align 8
  %7 = alloca i64, align 8
  %8 = alloca double, align 8
  %9 = alloca i64, align 8
  store double %0, double* %3, align 8
  store double 0xC3E0000000000000, double* %4, align 8
  store double 0x43E0000000000000, double* %5, align 8
  %10 = load double, double* %4, align 8
  %11 = load double, double* %3, align 8
  %12 = fcmp olt double %10, %11
  br i1 %12, label %16, label %13

; <label>:13:                                     ; preds = %1
  %14 = getelementptr inbounds %38, %38* %6, i32 0, i32 0
  store i64 -9223372036854775808, i64* %14, align 8
  %15 = getelementptr inbounds %38, %38* %6, i32 0, i32 1
  store i64 0, i64* %15, align 8
  br label %59

; <label>:16:                                     ; preds = %1
  %17 = load double, double* %3, align 8
  %18 = load double, double* %5, align 8
  %19 = fcmp olt double %17, %18
  br i1 %19, label %23, label %20

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds %38, %38* %6, i32 0, i32 0
  store i64 9223372036854775807, i64* %21, align 8
  %22 = getelementptr inbounds %38, %38* %6, i32 0, i32 1
  store i64 999999999, i64* %22, align 8
  br label %59

; <label>:23:                                     ; preds = %16
  %24 = load double, double* %3, align 8
  %25 = fptosi double %24 to i64
  store i64 %25, i64* %7, align 8
  %26 = load double, double* %3, align 8
  %27 = load i64, i64* %7, align 8
  %28 = sitofp i64 %27 to double
  %29 = fsub double %26, %28
  %30 = fmul double 1.000000e+09, %29
  store double %30, double* %8, align 8
  %31 = load double, double* %8, align 8
  %32 = fptosi double %31 to i64
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = sitofp i64 %33 to double
  %35 = load double, double* %8, align 8
  %36 = fcmp olt double %34, %35
  %37 = zext i1 %36 to i32
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %9, align 8
  %40 = add nsw i64 %39, %38
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = sdiv i64 %41, 1000000000
  %43 = load i64, i64* %7, align 8
  %44 = add nsw i64 %43, %42
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %9, align 8
  %46 = srem i64 %45, 1000000000
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %9, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %54

; <label>:49:                                     ; preds = %23
  %50 = load i64, i64* %7, align 8
  %51 = add nsw i64 %50, -1
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %9, align 8
  %53 = add nsw i64 %52, 1000000000
  store i64 %53, i64* %9, align 8
  br label %54

; <label>:54:                                     ; preds = %49, %23
  %55 = load i64, i64* %7, align 8
  %56 = getelementptr inbounds %38, %38* %6, i32 0, i32 0
  store i64 %55, i64* %56, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds %38, %38* %6, i32 0, i32 1
  store i64 %57, i64* %58, align 8
  br label %59

; <label>:59:                                     ; preds = %20, %54, %13
  %60 = bitcast %38* %2 to i8*
  %61 = bitcast %38* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* %61, i64 16, i32 8, i1 false)
  %62 = bitcast %38* %2 to { i64, i64 }*
  %63 = load { i64, i64 }, { i64, i64 }* %62, align 8
  ret { i64, i64 } %63
}

; Function Attrs: noinline nounwind uwtable
define i8* @locale_charset() #1 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = call i8* @nl_langinfo(i32 14) #11
  store i8* %3, i8** %1, align 8
  %4 = load i8*, i8** %1, align 8
  %5 = icmp eq i8* %4, null
  %spec.store.select = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @259, i32 0, i32 0), i8* %3
  store i8* %spec.store.select, i8** %1, align 8
  %6 = call i8* @397()
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
  %15 = call i32 @strcmp(i8* %13, i8* %14) #13
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
  %32 = call i64 @strlen(i8* %31) #13
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  store i8* %34, i8** %1, align 8
  br label %46

; <label>:35:                                     ; preds = %17, %23
  %36 = load i8*, i8** %2, align 8
  %37 = call i64 @strlen(i8* %36) #13
  %38 = add i64 %37, 1
  %39 = load i8*, i8** %2, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 %38
  store i8* %40, i8** %2, align 8
  %41 = load i8*, i8** %2, align 8
  %42 = call i64 @strlen(i8* %41) #13
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
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @260, i32 0, i32 0), i8** %1, align 8
  br label %53

; <label>:53:                                     ; preds = %52, %46
  %54 = load i8*, i8** %1, align 8
  ret i8* %54
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @397() #1 {
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
  %18 = load volatile i8*, i8** @261, align 8
  store i8* %18, i8** %1, align 8
  %19 = load i8*, i8** %1, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %206

; <label>:21:                                     ; preds = %0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @262, i32 0, i32 0), i8** %3, align 8
  %22 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @263, i32 0, i32 0)) #11
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
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @264, i32 0, i32 0), i8** %2, align 8
  br label %32

; <label>:32:                                     ; preds = %31, %25
  %33 = load i8*, i8** %2, align 8
  %34 = call i64 @strlen(i8* %33) #13
  store i64 %34, i64* %5, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = call i64 @strlen(i8* %35) #13
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
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @259, i32 0, i32 0), i8** %1, align 8
  br label %204

; <label>:85:                                     ; preds = %81
  %86 = load i8*, i8** %4, align 8
  %87 = call i32 (i8*, i32, ...) @open(i8* %86, i32 131072)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

; <label>:90:                                     ; preds = %85
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @259, i32 0, i32 0), i8** %1, align 8
  br label %202

; <label>:91:                                     ; preds = %85
  %92 = load i32, i32* %8, align 4
  %93 = call %0* @fdopen(i32 %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @265, i32 0, i32 0)) #11
  store %0* %93, %0** %9, align 8
  %94 = load %0*, %0** %9, align 8
  %95 = icmp eq %0* %94, null
  br i1 %95, label %96, label %99

; <label>:96:                                     ; preds = %91
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @close(i32 %97)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @259, i32 0, i32 0), i8** %1, align 8
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
  %137 = call i32 (%0*, i8*, ...) @fscanf(%0* %134, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @266, i32 0, i32 0), i8* %135, i8* %136)
  %138 = icmp slt i32 %137, 2
  br i1 %138, label %191, label %139

; <label>:139:                                    ; preds = %130
  %140 = getelementptr inbounds [51 x i8], [51 x i8]* %13, i32 0, i32 0
  %141 = call i64 @strlen(i8* %140) #13
  store i64 %141, i64* %15, align 8
  %142 = getelementptr inbounds [51 x i8], [51 x i8]* %14, i32 0, i32 0
  %143 = call i64 @strlen(i8* %142) #13
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
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @259, i32 0, i32 0), i8** %1, align 8
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
  store volatile i8* %205, i8** @261, align 8
  br label %206

; <label>:206:                                    ; preds = %204, %0
  %207 = load i8*, i8** %1, align 8
  ret i8* %207
}

declare i32 @getc_unlocked(%0*) #2

declare i32 @ungetc(i32, %0*) #2

declare i32 @fscanf(%0*, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind uwtable
define i32 @memcoll(i8*, i64, i8*, i64) #1 {
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
  %19 = call i32 @memcmp(i8* %16, i8* %17, i64 %18) #13
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
  %44 = call i32 @398(i8* %38, i64 %40, i8* %41, i64 %43)
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
define internal i32 @398(i8*, i64, i8*, i64) #1 {
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
  %17 = call i32 @strcoll(i8* %15, i8* %16) #13
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
  %28 = call i64 @strlen(i8* %27) #13
  %29 = add i64 %28, 1
  store i64 %29, i64* %11, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i64 @strlen(i8* %30) #13
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
declare i32 @strcoll(i8*, i8*) #5

; Function Attrs: noinline nounwind uwtable
define i32 @memcoll0(i8*, i64, i8*, i64) #1 {
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
  %17 = call i32 @memcmp(i8* %14, i8* %15, i64 %16) #13
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
  %26 = call i32 @398(i8* %22, i64 %23, i8* %24, i64 %25)
  store i32 %26, i32* %5, align 4
  br label %27

; <label>:27:                                     ; preds = %21, %19
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

attributes #0 = { noinline noreturn nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noinline nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noinline nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn }
attributes #15 = { nounwind readnone }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}

!0 = !{!"clang version 6.0.0 (tags/RELEASE_600/final)"}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
