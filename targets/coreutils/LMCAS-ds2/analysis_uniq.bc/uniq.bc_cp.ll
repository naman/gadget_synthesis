; ModuleID = 'uniq.bc_cp.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.linebuffer = type { i64, i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [40 x i8] c"Usage: %s [OPTION]... [INPUT [OUTPUT]]\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [174 x i8] c"Filter adjacent matching lines from INPUT (or standard input),\0Awriting to OUTPUT (or standard output).\0A\0AWith no options, matching lines are merged to the first occurrence.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"Mandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [118 x i8] c"  -c, --count           prefix lines by the number of occurrences\0A  -d, --repeated        only print duplicate lines\0A\00", align 1
@.str.4 = private unnamed_addr constant [494 x i8] c"  -D, --all-repeated[=delimit-method]  print all duplicate lines\0A                        delimit-method={none(default),prepend,separate}\0A                        Delimiting is done with blank lines\0A  -f, --skip-fields=N   avoid comparing the first N fields\0A  -i, --ignore-case     ignore differences in case when comparing\0A  -s, --skip-chars=N    avoid comparing the first N characters\0A  -u, --unique          only print unique lines\0A  -z, --zero-terminated  end lines with 0 byte, not newline\0A\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"  -w, --check-chars=N   compare no more than N characters in lines\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [120 x i8] c"\0AA field is a run of blanks (usually spaces and/or TABs), then non-blank\0Acharacters.  Fields are skipped before chars.\0A\00", align 1
@.str.9 = private unnamed_addr constant [204 x i8] c"\0ANote: 'uniq' does not detect repeated lines unless they are adjacent.\0AYou may want to sort the input first, or use 'sort -u' without 'uniq'.\0AAlso, comparisons honor the rules specified by 'LC_COLLATE'.\0A\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"\0AReport %s bugs to %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.28 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.29 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.31 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.32 = private unnamed_addr constant [65 x i8] c"For complete documentation, run: info coreutils '%s invocation'\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.24 = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@hard_LC_COLLATE = internal global i8 0, align 1, !dbg !0
@skip_chars = internal global i64 0, align 8, !dbg !66
@skip_fields = internal global i64 0, align 8, !dbg !64
@check_chars = internal global i64 0, align 8, !dbg !68
@output_first_repeated = internal global i8 0, align 1, !dbg !75
@output_unique = internal global i8 0, align 1, !dbg !72
@output_later_repeated = internal global i8 0, align 1, !dbg !77
@countmode = internal global i32 0, align 4, !dbg !70
@delimit_groups = internal global i32 0, align 4, !dbg !81
@.str.13 = private unnamed_addr constant [24 x i8] c"-0123456789Dcdf:is:uw:z\00", align 1
@longopts = internal constant [12 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i32 2, i32* null, i32 68 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), i32 1, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !83
@optind = external global i32, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@optarg = external global i8*, align 8
@.str.15 = private unnamed_addr constant [15 x i8] c"--all-repeated\00", align 1
@delimit_method_string = internal constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), i8* null], align 16, !dbg !103
@delimit_method_map = internal constant [3 x i32] [i32 0, i32 1, i32 2], align 4, !dbg !97
@.str.16 = private unnamed_addr constant [33 x i8] c"invalid number of fields to skip\00", align 1
@ignore_case = internal global i8 0, align 1, !dbg !79
@.str.17 = private unnamed_addr constant [32 x i8] c"invalid number of bytes to skip\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"invalid number of bytes to compare\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"uniq\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"Richard M. Stallman\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.23 = private unnamed_addr constant [63 x i8] c"printing all duplicated lines and repeat counts is meaningless\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.48 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"error reading %s\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"%7lu \00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"prepend\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"separate\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"repeated\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"all-repeated\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"ignore-case\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"unique\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"skip-fields\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"skip-chars\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"check-chars\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), align 8, !dbg !109
@.str.53 = private unnamed_addr constant [5 x i8] c"8.16\00", align 1
@argmatch_die = global void ()* @__argmatch_die, align 8, !dbg !115
@.str.56 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@.str.1.57 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@.str.2.58 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@.str.3.59 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1
@.str.4.60 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@file_name = internal global i8* null, align 8, !dbg !139
@ignore_EPIPE = internal global i8 0, align 1, !dbg !145
@.str.65 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.66 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.67 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !147
@.str.76 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.79 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.80 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.89 = private unnamed_addr constant [16 x i8] c"_POSIX2_VERSION\00", align 1
@program_name = global i8* null, align 8, !dbg !153
@.str.94 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.95 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.96 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external global i8*, align 8
@program_invocation_name = external global i8*, align 8
@quoting_style_args = constant [9 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.98, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.99, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.100, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4.101, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.102, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.103, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7.104, i32 0, i32 0), i8* null], align 16, !dbg !159
@.str.97 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.98 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.99 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.100 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.4.101 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.5.102 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.6.103 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.7.104 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = constant [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], align 16, !dbg !175
@quote_quoting_options = global %struct.quoting_options { i32 6, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !181
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !192
@.str.8.105 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.9.106 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.10.107 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.11.108 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.12.109 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.13.110 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.14.111 = private unnamed_addr constant [8 x i8] c"GB18030\00", align 1
@.str.15.112 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.16.113 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal global %struct.slotvec* @slotvec0, align 8, !dbg !199
@nslots = internal global i32 1, align 4, !dbg !206
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !194
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !208
@.str.122 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.123 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.124 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.125 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.126 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.127 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.128 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.129 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.130 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.131 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.132 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.133 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.134 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.135 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.138 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.139 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.140 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.141 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.142 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.143 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !213
@.str.156 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.157 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.160 = private unnamed_addr constant [25 x i8] c"string comparison failed\00", align 1
@.str.1.161 = private unnamed_addr constant [43 x i8] c"Set LC_ALL='C' to work around the problem.\00", align 1
@.str.2.162 = private unnamed_addr constant [37 x i8] c"The strings compared were %s and %s.\00", align 1
@.str.165 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.166 = private unnamed_addr constant [20 x i8] c"../../lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoul = private unnamed_addr constant [81 x i8] c"strtol_error xstrtoul(const char *, char **, int, unsigned long *, const char *)\00", align 1
@.str.179 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.180 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@charset_aliases = internal global i8* null, align 8, !dbg !221
@.str.2.181 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.3.182 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.183 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.5.184 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.185 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1

; Function Attrs: noinline noreturn nounwind uwtable
define void @usage(i32) #0 !dbg !684 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !687, metadata !DIExpression()), !dbg !688
  %3 = load i32, i32* %2, align 4, !dbg !689
  %4 = icmp ne i32 %3, 0, !dbg !691
  br i1 %4, label %5, label %6, !dbg !692

; <label>:5:                                      ; preds = %1
  call void @emit_try_help(), !dbg !693
  br label %27, !dbg !693

; <label>:6:                                      ; preds = %1
  %7 = load i8*, i8** @program_name, align 8, !dbg !694
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i32 0, i32 0), i8* %7), !dbg !696
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !697
  %10 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str.1, i32 0, i32 0), %struct._IO_FILE* %9), !dbg !697
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !698
  %12 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i32 0, i32 0), %struct._IO_FILE* %11), !dbg !698
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !699
  %14 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %13), !dbg !699
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !700
  %16 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([494 x i8], [494 x i8]* @.str.4, i32 0, i32 0), %struct._IO_FILE* %15), !dbg !700
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !701
  %18 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i32 0, i32 0), %struct._IO_FILE* %17), !dbg !701
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !702
  %20 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i32 0, i32 0), %struct._IO_FILE* %19), !dbg !702
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !703
  %22 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %21), !dbg !703
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !704
  %24 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %23), !dbg !704
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !705
  %26 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %25), !dbg !705
  call void @emit_ancillary_info(), !dbg !706
  br label %27

; <label>:27:                                     ; preds = %6, %5
  %28 = load i32, i32* %2, align 4, !dbg !707
  call void @exit(i32 %28) #13, !dbg !708
  unreachable, !dbg !708
                                                  ; No predecessors!
  unreachable, !dbg !709
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal void @emit_try_help() #2 !dbg !710 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !712
  %2 = load i8*, i8** @program_name, align 8, !dbg !713
  %3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0), i8* %2), !dbg !714
  ret void, !dbg !715
}

declare i32 @printf(i8*, ...) #3

declare i32 @fputs_unlocked(i8*, %struct._IO_FILE*) #3

; Function Attrs: noinline nounwind uwtable
define internal void @emit_ancillary_info() #2 !dbg !716 {
  %1 = alloca i8*, align 8
  %2 = load i8*, i8** @program_name, align 8, !dbg !717
  %3 = call i8* @last_component(i8* %2) #14, !dbg !718
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i32 0, i32 0), i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0)), !dbg !719
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i32 0, i32 0)), !dbg !720
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !721
  %7 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.29, i32 0, i32 0), %struct._IO_FILE* %6), !dbg !721
  call void @llvm.dbg.declare(metadata i8** %1, metadata !722, metadata !DIExpression()), !dbg !723
  %8 = call i8* @setlocale(i32 5, i8* null) #11, !dbg !724
  store i8* %8, i8** %1, align 8, !dbg !723
  %9 = load i8*, i8** %1, align 8, !dbg !725
  %10 = icmp ne i8* %9, null, !dbg !725
  br i1 %10, label %11, label %19, !dbg !727

; <label>:11:                                     ; preds = %0
  %12 = load i8*, i8** %1, align 8, !dbg !728
  %13 = call i32 @strncmp(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i64 3) #14, !dbg !728
  %14 = icmp ne i32 %13, 0, !dbg !728
  br i1 %14, label %15, label %19, !dbg !729

; <label>:15:                                     ; preds = %11
  %16 = load i8*, i8** @program_name, align 8, !dbg !730
  %17 = call i8* @last_component(i8* %16) #14, !dbg !732
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.31, i32 0, i32 0), i8* %17), !dbg !733
  br label %19, !dbg !734

; <label>:19:                                     ; preds = %15, %11, %0
  %20 = load i8*, i8** @program_name, align 8, !dbg !735
  %21 = call i8* @last_component(i8* %20) #14, !dbg !736
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.32, i32 0, i32 0), i8* %21), !dbg !737
  ret void, !dbg !738
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #5

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #6

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noinline nounwind uwtable
define void @klee_dump_memory() #2 !dbg !739 {
  ret void, !dbg !740
}

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32, i8**) #2 !dbg !741 {
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
  call void @llvm.dbg.declare(metadata i32* %4, metadata !745, metadata !DIExpression()), !dbg !746
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !747, metadata !DIExpression()), !dbg !748
  call void @llvm.dbg.declare(metadata i32* %6, metadata !749, metadata !DIExpression()), !dbg !750
  store i32 -1, i32* %6, !dbg !750
  call void @llvm.dbg.declare(metadata i8* %7, metadata !751, metadata !DIExpression()), !dbg !752
  %13 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0)) #11, !dbg !753
  %14 = icmp ne i8* %13, null, !dbg !754
  %15 = zext i1 %14 to i8, !dbg !752
  store i8 %15, i8* %7, align 1, !dbg !752
  call void @llvm.dbg.declare(metadata i32* %8, metadata !755, metadata !DIExpression()), !dbg !756
  store i32 0, i32* %8, !dbg !756
  call void @llvm.dbg.declare(metadata i32* %9, metadata !757, metadata !DIExpression()), !dbg !758
  store i32 0, i32* %9, !dbg !758
  call void @llvm.dbg.declare(metadata [2 x i8*]* %10, metadata !759, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.declare(metadata i8* %11, metadata !764, metadata !DIExpression()), !dbg !765
  store i8 10, i8* %11, !dbg !765
  %16 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 1, !dbg !766
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i8** %16, align 8, !dbg !767
  %17 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0, !dbg !768
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i8** %17, align 16, !dbg !769
  %18 = load i8**, i8*** %5, align 8, !dbg !770
  %19 = getelementptr inbounds i8*, i8** %18, i64 0, !dbg !770
  %20 = load i8*, i8** %19, align 8, !dbg !770
  call void @set_program_name(i8* %20), !dbg !771
  %21 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0)) #11, !dbg !772
  %22 = call zeroext i1 @hard_locale(i32 3), !dbg !773
  %23 = zext i1 %22 to i8, !dbg !774
  store i8 %23, i8* @hard_LC_COLLATE, align 1, !dbg !774
  %24 = call i32 @atexit(void ()* @close_stdout) #11, !dbg !775
  store i64 0, i64* @skip_chars, align 8, !dbg !776
  store i64 0, i64* @skip_fields, align 8, !dbg !777
  store i64 -1, i64* @check_chars, align 8, !dbg !778
  store i8 1, i8* @output_first_repeated, align 1, !dbg !779
  store i8 1, i8* @output_unique, align 1, !dbg !780
  store i8 0, i8* @output_later_repeated, align 1, !dbg !781
  store i32 1, i32* @countmode, align 4, !dbg !782
  store i32 0, i32* @delimit_groups, align 4, !dbg !783
  br label %25, !dbg !784

; <label>:25:                                     ; preds = %2, %121
  br i1 true, label %33, label %26, !dbg !785

; <label>:26:                                     ; preds = %25
  br i1 false, label %27, label %28, !dbg !788

; <label>:27:                                     ; preds = %26
  br i1 false, label %33, label %28, !dbg !789

; <label>:28:                                     ; preds = %27, %26
  %29 = load i32, i32* %4, align 4, !dbg !790
  %30 = load i8**, i8*** %5, align 8, !dbg !791
  %31 = call i32 @getopt_long(i32 %29, i8** %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0), %struct.option* getelementptr inbounds ([12 x %struct.option], [12 x %struct.option]* @longopts, i32 0, i32 0), i32* null) #11, !dbg !792
  store i32 %31, i32* %6, align 4, !dbg !793
  %32 = icmp eq i32 %31, -1, !dbg !794
  br i1 %32, label %33, label %54, !dbg !795

; <label>:33:                                     ; preds = %28, %27, %25
  %34 = load i32, i32* %4, align 4, !dbg !796
  %35 = load i32, i32* @optind, align 4, !dbg !799
  %36 = icmp sle i32 %34, %35, !dbg !800
  br i1 %36, label %37, label %38, !dbg !801

; <label>:37:                                     ; preds = %33
  br label %122, !dbg !802

; <label>:38:                                     ; preds = %33
  br i1 false, label %39, label %46, !dbg !803

; <label>:39:                                     ; preds = %38
  %40 = load i8**, i8*** %5, align 8, !dbg !804
  %41 = load i32, i32* @optind, align 4, !dbg !807
  %42 = sext i32 %41 to i64, !dbg !804
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42, !dbg !804
  %44 = load i8*, i8** %43, align 8, !dbg !804
  %45 = call i8* @quote(i8* %44), !dbg !808
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i8* %45), !dbg !809
  call void @usage(i32 1) #15, !dbg !810
  unreachable, !dbg !810

; <label>:46:                                     ; preds = %38
  %47 = load i8**, i8*** %5, align 8, !dbg !811
  %48 = load i32, i32* @optind, align 4, !dbg !812
  %49 = add nsw i32 %48, 1, !dbg !812
  store i32 %49, i32* @optind, align 4, !dbg !812
  %50 = sext i32 %48 to i64, !dbg !811
  %51 = getelementptr inbounds i8*, i8** %47, i64 %50, !dbg !811
  %52 = load i8*, i8** %51, align 8, !dbg !811
  store i32 1, i32* %9, align 4, !dbg !813
  %53 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0, !dbg !814
  store i8* %52, i8** %53, align 8, !dbg !815
  br label %121, !dbg !816

; <label>:54:                                     ; preds = %28
  switch i32 -1, label %119 [
    i32 1, label %55
    i32 48, label %79
    i32 49, label %79
    i32 50, label %79
    i32 51, label %79
    i32 52, label %79
    i32 53, label %79
    i32 54, label %79
    i32 55, label %79
    i32 56, label %79
    i32 57, label %79
    i32 99, label %90
    i32 100, label %91
    i32 68, label %92
    i32 102, label %103
    i32 105, label %106
    i32 115, label %107
    i32 117, label %110
    i32 119, label %111
    i32 122, label %114
    i32 -130, label %115
    i32 -131, label %116
  ], !dbg !817

; <label>:55:                                     ; preds = %54
  call void @llvm.dbg.declare(metadata i64* %12, metadata !818, metadata !DIExpression()), !dbg !821
  %56 = load i8*, i8** @optarg, align 8, !dbg !822
  %57 = getelementptr inbounds i8, i8* %56, i64 0, !dbg !822
  %58 = load i8, i8* %57, align 1, !dbg !822
  %59 = sext i8 %58 to i32, !dbg !822
  %60 = icmp eq i32 %59, 43, !dbg !824
  br i1 %60, label %61, label %70, !dbg !825

; <label>:61:                                     ; preds = %55
  %62 = call i32 @posix2_version(), !dbg !826
  %63 = icmp slt i32 %62, 200112, !dbg !827
  br i1 %63, label %64, label %70, !dbg !828

; <label>:64:                                     ; preds = %61
  %65 = load i8*, i8** @optarg, align 8, !dbg !829
  %66 = call i32 @xstrtoul(i8* %65, i8** null, i32 10, i64* %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0)), !dbg !830
  %67 = icmp eq i32 %66, 0, !dbg !831
  br i1 %67, label %68, label %70, !dbg !832

; <label>:68:                                     ; preds = %64
  br i1 true, label %69, label %70, !dbg !833

; <label>:69:                                     ; preds = %68
  store i64 -6076574518398440533, i64* @skip_chars, align 8, !dbg !834
  br label %78, !dbg !835

; <label>:70:                                     ; preds = %68, %64, %61, %55
  br i1 false, label %71, label %74, !dbg !836

; <label>:71:                                     ; preds = %70
  %72 = load i8*, i8** @optarg, align 8, !dbg !837
  %73 = call i8* @quote(i8* %72), !dbg !840
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i8* %73), !dbg !841
  call void @usage(i32 1) #15, !dbg !842
  unreachable, !dbg !842

; <label>:74:                                     ; preds = %70
  %75 = load i8*, i8** @optarg, align 8, !dbg !843
  store i32 1, i32* %9, align 4, !dbg !844
  %76 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0, !dbg !845
  store i8* %75, i8** %76, align 8, !dbg !846
  br label %77

; <label>:77:                                     ; preds = %74
  br label %78

; <label>:78:                                     ; preds = %77, %69
  br label %120, !dbg !847

; <label>:79:                                     ; preds = %54, %54, %54, %54, %54, %54, %54, %54, %54, %54
  br i1 false, label %80, label %81, !dbg !848

; <label>:80:                                     ; preds = %79
  store i64 0, i64* @skip_fields, align 8, !dbg !850
  br label %81, !dbg !852

; <label>:81:                                     ; preds = %80, %79
  br i1 false, label %83, label %82, !dbg !853

; <label>:82:                                     ; preds = %81
  br i1 false, label %83, label %84, !dbg !853

; <label>:83:                                     ; preds = %82, %81
  br label %85, !dbg !853

; <label>:84:                                     ; preds = %82
  store i64 -49, i64* @skip_fields, align 8, !dbg !853
  br label %85, !dbg !853

; <label>:85:                                     ; preds = %84, %83
  %86 = phi i32 [ 0, %83 ], [ 1, %84 ], !dbg !853
  %87 = icmp ne i32 %86, 0, !dbg !853
  br i1 %87, label %89, label %88, !dbg !855

; <label>:88:                                     ; preds = %85
  store i64 -1, i64* @skip_fields, align 8, !dbg !856
  br label %89, !dbg !857

; <label>:89:                                     ; preds = %88, %85
  store i32 0, i32* %8, !dbg !858
  br label %120, !dbg !859

; <label>:90:                                     ; preds = %54
  store i32 0, i32* @countmode, align 4, !dbg !860
  br label %120, !dbg !861

; <label>:91:                                     ; preds = %54
  store i8 0, i8* @output_unique, align 1, !dbg !862
  br label %120, !dbg !863

; <label>:92:                                     ; preds = %54
  store i8 0, i8* @output_unique, align 1, !dbg !864
  store i8 1, i8* @output_later_repeated, align 1, !dbg !865
  %93 = load i8*, i8** @optarg, align 8, !dbg !866
  %94 = icmp eq i8* %93, null, !dbg !868
  br i1 %94, label %95, label %96, !dbg !869

; <label>:95:                                     ; preds = %92
  store i32 0, i32* @delimit_groups, align 4, !dbg !870
  br label %102, !dbg !871

; <label>:96:                                     ; preds = %92
  %97 = load i8*, i8** @optarg, align 8, !dbg !872
  %98 = load void ()*, void ()** @argmatch_die, align 8, !dbg !872
  %99 = call i64 @__xargmatch_internal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* %97, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @delimit_method_string, i32 0, i32 0), i8* bitcast ([3 x i32]* @delimit_method_map to i8*), i64 4, void ()* %98), !dbg !872
  %100 = getelementptr inbounds [3 x i32], [3 x i32]* @delimit_method_map, i64 0, i64 %99, !dbg !872
  %101 = load i32, i32* %100, align 4, !dbg !872
  store i32 %101, i32* @delimit_groups, align 4, !dbg !873
  br label %102

; <label>:102:                                    ; preds = %96, %95
  br label %120, !dbg !874

; <label>:103:                                    ; preds = %54
  store i32 0, i32* %8, !dbg !875
  %104 = load i8*, i8** @optarg, align 8, !dbg !876
  %105 = call i64 @size_opt(i8* %104, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i32 0, i32 0)), !dbg !877
  store i64 %105, i64* @skip_fields, align 8, !dbg !878
  br label %120, !dbg !879

; <label>:106:                                    ; preds = %54
  store i8 1, i8* @ignore_case, align 1, !dbg !880
  br label %120, !dbg !881

; <label>:107:                                    ; preds = %54
  %108 = load i8*, i8** @optarg, align 8, !dbg !882
  %109 = call i64 @size_opt(i8* %108, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0)), !dbg !883
  store i64 %109, i64* @skip_chars, align 8, !dbg !884
  br label %120, !dbg !885

; <label>:110:                                    ; preds = %54
  store i8 0, i8* @output_first_repeated, align 1, !dbg !886
  br label %120, !dbg !887

; <label>:111:                                    ; preds = %54
  %112 = load i8*, i8** @optarg, align 8, !dbg !888
  %113 = call i64 @size_opt(i8* %112, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i32 0, i32 0)), !dbg !889
  store i64 %113, i64* @check_chars, align 8, !dbg !890
  br label %120, !dbg !891

; <label>:114:                                    ; preds = %54
  store i8 10, i8* %11, !dbg !892
  br label %120, !dbg !893

; <label>:115:                                    ; preds = %54
  call void @usage(i32 0) #15, !dbg !894
  unreachable, !dbg !894

; <label>:116:                                    ; preds = %54
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !895
  %118 = load i8*, i8** @Version, align 8, !dbg !895
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i8* %118, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0), i8* null), !dbg !895
  call void @exit(i32 0) #13, !dbg !895
  unreachable, !dbg !895

; <label>:119:                                    ; preds = %54
  call void @usage(i32 1) #15, !dbg !896
  unreachable, !dbg !896

; <label>:120:                                    ; preds = %114, %111, %110, %107, %106, %103, %102, %91, %90, %89, %78
  br label %121

; <label>:121:                                    ; preds = %120, %46
  br label %25, !dbg !784, !llvm.loop !897

; <label>:122:                                    ; preds = %37
  call void @klee_dump_memory(), !dbg !899
  br i1 false, label %123, label %125, !dbg !900

; <label>:123:                                    ; preds = %122
  br i1 false, label %124, label %125, !dbg !902

; <label>:124:                                    ; preds = %123
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.23, i32 0, i32 0)), !dbg !903
  call void @usage(i32 1) #15, !dbg !905
  unreachable, !dbg !905

; <label>:125:                                    ; preds = %123, %122
  %126 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0, !dbg !906
  %127 = load i8*, i8** %126, align 16, !dbg !906
  %128 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 1, !dbg !907
  %129 = load i8*, i8** %128, align 8, !dbg !907
  %130 = load i8, i8* %11, align 1, !dbg !908
  call void @check_file(i8* %127, i8* %129, i8 signext %130), !dbg !909
  call void @exit(i32 0) #13, !dbg !910
  unreachable, !dbg !910
                                                  ; No predecessors!
  %132 = load i32, i32* %3, align 4, !dbg !911
  ret i32 %132, !dbg !911
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #5

; Function Attrs: nounwind
declare i32 @atexit(void ()*) #5

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #5

declare void @error(i32, i32, i8*, ...) #3

; Function Attrs: noinline nounwind uwtable
define internal i64 @size_opt(i8*, i8*) #2 !dbg !912 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !915, metadata !DIExpression()), !dbg !916
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !917, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.declare(metadata i64* %5, metadata !919, metadata !DIExpression()), !dbg !920
  %6 = load i8*, i8** %3, align 8, !dbg !921
  %7 = call i32 @xstrtoul(i8* %6, i8** null, i32 10, i64* %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0)), !dbg !922
  switch i32 %7, label %9 [
    i32 0, label %8
    i32 1, label %8
  ], !dbg !923

; <label>:8:                                      ; preds = %2, %2
  br label %12, !dbg !924

; <label>:9:                                      ; preds = %2
  %10 = load i8*, i8** %3, align 8, !dbg !926
  %11 = load i8*, i8** %4, align 8, !dbg !927
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i8* %10, i8* %11), !dbg !928
  br label %12, !dbg !929

; <label>:12:                                     ; preds = %9, %8
  %13 = load i64, i64* %5, align 8, !dbg !930
  %14 = icmp ult i64 %13, -1, !dbg !930
  br i1 %14, label %15, label %17, !dbg !930

; <label>:15:                                     ; preds = %12
  %16 = load i64, i64* %5, align 8, !dbg !930
  br label %18, !dbg !930

; <label>:17:                                     ; preds = %12
  br label %18, !dbg !930

; <label>:18:                                     ; preds = %17, %15
  %19 = phi i64 [ %16, %15 ], [ -1, %17 ], !dbg !930
  ret i64 %19, !dbg !931
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_file(i8*, i8*, i8 signext) #2 !dbg !932 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.linebuffer, align 8
  %8 = alloca %struct.linebuffer, align 8
  %9 = alloca %struct.linebuffer*, align 8
  %10 = alloca %struct.linebuffer*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.linebuffer*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.linebuffer*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !935, metadata !DIExpression()), !dbg !936
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !937, metadata !DIExpression()), !dbg !938
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !939, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.declare(metadata %struct.linebuffer* %7, metadata !941, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.declare(metadata %struct.linebuffer* %8, metadata !949, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %9, metadata !951, metadata !DIExpression()), !dbg !953
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %10, metadata !954, metadata !DIExpression()), !dbg !955
  %24 = load i8*, i8** %4, align 8, !dbg !956
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #14, !dbg !956
  %26 = icmp eq i32 %25, 0, !dbg !956
  br i1 %26, label %36, label %27, !dbg !958

; <label>:27:                                     ; preds = %3
  %28 = load i8*, i8** %4, align 8, !dbg !959
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !960
  %30 = call %struct._IO_FILE* @freopen_safer(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0), %struct._IO_FILE* %29), !dbg !961
  %31 = icmp ne %struct._IO_FILE* %30, null, !dbg !961
  br i1 %31, label %36, label %32, !dbg !962

; <label>:32:                                     ; preds = %27
  %33 = call i32* @__errno_location() #16, !dbg !963
  %34 = load i32, i32* %33, align 4, !dbg !963
  %35 = load i8*, i8** %4, align 8, !dbg !964
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0), i8* %35), !dbg !965
  br label %36, !dbg !965

; <label>:36:                                     ; preds = %32, %27, %3
  %37 = load i8*, i8** %5, align 8, !dbg !966
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #14, !dbg !966
  %39 = icmp eq i32 %38, 0, !dbg !966
  br i1 %39, label %49, label %40, !dbg !968

; <label>:40:                                     ; preds = %36
  %41 = load i8*, i8** %5, align 8, !dbg !969
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !970
  %43 = call %struct._IO_FILE* @freopen_safer(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0), %struct._IO_FILE* %42), !dbg !971
  %44 = icmp ne %struct._IO_FILE* %43, null, !dbg !971
  br i1 %44, label %49, label %45, !dbg !972

; <label>:45:                                     ; preds = %40
  %46 = call i32* @__errno_location() #16, !dbg !973
  %47 = load i32, i32* %46, align 4, !dbg !973
  %48 = load i8*, i8** %5, align 8, !dbg !974
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0), i8* %48), !dbg !975
  br label %49, !dbg !975

; <label>:49:                                     ; preds = %45, %40, %36
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !976
  call void @fadvise(%struct._IO_FILE* %50, i32 2), !dbg !977
  store %struct.linebuffer* %7, %struct.linebuffer** %9, align 8, !dbg !978
  store %struct.linebuffer* %8, %struct.linebuffer** %10, align 8, !dbg !979
  %51 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !980
  call void @initbuffer(%struct.linebuffer* %51), !dbg !981
  %52 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !982
  call void @initbuffer(%struct.linebuffer* %52), !dbg !983
  br i1 false, label %53, label %111, !dbg !984

; <label>:53:                                     ; preds = %49
  br i1 true, label %54, label %111, !dbg !986

; <label>:54:                                     ; preds = %53
  br i1 true, label %55, label %111, !dbg !987

; <label>:55:                                     ; preds = %54
  call void @llvm.dbg.declare(metadata i8** %11, metadata !988, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.declare(metadata i64* %12, metadata !991, metadata !DIExpression()), !dbg !992
  br label %56, !dbg !993

; <label>:56:                                     ; preds = %109, %55
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !994
  %58 = call i32 @feof_unlocked(%struct._IO_FILE* %57) #11, !dbg !994
  %59 = icmp ne i32 %58, 0, !dbg !995
  %60 = xor i1 %59, true, !dbg !995
  br i1 %60, label %61, label %110, !dbg !993

; <label>:61:                                     ; preds = %56
  call void @llvm.dbg.declare(metadata i8** %13, metadata !996, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.declare(metadata i64* %14, metadata !999, metadata !DIExpression()), !dbg !1000
  %62 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1001
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1003
  %64 = load i8, i8* %6, align 1, !dbg !1004
  %65 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %62, %struct._IO_FILE* %63, i8 signext %64), !dbg !1005
  %66 = icmp eq %struct.linebuffer* %65, null, !dbg !1006
  br i1 %66, label %67, label %68, !dbg !1007

; <label>:67:                                     ; preds = %61
  br label %110, !dbg !1008

; <label>:68:                                     ; preds = %61
  %69 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1009
  %70 = call i8* @find_field(%struct.linebuffer* %69) #14, !dbg !1010
  store i8* %70, i8** %13, align 8, !dbg !1011
  %71 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1012
  %72 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %71, i32 0, i32 1, !dbg !1013
  %73 = load i64, i64* %72, align 8, !dbg !1013
  %74 = sub i64 %73, 1, !dbg !1014
  %75 = load i8*, i8** %13, align 8, !dbg !1015
  %76 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1016
  %77 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %76, i32 0, i32 2, !dbg !1017
  %78 = load i8*, i8** %77, align 8, !dbg !1017
  %79 = ptrtoint i8* %75 to i64, !dbg !1018
  %80 = ptrtoint i8* %78 to i64, !dbg !1018
  %81 = sub i64 %79, %80, !dbg !1018
  %82 = sub i64 %74, %81, !dbg !1019
  store i64 %82, i64* %14, align 8, !dbg !1020
  %83 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !1021
  %84 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %83, i32 0, i32 1, !dbg !1023
  %85 = load i64, i64* %84, align 8, !dbg !1023
  %86 = icmp eq i64 %85, 0, !dbg !1024
  br i1 %86, label %93, label %87, !dbg !1025

; <label>:87:                                     ; preds = %68
  %88 = load i8*, i8** %13, align 8, !dbg !1026
  %89 = load i8*, i8** %11, align 8, !dbg !1027
  %90 = load i64, i64* %14, align 8, !dbg !1028
  %91 = load i64, i64* %12, align 8, !dbg !1029
  %92 = call zeroext i1 @different(i8* %88, i8* %89, i64 %90, i64 %91), !dbg !1030
  br i1 %92, label %93, label %109, !dbg !1031

; <label>:93:                                     ; preds = %87, %68
  %94 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1032
  %95 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %94, i32 0, i32 2, !dbg !1032
  %96 = load i8*, i8** %95, align 8, !dbg !1032
  %97 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1032
  %98 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %97, i32 0, i32 1, !dbg !1032
  %99 = load i64, i64* %98, align 8, !dbg !1032
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1032
  %101 = call i64 @fwrite_unlocked(i8* %96, i64 1, i64 %99, %struct._IO_FILE* %100), !dbg !1032
  br label %102, !dbg !1034, !llvm.loop !1035

; <label>:102:                                    ; preds = %93
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %15, metadata !1036, metadata !DIExpression()), !dbg !1038
  %103 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !1038
  store %struct.linebuffer* %103, %struct.linebuffer** %15, align 8, !dbg !1038
  %104 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1038
  store %struct.linebuffer* %104, %struct.linebuffer** %10, align 8, !dbg !1038
  %105 = load %struct.linebuffer*, %struct.linebuffer** %15, align 8, !dbg !1038
  store %struct.linebuffer* %105, %struct.linebuffer** %9, align 8, !dbg !1038
  br label %106, !dbg !1038

; <label>:106:                                    ; preds = %102
  %107 = load i8*, i8** %13, align 8, !dbg !1039
  store i8* %107, i8** %11, align 8, !dbg !1040
  %108 = load i64, i64* %14, align 8, !dbg !1041
  store i64 %108, i64* %12, align 8, !dbg !1042
  br label %109, !dbg !1043

; <label>:109:                                    ; preds = %106, %87
  br label %56, !dbg !993, !llvm.loop !1044

; <label>:110:                                    ; preds = %67, %56
  br label %230, !dbg !1046

; <label>:111:                                    ; preds = %54, %53, %49
  call void @llvm.dbg.declare(metadata i8** %16, metadata !1047, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.declare(metadata i64* %17, metadata !1050, metadata !DIExpression()), !dbg !1051
  call void @llvm.dbg.declare(metadata i64* %18, metadata !1052, metadata !DIExpression()), !dbg !1057
  store i64 0, i64* %18, align 8, !dbg !1057
  call void @llvm.dbg.declare(metadata i8* %19, metadata !1058, metadata !DIExpression()), !dbg !1059
  store i8 1, i8* %19, align 1, !dbg !1059
  %112 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !1060
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1062
  %114 = load i8, i8* %6, align 1, !dbg !1063
  %115 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %112, %struct._IO_FILE* %113, i8 signext %114), !dbg !1064
  %116 = icmp eq %struct.linebuffer* %115, null, !dbg !1065
  br i1 %116, label %117, label %118, !dbg !1066

; <label>:117:                                    ; preds = %111
  br label %231, !dbg !1067

; <label>:118:                                    ; preds = %111
  %119 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !1068
  %120 = call i8* @find_field(%struct.linebuffer* %119) #14, !dbg !1069
  store i8* %120, i8** %16, align 8, !dbg !1070
  %121 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !1071
  %122 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %121, i32 0, i32 1, !dbg !1072
  %123 = load i64, i64* %122, align 8, !dbg !1072
  %124 = sub i64 %123, 1, !dbg !1073
  %125 = load i8*, i8** %16, align 8, !dbg !1074
  %126 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !1075
  %127 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %126, i32 0, i32 2, !dbg !1076
  %128 = load i8*, i8** %127, align 8, !dbg !1076
  %129 = ptrtoint i8* %125 to i64, !dbg !1077
  %130 = ptrtoint i8* %128 to i64, !dbg !1077
  %131 = sub i64 %129, %130, !dbg !1077
  %132 = sub i64 %124, %131, !dbg !1078
  store i64 %132, i64* %17, align 8, !dbg !1079
  br label %133, !dbg !1080

; <label>:133:                                    ; preds = %226, %118
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1081
  %135 = call i32 @feof_unlocked(%struct._IO_FILE* %134) #11, !dbg !1081
  %136 = icmp ne i32 %135, 0, !dbg !1082
  %137 = xor i1 %136, true, !dbg !1082
  br i1 %137, label %138, label %227, !dbg !1080

; <label>:138:                                    ; preds = %133
  call void @llvm.dbg.declare(metadata i8* %20, metadata !1083, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.declare(metadata i8** %21, metadata !1086, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.declare(metadata i64* %22, metadata !1088, metadata !DIExpression()), !dbg !1089
  %139 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1090
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1092
  %141 = load i8, i8* %6, align 1, !dbg !1093
  %142 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %139, %struct._IO_FILE* %140, i8 signext %141), !dbg !1094
  %143 = icmp eq %struct.linebuffer* %142, null, !dbg !1095
  br i1 %143, label %144, label %150, !dbg !1096

; <label>:144:                                    ; preds = %138
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1097
  %146 = call i32 @ferror_unlocked(%struct._IO_FILE* %145) #11, !dbg !1097
  %147 = icmp ne i32 %146, 0, !dbg !1097
  br i1 %147, label %148, label %149, !dbg !1100

; <label>:148:                                    ; preds = %144
  br label %231, !dbg !1101

; <label>:149:                                    ; preds = %144
  br label %227, !dbg !1102

; <label>:150:                                    ; preds = %138
  %151 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1103
  %152 = call i8* @find_field(%struct.linebuffer* %151) #14, !dbg !1104
  store i8* %152, i8** %21, align 8, !dbg !1105
  %153 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1106
  %154 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %153, i32 0, i32 1, !dbg !1107
  %155 = load i64, i64* %154, align 8, !dbg !1107
  %156 = sub i64 %155, 1, !dbg !1108
  %157 = load i8*, i8** %21, align 8, !dbg !1109
  %158 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1110
  %159 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %158, i32 0, i32 2, !dbg !1111
  %160 = load i8*, i8** %159, align 8, !dbg !1111
  %161 = ptrtoint i8* %157 to i64, !dbg !1112
  %162 = ptrtoint i8* %160 to i64, !dbg !1112
  %163 = sub i64 %161, %162, !dbg !1112
  %164 = sub i64 %156, %163, !dbg !1113
  store i64 %164, i64* %22, align 8, !dbg !1114
  %165 = load i8*, i8** %21, align 8, !dbg !1115
  %166 = load i8*, i8** %16, align 8, !dbg !1116
  %167 = load i64, i64* %22, align 8, !dbg !1117
  %168 = load i64, i64* %17, align 8, !dbg !1118
  %169 = call zeroext i1 @different(i8* %165, i8* %166, i64 %167, i64 %168), !dbg !1119
  %170 = xor i1 %169, true, !dbg !1120
  %171 = zext i1 %170 to i8, !dbg !1121
  store i8 %171, i8* %20, align 1, !dbg !1121
  %172 = load i8, i8* %20, align 1, !dbg !1122
  %173 = trunc i8 %172 to i1, !dbg !1122
  %174 = zext i1 %173 to i64, !dbg !1122
  %175 = load i64, i64* %18, align 8, !dbg !1123
  %176 = add i64 %175, %174, !dbg !1123
  store i64 %176, i64* %18, align 8, !dbg !1123
  %177 = load i64, i64* %18, align 8, !dbg !1124
  %178 = icmp eq i64 %177, -1, !dbg !1126
  br i1 %178, label %179, label %182, !dbg !1127

; <label>:179:                                    ; preds = %150
  %180 = load i64, i64* %18, align 8, !dbg !1128
  %181 = add i64 %180, -1, !dbg !1128
  store i64 %181, i64* %18, align 8, !dbg !1128
  br label %182, !dbg !1130

; <label>:182:                                    ; preds = %179, %150
  br i1 false, label %183, label %206, !dbg !1131

; <label>:183:                                    ; preds = %182
  %184 = load i8, i8* %20, align 1, !dbg !1132
  %185 = trunc i8 %184 to i1, !dbg !1132
  br i1 %185, label %191, label %186, !dbg !1136

; <label>:186:                                    ; preds = %183
  %187 = load i64, i64* %18, align 8, !dbg !1137
  %188 = icmp ne i64 %187, 0, !dbg !1137
  br i1 %188, label %189, label %190, !dbg !1140

; <label>:189:                                    ; preds = %186
  store i8 0, i8* %19, align 1, !dbg !1141
  br label %190, !dbg !1142

; <label>:190:                                    ; preds = %189, %186
  br label %205, !dbg !1143

; <label>:191:                                    ; preds = %183
  %192 = load i64, i64* %18, align 8, !dbg !1144
  %193 = icmp eq i64 %192, 1, !dbg !1146
  br i1 %193, label %194, label %204, !dbg !1147

; <label>:194:                                    ; preds = %191
  br i1 false, label %199, label %195, !dbg !1148

; <label>:195:                                    ; preds = %194
  br i1 false, label %196, label %203, !dbg !1151

; <label>:196:                                    ; preds = %195
  %197 = load i8, i8* %19, align 1, !dbg !1152
  %198 = trunc i8 %197 to i1, !dbg !1152
  br i1 %198, label %203, label %199, !dbg !1153

; <label>:199:                                    ; preds = %196, %194
  %200 = load i8, i8* %6, align 1, !dbg !1154
  %201 = sext i8 %200 to i32, !dbg !1154
  %202 = call i32 @putchar_unlocked(i32 %201), !dbg !1154
  br label %203, !dbg !1154

; <label>:203:                                    ; preds = %199, %196, %195
  br label %204, !dbg !1155

; <label>:204:                                    ; preds = %203, %191
  br label %205

; <label>:205:                                    ; preds = %204, %190
  br label %206, !dbg !1156

; <label>:206:                                    ; preds = %205, %182
  %207 = load i8, i8* %20, align 1, !dbg !1157
  %208 = trunc i8 %207 to i1, !dbg !1157
  br i1 %208, label %209, label %210, !dbg !1159

; <label>:209:                                    ; preds = %206
  br i1 false, label %210, label %226, !dbg !1160

; <label>:210:                                    ; preds = %209, %206
  %211 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !1161
  %212 = load i8, i8* %20, align 1, !dbg !1163
  %213 = trunc i8 %212 to i1, !dbg !1163
  %214 = load i64, i64* %18, align 8, !dbg !1164
  call void @writeline(%struct.linebuffer* %211, i1 zeroext %213, i64 %214), !dbg !1165
  br label %215, !dbg !1166, !llvm.loop !1167

; <label>:215:                                    ; preds = %210
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %23, metadata !1168, metadata !DIExpression()), !dbg !1170
  %216 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !1170
  store %struct.linebuffer* %216, %struct.linebuffer** %23, align 8, !dbg !1170
  %217 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1170
  store %struct.linebuffer* %217, %struct.linebuffer** %10, align 8, !dbg !1170
  %218 = load %struct.linebuffer*, %struct.linebuffer** %23, align 8, !dbg !1170
  store %struct.linebuffer* %218, %struct.linebuffer** %9, align 8, !dbg !1170
  br label %219, !dbg !1170

; <label>:219:                                    ; preds = %215
  %220 = load i8*, i8** %21, align 8, !dbg !1171
  store i8* %220, i8** %16, align 8, !dbg !1172
  %221 = load i64, i64* %22, align 8, !dbg !1173
  store i64 %221, i64* %17, align 8, !dbg !1174
  %222 = load i8, i8* %20, align 1, !dbg !1175
  %223 = trunc i8 %222 to i1, !dbg !1175
  br i1 %223, label %225, label %224, !dbg !1177

; <label>:224:                                    ; preds = %219
  store i64 0, i64* %18, align 8, !dbg !1178
  br label %225, !dbg !1179

; <label>:225:                                    ; preds = %224, %219
  br label %226, !dbg !1180

; <label>:226:                                    ; preds = %225, %209
  br label %133, !dbg !1080, !llvm.loop !1181

; <label>:227:                                    ; preds = %149, %133
  %228 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !1183
  %229 = load i64, i64* %18, align 8, !dbg !1184
  call void @writeline(%struct.linebuffer* %228, i1 zeroext false, i64 %229), !dbg !1185
  br label %230

; <label>:230:                                    ; preds = %227, %110
  br label %231, !dbg !1186

; <label>:231:                                    ; preds = %230, %148, %117
  %232 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1187
  %233 = call i32 @ferror_unlocked(%struct._IO_FILE* %232) #11, !dbg !1187
  %234 = icmp ne i32 %233, 0, !dbg !1187
  br i1 %234, label %239, label %235, !dbg !1189

; <label>:235:                                    ; preds = %231
  %236 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1190
  %237 = call i32 @rpl_fclose(%struct._IO_FILE* %236), !dbg !1191
  %238 = icmp ne i32 %237, 0, !dbg !1192
  br i1 %238, label %239, label %241, !dbg !1193

; <label>:239:                                    ; preds = %235, %231
  %240 = load i8*, i8** %4, align 8, !dbg !1194
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.51, i32 0, i32 0), i8* %240), !dbg !1195
  br label %241, !dbg !1195

; <label>:241:                                    ; preds = %239, %235
  %242 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %7, i32 0, i32 2, !dbg !1196
  %243 = load i8*, i8** %242, align 8, !dbg !1196
  call void @free(i8* %243) #11, !dbg !1197
  %244 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %8, i32 0, i32 2, !dbg !1198
  %245 = load i8*, i8** %244, align 8, !dbg !1198
  call void @free(i8* %245) #11, !dbg !1199
  ret void, !dbg !1200
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #6

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

; Function Attrs: nounwind
declare i32 @feof_unlocked(%struct._IO_FILE*) #5

; Function Attrs: noinline nounwind readonly uwtable
define internal i8* @find_field(%struct.linebuffer*) #8 !dbg !1201 {
  %2 = alloca %struct.linebuffer*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.linebuffer* %0, %struct.linebuffer** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %2, metadata !1206, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1208, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1210, metadata !DIExpression()), !dbg !1211
  %7 = load %struct.linebuffer*, %struct.linebuffer** %2, align 8, !dbg !1212
  %8 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %7, i32 0, i32 2, !dbg !1213
  %9 = load i8*, i8** %8, align 8, !dbg !1213
  store i8* %9, i8** %4, align 8, !dbg !1211
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1214, metadata !DIExpression()), !dbg !1215
  %10 = load %struct.linebuffer*, %struct.linebuffer** %2, align 8, !dbg !1216
  %11 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %10, i32 0, i32 1, !dbg !1217
  %12 = load i64, i64* %11, align 8, !dbg !1217
  %13 = sub i64 %12, 1, !dbg !1218
  store i64 %13, i64* %5, align 8, !dbg !1215
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1219, metadata !DIExpression()), !dbg !1220
  store i64 0, i64* %6, align 8, !dbg !1220
  store i64 0, i64* %3, align 8, !dbg !1221
  br label %14, !dbg !1223

; <label>:14:                                     ; preds = %75, %1
  %15 = load i64, i64* %3, align 8, !dbg !1224
  %16 = icmp ult i64 %15, 0, !dbg !1226
  br i1 %16, label %17, label %21, !dbg !1227

; <label>:17:                                     ; preds = %14
  %18 = load i64, i64* %6, align 8, !dbg !1228
  %19 = load i64, i64* %5, align 8, !dbg !1229
  %20 = icmp ult i64 %18, %19, !dbg !1230
  br label %21

; <label>:21:                                     ; preds = %17, %14
  %22 = phi i1 [ false, %14 ], [ %20, %17 ]
  br i1 %22, label %23, label %78, !dbg !1231

; <label>:23:                                     ; preds = %21
  br label %24, !dbg !1232

; <label>:24:                                     ; preds = %45, %23
  %25 = load i64, i64* %6, align 8, !dbg !1234
  %26 = load i64, i64* %5, align 8, !dbg !1235
  %27 = icmp ult i64 %25, %26, !dbg !1236
  br i1 %27, label %28, label %43, !dbg !1237

; <label>:28:                                     ; preds = %24
  %29 = call i16** @__ctype_b_loc() #16, !dbg !1238
  %30 = load i16*, i16** %29, align 8, !dbg !1238
  %31 = load i8*, i8** %4, align 8, !dbg !1238
  %32 = load i64, i64* %6, align 8, !dbg !1238
  %33 = getelementptr inbounds i8, i8* %31, i64 %32, !dbg !1238
  %34 = load i8, i8* %33, align 1, !dbg !1238
  %35 = call zeroext i8 @to_uchar(i8 signext %34), !dbg !1238
  %36 = zext i8 %35 to i32, !dbg !1238
  %37 = sext i32 %36 to i64, !dbg !1238
  %38 = getelementptr inbounds i16, i16* %30, i64 %37, !dbg !1238
  %39 = load i16, i16* %38, align 2, !dbg !1238
  %40 = zext i16 %39 to i32, !dbg !1238
  %41 = and i32 %40, 1, !dbg !1238
  %42 = icmp ne i32 %41, 0, !dbg !1237
  br label %43

; <label>:43:                                     ; preds = %28, %24
  %44 = phi i1 [ false, %24 ], [ %42, %28 ]
  br i1 %44, label %45, label %48, !dbg !1232

; <label>:45:                                     ; preds = %43
  %46 = load i64, i64* %6, align 8, !dbg !1239
  %47 = add i64 %46, 1, !dbg !1239
  store i64 %47, i64* %6, align 8, !dbg !1239
  br label %24, !dbg !1232, !llvm.loop !1240

; <label>:48:                                     ; preds = %43
  br label %49, !dbg !1241

; <label>:49:                                     ; preds = %71, %48
  %50 = load i64, i64* %6, align 8, !dbg !1242
  %51 = load i64, i64* %5, align 8, !dbg !1243
  %52 = icmp ult i64 %50, %51, !dbg !1244
  br i1 %52, label %53, label %69, !dbg !1245

; <label>:53:                                     ; preds = %49
  %54 = call i16** @__ctype_b_loc() #16, !dbg !1246
  %55 = load i16*, i16** %54, align 8, !dbg !1246
  %56 = load i8*, i8** %4, align 8, !dbg !1246
  %57 = load i64, i64* %6, align 8, !dbg !1246
  %58 = getelementptr inbounds i8, i8* %56, i64 %57, !dbg !1246
  %59 = load i8, i8* %58, align 1, !dbg !1246
  %60 = call zeroext i8 @to_uchar(i8 signext %59), !dbg !1246
  %61 = zext i8 %60 to i32, !dbg !1246
  %62 = sext i32 %61 to i64, !dbg !1246
  %63 = getelementptr inbounds i16, i16* %55, i64 %62, !dbg !1246
  %64 = load i16, i16* %63, align 2, !dbg !1246
  %65 = zext i16 %64 to i32, !dbg !1246
  %66 = and i32 %65, 1, !dbg !1246
  %67 = icmp ne i32 %66, 0, !dbg !1247
  %68 = xor i1 %67, true, !dbg !1247
  br label %69

; <label>:69:                                     ; preds = %53, %49
  %70 = phi i1 [ false, %49 ], [ %68, %53 ]
  br i1 %70, label %71, label %74, !dbg !1241

; <label>:71:                                     ; preds = %69
  %72 = load i64, i64* %6, align 8, !dbg !1248
  %73 = add i64 %72, 1, !dbg !1248
  store i64 %73, i64* %6, align 8, !dbg !1248
  br label %49, !dbg !1241, !llvm.loop !1249

; <label>:74:                                     ; preds = %69
  br label %75, !dbg !1250

; <label>:75:                                     ; preds = %74
  %76 = load i64, i64* %3, align 8, !dbg !1251
  %77 = add i64 %76, 1, !dbg !1251
  store i64 %77, i64* %3, align 8, !dbg !1251
  br label %14, !dbg !1252, !llvm.loop !1253

; <label>:78:                                     ; preds = %21
  %79 = load i64, i64* %5, align 8, !dbg !1255
  %80 = load i64, i64* %6, align 8, !dbg !1255
  %81 = sub i64 %79, %80, !dbg !1255
  %82 = icmp ult i64 0, %81, !dbg !1255
  br i1 %82, label %83, label %84, !dbg !1255

; <label>:83:                                     ; preds = %78
  br label %88, !dbg !1255

; <label>:84:                                     ; preds = %78
  %85 = load i64, i64* %5, align 8, !dbg !1255
  %86 = load i64, i64* %6, align 8, !dbg !1255
  %87 = sub i64 %85, %86, !dbg !1255
  br label %88, !dbg !1255

; <label>:88:                                     ; preds = %84, %83
  %89 = phi i64 [ 0, %83 ], [ %87, %84 ], !dbg !1255
  %90 = load i64, i64* %6, align 8, !dbg !1256
  %91 = add i64 %90, %89, !dbg !1256
  store i64 %91, i64* %6, align 8, !dbg !1256
  %92 = load %struct.linebuffer*, %struct.linebuffer** %2, align 8, !dbg !1257
  %93 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %92, i32 0, i32 2, !dbg !1258
  %94 = load i8*, i8** %93, align 8, !dbg !1258
  %95 = load i64, i64* %6, align 8, !dbg !1259
  %96 = getelementptr inbounds i8, i8* %94, i64 %95, !dbg !1260
  ret i8* %96, !dbg !1261
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @different(i8*, i8*, i64, i64) #2 !dbg !1262 {
  %5 = alloca i1, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1265, metadata !DIExpression()), !dbg !1266
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1267, metadata !DIExpression()), !dbg !1268
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1269, metadata !DIExpression()), !dbg !1270
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1271, metadata !DIExpression()), !dbg !1272
  %10 = load i64, i64* %8, align 8, !dbg !1273
  %11 = icmp ult i64 -1, %10, !dbg !1275
  br i1 %11, label %12, label %13, !dbg !1276

; <label>:12:                                     ; preds = %4
  store i64 -1, i64* %8, align 8, !dbg !1277
  br label %13, !dbg !1278

; <label>:13:                                     ; preds = %12, %4
  %14 = load i64, i64* %9, align 8, !dbg !1279
  %15 = icmp ult i64 -1, %14, !dbg !1281
  br i1 %15, label %16, label %17, !dbg !1282

; <label>:16:                                     ; preds = %13
  store i64 -1, i64* %9, align 8, !dbg !1283
  br label %17, !dbg !1284

; <label>:17:                                     ; preds = %16, %13
  br i1 false, label %18, label %30, !dbg !1285

; <label>:18:                                     ; preds = %17
  %19 = load i64, i64* %8, align 8, !dbg !1286
  %20 = load i64, i64* %9, align 8, !dbg !1289
  %21 = icmp ne i64 %19, %20, !dbg !1290
  br i1 %21, label %28, label %22, !dbg !1291

; <label>:22:                                     ; preds = %18
  %23 = load i8*, i8** %6, align 8, !dbg !1292
  %24 = load i8*, i8** %7, align 8, !dbg !1293
  %25 = load i64, i64* %8, align 8, !dbg !1294
  %26 = call i32 @memcasecmp(i8* %23, i8* %24, i64 %25) #14, !dbg !1295
  %27 = icmp ne i32 %26, 0, !dbg !1291
  br label %28, !dbg !1291

; <label>:28:                                     ; preds = %22, %18
  %29 = phi i1 [ true, %18 ], [ %27, %22 ]
  store i1 %29, i1* %5, align 1, !dbg !1296
  br label %50, !dbg !1296

; <label>:30:                                     ; preds = %17
  br i1 true, label %31, label %38, !dbg !1297

; <label>:31:                                     ; preds = %30
  %32 = load i8*, i8** %6, align 8, !dbg !1298
  %33 = load i64, i64* %8, align 8, !dbg !1300
  %34 = load i8*, i8** %7, align 8, !dbg !1301
  %35 = load i64, i64* %9, align 8, !dbg !1302
  %36 = call i32 @xmemcoll(i8* %32, i64 %33, i8* %34, i64 %35), !dbg !1303
  %37 = icmp ne i32 %36, 0, !dbg !1304
  store i1 %37, i1* %5, align 1, !dbg !1305
  br label %50, !dbg !1305

; <label>:38:                                     ; preds = %30
  %39 = load i64, i64* %8, align 8, !dbg !1306
  %40 = load i64, i64* %9, align 8, !dbg !1307
  %41 = icmp ne i64 %39, %40, !dbg !1308
  br i1 %41, label %48, label %42, !dbg !1309

; <label>:42:                                     ; preds = %38
  %43 = load i8*, i8** %6, align 8, !dbg !1310
  %44 = load i8*, i8** %7, align 8, !dbg !1311
  %45 = load i64, i64* %8, align 8, !dbg !1312
  %46 = call i32 @memcmp(i8* %43, i8* %44, i64 %45) #14, !dbg !1313
  %47 = icmp ne i32 %46, 0, !dbg !1309
  br label %48, !dbg !1309

; <label>:48:                                     ; preds = %42, %38
  %49 = phi i1 [ true, %38 ], [ %47, %42 ]
  store i1 %49, i1* %5, align 1, !dbg !1314
  br label %50, !dbg !1314

; <label>:50:                                     ; preds = %48, %31, %28
  %51 = load i1, i1* %5, align 1, !dbg !1315
  ret i1 %51, !dbg !1315
}

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE*) #5

declare i32 @putchar_unlocked(i32) #3

; Function Attrs: noinline nounwind uwtable
define internal void @writeline(%struct.linebuffer*, i1 zeroext, i64) #2 !dbg !1316 {
  %4 = alloca %struct.linebuffer*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  store %struct.linebuffer* %0, %struct.linebuffer** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %4, metadata !1319, metadata !DIExpression()), !dbg !1320
  %7 = zext i1 %1 to i8
  store i8 %7, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1321, metadata !DIExpression()), !dbg !1322
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1323, metadata !DIExpression()), !dbg !1324
  %8 = load i64, i64* %6, align 8, !dbg !1325
  %9 = icmp eq i64 %8, 0, !dbg !1327
  br i1 %9, label %10, label %11, !dbg !1328

; <label>:10:                                     ; preds = %3
  br i1 false, label %17, label %16, !dbg !1325

; <label>:11:                                     ; preds = %3
  %12 = load i8, i8* %5, align 1, !dbg !1329
  %13 = trunc i8 %12 to i1, !dbg !1329
  br i1 %13, label %15, label %14, !dbg !1328

; <label>:14:                                     ; preds = %11
  br i1 true, label %17, label %16, !dbg !1330

; <label>:15:                                     ; preds = %11
  br i1 false, label %17, label %16, !dbg !1328

; <label>:16:                                     ; preds = %15, %14, %10
  br label %31, !dbg !1331

; <label>:17:                                     ; preds = %15, %14, %10
  br i1 false, label %18, label %22, !dbg !1332

; <label>:18:                                     ; preds = %17
  %19 = load i64, i64* %6, align 8, !dbg !1333
  %20 = add i64 %19, 1, !dbg !1335
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i64 %20), !dbg !1336
  br label %22, !dbg !1336

; <label>:22:                                     ; preds = %18, %17
  %23 = load %struct.linebuffer*, %struct.linebuffer** %4, align 8, !dbg !1337
  %24 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %23, i32 0, i32 2, !dbg !1337
  %25 = load i8*, i8** %24, align 8, !dbg !1337
  %26 = load %struct.linebuffer*, %struct.linebuffer** %4, align 8, !dbg !1337
  %27 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %26, i32 0, i32 1, !dbg !1337
  %28 = load i64, i64* %27, align 8, !dbg !1337
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1337
  %30 = call i64 @fwrite_unlocked(i8* %25, i64 1, i64 %28, %struct._IO_FILE* %29), !dbg !1337
  br label %31, !dbg !1338

; <label>:31:                                     ; preds = %22, %16
  ret void, !dbg !1338
}

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #6

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #7

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @to_uchar(i8 signext) #2 !dbg !1339 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !1342, metadata !DIExpression()), !dbg !1343
  %3 = load i8, i8* %2, align 1, !dbg !1344
  ret i8 %3, !dbg !1345
}

; Function Attrs: noinline nounwind uwtable
define internal void @__argmatch_die() #2 !dbg !1346 {
  call void @usage(i32 1), !dbg !1347
  ret void, !dbg !1348
}

; Function Attrs: noinline nounwind readonly uwtable
define i64 @argmatch(i8*, i8**, i8*, i64) #8 !dbg !1349 {
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
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1355, metadata !DIExpression()), !dbg !1356
  store i8** %1, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1357, metadata !DIExpression()), !dbg !1358
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1359, metadata !DIExpression()), !dbg !1360
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1361, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1363, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1365, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1367, metadata !DIExpression()), !dbg !1368
  store i64 -1, i64* %12, align 8, !dbg !1368
  call void @llvm.dbg.declare(metadata i8* %13, metadata !1369, metadata !DIExpression()), !dbg !1370
  store i8 0, i8* %13, align 1, !dbg !1370
  %14 = load i8*, i8** %6, align 8, !dbg !1371
  %15 = call i64 @strlen(i8* %14) #14, !dbg !1372
  store i64 %15, i64* %11, align 8, !dbg !1373
  store i64 0, i64* %10, align 8, !dbg !1374
  br label %16, !dbg !1376

; <label>:16:                                     ; preds = %68, %4
  %17 = load i8**, i8*** %7, align 8, !dbg !1377
  %18 = load i64, i64* %10, align 8, !dbg !1379
  %19 = getelementptr inbounds i8*, i8** %17, i64 %18, !dbg !1377
  %20 = load i8*, i8** %19, align 8, !dbg !1377
  %21 = icmp ne i8* %20, null, !dbg !1380
  br i1 %21, label %22, label %71, !dbg !1380

; <label>:22:                                     ; preds = %16
  %23 = load i8**, i8*** %7, align 8, !dbg !1381
  %24 = load i64, i64* %10, align 8, !dbg !1384
  %25 = getelementptr inbounds i8*, i8** %23, i64 %24, !dbg !1381
  %26 = load i8*, i8** %25, align 8, !dbg !1381
  %27 = load i8*, i8** %6, align 8, !dbg !1385
  %28 = load i64, i64* %11, align 8, !dbg !1386
  %29 = call i32 @strncmp(i8* %26, i8* %27, i64 %28) #14, !dbg !1387
  %30 = icmp ne i32 %29, 0, !dbg !1387
  br i1 %30, label %67, label %31, !dbg !1388

; <label>:31:                                     ; preds = %22
  %32 = load i8**, i8*** %7, align 8, !dbg !1389
  %33 = load i64, i64* %10, align 8, !dbg !1392
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33, !dbg !1389
  %35 = load i8*, i8** %34, align 8, !dbg !1389
  %36 = call i64 @strlen(i8* %35) #14, !dbg !1393
  %37 = load i64, i64* %11, align 8, !dbg !1394
  %38 = icmp eq i64 %36, %37, !dbg !1395
  br i1 %38, label %39, label %41, !dbg !1396

; <label>:39:                                     ; preds = %31
  %40 = load i64, i64* %10, align 8, !dbg !1397
  store i64 %40, i64* %5, align 8, !dbg !1398
  br label %77, !dbg !1398

; <label>:41:                                     ; preds = %31
  %42 = load i64, i64* %12, align 8, !dbg !1399
  %43 = icmp eq i64 %42, -1, !dbg !1401
  br i1 %43, label %44, label %46, !dbg !1402

; <label>:44:                                     ; preds = %41
  %45 = load i64, i64* %10, align 8, !dbg !1403
  store i64 %45, i64* %12, align 8, !dbg !1404
  br label %65, !dbg !1405

; <label>:46:                                     ; preds = %41
  %47 = load i8*, i8** %8, align 8, !dbg !1406
  %48 = icmp eq i8* %47, null, !dbg !1409
  br i1 %48, label %63, label %49, !dbg !1410

; <label>:49:                                     ; preds = %46
  %50 = load i8*, i8** %8, align 8, !dbg !1411
  %51 = load i64, i64* %9, align 8, !dbg !1412
  %52 = load i64, i64* %12, align 8, !dbg !1413
  %53 = mul i64 %51, %52, !dbg !1414
  %54 = getelementptr inbounds i8, i8* %50, i64 %53, !dbg !1415
  %55 = load i8*, i8** %8, align 8, !dbg !1416
  %56 = load i64, i64* %9, align 8, !dbg !1417
  %57 = load i64, i64* %10, align 8, !dbg !1418
  %58 = mul i64 %56, %57, !dbg !1419
  %59 = getelementptr inbounds i8, i8* %55, i64 %58, !dbg !1420
  %60 = load i64, i64* %9, align 8, !dbg !1421
  %61 = call i32 @memcmp(i8* %54, i8* %59, i64 %60) #14, !dbg !1422
  %62 = icmp ne i32 %61, 0, !dbg !1422
  br i1 %62, label %63, label %64, !dbg !1423

; <label>:63:                                     ; preds = %49, %46
  store i8 1, i8* %13, align 1, !dbg !1424
  br label %64, !dbg !1426

; <label>:64:                                     ; preds = %63, %49
  br label %65

; <label>:65:                                     ; preds = %64, %44
  br label %66

; <label>:66:                                     ; preds = %65
  br label %67, !dbg !1427

; <label>:67:                                     ; preds = %66, %22
  br label %68, !dbg !1428

; <label>:68:                                     ; preds = %67
  %69 = load i64, i64* %10, align 8, !dbg !1429
  %70 = add i64 %69, 1, !dbg !1429
  store i64 %70, i64* %10, align 8, !dbg !1429
  br label %16, !dbg !1430, !llvm.loop !1431

; <label>:71:                                     ; preds = %16
  %72 = load i8, i8* %13, align 1, !dbg !1433
  %73 = trunc i8 %72 to i1, !dbg !1433
  br i1 %73, label %74, label %75, !dbg !1435

; <label>:74:                                     ; preds = %71
  store i64 -2, i64* %5, align 8, !dbg !1436
  br label %77, !dbg !1436

; <label>:75:                                     ; preds = %71
  %76 = load i64, i64* %12, align 8, !dbg !1437
  store i64 %76, i64* %5, align 8, !dbg !1438
  br label %77, !dbg !1438

; <label>:77:                                     ; preds = %75, %74, %39
  %78 = load i64, i64* %5, align 8, !dbg !1439
  ret i64 %78, !dbg !1439
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

; Function Attrs: noinline nounwind uwtable
define void @argmatch_invalid(i8*, i8*, i64) #2 !dbg !1440 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1443, metadata !DIExpression()), !dbg !1444
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1445, metadata !DIExpression()), !dbg !1446
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1447, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1449, metadata !DIExpression()), !dbg !1450
  %8 = load i64, i64* %6, align 8, !dbg !1451
  %9 = icmp eq i64 %8, -1, !dbg !1452
  %10 = zext i1 %9 to i64, !dbg !1451
  %11 = select i1 %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.57, i32 0, i32 0), !dbg !1451
  store i8* %11, i8** %7, align 8, !dbg !1450
  %12 = load i8*, i8** %7, align 8, !dbg !1453
  %13 = load i8*, i8** %5, align 8, !dbg !1454
  %14 = call i8* @quotearg_n_style(i32 0, i32 6, i8* %13), !dbg !1455
  %15 = load i8*, i8** %4, align 8, !dbg !1456
  %16 = call i8* @quote_n(i32 1, i8* %15), !dbg !1457
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %12, i8* %14, i8* %16), !dbg !1458
  ret void, !dbg !1459
}

; Function Attrs: noinline nounwind uwtable
define void @argmatch_valid(i8**, i8*, i64) #2 !dbg !1460 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !1463, metadata !DIExpression()), !dbg !1464
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1465, metadata !DIExpression()), !dbg !1466
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1467, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1469, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1471, metadata !DIExpression()), !dbg !1472
  store i8* null, i8** %8, align 8, !dbg !1472
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1473
  %10 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.58, i32 0, i32 0), %struct._IO_FILE* %9), !dbg !1473
  store i64 0, i64* %7, align 8, !dbg !1474
  br label %11, !dbg !1476

; <label>:11:                                     ; preds = %52, %3
  %12 = load i8**, i8*** %4, align 8, !dbg !1477
  %13 = load i64, i64* %7, align 8, !dbg !1479
  %14 = getelementptr inbounds i8*, i8** %12, i64 %13, !dbg !1477
  %15 = load i8*, i8** %14, align 8, !dbg !1477
  %16 = icmp ne i8* %15, null, !dbg !1480
  br i1 %16, label %17, label %55, !dbg !1480

; <label>:17:                                     ; preds = %11
  %18 = load i64, i64* %7, align 8, !dbg !1481
  %19 = icmp eq i64 %18, 0, !dbg !1483
  br i1 %19, label %30, label %20, !dbg !1484

; <label>:20:                                     ; preds = %17
  %21 = load i8*, i8** %8, align 8, !dbg !1485
  %22 = load i8*, i8** %5, align 8, !dbg !1486
  %23 = load i64, i64* %6, align 8, !dbg !1487
  %24 = load i64, i64* %7, align 8, !dbg !1488
  %25 = mul i64 %23, %24, !dbg !1489
  %26 = getelementptr inbounds i8, i8* %22, i64 %25, !dbg !1490
  %27 = load i64, i64* %6, align 8, !dbg !1491
  %28 = call i32 @memcmp(i8* %21, i8* %26, i64 %27) #14, !dbg !1492
  %29 = icmp ne i32 %28, 0, !dbg !1492
  br i1 %29, label %30, label %43, !dbg !1493

; <label>:30:                                     ; preds = %20, %17
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1494
  %32 = load i8**, i8*** %4, align 8, !dbg !1496
  %33 = load i64, i64* %7, align 8, !dbg !1497
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33, !dbg !1496
  %35 = load i8*, i8** %34, align 8, !dbg !1496
  %36 = call i8* @quote(i8* %35), !dbg !1498
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.59, i32 0, i32 0), i8* %36), !dbg !1499
  %38 = load i8*, i8** %5, align 8, !dbg !1500
  %39 = load i64, i64* %6, align 8, !dbg !1501
  %40 = load i64, i64* %7, align 8, !dbg !1502
  %41 = mul i64 %39, %40, !dbg !1503
  %42 = getelementptr inbounds i8, i8* %38, i64 %41, !dbg !1504
  store i8* %42, i8** %8, align 8, !dbg !1505
  br label %51, !dbg !1506

; <label>:43:                                     ; preds = %20
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1507
  %45 = load i8**, i8*** %4, align 8, !dbg !1509
  %46 = load i64, i64* %7, align 8, !dbg !1510
  %47 = getelementptr inbounds i8*, i8** %45, i64 %46, !dbg !1509
  %48 = load i8*, i8** %47, align 8, !dbg !1509
  %49 = call i8* @quote(i8* %48), !dbg !1511
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.60, i32 0, i32 0), i8* %49), !dbg !1512
  br label %51

; <label>:51:                                     ; preds = %43, %30
  br label %52, !dbg !1513

; <label>:52:                                     ; preds = %51
  %53 = load i64, i64* %7, align 8, !dbg !1514
  %54 = add i64 %53, 1, !dbg !1514
  store i64 %54, i64* %7, align 8, !dbg !1514
  br label %11, !dbg !1515, !llvm.loop !1516

; <label>:55:                                     ; preds = %11
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1518
  %57 = call i32 @putc_unlocked(i32 10, %struct._IO_FILE* %56), !dbg !1518
  ret void, !dbg !1519
}

declare i32 @putc_unlocked(i32, %struct._IO_FILE*) #3

; Function Attrs: noinline nounwind uwtable
define i64 @__xargmatch_internal(i8*, i8*, i8**, i8*, i64, void ()*) #2 !dbg !1520 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca void ()*, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1523, metadata !DIExpression()), !dbg !1524
  store i8* %1, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1525, metadata !DIExpression()), !dbg !1526
  store i8** %2, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !1527, metadata !DIExpression()), !dbg !1528
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1529, metadata !DIExpression()), !dbg !1530
  store i64 %4, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1531, metadata !DIExpression()), !dbg !1532
  store void ()* %5, void ()** %13, align 8
  call void @llvm.dbg.declare(metadata void ()** %13, metadata !1533, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1535, metadata !DIExpression()), !dbg !1536
  %15 = load i8*, i8** %9, align 8, !dbg !1537
  %16 = load i8**, i8*** %10, align 8, !dbg !1538
  %17 = load i8*, i8** %11, align 8, !dbg !1539
  %18 = load i64, i64* %12, align 8, !dbg !1540
  %19 = call i64 @argmatch(i8* %15, i8** %16, i8* %17, i64 %18) #14, !dbg !1541
  store i64 %19, i64* %14, align 8, !dbg !1536
  %20 = load i64, i64* %14, align 8, !dbg !1542
  %21 = icmp sge i64 %20, 0, !dbg !1544
  br i1 %21, label %22, label %24, !dbg !1545

; <label>:22:                                     ; preds = %6
  %23 = load i64, i64* %14, align 8, !dbg !1546
  store i64 %23, i64* %7, align 8, !dbg !1547
  br label %32, !dbg !1547

; <label>:24:                                     ; preds = %6
  %25 = load i8*, i8** %8, align 8, !dbg !1548
  %26 = load i8*, i8** %9, align 8, !dbg !1549
  %27 = load i64, i64* %14, align 8, !dbg !1550
  call void @argmatch_invalid(i8* %25, i8* %26, i64 %27), !dbg !1551
  %28 = load i8**, i8*** %10, align 8, !dbg !1552
  %29 = load i8*, i8** %11, align 8, !dbg !1553
  %30 = load i64, i64* %12, align 8, !dbg !1554
  call void @argmatch_valid(i8** %28, i8* %29, i64 %30), !dbg !1555
  %31 = load void ()*, void ()** %13, align 8, !dbg !1556
  call void %31(), !dbg !1557
  store i64 -1, i64* %7, align 8, !dbg !1558
  br label %32, !dbg !1558

; <label>:32:                                     ; preds = %24, %22
  %33 = load i64, i64* %7, align 8, !dbg !1559
  ret i64 %33, !dbg !1559
}

; Function Attrs: noinline nounwind readonly uwtable
define i8* @argmatch_to_argument(i8*, i8**, i8*, i64) #8 !dbg !1560 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1563, metadata !DIExpression()), !dbg !1564
  store i8** %1, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1565, metadata !DIExpression()), !dbg !1566
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1567, metadata !DIExpression()), !dbg !1568
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1569, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1571, metadata !DIExpression()), !dbg !1572
  store i64 0, i64* %10, align 8, !dbg !1573
  br label %11, !dbg !1575

; <label>:11:                                     ; preds = %33, %4
  %12 = load i8**, i8*** %7, align 8, !dbg !1576
  %13 = load i64, i64* %10, align 8, !dbg !1578
  %14 = getelementptr inbounds i8*, i8** %12, i64 %13, !dbg !1576
  %15 = load i8*, i8** %14, align 8, !dbg !1576
  %16 = icmp ne i8* %15, null, !dbg !1579
  br i1 %16, label %17, label %36, !dbg !1579

; <label>:17:                                     ; preds = %11
  %18 = load i8*, i8** %6, align 8, !dbg !1580
  %19 = load i8*, i8** %8, align 8, !dbg !1582
  %20 = load i64, i64* %9, align 8, !dbg !1583
  %21 = load i64, i64* %10, align 8, !dbg !1584
  %22 = mul i64 %20, %21, !dbg !1585
  %23 = getelementptr inbounds i8, i8* %19, i64 %22, !dbg !1586
  %24 = load i64, i64* %9, align 8, !dbg !1587
  %25 = call i32 @memcmp(i8* %18, i8* %23, i64 %24) #14, !dbg !1588
  %26 = icmp ne i32 %25, 0, !dbg !1588
  br i1 %26, label %32, label %27, !dbg !1589

; <label>:27:                                     ; preds = %17
  %28 = load i8**, i8*** %7, align 8, !dbg !1590
  %29 = load i64, i64* %10, align 8, !dbg !1591
  %30 = getelementptr inbounds i8*, i8** %28, i64 %29, !dbg !1590
  %31 = load i8*, i8** %30, align 8, !dbg !1590
  store i8* %31, i8** %5, align 8, !dbg !1592
  br label %37, !dbg !1592

; <label>:32:                                     ; preds = %17
  br label %33, !dbg !1593

; <label>:33:                                     ; preds = %32
  %34 = load i64, i64* %10, align 8, !dbg !1594
  %35 = add i64 %34, 1, !dbg !1594
  store i64 %35, i64* %10, align 8, !dbg !1594
  br label %11, !dbg !1595, !llvm.loop !1596

; <label>:36:                                     ; preds = %11
  store i8* null, i8** %5, align 8, !dbg !1598
  br label %37, !dbg !1598

; <label>:37:                                     ; preds = %36, %27
  %38 = load i8*, i8** %5, align 8, !dbg !1599
  ret i8* %38, !dbg !1599
}

; Function Attrs: noinline nounwind uwtable
define void @close_stdout_set_file_name(i8*) #2 !dbg !1600 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1603, metadata !DIExpression()), !dbg !1604
  %3 = load i8*, i8** %2, align 8, !dbg !1605
  store i8* %3, i8** @file_name, align 8, !dbg !1606
  ret void, !dbg !1607
}

; Function Attrs: noinline nounwind uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) #2 !dbg !1608 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !1611, metadata !DIExpression()), !dbg !1612
  %4 = load i8, i8* %2, align 1, !dbg !1613
  %5 = trunc i8 %4 to i1, !dbg !1613
  %6 = zext i1 %5 to i8, !dbg !1614
  store i8 %6, i8* @ignore_EPIPE, align 1, !dbg !1614
  ret void, !dbg !1615
}

; Function Attrs: noinline nounwind uwtable
define void @close_stdout() #2 !dbg !1616 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1617
  %3 = call i32 @close_stream(%struct._IO_FILE* %2), !dbg !1619
  %4 = icmp ne i32 %3, 0, !dbg !1620
  br i1 %4, label %5, label %27, !dbg !1621

; <label>:5:                                      ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1622
  %7 = trunc i8 %6 to i1, !dbg !1622
  br i1 %7, label %8, label %12, !dbg !1623

; <label>:8:                                      ; preds = %5
  %9 = call i32* @__errno_location() #16, !dbg !1624
  %10 = load i32, i32* %9, align 4, !dbg !1624
  %11 = icmp eq i32 %10, 32, !dbg !1625
  br i1 %11, label %27, label %12, !dbg !1626

; <label>:12:                                     ; preds = %8, %5
  call void @llvm.dbg.declare(metadata i8** %1, metadata !1627, metadata !DIExpression()), !dbg !1629
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i32 0, i32 0), i8** %1, align 8, !dbg !1629
  %13 = load i8*, i8** @file_name, align 8, !dbg !1630
  %14 = icmp ne i8* %13, null, !dbg !1630
  br i1 %14, label %15, label %21, !dbg !1632

; <label>:15:                                     ; preds = %12
  %16 = call i32* @__errno_location() #16, !dbg !1633
  %17 = load i32, i32* %16, align 4, !dbg !1633
  %18 = load i8*, i8** @file_name, align 8, !dbg !1634
  %19 = call i8* @quotearg_colon(i8* %18), !dbg !1635
  %20 = load i8*, i8** %1, align 8, !dbg !1636
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.66, i32 0, i32 0), i8* %19, i8* %20), !dbg !1637
  br label %25, !dbg !1637

; <label>:21:                                     ; preds = %12
  %22 = call i32* @__errno_location() #16, !dbg !1638
  %23 = load i32, i32* %22, align 4, !dbg !1638
  %24 = load i8*, i8** %1, align 8, !dbg !1639
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.67, i32 0, i32 0), i8* %24), !dbg !1640
  br label %25

; <label>:25:                                     ; preds = %21, %15
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1641
  call void @_exit(i32 %26) #15, !dbg !1642
  unreachable, !dbg !1642

; <label>:27:                                     ; preds = %8, %0
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1643
  %29 = call i32 @close_stream(%struct._IO_FILE* %28), !dbg !1645
  %30 = icmp ne i32 %29, 0, !dbg !1646
  br i1 %30, label %31, label %33, !dbg !1647

; <label>:31:                                     ; preds = %27
  %32 = load volatile i32, i32* @exit_failure, align 4, !dbg !1648
  call void @_exit(i32 %32) #15, !dbg !1649
  unreachable, !dbg !1649

; <label>:33:                                     ; preds = %27
  ret void, !dbg !1650
}

; Function Attrs: noreturn
declare void @_exit(i32) #9

; Function Attrs: noinline nounwind readonly uwtable
define i8* @last_component(i8*) #8 !dbg !1651 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1654, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1656, metadata !DIExpression()), !dbg !1657
  %6 = load i8*, i8** %2, align 8, !dbg !1658
  %7 = getelementptr inbounds i8, i8* %6, i64 0, !dbg !1659
  store i8* %7, i8** %3, align 8, !dbg !1657
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1660, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1662, metadata !DIExpression()), !dbg !1663
  store i8 0, i8* %5, align 1, !dbg !1663
  br label %8, !dbg !1664

; <label>:8:                                      ; preds = %13, %1
  %9 = load i8*, i8** %3, align 8, !dbg !1665
  %10 = load i8, i8* %9, align 1, !dbg !1665
  %11 = sext i8 %10 to i32, !dbg !1665
  %12 = icmp eq i32 %11, 47, !dbg !1665
  br i1 %12, label %13, label %16, !dbg !1664

; <label>:13:                                     ; preds = %8
  %14 = load i8*, i8** %3, align 8, !dbg !1666
  %15 = getelementptr inbounds i8, i8* %14, i32 1, !dbg !1666
  store i8* %15, i8** %3, align 8, !dbg !1666
  br label %8, !dbg !1664, !llvm.loop !1667

; <label>:16:                                     ; preds = %8
  %17 = load i8*, i8** %3, align 8, !dbg !1668
  store i8* %17, i8** %4, align 8, !dbg !1670
  br label %18, !dbg !1671

; <label>:18:                                     ; preds = %35, %16
  %19 = load i8*, i8** %4, align 8, !dbg !1672
  %20 = load i8, i8* %19, align 1, !dbg !1674
  %21 = icmp ne i8 %20, 0, !dbg !1675
  br i1 %21, label %22, label %38, !dbg !1675

; <label>:22:                                     ; preds = %18
  %23 = load i8*, i8** %4, align 8, !dbg !1676
  %24 = load i8, i8* %23, align 1, !dbg !1676
  %25 = sext i8 %24 to i32, !dbg !1676
  %26 = icmp eq i32 %25, 47, !dbg !1676
  br i1 %26, label %27, label %28, !dbg !1679

; <label>:27:                                     ; preds = %22
  store i8 1, i8* %5, align 1, !dbg !1680
  br label %34, !dbg !1681

; <label>:28:                                     ; preds = %22
  %29 = load i8, i8* %5, align 1, !dbg !1682
  %30 = trunc i8 %29 to i1, !dbg !1682
  br i1 %30, label %31, label %33, !dbg !1684

; <label>:31:                                     ; preds = %28
  %32 = load i8*, i8** %4, align 8, !dbg !1685
  store i8* %32, i8** %3, align 8, !dbg !1687
  store i8 0, i8* %5, align 1, !dbg !1688
  br label %33, !dbg !1689

; <label>:33:                                     ; preds = %31, %28
  br label %34

; <label>:34:                                     ; preds = %33, %27
  br label %35, !dbg !1690

; <label>:35:                                     ; preds = %34
  %36 = load i8*, i8** %4, align 8, !dbg !1691
  %37 = getelementptr inbounds i8, i8* %36, i32 1, !dbg !1691
  store i8* %37, i8** %4, align 8, !dbg !1691
  br label %18, !dbg !1692, !llvm.loop !1693

; <label>:38:                                     ; preds = %18
  %39 = load i8*, i8** %3, align 8, !dbg !1695
  ret i8* %39, !dbg !1696
}

; Function Attrs: noinline nounwind readonly uwtable
define i64 @base_len(i8*) #8 !dbg !1697 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1700, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1702, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1704, metadata !DIExpression()), !dbg !1705
  store i64 0, i64* %4, align 8, !dbg !1705
  %5 = load i8*, i8** %2, align 8, !dbg !1706
  %6 = call i64 @strlen(i8* %5) #14, !dbg !1708
  store i64 %6, i64* %3, align 8, !dbg !1709
  br label %7, !dbg !1710

; <label>:7:                                      ; preds = %21, %1
  %8 = load i64, i64* %3, align 8, !dbg !1711
  %9 = icmp ult i64 1, %8, !dbg !1713
  br i1 %9, label %10, label %18, !dbg !1714

; <label>:10:                                     ; preds = %7
  %11 = load i8*, i8** %2, align 8, !dbg !1715
  %12 = load i64, i64* %3, align 8, !dbg !1715
  %13 = sub i64 %12, 1, !dbg !1715
  %14 = getelementptr inbounds i8, i8* %11, i64 %13, !dbg !1715
  %15 = load i8, i8* %14, align 1, !dbg !1715
  %16 = sext i8 %15 to i32, !dbg !1715
  %17 = icmp eq i32 %16, 47, !dbg !1715
  br label %18

; <label>:18:                                     ; preds = %10, %7
  %19 = phi i1 [ false, %7 ], [ %17, %10 ]
  br i1 %19, label %20, label %24, !dbg !1716

; <label>:20:                                     ; preds = %18
  br label %21, !dbg !1717

; <label>:21:                                     ; preds = %20
  %22 = load i64, i64* %3, align 8, !dbg !1718
  %23 = add i64 %22, -1, !dbg !1718
  store i64 %23, i64* %3, align 8, !dbg !1718
  br label %7, !dbg !1719, !llvm.loop !1720

; <label>:24:                                     ; preds = %18
  %25 = load i64, i64* %3, align 8, !dbg !1722
  ret i64 %25, !dbg !1723
}

; Function Attrs: noinline nounwind uwtable
define void @fdadvise(i32, i64, i64, i32) #2 !dbg !1724 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1732, metadata !DIExpression()), !dbg !1733
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1734, metadata !DIExpression()), !dbg !1735
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1736, metadata !DIExpression()), !dbg !1737
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1738, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1740, metadata !DIExpression()), !dbg !1742
  %10 = load i32, i32* %5, align 4, !dbg !1742
  %11 = load i64, i64* %6, align 8, !dbg !1742
  %12 = load i64, i64* %7, align 8, !dbg !1742
  %13 = load i32, i32* %8, align 4, !dbg !1742
  %14 = call i32 @posix_fadvise(i32 %10, i64 %11, i64 %12, i32 %13) #11, !dbg !1742
  store i32 %14, i32* %9, align 4, !dbg !1742
  %15 = load i32, i32* %9, align 4, !dbg !1742
  ret void, !dbg !1743
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) #5

; Function Attrs: noinline nounwind uwtable
define void @fadvise(%struct._IO_FILE*, i32) #2 !dbg !1744 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !1799, metadata !DIExpression()), !dbg !1800
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1801, metadata !DIExpression()), !dbg !1802
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1803
  %6 = icmp ne %struct._IO_FILE* %5, null, !dbg !1803
  br i1 %6, label %7, label %11, !dbg !1805

; <label>:7:                                      ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1806
  %9 = call i32 @fileno(%struct._IO_FILE* %8) #11, !dbg !1807
  %10 = load i32, i32* %4, align 4, !dbg !1808
  call void @fdadvise(i32 %9, i64 0, i64 0, i32 %10), !dbg !1809
  br label %11, !dbg !1809

; <label>:11:                                     ; preds = %7, %2
  ret void, !dbg !1810
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #5

; Function Attrs: noinline nounwind uwtable
define %struct._IO_FILE* @freopen_safer(i8*, i8*, %struct._IO_FILE*) #2 !dbg !1811 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1854, metadata !DIExpression()), !dbg !1855
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1856, metadata !DIExpression()), !dbg !1857
  store %struct._IO_FILE* %2, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !1858, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1860, metadata !DIExpression()), !dbg !1861
  store i8 0, i8* %7, align 1, !dbg !1861
  call void @llvm.dbg.declare(metadata i8* %8, metadata !1862, metadata !DIExpression()), !dbg !1863
  store i8 0, i8* %8, align 1, !dbg !1863
  call void @llvm.dbg.declare(metadata i8* %9, metadata !1864, metadata !DIExpression()), !dbg !1865
  store i8 0, i8* %9, align 1, !dbg !1865
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1866, metadata !DIExpression()), !dbg !1867
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !1868
  %12 = call i32 @fileno(%struct._IO_FILE* %11) #11, !dbg !1869
  switch i32 %12, label %13 [
    i32 2, label %18
    i32 1, label %23
    i32 0, label %28
  ], !dbg !1870

; <label>:13:                                     ; preds = %3
  %14 = call i32 @dup2(i32 2, i32 2) #11, !dbg !1871
  %15 = icmp ne i32 %14, 2, !dbg !1874
  br i1 %15, label %16, label %17, !dbg !1875

; <label>:16:                                     ; preds = %13
  store i8 1, i8* %9, align 1, !dbg !1876
  br label %17, !dbg !1877

; <label>:17:                                     ; preds = %16, %13
  br label %18, !dbg !1878

; <label>:18:                                     ; preds = %3, %17
  %19 = call i32 @dup2(i32 1, i32 1) #11, !dbg !1879
  %20 = icmp ne i32 %19, 1, !dbg !1881
  br i1 %20, label %21, label %22, !dbg !1882

; <label>:21:                                     ; preds = %18
  store i8 1, i8* %8, align 1, !dbg !1883
  br label %22, !dbg !1884

; <label>:22:                                     ; preds = %21, %18
  br label %23, !dbg !1885

; <label>:23:                                     ; preds = %3, %22
  %24 = call i32 @dup2(i32 0, i32 0) #11, !dbg !1886
  %25 = icmp ne i32 %24, 0, !dbg !1888
  br i1 %25, label %26, label %27, !dbg !1889

; <label>:26:                                     ; preds = %23
  store i8 1, i8* %7, align 1, !dbg !1890
  br label %27, !dbg !1891

; <label>:27:                                     ; preds = %26, %23
  br label %28, !dbg !1892

; <label>:28:                                     ; preds = %3, %27
  br label %29, !dbg !1893

; <label>:29:                                     ; preds = %28
  %30 = load i8, i8* %7, align 1, !dbg !1894
  %31 = trunc i8 %30 to i1, !dbg !1894
  br i1 %31, label %32, label %35, !dbg !1896

; <label>:32:                                     ; preds = %29
  %33 = call zeroext i1 @protect_fd(i32 0), !dbg !1897
  br i1 %33, label %35, label %34, !dbg !1898

; <label>:34:                                     ; preds = %32
  store %struct._IO_FILE* null, %struct._IO_FILE** %6, align 8, !dbg !1899
  br label %54, !dbg !1900

; <label>:35:                                     ; preds = %32, %29
  %36 = load i8, i8* %8, align 1, !dbg !1901
  %37 = trunc i8 %36 to i1, !dbg !1901
  br i1 %37, label %38, label %41, !dbg !1903

; <label>:38:                                     ; preds = %35
  %39 = call zeroext i1 @protect_fd(i32 1), !dbg !1904
  br i1 %39, label %41, label %40, !dbg !1905

; <label>:40:                                     ; preds = %38
  store %struct._IO_FILE* null, %struct._IO_FILE** %6, align 8, !dbg !1906
  br label %53, !dbg !1907

; <label>:41:                                     ; preds = %38, %35
  %42 = load i8, i8* %9, align 1, !dbg !1908
  %43 = trunc i8 %42 to i1, !dbg !1908
  br i1 %43, label %44, label %47, !dbg !1910

; <label>:44:                                     ; preds = %41
  %45 = call zeroext i1 @protect_fd(i32 2), !dbg !1911
  br i1 %45, label %47, label %46, !dbg !1912

; <label>:46:                                     ; preds = %44
  store %struct._IO_FILE* null, %struct._IO_FILE** %6, align 8, !dbg !1913
  br label %52, !dbg !1914

; <label>:47:                                     ; preds = %44, %41
  %48 = load i8*, i8** %4, align 8, !dbg !1915
  %49 = load i8*, i8** %5, align 8, !dbg !1916
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !1917
  %51 = call %struct._IO_FILE* @freopen(i8* %48, i8* %49, %struct._IO_FILE* %50), !dbg !1918
  store %struct._IO_FILE* %51, %struct._IO_FILE** %6, align 8, !dbg !1919
  br label %52

; <label>:52:                                     ; preds = %47, %46
  br label %53

; <label>:53:                                     ; preds = %52, %40
  br label %54

; <label>:54:                                     ; preds = %53, %34
  %55 = call i32* @__errno_location() #16, !dbg !1920
  %56 = load i32, i32* %55, align 4, !dbg !1920
  store i32 %56, i32* %10, align 4, !dbg !1921
  %57 = load i8, i8* %9, align 1, !dbg !1922
  %58 = trunc i8 %57 to i1, !dbg !1922
  br i1 %58, label %59, label %61, !dbg !1924

; <label>:59:                                     ; preds = %54
  %60 = call i32 @close(i32 2), !dbg !1925
  br label %61, !dbg !1925

; <label>:61:                                     ; preds = %59, %54
  %62 = load i8, i8* %8, align 1, !dbg !1926
  %63 = trunc i8 %62 to i1, !dbg !1926
  br i1 %63, label %64, label %66, !dbg !1928

; <label>:64:                                     ; preds = %61
  %65 = call i32 @close(i32 1), !dbg !1929
  br label %66, !dbg !1929

; <label>:66:                                     ; preds = %64, %61
  %67 = load i8, i8* %7, align 1, !dbg !1930
  %68 = trunc i8 %67 to i1, !dbg !1930
  br i1 %68, label %69, label %71, !dbg !1932

; <label>:69:                                     ; preds = %66
  %70 = call i32 @close(i32 0), !dbg !1933
  br label %71, !dbg !1933

; <label>:71:                                     ; preds = %69, %66
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !1934
  %73 = icmp ne %struct._IO_FILE* %72, null, !dbg !1934
  br i1 %73, label %77, label %74, !dbg !1936

; <label>:74:                                     ; preds = %71
  %75 = load i32, i32* %10, align 4, !dbg !1937
  %76 = call i32* @__errno_location() #16, !dbg !1938
  store i32 %75, i32* %76, align 4, !dbg !1939
  br label %77, !dbg !1938

; <label>:77:                                     ; preds = %74, %71
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !1940
  ret %struct._IO_FILE* %78, !dbg !1941
}

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) #5

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @protect_fd(i32) #2 !dbg !1942 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1945, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1947, metadata !DIExpression()), !dbg !1948
  %5 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), i32 0), !dbg !1949
  store i32 %5, i32* %4, align 4, !dbg !1948
  %6 = load i32, i32* %4, align 4, !dbg !1950
  %7 = load i32, i32* %3, align 4, !dbg !1952
  %8 = icmp ne i32 %6, %7, !dbg !1953
  br i1 %8, label %9, label %17, !dbg !1954

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* %4, align 4, !dbg !1955
  %11 = icmp sle i32 0, %10, !dbg !1958
  br i1 %11, label %12, label %16, !dbg !1959

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %4, align 4, !dbg !1960
  %14 = call i32 @close(i32 %13), !dbg !1962
  %15 = call i32* @__errno_location() #16, !dbg !1963
  store i32 9, i32* %15, align 4, !dbg !1964
  br label %16, !dbg !1965

; <label>:16:                                     ; preds = %12, %9
  store i1 false, i1* %2, align 1, !dbg !1966
  br label %18, !dbg !1966

; <label>:17:                                     ; preds = %1
  store i1 true, i1* %2, align 1, !dbg !1967
  br label %18, !dbg !1967

; <label>:18:                                     ; preds = %17, %16
  %19 = load i1, i1* %2, align 1, !dbg !1968
  ret i1 %19, !dbg !1968
}

declare %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) #3

declare i32 @close(i32) #3

declare i32 @open(i8*, i32, ...) #3

; Function Attrs: noinline nounwind uwtable
define zeroext i1 @hard_locale(i32) #2 !dbg !1969 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1970, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.declare(metadata i8* %3, metadata !1972, metadata !DIExpression()), !dbg !1973
  store i8 1, i8* %3, align 1, !dbg !1973
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1974, metadata !DIExpression()), !dbg !1975
  %5 = load i32, i32* %2, align 4, !dbg !1976
  %6 = call i8* @setlocale(i32 %5, i8* null) #11, !dbg !1977
  store i8* %6, i8** %4, align 8, !dbg !1975
  %7 = load i8*, i8** %4, align 8, !dbg !1978
  %8 = icmp ne i8* %7, null, !dbg !1978
  br i1 %8, label %9, label %19, !dbg !1980

; <label>:9:                                      ; preds = %1
  %10 = load i8*, i8** %4, align 8, !dbg !1981
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i32 0, i32 0)) #14, !dbg !1986
  %12 = icmp eq i32 %11, 0, !dbg !1987
  br i1 %12, label %17, label %13, !dbg !1988

; <label>:13:                                     ; preds = %9
  %14 = load i8*, i8** %4, align 8, !dbg !1989
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.80, i32 0, i32 0)) #14, !dbg !1990
  %16 = icmp eq i32 %15, 0, !dbg !1991
  br i1 %16, label %17, label %18, !dbg !1992

; <label>:17:                                     ; preds = %13, %9
  store i8 0, i8* %3, align 1, !dbg !1993
  br label %18, !dbg !1994

; <label>:18:                                     ; preds = %17, %13
  br label %19, !dbg !1995

; <label>:19:                                     ; preds = %18, %1
  %20 = load i8, i8* %3, align 1, !dbg !1996
  %21 = trunc i8 %20 to i1, !dbg !1996
  ret i1 %21, !dbg !1997
}

; Function Attrs: noinline nounwind uwtable
define void @initbuffer(%struct.linebuffer*) #2 !dbg !1998 {
  %2 = alloca %struct.linebuffer*, align 8
  store %struct.linebuffer* %0, %struct.linebuffer** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %2, metadata !2008, metadata !DIExpression()), !dbg !2009
  %3 = load %struct.linebuffer*, %struct.linebuffer** %2, align 8, !dbg !2010
  %4 = bitcast %struct.linebuffer* %3 to i8*, !dbg !2011
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 24, i32 8, i1 false), !dbg !2011
  ret void, !dbg !2012
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #10

; Function Attrs: noinline nounwind uwtable
define %struct.linebuffer* @readlinebuffer(%struct.linebuffer*, %struct._IO_FILE*) #2 !dbg !2013 {
  %3 = alloca %struct.linebuffer*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  store %struct.linebuffer* %0, %struct.linebuffer** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %3, metadata !2056, metadata !DIExpression()), !dbg !2057
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !2058, metadata !DIExpression()), !dbg !2059
  %5 = load %struct.linebuffer*, %struct.linebuffer** %3, align 8, !dbg !2060
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !2061
  %7 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %5, %struct._IO_FILE* %6, i8 signext 10), !dbg !2062
  ret %struct.linebuffer* %7, !dbg !2063
}

; Function Attrs: noinline nounwind uwtable
define %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer*, %struct._IO_FILE*, i8 signext) #2 !dbg !2064 {
  %4 = alloca %struct.linebuffer*, align 8
  %5 = alloca %struct.linebuffer*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.linebuffer* %0, %struct.linebuffer** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %5, metadata !2067, metadata !DIExpression()), !dbg !2068
  store %struct._IO_FILE* %1, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !2069, metadata !DIExpression()), !dbg !2070
  store i8 %2, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !2071, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2073, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2075, metadata !DIExpression()), !dbg !2076
  %13 = load %struct.linebuffer*, %struct.linebuffer** %5, align 8, !dbg !2077
  %14 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %13, i32 0, i32 2, !dbg !2078
  %15 = load i8*, i8** %14, align 8, !dbg !2078
  store i8* %15, i8** %9, align 8, !dbg !2076
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2079, metadata !DIExpression()), !dbg !2080
  %16 = load %struct.linebuffer*, %struct.linebuffer** %5, align 8, !dbg !2081
  %17 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %16, i32 0, i32 2, !dbg !2082
  %18 = load i8*, i8** %17, align 8, !dbg !2082
  store i8* %18, i8** %10, align 8, !dbg !2080
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2083, metadata !DIExpression()), !dbg !2084
  %19 = load i8*, i8** %9, align 8, !dbg !2085
  %20 = load %struct.linebuffer*, %struct.linebuffer** %5, align 8, !dbg !2086
  %21 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %20, i32 0, i32 0, !dbg !2087
  %22 = load i64, i64* %21, align 8, !dbg !2087
  %23 = getelementptr inbounds i8, i8* %19, i64 %22, !dbg !2088
  store i8* %23, i8** %11, align 8, !dbg !2084
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !2089
  %25 = call i32 @feof_unlocked(%struct._IO_FILE* %24) #11, !dbg !2089
  %26 = icmp ne i32 %25, 0, !dbg !2089
  br i1 %26, label %27, label %28, !dbg !2091

; <label>:27:                                     ; preds = %3
  store %struct.linebuffer* null, %struct.linebuffer** %4, align 8, !dbg !2092
  br label %97, !dbg !2092

; <label>:28:                                     ; preds = %3
  br label %29, !dbg !2093, !llvm.loop !2094

; <label>:29:                                     ; preds = %83, %28
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !2096
  %31 = call i32 @getc_unlocked(%struct._IO_FILE* %30), !dbg !2096
  store i32 %31, i32* %8, align 4, !dbg !2098
  %32 = load i32, i32* %8, align 4, !dbg !2099
  %33 = icmp eq i32 %32, -1, !dbg !2101
  br i1 %33, label %34, label %55, !dbg !2102

; <label>:34:                                     ; preds = %29
  %35 = load i8*, i8** %10, align 8, !dbg !2103
  %36 = load i8*, i8** %9, align 8, !dbg !2106
  %37 = icmp eq i8* %35, %36, !dbg !2107
  br i1 %37, label %42, label %38, !dbg !2108

; <label>:38:                                     ; preds = %34
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !2109
  %40 = call i32 @ferror_unlocked(%struct._IO_FILE* %39) #11, !dbg !2109
  %41 = icmp ne i32 %40, 0, !dbg !2109
  br i1 %41, label %42, label %43, !dbg !2110

; <label>:42:                                     ; preds = %38, %34
  store %struct.linebuffer* null, %struct.linebuffer** %4, align 8, !dbg !2111
  br label %97, !dbg !2111

; <label>:43:                                     ; preds = %38
  %44 = load i8*, i8** %10, align 8, !dbg !2112
  %45 = getelementptr inbounds i8, i8* %44, i64 -1, !dbg !2112
  %46 = load i8, i8* %45, align 1, !dbg !2112
  %47 = sext i8 %46 to i32, !dbg !2112
  %48 = load i8, i8* %7, align 1, !dbg !2114
  %49 = sext i8 %48 to i32, !dbg !2114
  %50 = icmp eq i32 %47, %49, !dbg !2115
  br i1 %50, label %51, label %52, !dbg !2116

; <label>:51:                                     ; preds = %43
  br label %88, !dbg !2117

; <label>:52:                                     ; preds = %43
  %53 = load i8, i8* %7, align 1, !dbg !2118
  %54 = sext i8 %53 to i32, !dbg !2118
  store i32 %54, i32* %8, align 4, !dbg !2119
  br label %55, !dbg !2120

; <label>:55:                                     ; preds = %52, %29
  %56 = load i8*, i8** %10, align 8, !dbg !2121
  %57 = load i8*, i8** %11, align 8, !dbg !2123
  %58 = icmp eq i8* %56, %57, !dbg !2124
  br i1 %58, label %59, label %78, !dbg !2125

; <label>:59:                                     ; preds = %55
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2126, metadata !DIExpression()), !dbg !2128
  %60 = load %struct.linebuffer*, %struct.linebuffer** %5, align 8, !dbg !2129
  %61 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %60, i32 0, i32 0, !dbg !2130
  %62 = load i64, i64* %61, align 8, !dbg !2130
  store i64 %62, i64* %12, align 8, !dbg !2128
  %63 = load i8*, i8** %9, align 8, !dbg !2131
  %64 = load %struct.linebuffer*, %struct.linebuffer** %5, align 8, !dbg !2132
  %65 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %64, i32 0, i32 0, !dbg !2133
  %66 = call i8* @x2realloc(i8* %63, i64* %65), !dbg !2134
  store i8* %66, i8** %9, align 8, !dbg !2135
  %67 = load i8*, i8** %9, align 8, !dbg !2136
  %68 = load i64, i64* %12, align 8, !dbg !2137
  %69 = getelementptr inbounds i8, i8* %67, i64 %68, !dbg !2138
  store i8* %69, i8** %10, align 8, !dbg !2139
  %70 = load i8*, i8** %9, align 8, !dbg !2140
  %71 = load %struct.linebuffer*, %struct.linebuffer** %5, align 8, !dbg !2141
  %72 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %71, i32 0, i32 2, !dbg !2142
  store i8* %70, i8** %72, align 8, !dbg !2143
  %73 = load i8*, i8** %9, align 8, !dbg !2144
  %74 = load %struct.linebuffer*, %struct.linebuffer** %5, align 8, !dbg !2145
  %75 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %74, i32 0, i32 0, !dbg !2146
  %76 = load i64, i64* %75, align 8, !dbg !2146
  %77 = getelementptr inbounds i8, i8* %73, i64 %76, !dbg !2147
  store i8* %77, i8** %11, align 8, !dbg !2148
  br label %78, !dbg !2149

; <label>:78:                                     ; preds = %59, %55
  %79 = load i32, i32* %8, align 4, !dbg !2150
  %80 = trunc i32 %79 to i8, !dbg !2150
  %81 = load i8*, i8** %10, align 8, !dbg !2151
  %82 = getelementptr inbounds i8, i8* %81, i32 1, !dbg !2151
  store i8* %82, i8** %10, align 8, !dbg !2151
  store i8 %80, i8* %81, align 1, !dbg !2152
  br label %83, !dbg !2153

; <label>:83:                                     ; preds = %78
  %84 = load i32, i32* %8, align 4, !dbg !2154
  %85 = load i8, i8* %7, align 1, !dbg !2155
  %86 = sext i8 %85 to i32, !dbg !2155
  %87 = icmp ne i32 %84, %86, !dbg !2156
  br i1 %87, label %29, label %88, !dbg !2153, !llvm.loop !2094

; <label>:88:                                     ; preds = %83, %51
  %89 = load i8*, i8** %10, align 8, !dbg !2157
  %90 = load i8*, i8** %9, align 8, !dbg !2158
  %91 = ptrtoint i8* %89 to i64, !dbg !2159
  %92 = ptrtoint i8* %90 to i64, !dbg !2159
  %93 = sub i64 %91, %92, !dbg !2159
  %94 = load %struct.linebuffer*, %struct.linebuffer** %5, align 8, !dbg !2160
  %95 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %94, i32 0, i32 1, !dbg !2161
  store i64 %93, i64* %95, align 8, !dbg !2162
  %96 = load %struct.linebuffer*, %struct.linebuffer** %5, align 8, !dbg !2163
  store %struct.linebuffer* %96, %struct.linebuffer** %4, align 8, !dbg !2164
  br label %97, !dbg !2164

; <label>:97:                                     ; preds = %88, %42, %27
  %98 = load %struct.linebuffer*, %struct.linebuffer** %4, align 8, !dbg !2165
  ret %struct.linebuffer* %98, !dbg !2165
}

declare i32 @getc_unlocked(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind uwtable
define void @freebuffer(%struct.linebuffer*) #2 !dbg !2166 {
  %2 = alloca %struct.linebuffer*, align 8
  store %struct.linebuffer* %0, %struct.linebuffer** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %2, metadata !2167, metadata !DIExpression()), !dbg !2168
  %3 = load %struct.linebuffer*, %struct.linebuffer** %2, align 8, !dbg !2169
  %4 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %3, i32 0, i32 2, !dbg !2170
  %5 = load i8*, i8** %4, align 8, !dbg !2170
  call void @free(i8* %5) #11, !dbg !2171
  ret void, !dbg !2172
}

; Function Attrs: noinline nounwind readonly uwtable
define i32 @memcasecmp(i8*, i8*, i64) #8 !dbg !2173 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2178, metadata !DIExpression()), !dbg !2179
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2180, metadata !DIExpression()), !dbg !2181
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2182, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2184, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2186, metadata !DIExpression()), !dbg !2187
  %16 = load i8*, i8** %5, align 8, !dbg !2188
  store i8* %16, i8** %9, align 8, !dbg !2187
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2189, metadata !DIExpression()), !dbg !2190
  %17 = load i8*, i8** %6, align 8, !dbg !2191
  store i8* %17, i8** %10, align 8, !dbg !2190
  store i64 0, i64* %8, align 8, !dbg !2192
  br label %18, !dbg !2194

; <label>:18:                                     ; preds = %45, %3
  %19 = load i64, i64* %8, align 8, !dbg !2195
  %20 = load i64, i64* %7, align 8, !dbg !2197
  %21 = icmp ult i64 %19, %20, !dbg !2198
  br i1 %21, label %22, label %48, !dbg !2199

; <label>:22:                                     ; preds = %18
  call void @llvm.dbg.declare(metadata i8* %11, metadata !2200, metadata !DIExpression()), !dbg !2202
  %23 = load i8*, i8** %9, align 8, !dbg !2203
  %24 = load i64, i64* %8, align 8, !dbg !2204
  %25 = getelementptr inbounds i8, i8* %23, i64 %24, !dbg !2203
  %26 = load i8, i8* %25, align 1, !dbg !2203
  store i8 %26, i8* %11, align 1, !dbg !2202
  call void @llvm.dbg.declare(metadata i8* %12, metadata !2205, metadata !DIExpression()), !dbg !2206
  %27 = load i8*, i8** %10, align 8, !dbg !2207
  %28 = load i64, i64* %8, align 8, !dbg !2208
  %29 = getelementptr inbounds i8, i8* %27, i64 %28, !dbg !2207
  %30 = load i8, i8* %29, align 1, !dbg !2207
  store i8 %30, i8* %12, align 1, !dbg !2206
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2209, metadata !DIExpression()), !dbg !2210
  %31 = load i8, i8* %11, align 1, !dbg !2211
  %32 = zext i8 %31 to i32, !dbg !2211
  %33 = call i32 @toupper(i32 %32) #14, !dbg !2212
  store i32 %33, i32* %13, align 4, !dbg !2210
  call void @llvm.dbg.declare(metadata i32* %14, metadata !2213, metadata !DIExpression()), !dbg !2214
  %34 = load i8, i8* %12, align 1, !dbg !2215
  %35 = zext i8 %34 to i32, !dbg !2215
  %36 = call i32 @toupper(i32 %35) #14, !dbg !2216
  store i32 %36, i32* %14, align 4, !dbg !2214
  call void @llvm.dbg.declare(metadata i32* %15, metadata !2217, metadata !DIExpression()), !dbg !2218
  %37 = load i32, i32* %13, align 4, !dbg !2219
  %38 = load i32, i32* %14, align 4, !dbg !2220
  %39 = sub nsw i32 %37, %38, !dbg !2221
  store i32 %39, i32* %15, align 4, !dbg !2218
  %40 = load i32, i32* %15, align 4, !dbg !2222
  %41 = icmp ne i32 %40, 0, !dbg !2222
  br i1 %41, label %42, label %44, !dbg !2224

; <label>:42:                                     ; preds = %22
  %43 = load i32, i32* %15, align 4, !dbg !2225
  store i32 %43, i32* %4, align 4, !dbg !2226
  br label %49, !dbg !2226

; <label>:44:                                     ; preds = %22
  br label %45, !dbg !2227

; <label>:45:                                     ; preds = %44
  %46 = load i64, i64* %8, align 8, !dbg !2228
  %47 = add i64 %46, 1, !dbg !2228
  store i64 %47, i64* %8, align 8, !dbg !2228
  br label %18, !dbg !2229, !llvm.loop !2230

; <label>:48:                                     ; preds = %18
  store i32 0, i32* %4, align 4, !dbg !2232
  br label %49, !dbg !2232

; <label>:49:                                     ; preds = %48, %42
  %50 = load i32, i32* %4, align 4, !dbg !2233
  ret i32 %50, !dbg !2233
}

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) #6

; Function Attrs: noinline nounwind uwtable
define i32 @posix2_version() #2 !dbg !2234 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %1, metadata !2237, metadata !DIExpression()), !dbg !2238
  store i64 200809, i64* %1, align 8, !dbg !2238
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2239, metadata !DIExpression()), !dbg !2240
  %5 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.89, i32 0, i32 0)) #11, !dbg !2241
  store i8* %5, i8** %2, align 8, !dbg !2240
  %6 = load i8*, i8** %2, align 8, !dbg !2242
  %7 = icmp ne i8* %6, null, !dbg !2242
  br i1 %7, label %8, label %22, !dbg !2244

; <label>:8:                                      ; preds = %0
  %9 = load i8*, i8** %2, align 8, !dbg !2245
  %10 = load i8, i8* %9, align 1, !dbg !2246
  %11 = sext i8 %10 to i32, !dbg !2246
  %12 = icmp ne i32 %11, 0, !dbg !2246
  br i1 %12, label %13, label %22, !dbg !2247

; <label>:13:                                     ; preds = %8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2248, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2251, metadata !DIExpression()), !dbg !2252
  %14 = load i8*, i8** %2, align 8, !dbg !2253
  %15 = call i64 @strtol(i8* %14, i8** %3, i32 10) #11, !dbg !2254
  store i64 %15, i64* %4, align 8, !dbg !2252
  %16 = load i8*, i8** %3, align 8, !dbg !2255
  %17 = load i8, i8* %16, align 1, !dbg !2257
  %18 = icmp ne i8 %17, 0, !dbg !2257
  br i1 %18, label %21, label %19, !dbg !2258

; <label>:19:                                     ; preds = %13
  %20 = load i64, i64* %4, align 8, !dbg !2259
  store i64 %20, i64* %1, align 8, !dbg !2260
  br label %21, !dbg !2261

; <label>:21:                                     ; preds = %19, %13
  br label %22, !dbg !2262

; <label>:22:                                     ; preds = %21, %8, %0
  %23 = load i64, i64* %1, align 8, !dbg !2263
  %24 = icmp slt i64 %23, -2147483648, !dbg !2264
  br i1 %24, label %25, label %26, !dbg !2263

; <label>:25:                                     ; preds = %22
  br label %34, !dbg !2263

; <label>:26:                                     ; preds = %22
  %27 = load i64, i64* %1, align 8, !dbg !2265
  %28 = icmp slt i64 %27, 2147483647, !dbg !2266
  br i1 %28, label %29, label %31, !dbg !2265

; <label>:29:                                     ; preds = %26
  %30 = load i64, i64* %1, align 8, !dbg !2267
  br label %32, !dbg !2265

; <label>:31:                                     ; preds = %26
  br label %32, !dbg !2265

; <label>:32:                                     ; preds = %31, %29
  %33 = phi i64 [ %30, %29 ], [ 2147483647, %31 ], !dbg !2265
  br label %34, !dbg !2263

; <label>:34:                                     ; preds = %32, %25
  %35 = phi i64 [ -2147483648, %25 ], [ %33, %32 ], !dbg !2263
  %36 = trunc i64 %35 to i32, !dbg !2263
  ret i32 %36, !dbg !2268
}

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #5

; Function Attrs: noinline nounwind uwtable
define void @set_program_name(i8*) #2 !dbg !2269 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2270, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2272, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2274, metadata !DIExpression()), !dbg !2275
  %5 = load i8*, i8** %2, align 8, !dbg !2276
  %6 = icmp eq i8* %5, null, !dbg !2278
  br i1 %6, label %7, label %10, !dbg !2279

; <label>:7:                                      ; preds = %1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2280
  %9 = call i32 @fputs(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.94, i32 0, i32 0), %struct._IO_FILE* %8), !dbg !2282
  call void @abort() #13, !dbg !2283
  unreachable, !dbg !2283

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %2, align 8, !dbg !2284
  %12 = call i8* @strrchr(i8* %11, i32 47) #14, !dbg !2285
  store i8* %12, i8** %3, align 8, !dbg !2286
  %13 = load i8*, i8** %3, align 8, !dbg !2287
  %14 = icmp ne i8* %13, null, !dbg !2288
  br i1 %14, label %15, label %18, !dbg !2287

; <label>:15:                                     ; preds = %10
  %16 = load i8*, i8** %3, align 8, !dbg !2289
  %17 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !2290
  br label %20, !dbg !2287

; <label>:18:                                     ; preds = %10
  %19 = load i8*, i8** %2, align 8, !dbg !2291
  br label %20, !dbg !2287

; <label>:20:                                     ; preds = %18, %15
  %21 = phi i8* [ %17, %15 ], [ %19, %18 ], !dbg !2287
  store i8* %21, i8** %4, align 8, !dbg !2292
  %22 = load i8*, i8** %4, align 8, !dbg !2293
  %23 = load i8*, i8** %2, align 8, !dbg !2295
  %24 = ptrtoint i8* %22 to i64, !dbg !2296
  %25 = ptrtoint i8* %23 to i64, !dbg !2296
  %26 = sub i64 %24, %25, !dbg !2296
  %27 = icmp sge i64 %26, 7, !dbg !2297
  br i1 %27, label %28, label %43, !dbg !2298

; <label>:28:                                     ; preds = %20
  %29 = load i8*, i8** %4, align 8, !dbg !2299
  %30 = getelementptr inbounds i8, i8* %29, i64 -7, !dbg !2300
  %31 = call i32 @strncmp(i8* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.95, i32 0, i32 0), i64 7) #14, !dbg !2301
  %32 = icmp eq i32 %31, 0, !dbg !2302
  br i1 %32, label %33, label %43, !dbg !2303

; <label>:33:                                     ; preds = %28
  %34 = load i8*, i8** %4, align 8, !dbg !2304
  store i8* %34, i8** %2, align 8, !dbg !2306
  %35 = load i8*, i8** %4, align 8, !dbg !2307
  %36 = call i32 @strncmp(i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.96, i32 0, i32 0), i64 3) #14, !dbg !2309
  %37 = icmp eq i32 %36, 0, !dbg !2310
  br i1 %37, label %38, label %42, !dbg !2311

; <label>:38:                                     ; preds = %33
  %39 = load i8*, i8** %4, align 8, !dbg !2312
  %40 = getelementptr inbounds i8, i8* %39, i64 3, !dbg !2314
  store i8* %40, i8** %2, align 8, !dbg !2315
  %41 = load i8*, i8** %2, align 8, !dbg !2316
  store i8* %41, i8** @program_invocation_short_name, align 8, !dbg !2317
  br label %42, !dbg !2318

; <label>:42:                                     ; preds = %38, %33
  br label %43, !dbg !2319

; <label>:43:                                     ; preds = %42, %28, %20
  %44 = load i8*, i8** %2, align 8, !dbg !2320
  store i8* %44, i8** @program_name, align 8, !dbg !2321
  %45 = load i8*, i8** %2, align 8, !dbg !2322
  store i8* %45, i8** @program_invocation_name, align 8, !dbg !2323
  ret void, !dbg !2324
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #3

; Function Attrs: noreturn nounwind
declare void @abort() #4

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #6

; Function Attrs: noinline nounwind uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) #2 !dbg !2325 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !2329, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2331, metadata !DIExpression()), !dbg !2332
  %5 = call i32* @__errno_location() #16, !dbg !2333
  %6 = load i32, i32* %5, align 4, !dbg !2333
  store i32 %6, i32* %3, align 4, !dbg !2332
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !2334, metadata !DIExpression()), !dbg !2335
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !2336
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !2336
  br i1 %8, label %9, label %11, !dbg !2336

; <label>:9:                                      ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !2337
  br label %12, !dbg !2336

; <label>:11:                                     ; preds = %1
  br label %12, !dbg !2336

; <label>:12:                                     ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ], !dbg !2336
  %14 = bitcast %struct.quoting_options* %13 to i8*, !dbg !2336
  %15 = call noalias i8* @xmemdup(i8* %14, i64 56), !dbg !2338
  %16 = bitcast i8* %15 to %struct.quoting_options*, !dbg !2338
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8, !dbg !2335
  %17 = load i32, i32* %3, align 4, !dbg !2339
  %18 = call i32* @__errno_location() #16, !dbg !2340
  store i32 %17, i32* %18, align 4, !dbg !2341
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2342
  ret %struct.quoting_options* %19, !dbg !2343
}

; Function Attrs: noinline nounwind uwtable
define i32 @get_quoting_style(%struct.quoting_options*) #2 !dbg !2344 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !2347, metadata !DIExpression()), !dbg !2348
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !2349
  %4 = icmp ne %struct.quoting_options* %3, null, !dbg !2349
  br i1 %4, label %5, label %7, !dbg !2349

; <label>:5:                                      ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !2350
  br label %8, !dbg !2349

; <label>:7:                                      ; preds = %1
  br label %8, !dbg !2349

; <label>:8:                                      ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ], !dbg !2349
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0, !dbg !2351
  %11 = load i32, i32* %10, align 8, !dbg !2351
  ret i32 %11, !dbg !2352
}

; Function Attrs: noinline nounwind uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) #2 !dbg !2353 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !2356, metadata !DIExpression()), !dbg !2357
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2358, metadata !DIExpression()), !dbg !2359
  %5 = load i32, i32* %4, align 4, !dbg !2360
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !2361
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !2361
  br i1 %7, label %8, label %10, !dbg !2361

; <label>:8:                                      ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !2362
  br label %11, !dbg !2361

; <label>:10:                                     ; preds = %2
  br label %11, !dbg !2361

; <label>:11:                                     ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ], !dbg !2361
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0, !dbg !2363
  store i32 %5, i32* %13, align 8, !dbg !2364
  ret void, !dbg !2365
}

; Function Attrs: noinline nounwind uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) #2 !dbg !2366 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !2369, metadata !DIExpression()), !dbg !2370
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !2371, metadata !DIExpression()), !dbg !2372
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2373, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.declare(metadata i8* %7, metadata !2375, metadata !DIExpression()), !dbg !2376
  %11 = load i8, i8* %5, align 1, !dbg !2377
  store i8 %11, i8* %7, align 1, !dbg !2376
  call void @llvm.dbg.declare(metadata i32** %8, metadata !2378, metadata !DIExpression()), !dbg !2380
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2381
  %13 = icmp ne %struct.quoting_options* %12, null, !dbg !2381
  br i1 %13, label %14, label %16, !dbg !2381

; <label>:14:                                     ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2382
  br label %17, !dbg !2381

; <label>:16:                                     ; preds = %3
  br label %17, !dbg !2381

; <label>:17:                                     ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ], !dbg !2381
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2, !dbg !2383
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i32 0, i32 0, !dbg !2384
  %21 = load i8, i8* %7, align 1, !dbg !2385
  %22 = zext i8 %21 to i64, !dbg !2385
  %23 = udiv i64 %22, 32, !dbg !2386
  %24 = getelementptr inbounds i32, i32* %20, i64 %23, !dbg !2387
  store i32* %24, i32** %8, align 8, !dbg !2380
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2388, metadata !DIExpression()), !dbg !2389
  %25 = load i8, i8* %7, align 1, !dbg !2390
  %26 = zext i8 %25 to i64, !dbg !2390
  %27 = urem i64 %26, 32, !dbg !2391
  %28 = trunc i64 %27 to i32, !dbg !2390
  store i32 %28, i32* %9, align 4, !dbg !2389
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2392, metadata !DIExpression()), !dbg !2393
  %29 = load i32*, i32** %8, align 8, !dbg !2394
  %30 = load i32, i32* %29, align 4, !dbg !2395
  %31 = load i32, i32* %9, align 4, !dbg !2396
  %32 = lshr i32 %30, %31, !dbg !2397
  %33 = and i32 %32, 1, !dbg !2398
  store i32 %33, i32* %10, align 4, !dbg !2393
  %34 = load i32, i32* %6, align 4, !dbg !2399
  %35 = and i32 %34, 1, !dbg !2400
  %36 = load i32, i32* %10, align 4, !dbg !2401
  %37 = xor i32 %35, %36, !dbg !2402
  %38 = load i32, i32* %9, align 4, !dbg !2403
  %39 = shl i32 %37, %38, !dbg !2404
  %40 = load i32*, i32** %8, align 8, !dbg !2405
  %41 = load i32, i32* %40, align 4, !dbg !2406
  %42 = xor i32 %41, %39, !dbg !2406
  store i32 %42, i32* %40, align 4, !dbg !2406
  %43 = load i32, i32* %10, align 4, !dbg !2407
  ret i32 %43, !dbg !2408
}

; Function Attrs: noinline nounwind uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) #2 !dbg !2409 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !2412, metadata !DIExpression()), !dbg !2413
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2414, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2416, metadata !DIExpression()), !dbg !2417
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !2418
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !2418
  br i1 %7, label %9, label %8, !dbg !2420

; <label>:8:                                      ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8, !dbg !2421
  br label %9, !dbg !2422

; <label>:9:                                      ; preds = %8, %2
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !2423
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1, !dbg !2424
  %12 = load i32, i32* %11, align 4, !dbg !2424
  store i32 %12, i32* %5, align 4, !dbg !2425
  %13 = load i32, i32* %4, align 4, !dbg !2426
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !2427
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1, !dbg !2428
  store i32 %13, i32* %15, align 4, !dbg !2429
  %16 = load i32, i32* %5, align 4, !dbg !2430
  ret i32 %16, !dbg !2431
}

; Function Attrs: noinline nounwind uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) #2 !dbg !2432 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !2435, metadata !DIExpression()), !dbg !2436
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2437, metadata !DIExpression()), !dbg !2438
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2439, metadata !DIExpression()), !dbg !2440
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2441
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !2441
  br i1 %8, label %10, label %9, !dbg !2443

; <label>:9:                                      ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8, !dbg !2444
  br label %10, !dbg !2445

; <label>:10:                                     ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2446
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0, !dbg !2447
  store i32 8, i32* %12, align 8, !dbg !2448
  %13 = load i8*, i8** %5, align 8, !dbg !2449
  %14 = icmp ne i8* %13, null, !dbg !2449
  br i1 %14, label %15, label %18, !dbg !2451

; <label>:15:                                     ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !2452
  %17 = icmp ne i8* %16, null, !dbg !2452
  br i1 %17, label %19, label %18, !dbg !2453

; <label>:18:                                     ; preds = %15, %10
  call void @abort() #13, !dbg !2454
  unreachable, !dbg !2454

; <label>:19:                                     ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !2455
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2456
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3, !dbg !2457
  store i8* %20, i8** %22, align 8, !dbg !2458
  %23 = load i8*, i8** %6, align 8, !dbg !2459
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2460
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4, !dbg !2461
  store i8* %23, i8** %25, align 8, !dbg !2462
  ret void, !dbg !2463
}

; Function Attrs: noinline nounwind uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options*) #2 !dbg !2464 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2469, metadata !DIExpression()), !dbg !2470
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2471, metadata !DIExpression()), !dbg !2472
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2473, metadata !DIExpression()), !dbg !2474
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !2475, metadata !DIExpression()), !dbg !2476
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %10, metadata !2477, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %11, metadata !2479, metadata !DIExpression()), !dbg !2480
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !2481
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !2481
  br i1 %15, label %16, label %18, !dbg !2481

; <label>:16:                                     ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !2482
  br label %19, !dbg !2481

; <label>:18:                                     ; preds = %5
  br label %19, !dbg !2481

; <label>:19:                                     ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !2481
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8, !dbg !2480
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2483, metadata !DIExpression()), !dbg !2484
  %21 = call i32* @__errno_location() #16, !dbg !2485
  %22 = load i32, i32* %21, align 4, !dbg !2485
  store i32 %22, i32* %12, align 4, !dbg !2484
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2486, metadata !DIExpression()), !dbg !2487
  %23 = load i8*, i8** %6, align 8, !dbg !2488
  %24 = load i64, i64* %7, align 8, !dbg !2489
  %25 = load i8*, i8** %8, align 8, !dbg !2490
  %26 = load i64, i64* %9, align 8, !dbg !2491
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2492
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0, !dbg !2493
  %29 = load i32, i32* %28, align 8, !dbg !2493
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2494
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1, !dbg !2495
  %32 = load i32, i32* %31, align 4, !dbg !2495
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2496
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2, !dbg !2497
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i32 0, i32 0, !dbg !2496
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2498
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3, !dbg !2499
  %38 = load i8*, i8** %37, align 8, !dbg !2499
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2500
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4, !dbg !2501
  %41 = load i8*, i8** %40, align 8, !dbg !2501
  %42 = call i64 @quotearg_buffer_restyled(i8* %23, i64 %24, i8* %25, i64 %26, i32 %29, i32 %32, i32* %35, i8* %38, i8* %41), !dbg !2502
  store i64 %42, i64* %13, align 8, !dbg !2487
  %43 = load i32, i32* %12, align 4, !dbg !2503
  %44 = call i32* @__errno_location() #16, !dbg !2504
  store i32 %43, i32* %44, align 4, !dbg !2505
  %45 = load i64, i64* %13, align 8, !dbg !2506
  ret i64 %45, !dbg !2507
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32*, i8*, i8*) #2 !dbg !2508 {
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
  %32 = alloca %struct.__mbstate_t, align 4
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  store i8* %0, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2513, metadata !DIExpression()), !dbg !2514
  store i64 %1, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2515, metadata !DIExpression()), !dbg !2516
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2517, metadata !DIExpression()), !dbg !2518
  store i64 %3, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2519, metadata !DIExpression()), !dbg !2520
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !2521, metadata !DIExpression()), !dbg !2522
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2523, metadata !DIExpression()), !dbg !2524
  store i32* %6, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !2525, metadata !DIExpression()), !dbg !2526
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !2527, metadata !DIExpression()), !dbg !2528
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !2529, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.declare(metadata i64* %20, metadata !2531, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.declare(metadata i64* %21, metadata !2533, metadata !DIExpression()), !dbg !2534
  store i64 0, i64* %21, align 8, !dbg !2534
  call void @llvm.dbg.declare(metadata i8** %22, metadata !2535, metadata !DIExpression()), !dbg !2536
  store i8* null, i8** %22, align 8, !dbg !2536
  call void @llvm.dbg.declare(metadata i64* %23, metadata !2537, metadata !DIExpression()), !dbg !2538
  store i64 0, i64* %23, align 8, !dbg !2538
  call void @llvm.dbg.declare(metadata i8* %24, metadata !2539, metadata !DIExpression()), !dbg !2540
  store i8 0, i8* %24, align 1, !dbg !2540
  call void @llvm.dbg.declare(metadata i8* %25, metadata !2541, metadata !DIExpression()), !dbg !2542
  %37 = call i64 @__ctype_get_mb_cur_max() #11, !dbg !2543
  %38 = icmp eq i64 %37, 1, !dbg !2544
  %39 = zext i1 %38 to i8, !dbg !2542
  store i8 %39, i8* %25, align 1, !dbg !2542
  call void @llvm.dbg.declare(metadata i8* %26, metadata !2545, metadata !DIExpression()), !dbg !2546
  %40 = load i32, i32* %16, align 4, !dbg !2547
  %41 = and i32 %40, 2, !dbg !2548
  %42 = icmp ne i32 %41, 0, !dbg !2549
  %43 = zext i1 %42 to i8, !dbg !2546
  store i8 %43, i8* %26, align 1, !dbg !2546
  %44 = load i32, i32* %15, align 4, !dbg !2550
  switch i32 %44, label %123 [
    i32 4, label %45
    i32 3, label %46
    i32 5, label %63
    i32 6, label %64
    i32 7, label %64
    i32 8, label %64
    i32 1, label %104
    i32 2, label %105
    i32 0, label %122
  ], !dbg !2551

; <label>:45:                                     ; preds = %9
  store i32 3, i32* %15, align 4, !dbg !2552
  store i8 1, i8* %26, align 1, !dbg !2554
  br label %46, !dbg !2555

; <label>:46:                                     ; preds = %9, %45
  %47 = load i8, i8* %26, align 1, !dbg !2556
  %48 = trunc i8 %47 to i1, !dbg !2556
  br i1 %48, label %62, label %49, !dbg !2558

; <label>:49:                                     ; preds = %46
  br label %50, !dbg !2559, !llvm.loop !2560

; <label>:50:                                     ; preds = %49
  %51 = load i64, i64* %21, align 8, !dbg !2561
  %52 = load i64, i64* %12, align 8, !dbg !2561
  %53 = icmp ult i64 %51, %52, !dbg !2561
  br i1 %53, label %54, label %58, !dbg !2564

; <label>:54:                                     ; preds = %50
  %55 = load i8*, i8** %11, align 8, !dbg !2561
  %56 = load i64, i64* %21, align 8, !dbg !2561
  %57 = getelementptr inbounds i8, i8* %55, i64 %56, !dbg !2561
  store i8 34, i8* %57, align 1, !dbg !2561
  br label %58, !dbg !2561

; <label>:58:                                     ; preds = %54, %50
  %59 = load i64, i64* %21, align 8, !dbg !2564
  %60 = add i64 %59, 1, !dbg !2564
  store i64 %60, i64* %21, align 8, !dbg !2564
  br label %61, !dbg !2564

; <label>:61:                                     ; preds = %58
  br label %62, !dbg !2564

; <label>:62:                                     ; preds = %61, %46
  store i8 1, i8* %24, align 1, !dbg !2565
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.105, i32 0, i32 0), i8** %22, align 8, !dbg !2566
  store i64 1, i64* %23, align 8, !dbg !2567
  br label %124, !dbg !2568

; <label>:63:                                     ; preds = %9
  store i8 1, i8* %24, align 1, !dbg !2569
  store i8 0, i8* %26, align 1, !dbg !2570
  br label %124, !dbg !2571

; <label>:64:                                     ; preds = %9, %9, %9
  %65 = load i32, i32* %15, align 4, !dbg !2572
  %66 = icmp ne i32 %65, 8, !dbg !2575
  br i1 %66, label %67, label %72, !dbg !2576

; <label>:67:                                     ; preds = %64
  %68 = load i32, i32* %15, align 4, !dbg !2577
  %69 = call i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.106, i32 0, i32 0), i32 %68), !dbg !2579
  store i8* %69, i8** %18, align 8, !dbg !2580
  %70 = load i32, i32* %15, align 4, !dbg !2581
  %71 = call i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.107, i32 0, i32 0), i32 %70), !dbg !2582
  store i8* %71, i8** %19, align 8, !dbg !2583
  br label %72, !dbg !2584

; <label>:72:                                     ; preds = %67, %64
  %73 = load i8, i8* %26, align 1, !dbg !2585
  %74 = trunc i8 %73 to i1, !dbg !2585
  br i1 %74, label %100, label %75, !dbg !2587

; <label>:75:                                     ; preds = %72
  %76 = load i8*, i8** %18, align 8, !dbg !2588
  store i8* %76, i8** %22, align 8, !dbg !2590
  br label %77, !dbg !2591

; <label>:77:                                     ; preds = %96, %75
  %78 = load i8*, i8** %22, align 8, !dbg !2592
  %79 = load i8, i8* %78, align 1, !dbg !2594
  %80 = icmp ne i8 %79, 0, !dbg !2595
  br i1 %80, label %81, label %99, !dbg !2595

; <label>:81:                                     ; preds = %77
  br label %82, !dbg !2596, !llvm.loop !2597

; <label>:82:                                     ; preds = %81
  %83 = load i64, i64* %21, align 8, !dbg !2598
  %84 = load i64, i64* %12, align 8, !dbg !2598
  %85 = icmp ult i64 %83, %84, !dbg !2598
  br i1 %85, label %86, label %92, !dbg !2601

; <label>:86:                                     ; preds = %82
  %87 = load i8*, i8** %22, align 8, !dbg !2598
  %88 = load i8, i8* %87, align 1, !dbg !2598
  %89 = load i8*, i8** %11, align 8, !dbg !2598
  %90 = load i64, i64* %21, align 8, !dbg !2598
  %91 = getelementptr inbounds i8, i8* %89, i64 %90, !dbg !2598
  store i8 %88, i8* %91, align 1, !dbg !2598
  br label %92, !dbg !2598

; <label>:92:                                     ; preds = %86, %82
  %93 = load i64, i64* %21, align 8, !dbg !2601
  %94 = add i64 %93, 1, !dbg !2601
  store i64 %94, i64* %21, align 8, !dbg !2601
  br label %95, !dbg !2601

; <label>:95:                                     ; preds = %92
  br label %96, !dbg !2601

; <label>:96:                                     ; preds = %95
  %97 = load i8*, i8** %22, align 8, !dbg !2602
  %98 = getelementptr inbounds i8, i8* %97, i32 1, !dbg !2602
  store i8* %98, i8** %22, align 8, !dbg !2602
  br label %77, !dbg !2603, !llvm.loop !2604

; <label>:99:                                     ; preds = %77
  br label %100, !dbg !2605

; <label>:100:                                    ; preds = %99, %72
  store i8 1, i8* %24, align 1, !dbg !2606
  %101 = load i8*, i8** %19, align 8, !dbg !2607
  store i8* %101, i8** %22, align 8, !dbg !2608
  %102 = load i8*, i8** %22, align 8, !dbg !2609
  %103 = call i64 @strlen(i8* %102) #14, !dbg !2610
  store i64 %103, i64* %23, align 8, !dbg !2611
  br label %124, !dbg !2612

; <label>:104:                                    ; preds = %9
  store i32 2, i32* %15, align 4, !dbg !2613
  store i8 1, i8* %26, align 1, !dbg !2614
  br label %105, !dbg !2615

; <label>:105:                                    ; preds = %9, %104
  %106 = load i8, i8* %26, align 1, !dbg !2616
  %107 = trunc i8 %106 to i1, !dbg !2616
  br i1 %107, label %121, label %108, !dbg !2618

; <label>:108:                                    ; preds = %105
  br label %109, !dbg !2619, !llvm.loop !2620

; <label>:109:                                    ; preds = %108
  %110 = load i64, i64* %21, align 8, !dbg !2621
  %111 = load i64, i64* %12, align 8, !dbg !2621
  %112 = icmp ult i64 %110, %111, !dbg !2621
  br i1 %112, label %113, label %117, !dbg !2624

; <label>:113:                                    ; preds = %109
  %114 = load i8*, i8** %11, align 8, !dbg !2621
  %115 = load i64, i64* %21, align 8, !dbg !2621
  %116 = getelementptr inbounds i8, i8* %114, i64 %115, !dbg !2621
  store i8 39, i8* %116, align 1, !dbg !2621
  br label %117, !dbg !2621

; <label>:117:                                    ; preds = %113, %109
  %118 = load i64, i64* %21, align 8, !dbg !2624
  %119 = add i64 %118, 1, !dbg !2624
  store i64 %119, i64* %21, align 8, !dbg !2624
  br label %120, !dbg !2624

; <label>:120:                                    ; preds = %117
  br label %121, !dbg !2624

; <label>:121:                                    ; preds = %120, %105
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.107, i32 0, i32 0), i8** %22, align 8, !dbg !2625
  store i64 1, i64* %23, align 8, !dbg !2626
  br label %124, !dbg !2627

; <label>:122:                                    ; preds = %9
  store i8 0, i8* %26, align 1, !dbg !2628
  br label %124, !dbg !2629

; <label>:123:                                    ; preds = %9
  call void @abort() #13, !dbg !2630
  unreachable, !dbg !2630

; <label>:124:                                    ; preds = %122, %121, %100, %63, %62
  store i64 0, i64* %20, align 8, !dbg !2631
  br label %125, !dbg !2633

; <label>:125:                                    ; preds = %743, %124
  %126 = load i64, i64* %14, align 8, !dbg !2634
  %127 = icmp eq i64 %126, -1, !dbg !2636
  br i1 %127, label %128, label %136, !dbg !2634

; <label>:128:                                    ; preds = %125
  %129 = load i8*, i8** %13, align 8, !dbg !2637
  %130 = load i64, i64* %20, align 8, !dbg !2638
  %131 = getelementptr inbounds i8, i8* %129, i64 %130, !dbg !2637
  %132 = load i8, i8* %131, align 1, !dbg !2637
  %133 = sext i8 %132 to i32, !dbg !2637
  %134 = icmp eq i32 %133, 0, !dbg !2639
  %135 = zext i1 %134 to i32, !dbg !2639
  br label %141, !dbg !2634

; <label>:136:                                    ; preds = %125
  %137 = load i64, i64* %20, align 8, !dbg !2640
  %138 = load i64, i64* %14, align 8, !dbg !2641
  %139 = icmp eq i64 %137, %138, !dbg !2642
  %140 = zext i1 %139 to i32, !dbg !2642
  br label %141, !dbg !2634

; <label>:141:                                    ; preds = %136, %128
  %142 = phi i32 [ %135, %128 ], [ %140, %136 ], !dbg !2634
  %143 = icmp ne i32 %142, 0, !dbg !2643
  %144 = xor i1 %143, true, !dbg !2643
  br i1 %144, label %145, label %746, !dbg !2644

; <label>:145:                                    ; preds = %141
  call void @llvm.dbg.declare(metadata i8* %27, metadata !2645, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.declare(metadata i8* %28, metadata !2648, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.declare(metadata i8* %29, metadata !2650, metadata !DIExpression()), !dbg !2651
  store i8 0, i8* %29, align 1, !dbg !2651
  %146 = load i8, i8* %24, align 1, !dbg !2652
  %147 = trunc i8 %146 to i1, !dbg !2652
  br i1 %147, label %148, label %170, !dbg !2654

; <label>:148:                                    ; preds = %145
  %149 = load i64, i64* %23, align 8, !dbg !2655
  %150 = icmp ne i64 %149, 0, !dbg !2655
  br i1 %150, label %151, label %170, !dbg !2656

; <label>:151:                                    ; preds = %148
  %152 = load i64, i64* %20, align 8, !dbg !2657
  %153 = load i64, i64* %23, align 8, !dbg !2658
  %154 = add i64 %152, %153, !dbg !2659
  %155 = load i64, i64* %14, align 8, !dbg !2660
  %156 = icmp ule i64 %154, %155, !dbg !2661
  br i1 %156, label %157, label %170, !dbg !2662

; <label>:157:                                    ; preds = %151
  %158 = load i8*, i8** %13, align 8, !dbg !2663
  %159 = load i64, i64* %20, align 8, !dbg !2664
  %160 = getelementptr inbounds i8, i8* %158, i64 %159, !dbg !2665
  %161 = load i8*, i8** %22, align 8, !dbg !2666
  %162 = load i64, i64* %23, align 8, !dbg !2667
  %163 = call i32 @memcmp(i8* %160, i8* %161, i64 %162) #14, !dbg !2668
  %164 = icmp eq i32 %163, 0, !dbg !2669
  br i1 %164, label %165, label %170, !dbg !2670

; <label>:165:                                    ; preds = %157
  %166 = load i8, i8* %26, align 1, !dbg !2671
  %167 = trunc i8 %166 to i1, !dbg !2671
  br i1 %167, label %168, label %169, !dbg !2674

; <label>:168:                                    ; preds = %165
  br label %796, !dbg !2675

; <label>:169:                                    ; preds = %165
  store i8 1, i8* %29, align 1, !dbg !2676
  br label %170, !dbg !2677

; <label>:170:                                    ; preds = %169, %157, %151, %148, %145
  %171 = load i8*, i8** %13, align 8, !dbg !2678
  %172 = load i64, i64* %20, align 8, !dbg !2679
  %173 = getelementptr inbounds i8, i8* %171, i64 %172, !dbg !2678
  %174 = load i8, i8* %173, align 1, !dbg !2678
  store i8 %174, i8* %27, align 1, !dbg !2680
  %175 = load i8, i8* %27, align 1, !dbg !2681
  %176 = zext i8 %175 to i32, !dbg !2681
  switch i32 %176, label %452 [
    i32 0, label %177
    i32 63, label %250
    i32 7, label %346
    i32 8, label %347
    i32 12, label %348
    i32 10, label %349
    i32 13, label %350
    i32 9, label %351
    i32 11, label %352
    i32 92, label %353
    i32 123, label %379
    i32 125, label %379
    i32 35, label %393
    i32 126, label %393
    i32 32, label %398
    i32 33, label %398
    i32 34, label %398
    i32 36, label %398
    i32 38, label %398
    i32 40, label %398
    i32 41, label %398
    i32 42, label %398
    i32 59, label %398
    i32 60, label %398
    i32 61, label %398
    i32 62, label %398
    i32 91, label %398
    i32 94, label %398
    i32 96, label %398
    i32 124, label %398
    i32 39, label %406
    i32 37, label %451
    i32 43, label %451
    i32 44, label %451
    i32 45, label %451
    i32 46, label %451
    i32 47, label %451
    i32 48, label %451
    i32 49, label %451
    i32 50, label %451
    i32 51, label %451
    i32 52, label %451
    i32 53, label %451
    i32 54, label %451
    i32 55, label %451
    i32 56, label %451
    i32 57, label %451
    i32 58, label %451
    i32 65, label %451
    i32 66, label %451
    i32 67, label %451
    i32 68, label %451
    i32 69, label %451
    i32 70, label %451
    i32 71, label %451
    i32 72, label %451
    i32 73, label %451
    i32 74, label %451
    i32 75, label %451
    i32 76, label %451
    i32 77, label %451
    i32 78, label %451
    i32 79, label %451
    i32 80, label %451
    i32 81, label %451
    i32 82, label %451
    i32 83, label %451
    i32 84, label %451
    i32 85, label %451
    i32 86, label %451
    i32 87, label %451
    i32 88, label %451
    i32 89, label %451
    i32 90, label %451
    i32 93, label %451
    i32 95, label %451
    i32 97, label %451
    i32 98, label %451
    i32 99, label %451
    i32 100, label %451
    i32 101, label %451
    i32 102, label %451
    i32 103, label %451
    i32 104, label %451
    i32 105, label %451
    i32 106, label %451
    i32 107, label %451
    i32 108, label %451
    i32 109, label %451
    i32 110, label %451
    i32 111, label %451
    i32 112, label %451
    i32 113, label %451
    i32 114, label %451
    i32 115, label %451
    i32 116, label %451
    i32 117, label %451
    i32 118, label %451
    i32 119, label %451
    i32 120, label %451
    i32 121, label %451
    i32 122, label %451
  ], !dbg !2682

; <label>:177:                                    ; preds = %170
  %178 = load i8, i8* %24, align 1, !dbg !2683
  %179 = trunc i8 %178 to i1, !dbg !2683
  br i1 %179, label %180, label %243, !dbg !2686

; <label>:180:                                    ; preds = %177
  %181 = load i8, i8* %26, align 1, !dbg !2687
  %182 = trunc i8 %181 to i1, !dbg !2687
  br i1 %182, label %183, label %184, !dbg !2690

; <label>:183:                                    ; preds = %180
  br label %796, !dbg !2691

; <label>:184:                                    ; preds = %180
  br label %185, !dbg !2692, !llvm.loop !2693

; <label>:185:                                    ; preds = %184
  %186 = load i64, i64* %21, align 8, !dbg !2694
  %187 = load i64, i64* %12, align 8, !dbg !2694
  %188 = icmp ult i64 %186, %187, !dbg !2694
  br i1 %188, label %189, label %193, !dbg !2697

; <label>:189:                                    ; preds = %185
  %190 = load i8*, i8** %11, align 8, !dbg !2694
  %191 = load i64, i64* %21, align 8, !dbg !2694
  %192 = getelementptr inbounds i8, i8* %190, i64 %191, !dbg !2694
  store i8 92, i8* %192, align 1, !dbg !2694
  br label %193, !dbg !2694

; <label>:193:                                    ; preds = %189, %185
  %194 = load i64, i64* %21, align 8, !dbg !2697
  %195 = add i64 %194, 1, !dbg !2697
  store i64 %195, i64* %21, align 8, !dbg !2697
  br label %196, !dbg !2697

; <label>:196:                                    ; preds = %193
  %197 = load i64, i64* %20, align 8, !dbg !2698
  %198 = add i64 %197, 1, !dbg !2700
  %199 = load i64, i64* %14, align 8, !dbg !2701
  %200 = icmp ult i64 %198, %199, !dbg !2702
  br i1 %200, label %201, label %242, !dbg !2703

; <label>:201:                                    ; preds = %196
  %202 = load i8*, i8** %13, align 8, !dbg !2704
  %203 = load i64, i64* %20, align 8, !dbg !2705
  %204 = add i64 %203, 1, !dbg !2706
  %205 = getelementptr inbounds i8, i8* %202, i64 %204, !dbg !2704
  %206 = load i8, i8* %205, align 1, !dbg !2704
  %207 = sext i8 %206 to i32, !dbg !2704
  %208 = icmp sle i32 48, %207, !dbg !2707
  br i1 %208, label %209, label %242, !dbg !2708

; <label>:209:                                    ; preds = %201
  %210 = load i8*, i8** %13, align 8, !dbg !2709
  %211 = load i64, i64* %20, align 8, !dbg !2710
  %212 = add i64 %211, 1, !dbg !2711
  %213 = getelementptr inbounds i8, i8* %210, i64 %212, !dbg !2709
  %214 = load i8, i8* %213, align 1, !dbg !2709
  %215 = sext i8 %214 to i32, !dbg !2709
  %216 = icmp sle i32 %215, 57, !dbg !2712
  br i1 %216, label %217, label %242, !dbg !2713

; <label>:217:                                    ; preds = %209
  br label %218, !dbg !2714, !llvm.loop !2716

; <label>:218:                                    ; preds = %217
  %219 = load i64, i64* %21, align 8, !dbg !2717
  %220 = load i64, i64* %12, align 8, !dbg !2717
  %221 = icmp ult i64 %219, %220, !dbg !2717
  br i1 %221, label %222, label %226, !dbg !2720

; <label>:222:                                    ; preds = %218
  %223 = load i8*, i8** %11, align 8, !dbg !2717
  %224 = load i64, i64* %21, align 8, !dbg !2717
  %225 = getelementptr inbounds i8, i8* %223, i64 %224, !dbg !2717
  store i8 48, i8* %225, align 1, !dbg !2717
  br label %226, !dbg !2717

; <label>:226:                                    ; preds = %222, %218
  %227 = load i64, i64* %21, align 8, !dbg !2720
  %228 = add i64 %227, 1, !dbg !2720
  store i64 %228, i64* %21, align 8, !dbg !2720
  br label %229, !dbg !2720

; <label>:229:                                    ; preds = %226
  br label %230, !dbg !2721, !llvm.loop !2722

; <label>:230:                                    ; preds = %229
  %231 = load i64, i64* %21, align 8, !dbg !2723
  %232 = load i64, i64* %12, align 8, !dbg !2723
  %233 = icmp ult i64 %231, %232, !dbg !2723
  br i1 %233, label %234, label %238, !dbg !2726

; <label>:234:                                    ; preds = %230
  %235 = load i8*, i8** %11, align 8, !dbg !2723
  %236 = load i64, i64* %21, align 8, !dbg !2723
  %237 = getelementptr inbounds i8, i8* %235, i64 %236, !dbg !2723
  store i8 48, i8* %237, align 1, !dbg !2723
  br label %238, !dbg !2723

; <label>:238:                                    ; preds = %234, %230
  %239 = load i64, i64* %21, align 8, !dbg !2726
  %240 = add i64 %239, 1, !dbg !2726
  store i64 %240, i64* %21, align 8, !dbg !2726
  br label %241, !dbg !2726

; <label>:241:                                    ; preds = %238
  br label %242, !dbg !2727

; <label>:242:                                    ; preds = %241, %209, %201, %196
  store i8 48, i8* %27, align 1, !dbg !2728
  br label %249, !dbg !2729

; <label>:243:                                    ; preds = %177
  %244 = load i32, i32* %16, align 4, !dbg !2730
  %245 = and i32 %244, 1, !dbg !2732
  %246 = icmp ne i32 %245, 0, !dbg !2732
  br i1 %246, label %247, label %248, !dbg !2733

; <label>:247:                                    ; preds = %243
  br label %743, !dbg !2734

; <label>:248:                                    ; preds = %243
  br label %249

; <label>:249:                                    ; preds = %248, %242
  br label %684, !dbg !2735

; <label>:250:                                    ; preds = %170
  %251 = load i32, i32* %15, align 4, !dbg !2736
  switch i32 %251, label %344 [
    i32 2, label %252
    i32 3, label %257
  ], !dbg !2737

; <label>:252:                                    ; preds = %250
  %253 = load i8, i8* %26, align 1, !dbg !2738
  %254 = trunc i8 %253 to i1, !dbg !2738
  br i1 %254, label %255, label %256, !dbg !2741

; <label>:255:                                    ; preds = %252
  br label %796, !dbg !2742

; <label>:256:                                    ; preds = %252
  br label %345, !dbg !2743

; <label>:257:                                    ; preds = %250
  %258 = load i32, i32* %16, align 4, !dbg !2744
  %259 = and i32 %258, 4, !dbg !2746
  %260 = icmp ne i32 %259, 0, !dbg !2746
  br i1 %260, label %261, label %343, !dbg !2747

; <label>:261:                                    ; preds = %257
  %262 = load i64, i64* %20, align 8, !dbg !2748
  %263 = add i64 %262, 2, !dbg !2749
  %264 = load i64, i64* %14, align 8, !dbg !2750
  %265 = icmp ult i64 %263, %264, !dbg !2751
  br i1 %265, label %266, label %343, !dbg !2752

; <label>:266:                                    ; preds = %261
  %267 = load i8*, i8** %13, align 8, !dbg !2753
  %268 = load i64, i64* %20, align 8, !dbg !2754
  %269 = add i64 %268, 1, !dbg !2755
  %270 = getelementptr inbounds i8, i8* %267, i64 %269, !dbg !2753
  %271 = load i8, i8* %270, align 1, !dbg !2753
  %272 = sext i8 %271 to i32, !dbg !2753
  %273 = icmp eq i32 %272, 63, !dbg !2756
  br i1 %273, label %274, label %343, !dbg !2757

; <label>:274:                                    ; preds = %266
  %275 = load i8*, i8** %13, align 8, !dbg !2758
  %276 = load i64, i64* %20, align 8, !dbg !2759
  %277 = add i64 %276, 2, !dbg !2760
  %278 = getelementptr inbounds i8, i8* %275, i64 %277, !dbg !2758
  %279 = load i8, i8* %278, align 1, !dbg !2758
  %280 = sext i8 %279 to i32, !dbg !2758
  switch i32 %280, label %341 [
    i32 33, label %281
    i32 39, label %281
    i32 40, label %281
    i32 41, label %281
    i32 45, label %281
    i32 47, label %281
    i32 60, label %281
    i32 61, label %281
    i32 62, label %281
  ], !dbg !2761

; <label>:281:                                    ; preds = %274, %274, %274, %274, %274, %274, %274, %274, %274
  %282 = load i8, i8* %26, align 1, !dbg !2762
  %283 = trunc i8 %282 to i1, !dbg !2762
  br i1 %283, label %284, label %285, !dbg !2765

; <label>:284:                                    ; preds = %281
  br label %796, !dbg !2766

; <label>:285:                                    ; preds = %281
  %286 = load i8*, i8** %13, align 8, !dbg !2767
  %287 = load i64, i64* %20, align 8, !dbg !2768
  %288 = add i64 %287, 2, !dbg !2769
  %289 = getelementptr inbounds i8, i8* %286, i64 %288, !dbg !2767
  %290 = load i8, i8* %289, align 1, !dbg !2767
  store i8 %290, i8* %27, align 1, !dbg !2770
  %291 = load i64, i64* %20, align 8, !dbg !2771
  %292 = add i64 %291, 2, !dbg !2771
  store i64 %292, i64* %20, align 8, !dbg !2771
  br label %293, !dbg !2772, !llvm.loop !2773

; <label>:293:                                    ; preds = %285
  %294 = load i64, i64* %21, align 8, !dbg !2774
  %295 = load i64, i64* %12, align 8, !dbg !2774
  %296 = icmp ult i64 %294, %295, !dbg !2774
  br i1 %296, label %297, label %301, !dbg !2777

; <label>:297:                                    ; preds = %293
  %298 = load i8*, i8** %11, align 8, !dbg !2774
  %299 = load i64, i64* %21, align 8, !dbg !2774
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !2774
  store i8 63, i8* %300, align 1, !dbg !2774
  br label %301, !dbg !2774

; <label>:301:                                    ; preds = %297, %293
  %302 = load i64, i64* %21, align 8, !dbg !2777
  %303 = add i64 %302, 1, !dbg !2777
  store i64 %303, i64* %21, align 8, !dbg !2777
  br label %304, !dbg !2777

; <label>:304:                                    ; preds = %301
  br label %305, !dbg !2778, !llvm.loop !2779

; <label>:305:                                    ; preds = %304
  %306 = load i64, i64* %21, align 8, !dbg !2780
  %307 = load i64, i64* %12, align 8, !dbg !2780
  %308 = icmp ult i64 %306, %307, !dbg !2780
  br i1 %308, label %309, label %313, !dbg !2783

; <label>:309:                                    ; preds = %305
  %310 = load i8*, i8** %11, align 8, !dbg !2780
  %311 = load i64, i64* %21, align 8, !dbg !2780
  %312 = getelementptr inbounds i8, i8* %310, i64 %311, !dbg !2780
  store i8 34, i8* %312, align 1, !dbg !2780
  br label %313, !dbg !2780

; <label>:313:                                    ; preds = %309, %305
  %314 = load i64, i64* %21, align 8, !dbg !2783
  %315 = add i64 %314, 1, !dbg !2783
  store i64 %315, i64* %21, align 8, !dbg !2783
  br label %316, !dbg !2783

; <label>:316:                                    ; preds = %313
  br label %317, !dbg !2784, !llvm.loop !2785

; <label>:317:                                    ; preds = %316
  %318 = load i64, i64* %21, align 8, !dbg !2786
  %319 = load i64, i64* %12, align 8, !dbg !2786
  %320 = icmp ult i64 %318, %319, !dbg !2786
  br i1 %320, label %321, label %325, !dbg !2789

; <label>:321:                                    ; preds = %317
  %322 = load i8*, i8** %11, align 8, !dbg !2786
  %323 = load i64, i64* %21, align 8, !dbg !2786
  %324 = getelementptr inbounds i8, i8* %322, i64 %323, !dbg !2786
  store i8 34, i8* %324, align 1, !dbg !2786
  br label %325, !dbg !2786

; <label>:325:                                    ; preds = %321, %317
  %326 = load i64, i64* %21, align 8, !dbg !2789
  %327 = add i64 %326, 1, !dbg !2789
  store i64 %327, i64* %21, align 8, !dbg !2789
  br label %328, !dbg !2789

; <label>:328:                                    ; preds = %325
  br label %329, !dbg !2790, !llvm.loop !2791

; <label>:329:                                    ; preds = %328
  %330 = load i64, i64* %21, align 8, !dbg !2792
  %331 = load i64, i64* %12, align 8, !dbg !2792
  %332 = icmp ult i64 %330, %331, !dbg !2792
  br i1 %332, label %333, label %337, !dbg !2795

; <label>:333:                                    ; preds = %329
  %334 = load i8*, i8** %11, align 8, !dbg !2792
  %335 = load i64, i64* %21, align 8, !dbg !2792
  %336 = getelementptr inbounds i8, i8* %334, i64 %335, !dbg !2792
  store i8 63, i8* %336, align 1, !dbg !2792
  br label %337, !dbg !2792

; <label>:337:                                    ; preds = %333, %329
  %338 = load i64, i64* %21, align 8, !dbg !2795
  %339 = add i64 %338, 1, !dbg !2795
  store i64 %339, i64* %21, align 8, !dbg !2795
  br label %340, !dbg !2795

; <label>:340:                                    ; preds = %337
  br label %342, !dbg !2796

; <label>:341:                                    ; preds = %274
  br label %342, !dbg !2797

; <label>:342:                                    ; preds = %341, %340
  br label %343, !dbg !2798

; <label>:343:                                    ; preds = %342, %266, %261, %257
  br label %345, !dbg !2799

; <label>:344:                                    ; preds = %250
  br label %345, !dbg !2800

; <label>:345:                                    ; preds = %344, %343, %256
  br label %684, !dbg !2801

; <label>:346:                                    ; preds = %170
  store i8 97, i8* %28, align 1, !dbg !2802
  br label %373, !dbg !2803

; <label>:347:                                    ; preds = %170
  store i8 98, i8* %28, align 1, !dbg !2804
  br label %373, !dbg !2805

; <label>:348:                                    ; preds = %170
  store i8 102, i8* %28, align 1, !dbg !2806
  br label %373, !dbg !2807

; <label>:349:                                    ; preds = %170
  store i8 110, i8* %28, align 1, !dbg !2808
  br label %365, !dbg !2809

; <label>:350:                                    ; preds = %170
  store i8 114, i8* %28, align 1, !dbg !2810
  br label %365, !dbg !2811

; <label>:351:                                    ; preds = %170
  store i8 116, i8* %28, align 1, !dbg !2812
  br label %365, !dbg !2813

; <label>:352:                                    ; preds = %170
  store i8 118, i8* %28, align 1, !dbg !2814
  br label %373, !dbg !2815

; <label>:353:                                    ; preds = %170
  %354 = load i8, i8* %27, align 1, !dbg !2816
  store i8 %354, i8* %28, align 1, !dbg !2817
  %355 = load i8, i8* %24, align 1, !dbg !2818
  %356 = trunc i8 %355 to i1, !dbg !2818
  br i1 %356, label %357, label %364, !dbg !2820

; <label>:357:                                    ; preds = %353
  %358 = load i8, i8* %26, align 1, !dbg !2821
  %359 = trunc i8 %358 to i1, !dbg !2821
  br i1 %359, label %360, label %364, !dbg !2822

; <label>:360:                                    ; preds = %357
  %361 = load i64, i64* %23, align 8, !dbg !2823
  %362 = icmp ne i64 %361, 0, !dbg !2823
  br i1 %362, label %363, label %364, !dbg !2824

; <label>:363:                                    ; preds = %360
  br label %729, !dbg !2825

; <label>:364:                                    ; preds = %360, %357, %353
  br label %365, !dbg !2823

; <label>:365:                                    ; preds = %364, %351, %350, %349
  %366 = load i32, i32* %15, align 4, !dbg !2826
  %367 = icmp eq i32 %366, 2, !dbg !2828
  br i1 %367, label %368, label %372, !dbg !2829

; <label>:368:                                    ; preds = %365
  %369 = load i8, i8* %26, align 1, !dbg !2830
  %370 = trunc i8 %369 to i1, !dbg !2830
  br i1 %370, label %371, label %372, !dbg !2831

; <label>:371:                                    ; preds = %368
  br label %796, !dbg !2832

; <label>:372:                                    ; preds = %368, %365
  br label %373, !dbg !2830

; <label>:373:                                    ; preds = %372, %352, %348, %347, %346
  %374 = load i8, i8* %24, align 1, !dbg !2833
  %375 = trunc i8 %374 to i1, !dbg !2833
  br i1 %375, label %376, label %378, !dbg !2835

; <label>:376:                                    ; preds = %373
  %377 = load i8, i8* %28, align 1, !dbg !2836
  store i8 %377, i8* %27, align 1, !dbg !2838
  br label %712, !dbg !2839

; <label>:378:                                    ; preds = %373
  br label %684, !dbg !2840

; <label>:379:                                    ; preds = %170, %170
  %380 = load i64, i64* %14, align 8, !dbg !2841
  %381 = icmp eq i64 %380, -1, !dbg !2843
  br i1 %381, label %382, label %388, !dbg !2844

; <label>:382:                                    ; preds = %379
  %383 = load i8*, i8** %13, align 8, !dbg !2845
  %384 = getelementptr inbounds i8, i8* %383, i64 1, !dbg !2845
  %385 = load i8, i8* %384, align 1, !dbg !2845
  %386 = sext i8 %385 to i32, !dbg !2845
  %387 = icmp eq i32 %386, 0, !dbg !2846
  br i1 %387, label %392, label %391, !dbg !2841

; <label>:388:                                    ; preds = %379
  %389 = load i64, i64* %14, align 8, !dbg !2847
  %390 = icmp eq i64 %389, 1, !dbg !2848
  br i1 %390, label %392, label %391, !dbg !2844

; <label>:391:                                    ; preds = %388, %382
  br label %684, !dbg !2849

; <label>:392:                                    ; preds = %388, %382
  br label %393, !dbg !2850

; <label>:393:                                    ; preds = %170, %170, %392
  %394 = load i64, i64* %20, align 8, !dbg !2851
  %395 = icmp ne i64 %394, 0, !dbg !2853
  br i1 %395, label %396, label %397, !dbg !2854

; <label>:396:                                    ; preds = %393
  br label %684, !dbg !2855

; <label>:397:                                    ; preds = %393
  br label %398, !dbg !2856

; <label>:398:                                    ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %397
  %399 = load i32, i32* %15, align 4, !dbg !2857
  %400 = icmp eq i32 %399, 2, !dbg !2859
  br i1 %400, label %401, label %405, !dbg !2860

; <label>:401:                                    ; preds = %398
  %402 = load i8, i8* %26, align 1, !dbg !2861
  %403 = trunc i8 %402 to i1, !dbg !2861
  br i1 %403, label %404, label %405, !dbg !2862

; <label>:404:                                    ; preds = %401
  br label %796, !dbg !2863

; <label>:405:                                    ; preds = %401, %398
  br label %684, !dbg !2864

; <label>:406:                                    ; preds = %170
  %407 = load i32, i32* %15, align 4, !dbg !2865
  %408 = icmp eq i32 %407, 2, !dbg !2867
  br i1 %408, label %409, label %450, !dbg !2868

; <label>:409:                                    ; preds = %406
  %410 = load i8, i8* %26, align 1, !dbg !2869
  %411 = trunc i8 %410 to i1, !dbg !2869
  br i1 %411, label %412, label %413, !dbg !2872

; <label>:412:                                    ; preds = %409
  br label %796, !dbg !2873

; <label>:413:                                    ; preds = %409
  br label %414, !dbg !2874, !llvm.loop !2875

; <label>:414:                                    ; preds = %413
  %415 = load i64, i64* %21, align 8, !dbg !2876
  %416 = load i64, i64* %12, align 8, !dbg !2876
  %417 = icmp ult i64 %415, %416, !dbg !2876
  br i1 %417, label %418, label %422, !dbg !2879

; <label>:418:                                    ; preds = %414
  %419 = load i8*, i8** %11, align 8, !dbg !2876
  %420 = load i64, i64* %21, align 8, !dbg !2876
  %421 = getelementptr inbounds i8, i8* %419, i64 %420, !dbg !2876
  store i8 39, i8* %421, align 1, !dbg !2876
  br label %422, !dbg !2876

; <label>:422:                                    ; preds = %418, %414
  %423 = load i64, i64* %21, align 8, !dbg !2879
  %424 = add i64 %423, 1, !dbg !2879
  store i64 %424, i64* %21, align 8, !dbg !2879
  br label %425, !dbg !2879

; <label>:425:                                    ; preds = %422
  br label %426, !dbg !2880, !llvm.loop !2881

; <label>:426:                                    ; preds = %425
  %427 = load i64, i64* %21, align 8, !dbg !2882
  %428 = load i64, i64* %12, align 8, !dbg !2882
  %429 = icmp ult i64 %427, %428, !dbg !2882
  br i1 %429, label %430, label %434, !dbg !2885

; <label>:430:                                    ; preds = %426
  %431 = load i8*, i8** %11, align 8, !dbg !2882
  %432 = load i64, i64* %21, align 8, !dbg !2882
  %433 = getelementptr inbounds i8, i8* %431, i64 %432, !dbg !2882
  store i8 92, i8* %433, align 1, !dbg !2882
  br label %434, !dbg !2882

; <label>:434:                                    ; preds = %430, %426
  %435 = load i64, i64* %21, align 8, !dbg !2885
  %436 = add i64 %435, 1, !dbg !2885
  store i64 %436, i64* %21, align 8, !dbg !2885
  br label %437, !dbg !2885

; <label>:437:                                    ; preds = %434
  br label %438, !dbg !2886, !llvm.loop !2887

; <label>:438:                                    ; preds = %437
  %439 = load i64, i64* %21, align 8, !dbg !2888
  %440 = load i64, i64* %12, align 8, !dbg !2888
  %441 = icmp ult i64 %439, %440, !dbg !2888
  br i1 %441, label %442, label %446, !dbg !2891

; <label>:442:                                    ; preds = %438
  %443 = load i8*, i8** %11, align 8, !dbg !2888
  %444 = load i64, i64* %21, align 8, !dbg !2888
  %445 = getelementptr inbounds i8, i8* %443, i64 %444, !dbg !2888
  store i8 39, i8* %445, align 1, !dbg !2888
  br label %446, !dbg !2888

; <label>:446:                                    ; preds = %442, %438
  %447 = load i64, i64* %21, align 8, !dbg !2891
  %448 = add i64 %447, 1, !dbg !2891
  store i64 %448, i64* %21, align 8, !dbg !2891
  br label %449, !dbg !2891

; <label>:449:                                    ; preds = %446
  br label %450, !dbg !2892

; <label>:450:                                    ; preds = %449, %406
  br label %684, !dbg !2893

; <label>:451:                                    ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170
  br label %684, !dbg !2894

; <label>:452:                                    ; preds = %170
  call void @llvm.dbg.declare(metadata i64* %30, metadata !2895, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.declare(metadata i8* %31, metadata !2898, metadata !DIExpression()), !dbg !2899
  %453 = load i8, i8* %25, align 1, !dbg !2900
  %454 = trunc i8 %453 to i1, !dbg !2900
  br i1 %454, label %455, label %467, !dbg !2902

; <label>:455:                                    ; preds = %452
  store i64 1, i64* %30, align 8, !dbg !2903
  %456 = call i16** @__ctype_b_loc() #16, !dbg !2905
  %457 = load i16*, i16** %456, align 8, !dbg !2905
  %458 = load i8, i8* %27, align 1, !dbg !2905
  %459 = zext i8 %458 to i32, !dbg !2905
  %460 = sext i32 %459 to i64, !dbg !2905
  %461 = getelementptr inbounds i16, i16* %457, i64 %460, !dbg !2905
  %462 = load i16, i16* %461, align 2, !dbg !2905
  %463 = zext i16 %462 to i32, !dbg !2905
  %464 = and i32 %463, 16384, !dbg !2905
  %465 = icmp ne i32 %464, 0, !dbg !2906
  %466 = zext i1 %465 to i8, !dbg !2907
  store i8 %466, i8* %31, align 1, !dbg !2907
  br label %564, !dbg !2908

; <label>:467:                                    ; preds = %452
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %32, metadata !2909, metadata !DIExpression()), !dbg !2924
  %468 = bitcast %struct.__mbstate_t* %32 to i8*, !dbg !2925
  call void @llvm.memset.p0i8.i64(i8* %468, i8 0, i64 8, i32 4, i1 false), !dbg !2925
  store i64 0, i64* %30, align 8, !dbg !2926
  store i8 1, i8* %31, align 1, !dbg !2927
  %469 = load i64, i64* %14, align 8, !dbg !2928
  %470 = icmp eq i64 %469, -1, !dbg !2930
  br i1 %470, label %471, label %474, !dbg !2931

; <label>:471:                                    ; preds = %467
  %472 = load i8*, i8** %13, align 8, !dbg !2932
  %473 = call i64 @strlen(i8* %472) #14, !dbg !2933
  store i64 %473, i64* %14, align 8, !dbg !2934
  br label %474, !dbg !2935

; <label>:474:                                    ; preds = %471, %467
  br label %475, !dbg !2936, !llvm.loop !2937

; <label>:475:                                    ; preds = %559, %474
  call void @llvm.dbg.declare(metadata i32* %33, metadata !2939, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.declare(metadata i64* %34, metadata !2943, metadata !DIExpression()), !dbg !2944
  %476 = load i8*, i8** %13, align 8, !dbg !2945
  %477 = load i64, i64* %20, align 8, !dbg !2946
  %478 = load i64, i64* %30, align 8, !dbg !2947
  %479 = add i64 %477, %478, !dbg !2948
  %480 = getelementptr inbounds i8, i8* %476, i64 %479, !dbg !2945
  %481 = load i64, i64* %14, align 8, !dbg !2949
  %482 = load i64, i64* %20, align 8, !dbg !2950
  %483 = load i64, i64* %30, align 8, !dbg !2951
  %484 = add i64 %482, %483, !dbg !2952
  %485 = sub i64 %481, %484, !dbg !2953
  %486 = call i64 @mbrtowc(i32* %33, i8* %480, i64 %485, %struct.__mbstate_t* %32) #11, !dbg !2954
  store i64 %486, i64* %34, align 8, !dbg !2944
  %487 = load i64, i64* %34, align 8, !dbg !2955
  %488 = icmp eq i64 %487, 0, !dbg !2957
  br i1 %488, label %489, label %490, !dbg !2958

; <label>:489:                                    ; preds = %475
  br label %563, !dbg !2959

; <label>:490:                                    ; preds = %475
  %491 = load i64, i64* %34, align 8, !dbg !2960
  %492 = icmp eq i64 %491, -1, !dbg !2962
  br i1 %492, label %493, label %494, !dbg !2963

; <label>:493:                                    ; preds = %490
  store i8 0, i8* %31, align 1, !dbg !2964
  br label %563, !dbg !2966

; <label>:494:                                    ; preds = %490
  %495 = load i64, i64* %34, align 8, !dbg !2967
  %496 = icmp eq i64 %495, -2, !dbg !2969
  br i1 %496, label %497, label %519, !dbg !2970

; <label>:497:                                    ; preds = %494
  store i8 0, i8* %31, align 1, !dbg !2971
  br label %498, !dbg !2973

; <label>:498:                                    ; preds = %515, %497
  %499 = load i64, i64* %20, align 8, !dbg !2974
  %500 = load i64, i64* %30, align 8, !dbg !2975
  %501 = add i64 %499, %500, !dbg !2976
  %502 = load i64, i64* %14, align 8, !dbg !2977
  %503 = icmp ult i64 %501, %502, !dbg !2978
  br i1 %503, label %504, label %513, !dbg !2979

; <label>:504:                                    ; preds = %498
  %505 = load i8*, i8** %13, align 8, !dbg !2980
  %506 = load i64, i64* %20, align 8, !dbg !2981
  %507 = load i64, i64* %30, align 8, !dbg !2982
  %508 = add i64 %506, %507, !dbg !2983
  %509 = getelementptr inbounds i8, i8* %505, i64 %508, !dbg !2980
  %510 = load i8, i8* %509, align 1, !dbg !2980
  %511 = sext i8 %510 to i32, !dbg !2980
  %512 = icmp ne i32 %511, 0, !dbg !2979
  br label %513

; <label>:513:                                    ; preds = %504, %498
  %514 = phi i1 [ false, %498 ], [ %512, %504 ]
  br i1 %514, label %515, label %518, !dbg !2973

; <label>:515:                                    ; preds = %513
  %516 = load i64, i64* %30, align 8, !dbg !2984
  %517 = add i64 %516, 1, !dbg !2984
  store i64 %517, i64* %30, align 8, !dbg !2984
  br label %498, !dbg !2973, !llvm.loop !2985

; <label>:518:                                    ; preds = %513
  br label %563, !dbg !2986

; <label>:519:                                    ; preds = %494
  %520 = load i8, i8* %26, align 1, !dbg !2987
  %521 = trunc i8 %520 to i1, !dbg !2987
  br i1 %521, label %522, label %547, !dbg !2990

; <label>:522:                                    ; preds = %519
  %523 = load i32, i32* %15, align 4, !dbg !2991
  %524 = icmp eq i32 %523, 2, !dbg !2992
  br i1 %524, label %525, label %547, !dbg !2993

; <label>:525:                                    ; preds = %522
  call void @llvm.dbg.declare(metadata i64* %35, metadata !2994, metadata !DIExpression()), !dbg !2996
  store i64 1, i64* %35, align 8, !dbg !2997
  br label %526, !dbg !2999

; <label>:526:                                    ; preds = %543, %525
  %527 = load i64, i64* %35, align 8, !dbg !3000
  %528 = load i64, i64* %34, align 8, !dbg !3002
  %529 = icmp ult i64 %527, %528, !dbg !3003
  br i1 %529, label %530, label %546, !dbg !3004

; <label>:530:                                    ; preds = %526
  %531 = load i8*, i8** %13, align 8, !dbg !3005
  %532 = load i64, i64* %20, align 8, !dbg !3006
  %533 = load i64, i64* %30, align 8, !dbg !3007
  %534 = add i64 %532, %533, !dbg !3008
  %535 = load i64, i64* %35, align 8, !dbg !3009
  %536 = add i64 %534, %535, !dbg !3010
  %537 = getelementptr inbounds i8, i8* %531, i64 %536, !dbg !3005
  %538 = load i8, i8* %537, align 1, !dbg !3005
  %539 = sext i8 %538 to i32, !dbg !3005
  switch i32 %539, label %541 [
    i32 91, label %540
    i32 92, label %540
    i32 94, label %540
    i32 96, label %540
    i32 124, label %540
  ], !dbg !3011

; <label>:540:                                    ; preds = %530, %530, %530, %530, %530
  br label %796, !dbg !3012

; <label>:541:                                    ; preds = %530
  br label %542, !dbg !3014

; <label>:542:                                    ; preds = %541
  br label %543, !dbg !3015

; <label>:543:                                    ; preds = %542
  %544 = load i64, i64* %35, align 8, !dbg !3016
  %545 = add i64 %544, 1, !dbg !3016
  store i64 %545, i64* %35, align 8, !dbg !3016
  br label %526, !dbg !3017, !llvm.loop !3018

; <label>:546:                                    ; preds = %526
  br label %547, !dbg !3020

; <label>:547:                                    ; preds = %546, %522, %519
  %548 = load i32, i32* %33, align 4, !dbg !3021
  %549 = call i32 @iswprint(i32 %548) #11, !dbg !3023
  %550 = icmp ne i32 %549, 0, !dbg !3023
  br i1 %550, label %552, label %551, !dbg !3024

; <label>:551:                                    ; preds = %547
  store i8 0, i8* %31, align 1, !dbg !3025
  br label %552, !dbg !3026

; <label>:552:                                    ; preds = %551, %547
  %553 = load i64, i64* %34, align 8, !dbg !3027
  %554 = load i64, i64* %30, align 8, !dbg !3028
  %555 = add i64 %554, %553, !dbg !3028
  store i64 %555, i64* %30, align 8, !dbg !3028
  br label %556

; <label>:556:                                    ; preds = %552
  br label %557

; <label>:557:                                    ; preds = %556
  br label %558

; <label>:558:                                    ; preds = %557
  br label %559, !dbg !3029

; <label>:559:                                    ; preds = %558
  %560 = call i32 @mbsinit(%struct.__mbstate_t* %32) #14, !dbg !3030
  %561 = icmp ne i32 %560, 0, !dbg !3031
  %562 = xor i1 %561, true, !dbg !3031
  br i1 %562, label %475, label %563, !dbg !3029, !llvm.loop !2937

; <label>:563:                                    ; preds = %559, %518, %493, %489
  br label %564

; <label>:564:                                    ; preds = %563, %455
  %565 = load i64, i64* %30, align 8, !dbg !3032
  %566 = icmp ult i64 1, %565, !dbg !3034
  br i1 %566, label %573, label %567, !dbg !3035

; <label>:567:                                    ; preds = %564
  %568 = load i8, i8* %24, align 1, !dbg !3036
  %569 = trunc i8 %568 to i1, !dbg !3036
  br i1 %569, label %570, label %683, !dbg !3037

; <label>:570:                                    ; preds = %567
  %571 = load i8, i8* %31, align 1, !dbg !3038
  %572 = trunc i8 %571 to i1, !dbg !3038
  br i1 %572, label %683, label %573, !dbg !3039

; <label>:573:                                    ; preds = %570, %564
  call void @llvm.dbg.declare(metadata i64* %36, metadata !3040, metadata !DIExpression()), !dbg !3042
  %574 = load i64, i64* %20, align 8, !dbg !3043
  %575 = load i64, i64* %30, align 8, !dbg !3044
  %576 = add i64 %574, %575, !dbg !3045
  store i64 %576, i64* %36, align 8, !dbg !3042
  br label %577, !dbg !3046

; <label>:577:                                    ; preds = %676, %573
  %578 = load i8, i8* %24, align 1, !dbg !3047
  %579 = trunc i8 %578 to i1, !dbg !3047
  br i1 %579, label %580, label %640, !dbg !3052

; <label>:580:                                    ; preds = %577
  %581 = load i8, i8* %31, align 1, !dbg !3053
  %582 = trunc i8 %581 to i1, !dbg !3053
  br i1 %582, label %640, label %583, !dbg !3054

; <label>:583:                                    ; preds = %580
  %584 = load i8, i8* %26, align 1, !dbg !3055
  %585 = trunc i8 %584 to i1, !dbg !3055
  br i1 %585, label %586, label %587, !dbg !3058

; <label>:586:                                    ; preds = %583
  br label %796, !dbg !3059

; <label>:587:                                    ; preds = %583
  br label %588, !dbg !3060, !llvm.loop !3061

; <label>:588:                                    ; preds = %587
  %589 = load i64, i64* %21, align 8, !dbg !3062
  %590 = load i64, i64* %12, align 8, !dbg !3062
  %591 = icmp ult i64 %589, %590, !dbg !3062
  br i1 %591, label %592, label %596, !dbg !3065

; <label>:592:                                    ; preds = %588
  %593 = load i8*, i8** %11, align 8, !dbg !3062
  %594 = load i64, i64* %21, align 8, !dbg !3062
  %595 = getelementptr inbounds i8, i8* %593, i64 %594, !dbg !3062
  store i8 92, i8* %595, align 1, !dbg !3062
  br label %596, !dbg !3062

; <label>:596:                                    ; preds = %592, %588
  %597 = load i64, i64* %21, align 8, !dbg !3065
  %598 = add i64 %597, 1, !dbg !3065
  store i64 %598, i64* %21, align 8, !dbg !3065
  br label %599, !dbg !3065

; <label>:599:                                    ; preds = %596
  br label %600, !dbg !3066, !llvm.loop !3067

; <label>:600:                                    ; preds = %599
  %601 = load i64, i64* %21, align 8, !dbg !3068
  %602 = load i64, i64* %12, align 8, !dbg !3068
  %603 = icmp ult i64 %601, %602, !dbg !3068
  br i1 %603, label %604, label %613, !dbg !3071

; <label>:604:                                    ; preds = %600
  %605 = load i8, i8* %27, align 1, !dbg !3068
  %606 = zext i8 %605 to i32, !dbg !3068
  %607 = ashr i32 %606, 6, !dbg !3068
  %608 = add nsw i32 48, %607, !dbg !3068
  %609 = trunc i32 %608 to i8, !dbg !3068
  %610 = load i8*, i8** %11, align 8, !dbg !3068
  %611 = load i64, i64* %21, align 8, !dbg !3068
  %612 = getelementptr inbounds i8, i8* %610, i64 %611, !dbg !3068
  store i8 %609, i8* %612, align 1, !dbg !3068
  br label %613, !dbg !3068

; <label>:613:                                    ; preds = %604, %600
  %614 = load i64, i64* %21, align 8, !dbg !3071
  %615 = add i64 %614, 1, !dbg !3071
  store i64 %615, i64* %21, align 8, !dbg !3071
  br label %616, !dbg !3071

; <label>:616:                                    ; preds = %613
  br label %617, !dbg !3072, !llvm.loop !3073

; <label>:617:                                    ; preds = %616
  %618 = load i64, i64* %21, align 8, !dbg !3074
  %619 = load i64, i64* %12, align 8, !dbg !3074
  %620 = icmp ult i64 %618, %619, !dbg !3074
  br i1 %620, label %621, label %631, !dbg !3077

; <label>:621:                                    ; preds = %617
  %622 = load i8, i8* %27, align 1, !dbg !3074
  %623 = zext i8 %622 to i32, !dbg !3074
  %624 = ashr i32 %623, 3, !dbg !3074
  %625 = and i32 %624, 7, !dbg !3074
  %626 = add nsw i32 48, %625, !dbg !3074
  %627 = trunc i32 %626 to i8, !dbg !3074
  %628 = load i8*, i8** %11, align 8, !dbg !3074
  %629 = load i64, i64* %21, align 8, !dbg !3074
  %630 = getelementptr inbounds i8, i8* %628, i64 %629, !dbg !3074
  store i8 %627, i8* %630, align 1, !dbg !3074
  br label %631, !dbg !3074

; <label>:631:                                    ; preds = %621, %617
  %632 = load i64, i64* %21, align 8, !dbg !3077
  %633 = add i64 %632, 1, !dbg !3077
  store i64 %633, i64* %21, align 8, !dbg !3077
  br label %634, !dbg !3077

; <label>:634:                                    ; preds = %631
  %635 = load i8, i8* %27, align 1, !dbg !3078
  %636 = zext i8 %635 to i32, !dbg !3078
  %637 = and i32 %636, 7, !dbg !3079
  %638 = add nsw i32 48, %637, !dbg !3080
  %639 = trunc i32 %638 to i8, !dbg !3081
  store i8 %639, i8* %27, align 1, !dbg !3082
  br label %657, !dbg !3083

; <label>:640:                                    ; preds = %580, %577
  %641 = load i8, i8* %29, align 1, !dbg !3084
  %642 = trunc i8 %641 to i1, !dbg !3084
  br i1 %642, label %643, label %656, !dbg !3086

; <label>:643:                                    ; preds = %640
  br label %644, !dbg !3087, !llvm.loop !3089

; <label>:644:                                    ; preds = %643
  %645 = load i64, i64* %21, align 8, !dbg !3090
  %646 = load i64, i64* %12, align 8, !dbg !3090
  %647 = icmp ult i64 %645, %646, !dbg !3090
  br i1 %647, label %648, label %652, !dbg !3093

; <label>:648:                                    ; preds = %644
  %649 = load i8*, i8** %11, align 8, !dbg !3090
  %650 = load i64, i64* %21, align 8, !dbg !3090
  %651 = getelementptr inbounds i8, i8* %649, i64 %650, !dbg !3090
  store i8 92, i8* %651, align 1, !dbg !3090
  br label %652, !dbg !3090

; <label>:652:                                    ; preds = %648, %644
  %653 = load i64, i64* %21, align 8, !dbg !3093
  %654 = add i64 %653, 1, !dbg !3093
  store i64 %654, i64* %21, align 8, !dbg !3093
  br label %655, !dbg !3093

; <label>:655:                                    ; preds = %652
  store i8 0, i8* %29, align 1, !dbg !3094
  br label %656, !dbg !3095

; <label>:656:                                    ; preds = %655, %640
  br label %657

; <label>:657:                                    ; preds = %656, %634
  %658 = load i64, i64* %36, align 8, !dbg !3096
  %659 = load i64, i64* %20, align 8, !dbg !3098
  %660 = add i64 %659, 1, !dbg !3099
  %661 = icmp ule i64 %658, %660, !dbg !3100
  br i1 %661, label %662, label %663, !dbg !3101

; <label>:662:                                    ; preds = %657
  br label %682, !dbg !3102

; <label>:663:                                    ; preds = %657
  br label %664, !dbg !3103, !llvm.loop !3104

; <label>:664:                                    ; preds = %663
  %665 = load i64, i64* %21, align 8, !dbg !3105
  %666 = load i64, i64* %12, align 8, !dbg !3105
  %667 = icmp ult i64 %665, %666, !dbg !3105
  br i1 %667, label %668, label %673, !dbg !3108

; <label>:668:                                    ; preds = %664
  %669 = load i8, i8* %27, align 1, !dbg !3105
  %670 = load i8*, i8** %11, align 8, !dbg !3105
  %671 = load i64, i64* %21, align 8, !dbg !3105
  %672 = getelementptr inbounds i8, i8* %670, i64 %671, !dbg !3105
  store i8 %669, i8* %672, align 1, !dbg !3105
  br label %673, !dbg !3105

; <label>:673:                                    ; preds = %668, %664
  %674 = load i64, i64* %21, align 8, !dbg !3108
  %675 = add i64 %674, 1, !dbg !3108
  store i64 %675, i64* %21, align 8, !dbg !3108
  br label %676, !dbg !3108

; <label>:676:                                    ; preds = %673
  %677 = load i8*, i8** %13, align 8, !dbg !3109
  %678 = load i64, i64* %20, align 8, !dbg !3110
  %679 = add i64 %678, 1, !dbg !3110
  store i64 %679, i64* %20, align 8, !dbg !3110
  %680 = getelementptr inbounds i8, i8* %677, i64 %679, !dbg !3109
  %681 = load i8, i8* %680, align 1, !dbg !3109
  store i8 %681, i8* %27, align 1, !dbg !3111
  br label %577, !dbg !3112, !llvm.loop !3113

; <label>:682:                                    ; preds = %662
  br label %729, !dbg !3116

; <label>:683:                                    ; preds = %570, %567
  br label %684, !dbg !3117

; <label>:684:                                    ; preds = %683, %451, %450, %405, %396, %391, %378, %345, %249
  %685 = load i8, i8* %24, align 1, !dbg !3118
  %686 = trunc i8 %685 to i1, !dbg !3118
  br i1 %686, label %690, label %687, !dbg !3120

; <label>:687:                                    ; preds = %684
  %688 = load i8, i8* %26, align 1, !dbg !3121
  %689 = trunc i8 %688 to i1, !dbg !3121
  br i1 %689, label %690, label %707, !dbg !3122

; <label>:690:                                    ; preds = %687, %684
  %691 = load i32*, i32** %17, align 8, !dbg !3123
  %692 = icmp ne i32* %691, null, !dbg !3123
  br i1 %692, label %693, label %707, !dbg !3124

; <label>:693:                                    ; preds = %690
  %694 = load i32*, i32** %17, align 8, !dbg !3125
  %695 = load i8, i8* %27, align 1, !dbg !3126
  %696 = zext i8 %695 to i64, !dbg !3126
  %697 = udiv i64 %696, 32, !dbg !3127
  %698 = getelementptr inbounds i32, i32* %694, i64 %697, !dbg !3125
  %699 = load i32, i32* %698, align 4, !dbg !3125
  %700 = load i8, i8* %27, align 1, !dbg !3128
  %701 = zext i8 %700 to i64, !dbg !3128
  %702 = urem i64 %701, 32, !dbg !3129
  %703 = trunc i64 %702 to i32, !dbg !3130
  %704 = shl i32 1, %703, !dbg !3130
  %705 = and i32 %699, %704, !dbg !3131
  %706 = icmp ne i32 %705, 0, !dbg !3131
  br i1 %706, label %711, label %707, !dbg !3132

; <label>:707:                                    ; preds = %693, %690, %687
  %708 = load i8, i8* %29, align 1, !dbg !3133
  %709 = trunc i8 %708 to i1, !dbg !3133
  br i1 %709, label %711, label %710, !dbg !3134

; <label>:710:                                    ; preds = %707
  br label %729, !dbg !3135

; <label>:711:                                    ; preds = %707, %693
  br label %712, !dbg !3133

; <label>:712:                                    ; preds = %711, %376
  %713 = load i8, i8* %26, align 1, !dbg !3136
  %714 = trunc i8 %713 to i1, !dbg !3136
  br i1 %714, label %715, label %716, !dbg !3138

; <label>:715:                                    ; preds = %712
  br label %796, !dbg !3139

; <label>:716:                                    ; preds = %712
  br label %717, !dbg !3140, !llvm.loop !3141

; <label>:717:                                    ; preds = %716
  %718 = load i64, i64* %21, align 8, !dbg !3142
  %719 = load i64, i64* %12, align 8, !dbg !3142
  %720 = icmp ult i64 %718, %719, !dbg !3142
  br i1 %720, label %721, label %725, !dbg !3145

; <label>:721:                                    ; preds = %717
  %722 = load i8*, i8** %11, align 8, !dbg !3142
  %723 = load i64, i64* %21, align 8, !dbg !3142
  %724 = getelementptr inbounds i8, i8* %722, i64 %723, !dbg !3142
  store i8 92, i8* %724, align 1, !dbg !3142
  br label %725, !dbg !3142

; <label>:725:                                    ; preds = %721, %717
  %726 = load i64, i64* %21, align 8, !dbg !3145
  %727 = add i64 %726, 1, !dbg !3145
  store i64 %727, i64* %21, align 8, !dbg !3145
  br label %728, !dbg !3145

; <label>:728:                                    ; preds = %725
  br label %729, !dbg !3145

; <label>:729:                                    ; preds = %728, %710, %682, %363
  br label %730, !dbg !3146, !llvm.loop !3147

; <label>:730:                                    ; preds = %729
  %731 = load i64, i64* %21, align 8, !dbg !3148
  %732 = load i64, i64* %12, align 8, !dbg !3148
  %733 = icmp ult i64 %731, %732, !dbg !3148
  br i1 %733, label %734, label %739, !dbg !3151

; <label>:734:                                    ; preds = %730
  %735 = load i8, i8* %27, align 1, !dbg !3148
  %736 = load i8*, i8** %11, align 8, !dbg !3148
  %737 = load i64, i64* %21, align 8, !dbg !3148
  %738 = getelementptr inbounds i8, i8* %736, i64 %737, !dbg !3148
  store i8 %735, i8* %738, align 1, !dbg !3148
  br label %739, !dbg !3148

; <label>:739:                                    ; preds = %734, %730
  %740 = load i64, i64* %21, align 8, !dbg !3151
  %741 = add i64 %740, 1, !dbg !3151
  store i64 %741, i64* %21, align 8, !dbg !3151
  br label %742, !dbg !3151

; <label>:742:                                    ; preds = %739
  br label %743, !dbg !3152

; <label>:743:                                    ; preds = %742, %247
  %744 = load i64, i64* %20, align 8, !dbg !3153
  %745 = add i64 %744, 1, !dbg !3153
  store i64 %745, i64* %20, align 8, !dbg !3153
  br label %125, !dbg !3154, !llvm.loop !3155

; <label>:746:                                    ; preds = %141
  %747 = load i64, i64* %21, align 8, !dbg !3157
  %748 = icmp eq i64 %747, 0, !dbg !3159
  br i1 %748, label %749, label %756, !dbg !3160

; <label>:749:                                    ; preds = %746
  %750 = load i32, i32* %15, align 4, !dbg !3161
  %751 = icmp eq i32 %750, 2, !dbg !3162
  br i1 %751, label %752, label %756, !dbg !3163

; <label>:752:                                    ; preds = %749
  %753 = load i8, i8* %26, align 1, !dbg !3164
  %754 = trunc i8 %753 to i1, !dbg !3164
  br i1 %754, label %755, label %756, !dbg !3165

; <label>:755:                                    ; preds = %752
  br label %796, !dbg !3166

; <label>:756:                                    ; preds = %752, %749, %746
  %757 = load i8*, i8** %22, align 8, !dbg !3167
  %758 = icmp ne i8* %757, null, !dbg !3167
  br i1 %758, label %759, label %786, !dbg !3169

; <label>:759:                                    ; preds = %756
  %760 = load i8, i8* %26, align 1, !dbg !3170
  %761 = trunc i8 %760 to i1, !dbg !3170
  br i1 %761, label %786, label %762, !dbg !3171

; <label>:762:                                    ; preds = %759
  br label %763, !dbg !3172

; <label>:763:                                    ; preds = %782, %762
  %764 = load i8*, i8** %22, align 8, !dbg !3173
  %765 = load i8, i8* %764, align 1, !dbg !3176
  %766 = icmp ne i8 %765, 0, !dbg !3177
  br i1 %766, label %767, label %785, !dbg !3177

; <label>:767:                                    ; preds = %763
  br label %768, !dbg !3178, !llvm.loop !3179

; <label>:768:                                    ; preds = %767
  %769 = load i64, i64* %21, align 8, !dbg !3180
  %770 = load i64, i64* %12, align 8, !dbg !3180
  %771 = icmp ult i64 %769, %770, !dbg !3180
  br i1 %771, label %772, label %778, !dbg !3183

; <label>:772:                                    ; preds = %768
  %773 = load i8*, i8** %22, align 8, !dbg !3180
  %774 = load i8, i8* %773, align 1, !dbg !3180
  %775 = load i8*, i8** %11, align 8, !dbg !3180
  %776 = load i64, i64* %21, align 8, !dbg !3180
  %777 = getelementptr inbounds i8, i8* %775, i64 %776, !dbg !3180
  store i8 %774, i8* %777, align 1, !dbg !3180
  br label %778, !dbg !3180

; <label>:778:                                    ; preds = %772, %768
  %779 = load i64, i64* %21, align 8, !dbg !3183
  %780 = add i64 %779, 1, !dbg !3183
  store i64 %780, i64* %21, align 8, !dbg !3183
  br label %781, !dbg !3183

; <label>:781:                                    ; preds = %778
  br label %782, !dbg !3183

; <label>:782:                                    ; preds = %781
  %783 = load i8*, i8** %22, align 8, !dbg !3184
  %784 = getelementptr inbounds i8, i8* %783, i32 1, !dbg !3184
  store i8* %784, i8** %22, align 8, !dbg !3184
  br label %763, !dbg !3185, !llvm.loop !3186

; <label>:785:                                    ; preds = %763
  br label %786, !dbg !3187

; <label>:786:                                    ; preds = %785, %759, %756
  %787 = load i64, i64* %21, align 8, !dbg !3188
  %788 = load i64, i64* %12, align 8, !dbg !3190
  %789 = icmp ult i64 %787, %788, !dbg !3191
  br i1 %789, label %790, label %794, !dbg !3192

; <label>:790:                                    ; preds = %786
  %791 = load i8*, i8** %11, align 8, !dbg !3193
  %792 = load i64, i64* %21, align 8, !dbg !3194
  %793 = getelementptr inbounds i8, i8* %791, i64 %792, !dbg !3193
  store i8 0, i8* %793, align 1, !dbg !3195
  br label %794, !dbg !3193

; <label>:794:                                    ; preds = %790, %786
  %795 = load i64, i64* %21, align 8, !dbg !3196
  store i64 %795, i64* %10, align 8, !dbg !3197
  br label %807, !dbg !3197

; <label>:796:                                    ; preds = %755, %715, %586, %540, %412, %404, %371, %284, %255, %183, %168
  %797 = load i8*, i8** %11, align 8, !dbg !3198
  %798 = load i64, i64* %12, align 8, !dbg !3199
  %799 = load i8*, i8** %13, align 8, !dbg !3200
  %800 = load i64, i64* %14, align 8, !dbg !3201
  %801 = load i32, i32* %15, align 4, !dbg !3202
  %802 = load i32, i32* %16, align 4, !dbg !3203
  %803 = and i32 %802, -3, !dbg !3204
  %804 = load i8*, i8** %18, align 8, !dbg !3205
  %805 = load i8*, i8** %19, align 8, !dbg !3206
  %806 = call i64 @quotearg_buffer_restyled(i8* %797, i64 %798, i8* %799, i64 %800, i32 %801, i32 %803, i32* null, i8* %804, i8* %805), !dbg !3207
  store i64 %806, i64* %10, align 8, !dbg !3208
  br label %807, !dbg !3208

; <label>:807:                                    ; preds = %796, %794
  %808 = load i64, i64* %10, align 8, !dbg !3209
  ret i64 %808, !dbg !3209
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #5

; Function Attrs: noinline nounwind uwtable
define internal i8* @gettext_quote(i8*, i32) #2 !dbg !3210 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3213, metadata !DIExpression()), !dbg !3214
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3215, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3217, metadata !DIExpression()), !dbg !3218
  %8 = load i8*, i8** %4, align 8, !dbg !3219
  store i8* %8, i8** %6, align 8, !dbg !3218
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3220, metadata !DIExpression()), !dbg !3221
  %9 = load i8*, i8** %6, align 8, !dbg !3222
  %10 = load i8*, i8** %4, align 8, !dbg !3224
  %11 = icmp ne i8* %9, %10, !dbg !3225
  br i1 %11, label %12, label %14, !dbg !3226

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %6, align 8, !dbg !3227
  store i8* %13, i8** %3, align 8, !dbg !3228
  br label %44, !dbg !3228

; <label>:14:                                     ; preds = %2
  %15 = call i8* @locale_charset(), !dbg !3229
  store i8* %15, i8** %7, align 8, !dbg !3230
  %16 = load i8*, i8** %7, align 8, !dbg !3231
  %17 = call i32 @c_strcasecmp(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11.108, i32 0, i32 0)) #14, !dbg !3231
  %18 = icmp eq i32 %17, 0, !dbg !3231
  br i1 %18, label %19, label %27, !dbg !3233

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %4, align 8, !dbg !3234
  %21 = getelementptr inbounds i8, i8* %20, i64 0, !dbg !3234
  %22 = load i8, i8* %21, align 1, !dbg !3234
  %23 = sext i8 %22 to i32, !dbg !3234
  %24 = icmp eq i32 %23, 96, !dbg !3235
  %25 = zext i1 %24 to i64, !dbg !3234
  %26 = select i1 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12.109, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13.110, i32 0, i32 0), !dbg !3234
  store i8* %26, i8** %3, align 8, !dbg !3236
  br label %44, !dbg !3236

; <label>:27:                                     ; preds = %14
  %28 = load i8*, i8** %7, align 8, !dbg !3237
  %29 = call i32 @c_strcasecmp(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14.111, i32 0, i32 0)) #14, !dbg !3237
  %30 = icmp eq i32 %29, 0, !dbg !3237
  br i1 %30, label %31, label %39, !dbg !3239

; <label>:31:                                     ; preds = %27
  %32 = load i8*, i8** %4, align 8, !dbg !3240
  %33 = getelementptr inbounds i8, i8* %32, i64 0, !dbg !3240
  %34 = load i8, i8* %33, align 1, !dbg !3240
  %35 = sext i8 %34 to i32, !dbg !3240
  %36 = icmp eq i32 %35, 96, !dbg !3241
  %37 = zext i1 %36 to i64, !dbg !3240
  %38 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.112, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16.113, i32 0, i32 0), !dbg !3240
  store i8* %38, i8** %3, align 8, !dbg !3242
  br label %44, !dbg !3242

; <label>:39:                                     ; preds = %27
  %40 = load i32, i32* %5, align 4, !dbg !3243
  %41 = icmp eq i32 %40, 7, !dbg !3244
  %42 = zext i1 %41 to i64, !dbg !3243
  %43 = select i1 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.105, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.107, i32 0, i32 0), !dbg !3243
  store i8* %43, i8** %3, align 8, !dbg !3245
  br label %44, !dbg !3245

; <label>:44:                                     ; preds = %39, %31, %19, %12
  %45 = load i8*, i8** %3, align 8, !dbg !3246
  ret i8* %45, !dbg !3246
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) #5

; Function Attrs: nounwind
declare i32 @iswprint(i32) #5

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) #6

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) #2 !dbg !3247 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3250, metadata !DIExpression()), !dbg !3251
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3252, metadata !DIExpression()), !dbg !3253
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %6, metadata !3254, metadata !DIExpression()), !dbg !3255
  %7 = load i8*, i8** %4, align 8, !dbg !3256
  %8 = load i64, i64* %5, align 8, !dbg !3257
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8, !dbg !3258
  %10 = call i8* @quotearg_alloc_mem(i8* %7, i64 %8, i64* null, %struct.quoting_options* %9), !dbg !3259
  ret i8* %10, !dbg !3260
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) #2 !dbg !3261 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.quoting_options*, align 8
  %9 = alloca %struct.quoting_options*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3264, metadata !DIExpression()), !dbg !3265
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3266, metadata !DIExpression()), !dbg !3267
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !3268, metadata !DIExpression()), !dbg !3269
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !3270, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %9, metadata !3272, metadata !DIExpression()), !dbg !3273
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3274
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !3274
  br i1 %15, label %16, label %18, !dbg !3274

; <label>:16:                                     ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3275
  br label %19, !dbg !3274

; <label>:18:                                     ; preds = %4
  br label %19, !dbg !3274

; <label>:19:                                     ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !3274
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8, !dbg !3273
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3276, metadata !DIExpression()), !dbg !3277
  %21 = call i32* @__errno_location() #16, !dbg !3278
  %22 = load i32, i32* %21, align 4, !dbg !3278
  store i32 %22, i32* %10, align 4, !dbg !3277
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3279, metadata !DIExpression()), !dbg !3280
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3281
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1, !dbg !3282
  %25 = load i32, i32* %24, align 4, !dbg !3282
  %26 = load i64*, i64** %7, align 8, !dbg !3283
  %27 = icmp ne i64* %26, null, !dbg !3283
  %28 = zext i1 %27 to i64, !dbg !3283
  %29 = select i1 %27, i32 0, i32 1, !dbg !3283
  %30 = or i32 %25, %29, !dbg !3284
  store i32 %30, i32* %11, align 4, !dbg !3280
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3285, metadata !DIExpression()), !dbg !3286
  %31 = load i8*, i8** %5, align 8, !dbg !3287
  %32 = load i64, i64* %6, align 8, !dbg !3288
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3289
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0, !dbg !3290
  %35 = load i32, i32* %34, align 8, !dbg !3290
  %36 = load i32, i32* %11, align 4, !dbg !3291
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3292
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2, !dbg !3293
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i32 0, i32 0, !dbg !3292
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3294
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3, !dbg !3295
  %42 = load i8*, i8** %41, align 8, !dbg !3295
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3296
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4, !dbg !3297
  %45 = load i8*, i8** %44, align 8, !dbg !3297
  %46 = call i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %31, i64 %32, i32 %35, i32 %36, i32* %39, i8* %42, i8* %45), !dbg !3298
  %47 = add i64 %46, 1, !dbg !3299
  store i64 %47, i64* %12, align 8, !dbg !3286
  call void @llvm.dbg.declare(metadata i8** %13, metadata !3300, metadata !DIExpression()), !dbg !3301
  %48 = load i64, i64* %12, align 8, !dbg !3302
  %49 = call noalias i8* @xcharalloc(i64 %48), !dbg !3303
  store i8* %49, i8** %13, align 8, !dbg !3301
  %50 = load i8*, i8** %13, align 8, !dbg !3304
  %51 = load i64, i64* %12, align 8, !dbg !3305
  %52 = load i8*, i8** %5, align 8, !dbg !3306
  %53 = load i64, i64* %6, align 8, !dbg !3307
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3308
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0, !dbg !3309
  %56 = load i32, i32* %55, align 8, !dbg !3309
  %57 = load i32, i32* %11, align 4, !dbg !3310
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3311
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2, !dbg !3312
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i32 0, i32 0, !dbg !3311
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3313
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !3314
  %63 = load i8*, i8** %62, align 8, !dbg !3314
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3315
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4, !dbg !3316
  %66 = load i8*, i8** %65, align 8, !dbg !3316
  %67 = call i64 @quotearg_buffer_restyled(i8* %50, i64 %51, i8* %52, i64 %53, i32 %56, i32 %57, i32* %60, i8* %63, i8* %66), !dbg !3317
  %68 = load i32, i32* %10, align 4, !dbg !3318
  %69 = call i32* @__errno_location() #16, !dbg !3319
  store i32 %68, i32* %69, align 4, !dbg !3320
  %70 = load i64*, i64** %7, align 8, !dbg !3321
  %71 = icmp ne i64* %70, null, !dbg !3321
  br i1 %71, label %72, label %76, !dbg !3323

; <label>:72:                                     ; preds = %19
  %73 = load i64, i64* %12, align 8, !dbg !3324
  %74 = sub i64 %73, 1, !dbg !3325
  %75 = load i64*, i64** %7, align 8, !dbg !3326
  store i64 %74, i64* %75, align 8, !dbg !3327
  br label %76, !dbg !3328

; <label>:76:                                     ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8, !dbg !3329
  ret i8* %77, !dbg !3330
}

; Function Attrs: noinline nounwind uwtable
define void @quotearg_free() #2 !dbg !3331 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %1, metadata !3332, metadata !DIExpression()), !dbg !3333
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3334
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8, !dbg !3333
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3335, metadata !DIExpression()), !dbg !3336
  store i32 1, i32* %2, align 4, !dbg !3337
  br label %4, !dbg !3339

; <label>:4:                                      ; preds = %15, %0
  %5 = load i32, i32* %2, align 4, !dbg !3340
  %6 = load i32, i32* @nslots, align 4, !dbg !3342
  %7 = icmp ult i32 %5, %6, !dbg !3343
  br i1 %7, label %8, label %18, !dbg !3344

; <label>:8:                                      ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3345
  %10 = load i32, i32* %2, align 4, !dbg !3346
  %11 = zext i32 %10 to i64, !dbg !3345
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11, !dbg !3345
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1, !dbg !3347
  %14 = load i8*, i8** %13, align 8, !dbg !3347
  call void @free(i8* %14) #11, !dbg !3348
  br label %15, !dbg !3348

; <label>:15:                                     ; preds = %8
  %16 = load i32, i32* %2, align 4, !dbg !3349
  %17 = add i32 %16, 1, !dbg !3349
  store i32 %17, i32* %2, align 4, !dbg !3349
  br label %4, !dbg !3350, !llvm.loop !3351

; <label>:18:                                     ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3353
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0, !dbg !3353
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1, !dbg !3355
  %22 = load i8*, i8** %21, align 8, !dbg !3355
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0), !dbg !3356
  br i1 %23, label %24, label %29, !dbg !3357

; <label>:24:                                     ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3358
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0, !dbg !3358
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1, !dbg !3360
  %28 = load i8*, i8** %27, align 8, !dbg !3360
  call void @free(i8* %28) #11, !dbg !3361
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !3362
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !3363
  br label %29, !dbg !3364

; <label>:29:                                     ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3365
  %31 = icmp ne %struct.slotvec* %30, @slotvec0, !dbg !3367
  br i1 %31, label %32, label %35, !dbg !3368

; <label>:32:                                     ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3369
  %34 = bitcast %struct.slotvec* %33 to i8*, !dbg !3369
  call void @free(i8* %34) #11, !dbg !3371
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3372
  br label %35, !dbg !3373

; <label>:35:                                     ; preds = %32, %29
  store i32 1, i32* @nslots, align 4, !dbg !3374
  ret void, !dbg !3375
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_n(i32, i8*) #2 !dbg !3376 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3379, metadata !DIExpression()), !dbg !3380
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3381, metadata !DIExpression()), !dbg !3382
  %5 = load i32, i32* %3, align 4, !dbg !3383
  %6 = load i8*, i8** %4, align 8, !dbg !3384
  %7 = call i8* @quotearg_n_options(i32 %5, i8* %6, i64 -1, %struct.quoting_options* @default_quoting_options), !dbg !3385
  ret i8* %7, !dbg !3386
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) #2 !dbg !3387 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.quoting_options*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.slotvec*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3390, metadata !DIExpression()), !dbg !3391
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3392, metadata !DIExpression()), !dbg !3393
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3394, metadata !DIExpression()), !dbg !3395
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !3396, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3398, metadata !DIExpression()), !dbg !3399
  %18 = call i32* @__errno_location() #16, !dbg !3400
  %19 = load i32, i32* %18, align 4, !dbg !3400
  store i32 %19, i32* %9, align 4, !dbg !3399
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3401, metadata !DIExpression()), !dbg !3402
  %20 = load i32, i32* %5, align 4, !dbg !3403
  store i32 %20, i32* %10, align 4, !dbg !3402
  call void @llvm.dbg.declare(metadata %struct.slotvec** %11, metadata !3404, metadata !DIExpression()), !dbg !3405
  %21 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3406
  store %struct.slotvec* %21, %struct.slotvec** %11, align 8, !dbg !3405
  %22 = load i32, i32* %5, align 4, !dbg !3407
  %23 = icmp slt i32 %22, 0, !dbg !3409
  br i1 %23, label %24, label %25, !dbg !3410

; <label>:24:                                     ; preds = %4
  call void @abort() #13, !dbg !3411
  unreachable, !dbg !3411

; <label>:25:                                     ; preds = %4
  %26 = load i32, i32* @nslots, align 4, !dbg !3412
  %27 = load i32, i32* %10, align 4, !dbg !3414
  %28 = icmp ule i32 %26, %27, !dbg !3415
  br i1 %28, label %29, label %70, !dbg !3416

; <label>:29:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3417, metadata !DIExpression()), !dbg !3419
  %30 = load i32, i32* %10, align 4, !dbg !3420
  %31 = add i32 %30, 1, !dbg !3421
  %32 = zext i32 %31 to i64, !dbg !3420
  store i64 %32, i64* %12, align 8, !dbg !3419
  call void @llvm.dbg.declare(metadata i8* %13, metadata !3422, metadata !DIExpression()), !dbg !3423
  %33 = load %struct.slotvec*, %struct.slotvec** %11, align 8, !dbg !3424
  %34 = icmp eq %struct.slotvec* %33, @slotvec0, !dbg !3425
  %35 = zext i1 %34 to i8, !dbg !3423
  store i8 %35, i8* %13, align 1, !dbg !3423
  %36 = load i64, i64* %12, align 8, !dbg !3426
  %37 = icmp ult i64 1152921504606846975, %36, !dbg !3426
  br i1 %37, label %38, label %39, !dbg !3428

; <label>:38:                                     ; preds = %29
  call void @xalloc_die() #15, !dbg !3429
  unreachable, !dbg !3429

; <label>:39:                                     ; preds = %29
  %40 = load i8, i8* %13, align 1, !dbg !3430
  %41 = trunc i8 %40 to i1, !dbg !3430
  br i1 %41, label %42, label %43, !dbg !3430

; <label>:42:                                     ; preds = %39
  br label %45, !dbg !3430

; <label>:43:                                     ; preds = %39
  %44 = load %struct.slotvec*, %struct.slotvec** %11, align 8, !dbg !3431
  br label %45, !dbg !3430

; <label>:45:                                     ; preds = %43, %42
  %46 = phi %struct.slotvec* [ null, %42 ], [ %44, %43 ], !dbg !3430
  %47 = bitcast %struct.slotvec* %46 to i8*, !dbg !3430
  %48 = load i64, i64* %12, align 8, !dbg !3432
  %49 = mul i64 %48, 16, !dbg !3433
  %50 = call i8* @xrealloc(i8* %47, i64 %49), !dbg !3434
  %51 = bitcast i8* %50 to %struct.slotvec*, !dbg !3434
  store %struct.slotvec* %51, %struct.slotvec** %11, align 8, !dbg !3435
  store %struct.slotvec* %51, %struct.slotvec** @slotvec, align 8, !dbg !3436
  %52 = load i8, i8* %13, align 1, !dbg !3437
  %53 = trunc i8 %52 to i1, !dbg !3437
  br i1 %53, label %54, label %57, !dbg !3439

; <label>:54:                                     ; preds = %45
  %55 = load %struct.slotvec*, %struct.slotvec** %11, align 8, !dbg !3440
  %56 = bitcast %struct.slotvec* %55 to i8*, !dbg !3441
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !3441
  br label %57, !dbg !3442

; <label>:57:                                     ; preds = %54, %45
  %58 = load %struct.slotvec*, %struct.slotvec** %11, align 8, !dbg !3443
  %59 = load i32, i32* @nslots, align 4, !dbg !3444
  %60 = zext i32 %59 to i64, !dbg !3445
  %61 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %58, i64 %60, !dbg !3445
  %62 = bitcast %struct.slotvec* %61 to i8*, !dbg !3446
  %63 = load i64, i64* %12, align 8, !dbg !3447
  %64 = load i32, i32* @nslots, align 4, !dbg !3448
  %65 = zext i32 %64 to i64, !dbg !3448
  %66 = sub i64 %63, %65, !dbg !3449
  %67 = mul i64 %66, 16, !dbg !3450
  call void @llvm.memset.p0i8.i64(i8* %62, i8 0, i64 %67, i32 8, i1 false), !dbg !3446
  %68 = load i64, i64* %12, align 8, !dbg !3451
  %69 = trunc i64 %68 to i32, !dbg !3451
  store i32 %69, i32* @nslots, align 4, !dbg !3452
  br label %70, !dbg !3453

; <label>:70:                                     ; preds = %57, %25
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3454, metadata !DIExpression()), !dbg !3456
  %71 = load %struct.slotvec*, %struct.slotvec** %11, align 8, !dbg !3457
  %72 = load i32, i32* %5, align 4, !dbg !3458
  %73 = sext i32 %72 to i64, !dbg !3457
  %74 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %71, i64 %73, !dbg !3457
  %75 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %74, i32 0, i32 0, !dbg !3459
  %76 = load i64, i64* %75, align 8, !dbg !3459
  store i64 %76, i64* %14, align 8, !dbg !3456
  call void @llvm.dbg.declare(metadata i8** %15, metadata !3460, metadata !DIExpression()), !dbg !3461
  %77 = load %struct.slotvec*, %struct.slotvec** %11, align 8, !dbg !3462
  %78 = load i32, i32* %5, align 4, !dbg !3463
  %79 = sext i32 %78 to i64, !dbg !3462
  %80 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %77, i64 %79, !dbg !3462
  %81 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %80, i32 0, i32 1, !dbg !3464
  %82 = load i8*, i8** %81, align 8, !dbg !3464
  store i8* %82, i8** %15, align 8, !dbg !3461
  call void @llvm.dbg.declare(metadata i32* %16, metadata !3465, metadata !DIExpression()), !dbg !3466
  %83 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3467
  %84 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %83, i32 0, i32 1, !dbg !3468
  %85 = load i32, i32* %84, align 4, !dbg !3468
  %86 = or i32 %85, 1, !dbg !3469
  store i32 %86, i32* %16, align 4, !dbg !3466
  call void @llvm.dbg.declare(metadata i64* %17, metadata !3470, metadata !DIExpression()), !dbg !3471
  %87 = load i8*, i8** %15, align 8, !dbg !3472
  %88 = load i64, i64* %14, align 8, !dbg !3473
  %89 = load i8*, i8** %6, align 8, !dbg !3474
  %90 = load i64, i64* %7, align 8, !dbg !3475
  %91 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3476
  %92 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %91, i32 0, i32 0, !dbg !3477
  %93 = load i32, i32* %92, align 8, !dbg !3477
  %94 = load i32, i32* %16, align 4, !dbg !3478
  %95 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3479
  %96 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %95, i32 0, i32 2, !dbg !3480
  %97 = getelementptr inbounds [8 x i32], [8 x i32]* %96, i32 0, i32 0, !dbg !3479
  %98 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3481
  %99 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %98, i32 0, i32 3, !dbg !3482
  %100 = load i8*, i8** %99, align 8, !dbg !3482
  %101 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3483
  %102 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %101, i32 0, i32 4, !dbg !3484
  %103 = load i8*, i8** %102, align 8, !dbg !3484
  %104 = call i64 @quotearg_buffer_restyled(i8* %87, i64 %88, i8* %89, i64 %90, i32 %93, i32 %94, i32* %97, i8* %100, i8* %103), !dbg !3485
  store i64 %104, i64* %17, align 8, !dbg !3471
  %105 = load i64, i64* %14, align 8, !dbg !3486
  %106 = load i64, i64* %17, align 8, !dbg !3488
  %107 = icmp ule i64 %105, %106, !dbg !3489
  br i1 %107, label %108, label %146, !dbg !3490

; <label>:108:                                    ; preds = %70
  %109 = load i64, i64* %17, align 8, !dbg !3491
  %110 = add i64 %109, 1, !dbg !3493
  store i64 %110, i64* %14, align 8, !dbg !3494
  %111 = load %struct.slotvec*, %struct.slotvec** %11, align 8, !dbg !3495
  %112 = load i32, i32* %5, align 4, !dbg !3496
  %113 = sext i32 %112 to i64, !dbg !3495
  %114 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %111, i64 %113, !dbg !3495
  %115 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %114, i32 0, i32 0, !dbg !3497
  store i64 %110, i64* %115, align 8, !dbg !3498
  %116 = load i8*, i8** %15, align 8, !dbg !3499
  %117 = icmp ne i8* %116, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0), !dbg !3501
  br i1 %117, label %118, label %120, !dbg !3502

; <label>:118:                                    ; preds = %108
  %119 = load i8*, i8** %15, align 8, !dbg !3503
  call void @free(i8* %119) #11, !dbg !3504
  br label %120, !dbg !3504

; <label>:120:                                    ; preds = %118, %108
  %121 = load i64, i64* %14, align 8, !dbg !3505
  %122 = call noalias i8* @xcharalloc(i64 %121), !dbg !3506
  store i8* %122, i8** %15, align 8, !dbg !3507
  %123 = load %struct.slotvec*, %struct.slotvec** %11, align 8, !dbg !3508
  %124 = load i32, i32* %5, align 4, !dbg !3509
  %125 = sext i32 %124 to i64, !dbg !3508
  %126 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %123, i64 %125, !dbg !3508
  %127 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %126, i32 0, i32 1, !dbg !3510
  store i8* %122, i8** %127, align 8, !dbg !3511
  %128 = load i8*, i8** %15, align 8, !dbg !3512
  %129 = load i64, i64* %14, align 8, !dbg !3513
  %130 = load i8*, i8** %6, align 8, !dbg !3514
  %131 = load i64, i64* %7, align 8, !dbg !3515
  %132 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3516
  %133 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %132, i32 0, i32 0, !dbg !3517
  %134 = load i32, i32* %133, align 8, !dbg !3517
  %135 = load i32, i32* %16, align 4, !dbg !3518
  %136 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3519
  %137 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %136, i32 0, i32 2, !dbg !3520
  %138 = getelementptr inbounds [8 x i32], [8 x i32]* %137, i32 0, i32 0, !dbg !3519
  %139 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3521
  %140 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %139, i32 0, i32 3, !dbg !3522
  %141 = load i8*, i8** %140, align 8, !dbg !3522
  %142 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3523
  %143 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %142, i32 0, i32 4, !dbg !3524
  %144 = load i8*, i8** %143, align 8, !dbg !3524
  %145 = call i64 @quotearg_buffer_restyled(i8* %128, i64 %129, i8* %130, i64 %131, i32 %134, i32 %135, i32* %138, i8* %141, i8* %144), !dbg !3525
  br label %146, !dbg !3526

; <label>:146:                                    ; preds = %120, %70
  %147 = load i32, i32* %9, align 4, !dbg !3527
  %148 = call i32* @__errno_location() #16, !dbg !3528
  store i32 %147, i32* %148, align 4, !dbg !3529
  %149 = load i8*, i8** %15, align 8, !dbg !3530
  ret i8* %149, !dbg !3531
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #10

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) #2 !dbg !3532 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3535, metadata !DIExpression()), !dbg !3536
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3537, metadata !DIExpression()), !dbg !3538
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3539, metadata !DIExpression()), !dbg !3540
  %7 = load i32, i32* %4, align 4, !dbg !3541
  %8 = load i8*, i8** %5, align 8, !dbg !3542
  %9 = load i64, i64* %6, align 8, !dbg !3543
  %10 = call i8* @quotearg_n_options(i32 %7, i8* %8, i64 %9, %struct.quoting_options* @default_quoting_options), !dbg !3544
  ret i8* %10, !dbg !3545
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg(i8*) #2 !dbg !3546 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3547, metadata !DIExpression()), !dbg !3548
  %3 = load i8*, i8** %2, align 8, !dbg !3549
  %4 = call i8* @quotearg_n(i32 0, i8* %3), !dbg !3550
  ret i8* %4, !dbg !3551
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_mem(i8*, i64) #2 !dbg !3552 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3555, metadata !DIExpression()), !dbg !3556
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3557, metadata !DIExpression()), !dbg !3558
  %5 = load i8*, i8** %3, align 8, !dbg !3559
  %6 = load i64, i64* %4, align 8, !dbg !3560
  %7 = call i8* @quotearg_n_mem(i32 0, i8* %5, i64 %6), !dbg !3561
  ret i8* %7, !dbg !3562
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_n_style(i32, i32, i8*) #2 !dbg !3563 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3566, metadata !DIExpression()), !dbg !3567
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3568, metadata !DIExpression()), !dbg !3569
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3570, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3572, metadata !DIExpression()), !dbg !3573
  %8 = load i32, i32* %5, align 4, !dbg !3574
  call void @quoting_options_from_style(%struct.quoting_options* sret %7, i32 %8), !dbg !3575
  %9 = load i32, i32* %4, align 4, !dbg !3576
  %10 = load i8*, i8** %6, align 8, !dbg !3577
  %11 = call i8* @quotearg_n_options(i32 %9, i8* %10, i64 -1, %struct.quoting_options* %7), !dbg !3578
  ret i8* %11, !dbg !3579
}

; Function Attrs: noinline nounwind uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret, i32) #2 !dbg !3580 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options, align 8
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3583, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3585, metadata !DIExpression()), !dbg !3586
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3586
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 56, i32 8, i1 false), !dbg !3586
  %6 = load i32, i32* %3, align 4, !dbg !3587
  %7 = icmp eq i32 %6, 8, !dbg !3589
  br i1 %7, label %8, label %9, !dbg !3590

; <label>:8:                                      ; preds = %2
  call void @abort() #13, !dbg !3591
  unreachable, !dbg !3591

; <label>:9:                                      ; preds = %2
  %10 = load i32, i32* %3, align 4, !dbg !3592
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i32 0, i32 0, !dbg !3593
  store i32 %10, i32* %11, align 8, !dbg !3594
  %12 = bitcast %struct.quoting_options* %0 to i8*, !dbg !3595
  %13 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3595
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 56, i32 8, i1 false), !dbg !3595
  ret void, !dbg !3596
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) #2 !dbg !3597 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3600, metadata !DIExpression()), !dbg !3601
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3602, metadata !DIExpression()), !dbg !3603
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3604, metadata !DIExpression()), !dbg !3605
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3606, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %9, metadata !3608, metadata !DIExpression()), !dbg !3609
  %10 = load i32, i32* %6, align 4, !dbg !3610
  call void @quoting_options_from_style(%struct.quoting_options* sret %9, i32 %10), !dbg !3611
  %11 = load i32, i32* %5, align 4, !dbg !3612
  %12 = load i8*, i8** %7, align 8, !dbg !3613
  %13 = load i64, i64* %8, align 8, !dbg !3614
  %14 = call i8* @quotearg_n_options(i32 %11, i8* %12, i64 %13, %struct.quoting_options* %9), !dbg !3615
  ret i8* %14, !dbg !3616
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_style(i32, i8*) #2 !dbg !3617 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3620, metadata !DIExpression()), !dbg !3621
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3622, metadata !DIExpression()), !dbg !3623
  %5 = load i32, i32* %3, align 4, !dbg !3624
  %6 = load i8*, i8** %4, align 8, !dbg !3625
  %7 = call i8* @quotearg_n_style(i32 0, i32 %5, i8* %6), !dbg !3626
  ret i8* %7, !dbg !3627
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) #2 !dbg !3628 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3631, metadata !DIExpression()), !dbg !3632
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3633, metadata !DIExpression()), !dbg !3634
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3635, metadata !DIExpression()), !dbg !3636
  %7 = load i32, i32* %4, align 4, !dbg !3637
  %8 = load i8*, i8** %5, align 8, !dbg !3638
  %9 = load i64, i64* %6, align 8, !dbg !3639
  %10 = call i8* @quotearg_n_style_mem(i32 0, i32 %7, i8* %8, i64 %9), !dbg !3640
  ret i8* %10, !dbg !3641
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) #2 !dbg !3642 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3645, metadata !DIExpression()), !dbg !3646
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3647, metadata !DIExpression()), !dbg !3648
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3649, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3651, metadata !DIExpression()), !dbg !3652
  %8 = bitcast %struct.quoting_options* %7 to i8*, !dbg !3653
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3653
  %9 = load i8, i8* %6, align 1, !dbg !3654
  %10 = call i32 @set_char_quoting(%struct.quoting_options* %7, i8 signext %9, i32 1), !dbg !3655
  %11 = load i8*, i8** %4, align 8, !dbg !3656
  %12 = load i64, i64* %5, align 8, !dbg !3657
  %13 = call i8* @quotearg_n_options(i32 0, i8* %11, i64 %12, %struct.quoting_options* %7), !dbg !3658
  ret i8* %13, !dbg !3659
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_char(i8*, i8 signext) #2 !dbg !3660 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3663, metadata !DIExpression()), !dbg !3664
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3665, metadata !DIExpression()), !dbg !3666
  %5 = load i8*, i8** %3, align 8, !dbg !3667
  %6 = load i8, i8* %4, align 1, !dbg !3668
  %7 = call i8* @quotearg_char_mem(i8* %5, i64 -1, i8 signext %6), !dbg !3669
  ret i8* %7, !dbg !3670
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_colon(i8*) #2 !dbg !3671 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3672, metadata !DIExpression()), !dbg !3673
  %3 = load i8*, i8** %2, align 8, !dbg !3674
  %4 = call i8* @quotearg_char(i8* %3, i8 signext 58), !dbg !3675
  ret i8* %4, !dbg !3676
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_colon_mem(i8*, i64) #2 !dbg !3677 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3678, metadata !DIExpression()), !dbg !3679
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3680, metadata !DIExpression()), !dbg !3681
  %5 = load i8*, i8** %3, align 8, !dbg !3682
  %6 = load i64, i64* %4, align 8, !dbg !3683
  %7 = call i8* @quotearg_char_mem(i8* %5, i64 %6, i8 signext 58), !dbg !3684
  ret i8* %7, !dbg !3685
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) #2 !dbg !3686 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3689, metadata !DIExpression()), !dbg !3690
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3691, metadata !DIExpression()), !dbg !3692
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3693, metadata !DIExpression()), !dbg !3694
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3695, metadata !DIExpression()), !dbg !3696
  %9 = load i32, i32* %5, align 4, !dbg !3697
  %10 = load i8*, i8** %6, align 8, !dbg !3698
  %11 = load i8*, i8** %7, align 8, !dbg !3699
  %12 = load i8*, i8** %8, align 8, !dbg !3700
  %13 = call i8* @quotearg_n_custom_mem(i32 %9, i8* %10, i8* %11, i8* %12, i64 -1), !dbg !3701
  ret i8* %13, !dbg !3702
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) #2 !dbg !3703 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3706, metadata !DIExpression()), !dbg !3707
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3708, metadata !DIExpression()), !dbg !3709
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3710, metadata !DIExpression()), !dbg !3711
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3712, metadata !DIExpression()), !dbg !3713
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3714, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %11, metadata !3716, metadata !DIExpression()), !dbg !3717
  %12 = bitcast %struct.quoting_options* %11 to i8*, !dbg !3718
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3718
  %13 = load i8*, i8** %7, align 8, !dbg !3719
  %14 = load i8*, i8** %8, align 8, !dbg !3720
  call void @set_custom_quoting(%struct.quoting_options* %11, i8* %13, i8* %14), !dbg !3721
  %15 = load i32, i32* %6, align 4, !dbg !3722
  %16 = load i8*, i8** %9, align 8, !dbg !3723
  %17 = load i64, i64* %10, align 8, !dbg !3724
  %18 = call i8* @quotearg_n_options(i32 %15, i8* %16, i64 %17, %struct.quoting_options* %11), !dbg !3725
  ret i8* %18, !dbg !3726
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) #2 !dbg !3727 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3730, metadata !DIExpression()), !dbg !3731
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3732, metadata !DIExpression()), !dbg !3733
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3734, metadata !DIExpression()), !dbg !3735
  %7 = load i8*, i8** %4, align 8, !dbg !3736
  %8 = load i8*, i8** %5, align 8, !dbg !3737
  %9 = load i8*, i8** %6, align 8, !dbg !3738
  %10 = call i8* @quotearg_n_custom(i32 0, i8* %7, i8* %8, i8* %9), !dbg !3739
  ret i8* %10, !dbg !3740
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) #2 !dbg !3741 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3744, metadata !DIExpression()), !dbg !3745
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3746, metadata !DIExpression()), !dbg !3747
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3748, metadata !DIExpression()), !dbg !3749
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3750, metadata !DIExpression()), !dbg !3751
  %9 = load i8*, i8** %5, align 8, !dbg !3752
  %10 = load i8*, i8** %6, align 8, !dbg !3753
  %11 = load i8*, i8** %7, align 8, !dbg !3754
  %12 = load i64, i64* %8, align 8, !dbg !3755
  %13 = call i8* @quotearg_n_custom_mem(i32 0, i8* %9, i8* %10, i8* %11, i64 %12), !dbg !3756
  ret i8* %13, !dbg !3757
}

; Function Attrs: noinline nounwind uwtable
define i8* @quote_n(i32, i8*) #2 !dbg !3758 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3761, metadata !DIExpression()), !dbg !3762
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3763, metadata !DIExpression()), !dbg !3764
  %5 = load i32, i32* %3, align 4, !dbg !3765
  %6 = load i8*, i8** %4, align 8, !dbg !3766
  %7 = call i8* @quotearg_n_options(i32 %5, i8* %6, i64 -1, %struct.quoting_options* @quote_quoting_options), !dbg !3767
  ret i8* %7, !dbg !3768
}

; Function Attrs: noinline nounwind uwtable
define i8* @quote(i8*) #2 !dbg !3769 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3772, metadata !DIExpression()), !dbg !3773
  %3 = load i8*, i8** %2, align 8, !dbg !3774
  %4 = call i8* @quote_n(i32 0, i8* %3), !dbg !3775
  ret i8* %4, !dbg !3776
}

; Function Attrs: noinline nounwind uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8**, i64) #2 !dbg !3777 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !3820, metadata !DIExpression()), !dbg !3821
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3822, metadata !DIExpression()), !dbg !3823
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3824, metadata !DIExpression()), !dbg !3825
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3826, metadata !DIExpression()), !dbg !3827
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !3828, metadata !DIExpression()), !dbg !3829
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3830, metadata !DIExpression()), !dbg !3831
  %13 = load i8*, i8** %8, align 8, !dbg !3832
  %14 = icmp ne i8* %13, null, !dbg !3832
  br i1 %14, label %15, label %21, !dbg !3834

; <label>:15:                                     ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3835
  %17 = load i8*, i8** %8, align 8, !dbg !3836
  %18 = load i8*, i8** %9, align 8, !dbg !3837
  %19 = load i8*, i8** %10, align 8, !dbg !3838
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.122, i32 0, i32 0), i8* %17, i8* %18, i8* %19), !dbg !3839
  br label %26, !dbg !3839

; <label>:21:                                     ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3840
  %23 = load i8*, i8** %9, align 8, !dbg !3841
  %24 = load i8*, i8** %10, align 8, !dbg !3842
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.123, i32 0, i32 0), i8* %23, i8* %24), !dbg !3843
  br label %26

; <label>:26:                                     ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3844
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.124, i32 0, i32 0), i32 2012), !dbg !3845
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3846
  %30 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.125, i32 0, i32 0), %struct._IO_FILE* %29), !dbg !3846
  %31 = load i64, i64* %12, align 8, !dbg !3847
  switch i64 %31, label %195 [
    i64 0, label %32
    i64 1, label %33
    i64 2, label %39
    i64 3, label %48
    i64 4, label %60
    i64 5, label %75
    i64 6, label %93
    i64 7, label %114
    i64 8, label %138
    i64 9, label %165
  ], !dbg !3848

; <label>:32:                                     ; preds = %26
  call void @abort() #13, !dbg !3849
  unreachable, !dbg !3849

; <label>:33:                                     ; preds = %26
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3851
  %35 = load i8**, i8*** %11, align 8, !dbg !3852
  %36 = getelementptr inbounds i8*, i8** %35, i64 0, !dbg !3852
  %37 = load i8*, i8** %36, align 8, !dbg !3852
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.126, i32 0, i32 0), i8* %37), !dbg !3853
  br label %225, !dbg !3854

; <label>:39:                                     ; preds = %26
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3855
  %41 = load i8**, i8*** %11, align 8, !dbg !3856
  %42 = getelementptr inbounds i8*, i8** %41, i64 0, !dbg !3856
  %43 = load i8*, i8** %42, align 8, !dbg !3856
  %44 = load i8**, i8*** %11, align 8, !dbg !3857
  %45 = getelementptr inbounds i8*, i8** %44, i64 1, !dbg !3857
  %46 = load i8*, i8** %45, align 8, !dbg !3857
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.127, i32 0, i32 0), i8* %43, i8* %46), !dbg !3858
  br label %225, !dbg !3859

; <label>:48:                                     ; preds = %26
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3860
  %50 = load i8**, i8*** %11, align 8, !dbg !3861
  %51 = getelementptr inbounds i8*, i8** %50, i64 0, !dbg !3861
  %52 = load i8*, i8** %51, align 8, !dbg !3861
  %53 = load i8**, i8*** %11, align 8, !dbg !3862
  %54 = getelementptr inbounds i8*, i8** %53, i64 1, !dbg !3862
  %55 = load i8*, i8** %54, align 8, !dbg !3862
  %56 = load i8**, i8*** %11, align 8, !dbg !3863
  %57 = getelementptr inbounds i8*, i8** %56, i64 2, !dbg !3863
  %58 = load i8*, i8** %57, align 8, !dbg !3863
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.128, i32 0, i32 0), i8* %52, i8* %55, i8* %58), !dbg !3864
  br label %225, !dbg !3865

; <label>:60:                                     ; preds = %26
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3866
  %62 = load i8**, i8*** %11, align 8, !dbg !3867
  %63 = getelementptr inbounds i8*, i8** %62, i64 0, !dbg !3867
  %64 = load i8*, i8** %63, align 8, !dbg !3867
  %65 = load i8**, i8*** %11, align 8, !dbg !3868
  %66 = getelementptr inbounds i8*, i8** %65, i64 1, !dbg !3868
  %67 = load i8*, i8** %66, align 8, !dbg !3868
  %68 = load i8**, i8*** %11, align 8, !dbg !3869
  %69 = getelementptr inbounds i8*, i8** %68, i64 2, !dbg !3869
  %70 = load i8*, i8** %69, align 8, !dbg !3869
  %71 = load i8**, i8*** %11, align 8, !dbg !3870
  %72 = getelementptr inbounds i8*, i8** %71, i64 3, !dbg !3870
  %73 = load i8*, i8** %72, align 8, !dbg !3870
  %74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.129, i32 0, i32 0), i8* %64, i8* %67, i8* %70, i8* %73), !dbg !3871
  br label %225, !dbg !3872

; <label>:75:                                     ; preds = %26
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3873
  %77 = load i8**, i8*** %11, align 8, !dbg !3874
  %78 = getelementptr inbounds i8*, i8** %77, i64 0, !dbg !3874
  %79 = load i8*, i8** %78, align 8, !dbg !3874
  %80 = load i8**, i8*** %11, align 8, !dbg !3875
  %81 = getelementptr inbounds i8*, i8** %80, i64 1, !dbg !3875
  %82 = load i8*, i8** %81, align 8, !dbg !3875
  %83 = load i8**, i8*** %11, align 8, !dbg !3876
  %84 = getelementptr inbounds i8*, i8** %83, i64 2, !dbg !3876
  %85 = load i8*, i8** %84, align 8, !dbg !3876
  %86 = load i8**, i8*** %11, align 8, !dbg !3877
  %87 = getelementptr inbounds i8*, i8** %86, i64 3, !dbg !3877
  %88 = load i8*, i8** %87, align 8, !dbg !3877
  %89 = load i8**, i8*** %11, align 8, !dbg !3878
  %90 = getelementptr inbounds i8*, i8** %89, i64 4, !dbg !3878
  %91 = load i8*, i8** %90, align 8, !dbg !3878
  %92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.130, i32 0, i32 0), i8* %79, i8* %82, i8* %85, i8* %88, i8* %91), !dbg !3879
  br label %225, !dbg !3880

; <label>:93:                                     ; preds = %26
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3881
  %95 = load i8**, i8*** %11, align 8, !dbg !3882
  %96 = getelementptr inbounds i8*, i8** %95, i64 0, !dbg !3882
  %97 = load i8*, i8** %96, align 8, !dbg !3882
  %98 = load i8**, i8*** %11, align 8, !dbg !3883
  %99 = getelementptr inbounds i8*, i8** %98, i64 1, !dbg !3883
  %100 = load i8*, i8** %99, align 8, !dbg !3883
  %101 = load i8**, i8*** %11, align 8, !dbg !3884
  %102 = getelementptr inbounds i8*, i8** %101, i64 2, !dbg !3884
  %103 = load i8*, i8** %102, align 8, !dbg !3884
  %104 = load i8**, i8*** %11, align 8, !dbg !3885
  %105 = getelementptr inbounds i8*, i8** %104, i64 3, !dbg !3885
  %106 = load i8*, i8** %105, align 8, !dbg !3885
  %107 = load i8**, i8*** %11, align 8, !dbg !3886
  %108 = getelementptr inbounds i8*, i8** %107, i64 4, !dbg !3886
  %109 = load i8*, i8** %108, align 8, !dbg !3886
  %110 = load i8**, i8*** %11, align 8, !dbg !3887
  %111 = getelementptr inbounds i8*, i8** %110, i64 5, !dbg !3887
  %112 = load i8*, i8** %111, align 8, !dbg !3887
  %113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %94, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.131, i32 0, i32 0), i8* %97, i8* %100, i8* %103, i8* %106, i8* %109, i8* %112), !dbg !3888
  br label %225, !dbg !3889

; <label>:114:                                    ; preds = %26
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3890
  %116 = load i8**, i8*** %11, align 8, !dbg !3891
  %117 = getelementptr inbounds i8*, i8** %116, i64 0, !dbg !3891
  %118 = load i8*, i8** %117, align 8, !dbg !3891
  %119 = load i8**, i8*** %11, align 8, !dbg !3892
  %120 = getelementptr inbounds i8*, i8** %119, i64 1, !dbg !3892
  %121 = load i8*, i8** %120, align 8, !dbg !3892
  %122 = load i8**, i8*** %11, align 8, !dbg !3893
  %123 = getelementptr inbounds i8*, i8** %122, i64 2, !dbg !3893
  %124 = load i8*, i8** %123, align 8, !dbg !3893
  %125 = load i8**, i8*** %11, align 8, !dbg !3894
  %126 = getelementptr inbounds i8*, i8** %125, i64 3, !dbg !3894
  %127 = load i8*, i8** %126, align 8, !dbg !3894
  %128 = load i8**, i8*** %11, align 8, !dbg !3895
  %129 = getelementptr inbounds i8*, i8** %128, i64 4, !dbg !3895
  %130 = load i8*, i8** %129, align 8, !dbg !3895
  %131 = load i8**, i8*** %11, align 8, !dbg !3896
  %132 = getelementptr inbounds i8*, i8** %131, i64 5, !dbg !3896
  %133 = load i8*, i8** %132, align 8, !dbg !3896
  %134 = load i8**, i8*** %11, align 8, !dbg !3897
  %135 = getelementptr inbounds i8*, i8** %134, i64 6, !dbg !3897
  %136 = load i8*, i8** %135, align 8, !dbg !3897
  %137 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %115, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.132, i32 0, i32 0), i8* %118, i8* %121, i8* %124, i8* %127, i8* %130, i8* %133, i8* %136), !dbg !3898
  br label %225, !dbg !3899

; <label>:138:                                    ; preds = %26
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3900
  %140 = load i8**, i8*** %11, align 8, !dbg !3901
  %141 = getelementptr inbounds i8*, i8** %140, i64 0, !dbg !3901
  %142 = load i8*, i8** %141, align 8, !dbg !3901
  %143 = load i8**, i8*** %11, align 8, !dbg !3902
  %144 = getelementptr inbounds i8*, i8** %143, i64 1, !dbg !3902
  %145 = load i8*, i8** %144, align 8, !dbg !3902
  %146 = load i8**, i8*** %11, align 8, !dbg !3903
  %147 = getelementptr inbounds i8*, i8** %146, i64 2, !dbg !3903
  %148 = load i8*, i8** %147, align 8, !dbg !3903
  %149 = load i8**, i8*** %11, align 8, !dbg !3904
  %150 = getelementptr inbounds i8*, i8** %149, i64 3, !dbg !3904
  %151 = load i8*, i8** %150, align 8, !dbg !3904
  %152 = load i8**, i8*** %11, align 8, !dbg !3905
  %153 = getelementptr inbounds i8*, i8** %152, i64 4, !dbg !3905
  %154 = load i8*, i8** %153, align 8, !dbg !3905
  %155 = load i8**, i8*** %11, align 8, !dbg !3906
  %156 = getelementptr inbounds i8*, i8** %155, i64 5, !dbg !3906
  %157 = load i8*, i8** %156, align 8, !dbg !3906
  %158 = load i8**, i8*** %11, align 8, !dbg !3907
  %159 = getelementptr inbounds i8*, i8** %158, i64 6, !dbg !3907
  %160 = load i8*, i8** %159, align 8, !dbg !3907
  %161 = load i8**, i8*** %11, align 8, !dbg !3908
  %162 = getelementptr inbounds i8*, i8** %161, i64 7, !dbg !3908
  %163 = load i8*, i8** %162, align 8, !dbg !3908
  %164 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %139, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.133, i32 0, i32 0), i8* %142, i8* %145, i8* %148, i8* %151, i8* %154, i8* %157, i8* %160, i8* %163), !dbg !3909
  br label %225, !dbg !3910

; <label>:165:                                    ; preds = %26
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3911
  %167 = load i8**, i8*** %11, align 8, !dbg !3912
  %168 = getelementptr inbounds i8*, i8** %167, i64 0, !dbg !3912
  %169 = load i8*, i8** %168, align 8, !dbg !3912
  %170 = load i8**, i8*** %11, align 8, !dbg !3913
  %171 = getelementptr inbounds i8*, i8** %170, i64 1, !dbg !3913
  %172 = load i8*, i8** %171, align 8, !dbg !3913
  %173 = load i8**, i8*** %11, align 8, !dbg !3914
  %174 = getelementptr inbounds i8*, i8** %173, i64 2, !dbg !3914
  %175 = load i8*, i8** %174, align 8, !dbg !3914
  %176 = load i8**, i8*** %11, align 8, !dbg !3915
  %177 = getelementptr inbounds i8*, i8** %176, i64 3, !dbg !3915
  %178 = load i8*, i8** %177, align 8, !dbg !3915
  %179 = load i8**, i8*** %11, align 8, !dbg !3916
  %180 = getelementptr inbounds i8*, i8** %179, i64 4, !dbg !3916
  %181 = load i8*, i8** %180, align 8, !dbg !3916
  %182 = load i8**, i8*** %11, align 8, !dbg !3917
  %183 = getelementptr inbounds i8*, i8** %182, i64 5, !dbg !3917
  %184 = load i8*, i8** %183, align 8, !dbg !3917
  %185 = load i8**, i8*** %11, align 8, !dbg !3918
  %186 = getelementptr inbounds i8*, i8** %185, i64 6, !dbg !3918
  %187 = load i8*, i8** %186, align 8, !dbg !3918
  %188 = load i8**, i8*** %11, align 8, !dbg !3919
  %189 = getelementptr inbounds i8*, i8** %188, i64 7, !dbg !3919
  %190 = load i8*, i8** %189, align 8, !dbg !3919
  %191 = load i8**, i8*** %11, align 8, !dbg !3920
  %192 = getelementptr inbounds i8*, i8** %191, i64 8, !dbg !3920
  %193 = load i8*, i8** %192, align 8, !dbg !3920
  %194 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %166, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.134, i32 0, i32 0), i8* %169, i8* %172, i8* %175, i8* %178, i8* %181, i8* %184, i8* %187, i8* %190, i8* %193), !dbg !3921
  br label %225, !dbg !3922

; <label>:195:                                    ; preds = %26
  %196 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3923
  %197 = load i8**, i8*** %11, align 8, !dbg !3924
  %198 = getelementptr inbounds i8*, i8** %197, i64 0, !dbg !3924
  %199 = load i8*, i8** %198, align 8, !dbg !3924
  %200 = load i8**, i8*** %11, align 8, !dbg !3925
  %201 = getelementptr inbounds i8*, i8** %200, i64 1, !dbg !3925
  %202 = load i8*, i8** %201, align 8, !dbg !3925
  %203 = load i8**, i8*** %11, align 8, !dbg !3926
  %204 = getelementptr inbounds i8*, i8** %203, i64 2, !dbg !3926
  %205 = load i8*, i8** %204, align 8, !dbg !3926
  %206 = load i8**, i8*** %11, align 8, !dbg !3927
  %207 = getelementptr inbounds i8*, i8** %206, i64 3, !dbg !3927
  %208 = load i8*, i8** %207, align 8, !dbg !3927
  %209 = load i8**, i8*** %11, align 8, !dbg !3928
  %210 = getelementptr inbounds i8*, i8** %209, i64 4, !dbg !3928
  %211 = load i8*, i8** %210, align 8, !dbg !3928
  %212 = load i8**, i8*** %11, align 8, !dbg !3929
  %213 = getelementptr inbounds i8*, i8** %212, i64 5, !dbg !3929
  %214 = load i8*, i8** %213, align 8, !dbg !3929
  %215 = load i8**, i8*** %11, align 8, !dbg !3930
  %216 = getelementptr inbounds i8*, i8** %215, i64 6, !dbg !3930
  %217 = load i8*, i8** %216, align 8, !dbg !3930
  %218 = load i8**, i8*** %11, align 8, !dbg !3931
  %219 = getelementptr inbounds i8*, i8** %218, i64 7, !dbg !3931
  %220 = load i8*, i8** %219, align 8, !dbg !3931
  %221 = load i8**, i8*** %11, align 8, !dbg !3932
  %222 = getelementptr inbounds i8*, i8** %221, i64 8, !dbg !3932
  %223 = load i8*, i8** %222, align 8, !dbg !3932
  %224 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %196, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.135, i32 0, i32 0), i8* %199, i8* %202, i8* %205, i8* %208, i8* %211, i8* %214, i8* %217, i8* %220, i8* %223), !dbg !3933
  br label %225, !dbg !3934

; <label>:225:                                    ; preds = %195, %165, %138, %114, %93, %75, %60, %48, %39, %33
  ret void, !dbg !3935
}

; Function Attrs: noinline nounwind uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8**) #2 !dbg !3936 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3939, metadata !DIExpression()), !dbg !3940
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3941, metadata !DIExpression()), !dbg !3942
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3943, metadata !DIExpression()), !dbg !3944
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3945, metadata !DIExpression()), !dbg !3946
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !3947, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3949, metadata !DIExpression()), !dbg !3950
  store i64 0, i64* %11, align 8, !dbg !3951
  br label %12, !dbg !3953

; <label>:12:                                     ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8, !dbg !3954
  %14 = load i64, i64* %11, align 8, !dbg !3956
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14, !dbg !3954
  %16 = load i8*, i8** %15, align 8, !dbg !3954
  %17 = icmp ne i8* %16, null, !dbg !3957
  br i1 %17, label %18, label %22, !dbg !3957

; <label>:18:                                     ; preds = %12
  br label %19, !dbg !3957

; <label>:19:                                     ; preds = %18
  %20 = load i64, i64* %11, align 8, !dbg !3958
  %21 = add i64 %20, 1, !dbg !3958
  store i64 %21, i64* %11, align 8, !dbg !3958
  br label %12, !dbg !3959, !llvm.loop !3960

; <label>:22:                                     ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3962
  %24 = load i8*, i8** %7, align 8, !dbg !3963
  %25 = load i8*, i8** %8, align 8, !dbg !3964
  %26 = load i8*, i8** %9, align 8, !dbg !3965
  %27 = load i8**, i8*** %10, align 8, !dbg !3966
  %28 = load i64, i64* %11, align 8, !dbg !3967
  call void @version_etc_arn(%struct._IO_FILE* %23, i8* %24, i8* %25, i8* %26, i8** %27, i64 %28), !dbg !3968
  ret void, !dbg !3969
}

; Function Attrs: noinline nounwind uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag*) #2 !dbg !3970 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.__va_list_tag*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [10 x i8*], align 16
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3980, metadata !DIExpression()), !dbg !3981
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3982, metadata !DIExpression()), !dbg !3983
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3984, metadata !DIExpression()), !dbg !3985
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3986, metadata !DIExpression()), !dbg !3987
  store %struct.__va_list_tag* %4, %struct.__va_list_tag** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %10, metadata !3988, metadata !DIExpression()), !dbg !3989
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3990, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.declare(metadata [10 x i8*]* %12, metadata !3992, metadata !DIExpression()), !dbg !3996
  store i64 0, i64* %11, align 8, !dbg !3997
  br label %13, !dbg !3999

; <label>:13:                                     ; preds = %41, %5
  %14 = load i64, i64* %11, align 8, !dbg !4000
  %15 = icmp ult i64 %14, 10, !dbg !4002
  br i1 %15, label %16, label %38, !dbg !4003

; <label>:16:                                     ; preds = %13
  %17 = load %struct.__va_list_tag*, %struct.__va_list_tag** %10, align 8, !dbg !4004
  %18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %17, i32 0, i32 0, !dbg !4004
  %19 = load i32, i32* %18, align 8, !dbg !4004
  %20 = icmp ule i32 %19, 40, !dbg !4004
  br i1 %20, label %21, label %27, !dbg !4004

; <label>:21:                                     ; preds = %16
  %22 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %17, i32 0, i32 3, !dbg !4004
  %23 = load i8*, i8** %22, align 8, !dbg !4004
  %24 = getelementptr i8, i8* %23, i32 %19, !dbg !4004
  %25 = bitcast i8* %24 to i8**, !dbg !4004
  %26 = add i32 %19, 8, !dbg !4004
  store i32 %26, i32* %18, align 8, !dbg !4004
  br label %32, !dbg !4004

; <label>:27:                                     ; preds = %16
  %28 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %17, i32 0, i32 2, !dbg !4004
  %29 = load i8*, i8** %28, align 8, !dbg !4004
  %30 = bitcast i8* %29 to i8**, !dbg !4004
  %31 = getelementptr i8, i8* %29, i32 8, !dbg !4004
  store i8* %31, i8** %28, align 8, !dbg !4004
  br label %32, !dbg !4004

; <label>:32:                                     ; preds = %27, %21
  %33 = phi i8** [ %25, %21 ], [ %30, %27 ], !dbg !4004
  %34 = load i8*, i8** %33, align 8, !dbg !4004
  %35 = load i64, i64* %11, align 8, !dbg !4005
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %12, i64 0, i64 %35, !dbg !4006
  store i8* %34, i8** %36, align 8, !dbg !4007
  %37 = icmp ne i8* %34, null, !dbg !4008
  br label %38

; <label>:38:                                     ; preds = %32, %13
  %39 = phi i1 [ false, %13 ], [ %37, %32 ]
  br i1 %39, label %40, label %44, !dbg !4009

; <label>:40:                                     ; preds = %38
  br label %41, !dbg !4009

; <label>:41:                                     ; preds = %40
  %42 = load i64, i64* %11, align 8, !dbg !4010
  %43 = add i64 %42, 1, !dbg !4010
  store i64 %43, i64* %11, align 8, !dbg !4010
  br label %13, !dbg !4011, !llvm.loop !4012

; <label>:44:                                     ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !4014
  %46 = load i8*, i8** %7, align 8, !dbg !4015
  %47 = load i8*, i8** %8, align 8, !dbg !4016
  %48 = load i8*, i8** %9, align 8, !dbg !4017
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %12, i32 0, i32 0, !dbg !4018
  %50 = load i64, i64* %11, align 8, !dbg !4019
  call void @version_etc_arn(%struct._IO_FILE* %45, i8* %46, i8* %47, i8* %48, i8** %49, i64 %50), !dbg !4020
  ret void, !dbg !4021
}

; Function Attrs: noinline nounwind uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) #2 !dbg !4022 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !4025, metadata !DIExpression()), !dbg !4026
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4027, metadata !DIExpression()), !dbg !4028
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4029, metadata !DIExpression()), !dbg !4030
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4031, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %9, metadata !4033, metadata !DIExpression()), !dbg !4039
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i32 0, i32 0, !dbg !4040
  %11 = bitcast %struct.__va_list_tag* %10 to i8*, !dbg !4040
  call void @llvm.va_start(i8* %11), !dbg !4040
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4041
  %13 = load i8*, i8** %6, align 8, !dbg !4042
  %14 = load i8*, i8** %7, align 8, !dbg !4043
  %15 = load i8*, i8** %8, align 8, !dbg !4044
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i32 0, i32 0, !dbg !4045
  call void @version_etc_va(%struct._IO_FILE* %12, i8* %13, i8* %14, i8* %15, %struct.__va_list_tag* %16), !dbg !4046
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i32 0, i32 0, !dbg !4047
  %18 = bitcast %struct.__va_list_tag* %17 to i8*, !dbg !4047
  call void @llvm.va_end(i8* %18), !dbg !4047
  ret void, !dbg !4048
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: noinline nounwind uwtable
define void @emit_bug_reporting_address() #2 !dbg !4049 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.138, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.139, i32 0, i32 0)), !dbg !4050
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.140, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.141, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.142, i32 0, i32 0)), !dbg !4051
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4052
  %4 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.143, i32 0, i32 0), %struct._IO_FILE* %3), !dbg !4052
  ret void, !dbg !4053
}

; Function Attrs: noinline nounwind uwtable
define noalias i8* @xnmalloc(i64, i64) #2 !dbg !4054 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4057, metadata !DIExpression()), !dbg !4058
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4059, metadata !DIExpression()), !dbg !4060
  %5 = load i64, i64* %4, align 8, !dbg !4061
  %6 = udiv i64 -1, %5, !dbg !4061
  %7 = load i64, i64* %3, align 8, !dbg !4061
  %8 = icmp ult i64 %6, %7, !dbg !4061
  br i1 %8, label %9, label %10, !dbg !4063

; <label>:9:                                      ; preds = %2
  call void @xalloc_die() #15, !dbg !4064
  unreachable, !dbg !4064

; <label>:10:                                     ; preds = %2
  %11 = load i64, i64* %3, align 8, !dbg !4065
  %12 = load i64, i64* %4, align 8, !dbg !4066
  %13 = mul i64 %11, %12, !dbg !4067
  %14 = call noalias i8* @xmalloc(i64 %13), !dbg !4068
  ret i8* %14, !dbg !4069
}

; Function Attrs: noinline nounwind uwtable
define noalias i8* @xmalloc(i64) #2 !dbg !4070 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4073, metadata !DIExpression()), !dbg !4074
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4075, metadata !DIExpression()), !dbg !4076
  %4 = load i64, i64* %2, align 8, !dbg !4077
  %5 = call noalias i8* @malloc(i64 %4) #11, !dbg !4078
  store i8* %5, i8** %3, align 8, !dbg !4076
  %6 = load i8*, i8** %3, align 8, !dbg !4079
  %7 = icmp ne i8* %6, null, !dbg !4079
  br i1 %7, label %12, label %8, !dbg !4081

; <label>:8:                                      ; preds = %1
  %9 = load i64, i64* %2, align 8, !dbg !4082
  %10 = icmp ne i64 %9, 0, !dbg !4083
  br i1 %10, label %11, label %12, !dbg !4084

; <label>:11:                                     ; preds = %8
  call void @xalloc_die() #15, !dbg !4085
  unreachable, !dbg !4085

; <label>:12:                                     ; preds = %8, %1
  %13 = load i8*, i8** %3, align 8, !dbg !4086
  ret i8* %13, !dbg !4087
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #5

; Function Attrs: noinline nounwind uwtable
define i8* @xnrealloc(i8*, i64, i64) #2 !dbg !4088 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4091, metadata !DIExpression()), !dbg !4092
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4093, metadata !DIExpression()), !dbg !4094
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4095, metadata !DIExpression()), !dbg !4096
  %7 = load i64, i64* %6, align 8, !dbg !4097
  %8 = udiv i64 -1, %7, !dbg !4097
  %9 = load i64, i64* %5, align 8, !dbg !4097
  %10 = icmp ult i64 %8, %9, !dbg !4097
  br i1 %10, label %11, label %12, !dbg !4099

; <label>:11:                                     ; preds = %3
  call void @xalloc_die() #15, !dbg !4100
  unreachable, !dbg !4100

; <label>:12:                                     ; preds = %3
  %13 = load i8*, i8** %4, align 8, !dbg !4101
  %14 = load i64, i64* %5, align 8, !dbg !4102
  %15 = load i64, i64* %6, align 8, !dbg !4103
  %16 = mul i64 %14, %15, !dbg !4104
  %17 = call i8* @xrealloc(i8* %13, i64 %16), !dbg !4105
  ret i8* %17, !dbg !4106
}

; Function Attrs: noinline nounwind uwtable
define i8* @xrealloc(i8*, i64) #2 !dbg !4107 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4110, metadata !DIExpression()), !dbg !4111
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4112, metadata !DIExpression()), !dbg !4113
  %6 = load i64, i64* %5, align 8, !dbg !4114
  %7 = icmp ne i64 %6, 0, !dbg !4114
  br i1 %7, label %13, label %8, !dbg !4116

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %4, align 8, !dbg !4117
  %10 = icmp ne i8* %9, null, !dbg !4117
  br i1 %10, label %11, label %13, !dbg !4118

; <label>:11:                                     ; preds = %8
  %12 = load i8*, i8** %4, align 8, !dbg !4119
  call void @free(i8* %12) #11, !dbg !4121
  store i8* null, i8** %3, align 8, !dbg !4122
  br label %25, !dbg !4122

; <label>:13:                                     ; preds = %8, %2
  %14 = load i8*, i8** %4, align 8, !dbg !4123
  %15 = load i64, i64* %5, align 8, !dbg !4124
  %16 = call i8* @realloc(i8* %14, i64 %15) #11, !dbg !4125
  store i8* %16, i8** %4, align 8, !dbg !4126
  %17 = load i8*, i8** %4, align 8, !dbg !4127
  %18 = icmp ne i8* %17, null, !dbg !4127
  br i1 %18, label %23, label %19, !dbg !4129

; <label>:19:                                     ; preds = %13
  %20 = load i64, i64* %5, align 8, !dbg !4130
  %21 = icmp ne i64 %20, 0, !dbg !4130
  br i1 %21, label %22, label %23, !dbg !4131

; <label>:22:                                     ; preds = %19
  call void @xalloc_die() #15, !dbg !4132
  unreachable, !dbg !4132

; <label>:23:                                     ; preds = %19, %13
  %24 = load i8*, i8** %4, align 8, !dbg !4133
  store i8* %24, i8** %3, align 8, !dbg !4134
  br label %25, !dbg !4134

; <label>:25:                                     ; preds = %23, %11
  %26 = load i8*, i8** %3, align 8, !dbg !4135
  ret i8* %26, !dbg !4135
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #5

; Function Attrs: noinline nounwind uwtable
define i8* @x2nrealloc(i8*, i64*, i64) #2 !dbg !644 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4136, metadata !DIExpression()), !dbg !4137
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !4138, metadata !DIExpression()), !dbg !4139
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4140, metadata !DIExpression()), !dbg !4141
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4142, metadata !DIExpression()), !dbg !4143
  %8 = load i64*, i64** %5, align 8, !dbg !4144
  %9 = load i64, i64* %8, align 8, !dbg !4145
  store i64 %9, i64* %7, align 8, !dbg !4143
  %10 = load i8*, i8** %4, align 8, !dbg !4146
  %11 = icmp ne i8* %10, null, !dbg !4146
  br i1 %11, label %26, label %12, !dbg !4148

; <label>:12:                                     ; preds = %3
  %13 = load i64, i64* %7, align 8, !dbg !4149
  %14 = icmp ne i64 %13, 0, !dbg !4149
  br i1 %14, label %25, label %15, !dbg !4152

; <label>:15:                                     ; preds = %12
  %16 = load i64, i64* %6, align 8, !dbg !4153
  %17 = udiv i64 128, %16, !dbg !4155
  store i64 %17, i64* %7, align 8, !dbg !4156
  %18 = load i64, i64* %7, align 8, !dbg !4157
  %19 = icmp ne i64 %18, 0, !dbg !4158
  %20 = xor i1 %19, true, !dbg !4158
  %21 = zext i1 %20 to i32, !dbg !4158
  %22 = sext i32 %21 to i64, !dbg !4158
  %23 = load i64, i64* %7, align 8, !dbg !4159
  %24 = add i64 %23, %22, !dbg !4159
  store i64 %24, i64* %7, align 8, !dbg !4159
  br label %25, !dbg !4160

; <label>:25:                                     ; preds = %15, %12
  br label %38, !dbg !4161

; <label>:26:                                     ; preds = %3
  %27 = load i64, i64* %6, align 8, !dbg !4162
  %28 = udiv i64 -6148914691236517206, %27, !dbg !4165
  %29 = load i64, i64* %7, align 8, !dbg !4166
  %30 = icmp ule i64 %28, %29, !dbg !4167
  br i1 %30, label %31, label %32, !dbg !4168

; <label>:31:                                     ; preds = %26
  call void @xalloc_die() #15, !dbg !4169
  unreachable, !dbg !4169

; <label>:32:                                     ; preds = %26
  %33 = load i64, i64* %7, align 8, !dbg !4170
  %34 = add i64 %33, 1, !dbg !4171
  %35 = udiv i64 %34, 2, !dbg !4172
  %36 = load i64, i64* %7, align 8, !dbg !4173
  %37 = add i64 %36, %35, !dbg !4173
  store i64 %37, i64* %7, align 8, !dbg !4173
  br label %38

; <label>:38:                                     ; preds = %32, %25
  %39 = load i64, i64* %7, align 8, !dbg !4174
  %40 = load i64*, i64** %5, align 8, !dbg !4175
  store i64 %39, i64* %40, align 8, !dbg !4176
  %41 = load i8*, i8** %4, align 8, !dbg !4177
  %42 = load i64, i64* %7, align 8, !dbg !4178
  %43 = load i64, i64* %6, align 8, !dbg !4179
  %44 = mul i64 %42, %43, !dbg !4180
  %45 = call i8* @xrealloc(i8* %41, i64 %44), !dbg !4181
  ret i8* %45, !dbg !4182
}

; Function Attrs: noinline nounwind uwtable
define noalias i8* @xcharalloc(i64) #2 !dbg !4183 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4186, metadata !DIExpression()), !dbg !4187
  %3 = load i64, i64* %2, align 8, !dbg !4188
  %4 = call noalias i8* @xmalloc(i64 %3), !dbg !4188
  ret i8* %4, !dbg !4189
}

; Function Attrs: noinline nounwind uwtable
define i8* @x2realloc(i8*, i64*) #2 !dbg !4190 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4193, metadata !DIExpression()), !dbg !4194
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !4195, metadata !DIExpression()), !dbg !4196
  %5 = load i8*, i8** %3, align 8, !dbg !4197
  %6 = load i64*, i64** %4, align 8, !dbg !4198
  %7 = call i8* @x2nrealloc(i8* %5, i64* %6, i64 1), !dbg !4199
  ret i8* %7, !dbg !4200
}

; Function Attrs: noinline nounwind uwtable
define noalias i8* @xzalloc(i64) #2 !dbg !4201 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4202, metadata !DIExpression()), !dbg !4203
  %3 = load i64, i64* %2, align 8, !dbg !4204
  %4 = call noalias i8* @xmalloc(i64 %3), !dbg !4205
  %5 = load i64, i64* %2, align 8, !dbg !4206
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 %5, i32 1, i1 false), !dbg !4207
  ret i8* %4, !dbg !4208
}

; Function Attrs: noinline nounwind uwtable
define noalias i8* @xcalloc(i64, i64) #2 !dbg !4209 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4210, metadata !DIExpression()), !dbg !4211
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4212, metadata !DIExpression()), !dbg !4213
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4214, metadata !DIExpression()), !dbg !4215
  %6 = load i64, i64* %3, align 8, !dbg !4216
  %7 = load i64, i64* %4, align 8, !dbg !4218
  %8 = call noalias i8* @calloc(i64 %6, i64 %7) #11, !dbg !4219
  store i8* %8, i8** %5, align 8, !dbg !4220
  %9 = icmp ne i8* %8, null, !dbg !4220
  br i1 %9, label %11, label %10, !dbg !4221

; <label>:10:                                     ; preds = %2
  call void @xalloc_die() #15, !dbg !4222
  unreachable, !dbg !4222

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %5, align 8, !dbg !4223
  ret i8* %12, !dbg !4224
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #5

; Function Attrs: noinline nounwind uwtable
define noalias i8* @xmemdup(i8*, i64) #2 !dbg !4225 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4228, metadata !DIExpression()), !dbg !4229
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4230, metadata !DIExpression()), !dbg !4231
  %5 = load i64, i64* %4, align 8, !dbg !4232
  %6 = call noalias i8* @xmalloc(i64 %5), !dbg !4233
  %7 = load i8*, i8** %3, align 8, !dbg !4234
  %8 = load i64, i64* %4, align 8, !dbg !4235
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 %8, i32 1, i1 false), !dbg !4236
  ret i8* %6, !dbg !4237
}

; Function Attrs: noinline nounwind uwtable
define noalias i8* @xstrdup(i8*) #2 !dbg !4238 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4239, metadata !DIExpression()), !dbg !4240
  %3 = load i8*, i8** %2, align 8, !dbg !4241
  %4 = load i8*, i8** %2, align 8, !dbg !4242
  %5 = call i64 @strlen(i8* %4) #14, !dbg !4243
  %6 = add i64 %5, 1, !dbg !4244
  %7 = call noalias i8* @xmemdup(i8* %3, i64 %6), !dbg !4245
  ret i8* %7, !dbg !4246
}

; Function Attrs: noinline noreturn nounwind uwtable
define void @xalloc_die() #0 !dbg !4247 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4248
  call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.157, i32 0, i32 0)), !dbg !4249
  call void @abort() #13, !dbg !4250
  unreachable, !dbg !4250
                                                  ; No predecessors!
  unreachable, !dbg !4251
}

; Function Attrs: noinline nounwind uwtable
define i32 @xmemcoll(i8*, i64, i8*, i64) #2 !dbg !4252 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4255, metadata !DIExpression()), !dbg !4256
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4257, metadata !DIExpression()), !dbg !4258
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4259, metadata !DIExpression()), !dbg !4260
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4261, metadata !DIExpression()), !dbg !4262
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4263, metadata !DIExpression()), !dbg !4264
  %11 = load i8*, i8** %5, align 8, !dbg !4265
  %12 = load i64, i64* %6, align 8, !dbg !4266
  %13 = load i8*, i8** %7, align 8, !dbg !4267
  %14 = load i64, i64* %8, align 8, !dbg !4268
  %15 = call i32 @memcoll(i8* %11, i64 %12, i8* %13, i64 %14), !dbg !4269
  store i32 %15, i32* %9, align 4, !dbg !4264
  call void @llvm.dbg.declare(metadata i32* %10, metadata !4270, metadata !DIExpression()), !dbg !4271
  %16 = call i32* @__errno_location() #16, !dbg !4272
  %17 = load i32, i32* %16, align 4, !dbg !4272
  store i32 %17, i32* %10, align 4, !dbg !4271
  %18 = load i32, i32* %10, align 4, !dbg !4273
  %19 = icmp ne i32 %18, 0, !dbg !4273
  br i1 %19, label %20, label %26, !dbg !4275

; <label>:20:                                     ; preds = %4
  %21 = load i32, i32* %10, align 4, !dbg !4276
  %22 = load i8*, i8** %5, align 8, !dbg !4277
  %23 = load i64, i64* %6, align 8, !dbg !4278
  %24 = load i8*, i8** %7, align 8, !dbg !4279
  %25 = load i64, i64* %8, align 8, !dbg !4280
  call void @collate_error(i32 %21, i8* %22, i64 %23, i8* %24, i64 %25), !dbg !4281
  br label %26, !dbg !4281

; <label>:26:                                     ; preds = %20, %4
  %27 = load i32, i32* %9, align 4, !dbg !4282
  ret i32 %27, !dbg !4283
}

; Function Attrs: noinline nounwind uwtable
define internal void @collate_error(i32, i8*, i64, i8*, i64) #2 !dbg !4284 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4287, metadata !DIExpression()), !dbg !4288
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4289, metadata !DIExpression()), !dbg !4290
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4291, metadata !DIExpression()), !dbg !4292
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4293, metadata !DIExpression()), !dbg !4294
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4295, metadata !DIExpression()), !dbg !4296
  %11 = load i32, i32* %6, align 4, !dbg !4297
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.160, i32 0, i32 0)), !dbg !4298
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1.161, i32 0, i32 0)), !dbg !4299
  %12 = load volatile i32, i32* @exit_failure, align 4, !dbg !4300
  %13 = load i8*, i8** %7, align 8, !dbg !4301
  %14 = load i64, i64* %8, align 8, !dbg !4302
  %15 = call i8* @quotearg_n_style_mem(i32 0, i32 6, i8* %13, i64 %14), !dbg !4303
  %16 = load i8*, i8** %9, align 8, !dbg !4304
  %17 = load i64, i64* %10, align 8, !dbg !4305
  %18 = call i8* @quotearg_n_style_mem(i32 1, i32 6, i8* %16, i64 %17), !dbg !4306
  call void (i32, i32, i8*, ...) @error(i32 %12, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.162, i32 0, i32 0), i8* %15, i8* %18), !dbg !4307
  ret void, !dbg !4308
}

; Function Attrs: noinline nounwind uwtable
define i32 @xmemcoll0(i8*, i64, i8*, i64) #2 !dbg !4309 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4312, metadata !DIExpression()), !dbg !4313
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4314, metadata !DIExpression()), !dbg !4315
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4316, metadata !DIExpression()), !dbg !4317
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4318, metadata !DIExpression()), !dbg !4319
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4320, metadata !DIExpression()), !dbg !4321
  %11 = load i8*, i8** %5, align 8, !dbg !4322
  %12 = load i64, i64* %6, align 8, !dbg !4323
  %13 = load i8*, i8** %7, align 8, !dbg !4324
  %14 = load i64, i64* %8, align 8, !dbg !4325
  %15 = call i32 @memcoll0(i8* %11, i64 %12, i8* %13, i64 %14), !dbg !4326
  store i32 %15, i32* %9, align 4, !dbg !4321
  call void @llvm.dbg.declare(metadata i32* %10, metadata !4327, metadata !DIExpression()), !dbg !4328
  %16 = call i32* @__errno_location() #16, !dbg !4329
  %17 = load i32, i32* %16, align 4, !dbg !4329
  store i32 %17, i32* %10, align 4, !dbg !4328
  %18 = load i32, i32* %10, align 4, !dbg !4330
  %19 = icmp ne i32 %18, 0, !dbg !4330
  br i1 %19, label %20, label %28, !dbg !4332

; <label>:20:                                     ; preds = %4
  %21 = load i32, i32* %10, align 4, !dbg !4333
  %22 = load i8*, i8** %5, align 8, !dbg !4334
  %23 = load i64, i64* %6, align 8, !dbg !4335
  %24 = sub i64 %23, 1, !dbg !4336
  %25 = load i8*, i8** %7, align 8, !dbg !4337
  %26 = load i64, i64* %8, align 8, !dbg !4338
  %27 = sub i64 %26, 1, !dbg !4339
  call void @collate_error(i32 %21, i8* %22, i64 %24, i8* %25, i64 %27), !dbg !4340
  br label %28, !dbg !4340

; <label>:28:                                     ; preds = %20, %4
  %29 = load i32, i32* %9, align 4, !dbg !4341
  ret i32 %29, !dbg !4342
}

; Function Attrs: noinline nounwind uwtable
define i32 @xstrtoul(i8*, i8**, i32, i64*, i8*) #2 !dbg !4343 {
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
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4349, metadata !DIExpression()), !dbg !4350
  store i8** %1, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !4351, metadata !DIExpression()), !dbg !4352
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4353, metadata !DIExpression()), !dbg !4354
  store i64* %3, i64** %10, align 8
  call void @llvm.dbg.declare(metadata i64** %10, metadata !4355, metadata !DIExpression()), !dbg !4356
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !4357, metadata !DIExpression()), !dbg !4358
  call void @llvm.dbg.declare(metadata i8** %12, metadata !4359, metadata !DIExpression()), !dbg !4360
  call void @llvm.dbg.declare(metadata i8*** %13, metadata !4361, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.declare(metadata i64* %14, metadata !4363, metadata !DIExpression()), !dbg !4364
  call void @llvm.dbg.declare(metadata i32* %15, metadata !4365, metadata !DIExpression()), !dbg !4366
  store i32 0, i32* %15, align 4, !dbg !4366
  %21 = load i32, i32* %9, align 4, !dbg !4367
  %22 = icmp sle i32 0, %21, !dbg !4367
  br i1 %22, label %23, label %27, !dbg !4367

; <label>:23:                                     ; preds = %5
  %24 = load i32, i32* %9, align 4, !dbg !4367
  %25 = icmp sle i32 %24, 36, !dbg !4367
  br i1 %25, label %26, label %27, !dbg !4370

; <label>:26:                                     ; preds = %23
  br label %28, !dbg !4370

; <label>:27:                                     ; preds = %23, %5
  call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.166, i32 0, i32 0), i32 96, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__.xstrtoul, i32 0, i32 0)) #13, !dbg !4367
  unreachable, !dbg !4367

; <label>:28:                                     ; preds = %26
  %29 = load i8**, i8*** %8, align 8, !dbg !4371
  %30 = icmp ne i8** %29, null, !dbg !4371
  br i1 %30, label %31, label %33, !dbg !4371

; <label>:31:                                     ; preds = %28
  %32 = load i8**, i8*** %8, align 8, !dbg !4372
  br label %34, !dbg !4371

; <label>:33:                                     ; preds = %28
  br label %34, !dbg !4371

; <label>:34:                                     ; preds = %33, %31
  %35 = phi i8** [ %32, %31 ], [ %12, %33 ], !dbg !4371
  store i8** %35, i8*** %13, align 8, !dbg !4373
  call void @llvm.dbg.declare(metadata i8** %16, metadata !4374, metadata !DIExpression()), !dbg !4377
  %36 = load i8*, i8** %7, align 8, !dbg !4378
  store i8* %36, i8** %16, align 8, !dbg !4377
  call void @llvm.dbg.declare(metadata i8* %17, metadata !4379, metadata !DIExpression()), !dbg !4380
  %37 = load i8*, i8** %16, align 8, !dbg !4381
  %38 = load i8, i8* %37, align 1, !dbg !4382
  store i8 %38, i8* %17, align 1, !dbg !4380
  br label %39, !dbg !4383

; <label>:39:                                     ; preds = %50, %34
  %40 = call i16** @__ctype_b_loc() #16, !dbg !4384
  %41 = load i16*, i16** %40, align 8, !dbg !4384
  %42 = load i8, i8* %17, align 1, !dbg !4384
  %43 = zext i8 %42 to i32, !dbg !4384
  %44 = sext i32 %43 to i64, !dbg !4384
  %45 = getelementptr inbounds i16, i16* %41, i64 %44, !dbg !4384
  %46 = load i16, i16* %45, align 2, !dbg !4384
  %47 = zext i16 %46 to i32, !dbg !4384
  %48 = and i32 %47, 8192, !dbg !4384
  %49 = icmp ne i32 %48, 0, !dbg !4383
  br i1 %49, label %50, label %54, !dbg !4383

; <label>:50:                                     ; preds = %39
  %51 = load i8*, i8** %16, align 8, !dbg !4385
  %52 = getelementptr inbounds i8, i8* %51, i32 1, !dbg !4385
  store i8* %52, i8** %16, align 8, !dbg !4385
  %53 = load i8, i8* %52, align 1, !dbg !4386
  store i8 %53, i8* %17, align 1, !dbg !4387
  br label %39, !dbg !4383, !llvm.loop !4388

; <label>:54:                                     ; preds = %39
  %55 = load i8, i8* %17, align 1, !dbg !4390
  %56 = zext i8 %55 to i32, !dbg !4390
  %57 = icmp eq i32 %56, 45, !dbg !4392
  br i1 %57, label %58, label %59, !dbg !4393

; <label>:58:                                     ; preds = %54
  store i32 4, i32* %6, align 4, !dbg !4394
  br label %215, !dbg !4394

; <label>:59:                                     ; preds = %54
  %60 = call i32* @__errno_location() #16, !dbg !4395
  store i32 0, i32* %60, align 4, !dbg !4396
  %61 = load i8*, i8** %7, align 8, !dbg !4397
  %62 = load i8**, i8*** %13, align 8, !dbg !4398
  %63 = load i32, i32* %9, align 4, !dbg !4399
  %64 = call i64 @strtoul(i8* %61, i8** %62, i32 %63) #11, !dbg !4400
  store i64 %64, i64* %14, align 8, !dbg !4401
  %65 = load i8**, i8*** %13, align 8, !dbg !4402
  %66 = load i8*, i8** %65, align 8, !dbg !4404
  %67 = load i8*, i8** %7, align 8, !dbg !4405
  %68 = icmp eq i8* %66, %67, !dbg !4406
  br i1 %68, label %69, label %89, !dbg !4407

; <label>:69:                                     ; preds = %59
  %70 = load i8*, i8** %11, align 8, !dbg !4408
  %71 = icmp ne i8* %70, null, !dbg !4408
  br i1 %71, label %72, label %87, !dbg !4411

; <label>:72:                                     ; preds = %69
  %73 = load i8**, i8*** %13, align 8, !dbg !4412
  %74 = load i8*, i8** %73, align 8, !dbg !4413
  %75 = load i8, i8* %74, align 1, !dbg !4414
  %76 = sext i8 %75 to i32, !dbg !4414
  %77 = icmp ne i32 %76, 0, !dbg !4414
  br i1 %77, label %78, label %87, !dbg !4415

; <label>:78:                                     ; preds = %72
  %79 = load i8*, i8** %11, align 8, !dbg !4416
  %80 = load i8**, i8*** %13, align 8, !dbg !4417
  %81 = load i8*, i8** %80, align 8, !dbg !4418
  %82 = load i8, i8* %81, align 1, !dbg !4419
  %83 = sext i8 %82 to i32, !dbg !4419
  %84 = call i8* @strchr(i8* %79, i32 %83) #14, !dbg !4420
  %85 = icmp ne i8* %84, null, !dbg !4420
  br i1 %85, label %86, label %87, !dbg !4421

; <label>:86:                                     ; preds = %78
  store i64 1, i64* %14, align 8, !dbg !4422
  br label %88, !dbg !4423

; <label>:87:                                     ; preds = %78, %72, %69
  store i32 4, i32* %6, align 4, !dbg !4424
  br label %215, !dbg !4424

; <label>:88:                                     ; preds = %86
  br label %100, !dbg !4425

; <label>:89:                                     ; preds = %59
  %90 = call i32* @__errno_location() #16, !dbg !4426
  %91 = load i32, i32* %90, align 4, !dbg !4426
  %92 = icmp ne i32 %91, 0, !dbg !4428
  br i1 %92, label %93, label %99, !dbg !4429

; <label>:93:                                     ; preds = %89
  %94 = call i32* @__errno_location() #16, !dbg !4430
  %95 = load i32, i32* %94, align 4, !dbg !4430
  %96 = icmp ne i32 %95, 34, !dbg !4433
  br i1 %96, label %97, label %98, !dbg !4434

; <label>:97:                                     ; preds = %93
  store i32 4, i32* %6, align 4, !dbg !4435
  br label %215, !dbg !4435

; <label>:98:                                     ; preds = %93
  store i32 1, i32* %15, align 4, !dbg !4436
  br label %99, !dbg !4437

; <label>:99:                                     ; preds = %98, %89
  br label %100

; <label>:100:                                    ; preds = %99, %88
  %101 = load i8*, i8** %11, align 8, !dbg !4438
  %102 = icmp ne i8* %101, null, !dbg !4438
  br i1 %102, label %107, label %103, !dbg !4440

; <label>:103:                                    ; preds = %100
  %104 = load i64, i64* %14, align 8, !dbg !4441
  %105 = load i64*, i64** %10, align 8, !dbg !4443
  store i64 %104, i64* %105, align 8, !dbg !4444
  %106 = load i32, i32* %15, align 4, !dbg !4445
  store i32 %106, i32* %6, align 4, !dbg !4446
  br label %215, !dbg !4446

; <label>:107:                                    ; preds = %100
  %108 = load i8**, i8*** %13, align 8, !dbg !4447
  %109 = load i8*, i8** %108, align 8, !dbg !4449
  %110 = load i8, i8* %109, align 1, !dbg !4450
  %111 = sext i8 %110 to i32, !dbg !4450
  %112 = icmp ne i32 %111, 0, !dbg !4451
  br i1 %112, label %113, label %211, !dbg !4452

; <label>:113:                                    ; preds = %107
  call void @llvm.dbg.declare(metadata i32* %18, metadata !4453, metadata !DIExpression()), !dbg !4455
  store i32 1024, i32* %18, align 4, !dbg !4455
  call void @llvm.dbg.declare(metadata i32* %19, metadata !4456, metadata !DIExpression()), !dbg !4457
  store i32 1, i32* %19, align 4, !dbg !4457
  call void @llvm.dbg.declare(metadata i32* %20, metadata !4458, metadata !DIExpression()), !dbg !4459
  %114 = load i8*, i8** %11, align 8, !dbg !4460
  %115 = load i8**, i8*** %13, align 8, !dbg !4462
  %116 = load i8*, i8** %115, align 8, !dbg !4463
  %117 = load i8, i8* %116, align 1, !dbg !4464
  %118 = sext i8 %117 to i32, !dbg !4464
  %119 = call i8* @strchr(i8* %114, i32 %118) #14, !dbg !4465
  %120 = icmp ne i8* %119, null, !dbg !4465
  br i1 %120, label %126, label %121, !dbg !4466

; <label>:121:                                    ; preds = %113
  %122 = load i64, i64* %14, align 8, !dbg !4467
  %123 = load i64*, i64** %10, align 8, !dbg !4469
  store i64 %122, i64* %123, align 8, !dbg !4470
  %124 = load i32, i32* %15, align 4, !dbg !4471
  %125 = or i32 %124, 2, !dbg !4472
  store i32 %125, i32* %6, align 4, !dbg !4473
  br label %215, !dbg !4473

; <label>:126:                                    ; preds = %113
  %127 = load i8*, i8** %11, align 8, !dbg !4474
  %128 = call i8* @strchr(i8* %127, i32 48) #14, !dbg !4476
  %129 = icmp ne i8* %128, null, !dbg !4476
  br i1 %129, label %130, label %153, !dbg !4477

; <label>:130:                                    ; preds = %126
  %131 = load i8**, i8*** %13, align 8, !dbg !4478
  %132 = getelementptr inbounds i8*, i8** %131, i64 0, !dbg !4478
  %133 = load i8*, i8** %132, align 8, !dbg !4478
  %134 = getelementptr inbounds i8, i8* %133, i64 1, !dbg !4478
  %135 = load i8, i8* %134, align 1, !dbg !4478
  %136 = sext i8 %135 to i32, !dbg !4478
  switch i32 %136, label %152 [
    i32 105, label %137
    i32 66, label %149
    i32 68, label %149
  ], !dbg !4480

; <label>:137:                                    ; preds = %130
  %138 = load i8**, i8*** %13, align 8, !dbg !4481
  %139 = getelementptr inbounds i8*, i8** %138, i64 0, !dbg !4481
  %140 = load i8*, i8** %139, align 8, !dbg !4481
  %141 = getelementptr inbounds i8, i8* %140, i64 2, !dbg !4481
  %142 = load i8, i8* %141, align 1, !dbg !4481
  %143 = sext i8 %142 to i32, !dbg !4481
  %144 = icmp eq i32 %143, 66, !dbg !4484
  br i1 %144, label %145, label %148, !dbg !4485

; <label>:145:                                    ; preds = %137
  %146 = load i32, i32* %19, align 4, !dbg !4486
  %147 = add nsw i32 %146, 2, !dbg !4486
  store i32 %147, i32* %19, align 4, !dbg !4486
  br label %148, !dbg !4487

; <label>:148:                                    ; preds = %145, %137
  br label %152, !dbg !4488

; <label>:149:                                    ; preds = %130, %130
  store i32 1000, i32* %18, align 4, !dbg !4489
  %150 = load i32, i32* %19, align 4, !dbg !4490
  %151 = add nsw i32 %150, 1, !dbg !4490
  store i32 %151, i32* %19, align 4, !dbg !4490
  br label %152, !dbg !4491

; <label>:152:                                    ; preds = %130, %149, %148
  br label %153, !dbg !4492

; <label>:153:                                    ; preds = %152, %126
  %154 = load i8**, i8*** %13, align 8, !dbg !4493
  %155 = load i8*, i8** %154, align 8, !dbg !4494
  %156 = load i8, i8* %155, align 1, !dbg !4495
  %157 = sext i8 %156 to i32, !dbg !4495
  switch i32 %157, label %189 [
    i32 98, label %158
    i32 66, label %160
    i32 99, label %162
    i32 69, label %163
    i32 71, label %166
    i32 103, label %166
    i32 107, label %169
    i32 75, label %169
    i32 77, label %172
    i32 109, label %172
    i32 80, label %175
    i32 84, label %178
    i32 116, label %178
    i32 119, label %181
    i32 89, label %183
    i32 90, label %186
  ], !dbg !4496

; <label>:158:                                    ; preds = %153
  %159 = call i32 @bkm_scale(i64* %14, i32 512), !dbg !4497
  store i32 %159, i32* %20, align 4, !dbg !4499
  br label %194, !dbg !4500

; <label>:160:                                    ; preds = %153
  %161 = call i32 @bkm_scale(i64* %14, i32 1024), !dbg !4501
  store i32 %161, i32* %20, align 4, !dbg !4502
  br label %194, !dbg !4503

; <label>:162:                                    ; preds = %153
  store i32 0, i32* %20, align 4, !dbg !4504
  br label %194, !dbg !4505

; <label>:163:                                    ; preds = %153
  %164 = load i32, i32* %18, align 4, !dbg !4506
  %165 = call i32 @bkm_scale_by_power(i64* %14, i32 %164, i32 6), !dbg !4507
  store i32 %165, i32* %20, align 4, !dbg !4508
  br label %194, !dbg !4509

; <label>:166:                                    ; preds = %153, %153
  %167 = load i32, i32* %18, align 4, !dbg !4510
  %168 = call i32 @bkm_scale_by_power(i64* %14, i32 %167, i32 3), !dbg !4511
  store i32 %168, i32* %20, align 4, !dbg !4512
  br label %194, !dbg !4513

; <label>:169:                                    ; preds = %153, %153
  %170 = load i32, i32* %18, align 4, !dbg !4514
  %171 = call i32 @bkm_scale_by_power(i64* %14, i32 %170, i32 1), !dbg !4515
  store i32 %171, i32* %20, align 4, !dbg !4516
  br label %194, !dbg !4517

; <label>:172:                                    ; preds = %153, %153
  %173 = load i32, i32* %18, align 4, !dbg !4518
  %174 = call i32 @bkm_scale_by_power(i64* %14, i32 %173, i32 2), !dbg !4519
  store i32 %174, i32* %20, align 4, !dbg !4520
  br label %194, !dbg !4521

; <label>:175:                                    ; preds = %153
  %176 = load i32, i32* %18, align 4, !dbg !4522
  %177 = call i32 @bkm_scale_by_power(i64* %14, i32 %176, i32 5), !dbg !4523
  store i32 %177, i32* %20, align 4, !dbg !4524
  br label %194, !dbg !4525

; <label>:178:                                    ; preds = %153, %153
  %179 = load i32, i32* %18, align 4, !dbg !4526
  %180 = call i32 @bkm_scale_by_power(i64* %14, i32 %179, i32 4), !dbg !4527
  store i32 %180, i32* %20, align 4, !dbg !4528
  br label %194, !dbg !4529

; <label>:181:                                    ; preds = %153
  %182 = call i32 @bkm_scale(i64* %14, i32 2), !dbg !4530
  store i32 %182, i32* %20, align 4, !dbg !4531
  br label %194, !dbg !4532

; <label>:183:                                    ; preds = %153
  %184 = load i32, i32* %18, align 4, !dbg !4533
  %185 = call i32 @bkm_scale_by_power(i64* %14, i32 %184, i32 8), !dbg !4534
  store i32 %185, i32* %20, align 4, !dbg !4535
  br label %194, !dbg !4536

; <label>:186:                                    ; preds = %153
  %187 = load i32, i32* %18, align 4, !dbg !4537
  %188 = call i32 @bkm_scale_by_power(i64* %14, i32 %187, i32 7), !dbg !4538
  store i32 %188, i32* %20, align 4, !dbg !4539
  br label %194, !dbg !4540

; <label>:189:                                    ; preds = %153
  %190 = load i64, i64* %14, align 8, !dbg !4541
  %191 = load i64*, i64** %10, align 8, !dbg !4542
  store i64 %190, i64* %191, align 8, !dbg !4543
  %192 = load i32, i32* %15, align 4, !dbg !4544
  %193 = or i32 %192, 2, !dbg !4545
  store i32 %193, i32* %6, align 4, !dbg !4546
  br label %215, !dbg !4546

; <label>:194:                                    ; preds = %186, %183, %181, %178, %175, %172, %169, %166, %163, %162, %160, %158
  %195 = load i32, i32* %20, align 4, !dbg !4547
  %196 = load i32, i32* %15, align 4, !dbg !4548
  %197 = or i32 %196, %195, !dbg !4548
  store i32 %197, i32* %15, align 4, !dbg !4548
  %198 = load i32, i32* %19, align 4, !dbg !4549
  %199 = load i8**, i8*** %13, align 8, !dbg !4550
  %200 = load i8*, i8** %199, align 8, !dbg !4551
  %201 = sext i32 %198 to i64, !dbg !4551
  %202 = getelementptr inbounds i8, i8* %200, i64 %201, !dbg !4551
  store i8* %202, i8** %199, align 8, !dbg !4551
  %203 = load i8**, i8*** %13, align 8, !dbg !4552
  %204 = load i8*, i8** %203, align 8, !dbg !4554
  %205 = load i8, i8* %204, align 1, !dbg !4555
  %206 = icmp ne i8 %205, 0, !dbg !4555
  br i1 %206, label %207, label %210, !dbg !4556

; <label>:207:                                    ; preds = %194
  %208 = load i32, i32* %15, align 4, !dbg !4557
  %209 = or i32 %208, 2, !dbg !4557
  store i32 %209, i32* %15, align 4, !dbg !4557
  br label %210, !dbg !4558

; <label>:210:                                    ; preds = %207, %194
  br label %211, !dbg !4559

; <label>:211:                                    ; preds = %210, %107
  %212 = load i64, i64* %14, align 8, !dbg !4560
  %213 = load i64*, i64** %10, align 8, !dbg !4561
  store i64 %212, i64* %213, align 8, !dbg !4562
  %214 = load i32, i32* %15, align 4, !dbg !4563
  store i32 %214, i32* %6, align 4, !dbg !4564
  br label %215, !dbg !4564

; <label>:215:                                    ; preds = %211, %189, %121, %103, %97, %87, %58
  %216 = load i32, i32* %6, align 4, !dbg !4565
  ret i32 %216, !dbg !4565
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #5

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #6

; Function Attrs: noinline nounwind uwtable
define internal i32 @bkm_scale(i64*, i32) #2 !dbg !4566 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !4569, metadata !DIExpression()), !dbg !4570
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4571, metadata !DIExpression()), !dbg !4572
  %6 = load i32, i32* %5, align 4, !dbg !4573
  %7 = sext i32 %6 to i64, !dbg !4573
  %8 = udiv i64 -1, %7, !dbg !4575
  %9 = load i64*, i64** %4, align 8, !dbg !4576
  %10 = load i64, i64* %9, align 8, !dbg !4577
  %11 = icmp ult i64 %8, %10, !dbg !4578
  br i1 %11, label %12, label %14, !dbg !4579

; <label>:12:                                     ; preds = %2
  %13 = load i64*, i64** %4, align 8, !dbg !4580
  store i64 -1, i64* %13, align 8, !dbg !4582
  store i32 1, i32* %3, align 4, !dbg !4583
  br label %20, !dbg !4583

; <label>:14:                                     ; preds = %2
  %15 = load i32, i32* %5, align 4, !dbg !4584
  %16 = sext i32 %15 to i64, !dbg !4584
  %17 = load i64*, i64** %4, align 8, !dbg !4585
  %18 = load i64, i64* %17, align 8, !dbg !4586
  %19 = mul i64 %18, %16, !dbg !4586
  store i64 %19, i64* %17, align 8, !dbg !4586
  store i32 0, i32* %3, align 4, !dbg !4587
  br label %20, !dbg !4587

; <label>:20:                                     ; preds = %14, %12
  %21 = load i32, i32* %3, align 4, !dbg !4588
  ret i32 %21, !dbg !4588
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @bkm_scale_by_power(i64*, i32, i32) #2 !dbg !4589 {
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !4592, metadata !DIExpression()), !dbg !4593
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4594, metadata !DIExpression()), !dbg !4595
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4596, metadata !DIExpression()), !dbg !4597
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4598, metadata !DIExpression()), !dbg !4599
  store i32 0, i32* %7, align 4, !dbg !4599
  br label %8, !dbg !4600

; <label>:8:                                      ; preds = %12, %3
  %9 = load i32, i32* %6, align 4, !dbg !4601
  %10 = add nsw i32 %9, -1, !dbg !4601
  store i32 %10, i32* %6, align 4, !dbg !4601
  %11 = icmp ne i32 %9, 0, !dbg !4600
  br i1 %11, label %12, label %18, !dbg !4600

; <label>:12:                                     ; preds = %8
  %13 = load i64*, i64** %4, align 8, !dbg !4602
  %14 = load i32, i32* %5, align 4, !dbg !4603
  %15 = call i32 @bkm_scale(i64* %13, i32 %14), !dbg !4604
  %16 = load i32, i32* %7, align 4, !dbg !4605
  %17 = or i32 %16, %15, !dbg !4605
  store i32 %17, i32* %7, align 4, !dbg !4605
  br label %8, !dbg !4600, !llvm.loop !4606

; <label>:18:                                     ; preds = %8
  %19 = load i32, i32* %7, align 4, !dbg !4608
  ret i32 %19, !dbg !4609
}

; Function Attrs: noinline nounwind uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) #2 !dbg !4610 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !4653, metadata !DIExpression()), !dbg !4654
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4655, metadata !DIExpression()), !dbg !4656
  store i32 0, i32* %4, align 4, !dbg !4656
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4657, metadata !DIExpression()), !dbg !4658
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4659, metadata !DIExpression()), !dbg !4660
  store i32 0, i32* %6, align 4, !dbg !4660
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4661
  %8 = call i32 @fileno(%struct._IO_FILE* %7) #11, !dbg !4662
  store i32 %8, i32* %5, align 4, !dbg !4663
  %9 = load i32, i32* %5, align 4, !dbg !4664
  %10 = icmp slt i32 %9, 0, !dbg !4666
  br i1 %10, label %11, label %14, !dbg !4667

; <label>:11:                                     ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4668
  %13 = call i32 @fclose(%struct._IO_FILE* %12), !dbg !4669
  store i32 %13, i32* %2, align 4, !dbg !4670
  br label %40, !dbg !4670

; <label>:14:                                     ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4671
  %16 = call i32 @__freading(%struct._IO_FILE* %15) #11, !dbg !4671
  %17 = icmp ne i32 %16, 0, !dbg !4671
  br i1 %17, label %18, label %23, !dbg !4673

; <label>:18:                                     ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4674
  %20 = call i32 @fileno(%struct._IO_FILE* %19) #11, !dbg !4675
  %21 = call i64 @lseek(i32 %20, i64 0, i32 1) #11, !dbg !4676
  %22 = icmp ne i64 %21, -1, !dbg !4677
  br i1 %22, label %23, label %30, !dbg !4678

; <label>:23:                                     ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4679
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* %24), !dbg !4680
  %26 = icmp ne i32 %25, 0, !dbg !4680
  br i1 %26, label %27, label %30, !dbg !4681

; <label>:27:                                     ; preds = %23
  %28 = call i32* @__errno_location() #16, !dbg !4682
  %29 = load i32, i32* %28, align 4, !dbg !4682
  store i32 %29, i32* %4, align 4, !dbg !4683
  br label %30, !dbg !4684

; <label>:30:                                     ; preds = %27, %23, %18
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4685
  %32 = call i32 @fclose(%struct._IO_FILE* %31), !dbg !4686
  store i32 %32, i32* %6, align 4, !dbg !4687
  %33 = load i32, i32* %4, align 4, !dbg !4688
  %34 = icmp ne i32 %33, 0, !dbg !4690
  br i1 %34, label %35, label %38, !dbg !4691

; <label>:35:                                     ; preds = %30
  %36 = load i32, i32* %4, align 4, !dbg !4692
  %37 = call i32* @__errno_location() #16, !dbg !4694
  store i32 %36, i32* %37, align 4, !dbg !4695
  store i32 -1, i32* %6, align 4, !dbg !4696
  br label %38, !dbg !4697

; <label>:38:                                     ; preds = %35, %30
  %39 = load i32, i32* %6, align 4, !dbg !4698
  store i32 %39, i32* %2, align 4, !dbg !4699
  br label %40, !dbg !4699

; <label>:40:                                     ; preds = %38, %11
  %41 = load i32, i32* %2, align 4, !dbg !4700
  ret i32 %41, !dbg !4700
}

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) #5

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #5

; Function Attrs: noinline nounwind uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) #2 !dbg !4701 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !4744, metadata !DIExpression()), !dbg !4745
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4746
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !4748
  br i1 %5, label %10, label %6, !dbg !4749

; <label>:6:                                      ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4750
  %8 = call i32 @__freading(%struct._IO_FILE* %7) #11, !dbg !4750
  %9 = icmp ne i32 %8, 0, !dbg !4750
  br i1 %9, label %13, label %10, !dbg !4751

; <label>:10:                                     ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4752
  %12 = call i32 @fflush(%struct._IO_FILE* %11), !dbg !4753
  store i32 %12, i32* %2, align 4, !dbg !4754
  br label %17, !dbg !4754

; <label>:13:                                     ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4755
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* %14), !dbg !4756
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4757
  %16 = call i32 @fflush(%struct._IO_FILE* %15), !dbg !4758
  store i32 %16, i32* %2, align 4, !dbg !4759
  br label %17, !dbg !4759

; <label>:17:                                     ; preds = %13, %10
  %18 = load i32, i32* %2, align 4, !dbg !4760
  ret i32 %18, !dbg !4760
}

declare i32 @fflush(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE*) #2 !dbg !4761 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !4764, metadata !DIExpression()), !dbg !4765
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !4766
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0, !dbg !4768
  %5 = load i32, i32* %4, align 8, !dbg !4768
  %6 = and i32 %5, 256, !dbg !4769
  %7 = icmp ne i32 %6, 0, !dbg !4769
  br i1 %7, label %8, label %11, !dbg !4770

; <label>:8:                                      ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !4771
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* %9, i64 0, i32 1), !dbg !4772
  br label %11, !dbg !4772

; <label>:11:                                     ; preds = %8, %1
  ret void, !dbg !4773
}

; Function Attrs: noinline nounwind uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nonnull, i64, i32) #2 !dbg !4774 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !4817, metadata !DIExpression()), !dbg !4818
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4819, metadata !DIExpression()), !dbg !4820
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4821, metadata !DIExpression()), !dbg !4822
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4823
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2, !dbg !4825
  %11 = load i8*, i8** %10, align 8, !dbg !4825
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4826
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1, !dbg !4827
  %14 = load i8*, i8** %13, align 8, !dbg !4827
  %15 = icmp eq i8* %11, %14, !dbg !4828
  br i1 %15, label %16, label %46, !dbg !4829

; <label>:16:                                     ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4830
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5, !dbg !4831
  %19 = load i8*, i8** %18, align 8, !dbg !4831
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4832
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4, !dbg !4833
  %22 = load i8*, i8** %21, align 8, !dbg !4833
  %23 = icmp eq i8* %19, %22, !dbg !4834
  br i1 %23, label %24, label %46, !dbg !4835

; <label>:24:                                     ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4836
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9, !dbg !4837
  %27 = load i8*, i8** %26, align 8, !dbg !4837
  %28 = icmp eq i8* %27, null, !dbg !4838
  br i1 %28, label %29, label %46, !dbg !4839

; <label>:29:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4840, metadata !DIExpression()), !dbg !4842
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4843
  %31 = call i32 @fileno(%struct._IO_FILE* %30) #11, !dbg !4844
  %32 = load i64, i64* %6, align 8, !dbg !4845
  %33 = load i32, i32* %7, align 4, !dbg !4846
  %34 = call i64 @lseek(i32 %31, i64 %32, i32 %33) #11, !dbg !4847
  store i64 %34, i64* %8, align 8, !dbg !4842
  %35 = load i64, i64* %8, align 8, !dbg !4848
  %36 = icmp eq i64 %35, -1, !dbg !4850
  br i1 %36, label %37, label %38, !dbg !4851

; <label>:37:                                     ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !4852
  br label %51, !dbg !4852

; <label>:38:                                     ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4854
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0, !dbg !4855
  %41 = load i32, i32* %40, align 8, !dbg !4856
  %42 = and i32 %41, -17, !dbg !4856
  store i32 %42, i32* %40, align 8, !dbg !4856
  %43 = load i64, i64* %8, align 8, !dbg !4857
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4858
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21, !dbg !4859
  store i64 %43, i64* %45, align 8, !dbg !4860
  store i32 0, i32* %4, align 4, !dbg !4861
  br label %51, !dbg !4861

; <label>:46:                                     ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4862
  %48 = load i64, i64* %6, align 8, !dbg !4863
  %49 = load i32, i32* %7, align 4, !dbg !4864
  %50 = call i32 @fseeko(%struct._IO_FILE* %47, i64 %48, i32 %49), !dbg !4865
  store i32 %50, i32* %4, align 4, !dbg !4866
  br label %51, !dbg !4866

; <label>:51:                                     ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4, !dbg !4867
  ret i32 %52, !dbg !4867
}

declare i32 @fseeko(%struct._IO_FILE*, i64, i32) #3

; Function Attrs: noinline nounwind readonly uwtable
define i32 @c_strcasecmp(i8*, i8*) #8 !dbg !4868 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4871, metadata !DIExpression()), !dbg !4872
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4873, metadata !DIExpression()), !dbg !4874
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4875, metadata !DIExpression()), !dbg !4876
  %10 = load i8*, i8** %4, align 8, !dbg !4877
  store i8* %10, i8** %6, align 8, !dbg !4876
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4878, metadata !DIExpression()), !dbg !4879
  %11 = load i8*, i8** %5, align 8, !dbg !4880
  store i8* %11, i8** %7, align 8, !dbg !4879
  call void @llvm.dbg.declare(metadata i8* %8, metadata !4881, metadata !DIExpression()), !dbg !4882
  call void @llvm.dbg.declare(metadata i8* %9, metadata !4883, metadata !DIExpression()), !dbg !4884
  %12 = load i8*, i8** %6, align 8, !dbg !4885
  %13 = load i8*, i8** %7, align 8, !dbg !4887
  %14 = icmp eq i8* %12, %13, !dbg !4888
  br i1 %14, label %15, label %16, !dbg !4889

; <label>:15:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !4890
  br label %49, !dbg !4890

; <label>:16:                                     ; preds = %2
  br label %17, !dbg !4891, !llvm.loop !4892

; <label>:17:                                     ; preds = %37, %16
  %18 = load i8*, i8** %6, align 8, !dbg !4894
  %19 = load i8, i8* %18, align 1, !dbg !4896
  %20 = zext i8 %19 to i32, !dbg !4896
  %21 = call i32 @c_tolower(i32 %20) #16, !dbg !4897
  %22 = trunc i32 %21 to i8, !dbg !4897
  store i8 %22, i8* %8, align 1, !dbg !4898
  %23 = load i8*, i8** %7, align 8, !dbg !4899
  %24 = load i8, i8* %23, align 1, !dbg !4900
  %25 = zext i8 %24 to i32, !dbg !4900
  %26 = call i32 @c_tolower(i32 %25) #16, !dbg !4901
  %27 = trunc i32 %26 to i8, !dbg !4901
  store i8 %27, i8* %9, align 1, !dbg !4902
  %28 = load i8, i8* %8, align 1, !dbg !4903
  %29 = zext i8 %28 to i32, !dbg !4903
  %30 = icmp eq i32 %29, 0, !dbg !4905
  br i1 %30, label %31, label %32, !dbg !4906

; <label>:31:                                     ; preds = %17
  br label %43, !dbg !4907

; <label>:32:                                     ; preds = %17
  %33 = load i8*, i8** %6, align 8, !dbg !4908
  %34 = getelementptr inbounds i8, i8* %33, i32 1, !dbg !4908
  store i8* %34, i8** %6, align 8, !dbg !4908
  %35 = load i8*, i8** %7, align 8, !dbg !4909
  %36 = getelementptr inbounds i8, i8* %35, i32 1, !dbg !4909
  store i8* %36, i8** %7, align 8, !dbg !4909
  br label %37, !dbg !4910

; <label>:37:                                     ; preds = %32
  %38 = load i8, i8* %8, align 1, !dbg !4911
  %39 = zext i8 %38 to i32, !dbg !4911
  %40 = load i8, i8* %9, align 1, !dbg !4912
  %41 = zext i8 %40 to i32, !dbg !4912
  %42 = icmp eq i32 %39, %41, !dbg !4913
  br i1 %42, label %17, label %43, !dbg !4910, !llvm.loop !4892

; <label>:43:                                     ; preds = %37, %31
  %44 = load i8, i8* %8, align 1, !dbg !4914
  %45 = zext i8 %44 to i32, !dbg !4914
  %46 = load i8, i8* %9, align 1, !dbg !4916
  %47 = zext i8 %46 to i32, !dbg !4916
  %48 = sub nsw i32 %45, %47, !dbg !4917
  store i32 %48, i32* %3, align 4, !dbg !4918
  br label %49, !dbg !4918

; <label>:49:                                     ; preds = %43, %15
  %50 = load i32, i32* %3, align 4, !dbg !4919
  ret i32 %50, !dbg !4919
}

; Function Attrs: noinline nounwind uwtable
define i32 @close_stream(%struct._IO_FILE*) #2 !dbg !4920 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !4963, metadata !DIExpression()), !dbg !4964
  call void @llvm.dbg.declare(metadata i8* %4, metadata !4965, metadata !DIExpression()), !dbg !4967
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4968
  %8 = call i64 @__fpending(%struct._IO_FILE* %7) #11, !dbg !4969
  %9 = icmp ne i64 %8, 0, !dbg !4970
  %10 = zext i1 %9 to i8, !dbg !4967
  store i8 %10, i8* %4, align 1, !dbg !4967
  call void @llvm.dbg.declare(metadata i8* %5, metadata !4971, metadata !DIExpression()), !dbg !4972
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4973
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* %11) #11, !dbg !4973
  %13 = icmp ne i32 %12, 0, !dbg !4974
  %14 = zext i1 %13 to i8, !dbg !4972
  store i8 %14, i8* %5, align 1, !dbg !4972
  call void @llvm.dbg.declare(metadata i8* %6, metadata !4975, metadata !DIExpression()), !dbg !4976
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4977
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* %15), !dbg !4978
  %17 = icmp ne i32 %16, 0, !dbg !4979
  %18 = zext i1 %17 to i8, !dbg !4976
  store i8 %18, i8* %6, align 1, !dbg !4976
  %19 = load i8, i8* %5, align 1, !dbg !4980
  %20 = trunc i8 %19 to i1, !dbg !4980
  br i1 %20, label %31, label %21, !dbg !4982

; <label>:21:                                     ; preds = %1
  %22 = load i8, i8* %6, align 1, !dbg !4983
  %23 = trunc i8 %22 to i1, !dbg !4983
  br i1 %23, label %24, label %37, !dbg !4984

; <label>:24:                                     ; preds = %21
  %25 = load i8, i8* %4, align 1, !dbg !4985
  %26 = trunc i8 %25 to i1, !dbg !4985
  br i1 %26, label %31, label %27, !dbg !4986

; <label>:27:                                     ; preds = %24
  %28 = call i32* @__errno_location() #16, !dbg !4987
  %29 = load i32, i32* %28, align 4, !dbg !4987
  %30 = icmp ne i32 %29, 9, !dbg !4988
  br i1 %30, label %31, label %37, !dbg !4989

; <label>:31:                                     ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1, !dbg !4990
  %33 = trunc i8 %32 to i1, !dbg !4990
  br i1 %33, label %36, label %34, !dbg !4993

; <label>:34:                                     ; preds = %31
  %35 = call i32* @__errno_location() #16, !dbg !4994
  store i32 0, i32* %35, align 4, !dbg !4995
  br label %36, !dbg !4994

; <label>:36:                                     ; preds = %34, %31
  store i32 -1, i32* %2, align 4, !dbg !4996
  br label %38, !dbg !4996

; <label>:37:                                     ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !4997
  br label %38, !dbg !4997

; <label>:38:                                     ; preds = %37, %36
  %39 = load i32, i32* %2, align 4, !dbg !4998
  ret i32 %39, !dbg !4998
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) #5

; Function Attrs: noinline nounwind uwtable
define i8* @locale_charset() #2 !dbg !4999 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !5001, metadata !DIExpression()), !dbg !5002
  call void @llvm.dbg.declare(metadata i8** %2, metadata !5003, metadata !DIExpression()), !dbg !5004
  %3 = call i8* @nl_langinfo(i32 14) #11, !dbg !5005
  store i8* %3, i8** %1, align 8, !dbg !5006
  %4 = load i8*, i8** %1, align 8, !dbg !5007
  %5 = icmp eq i8* %4, null, !dbg !5009
  br i1 %5, label %6, label %7, !dbg !5010

; <label>:6:                                      ; preds = %0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.179, i32 0, i32 0), i8** %1, align 8, !dbg !5011
  br label %7, !dbg !5012

; <label>:7:                                      ; preds = %6, %0
  %8 = call i8* @get_charset_aliases(), !dbg !5013
  store i8* %8, i8** %2, align 8, !dbg !5015
  br label %9, !dbg !5016

; <label>:9:                                      ; preds = %38, %7
  %10 = load i8*, i8** %2, align 8, !dbg !5017
  %11 = load i8, i8* %10, align 1, !dbg !5019
  %12 = sext i8 %11 to i32, !dbg !5019
  %13 = icmp ne i32 %12, 0, !dbg !5020
  br i1 %13, label %14, label %49, !dbg !5021

; <label>:14:                                     ; preds = %9
  %15 = load i8*, i8** %1, align 8, !dbg !5022
  %16 = load i8*, i8** %2, align 8, !dbg !5024
  %17 = call i32 @strcmp(i8* %15, i8* %16) #14, !dbg !5025
  %18 = icmp eq i32 %17, 0, !dbg !5026
  br i1 %18, label %31, label %19, !dbg !5027

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %2, align 8, !dbg !5028
  %21 = getelementptr inbounds i8, i8* %20, i64 0, !dbg !5028
  %22 = load i8, i8* %21, align 1, !dbg !5028
  %23 = sext i8 %22 to i32, !dbg !5028
  %24 = icmp eq i32 %23, 42, !dbg !5029
  br i1 %24, label %25, label %37, !dbg !5030

; <label>:25:                                     ; preds = %19
  %26 = load i8*, i8** %2, align 8, !dbg !5031
  %27 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !5031
  %28 = load i8, i8* %27, align 1, !dbg !5031
  %29 = sext i8 %28 to i32, !dbg !5031
  %30 = icmp eq i32 %29, 0, !dbg !5032
  br i1 %30, label %31, label %37, !dbg !5033

; <label>:31:                                     ; preds = %25, %14
  %32 = load i8*, i8** %2, align 8, !dbg !5034
  %33 = load i8*, i8** %2, align 8, !dbg !5036
  %34 = call i64 @strlen(i8* %33) #14, !dbg !5037
  %35 = getelementptr inbounds i8, i8* %32, i64 %34, !dbg !5038
  %36 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !5039
  store i8* %36, i8** %1, align 8, !dbg !5040
  br label %49, !dbg !5041

; <label>:37:                                     ; preds = %25, %19
  br label %38, !dbg !5042

; <label>:38:                                     ; preds = %37
  %39 = load i8*, i8** %2, align 8, !dbg !5043
  %40 = call i64 @strlen(i8* %39) #14, !dbg !5044
  %41 = add i64 %40, 1, !dbg !5045
  %42 = load i8*, i8** %2, align 8, !dbg !5046
  %43 = getelementptr inbounds i8, i8* %42, i64 %41, !dbg !5046
  store i8* %43, i8** %2, align 8, !dbg !5046
  %44 = load i8*, i8** %2, align 8, !dbg !5047
  %45 = call i64 @strlen(i8* %44) #14, !dbg !5048
  %46 = add i64 %45, 1, !dbg !5049
  %47 = load i8*, i8** %2, align 8, !dbg !5050
  %48 = getelementptr inbounds i8, i8* %47, i64 %46, !dbg !5050
  store i8* %48, i8** %2, align 8, !dbg !5050
  br label %9, !dbg !5051, !llvm.loop !5052

; <label>:49:                                     ; preds = %31, %9
  %50 = load i8*, i8** %1, align 8, !dbg !5054
  %51 = getelementptr inbounds i8, i8* %50, i64 0, !dbg !5054
  %52 = load i8, i8* %51, align 1, !dbg !5054
  %53 = sext i8 %52 to i32, !dbg !5054
  %54 = icmp eq i32 %53, 0, !dbg !5056
  br i1 %54, label %55, label %56, !dbg !5057

; <label>:55:                                     ; preds = %49
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.180, i32 0, i32 0), i8** %1, align 8, !dbg !5058
  br label %56, !dbg !5059

; <label>:56:                                     ; preds = %55, %49
  %57 = load i8*, i8** %1, align 8, !dbg !5060
  ret i8* %57, !dbg !5061
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) #5

; Function Attrs: noinline nounwind uwtable
define internal i8* @get_charset_aliases() #2 !dbg !5062 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct._IO_FILE*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca [51 x i8], align 16
  %14 = alloca [51 x i8], align 16
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !5063, metadata !DIExpression()), !dbg !5064
  %18 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !5065
  store i8* %18, i8** %1, align 8, !dbg !5066
  %19 = load i8*, i8** %1, align 8, !dbg !5067
  %20 = icmp eq i8* %19, null, !dbg !5069
  br i1 %20, label %21, label %221, !dbg !5070

; <label>:21:                                     ; preds = %0
  call void @llvm.dbg.declare(metadata i8** %2, metadata !5071, metadata !DIExpression()), !dbg !5073
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5074, metadata !DIExpression()), !dbg !5075
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.181, i32 0, i32 0), i8** %3, align 8, !dbg !5075
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5076, metadata !DIExpression()), !dbg !5077
  %22 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.182, i32 0, i32 0)) #11, !dbg !5078
  store i8* %22, i8** %2, align 8, !dbg !5079
  %23 = load i8*, i8** %2, align 8, !dbg !5080
  %24 = icmp eq i8* %23, null, !dbg !5082
  br i1 %24, label %31, label %25, !dbg !5083

; <label>:25:                                     ; preds = %21
  %26 = load i8*, i8** %2, align 8, !dbg !5084
  %27 = getelementptr inbounds i8, i8* %26, i64 0, !dbg !5084
  %28 = load i8, i8* %27, align 1, !dbg !5084
  %29 = sext i8 %28 to i32, !dbg !5084
  %30 = icmp eq i32 %29, 0, !dbg !5085
  br i1 %30, label %31, label %32, !dbg !5086

; <label>:31:                                     ; preds = %25, %21
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.183, i32 0, i32 0), i8** %2, align 8, !dbg !5087
  br label %32, !dbg !5088

; <label>:32:                                     ; preds = %31, %25
  call void @llvm.dbg.declare(metadata i64* %5, metadata !5089, metadata !DIExpression()), !dbg !5091
  %33 = load i8*, i8** %2, align 8, !dbg !5092
  %34 = call i64 @strlen(i8* %33) #14, !dbg !5093
  store i64 %34, i64* %5, align 8, !dbg !5091
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5094, metadata !DIExpression()), !dbg !5095
  %35 = load i8*, i8** %3, align 8, !dbg !5096
  %36 = call i64 @strlen(i8* %35) #14, !dbg !5097
  store i64 %36, i64* %6, align 8, !dbg !5095
  call void @llvm.dbg.declare(metadata i32* %7, metadata !5098, metadata !DIExpression()), !dbg !5099
  %37 = load i64, i64* %5, align 8, !dbg !5100
  %38 = icmp ugt i64 %37, 0, !dbg !5101
  br i1 %38, label %39, label %48, !dbg !5102

; <label>:39:                                     ; preds = %32
  %40 = load i8*, i8** %2, align 8, !dbg !5103
  %41 = load i64, i64* %5, align 8, !dbg !5103
  %42 = sub i64 %41, 1, !dbg !5103
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !5103
  %44 = load i8, i8* %43, align 1, !dbg !5103
  %45 = sext i8 %44 to i32, !dbg !5103
  %46 = icmp eq i32 %45, 47, !dbg !5103
  %47 = xor i1 %46, true, !dbg !5104
  br label %48

; <label>:48:                                     ; preds = %39, %32
  %49 = phi i1 [ false, %32 ], [ %47, %39 ]
  %50 = zext i1 %49 to i32, !dbg !5102
  store i32 %50, i32* %7, align 4, !dbg !5099
  %51 = load i64, i64* %5, align 8, !dbg !5105
  %52 = load i32, i32* %7, align 4, !dbg !5106
  %53 = sext i32 %52 to i64, !dbg !5106
  %54 = add i64 %51, %53, !dbg !5107
  %55 = load i64, i64* %6, align 8, !dbg !5108
  %56 = add i64 %54, %55, !dbg !5109
  %57 = add i64 %56, 1, !dbg !5110
  %58 = call noalias i8* @malloc(i64 %57) #11, !dbg !5111
  store i8* %58, i8** %4, align 8, !dbg !5112
  %59 = load i8*, i8** %4, align 8, !dbg !5113
  %60 = icmp ne i8* %59, null, !dbg !5115
  br i1 %60, label %61, label %81, !dbg !5116

; <label>:61:                                     ; preds = %48
  %62 = load i8*, i8** %4, align 8, !dbg !5117
  %63 = load i8*, i8** %2, align 8, !dbg !5119
  %64 = load i64, i64* %5, align 8, !dbg !5120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 %64, i32 1, i1 false), !dbg !5121
  %65 = load i32, i32* %7, align 4, !dbg !5122
  %66 = icmp ne i32 %65, 0, !dbg !5122
  br i1 %66, label %67, label %71, !dbg !5124

; <label>:67:                                     ; preds = %61
  %68 = load i8*, i8** %4, align 8, !dbg !5125
  %69 = load i64, i64* %5, align 8, !dbg !5126
  %70 = getelementptr inbounds i8, i8* %68, i64 %69, !dbg !5125
  store i8 47, i8* %70, align 1, !dbg !5127
  br label %71, !dbg !5125

; <label>:71:                                     ; preds = %67, %61
  %72 = load i8*, i8** %4, align 8, !dbg !5128
  %73 = load i64, i64* %5, align 8, !dbg !5129
  %74 = getelementptr inbounds i8, i8* %72, i64 %73, !dbg !5130
  %75 = load i32, i32* %7, align 4, !dbg !5131
  %76 = sext i32 %75 to i64, !dbg !5132
  %77 = getelementptr inbounds i8, i8* %74, i64 %76, !dbg !5132
  %78 = load i8*, i8** %3, align 8, !dbg !5133
  %79 = load i64, i64* %6, align 8, !dbg !5134
  %80 = add i64 %79, 1, !dbg !5135
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %77, i8* %78, i64 %80, i32 1, i1 false), !dbg !5136
  br label %81, !dbg !5137

; <label>:81:                                     ; preds = %71, %48
  %82 = load i8*, i8** %4, align 8, !dbg !5138
  %83 = icmp eq i8* %82, null, !dbg !5140
  br i1 %83, label %84, label %85, !dbg !5141

; <label>:84:                                     ; preds = %81
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.179, i32 0, i32 0), i8** %1, align 8, !dbg !5142
  br label %219, !dbg !5143

; <label>:85:                                     ; preds = %81
  call void @llvm.dbg.declare(metadata i32* %8, metadata !5144, metadata !DIExpression()), !dbg !5146
  %86 = load i8*, i8** %4, align 8, !dbg !5147
  %87 = call i32 (i8*, i32, ...) @open(i8* %86, i32 131072), !dbg !5148
  store i32 %87, i32* %8, align 4, !dbg !5149
  %88 = load i32, i32* %8, align 4, !dbg !5150
  %89 = icmp slt i32 %88, 0, !dbg !5152
  br i1 %89, label %90, label %91, !dbg !5153

; <label>:90:                                     ; preds = %85
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.179, i32 0, i32 0), i8** %1, align 8, !dbg !5154
  br label %217, !dbg !5155

; <label>:91:                                     ; preds = %85
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %9, metadata !5156, metadata !DIExpression()), !dbg !5198
  %92 = load i32, i32* %8, align 4, !dbg !5199
  %93 = call %struct._IO_FILE* @fdopen(i32 %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.184, i32 0, i32 0)) #11, !dbg !5200
  store %struct._IO_FILE* %93, %struct._IO_FILE** %9, align 8, !dbg !5201
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !5202
  %95 = icmp eq %struct._IO_FILE* %94, null, !dbg !5204
  br i1 %95, label %96, label %99, !dbg !5205

; <label>:96:                                     ; preds = %91
  %97 = load i32, i32* %8, align 4, !dbg !5206
  %98 = call i32 @close(i32 %97), !dbg !5208
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.179, i32 0, i32 0), i8** %1, align 8, !dbg !5209
  br label %216, !dbg !5210

; <label>:99:                                     ; preds = %91
  call void @llvm.dbg.declare(metadata i8** %10, metadata !5211, metadata !DIExpression()), !dbg !5213
  store i8* null, i8** %10, align 8, !dbg !5213
  call void @llvm.dbg.declare(metadata i64* %11, metadata !5214, metadata !DIExpression()), !dbg !5215
  store i64 0, i64* %11, align 8, !dbg !5215
  br label %100, !dbg !5216

; <label>:100:                                    ; preds = %181, %136, %115, %99
  call void @llvm.dbg.declare(metadata i32* %12, metadata !5217, metadata !DIExpression()), !dbg !5221
  call void @llvm.dbg.declare(metadata [51 x i8]* %13, metadata !5222, metadata !DIExpression()), !dbg !5226
  call void @llvm.dbg.declare(metadata [51 x i8]* %14, metadata !5227, metadata !DIExpression()), !dbg !5228
  call void @llvm.dbg.declare(metadata i64* %15, metadata !5229, metadata !DIExpression()), !dbg !5230
  call void @llvm.dbg.declare(metadata i64* %16, metadata !5231, metadata !DIExpression()), !dbg !5232
  call void @llvm.dbg.declare(metadata i8** %17, metadata !5233, metadata !DIExpression()), !dbg !5234
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !5235
  %102 = call i32 @getc_unlocked(%struct._IO_FILE* %101), !dbg !5236
  store i32 %102, i32* %12, align 4, !dbg !5237
  %103 = load i32, i32* %12, align 4, !dbg !5238
  %104 = icmp eq i32 %103, -1, !dbg !5240
  br i1 %104, label %105, label %106, !dbg !5241

; <label>:105:                                    ; preds = %100
  br label %204, !dbg !5242

; <label>:106:                                    ; preds = %100
  %107 = load i32, i32* %12, align 4, !dbg !5243
  %108 = icmp eq i32 %107, 10, !dbg !5245
  br i1 %108, label %115, label %109, !dbg !5246

; <label>:109:                                    ; preds = %106
  %110 = load i32, i32* %12, align 4, !dbg !5247
  %111 = icmp eq i32 %110, 32, !dbg !5248
  br i1 %111, label %115, label %112, !dbg !5249

; <label>:112:                                    ; preds = %109
  %113 = load i32, i32* %12, align 4, !dbg !5250
  %114 = icmp eq i32 %113, 9, !dbg !5251
  br i1 %114, label %115, label %116, !dbg !5252

; <label>:115:                                    ; preds = %112, %109, %106
  br label %100, !dbg !5253, !llvm.loop !5254

; <label>:116:                                    ; preds = %112
  %117 = load i32, i32* %12, align 4, !dbg !5257
  %118 = icmp eq i32 %117, 35, !dbg !5259
  br i1 %118, label %119, label %137, !dbg !5260

; <label>:119:                                    ; preds = %116
  br label %120, !dbg !5261, !llvm.loop !5263

; <label>:120:                                    ; preds = %129, %119
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !5265
  %122 = call i32 @getc_unlocked(%struct._IO_FILE* %121), !dbg !5266
  store i32 %122, i32* %12, align 4, !dbg !5267
  br label %123, !dbg !5268

; <label>:123:                                    ; preds = %120
  %124 = load i32, i32* %12, align 4, !dbg !5269
  %125 = icmp eq i32 %124, -1, !dbg !5270
  br i1 %125, label %129, label %126, !dbg !5271

; <label>:126:                                    ; preds = %123
  %127 = load i32, i32* %12, align 4, !dbg !5272
  %128 = icmp eq i32 %127, 10, !dbg !5273
  br label %129, !dbg !5271

; <label>:129:                                    ; preds = %126, %123
  %130 = phi i1 [ true, %123 ], [ %128, %126 ]
  %131 = xor i1 %130, true, !dbg !5274
  br i1 %131, label %120, label %132, !dbg !5268, !llvm.loop !5263

; <label>:132:                                    ; preds = %129
  %133 = load i32, i32* %12, align 4, !dbg !5275
  %134 = icmp eq i32 %133, -1, !dbg !5277
  br i1 %134, label %135, label %136, !dbg !5278

; <label>:135:                                    ; preds = %132
  br label %204, !dbg !5279

; <label>:136:                                    ; preds = %132
  br label %100, !dbg !5280, !llvm.loop !5254

; <label>:137:                                    ; preds = %116
  %138 = load i32, i32* %12, align 4, !dbg !5281
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !5282
  %140 = call i32 @ungetc(i32 %138, %struct._IO_FILE* %139), !dbg !5283
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !5284
  %142 = getelementptr inbounds [51 x i8], [51 x i8]* %13, i32 0, i32 0, !dbg !5286
  %143 = getelementptr inbounds [51 x i8], [51 x i8]* %14, i32 0, i32 0, !dbg !5287
  %144 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %141, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.185, i32 0, i32 0), i8* %142, i8* %143), !dbg !5288
  %145 = icmp slt i32 %144, 2, !dbg !5289
  br i1 %145, label %146, label %147, !dbg !5290

; <label>:146:                                    ; preds = %137
  br label %204, !dbg !5291

; <label>:147:                                    ; preds = %137
  %148 = getelementptr inbounds [51 x i8], [51 x i8]* %13, i32 0, i32 0, !dbg !5292
  %149 = call i64 @strlen(i8* %148) #14, !dbg !5293
  store i64 %149, i64* %15, align 8, !dbg !5294
  %150 = getelementptr inbounds [51 x i8], [51 x i8]* %14, i32 0, i32 0, !dbg !5295
  %151 = call i64 @strlen(i8* %150) #14, !dbg !5296
  store i64 %151, i64* %16, align 8, !dbg !5297
  %152 = load i8*, i8** %10, align 8, !dbg !5298
  store i8* %152, i8** %17, align 8, !dbg !5299
  %153 = load i64, i64* %11, align 8, !dbg !5300
  %154 = icmp eq i64 %153, 0, !dbg !5302
  br i1 %154, label %155, label %164, !dbg !5303

; <label>:155:                                    ; preds = %147
  %156 = load i64, i64* %15, align 8, !dbg !5304
  %157 = add i64 %156, 1, !dbg !5306
  %158 = load i64, i64* %16, align 8, !dbg !5307
  %159 = add i64 %157, %158, !dbg !5308
  %160 = add i64 %159, 1, !dbg !5309
  store i64 %160, i64* %11, align 8, !dbg !5310
  %161 = load i64, i64* %11, align 8, !dbg !5311
  %162 = add i64 %161, 1, !dbg !5312
  %163 = call noalias i8* @malloc(i64 %162) #11, !dbg !5313
  store i8* %163, i8** %10, align 8, !dbg !5314
  br label %176, !dbg !5315

; <label>:164:                                    ; preds = %147
  %165 = load i64, i64* %15, align 8, !dbg !5316
  %166 = add i64 %165, 1, !dbg !5318
  %167 = load i64, i64* %16, align 8, !dbg !5319
  %168 = add i64 %166, %167, !dbg !5320
  %169 = add i64 %168, 1, !dbg !5321
  %170 = load i64, i64* %11, align 8, !dbg !5322
  %171 = add i64 %170, %169, !dbg !5322
  store i64 %171, i64* %11, align 8, !dbg !5322
  %172 = load i8*, i8** %10, align 8, !dbg !5323
  %173 = load i64, i64* %11, align 8, !dbg !5324
  %174 = add i64 %173, 1, !dbg !5325
  %175 = call i8* @realloc(i8* %172, i64 %174) #11, !dbg !5326
  store i8* %175, i8** %10, align 8, !dbg !5327
  br label %176

; <label>:176:                                    ; preds = %164, %155
  %177 = load i8*, i8** %10, align 8, !dbg !5328
  %178 = icmp eq i8* %177, null, !dbg !5330
  br i1 %178, label %179, label %181, !dbg !5331

; <label>:179:                                    ; preds = %176
  store i64 0, i64* %11, align 8, !dbg !5332
  %180 = load i8*, i8** %17, align 8, !dbg !5334
  call void @free(i8* %180) #11, !dbg !5335
  br label %204, !dbg !5336

; <label>:181:                                    ; preds = %176
  %182 = load i8*, i8** %10, align 8, !dbg !5337
  %183 = load i64, i64* %11, align 8, !dbg !5338
  %184 = getelementptr inbounds i8, i8* %182, i64 %183, !dbg !5339
  %185 = load i64, i64* %16, align 8, !dbg !5340
  %186 = add i64 %185, 1, !dbg !5341
  %187 = sub i64 0, %186, !dbg !5342
  %188 = getelementptr inbounds i8, i8* %184, i64 %187, !dbg !5342
  %189 = load i64, i64* %15, align 8, !dbg !5343
  %190 = add i64 %189, 1, !dbg !5344
  %191 = sub i64 0, %190, !dbg !5345
  %192 = getelementptr inbounds i8, i8* %188, i64 %191, !dbg !5345
  %193 = getelementptr inbounds [51 x i8], [51 x i8]* %13, i32 0, i32 0, !dbg !5346
  %194 = call i8* @strcpy(i8* %192, i8* %193) #11, !dbg !5347
  %195 = load i8*, i8** %10, align 8, !dbg !5348
  %196 = load i64, i64* %11, align 8, !dbg !5349
  %197 = getelementptr inbounds i8, i8* %195, i64 %196, !dbg !5350
  %198 = load i64, i64* %16, align 8, !dbg !5351
  %199 = add i64 %198, 1, !dbg !5352
  %200 = sub i64 0, %199, !dbg !5353
  %201 = getelementptr inbounds i8, i8* %197, i64 %200, !dbg !5353
  %202 = getelementptr inbounds [51 x i8], [51 x i8]* %14, i32 0, i32 0, !dbg !5354
  %203 = call i8* @strcpy(i8* %201, i8* %202) #11, !dbg !5355
  br label %100, !dbg !5356, !llvm.loop !5254

; <label>:204:                                    ; preds = %179, %146, %135, %105
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !5357
  %206 = call i32 @rpl_fclose(%struct._IO_FILE* %205), !dbg !5358
  %207 = load i64, i64* %11, align 8, !dbg !5359
  %208 = icmp eq i64 %207, 0, !dbg !5361
  br i1 %208, label %209, label %210, !dbg !5362

; <label>:209:                                    ; preds = %204
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.179, i32 0, i32 0), i8** %1, align 8, !dbg !5363
  br label %215, !dbg !5364

; <label>:210:                                    ; preds = %204
  %211 = load i8*, i8** %10, align 8, !dbg !5365
  %212 = load i64, i64* %11, align 8, !dbg !5367
  %213 = getelementptr inbounds i8, i8* %211, i64 %212, !dbg !5368
  store i8 0, i8* %213, align 1, !dbg !5369
  %214 = load i8*, i8** %10, align 8, !dbg !5370
  store i8* %214, i8** %1, align 8, !dbg !5371
  br label %215

; <label>:215:                                    ; preds = %210, %209
  br label %216

; <label>:216:                                    ; preds = %215, %96
  br label %217

; <label>:217:                                    ; preds = %216, %90
  %218 = load i8*, i8** %4, align 8, !dbg !5372
  call void @free(i8* %218) #11, !dbg !5373
  br label %219

; <label>:219:                                    ; preds = %217, %84
  %220 = load i8*, i8** %1, align 8, !dbg !5374
  store volatile i8* %220, i8** @charset_aliases, align 8, !dbg !5375
  br label %221, !dbg !5376

; <label>:221:                                    ; preds = %219, %0
  %222 = load i8*, i8** %1, align 8, !dbg !5377
  ret i8* %222, !dbg !5378
}

; Function Attrs: nounwind
declare %struct._IO_FILE* @fdopen(i32, i8*) #5

declare i32 @ungetc(i32, %struct._IO_FILE*) #3

declare i32 @fscanf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind uwtable
define i32 @memcoll(i8*, i64, i8*, i64) #2 !dbg !5379 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !5380, metadata !DIExpression()), !dbg !5381
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5382, metadata !DIExpression()), !dbg !5383
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !5384, metadata !DIExpression()), !dbg !5385
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !5386, metadata !DIExpression()), !dbg !5387
  call void @llvm.dbg.declare(metadata i32* %9, metadata !5388, metadata !DIExpression()), !dbg !5389
  %12 = load i64, i64* %6, align 8, !dbg !5390
  %13 = load i64, i64* %8, align 8, !dbg !5392
  %14 = icmp eq i64 %12, %13, !dbg !5393
  br i1 %14, label %15, label %23, !dbg !5394

; <label>:15:                                     ; preds = %4
  %16 = load i8*, i8** %5, align 8, !dbg !5395
  %17 = load i8*, i8** %7, align 8, !dbg !5396
  %18 = load i64, i64* %6, align 8, !dbg !5397
  %19 = call i32 @memcmp(i8* %16, i8* %17, i64 %18) #14, !dbg !5398
  %20 = icmp eq i32 %19, 0, !dbg !5399
  br i1 %20, label %21, label %23, !dbg !5400

; <label>:21:                                     ; preds = %15
  %22 = call i32* @__errno_location() #16, !dbg !5401
  store i32 0, i32* %22, align 4, !dbg !5403
  store i32 0, i32* %9, align 4, !dbg !5404
  br label %53, !dbg !5405

; <label>:23:                                     ; preds = %15, %4
  call void @llvm.dbg.declare(metadata i8* %10, metadata !5406, metadata !DIExpression()), !dbg !5408
  %24 = load i8*, i8** %5, align 8, !dbg !5409
  %25 = load i64, i64* %6, align 8, !dbg !5410
  %26 = getelementptr inbounds i8, i8* %24, i64 %25, !dbg !5409
  %27 = load i8, i8* %26, align 1, !dbg !5409
  store i8 %27, i8* %10, align 1, !dbg !5408
  call void @llvm.dbg.declare(metadata i8* %11, metadata !5411, metadata !DIExpression()), !dbg !5412
  %28 = load i8*, i8** %7, align 8, !dbg !5413
  %29 = load i64, i64* %8, align 8, !dbg !5414
  %30 = getelementptr inbounds i8, i8* %28, i64 %29, !dbg !5413
  %31 = load i8, i8* %30, align 1, !dbg !5413
  store i8 %31, i8* %11, align 1, !dbg !5412
  %32 = load i8*, i8** %5, align 8, !dbg !5415
  %33 = load i64, i64* %6, align 8, !dbg !5416
  %34 = getelementptr inbounds i8, i8* %32, i64 %33, !dbg !5415
  store i8 0, i8* %34, align 1, !dbg !5417
  %35 = load i8*, i8** %7, align 8, !dbg !5418
  %36 = load i64, i64* %8, align 8, !dbg !5419
  %37 = getelementptr inbounds i8, i8* %35, i64 %36, !dbg !5418
  store i8 0, i8* %37, align 1, !dbg !5420
  %38 = load i8*, i8** %5, align 8, !dbg !5421
  %39 = load i64, i64* %6, align 8, !dbg !5422
  %40 = add i64 %39, 1, !dbg !5423
  %41 = load i8*, i8** %7, align 8, !dbg !5424
  %42 = load i64, i64* %8, align 8, !dbg !5425
  %43 = add i64 %42, 1, !dbg !5426
  %44 = call i32 @strcoll_loop(i8* %38, i64 %40, i8* %41, i64 %43), !dbg !5427
  store i32 %44, i32* %9, align 4, !dbg !5428
  %45 = load i8, i8* %10, align 1, !dbg !5429
  %46 = load i8*, i8** %5, align 8, !dbg !5430
  %47 = load i64, i64* %6, align 8, !dbg !5431
  %48 = getelementptr inbounds i8, i8* %46, i64 %47, !dbg !5430
  store i8 %45, i8* %48, align 1, !dbg !5432
  %49 = load i8, i8* %11, align 1, !dbg !5433
  %50 = load i8*, i8** %7, align 8, !dbg !5434
  %51 = load i64, i64* %8, align 8, !dbg !5435
  %52 = getelementptr inbounds i8, i8* %50, i64 %51, !dbg !5434
  store i8 %49, i8* %52, align 1, !dbg !5436
  br label %53

; <label>:53:                                     ; preds = %23, %21
  %54 = load i32, i32* %9, align 4, !dbg !5437
  ret i32 %54, !dbg !5438
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @strcoll_loop(i8*, i64, i8*, i64) #2 !dbg !5439 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !5440, metadata !DIExpression()), !dbg !5441
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !5442, metadata !DIExpression()), !dbg !5443
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !5444, metadata !DIExpression()), !dbg !5445
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !5446, metadata !DIExpression()), !dbg !5447
  call void @llvm.dbg.declare(metadata i32* %10, metadata !5448, metadata !DIExpression()), !dbg !5449
  br label %13, !dbg !5450

; <label>:13:                                     ; preds = %56, %4
  %14 = call i32* @__errno_location() #16, !dbg !5451
  store i32 0, i32* %14, align 4, !dbg !5452
  %15 = load i8*, i8** %6, align 8, !dbg !5453
  %16 = load i8*, i8** %8, align 8, !dbg !5454
  %17 = call i32 @strcoll(i8* %15, i8* %16) #14, !dbg !5455
  store i32 %17, i32* %10, align 4, !dbg !5456
  %18 = icmp ne i32 %17, 0, !dbg !5456
  br i1 %18, label %23, label %19, !dbg !5457

; <label>:19:                                     ; preds = %13
  %20 = call i32* @__errno_location() #16, !dbg !5458
  %21 = load i32, i32* %20, align 4, !dbg !5458
  %22 = icmp ne i32 %21, 0, !dbg !5457
  br label %23, !dbg !5457

; <label>:23:                                     ; preds = %19, %13
  %24 = phi i1 [ true, %13 ], [ %22, %19 ]
  %25 = xor i1 %24, true, !dbg !5459
  br i1 %25, label %26, label %57, !dbg !5450

; <label>:26:                                     ; preds = %23
  call void @llvm.dbg.declare(metadata i64* %11, metadata !5460, metadata !DIExpression()), !dbg !5462
  %27 = load i8*, i8** %6, align 8, !dbg !5463
  %28 = call i64 @strlen(i8* %27) #14, !dbg !5464
  %29 = add i64 %28, 1, !dbg !5465
  store i64 %29, i64* %11, align 8, !dbg !5462
  call void @llvm.dbg.declare(metadata i64* %12, metadata !5466, metadata !DIExpression()), !dbg !5467
  %30 = load i8*, i8** %8, align 8, !dbg !5468
  %31 = call i64 @strlen(i8* %30) #14, !dbg !5469
  %32 = add i64 %31, 1, !dbg !5470
  store i64 %32, i64* %12, align 8, !dbg !5467
  %33 = load i64, i64* %11, align 8, !dbg !5471
  %34 = load i8*, i8** %6, align 8, !dbg !5472
  %35 = getelementptr inbounds i8, i8* %34, i64 %33, !dbg !5472
  store i8* %35, i8** %6, align 8, !dbg !5472
  %36 = load i64, i64* %12, align 8, !dbg !5473
  %37 = load i8*, i8** %8, align 8, !dbg !5474
  %38 = getelementptr inbounds i8, i8* %37, i64 %36, !dbg !5474
  store i8* %38, i8** %8, align 8, !dbg !5474
  %39 = load i64, i64* %11, align 8, !dbg !5475
  %40 = load i64, i64* %7, align 8, !dbg !5476
  %41 = sub i64 %40, %39, !dbg !5476
  store i64 %41, i64* %7, align 8, !dbg !5476
  %42 = load i64, i64* %12, align 8, !dbg !5477
  %43 = load i64, i64* %9, align 8, !dbg !5478
  %44 = sub i64 %43, %42, !dbg !5478
  store i64 %44, i64* %9, align 8, !dbg !5478
  %45 = load i64, i64* %7, align 8, !dbg !5479
  %46 = icmp eq i64 %45, 0, !dbg !5481
  br i1 %46, label %47, label %52, !dbg !5482

; <label>:47:                                     ; preds = %26
  %48 = load i64, i64* %9, align 8, !dbg !5483
  %49 = icmp ne i64 %48, 0, !dbg !5484
  %50 = zext i1 %49 to i32, !dbg !5484
  %51 = sub nsw i32 0, %50, !dbg !5485
  store i32 %51, i32* %5, align 4, !dbg !5486
  br label %59, !dbg !5486

; <label>:52:                                     ; preds = %26
  %53 = load i64, i64* %9, align 8, !dbg !5487
  %54 = icmp eq i64 %53, 0, !dbg !5489
  br i1 %54, label %55, label %56, !dbg !5490

; <label>:55:                                     ; preds = %52
  store i32 1, i32* %5, align 4, !dbg !5491
  br label %59, !dbg !5491

; <label>:56:                                     ; preds = %52
  br label %13, !dbg !5450, !llvm.loop !5492

; <label>:57:                                     ; preds = %23
  %58 = load i32, i32* %10, align 4, !dbg !5494
  store i32 %58, i32* %5, align 4, !dbg !5495
  br label %59, !dbg !5495

; <label>:59:                                     ; preds = %57, %55, %47
  %60 = load i32, i32* %5, align 4, !dbg !5496
  ret i32 %60, !dbg !5496
}

; Function Attrs: nounwind readonly
declare i32 @strcoll(i8*, i8*) #6

; Function Attrs: noinline nounwind uwtable
define i32 @memcoll0(i8*, i64, i8*, i64) #2 !dbg !5497 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !5498, metadata !DIExpression()), !dbg !5499
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !5500, metadata !DIExpression()), !dbg !5501
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !5502, metadata !DIExpression()), !dbg !5503
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !5504, metadata !DIExpression()), !dbg !5505
  %10 = load i64, i64* %7, align 8, !dbg !5506
  %11 = load i64, i64* %9, align 8, !dbg !5508
  %12 = icmp eq i64 %10, %11, !dbg !5509
  br i1 %12, label %13, label %21, !dbg !5510

; <label>:13:                                     ; preds = %4
  %14 = load i8*, i8** %6, align 8, !dbg !5511
  %15 = load i8*, i8** %8, align 8, !dbg !5512
  %16 = load i64, i64* %7, align 8, !dbg !5513
  %17 = call i32 @memcmp(i8* %14, i8* %15, i64 %16) #14, !dbg !5514
  %18 = icmp eq i32 %17, 0, !dbg !5515
  br i1 %18, label %19, label %21, !dbg !5516

; <label>:19:                                     ; preds = %13
  %20 = call i32* @__errno_location() #16, !dbg !5517
  store i32 0, i32* %20, align 4, !dbg !5519
  store i32 0, i32* %5, align 4, !dbg !5520
  br label %27, !dbg !5520

; <label>:21:                                     ; preds = %13, %4
  %22 = load i8*, i8** %6, align 8, !dbg !5521
  %23 = load i64, i64* %7, align 8, !dbg !5522
  %24 = load i8*, i8** %8, align 8, !dbg !5523
  %25 = load i64, i64* %9, align 8, !dbg !5524
  %26 = call i32 @strcoll_loop(i8* %22, i64 %23, i8* %24, i64 %25), !dbg !5525
  store i32 %26, i32* %5, align 4, !dbg !5526
  br label %27, !dbg !5526

; <label>:27:                                     ; preds = %21, %19
  %28 = load i32, i32* %5, align 4, !dbg !5527
  ret i32 %28, !dbg !5527
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isascii(i32) #12 !dbg !5528 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5529, metadata !DIExpression()), !dbg !5530
  %3 = load i32, i32* %2, align 4, !dbg !5531
  %4 = icmp sge i32 %3, 0, !dbg !5532
  br i1 %4, label %5, label %8, !dbg !5533

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5534
  %7 = icmp sle i32 %6, 127, !dbg !5535
  br label %8

; <label>:8:                                      ; preds = %5, %1
  %9 = phi i1 [ false, %1 ], [ %7, %5 ]
  ret i1 %9, !dbg !5536
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isalnum(i32) #12 !dbg !5537 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5538, metadata !DIExpression()), !dbg !5539
  %3 = load i32, i32* %2, align 4, !dbg !5540
  %4 = icmp sge i32 %3, 48, !dbg !5541
  br i1 %4, label %5, label %8, !dbg !5542

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5543
  %7 = icmp sle i32 %6, 57, !dbg !5544
  br i1 %7, label %18, label %8, !dbg !5545

; <label>:8:                                      ; preds = %5, %1
  %9 = load i32, i32* %2, align 4, !dbg !5546
  %10 = and i32 %9, -33, !dbg !5547
  %11 = icmp sge i32 %10, 65, !dbg !5548
  br i1 %11, label %12, label %16, !dbg !5549

; <label>:12:                                     ; preds = %8
  %13 = load i32, i32* %2, align 4, !dbg !5550
  %14 = and i32 %13, -33, !dbg !5551
  %15 = icmp sle i32 %14, 90, !dbg !5552
  br label %16

; <label>:16:                                     ; preds = %12, %8
  %17 = phi i1 [ false, %8 ], [ %15, %12 ]
  br label %18, !dbg !5545

; <label>:18:                                     ; preds = %16, %5
  %19 = phi i1 [ true, %5 ], [ %17, %16 ]
  ret i1 %19, !dbg !5553
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isalpha(i32) #12 !dbg !5554 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5555, metadata !DIExpression()), !dbg !5556
  %3 = load i32, i32* %2, align 4, !dbg !5557
  %4 = and i32 %3, -33, !dbg !5558
  %5 = icmp sge i32 %4, 65, !dbg !5559
  br i1 %5, label %6, label %10, !dbg !5560

; <label>:6:                                      ; preds = %1
  %7 = load i32, i32* %2, align 4, !dbg !5561
  %8 = and i32 %7, -33, !dbg !5562
  %9 = icmp sle i32 %8, 90, !dbg !5563
  br label %10

; <label>:10:                                     ; preds = %6, %1
  %11 = phi i1 [ false, %1 ], [ %9, %6 ]
  ret i1 %11, !dbg !5564
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isblank(i32) #12 !dbg !5565 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5566, metadata !DIExpression()), !dbg !5567
  %3 = load i32, i32* %2, align 4, !dbg !5568
  %4 = icmp eq i32 %3, 32, !dbg !5569
  br i1 %4, label %8, label %5, !dbg !5570

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5571
  %7 = icmp eq i32 %6, 9, !dbg !5572
  br label %8, !dbg !5570

; <label>:8:                                      ; preds = %5, %1
  %9 = phi i1 [ true, %1 ], [ %7, %5 ]
  ret i1 %9, !dbg !5573
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_iscntrl(i32) #12 !dbg !5574 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5575, metadata !DIExpression()), !dbg !5576
  %3 = load i32, i32* %2, align 4, !dbg !5577
  %4 = and i32 %3, -32, !dbg !5578
  %5 = icmp eq i32 %4, 0, !dbg !5579
  br i1 %5, label %9, label %6, !dbg !5580

; <label>:6:                                      ; preds = %1
  %7 = load i32, i32* %2, align 4, !dbg !5581
  %8 = icmp eq i32 %7, 127, !dbg !5582
  br label %9, !dbg !5580

; <label>:9:                                      ; preds = %6, %1
  %10 = phi i1 [ true, %1 ], [ %8, %6 ]
  ret i1 %10, !dbg !5583
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isdigit(i32) #12 !dbg !5584 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5585, metadata !DIExpression()), !dbg !5586
  %3 = load i32, i32* %2, align 4, !dbg !5587
  %4 = icmp sge i32 %3, 48, !dbg !5588
  br i1 %4, label %5, label %8, !dbg !5589

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5590
  %7 = icmp sle i32 %6, 57, !dbg !5591
  br label %8

; <label>:8:                                      ; preds = %5, %1
  %9 = phi i1 [ false, %1 ], [ %7, %5 ]
  ret i1 %9, !dbg !5592
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_islower(i32) #12 !dbg !5593 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5594, metadata !DIExpression()), !dbg !5595
  %3 = load i32, i32* %2, align 4, !dbg !5596
  %4 = icmp sge i32 %3, 97, !dbg !5597
  br i1 %4, label %5, label %8, !dbg !5598

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5599
  %7 = icmp sle i32 %6, 122, !dbg !5600
  br label %8

; <label>:8:                                      ; preds = %5, %1
  %9 = phi i1 [ false, %1 ], [ %7, %5 ]
  ret i1 %9, !dbg !5601
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isgraph(i32) #12 !dbg !5602 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5603, metadata !DIExpression()), !dbg !5604
  %3 = load i32, i32* %2, align 4, !dbg !5605
  %4 = icmp sge i32 %3, 33, !dbg !5606
  br i1 %4, label %5, label %8, !dbg !5607

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5608
  %7 = icmp sle i32 %6, 126, !dbg !5609
  br label %8

; <label>:8:                                      ; preds = %5, %1
  %9 = phi i1 [ false, %1 ], [ %7, %5 ]
  ret i1 %9, !dbg !5610
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isprint(i32) #12 !dbg !5611 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5612, metadata !DIExpression()), !dbg !5613
  %3 = load i32, i32* %2, align 4, !dbg !5614
  %4 = icmp sge i32 %3, 32, !dbg !5615
  br i1 %4, label %5, label %8, !dbg !5616

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5617
  %7 = icmp sle i32 %6, 126, !dbg !5618
  br label %8

; <label>:8:                                      ; preds = %5, %1
  %9 = phi i1 [ false, %1 ], [ %7, %5 ]
  ret i1 %9, !dbg !5619
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_ispunct(i32) #12 !dbg !5620 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5621, metadata !DIExpression()), !dbg !5622
  %3 = load i32, i32* %2, align 4, !dbg !5623
  %4 = icmp sge i32 %3, 33, !dbg !5624
  br i1 %4, label %5, label %27, !dbg !5625

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5626
  %7 = icmp sle i32 %6, 126, !dbg !5627
  br i1 %7, label %8, label %27, !dbg !5628

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* %2, align 4, !dbg !5629
  %10 = icmp sge i32 %9, 48, !dbg !5630
  br i1 %10, label %11, label %14, !dbg !5631

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %2, align 4, !dbg !5632
  %13 = icmp sle i32 %12, 57, !dbg !5633
  br i1 %13, label %24, label %14, !dbg !5634

; <label>:14:                                     ; preds = %11, %8
  %15 = load i32, i32* %2, align 4, !dbg !5635
  %16 = and i32 %15, -33, !dbg !5636
  %17 = icmp sge i32 %16, 65, !dbg !5637
  br i1 %17, label %18, label %22, !dbg !5638

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* %2, align 4, !dbg !5639
  %20 = and i32 %19, -33, !dbg !5640
  %21 = icmp sle i32 %20, 90, !dbg !5641
  br label %22

; <label>:22:                                     ; preds = %18, %14
  %23 = phi i1 [ false, %14 ], [ %21, %18 ]
  br label %24, !dbg !5634

; <label>:24:                                     ; preds = %22, %11
  %25 = phi i1 [ true, %11 ], [ %23, %22 ]
  %26 = xor i1 %25, true, !dbg !5642
  br label %27

; <label>:27:                                     ; preds = %24, %5, %1
  %28 = phi i1 [ false, %5 ], [ false, %1 ], [ %26, %24 ]
  ret i1 %28, !dbg !5643
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isspace(i32) #12 !dbg !5644 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5645, metadata !DIExpression()), !dbg !5646
  %3 = load i32, i32* %2, align 4, !dbg !5647
  %4 = icmp eq i32 %3, 32, !dbg !5648
  br i1 %4, label %20, label %5, !dbg !5649

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5650
  %7 = icmp eq i32 %6, 9, !dbg !5651
  br i1 %7, label %20, label %8, !dbg !5652

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* %2, align 4, !dbg !5653
  %10 = icmp eq i32 %9, 10, !dbg !5654
  br i1 %10, label %20, label %11, !dbg !5655

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %2, align 4, !dbg !5656
  %13 = icmp eq i32 %12, 11, !dbg !5657
  br i1 %13, label %20, label %14, !dbg !5658

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %2, align 4, !dbg !5659
  %16 = icmp eq i32 %15, 12, !dbg !5660
  br i1 %16, label %20, label %17, !dbg !5661

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* %2, align 4, !dbg !5662
  %19 = icmp eq i32 %18, 13, !dbg !5663
  br label %20, !dbg !5661

; <label>:20:                                     ; preds = %17, %14, %11, %8, %5, %1
  %21 = phi i1 [ true, %14 ], [ true, %11 ], [ true, %8 ], [ true, %5 ], [ true, %1 ], [ %19, %17 ]
  ret i1 %21, !dbg !5664
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isupper(i32) #12 !dbg !5665 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5666, metadata !DIExpression()), !dbg !5667
  %3 = load i32, i32* %2, align 4, !dbg !5668
  %4 = icmp sge i32 %3, 65, !dbg !5669
  br i1 %4, label %5, label %8, !dbg !5670

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5671
  %7 = icmp sle i32 %6, 90, !dbg !5672
  br label %8

; <label>:8:                                      ; preds = %5, %1
  %9 = phi i1 [ false, %1 ], [ %7, %5 ]
  ret i1 %9, !dbg !5673
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isxdigit(i32) #12 !dbg !5674 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5675, metadata !DIExpression()), !dbg !5676
  %3 = load i32, i32* %2, align 4, !dbg !5677
  %4 = icmp sge i32 %3, 48, !dbg !5678
  br i1 %4, label %5, label %8, !dbg !5679

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5680
  %7 = icmp sle i32 %6, 57, !dbg !5681
  br i1 %7, label %18, label %8, !dbg !5682

; <label>:8:                                      ; preds = %5, %1
  %9 = load i32, i32* %2, align 4, !dbg !5683
  %10 = and i32 %9, -33, !dbg !5684
  %11 = icmp sge i32 %10, 65, !dbg !5685
  br i1 %11, label %12, label %16, !dbg !5686

; <label>:12:                                     ; preds = %8
  %13 = load i32, i32* %2, align 4, !dbg !5687
  %14 = and i32 %13, -33, !dbg !5688
  %15 = icmp sle i32 %14, 70, !dbg !5689
  br label %16

; <label>:16:                                     ; preds = %12, %8
  %17 = phi i1 [ false, %8 ], [ %15, %12 ]
  br label %18, !dbg !5682

; <label>:18:                                     ; preds = %16, %5
  %19 = phi i1 [ true, %5 ], [ %17, %16 ]
  ret i1 %19, !dbg !5690
}

; Function Attrs: noinline nounwind readnone uwtable
define i32 @c_tolower(i32) #12 !dbg !5691 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5694, metadata !DIExpression()), !dbg !5695
  %3 = load i32, i32* %2, align 4, !dbg !5696
  %4 = icmp sge i32 %3, 65, !dbg !5697
  br i1 %4, label %5, label %12, !dbg !5698

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5699
  %7 = icmp sle i32 %6, 90, !dbg !5700
  br i1 %7, label %8, label %12, !dbg !5696

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* %2, align 4, !dbg !5701
  %10 = sub nsw i32 %9, 65, !dbg !5702
  %11 = add nsw i32 %10, 97, !dbg !5703
  br label %14, !dbg !5696

; <label>:12:                                     ; preds = %5, %1
  %13 = load i32, i32* %2, align 4, !dbg !5704
  br label %14, !dbg !5696

; <label>:14:                                     ; preds = %12, %8
  %15 = phi i32 [ %11, %8 ], [ %13, %12 ], !dbg !5696
  ret i32 %15, !dbg !5705
}

; Function Attrs: noinline nounwind readnone uwtable
define i32 @c_toupper(i32) #12 !dbg !5706 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5707, metadata !DIExpression()), !dbg !5708
  %3 = load i32, i32* %2, align 4, !dbg !5709
  %4 = icmp sge i32 %3, 97, !dbg !5710
  br i1 %4, label %5, label %12, !dbg !5711

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5712
  %7 = icmp sle i32 %6, 122, !dbg !5713
  br i1 %7, label %8, label %12, !dbg !5709

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* %2, align 4, !dbg !5714
  %10 = sub nsw i32 %9, 97, !dbg !5715
  %11 = add nsw i32 %10, 65, !dbg !5716
  br label %14, !dbg !5709

; <label>:12:                                     ; preds = %5, %1
  %13 = load i32, i32* %2, align 4, !dbg !5717
  br label %14, !dbg !5709

; <label>:14:                                     ; preds = %12, %8
  %15 = phi i32 [ %11, %8 ], [ %13, %12 ], !dbg !5709
  ret i32 %15, !dbg !5718
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
attributes #15 = { noreturn }
attributes #16 = { nounwind readnone }

!llvm.dbg.cu = !{!2, !111, !117, !141, !614, !149, !617, !622, !624, !626, !628, !630, !155, !161, !632, !215, !639, !651, !653, !655, !661, !663, !666, !668, !674, !223, !676, !678}
!llvm.ident = !{!680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680}
!llvm.module.flags = !{!681, !682, !683}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "hard_LC_COLLATE", scope: !2, file: !3, line: 55, type: !74, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 6.0.0 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !51, globals: !63)
!3 = !DIFile(filename: "../../src/uniq.c", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/src")
!4 = !{!5, !10, !14, !19, !27, !36}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Skip_field_option_type", file: !3, line: 403, size: 32, elements: !6)
!6 = !{!7, !8, !9}
!7 = !DIEnumerator(name: "SFO_NONE", value: 0)
!8 = !DIEnumerator(name: "SFO_OBSOLETE", value: 1)
!9 = !DIEnumerator(name: "SFO_NEW", value: 2)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "countmode", file: !3, line: 66, size: 32, elements: !11)
!11 = !{!12, !13}
!12 = !DIEnumerator(name: "count_occurrences", value: 0)
!13 = !DIEnumerator(name: "count_none", value: 1)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "delimit_method", file: !3, line: 86, size: 32, elements: !15)
!15 = !{!16, !17, !18}
!16 = !DIEnumerator(name: "DM_NONE", value: 0)
!17 = !DIEnumerator(name: "DM_PREPEND", value: 1)
!18 = !DIEnumerator(name: "DM_SEPARATE", value: 2)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !20, line: 26, size: 32, elements: !21)
!20 = !DIFile(filename: "../../lib/xstrtol.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/src")
!21 = !{!22, !23, !24, !25, !26}
!22 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!23 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!24 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!25 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!26 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !28, line: 45, size: 32, elements: !29)
!28 = !DIFile(filename: "../../lib/fadvise.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/src")
!29 = !{!30, !31, !32, !33, !34, !35}
!30 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!31 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!32 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!33 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!34 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!35 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !37, line: 46, size: 32, elements: !38)
!37 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/src")
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!39 = !DIEnumerator(name: "_ISupper", value: 256)
!40 = !DIEnumerator(name: "_ISlower", value: 512)
!41 = !DIEnumerator(name: "_ISalpha", value: 1024)
!42 = !DIEnumerator(name: "_ISdigit", value: 2048)
!43 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!44 = !DIEnumerator(name: "_ISspace", value: 8192)
!45 = !DIEnumerator(name: "_ISprint", value: 16384)
!46 = !DIEnumerator(name: "_ISgraph", value: 32768)
!47 = !DIEnumerator(name: "_ISblank", value: 1)
!48 = !DIEnumerator(name: "_IScntrl", value: 2)
!49 = !DIEnumerator(name: "_ISpunct", value: 4)
!50 = !DIEnumerator(name: "_ISalnum", value: 8)
!51 = !{!52, !55, !56, !57, !60, !61, !62}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !58, line: 62, baseType: !59)
!58 = !DIFile(filename: "/home/ma481/Downloads/LLVM_6.0/lib/clang/6.0.0/include/stddef.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/src")
!59 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!61 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!62 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!63 = !{!0, !64, !66, !68, !70, !72, !75, !77, !79, !81, !83, !97, !103}
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "skip_fields", scope: !2, file: !3, line: 58, type: !57, isLocal: true, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "skip_chars", scope: !2, file: !3, line: 61, type: !57, isLocal: true, isDefinition: true)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "check_chars", scope: !2, file: !3, line: 64, type: !57, isLocal: true, isDefinition: true)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "countmode", scope: !2, file: !3, line: 74, type: !10, isLocal: true, isDefinition: true)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "output_unique", scope: !2, file: !3, line: 79, type: !74, isLocal: true, isDefinition: true)
!74 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "output_first_repeated", scope: !2, file: !3, line: 80, type: !74, isLocal: true, isDefinition: true)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "output_later_repeated", scope: !2, file: !3, line: 81, type: !74, isLocal: true, isDefinition: true)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "ignore_case", scope: !2, file: !3, line: 84, type: !74, isLocal: true, isDefinition: true)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "delimit_groups", scope: !2, file: !3, line: 109, type: !14, isLocal: true, isDefinition: true)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 111, type: !85, isLocal: true, isDefinition: true)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 3072, elements: !95)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !88, line: 50, size: 256, elements: !89)
!88 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/src")
!89 = !{!90, !91, !92, !94}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !87, file: !88, line: 52, baseType: !52, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !87, file: !88, line: 55, baseType: !61, size: 32, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !87, file: !88, line: 56, baseType: !93, size: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !87, file: !88, line: 57, baseType: !61, size: 32, offset: 192)
!95 = !{!96}
!96 = !DISubrange(count: 12)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "delimit_method_map", scope: !2, file: !3, line: 103, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 96, elements: !101)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!101 = !{!102}
!102 = !DISubrange(count: 3)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "delimit_method_string", scope: !2, file: !3, line: 98, type: !105, isLocal: true, isDefinition: true)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 256, elements: !107)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!107 = !{!108}
!108 = !DISubrange(count: 4)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "Version", scope: !111, file: !112, line: 2, type: !52, isLocal: false, isDefinition: true)
!111 = distinct !DICompileUnit(language: DW_LANG_C99, file: !112, producer: "clang version 6.0.0 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !113, globals: !114)
!112 = !DIFile(filename: "version.c", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/src")
!113 = !{}
!114 = !{!109}
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "argmatch_die", scope: !117, file: !118, line: 68, type: !134, isLocal: false, isDefinition: true)
!117 = distinct !DICompileUnit(language: DW_LANG_C99, file: !118, producer: "clang version 6.0.0 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !119, retainedTypes: !132, globals: !133)
!118 = !DIFile(filename: "../../lib/argmatch.c", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!119 = !{!120}
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !121, line: 32, size: 32, elements: !122)
!121 = !DIFile(filename: "../../lib/quotearg.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!122 = !{!123, !124, !125, !126, !127, !128, !129, !130, !131}
!123 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!124 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!125 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!126 = !DIEnumerator(name: "c_quoting_style", value: 3)
!127 = !DIEnumerator(name: "c_maybe_quoting_style", value: 4)
!128 = !DIEnumerator(name: "escape_quoting_style", value: 5)
!129 = !DIEnumerator(name: "locale_quoting_style", value: 6)
!130 = !DIEnumerator(name: "clocale_quoting_style", value: 7)
!131 = !DIEnumerator(name: "custom_quoting_style", value: 8)
!132 = !{!55, !52}
!133 = !{!115}
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "argmatch_exit_fn", file: !135, line: 51, baseType: !136)
!135 = !DIFile(filename: "../../lib/argmatch.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{null}
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(name: "file_name", scope: !141, file: !142, line: 36, type: !52, isLocal: true, isDefinition: true)
!141 = distinct !DICompileUnit(language: DW_LANG_C99, file: !142, producer: "clang version 6.0.0 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !113, retainedTypes: !143, globals: !144)
!142 = !DIFile(filename: "../../lib/closeout.c", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!143 = !{!52}
!144 = !{!139, !145}
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !141, file: !142, line: 46, type: !74, isLocal: true, isDefinition: true)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "exit_failure", scope: !149, file: !150, line: 24, type: !152, isLocal: false, isDefinition: true)
!149 = distinct !DICompileUnit(language: DW_LANG_C99, file: !150, producer: "clang version 6.0.0 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !113, globals: !151)
!150 = !DIFile(filename: "../../lib/exitfail.c", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!151 = !{!147}
!152 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !61)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "program_name", scope: !155, file: !156, line: 33, type: !52, isLocal: false, isDefinition: true)
!155 = distinct !DICompileUnit(language: DW_LANG_C99, file: !156, producer: "clang version 6.0.0 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !113, retainedTypes: !157, globals: !158)
!156 = !DIFile(filename: "../../lib/progname.c", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!157 = !{!55, !60}
!158 = !{!153}
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !161, file: !162, line: 75, type: !210, isLocal: false, isDefinition: true)
!161 = distinct !DICompileUnit(language: DW_LANG_C99, file: !162, producer: "clang version 6.0.0 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !163, retainedTypes: !171, globals: !174)
!162 = !DIFile(filename: "../../lib/quotearg.c", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!163 = !{!120, !164, !169}
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !121, line: 211, size: 32, elements: !165)
!165 = !{!166, !167, !168}
!166 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!167 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!168 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !170, line: 46, size: 32, elements: !38)
!170 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!171 = !{!172, !61, !62, !52}
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !173, line: 62, baseType: !59)
!173 = !DIFile(filename: "/home/ma481/Downloads/LLVM_6.0/lib/clang/6.0.0/include/stddef.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!174 = !{!159, !175, !181, !192, !194, !199, !206, !208}
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !161, file: !162, line: 89, type: !177, isLocal: false, isDefinition: true)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 256, elements: !179)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!179 = !{!180}
!180 = !DISubrange(count: 8)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !161, file: !162, line: 933, type: !183, isLocal: false, isDefinition: true)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !162, line: 55, size: 448, elements: !184)
!184 = !{!185, !186, !187, !190, !191}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !183, file: !162, line: 58, baseType: !120, size: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !183, file: !162, line: 61, baseType: !61, size: 32, offset: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !183, file: !162, line: 65, baseType: !188, size: 256, offset: 64)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 256, elements: !179)
!189 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !183, file: !162, line: 68, baseType: !52, size: 64, offset: 320)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !183, file: !162, line: 71, baseType: !52, size: 64, offset: 384)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !161, file: !162, line: 102, type: !183, isLocal: true, isDefinition: true)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(name: "slot0", scope: !161, file: !162, line: 726, type: !196, isLocal: true, isDefinition: true)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 2048, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 256)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "slotvec", scope: !161, file: !162, line: 729, type: !201, isLocal: true, isDefinition: true)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !162, line: 718, size: 128, elements: !203)
!203 = !{!204, !205}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !202, file: !162, line: 720, baseType: !172, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !202, file: !162, line: 721, baseType: !60, size: 64, offset: 64)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(name: "nslots", scope: !161, file: !162, line: 727, type: !189, isLocal: true, isDefinition: true)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(name: "slotvec0", scope: !161, file: !162, line: 728, type: !202, isLocal: true, isDefinition: true)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 576, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 9)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !215, file: !216, line: 26, type: !218, isLocal: false, isDefinition: true)
!215 = distinct !DICompileUnit(language: DW_LANG_C99, file: !216, producer: "clang version 6.0.0 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !113, globals: !217)
!216 = !DIFile(filename: "../../lib/version-etc-fsf.c", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!217 = !{!213}
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 376, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 47)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !223, file: !224, line: 114, type: !613, isLocal: true, isDefinition: true)
!223 = distinct !DICompileUnit(language: DW_LANG_C99, file: !224, producer: "clang version 6.0.0 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !225, retainedTypes: !157, globals: !612)
!224 = !DIFile(filename: "../../lib/localcharset.c", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!225 = !{!226}
!226 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !227, line: 41, size: 32, elements: !228)
!227 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!228 = !{!229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611}
!229 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!230 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!231 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!232 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!233 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!234 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!235 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!236 = !DIEnumerator(name: "DAY_1", value: 131079)
!237 = !DIEnumerator(name: "DAY_2", value: 131080)
!238 = !DIEnumerator(name: "DAY_3", value: 131081)
!239 = !DIEnumerator(name: "DAY_4", value: 131082)
!240 = !DIEnumerator(name: "DAY_5", value: 131083)
!241 = !DIEnumerator(name: "DAY_6", value: 131084)
!242 = !DIEnumerator(name: "DAY_7", value: 131085)
!243 = !DIEnumerator(name: "ABMON_1", value: 131086)
!244 = !DIEnumerator(name: "ABMON_2", value: 131087)
!245 = !DIEnumerator(name: "ABMON_3", value: 131088)
!246 = !DIEnumerator(name: "ABMON_4", value: 131089)
!247 = !DIEnumerator(name: "ABMON_5", value: 131090)
!248 = !DIEnumerator(name: "ABMON_6", value: 131091)
!249 = !DIEnumerator(name: "ABMON_7", value: 131092)
!250 = !DIEnumerator(name: "ABMON_8", value: 131093)
!251 = !DIEnumerator(name: "ABMON_9", value: 131094)
!252 = !DIEnumerator(name: "ABMON_10", value: 131095)
!253 = !DIEnumerator(name: "ABMON_11", value: 131096)
!254 = !DIEnumerator(name: "ABMON_12", value: 131097)
!255 = !DIEnumerator(name: "MON_1", value: 131098)
!256 = !DIEnumerator(name: "MON_2", value: 131099)
!257 = !DIEnumerator(name: "MON_3", value: 131100)
!258 = !DIEnumerator(name: "MON_4", value: 131101)
!259 = !DIEnumerator(name: "MON_5", value: 131102)
!260 = !DIEnumerator(name: "MON_6", value: 131103)
!261 = !DIEnumerator(name: "MON_7", value: 131104)
!262 = !DIEnumerator(name: "MON_8", value: 131105)
!263 = !DIEnumerator(name: "MON_9", value: 131106)
!264 = !DIEnumerator(name: "MON_10", value: 131107)
!265 = !DIEnumerator(name: "MON_11", value: 131108)
!266 = !DIEnumerator(name: "MON_12", value: 131109)
!267 = !DIEnumerator(name: "AM_STR", value: 131110)
!268 = !DIEnumerator(name: "PM_STR", value: 131111)
!269 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!270 = !DIEnumerator(name: "D_FMT", value: 131113)
!271 = !DIEnumerator(name: "T_FMT", value: 131114)
!272 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!273 = !DIEnumerator(name: "ERA", value: 131116)
!274 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!275 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!276 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!277 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!278 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!279 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!280 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!281 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!282 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!283 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!284 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!285 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!286 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!287 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!288 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!289 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!290 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!291 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!292 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!293 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!294 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!295 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!296 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!297 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!298 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!299 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!300 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!301 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!302 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!303 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!304 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!305 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!306 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!307 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!308 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!309 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!310 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!311 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!312 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!313 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!314 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!315 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!316 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!317 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!318 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!319 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!320 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!321 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!322 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!323 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!324 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!325 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!326 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!327 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!328 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!329 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!330 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!331 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!332 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!333 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!334 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!335 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!336 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!337 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!338 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!339 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!340 = !DIEnumerator(name: "__ALTMON_1", value: 131183)
!341 = !DIEnumerator(name: "__ALTMON_2", value: 131184)
!342 = !DIEnumerator(name: "__ALTMON_3", value: 131185)
!343 = !DIEnumerator(name: "__ALTMON_4", value: 131186)
!344 = !DIEnumerator(name: "__ALTMON_5", value: 131187)
!345 = !DIEnumerator(name: "__ALTMON_6", value: 131188)
!346 = !DIEnumerator(name: "__ALTMON_7", value: 131189)
!347 = !DIEnumerator(name: "__ALTMON_8", value: 131190)
!348 = !DIEnumerator(name: "__ALTMON_9", value: 131191)
!349 = !DIEnumerator(name: "__ALTMON_10", value: 131192)
!350 = !DIEnumerator(name: "__ALTMON_11", value: 131193)
!351 = !DIEnumerator(name: "__ALTMON_12", value: 131194)
!352 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195)
!353 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196)
!354 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197)
!355 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198)
!356 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199)
!357 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200)
!358 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201)
!359 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202)
!360 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203)
!361 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204)
!362 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205)
!363 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206)
!364 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207)
!365 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208)
!366 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209)
!367 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210)
!368 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211)
!369 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212)
!370 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213)
!371 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214)
!372 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215)
!373 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216)
!374 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217)
!375 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218)
!376 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219)
!377 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220)
!378 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221)
!379 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222)
!380 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223)
!381 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224)
!382 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225)
!383 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226)
!384 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227)
!385 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228)
!386 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229)
!387 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230)
!388 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231)
!389 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!390 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!391 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!392 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!393 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!394 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!395 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!396 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!397 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!398 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!399 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!400 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!401 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!402 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!403 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!404 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!405 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!406 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!407 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!408 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!409 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!410 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!411 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!412 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!413 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!414 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!415 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!416 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!417 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!418 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!419 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!420 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!421 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!422 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!423 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!424 = !DIEnumerator(name: "CODESET", value: 14)
!425 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!426 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!427 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!428 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!429 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!430 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!431 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!432 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!433 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!434 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!435 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!436 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!437 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!438 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!439 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!440 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!441 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!442 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!443 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!444 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!445 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!446 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!447 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!448 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!449 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!450 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!451 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!452 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!453 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!454 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!455 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!456 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!457 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!458 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!459 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!460 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!461 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!462 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!463 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!464 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!465 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!466 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!467 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!468 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!469 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!470 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!471 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!472 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!473 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!474 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!475 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!476 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!477 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!478 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!479 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!480 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!481 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!482 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!483 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!484 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!485 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!486 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!487 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!488 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!489 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!490 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!491 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!492 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!493 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!494 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!495 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!496 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!497 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!498 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!499 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!500 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!501 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!502 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!503 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!504 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!505 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!506 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!507 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!508 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!509 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!510 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!511 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!512 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!513 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!514 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!515 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!516 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!517 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!518 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!519 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!520 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!521 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!522 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!523 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!524 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!525 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!526 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!527 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!528 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!529 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!530 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!531 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!532 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!533 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!534 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!535 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!536 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!537 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!538 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!539 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!540 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!541 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!542 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!543 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!544 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!545 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!546 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!547 = !DIEnumerator(name: "THOUSEP", value: 65537)
!548 = !DIEnumerator(name: "__GROUPING", value: 65538)
!549 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!550 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!551 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!552 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!553 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!554 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!555 = !DIEnumerator(name: "__YESSTR", value: 327682)
!556 = !DIEnumerator(name: "__NOSTR", value: 327683)
!557 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!558 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!559 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!560 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!561 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!562 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!563 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!564 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!565 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!566 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!567 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!568 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!569 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!570 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!571 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!572 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!573 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!574 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!575 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!576 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!577 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!578 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!579 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!580 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!581 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!582 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!583 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!584 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!585 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!586 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!587 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!588 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!589 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!590 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!591 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!592 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!593 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!594 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!595 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!596 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!597 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!598 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!599 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!600 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!601 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!602 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!603 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!604 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!605 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!606 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!607 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!608 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!609 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!610 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!611 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!612 = !{!221}
!613 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !52)
!614 = distinct !DICompileUnit(language: DW_LANG_C99, file: !615, producer: "clang version 6.0.0 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !113, retainedTypes: !616)
!615 = !DIFile(filename: "../../lib/basename-lgpl.c", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!616 = !{!60}
!617 = distinct !DICompileUnit(language: DW_LANG_C99, file: !618, producer: "clang version 6.0.0 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !619)
!618 = !DIFile(filename: "../../lib/fadvise.c", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!619 = !{!620}
!620 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !621, line: 45, size: 32, elements: !29)
!621 = !DIFile(filename: "../../lib/fadvise.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!622 = distinct !DICompileUnit(language: DW_LANG_C99, file: !623, producer: "clang version 6.0.0 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !113)
!623 = !DIFile(filename: "../../lib/freopen-safer.c", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!624 = distinct !DICompileUnit(language: DW_LANG_C99, file: !625, producer: "clang version 6.0.0 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !113)
!625 = !DIFile(filename: "../../lib/hard-locale.c", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!626 = distinct !DICompileUnit(language: DW_LANG_C99, file: !627, producer: "clang version 6.0.0 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !113)
!627 = !DIFile(filename: "../../lib/linebuffer.c", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!628 = distinct !DICompileUnit(language: DW_LANG_C99, file: !629, producer: "clang version 6.0.0 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !113)
!629 = !DIFile(filename: "../../lib/memcasecmp.c", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!630 = distinct !DICompileUnit(language: DW_LANG_C99, file: !631, producer: "clang version 6.0.0 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !113)
!631 = !DIFile(filename: "../../lib/posixver.c", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!632 = distinct !DICompileUnit(language: DW_LANG_C99, file: !633, producer: "clang version 6.0.0 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !634, retainedTypes: !638)
!633 = !DIFile(filename: "../../lib/version-etc.c", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!634 = !{!635}
!635 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !633, line: 41, size: 32, elements: !636)
!636 = !{!637}
!637 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2012)
!638 = !{!52, !55}
!639 = distinct !DICompileUnit(language: DW_LANG_C99, file: !640, producer: "clang version 6.0.0 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !641, retainedTypes: !650)
!640 = !DIFile(filename: "../../lib/xmalloc.c", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!641 = !{!642}
!642 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !644, file: !643, line: 197, size: 32, elements: !648)
!643 = !DIFile(filename: "../../lib/xalloc.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!644 = distinct !DISubprogram(name: "x2nrealloc", scope: !643, file: !643, line: 185, type: !645, isLocal: false, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: false, unit: !639, variables: !113)
!645 = !DISubroutineType(types: !646)
!646 = !{!55, !55, !647, !172}
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!648 = !{!649}
!649 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!650 = !{!172, !60, !55}
!651 = distinct !DICompileUnit(language: DW_LANG_C99, file: !652, producer: "clang version 6.0.0 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !113, retainedTypes: !143)
!652 = !DIFile(filename: "../../lib/xalloc-die.c", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!653 = distinct !DICompileUnit(language: DW_LANG_C99, file: !654, producer: "clang version 6.0.0 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !119, retainedTypes: !143)
!654 = !DIFile(filename: "../../lib/xmemcoll.c", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!655 = distinct !DICompileUnit(language: DW_LANG_C99, file: !656, producer: "clang version 6.0.0 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !657, retainedTypes: !660)
!656 = !DIFile(filename: "../../lib/xstrtoul.c", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!657 = !{!658, !169}
!658 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !659, line: 26, size: 32, elements: !21)
!659 = !DIFile(filename: "../../lib/xstrtol.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!660 = !{!61, !62}
!661 = distinct !DICompileUnit(language: DW_LANG_C99, file: !662, producer: "clang version 6.0.0 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !113)
!662 = !DIFile(filename: "../../lib/fclose.c", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!663 = distinct !DICompileUnit(language: DW_LANG_C99, file: !664, producer: "clang version 6.0.0 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !113, retainedTypes: !665)
!664 = !DIFile(filename: "../../lib/fflush.c", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!665 = !{!55}
!666 = distinct !DICompileUnit(language: DW_LANG_C99, file: !667, producer: "clang version 6.0.0 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !113, retainedTypes: !665)
!667 = !DIFile(filename: "../../lib/fseeko.c", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!668 = distinct !DICompileUnit(language: DW_LANG_C99, file: !669, producer: "clang version 6.0.0 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !113, retainedTypes: !670)
!669 = !DIFile(filename: "../../lib/c-strcasecmp.c", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!670 = !{!671}
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !673)
!673 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!674 = distinct !DICompileUnit(language: DW_LANG_C99, file: !675, producer: "clang version 6.0.0 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !113)
!675 = !DIFile(filename: "../../lib/close-stream.c", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!676 = distinct !DICompileUnit(language: DW_LANG_C99, file: !677, producer: "clang version 6.0.0 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !113)
!677 = !DIFile(filename: "../../lib/memcoll.c", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!678 = distinct !DICompileUnit(language: DW_LANG_C99, file: !679, producer: "clang version 6.0.0 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !113)
!679 = !DIFile(filename: "../../lib/c-ctype.c", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!680 = !{!"clang version 6.0.0 (tags/RELEASE_600/final)"}
!681 = !{i32 2, !"Dwarf Version", i32 4}
!682 = !{i32 2, !"Debug Info Version", i32 3}
!683 = !{i32 1, !"wchar_size", i32 4}
!684 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 128, type: !685, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false, unit: !2, variables: !113)
!685 = !DISubroutineType(types: !686)
!686 = !{null, !61}
!687 = !DILocalVariable(name: "status", arg: 1, scope: !684, file: !3, line: 128, type: !61)
!688 = !DILocation(line: 128, column: 12, scope: !684)
!689 = !DILocation(line: 130, column: 7, scope: !690)
!690 = distinct !DILexicalBlock(scope: !684, file: !3, line: 130, column: 7)
!691 = !DILocation(line: 130, column: 14, scope: !690)
!692 = !DILocation(line: 130, column: 7, scope: !684)
!693 = !DILocation(line: 131, column: 5, scope: !690)
!694 = !DILocation(line: 137, column: 15, scope: !695)
!695 = distinct !DILexicalBlock(scope: !690, file: !3, line: 133, column: 5)
!696 = !DILocation(line: 134, column: 7, scope: !695)
!697 = !DILocation(line: 138, column: 7, scope: !695)
!698 = !DILocation(line: 145, column: 6, scope: !695)
!699 = !DILocation(line: 148, column: 6, scope: !695)
!700 = !DILocation(line: 152, column: 6, scope: !695)
!701 = !DILocation(line: 162, column: 6, scope: !695)
!702 = !DILocation(line: 165, column: 6, scope: !695)
!703 = !DILocation(line: 166, column: 6, scope: !695)
!704 = !DILocation(line: 167, column: 6, scope: !695)
!705 = !DILocation(line: 172, column: 6, scope: !695)
!706 = !DILocation(line: 178, column: 7, scope: !695)
!707 = !DILocation(line: 180, column: 9, scope: !684)
!708 = !DILocation(line: 180, column: 3, scope: !684)
!709 = !DILocation(line: 181, column: 1, scope: !684)
!710 = distinct !DISubprogram(name: "emit_try_help", scope: !711, file: !711, line: 583, type: !137, isLocal: true, isDefinition: true, scopeLine: 584, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !113)
!711 = !DIFile(filename: "../../src/system.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/src")
!712 = !DILocation(line: 585, column: 12, scope: !710)
!713 = !DILocation(line: 585, column: 66, scope: !710)
!714 = !DILocation(line: 585, column: 3, scope: !710)
!715 = !DILocation(line: 586, column: 1, scope: !710)
!716 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !711, file: !711, line: 558, type: !137, isLocal: true, isDefinition: true, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !113)
!717 = !DILocation(line: 560, column: 58, scope: !716)
!718 = !DILocation(line: 560, column: 42, scope: !716)
!719 = !DILocation(line: 560, column: 3, scope: !716)
!720 = !DILocation(line: 562, column: 3, scope: !716)
!721 = !DILocation(line: 563, column: 3, scope: !716)
!722 = !DILocalVariable(name: "lc_messages", scope: !716, file: !711, line: 567, type: !52)
!723 = !DILocation(line: 567, column: 15, scope: !716)
!724 = !DILocation(line: 567, column: 29, scope: !716)
!725 = !DILocation(line: 568, column: 7, scope: !726)
!726 = distinct !DILexicalBlock(scope: !716, file: !711, line: 568, column: 7)
!727 = !DILocation(line: 568, column: 19, scope: !726)
!728 = !DILocation(line: 568, column: 22, scope: !726)
!729 = !DILocation(line: 568, column: 7, scope: !716)
!730 = !DILocation(line: 576, column: 33, scope: !731)
!731 = distinct !DILexicalBlock(scope: !726, file: !711, line: 569, column: 5)
!732 = !DILocation(line: 576, column: 17, scope: !731)
!733 = !DILocation(line: 574, column: 7, scope: !731)
!734 = !DILocation(line: 577, column: 5, scope: !731)
!735 = !DILocation(line: 579, column: 66, scope: !716)
!736 = !DILocation(line: 579, column: 50, scope: !716)
!737 = !DILocation(line: 578, column: 3, scope: !716)
!738 = !DILocation(line: 580, column: 1, scope: !716)
!739 = distinct !DISubprogram(name: "klee_dump_memory", scope: !3, file: !3, line: 412, type: !137, isLocal: false, isDefinition: true, scopeLine: 412, isOptimized: false, unit: !2, variables: !113)
!740 = !DILocation(line: 412, column: 26, scope: !739)
!741 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 415, type: !742, isLocal: false, isDefinition: true, scopeLine: 416, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !113)
!742 = !DISubroutineType(types: !743)
!743 = !{!61, !61, !744}
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!745 = !DILocalVariable(name: "argc", arg: 1, scope: !741, file: !3, line: 415, type: !61)
!746 = !DILocation(line: 415, column: 11, scope: !741)
!747 = !DILocalVariable(name: "argv", arg: 2, scope: !741, file: !3, line: 415, type: !744)
!748 = !DILocation(line: 415, column: 24, scope: !741)
!749 = !DILocalVariable(name: "optc", scope: !741, file: !3, line: 417, type: !61)
!750 = !DILocation(line: 417, column: 7, scope: !741)
!751 = !DILocalVariable(name: "posixly_correct", scope: !741, file: !3, line: 418, type: !74)
!752 = !DILocation(line: 418, column: 8, scope: !741)
!753 = !DILocation(line: 418, column: 27, scope: !741)
!754 = !DILocation(line: 418, column: 54, scope: !741)
!755 = !DILocalVariable(name: "skip_field_option_type", scope: !741, file: !3, line: 419, type: !5)
!756 = !DILocation(line: 419, column: 31, scope: !741)
!757 = !DILocalVariable(name: "nfiles", scope: !741, file: !3, line: 420, type: !61)
!758 = !DILocation(line: 420, column: 7, scope: !741)
!759 = !DILocalVariable(name: "file", scope: !741, file: !3, line: 421, type: !760)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 128, elements: !761)
!761 = !{!762}
!762 = !DISubrange(count: 2)
!763 = !DILocation(line: 421, column: 15, scope: !741)
!764 = !DILocalVariable(name: "delimiter", scope: !741, file: !3, line: 422, type: !54)
!765 = !DILocation(line: 422, column: 8, scope: !741)
!766 = !DILocation(line: 424, column: 13, scope: !741)
!767 = !DILocation(line: 424, column: 21, scope: !741)
!768 = !DILocation(line: 424, column: 3, scope: !741)
!769 = !DILocation(line: 424, column: 11, scope: !741)
!770 = !DILocation(line: 426, column: 21, scope: !741)
!771 = !DILocation(line: 426, column: 3, scope: !741)
!772 = !DILocation(line: 427, column: 3, scope: !741)
!773 = !DILocation(line: 430, column: 21, scope: !741)
!774 = !DILocation(line: 430, column: 19, scope: !741)
!775 = !DILocation(line: 432, column: 3, scope: !741)
!776 = !DILocation(line: 434, column: 14, scope: !741)
!777 = !DILocation(line: 435, column: 15, scope: !741)
!778 = !DILocation(line: 436, column: 15, scope: !741)
!779 = !DILocation(line: 437, column: 41, scope: !741)
!780 = !DILocation(line: 437, column: 17, scope: !741)
!781 = !DILocation(line: 438, column: 25, scope: !741)
!782 = !DILocation(line: 439, column: 13, scope: !741)
!783 = !DILocation(line: 440, column: 18, scope: !741)
!784 = !DILocation(line: 442, column: 3, scope: !741)
!785 = !DILocation(line: 449, column: 11, scope: !786)
!786 = distinct !DILexicalBlock(scope: !787, file: !3, line: 448, column: 11)
!787 = distinct !DILexicalBlock(scope: !741, file: !3, line: 443, column: 5)
!788 = !DILocation(line: 449, column: 31, scope: !786)
!789 = !DILocation(line: 450, column: 11, scope: !786)
!790 = !DILocation(line: 450, column: 36, scope: !786)
!791 = !DILocation(line: 450, column: 42, scope: !786)
!792 = !DILocation(line: 450, column: 23, scope: !786)
!793 = !DILocation(line: 450, column: 21, scope: !786)
!794 = !DILocation(line: 452, column: 15, scope: !786)
!795 = !DILocation(line: 448, column: 11, scope: !787)
!796 = !DILocation(line: 454, column: 15, scope: !797)
!797 = distinct !DILexicalBlock(scope: !798, file: !3, line: 454, column: 15)
!798 = distinct !DILexicalBlock(scope: !786, file: !3, line: 453, column: 9)
!799 = !DILocation(line: 454, column: 23, scope: !797)
!800 = !DILocation(line: 454, column: 20, scope: !797)
!801 = !DILocation(line: 454, column: 15, scope: !798)
!802 = !DILocation(line: 455, column: 13, scope: !797)
!803 = !DILocation(line: 456, column: 15, scope: !798)
!804 = !DILocation(line: 458, column: 58, scope: !805)
!805 = distinct !DILexicalBlock(scope: !806, file: !3, line: 457, column: 13)
!806 = distinct !DILexicalBlock(scope: !798, file: !3, line: 456, column: 15)
!807 = !DILocation(line: 458, column: 63, scope: !805)
!808 = !DILocation(line: 458, column: 51, scope: !805)
!809 = !DILocation(line: 458, column: 15, scope: !805)
!810 = !DILocation(line: 459, column: 15, scope: !805)
!811 = !DILocation(line: 461, column: 28, scope: !798)
!812 = !DILocation(line: 461, column: 39, scope: !798)
!813 = !DILocation(line: 461, column: 22, scope: !798)
!814 = !DILocation(line: 461, column: 11, scope: !798)
!815 = !DILocation(line: 461, column: 26, scope: !798)
!816 = !DILocation(line: 462, column: 9, scope: !798)
!817 = !DILocation(line: 463, column: 12, scope: !786)
!818 = !DILocalVariable(name: "size", scope: !819, file: !3, line: 467, type: !59)
!819 = distinct !DILexicalBlock(scope: !820, file: !3, line: 466, column: 11)
!820 = distinct !DILexicalBlock(scope: !786, file: !3, line: 464, column: 9)
!821 = !DILocation(line: 467, column: 31, scope: !819)
!822 = !DILocation(line: 468, column: 17, scope: !823)
!823 = distinct !DILexicalBlock(scope: !819, file: !3, line: 468, column: 17)
!824 = !DILocation(line: 468, column: 27, scope: !823)
!825 = !DILocation(line: 469, column: 17, scope: !823)
!826 = !DILocation(line: 469, column: 20, scope: !823)
!827 = !DILocation(line: 469, column: 38, scope: !823)
!828 = !DILocation(line: 470, column: 17, scope: !823)
!829 = !DILocation(line: 470, column: 30, scope: !823)
!830 = !DILocation(line: 470, column: 20, scope: !823)
!831 = !DILocation(line: 470, column: 59, scope: !823)
!832 = !DILocation(line: 471, column: 17, scope: !823)
!833 = !DILocation(line: 468, column: 17, scope: !819)
!834 = !DILocation(line: 472, column: 26, scope: !823)
!835 = !DILocation(line: 472, column: 15, scope: !823)
!836 = !DILocation(line: 473, column: 22, scope: !823)
!837 = !DILocation(line: 475, column: 60, scope: !838)
!838 = distinct !DILexicalBlock(scope: !839, file: !3, line: 474, column: 15)
!839 = distinct !DILexicalBlock(scope: !823, file: !3, line: 473, column: 22)
!840 = !DILocation(line: 475, column: 53, scope: !838)
!841 = !DILocation(line: 475, column: 17, scope: !838)
!842 = !DILocation(line: 476, column: 17, scope: !838)
!843 = !DILocation(line: 479, column: 32, scope: !839)
!844 = !DILocation(line: 479, column: 26, scope: !839)
!845 = !DILocation(line: 479, column: 15, scope: !839)
!846 = !DILocation(line: 479, column: 30, scope: !839)
!847 = !DILocation(line: 481, column: 11, scope: !820)
!848 = !DILocation(line: 494, column: 17, scope: !849)
!849 = distinct !DILexicalBlock(scope: !820, file: !3, line: 493, column: 11)
!850 = !DILocation(line: 495, column: 27, scope: !851)
!851 = distinct !DILexicalBlock(scope: !849, file: !3, line: 494, column: 17)
!852 = !DILocation(line: 495, column: 15, scope: !851)
!853 = !DILocation(line: 497, column: 18, scope: !854)
!854 = distinct !DILexicalBlock(scope: !849, file: !3, line: 497, column: 17)
!855 = !DILocation(line: 497, column: 17, scope: !849)
!856 = !DILocation(line: 498, column: 27, scope: !854)
!857 = !DILocation(line: 498, column: 15, scope: !854)
!858 = !DILocation(line: 500, column: 36, scope: !849)
!859 = !DILocation(line: 502, column: 11, scope: !820)
!860 = !DILocation(line: 505, column: 21, scope: !820)
!861 = !DILocation(line: 506, column: 11, scope: !820)
!862 = !DILocation(line: 509, column: 25, scope: !820)
!863 = !DILocation(line: 510, column: 11, scope: !820)
!864 = !DILocation(line: 513, column: 25, scope: !820)
!865 = !DILocation(line: 514, column: 33, scope: !820)
!866 = !DILocation(line: 515, column: 15, scope: !867)
!867 = distinct !DILexicalBlock(scope: !820, file: !3, line: 515, column: 15)
!868 = !DILocation(line: 515, column: 22, scope: !867)
!869 = !DILocation(line: 515, column: 15, scope: !820)
!870 = !DILocation(line: 516, column: 28, scope: !867)
!871 = !DILocation(line: 516, column: 13, scope: !867)
!872 = !DILocation(line: 518, column: 30, scope: !867)
!873 = !DILocation(line: 518, column: 28, scope: !867)
!874 = !DILocation(line: 521, column: 11, scope: !820)
!875 = !DILocation(line: 524, column: 34, scope: !820)
!876 = !DILocation(line: 525, column: 35, scope: !820)
!877 = !DILocation(line: 525, column: 25, scope: !820)
!878 = !DILocation(line: 525, column: 23, scope: !820)
!879 = !DILocation(line: 527, column: 11, scope: !820)
!880 = !DILocation(line: 530, column: 23, scope: !820)
!881 = !DILocation(line: 531, column: 11, scope: !820)
!882 = !DILocation(line: 534, column: 34, scope: !820)
!883 = !DILocation(line: 534, column: 24, scope: !820)
!884 = !DILocation(line: 534, column: 22, scope: !820)
!885 = !DILocation(line: 536, column: 11, scope: !820)
!886 = !DILocation(line: 539, column: 33, scope: !820)
!887 = !DILocation(line: 540, column: 11, scope: !820)
!888 = !DILocation(line: 543, column: 35, scope: !820)
!889 = !DILocation(line: 543, column: 25, scope: !820)
!890 = !DILocation(line: 543, column: 23, scope: !820)
!891 = !DILocation(line: 545, column: 11, scope: !820)
!892 = !DILocation(line: 548, column: 21, scope: !820)
!893 = !DILocation(line: 549, column: 11, scope: !820)
!894 = !DILocation(line: 551, column: 9, scope: !820)
!895 = !DILocation(line: 553, column: 9, scope: !820)
!896 = !DILocation(line: 556, column: 11, scope: !820)
!897 = distinct !{!897, !784, !898}
!898 = !DILocation(line: 558, column: 5, scope: !741)
!899 = !DILocation(line: 559, column: 1, scope: !741)
!900 = !DILocation(line: 560, column: 38, scope: !901)
!901 = distinct !DILexicalBlock(scope: !741, file: !3, line: 560, column: 7)
!902 = !DILocation(line: 560, column: 7, scope: !741)
!903 = !DILocation(line: 562, column: 7, scope: !904)
!904 = distinct !DILexicalBlock(scope: !901, file: !3, line: 561, column: 5)
!905 = !DILocation(line: 564, column: 7, scope: !904)
!906 = !DILocation(line: 567, column: 15, scope: !741)
!907 = !DILocation(line: 567, column: 24, scope: !741)
!908 = !DILocation(line: 567, column: 33, scope: !741)
!909 = !DILocation(line: 567, column: 3, scope: !741)
!910 = !DILocation(line: 569, column: 3, scope: !741)
!911 = !DILocation(line: 570, column: 1, scope: !741)
!912 = distinct !DISubprogram(name: "size_opt", scope: !3, file: !3, line: 187, type: !913, isLocal: true, isDefinition: true, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !113)
!913 = !DISubroutineType(types: !914)
!914 = !{!57, !52, !52}
!915 = !DILocalVariable(name: "opt", arg: 1, scope: !912, file: !3, line: 187, type: !52)
!916 = !DILocation(line: 187, column: 23, scope: !912)
!917 = !DILocalVariable(name: "msgid", arg: 2, scope: !912, file: !3, line: 187, type: !52)
!918 = !DILocation(line: 187, column: 40, scope: !912)
!919 = !DILocalVariable(name: "size", scope: !912, file: !3, line: 189, type: !59)
!920 = !DILocation(line: 189, column: 21, scope: !912)
!921 = !DILocation(line: 192, column: 21, scope: !912)
!922 = !DILocation(line: 192, column: 11, scope: !912)
!923 = !DILocation(line: 192, column: 3, scope: !912)
!924 = !DILocation(line: 196, column: 7, scope: !925)
!925 = distinct !DILexicalBlock(scope: !912, file: !3, line: 193, column: 5)
!926 = !DILocation(line: 199, column: 41, scope: !925)
!927 = !DILocation(line: 199, column: 46, scope: !925)
!928 = !DILocation(line: 199, column: 7, scope: !925)
!929 = !DILocation(line: 200, column: 5, scope: !925)
!930 = !DILocation(line: 202, column: 10, scope: !912)
!931 = !DILocation(line: 202, column: 3, scope: !912)
!932 = distinct !DISubprogram(name: "check_file", scope: !3, file: !3, line: 278, type: !933, isLocal: true, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !113)
!933 = !DISubroutineType(types: !934)
!934 = !{null, !52, !52, !54}
!935 = !DILocalVariable(name: "infile", arg: 1, scope: !932, file: !3, line: 278, type: !52)
!936 = !DILocation(line: 278, column: 25, scope: !932)
!937 = !DILocalVariable(name: "outfile", arg: 2, scope: !932, file: !3, line: 278, type: !52)
!938 = !DILocation(line: 278, column: 45, scope: !932)
!939 = !DILocalVariable(name: "delimiter", arg: 3, scope: !932, file: !3, line: 278, type: !54)
!940 = !DILocation(line: 278, column: 59, scope: !932)
!941 = !DILocalVariable(name: "lb1", scope: !932, file: !3, line: 280, type: !942)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !943, line: 26, size: 192, elements: !944)
!943 = !DIFile(filename: "../../lib/linebuffer.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/src")
!944 = !{!945, !946, !947}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !942, file: !943, line: 28, baseType: !57, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !942, file: !943, line: 29, baseType: !57, size: 64, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !942, file: !943, line: 30, baseType: !60, size: 64, offset: 128)
!948 = !DILocation(line: 280, column: 21, scope: !932)
!949 = !DILocalVariable(name: "lb2", scope: !932, file: !3, line: 280, type: !942)
!950 = !DILocation(line: 280, column: 26, scope: !932)
!951 = !DILocalVariable(name: "thisline", scope: !932, file: !3, line: 281, type: !952)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!953 = !DILocation(line: 281, column: 22, scope: !932)
!954 = !DILocalVariable(name: "prevline", scope: !932, file: !3, line: 281, type: !952)
!955 = !DILocation(line: 281, column: 33, scope: !932)
!956 = !DILocation(line: 283, column: 10, scope: !957)
!957 = distinct !DILexicalBlock(scope: !932, file: !3, line: 283, column: 7)
!958 = !DILocation(line: 283, column: 30, scope: !957)
!959 = !DILocation(line: 283, column: 42, scope: !957)
!960 = !DILocation(line: 283, column: 55, scope: !957)
!961 = !DILocation(line: 283, column: 33, scope: !957)
!962 = !DILocation(line: 283, column: 7, scope: !932)
!963 = !DILocation(line: 284, column: 26, scope: !957)
!964 = !DILocation(line: 284, column: 39, scope: !957)
!965 = !DILocation(line: 284, column: 5, scope: !957)
!966 = !DILocation(line: 285, column: 10, scope: !967)
!967 = distinct !DILexicalBlock(scope: !932, file: !3, line: 285, column: 7)
!968 = !DILocation(line: 285, column: 31, scope: !967)
!969 = !DILocation(line: 285, column: 43, scope: !967)
!970 = !DILocation(line: 285, column: 57, scope: !967)
!971 = !DILocation(line: 285, column: 34, scope: !967)
!972 = !DILocation(line: 285, column: 7, scope: !932)
!973 = !DILocation(line: 286, column: 26, scope: !967)
!974 = !DILocation(line: 286, column: 39, scope: !967)
!975 = !DILocation(line: 286, column: 5, scope: !967)
!976 = !DILocation(line: 288, column: 12, scope: !932)
!977 = !DILocation(line: 288, column: 3, scope: !932)
!978 = !DILocation(line: 290, column: 12, scope: !932)
!979 = !DILocation(line: 291, column: 12, scope: !932)
!980 = !DILocation(line: 293, column: 15, scope: !932)
!981 = !DILocation(line: 293, column: 3, scope: !932)
!982 = !DILocation(line: 294, column: 15, scope: !932)
!983 = !DILocation(line: 294, column: 3, scope: !932)
!984 = !DILocation(line: 303, column: 21, scope: !985)
!985 = distinct !DILexicalBlock(scope: !932, file: !3, line: 303, column: 7)
!986 = !DILocation(line: 303, column: 46, scope: !985)
!987 = !DILocation(line: 303, column: 7, scope: !932)
!988 = !DILocalVariable(name: "prevfield", scope: !989, file: !3, line: 305, type: !60)
!989 = distinct !DILexicalBlock(scope: !985, file: !3, line: 304, column: 5)
!990 = !DILocation(line: 305, column: 13, scope: !989)
!991 = !DILocalVariable(name: "prevlen", scope: !989, file: !3, line: 306, type: !57)
!992 = !DILocation(line: 306, column: 14, scope: !989)
!993 = !DILocation(line: 308, column: 7, scope: !989)
!994 = !DILocation(line: 308, column: 15, scope: !989)
!995 = !DILocation(line: 308, column: 14, scope: !989)
!996 = !DILocalVariable(name: "thisfield", scope: !997, file: !3, line: 310, type: !60)
!997 = distinct !DILexicalBlock(scope: !989, file: !3, line: 309, column: 9)
!998 = !DILocation(line: 310, column: 17, scope: !997)
!999 = !DILocalVariable(name: "thislen", scope: !997, file: !3, line: 311, type: !57)
!1000 = !DILocation(line: 311, column: 18, scope: !997)
!1001 = !DILocation(line: 312, column: 37, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !997, file: !3, line: 312, column: 15)
!1003 = !DILocation(line: 312, column: 47, scope: !1002)
!1004 = !DILocation(line: 312, column: 54, scope: !1002)
!1005 = !DILocation(line: 312, column: 15, scope: !1002)
!1006 = !DILocation(line: 312, column: 65, scope: !1002)
!1007 = !DILocation(line: 312, column: 15, scope: !997)
!1008 = !DILocation(line: 313, column: 13, scope: !1002)
!1009 = !DILocation(line: 314, column: 35, scope: !997)
!1010 = !DILocation(line: 314, column: 23, scope: !997)
!1011 = !DILocation(line: 314, column: 21, scope: !997)
!1012 = !DILocation(line: 315, column: 21, scope: !997)
!1013 = !DILocation(line: 315, column: 31, scope: !997)
!1014 = !DILocation(line: 315, column: 38, scope: !997)
!1015 = !DILocation(line: 315, column: 45, scope: !997)
!1016 = !DILocation(line: 315, column: 57, scope: !997)
!1017 = !DILocation(line: 315, column: 67, scope: !997)
!1018 = !DILocation(line: 315, column: 55, scope: !997)
!1019 = !DILocation(line: 315, column: 42, scope: !997)
!1020 = !DILocation(line: 315, column: 19, scope: !997)
!1021 = !DILocation(line: 316, column: 15, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !997, file: !3, line: 316, column: 15)
!1023 = !DILocation(line: 316, column: 25, scope: !1022)
!1024 = !DILocation(line: 316, column: 32, scope: !1022)
!1025 = !DILocation(line: 317, column: 15, scope: !1022)
!1026 = !DILocation(line: 317, column: 29, scope: !1022)
!1027 = !DILocation(line: 317, column: 40, scope: !1022)
!1028 = !DILocation(line: 317, column: 51, scope: !1022)
!1029 = !DILocation(line: 317, column: 60, scope: !1022)
!1030 = !DILocation(line: 317, column: 18, scope: !1022)
!1031 = !DILocation(line: 316, column: 15, scope: !997)
!1032 = !DILocation(line: 319, column: 15, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 318, column: 13)
!1034 = !DILocation(line: 322, column: 15, scope: !1033)
!1035 = distinct !{!1035, !1034, !1034}
!1036 = !DILocalVariable(name: "_tmp", scope: !1037, file: !3, line: 322, type: !952)
!1037 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 322, column: 15)
!1038 = !DILocation(line: 322, column: 15, scope: !1037)
!1039 = !DILocation(line: 323, column: 27, scope: !1033)
!1040 = !DILocation(line: 323, column: 25, scope: !1033)
!1041 = !DILocation(line: 324, column: 25, scope: !1033)
!1042 = !DILocation(line: 324, column: 23, scope: !1033)
!1043 = !DILocation(line: 325, column: 13, scope: !1033)
!1044 = distinct !{!1044, !993, !1045}
!1045 = !DILocation(line: 326, column: 9, scope: !989)
!1046 = !DILocation(line: 327, column: 5, scope: !989)
!1047 = !DILocalVariable(name: "prevfield", scope: !1048, file: !3, line: 330, type: !60)
!1048 = distinct !DILexicalBlock(scope: !985, file: !3, line: 329, column: 5)
!1049 = !DILocation(line: 330, column: 13, scope: !1048)
!1050 = !DILocalVariable(name: "prevlen", scope: !1048, file: !3, line: 331, type: !57)
!1051 = !DILocation(line: 331, column: 14, scope: !1048)
!1052 = !DILocalVariable(name: "match_count", scope: !1048, file: !3, line: 332, type: !1053)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1054, line: 112, baseType: !1055)
!1054 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/src")
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1056, line: 62, baseType: !59)
!1056 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/src")
!1057 = !DILocation(line: 332, column: 17, scope: !1048)
!1058 = !DILocalVariable(name: "first_delimiter", scope: !1048, file: !3, line: 333, type: !74)
!1059 = !DILocation(line: 333, column: 12, scope: !1048)
!1060 = !DILocation(line: 335, column: 33, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 335, column: 11)
!1062 = !DILocation(line: 335, column: 43, scope: !1061)
!1063 = !DILocation(line: 335, column: 50, scope: !1061)
!1064 = !DILocation(line: 335, column: 11, scope: !1061)
!1065 = !DILocation(line: 335, column: 61, scope: !1061)
!1066 = !DILocation(line: 335, column: 11, scope: !1048)
!1067 = !DILocation(line: 336, column: 9, scope: !1061)
!1068 = !DILocation(line: 337, column: 31, scope: !1048)
!1069 = !DILocation(line: 337, column: 19, scope: !1048)
!1070 = !DILocation(line: 337, column: 17, scope: !1048)
!1071 = !DILocation(line: 338, column: 17, scope: !1048)
!1072 = !DILocation(line: 338, column: 27, scope: !1048)
!1073 = !DILocation(line: 338, column: 34, scope: !1048)
!1074 = !DILocation(line: 338, column: 41, scope: !1048)
!1075 = !DILocation(line: 338, column: 53, scope: !1048)
!1076 = !DILocation(line: 338, column: 63, scope: !1048)
!1077 = !DILocation(line: 338, column: 51, scope: !1048)
!1078 = !DILocation(line: 338, column: 38, scope: !1048)
!1079 = !DILocation(line: 338, column: 15, scope: !1048)
!1080 = !DILocation(line: 340, column: 7, scope: !1048)
!1081 = !DILocation(line: 340, column: 15, scope: !1048)
!1082 = !DILocation(line: 340, column: 14, scope: !1048)
!1083 = !DILocalVariable(name: "match", scope: !1084, file: !3, line: 342, type: !74)
!1084 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 341, column: 9)
!1085 = !DILocation(line: 342, column: 16, scope: !1084)
!1086 = !DILocalVariable(name: "thisfield", scope: !1084, file: !3, line: 343, type: !60)
!1087 = !DILocation(line: 343, column: 17, scope: !1084)
!1088 = !DILocalVariable(name: "thislen", scope: !1084, file: !3, line: 344, type: !57)
!1089 = !DILocation(line: 344, column: 18, scope: !1084)
!1090 = !DILocation(line: 345, column: 37, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 345, column: 15)
!1092 = !DILocation(line: 345, column: 47, scope: !1091)
!1093 = !DILocation(line: 345, column: 54, scope: !1091)
!1094 = !DILocation(line: 345, column: 15, scope: !1091)
!1095 = !DILocation(line: 345, column: 65, scope: !1091)
!1096 = !DILocation(line: 345, column: 15, scope: !1084)
!1097 = !DILocation(line: 347, column: 19, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 347, column: 19)
!1099 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 346, column: 13)
!1100 = !DILocation(line: 347, column: 19, scope: !1099)
!1101 = !DILocation(line: 348, column: 17, scope: !1098)
!1102 = !DILocation(line: 349, column: 15, scope: !1099)
!1103 = !DILocation(line: 351, column: 35, scope: !1084)
!1104 = !DILocation(line: 351, column: 23, scope: !1084)
!1105 = !DILocation(line: 351, column: 21, scope: !1084)
!1106 = !DILocation(line: 352, column: 21, scope: !1084)
!1107 = !DILocation(line: 352, column: 31, scope: !1084)
!1108 = !DILocation(line: 352, column: 38, scope: !1084)
!1109 = !DILocation(line: 352, column: 45, scope: !1084)
!1110 = !DILocation(line: 352, column: 57, scope: !1084)
!1111 = !DILocation(line: 352, column: 67, scope: !1084)
!1112 = !DILocation(line: 352, column: 55, scope: !1084)
!1113 = !DILocation(line: 352, column: 42, scope: !1084)
!1114 = !DILocation(line: 352, column: 19, scope: !1084)
!1115 = !DILocation(line: 353, column: 31, scope: !1084)
!1116 = !DILocation(line: 353, column: 42, scope: !1084)
!1117 = !DILocation(line: 353, column: 53, scope: !1084)
!1118 = !DILocation(line: 353, column: 62, scope: !1084)
!1119 = !DILocation(line: 353, column: 20, scope: !1084)
!1120 = !DILocation(line: 353, column: 19, scope: !1084)
!1121 = !DILocation(line: 353, column: 17, scope: !1084)
!1122 = !DILocation(line: 354, column: 26, scope: !1084)
!1123 = !DILocation(line: 354, column: 23, scope: !1084)
!1124 = !DILocation(line: 356, column: 15, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 356, column: 15)
!1126 = !DILocation(line: 356, column: 27, scope: !1125)
!1127 = !DILocation(line: 356, column: 15, scope: !1084)
!1128 = !DILocation(line: 360, column: 26, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 357, column: 13)
!1130 = !DILocation(line: 361, column: 13, scope: !1129)
!1131 = !DILocation(line: 363, column: 15, scope: !1084)
!1132 = !DILocation(line: 365, column: 20, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 365, column: 19)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 364, column: 13)
!1135 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 363, column: 15)
!1136 = !DILocation(line: 365, column: 19, scope: !1134)
!1137 = !DILocation(line: 367, column: 23, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 367, column: 23)
!1139 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 366, column: 17)
!1140 = !DILocation(line: 367, column: 23, scope: !1139)
!1141 = !DILocation(line: 368, column: 37, scope: !1138)
!1142 = !DILocation(line: 368, column: 21, scope: !1138)
!1143 = !DILocation(line: 369, column: 17, scope: !1139)
!1144 = !DILocation(line: 370, column: 24, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 370, column: 24)
!1146 = !DILocation(line: 370, column: 36, scope: !1145)
!1147 = !DILocation(line: 370, column: 24, scope: !1133)
!1148 = !DILocation(line: 373, column: 23, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 372, column: 23)
!1150 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 371, column: 17)
!1151 = !DILocation(line: 374, column: 27, scope: !1149)
!1152 = !DILocation(line: 374, column: 31, scope: !1149)
!1153 = !DILocation(line: 372, column: 23, scope: !1150)
!1154 = !DILocation(line: 375, column: 21, scope: !1149)
!1155 = !DILocation(line: 376, column: 17, scope: !1150)
!1156 = !DILocation(line: 377, column: 13, scope: !1134)
!1157 = !DILocation(line: 379, column: 16, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 379, column: 15)
!1159 = !DILocation(line: 379, column: 22, scope: !1158)
!1160 = !DILocation(line: 379, column: 15, scope: !1084)
!1161 = !DILocation(line: 381, column: 26, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 380, column: 13)
!1163 = !DILocation(line: 381, column: 36, scope: !1162)
!1164 = !DILocation(line: 381, column: 43, scope: !1162)
!1165 = !DILocation(line: 381, column: 15, scope: !1162)
!1166 = !DILocation(line: 382, column: 15, scope: !1162)
!1167 = distinct !{!1167, !1166, !1166}
!1168 = !DILocalVariable(name: "_tmp", scope: !1169, file: !3, line: 382, type: !952)
!1169 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 382, column: 15)
!1170 = !DILocation(line: 382, column: 15, scope: !1169)
!1171 = !DILocation(line: 383, column: 27, scope: !1162)
!1172 = !DILocation(line: 383, column: 25, scope: !1162)
!1173 = !DILocation(line: 384, column: 25, scope: !1162)
!1174 = !DILocation(line: 384, column: 23, scope: !1162)
!1175 = !DILocation(line: 385, column: 20, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 385, column: 19)
!1177 = !DILocation(line: 385, column: 19, scope: !1162)
!1178 = !DILocation(line: 386, column: 29, scope: !1176)
!1179 = !DILocation(line: 386, column: 17, scope: !1176)
!1180 = !DILocation(line: 387, column: 13, scope: !1162)
!1181 = distinct !{!1181, !1080, !1182}
!1182 = !DILocation(line: 388, column: 9, scope: !1048)
!1183 = !DILocation(line: 390, column: 18, scope: !1048)
!1184 = !DILocation(line: 390, column: 35, scope: !1048)
!1185 = !DILocation(line: 390, column: 7, scope: !1048)
!1186 = !DILocation(line: 303, column: 62, scope: !985)
!1187 = !DILocation(line: 394, column: 7, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !932, file: !3, line: 394, column: 7)
!1189 = !DILocation(line: 394, column: 22, scope: !1188)
!1190 = !DILocation(line: 394, column: 33, scope: !1188)
!1191 = !DILocation(line: 394, column: 25, scope: !1188)
!1192 = !DILocation(line: 394, column: 40, scope: !1188)
!1193 = !DILocation(line: 394, column: 7, scope: !932)
!1194 = !DILocation(line: 395, column: 52, scope: !1188)
!1195 = !DILocation(line: 395, column: 5, scope: !1188)
!1196 = !DILocation(line: 399, column: 13, scope: !932)
!1197 = !DILocation(line: 399, column: 3, scope: !932)
!1198 = !DILocation(line: 400, column: 13, scope: !932)
!1199 = !DILocation(line: 400, column: 3, scope: !932)
!1200 = !DILocation(line: 401, column: 1, scope: !932)
!1201 = distinct !DISubprogram(name: "find_field", scope: !3, file: !3, line: 209, type: !1202, isLocal: true, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !113)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!60, !1204}
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !942)
!1206 = !DILocalVariable(name: "line", arg: 1, scope: !1201, file: !3, line: 209, type: !1204)
!1207 = !DILocation(line: 209, column: 38, scope: !1201)
!1208 = !DILocalVariable(name: "count", scope: !1201, file: !3, line: 211, type: !57)
!1209 = !DILocation(line: 211, column: 10, scope: !1201)
!1210 = !DILocalVariable(name: "lp", scope: !1201, file: !3, line: 212, type: !52)
!1211 = !DILocation(line: 212, column: 15, scope: !1201)
!1212 = !DILocation(line: 212, column: 20, scope: !1201)
!1213 = !DILocation(line: 212, column: 26, scope: !1201)
!1214 = !DILocalVariable(name: "size", scope: !1201, file: !3, line: 213, type: !57)
!1215 = !DILocation(line: 213, column: 10, scope: !1201)
!1216 = !DILocation(line: 213, column: 17, scope: !1201)
!1217 = !DILocation(line: 213, column: 23, scope: !1201)
!1218 = !DILocation(line: 213, column: 30, scope: !1201)
!1219 = !DILocalVariable(name: "i", scope: !1201, file: !3, line: 214, type: !57)
!1220 = !DILocation(line: 214, column: 10, scope: !1201)
!1221 = !DILocation(line: 216, column: 14, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 216, column: 3)
!1223 = !DILocation(line: 216, column: 8, scope: !1222)
!1224 = !DILocation(line: 216, column: 19, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 216, column: 3)
!1226 = !DILocation(line: 216, column: 25, scope: !1225)
!1227 = !DILocation(line: 216, column: 39, scope: !1225)
!1228 = !DILocation(line: 216, column: 42, scope: !1225)
!1229 = !DILocation(line: 216, column: 46, scope: !1225)
!1230 = !DILocation(line: 216, column: 44, scope: !1225)
!1231 = !DILocation(line: 216, column: 3, scope: !1222)
!1232 = !DILocation(line: 218, column: 7, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 217, column: 5)
!1234 = !DILocation(line: 218, column: 14, scope: !1233)
!1235 = !DILocation(line: 218, column: 18, scope: !1233)
!1236 = !DILocation(line: 218, column: 16, scope: !1233)
!1237 = !DILocation(line: 218, column: 23, scope: !1233)
!1238 = !DILocation(line: 218, column: 26, scope: !1233)
!1239 = !DILocation(line: 219, column: 10, scope: !1233)
!1240 = distinct !{!1240, !1232, !1239}
!1241 = !DILocation(line: 220, column: 7, scope: !1233)
!1242 = !DILocation(line: 220, column: 14, scope: !1233)
!1243 = !DILocation(line: 220, column: 18, scope: !1233)
!1244 = !DILocation(line: 220, column: 16, scope: !1233)
!1245 = !DILocation(line: 220, column: 23, scope: !1233)
!1246 = !DILocation(line: 220, column: 27, scope: !1233)
!1247 = !DILocation(line: 220, column: 26, scope: !1233)
!1248 = !DILocation(line: 221, column: 10, scope: !1233)
!1249 = distinct !{!1249, !1241, !1248}
!1250 = !DILocation(line: 222, column: 5, scope: !1233)
!1251 = !DILocation(line: 216, column: 57, scope: !1225)
!1252 = !DILocation(line: 216, column: 3, scope: !1225)
!1253 = distinct !{!1253, !1231, !1254}
!1254 = !DILocation(line: 222, column: 5, scope: !1222)
!1255 = !DILocation(line: 224, column: 8, scope: !1201)
!1256 = !DILocation(line: 224, column: 5, scope: !1201)
!1257 = !DILocation(line: 226, column: 10, scope: !1201)
!1258 = !DILocation(line: 226, column: 16, scope: !1201)
!1259 = !DILocation(line: 226, column: 25, scope: !1201)
!1260 = !DILocation(line: 226, column: 23, scope: !1201)
!1261 = !DILocation(line: 226, column: 3, scope: !1201)
!1262 = distinct !DISubprogram(name: "different", scope: !3, file: !3, line: 235, type: !1263, isLocal: true, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !113)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!74, !60, !60, !57, !57}
!1265 = !DILocalVariable(name: "old", arg: 1, scope: !1262, file: !3, line: 235, type: !60)
!1266 = !DILocation(line: 235, column: 18, scope: !1262)
!1267 = !DILocalVariable(name: "new", arg: 2, scope: !1262, file: !3, line: 235, type: !60)
!1268 = !DILocation(line: 235, column: 29, scope: !1262)
!1269 = !DILocalVariable(name: "oldlen", arg: 3, scope: !1262, file: !3, line: 235, type: !57)
!1270 = !DILocation(line: 235, column: 41, scope: !1262)
!1271 = !DILocalVariable(name: "newlen", arg: 4, scope: !1262, file: !3, line: 235, type: !57)
!1272 = !DILocation(line: 235, column: 56, scope: !1262)
!1273 = !DILocation(line: 237, column: 21, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 237, column: 7)
!1275 = !DILocation(line: 237, column: 19, scope: !1274)
!1276 = !DILocation(line: 237, column: 7, scope: !1262)
!1277 = !DILocation(line: 238, column: 12, scope: !1274)
!1278 = !DILocation(line: 238, column: 5, scope: !1274)
!1279 = !DILocation(line: 239, column: 21, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 239, column: 7)
!1281 = !DILocation(line: 239, column: 19, scope: !1280)
!1282 = !DILocation(line: 239, column: 7, scope: !1262)
!1283 = !DILocation(line: 240, column: 12, scope: !1280)
!1284 = !DILocation(line: 240, column: 5, scope: !1280)
!1285 = !DILocation(line: 242, column: 7, scope: !1262)
!1286 = !DILocation(line: 245, column: 14, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 243, column: 5)
!1288 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 242, column: 7)
!1289 = !DILocation(line: 245, column: 24, scope: !1287)
!1290 = !DILocation(line: 245, column: 21, scope: !1287)
!1291 = !DILocation(line: 245, column: 31, scope: !1287)
!1292 = !DILocation(line: 245, column: 46, scope: !1287)
!1293 = !DILocation(line: 245, column: 51, scope: !1287)
!1294 = !DILocation(line: 245, column: 56, scope: !1287)
!1295 = !DILocation(line: 245, column: 34, scope: !1287)
!1296 = !DILocation(line: 245, column: 7, scope: !1287)
!1297 = !DILocation(line: 247, column: 12, scope: !1288)
!1298 = !DILocation(line: 248, column: 22, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 247, column: 12)
!1300 = !DILocation(line: 248, column: 27, scope: !1299)
!1301 = !DILocation(line: 248, column: 35, scope: !1299)
!1302 = !DILocation(line: 248, column: 40, scope: !1299)
!1303 = !DILocation(line: 248, column: 12, scope: !1299)
!1304 = !DILocation(line: 248, column: 48, scope: !1299)
!1305 = !DILocation(line: 248, column: 5, scope: !1299)
!1306 = !DILocation(line: 250, column: 12, scope: !1299)
!1307 = !DILocation(line: 250, column: 22, scope: !1299)
!1308 = !DILocation(line: 250, column: 19, scope: !1299)
!1309 = !DILocation(line: 250, column: 29, scope: !1299)
!1310 = !DILocation(line: 250, column: 40, scope: !1299)
!1311 = !DILocation(line: 250, column: 45, scope: !1299)
!1312 = !DILocation(line: 250, column: 50, scope: !1299)
!1313 = !DILocation(line: 250, column: 32, scope: !1299)
!1314 = !DILocation(line: 250, column: 5, scope: !1299)
!1315 = !DILocation(line: 251, column: 1, scope: !1262)
!1316 = distinct !DISubprogram(name: "writeline", scope: !3, file: !3, line: 260, type: !1317, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !113)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{null, !1204, !74, !1053}
!1319 = !DILocalVariable(name: "line", arg: 1, scope: !1316, file: !3, line: 260, type: !1204)
!1320 = !DILocation(line: 260, column: 37, scope: !1316)
!1321 = !DILocalVariable(name: "match", arg: 2, scope: !1316, file: !3, line: 261, type: !74)
!1322 = !DILocation(line: 261, column: 17, scope: !1316)
!1323 = !DILocalVariable(name: "linecount", arg: 3, scope: !1316, file: !3, line: 261, type: !1053)
!1324 = !DILocation(line: 261, column: 34, scope: !1316)
!1325 = !DILocation(line: 263, column: 10, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 263, column: 7)
!1327 = !DILocation(line: 263, column: 20, scope: !1326)
!1328 = !DILocation(line: 263, column: 7, scope: !1316)
!1329 = !DILocation(line: 264, column: 13, scope: !1326)
!1330 = !DILocation(line: 264, column: 12, scope: !1326)
!1331 = !DILocation(line: 266, column: 5, scope: !1326)
!1332 = !DILocation(line: 268, column: 7, scope: !1316)
!1333 = !DILocation(line: 269, column: 31, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 268, column: 7)
!1335 = !DILocation(line: 269, column: 41, scope: !1334)
!1336 = !DILocation(line: 269, column: 5, scope: !1334)
!1337 = !DILocation(line: 271, column: 3, scope: !1316)
!1338 = !DILocation(line: 272, column: 1, scope: !1316)
!1339 = distinct !DISubprogram(name: "to_uchar", scope: !711, file: !711, line: 158, type: !1340, isLocal: true, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !113)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!673, !54}
!1342 = !DILocalVariable(name: "ch", arg: 1, scope: !1339, file: !711, line: 158, type: !54)
!1343 = !DILocation(line: 158, column: 44, scope: !1339)
!1344 = !DILocation(line: 158, column: 57, scope: !1339)
!1345 = !DILocation(line: 158, column: 50, scope: !1339)
!1346 = distinct !DISubprogram(name: "__argmatch_die", scope: !118, file: !118, line: 61, type: !137, isLocal: true, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: false, unit: !117, variables: !113)
!1347 = !DILocation(line: 63, column: 3, scope: !1346)
!1348 = !DILocation(line: 64, column: 1, scope: !1346)
!1349 = distinct !DISubprogram(name: "argmatch", scope: !118, file: !118, line: 83, type: !1350, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false, unit: !117, variables: !113)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!1352, !52, !1354, !52, !172}
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !173, line: 51, baseType: !1353)
!1353 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!1355 = !DILocalVariable(name: "arg", arg: 1, scope: !1349, file: !118, line: 83, type: !52)
!1356 = !DILocation(line: 83, column: 23, scope: !1349)
!1357 = !DILocalVariable(name: "arglist", arg: 2, scope: !1349, file: !118, line: 83, type: !1354)
!1358 = !DILocation(line: 83, column: 47, scope: !1349)
!1359 = !DILocalVariable(name: "vallist", arg: 3, scope: !1349, file: !118, line: 84, type: !52)
!1360 = !DILocation(line: 84, column: 23, scope: !1349)
!1361 = !DILocalVariable(name: "valsize", arg: 4, scope: !1349, file: !118, line: 84, type: !172)
!1362 = !DILocation(line: 84, column: 39, scope: !1349)
!1363 = !DILocalVariable(name: "i", scope: !1349, file: !118, line: 86, type: !172)
!1364 = !DILocation(line: 86, column: 10, scope: !1349)
!1365 = !DILocalVariable(name: "arglen", scope: !1349, file: !118, line: 87, type: !172)
!1366 = !DILocation(line: 87, column: 10, scope: !1349)
!1367 = !DILocalVariable(name: "matchind", scope: !1349, file: !118, line: 88, type: !1352)
!1368 = !DILocation(line: 88, column: 13, scope: !1349)
!1369 = !DILocalVariable(name: "ambiguous", scope: !1349, file: !118, line: 89, type: !74)
!1370 = !DILocation(line: 89, column: 8, scope: !1349)
!1371 = !DILocation(line: 91, column: 20, scope: !1349)
!1372 = !DILocation(line: 91, column: 12, scope: !1349)
!1373 = !DILocation(line: 91, column: 10, scope: !1349)
!1374 = !DILocation(line: 94, column: 10, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1349, file: !118, line: 94, column: 3)
!1376 = !DILocation(line: 94, column: 8, scope: !1375)
!1377 = !DILocation(line: 94, column: 15, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1375, file: !118, line: 94, column: 3)
!1379 = !DILocation(line: 94, column: 23, scope: !1378)
!1380 = !DILocation(line: 94, column: 3, scope: !1375)
!1381 = !DILocation(line: 96, column: 21, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !118, line: 96, column: 11)
!1383 = distinct !DILexicalBlock(scope: !1378, file: !118, line: 95, column: 5)
!1384 = !DILocation(line: 96, column: 29, scope: !1382)
!1385 = !DILocation(line: 96, column: 33, scope: !1382)
!1386 = !DILocation(line: 96, column: 38, scope: !1382)
!1387 = !DILocation(line: 96, column: 12, scope: !1382)
!1388 = !DILocation(line: 96, column: 11, scope: !1383)
!1389 = !DILocation(line: 98, column: 23, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !118, line: 98, column: 15)
!1391 = distinct !DILexicalBlock(scope: !1382, file: !118, line: 97, column: 9)
!1392 = !DILocation(line: 98, column: 31, scope: !1390)
!1393 = !DILocation(line: 98, column: 15, scope: !1390)
!1394 = !DILocation(line: 98, column: 38, scope: !1390)
!1395 = !DILocation(line: 98, column: 35, scope: !1390)
!1396 = !DILocation(line: 98, column: 15, scope: !1391)
!1397 = !DILocation(line: 100, column: 20, scope: !1390)
!1398 = !DILocation(line: 100, column: 13, scope: !1390)
!1399 = !DILocation(line: 101, column: 20, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1390, file: !118, line: 101, column: 20)
!1401 = !DILocation(line: 101, column: 29, scope: !1400)
!1402 = !DILocation(line: 101, column: 20, scope: !1390)
!1403 = !DILocation(line: 103, column: 24, scope: !1400)
!1404 = !DILocation(line: 103, column: 22, scope: !1400)
!1405 = !DILocation(line: 103, column: 13, scope: !1400)
!1406 = !DILocation(line: 107, column: 19, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !118, line: 107, column: 19)
!1408 = distinct !DILexicalBlock(scope: !1400, file: !118, line: 105, column: 13)
!1409 = !DILocation(line: 107, column: 27, scope: !1407)
!1410 = !DILocation(line: 108, column: 19, scope: !1407)
!1411 = !DILocation(line: 108, column: 30, scope: !1407)
!1412 = !DILocation(line: 108, column: 40, scope: !1407)
!1413 = !DILocation(line: 108, column: 50, scope: !1407)
!1414 = !DILocation(line: 108, column: 48, scope: !1407)
!1415 = !DILocation(line: 108, column: 38, scope: !1407)
!1416 = !DILocation(line: 109, column: 30, scope: !1407)
!1417 = !DILocation(line: 109, column: 40, scope: !1407)
!1418 = !DILocation(line: 109, column: 50, scope: !1407)
!1419 = !DILocation(line: 109, column: 48, scope: !1407)
!1420 = !DILocation(line: 109, column: 38, scope: !1407)
!1421 = !DILocation(line: 109, column: 53, scope: !1407)
!1422 = !DILocation(line: 108, column: 22, scope: !1407)
!1423 = !DILocation(line: 107, column: 19, scope: !1408)
!1424 = !DILocation(line: 113, column: 29, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1407, file: !118, line: 110, column: 17)
!1426 = !DILocation(line: 114, column: 17, scope: !1425)
!1427 = !DILocation(line: 116, column: 9, scope: !1391)
!1428 = !DILocation(line: 117, column: 5, scope: !1383)
!1429 = !DILocation(line: 94, column: 28, scope: !1378)
!1430 = !DILocation(line: 94, column: 3, scope: !1378)
!1431 = distinct !{!1431, !1380, !1432}
!1432 = !DILocation(line: 117, column: 5, scope: !1375)
!1433 = !DILocation(line: 118, column: 7, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1349, file: !118, line: 118, column: 7)
!1435 = !DILocation(line: 118, column: 7, scope: !1349)
!1436 = !DILocation(line: 119, column: 5, scope: !1434)
!1437 = !DILocation(line: 121, column: 12, scope: !1434)
!1438 = !DILocation(line: 121, column: 5, scope: !1434)
!1439 = !DILocation(line: 122, column: 1, scope: !1349)
!1440 = distinct !DISubprogram(name: "argmatch_invalid", scope: !118, file: !118, line: 130, type: !1441, isLocal: false, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false, unit: !117, variables: !113)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{null, !52, !52, !1352}
!1443 = !DILocalVariable(name: "context", arg: 1, scope: !1440, file: !118, line: 130, type: !52)
!1444 = !DILocation(line: 130, column: 31, scope: !1440)
!1445 = !DILocalVariable(name: "value", arg: 2, scope: !1440, file: !118, line: 130, type: !52)
!1446 = !DILocation(line: 130, column: 52, scope: !1440)
!1447 = !DILocalVariable(name: "problem", arg: 3, scope: !1440, file: !118, line: 130, type: !1352)
!1448 = !DILocation(line: 130, column: 69, scope: !1440)
!1449 = !DILocalVariable(name: "format", scope: !1440, file: !118, line: 132, type: !52)
!1450 = !DILocation(line: 132, column: 15, scope: !1440)
!1451 = !DILocation(line: 132, column: 25, scope: !1440)
!1452 = !DILocation(line: 132, column: 33, scope: !1440)
!1453 = !DILocation(line: 136, column: 16, scope: !1440)
!1454 = !DILocation(line: 136, column: 69, scope: !1440)
!1455 = !DILocation(line: 136, column: 24, scope: !1440)
!1456 = !DILocation(line: 137, column: 22, scope: !1440)
!1457 = !DILocation(line: 137, column: 10, scope: !1440)
!1458 = !DILocation(line: 136, column: 3, scope: !1440)
!1459 = !DILocation(line: 138, column: 1, scope: !1440)
!1460 = distinct !DISubprogram(name: "argmatch_valid", scope: !118, file: !118, line: 145, type: !1461, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false, unit: !117, variables: !113)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{null, !1354, !52, !172}
!1463 = !DILocalVariable(name: "arglist", arg: 1, scope: !1460, file: !118, line: 145, type: !1354)
!1464 = !DILocation(line: 145, column: 36, scope: !1460)
!1465 = !DILocalVariable(name: "vallist", arg: 2, scope: !1460, file: !118, line: 146, type: !52)
!1466 = !DILocation(line: 146, column: 29, scope: !1460)
!1467 = !DILocalVariable(name: "valsize", arg: 3, scope: !1460, file: !118, line: 146, type: !172)
!1468 = !DILocation(line: 146, column: 45, scope: !1460)
!1469 = !DILocalVariable(name: "i", scope: !1460, file: !118, line: 148, type: !172)
!1470 = !DILocation(line: 148, column: 10, scope: !1460)
!1471 = !DILocalVariable(name: "last_val", scope: !1460, file: !118, line: 149, type: !52)
!1472 = !DILocation(line: 149, column: 15, scope: !1460)
!1473 = !DILocation(line: 153, column: 3, scope: !1460)
!1474 = !DILocation(line: 154, column: 10, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1460, file: !118, line: 154, column: 3)
!1476 = !DILocation(line: 154, column: 8, scope: !1475)
!1477 = !DILocation(line: 154, column: 15, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1475, file: !118, line: 154, column: 3)
!1479 = !DILocation(line: 154, column: 23, scope: !1478)
!1480 = !DILocation(line: 154, column: 3, scope: !1475)
!1481 = !DILocation(line: 155, column: 10, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1478, file: !118, line: 155, column: 9)
!1483 = !DILocation(line: 155, column: 12, scope: !1482)
!1484 = !DILocation(line: 156, column: 9, scope: !1482)
!1485 = !DILocation(line: 156, column: 20, scope: !1482)
!1486 = !DILocation(line: 156, column: 30, scope: !1482)
!1487 = !DILocation(line: 156, column: 40, scope: !1482)
!1488 = !DILocation(line: 156, column: 50, scope: !1482)
!1489 = !DILocation(line: 156, column: 48, scope: !1482)
!1490 = !DILocation(line: 156, column: 38, scope: !1482)
!1491 = !DILocation(line: 156, column: 53, scope: !1482)
!1492 = !DILocation(line: 156, column: 12, scope: !1482)
!1493 = !DILocation(line: 155, column: 9, scope: !1478)
!1494 = !DILocation(line: 158, column: 18, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1482, file: !118, line: 157, column: 7)
!1496 = !DILocation(line: 158, column: 45, scope: !1495)
!1497 = !DILocation(line: 158, column: 53, scope: !1495)
!1498 = !DILocation(line: 158, column: 38, scope: !1495)
!1499 = !DILocation(line: 158, column: 9, scope: !1495)
!1500 = !DILocation(line: 159, column: 20, scope: !1495)
!1501 = !DILocation(line: 159, column: 30, scope: !1495)
!1502 = !DILocation(line: 159, column: 40, scope: !1495)
!1503 = !DILocation(line: 159, column: 38, scope: !1495)
!1504 = !DILocation(line: 159, column: 28, scope: !1495)
!1505 = !DILocation(line: 159, column: 18, scope: !1495)
!1506 = !DILocation(line: 160, column: 7, scope: !1495)
!1507 = !DILocation(line: 163, column: 18, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1482, file: !118, line: 162, column: 7)
!1509 = !DILocation(line: 163, column: 41, scope: !1508)
!1510 = !DILocation(line: 163, column: 49, scope: !1508)
!1511 = !DILocation(line: 163, column: 34, scope: !1508)
!1512 = !DILocation(line: 163, column: 9, scope: !1508)
!1513 = !DILocation(line: 156, column: 60, scope: !1482)
!1514 = !DILocation(line: 154, column: 28, scope: !1478)
!1515 = !DILocation(line: 154, column: 3, scope: !1478)
!1516 = distinct !{!1516, !1480, !1517}
!1517 = !DILocation(line: 164, column: 7, scope: !1475)
!1518 = !DILocation(line: 165, column: 3, scope: !1460)
!1519 = !DILocation(line: 166, column: 1, scope: !1460)
!1520 = distinct !DISubprogram(name: "__xargmatch_internal", scope: !118, file: !118, line: 175, type: !1521, isLocal: false, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: false, unit: !117, variables: !113)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!1352, !52, !52, !1354, !52, !172, !134}
!1523 = !DILocalVariable(name: "context", arg: 1, scope: !1520, file: !118, line: 175, type: !52)
!1524 = !DILocation(line: 175, column: 35, scope: !1520)
!1525 = !DILocalVariable(name: "arg", arg: 2, scope: !1520, file: !118, line: 176, type: !52)
!1526 = !DILocation(line: 176, column: 35, scope: !1520)
!1527 = !DILocalVariable(name: "arglist", arg: 3, scope: !1520, file: !118, line: 176, type: !1354)
!1528 = !DILocation(line: 176, column: 59, scope: !1520)
!1529 = !DILocalVariable(name: "vallist", arg: 4, scope: !1520, file: !118, line: 177, type: !52)
!1530 = !DILocation(line: 177, column: 35, scope: !1520)
!1531 = !DILocalVariable(name: "valsize", arg: 5, scope: !1520, file: !118, line: 177, type: !172)
!1532 = !DILocation(line: 177, column: 51, scope: !1520)
!1533 = !DILocalVariable(name: "exit_fn", arg: 6, scope: !1520, file: !118, line: 178, type: !134)
!1534 = !DILocation(line: 178, column: 40, scope: !1520)
!1535 = !DILocalVariable(name: "res", scope: !1520, file: !118, line: 180, type: !1352)
!1536 = !DILocation(line: 180, column: 13, scope: !1520)
!1537 = !DILocation(line: 180, column: 29, scope: !1520)
!1538 = !DILocation(line: 180, column: 34, scope: !1520)
!1539 = !DILocation(line: 180, column: 43, scope: !1520)
!1540 = !DILocation(line: 180, column: 52, scope: !1520)
!1541 = !DILocation(line: 180, column: 19, scope: !1520)
!1542 = !DILocation(line: 181, column: 7, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1520, file: !118, line: 181, column: 7)
!1544 = !DILocation(line: 181, column: 11, scope: !1543)
!1545 = !DILocation(line: 181, column: 7, scope: !1520)
!1546 = !DILocation(line: 183, column: 12, scope: !1543)
!1547 = !DILocation(line: 183, column: 5, scope: !1543)
!1548 = !DILocation(line: 186, column: 21, scope: !1520)
!1549 = !DILocation(line: 186, column: 30, scope: !1520)
!1550 = !DILocation(line: 186, column: 35, scope: !1520)
!1551 = !DILocation(line: 186, column: 3, scope: !1520)
!1552 = !DILocation(line: 187, column: 19, scope: !1520)
!1553 = !DILocation(line: 187, column: 28, scope: !1520)
!1554 = !DILocation(line: 187, column: 37, scope: !1520)
!1555 = !DILocation(line: 187, column: 3, scope: !1520)
!1556 = !DILocation(line: 188, column: 5, scope: !1520)
!1557 = !DILocation(line: 188, column: 3, scope: !1520)
!1558 = !DILocation(line: 190, column: 3, scope: !1520)
!1559 = !DILocation(line: 191, column: 1, scope: !1520)
!1560 = distinct !DISubprogram(name: "argmatch_to_argument", scope: !118, file: !118, line: 196, type: !1561, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: false, unit: !117, variables: !113)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!52, !52, !1354, !52, !172}
!1563 = !DILocalVariable(name: "value", arg: 1, scope: !1560, file: !118, line: 196, type: !52)
!1564 = !DILocation(line: 196, column: 35, scope: !1560)
!1565 = !DILocalVariable(name: "arglist", arg: 2, scope: !1560, file: !118, line: 197, type: !1354)
!1566 = !DILocation(line: 197, column: 42, scope: !1560)
!1567 = !DILocalVariable(name: "vallist", arg: 3, scope: !1560, file: !118, line: 198, type: !52)
!1568 = !DILocation(line: 198, column: 35, scope: !1560)
!1569 = !DILocalVariable(name: "valsize", arg: 4, scope: !1560, file: !118, line: 198, type: !172)
!1570 = !DILocation(line: 198, column: 51, scope: !1560)
!1571 = !DILocalVariable(name: "i", scope: !1560, file: !118, line: 200, type: !172)
!1572 = !DILocation(line: 200, column: 10, scope: !1560)
!1573 = !DILocation(line: 202, column: 10, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1560, file: !118, line: 202, column: 3)
!1575 = !DILocation(line: 202, column: 8, scope: !1574)
!1576 = !DILocation(line: 202, column: 15, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1574, file: !118, line: 202, column: 3)
!1578 = !DILocation(line: 202, column: 23, scope: !1577)
!1579 = !DILocation(line: 202, column: 3, scope: !1574)
!1580 = !DILocation(line: 203, column: 18, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1577, file: !118, line: 203, column: 9)
!1582 = !DILocation(line: 203, column: 25, scope: !1581)
!1583 = !DILocation(line: 203, column: 35, scope: !1581)
!1584 = !DILocation(line: 203, column: 45, scope: !1581)
!1585 = !DILocation(line: 203, column: 43, scope: !1581)
!1586 = !DILocation(line: 203, column: 33, scope: !1581)
!1587 = !DILocation(line: 203, column: 48, scope: !1581)
!1588 = !DILocation(line: 203, column: 10, scope: !1581)
!1589 = !DILocation(line: 203, column: 9, scope: !1577)
!1590 = !DILocation(line: 204, column: 14, scope: !1581)
!1591 = !DILocation(line: 204, column: 22, scope: !1581)
!1592 = !DILocation(line: 204, column: 7, scope: !1581)
!1593 = !DILocation(line: 203, column: 55, scope: !1581)
!1594 = !DILocation(line: 202, column: 28, scope: !1577)
!1595 = !DILocation(line: 202, column: 3, scope: !1577)
!1596 = distinct !{!1596, !1579, !1597}
!1597 = !DILocation(line: 204, column: 23, scope: !1574)
!1598 = !DILocation(line: 205, column: 3, scope: !1560)
!1599 = !DILocation(line: 206, column: 1, scope: !1560)
!1600 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !142, file: !142, line: 41, type: !1601, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: false, unit: !141, variables: !113)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{null, !52}
!1603 = !DILocalVariable(name: "file", arg: 1, scope: !1600, file: !142, line: 41, type: !52)
!1604 = !DILocation(line: 41, column: 41, scope: !1600)
!1605 = !DILocation(line: 43, column: 15, scope: !1600)
!1606 = !DILocation(line: 43, column: 13, scope: !1600)
!1607 = !DILocation(line: 44, column: 1, scope: !1600)
!1608 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !142, file: !142, line: 78, type: !1609, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !141, variables: !113)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{null, !74}
!1611 = !DILocalVariable(name: "ignore", arg: 1, scope: !1608, file: !142, line: 78, type: !74)
!1612 = !DILocation(line: 78, column: 37, scope: !1608)
!1613 = !DILocation(line: 80, column: 18, scope: !1608)
!1614 = !DILocation(line: 80, column: 16, scope: !1608)
!1615 = !DILocation(line: 81, column: 1, scope: !1608)
!1616 = distinct !DISubprogram(name: "close_stdout", scope: !142, file: !142, line: 107, type: !137, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: false, unit: !141, variables: !113)
!1617 = !DILocation(line: 109, column: 21, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1616, file: !142, line: 109, column: 7)
!1619 = !DILocation(line: 109, column: 7, scope: !1618)
!1620 = !DILocation(line: 109, column: 29, scope: !1618)
!1621 = !DILocation(line: 110, column: 7, scope: !1618)
!1622 = !DILocation(line: 110, column: 12, scope: !1618)
!1623 = !DILocation(line: 110, column: 25, scope: !1618)
!1624 = !DILocation(line: 110, column: 28, scope: !1618)
!1625 = !DILocation(line: 110, column: 34, scope: !1618)
!1626 = !DILocation(line: 109, column: 7, scope: !1616)
!1627 = !DILocalVariable(name: "write_error", scope: !1628, file: !142, line: 112, type: !52)
!1628 = distinct !DILexicalBlock(scope: !1618, file: !142, line: 111, column: 5)
!1629 = !DILocation(line: 112, column: 19, scope: !1628)
!1630 = !DILocation(line: 113, column: 11, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1628, file: !142, line: 113, column: 11)
!1632 = !DILocation(line: 113, column: 11, scope: !1628)
!1633 = !DILocation(line: 114, column: 19, scope: !1631)
!1634 = !DILocation(line: 114, column: 52, scope: !1631)
!1635 = !DILocation(line: 114, column: 36, scope: !1631)
!1636 = !DILocation(line: 115, column: 16, scope: !1631)
!1637 = !DILocation(line: 114, column: 9, scope: !1631)
!1638 = !DILocation(line: 117, column: 19, scope: !1631)
!1639 = !DILocation(line: 117, column: 32, scope: !1631)
!1640 = !DILocation(line: 117, column: 9, scope: !1631)
!1641 = !DILocation(line: 119, column: 14, scope: !1628)
!1642 = !DILocation(line: 119, column: 7, scope: !1628)
!1643 = !DILocation(line: 122, column: 22, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1616, file: !142, line: 122, column: 8)
!1645 = !DILocation(line: 122, column: 8, scope: !1644)
!1646 = !DILocation(line: 122, column: 30, scope: !1644)
!1647 = !DILocation(line: 122, column: 8, scope: !1616)
!1648 = !DILocation(line: 123, column: 13, scope: !1644)
!1649 = !DILocation(line: 123, column: 6, scope: !1644)
!1650 = !DILocation(line: 124, column: 1, scope: !1616)
!1651 = distinct !DISubprogram(name: "last_component", scope: !615, file: !615, line: 30, type: !1652, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: false, unit: !614, variables: !113)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!60, !52}
!1654 = !DILocalVariable(name: "name", arg: 1, scope: !1651, file: !615, line: 30, type: !52)
!1655 = !DILocation(line: 30, column: 29, scope: !1651)
!1656 = !DILocalVariable(name: "base", scope: !1651, file: !615, line: 32, type: !52)
!1657 = !DILocation(line: 32, column: 15, scope: !1651)
!1658 = !DILocation(line: 32, column: 22, scope: !1651)
!1659 = !DILocation(line: 32, column: 27, scope: !1651)
!1660 = !DILocalVariable(name: "p", scope: !1651, file: !615, line: 33, type: !52)
!1661 = !DILocation(line: 33, column: 15, scope: !1651)
!1662 = !DILocalVariable(name: "saw_slash", scope: !1651, file: !615, line: 34, type: !74)
!1663 = !DILocation(line: 34, column: 8, scope: !1651)
!1664 = !DILocation(line: 36, column: 3, scope: !1651)
!1665 = !DILocation(line: 36, column: 10, scope: !1651)
!1666 = !DILocation(line: 37, column: 9, scope: !1651)
!1667 = distinct !{!1667, !1664, !1666}
!1668 = !DILocation(line: 39, column: 12, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1651, file: !615, line: 39, column: 3)
!1670 = !DILocation(line: 39, column: 10, scope: !1669)
!1671 = !DILocation(line: 39, column: 8, scope: !1669)
!1672 = !DILocation(line: 39, column: 19, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1669, file: !615, line: 39, column: 3)
!1674 = !DILocation(line: 39, column: 18, scope: !1673)
!1675 = !DILocation(line: 39, column: 3, scope: !1669)
!1676 = !DILocation(line: 41, column: 11, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !615, line: 41, column: 11)
!1678 = distinct !DILexicalBlock(scope: !1673, file: !615, line: 40, column: 5)
!1679 = !DILocation(line: 41, column: 11, scope: !1678)
!1680 = !DILocation(line: 42, column: 19, scope: !1677)
!1681 = !DILocation(line: 42, column: 9, scope: !1677)
!1682 = !DILocation(line: 43, column: 16, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1677, file: !615, line: 43, column: 16)
!1684 = !DILocation(line: 43, column: 16, scope: !1677)
!1685 = !DILocation(line: 45, column: 18, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1683, file: !615, line: 44, column: 9)
!1687 = !DILocation(line: 45, column: 16, scope: !1686)
!1688 = !DILocation(line: 46, column: 21, scope: !1686)
!1689 = !DILocation(line: 47, column: 9, scope: !1686)
!1690 = !DILocation(line: 48, column: 5, scope: !1678)
!1691 = !DILocation(line: 39, column: 23, scope: !1673)
!1692 = !DILocation(line: 39, column: 3, scope: !1673)
!1693 = distinct !{!1693, !1675, !1694}
!1694 = !DILocation(line: 48, column: 5, scope: !1669)
!1695 = !DILocation(line: 50, column: 19, scope: !1651)
!1696 = !DILocation(line: 50, column: 3, scope: !1651)
!1697 = distinct !DISubprogram(name: "base_len", scope: !615, file: !615, line: 58, type: !1698, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, unit: !614, variables: !113)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!172, !52}
!1700 = !DILocalVariable(name: "name", arg: 1, scope: !1697, file: !615, line: 58, type: !52)
!1701 = !DILocation(line: 58, column: 23, scope: !1697)
!1702 = !DILocalVariable(name: "len", scope: !1697, file: !615, line: 60, type: !172)
!1703 = !DILocation(line: 60, column: 10, scope: !1697)
!1704 = !DILocalVariable(name: "prefix_len", scope: !1697, file: !615, line: 61, type: !172)
!1705 = !DILocation(line: 61, column: 10, scope: !1697)
!1706 = !DILocation(line: 63, column: 22, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1697, file: !615, line: 63, column: 3)
!1708 = !DILocation(line: 63, column: 14, scope: !1707)
!1709 = !DILocation(line: 63, column: 12, scope: !1707)
!1710 = !DILocation(line: 63, column: 8, scope: !1707)
!1711 = !DILocation(line: 63, column: 34, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1707, file: !615, line: 63, column: 3)
!1713 = !DILocation(line: 63, column: 32, scope: !1712)
!1714 = !DILocation(line: 63, column: 38, scope: !1712)
!1715 = !DILocation(line: 63, column: 41, scope: !1712)
!1716 = !DILocation(line: 63, column: 3, scope: !1707)
!1717 = !DILocation(line: 64, column: 5, scope: !1712)
!1718 = !DILocation(line: 63, column: 70, scope: !1712)
!1719 = !DILocation(line: 63, column: 3, scope: !1712)
!1720 = distinct !{!1720, !1716, !1721}
!1721 = !DILocation(line: 64, column: 5, scope: !1707)
!1722 = !DILocation(line: 74, column: 10, scope: !1697)
!1723 = !DILocation(line: 74, column: 3, scope: !1697)
!1724 = distinct !DISubprogram(name: "fdadvise", scope: !618, file: !618, line: 25, type: !1725, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: false, unit: !617, variables: !113)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{null, !61, !1727, !1727, !1731}
!1727 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1728, line: 57, baseType: !1729)
!1728 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1730, line: 140, baseType: !1353)
!1730 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!1731 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !621, line: 52, baseType: !620)
!1732 = !DILocalVariable(name: "fd", arg: 1, scope: !1724, file: !618, line: 25, type: !61)
!1733 = !DILocation(line: 25, column: 15, scope: !1724)
!1734 = !DILocalVariable(name: "offset", arg: 2, scope: !1724, file: !618, line: 25, type: !1727)
!1735 = !DILocation(line: 25, column: 25, scope: !1724)
!1736 = !DILocalVariable(name: "len", arg: 3, scope: !1724, file: !618, line: 25, type: !1727)
!1737 = !DILocation(line: 25, column: 39, scope: !1724)
!1738 = !DILocalVariable(name: "advice", arg: 4, scope: !1724, file: !618, line: 25, type: !1731)
!1739 = !DILocation(line: 25, column: 54, scope: !1724)
!1740 = !DILocalVariable(name: "__x", scope: !1741, file: !618, line: 28, type: !61)
!1741 = distinct !DILexicalBlock(scope: !1724, file: !618, line: 28, column: 3)
!1742 = !DILocation(line: 28, column: 3, scope: !1741)
!1743 = !DILocation(line: 30, column: 1, scope: !1724)
!1744 = distinct !DISubprogram(name: "fadvise", scope: !618, file: !618, line: 33, type: !1745, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: false, unit: !617, variables: !113)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{null, !1747, !1731}
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1749, line: 7, baseType: !1750)
!1749 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1751, line: 245, size: 1728, elements: !1752)
!1751 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/libio.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!1752 = !{!1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1773, !1774, !1775, !1776, !1777, !1778, !1780, !1784, !1787, !1789, !1790, !1791, !1792, !1793, !1794, !1795}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1750, file: !1751, line: 246, baseType: !61, size: 32)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1750, file: !1751, line: 251, baseType: !60, size: 64, offset: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1750, file: !1751, line: 252, baseType: !60, size: 64, offset: 128)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1750, file: !1751, line: 253, baseType: !60, size: 64, offset: 192)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1750, file: !1751, line: 254, baseType: !60, size: 64, offset: 256)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1750, file: !1751, line: 255, baseType: !60, size: 64, offset: 320)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1750, file: !1751, line: 256, baseType: !60, size: 64, offset: 384)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1750, file: !1751, line: 257, baseType: !60, size: 64, offset: 448)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1750, file: !1751, line: 258, baseType: !60, size: 64, offset: 512)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1750, file: !1751, line: 260, baseType: !60, size: 64, offset: 576)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1750, file: !1751, line: 261, baseType: !60, size: 64, offset: 640)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1750, file: !1751, line: 262, baseType: !60, size: 64, offset: 704)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1750, file: !1751, line: 264, baseType: !1766, size: 64, offset: 768)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1751, line: 160, size: 192, elements: !1768)
!1768 = !{!1769, !1770, !1772}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1767, file: !1751, line: 161, baseType: !1766, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1767, file: !1751, line: 162, baseType: !1771, size: 64, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1767, file: !1751, line: 166, baseType: !61, size: 32, offset: 128)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1750, file: !1751, line: 266, baseType: !1771, size: 64, offset: 832)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1750, file: !1751, line: 268, baseType: !61, size: 32, offset: 896)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1750, file: !1751, line: 272, baseType: !61, size: 32, offset: 928)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1750, file: !1751, line: 274, baseType: !1729, size: 64, offset: 960)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1750, file: !1751, line: 278, baseType: !62, size: 16, offset: 1024)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1750, file: !1751, line: 279, baseType: !1779, size: 8, offset: 1040)
!1779 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1750, file: !1751, line: 280, baseType: !1781, size: 8, offset: 1048)
!1781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 8, elements: !1782)
!1782 = !{!1783}
!1783 = !DISubrange(count: 1)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1750, file: !1751, line: 284, baseType: !1785, size: 64, offset: 1088)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1751, line: 154, baseType: null)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1750, file: !1751, line: 293, baseType: !1788, size: 64, offset: 1152)
!1788 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1730, line: 141, baseType: !1353)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1750, file: !1751, line: 301, baseType: !55, size: 64, offset: 1216)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1750, file: !1751, line: 302, baseType: !55, size: 64, offset: 1280)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1750, file: !1751, line: 303, baseType: !55, size: 64, offset: 1344)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1750, file: !1751, line: 304, baseType: !55, size: 64, offset: 1408)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1750, file: !1751, line: 306, baseType: !172, size: 64, offset: 1472)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1750, file: !1751, line: 307, baseType: !61, size: 32, offset: 1536)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1750, file: !1751, line: 309, baseType: !1796, size: 160, offset: 1568)
!1796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 160, elements: !1797)
!1797 = !{!1798}
!1798 = !DISubrange(count: 20)
!1799 = !DILocalVariable(name: "fp", arg: 1, scope: !1744, file: !618, line: 33, type: !1747)
!1800 = !DILocation(line: 33, column: 16, scope: !1744)
!1801 = !DILocalVariable(name: "advice", arg: 2, scope: !1744, file: !618, line: 33, type: !1731)
!1802 = !DILocation(line: 33, column: 30, scope: !1744)
!1803 = !DILocation(line: 35, column: 7, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1744, file: !618, line: 35, column: 7)
!1805 = !DILocation(line: 35, column: 7, scope: !1744)
!1806 = !DILocation(line: 36, column: 23, scope: !1804)
!1807 = !DILocation(line: 36, column: 15, scope: !1804)
!1808 = !DILocation(line: 36, column: 34, scope: !1804)
!1809 = !DILocation(line: 36, column: 5, scope: !1804)
!1810 = !DILocation(line: 37, column: 1, scope: !1744)
!1811 = distinct !DISubprogram(name: "freopen_safer", scope: !623, file: !623, line: 54, type: !1812, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: false, unit: !622, variables: !113)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!1814, !52, !52, !1814}
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1749, line: 7, baseType: !1816)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1751, line: 245, size: 1728, elements: !1817)
!1817 = !{!1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1816, file: !1751, line: 246, baseType: !61, size: 32)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1816, file: !1751, line: 251, baseType: !60, size: 64, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1816, file: !1751, line: 252, baseType: !60, size: 64, offset: 128)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1816, file: !1751, line: 253, baseType: !60, size: 64, offset: 192)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1816, file: !1751, line: 254, baseType: !60, size: 64, offset: 256)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1816, file: !1751, line: 255, baseType: !60, size: 64, offset: 320)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1816, file: !1751, line: 256, baseType: !60, size: 64, offset: 384)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1816, file: !1751, line: 257, baseType: !60, size: 64, offset: 448)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1816, file: !1751, line: 258, baseType: !60, size: 64, offset: 512)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1816, file: !1751, line: 260, baseType: !60, size: 64, offset: 576)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1816, file: !1751, line: 261, baseType: !60, size: 64, offset: 640)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1816, file: !1751, line: 262, baseType: !60, size: 64, offset: 704)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1816, file: !1751, line: 264, baseType: !1831, size: 64, offset: 768)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1751, line: 160, size: 192, elements: !1833)
!1833 = !{!1834, !1835, !1837}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1832, file: !1751, line: 161, baseType: !1831, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1832, file: !1751, line: 162, baseType: !1836, size: 64, offset: 64)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1832, file: !1751, line: 166, baseType: !61, size: 32, offset: 128)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1816, file: !1751, line: 266, baseType: !1836, size: 64, offset: 832)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1816, file: !1751, line: 268, baseType: !61, size: 32, offset: 896)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1816, file: !1751, line: 272, baseType: !61, size: 32, offset: 928)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1816, file: !1751, line: 274, baseType: !1729, size: 64, offset: 960)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1816, file: !1751, line: 278, baseType: !62, size: 16, offset: 1024)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1816, file: !1751, line: 279, baseType: !1779, size: 8, offset: 1040)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1816, file: !1751, line: 280, baseType: !1781, size: 8, offset: 1048)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1816, file: !1751, line: 284, baseType: !1785, size: 64, offset: 1088)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1816, file: !1751, line: 293, baseType: !1788, size: 64, offset: 1152)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1816, file: !1751, line: 301, baseType: !55, size: 64, offset: 1216)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1816, file: !1751, line: 302, baseType: !55, size: 64, offset: 1280)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1816, file: !1751, line: 303, baseType: !55, size: 64, offset: 1344)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1816, file: !1751, line: 304, baseType: !55, size: 64, offset: 1408)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1816, file: !1751, line: 306, baseType: !172, size: 64, offset: 1472)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1816, file: !1751, line: 307, baseType: !61, size: 32, offset: 1536)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1816, file: !1751, line: 309, baseType: !1796, size: 160, offset: 1568)
!1854 = !DILocalVariable(name: "name", arg: 1, scope: !1811, file: !623, line: 54, type: !52)
!1855 = !DILocation(line: 54, column: 28, scope: !1811)
!1856 = !DILocalVariable(name: "mode", arg: 2, scope: !1811, file: !623, line: 54, type: !52)
!1857 = !DILocation(line: 54, column: 46, scope: !1811)
!1858 = !DILocalVariable(name: "f", arg: 3, scope: !1811, file: !623, line: 54, type: !1814)
!1859 = !DILocation(line: 54, column: 58, scope: !1811)
!1860 = !DILocalVariable(name: "protect_in", scope: !1811, file: !623, line: 62, type: !74)
!1861 = !DILocation(line: 62, column: 8, scope: !1811)
!1862 = !DILocalVariable(name: "protect_out", scope: !1811, file: !623, line: 63, type: !74)
!1863 = !DILocation(line: 63, column: 8, scope: !1811)
!1864 = !DILocalVariable(name: "protect_err", scope: !1811, file: !623, line: 64, type: !74)
!1865 = !DILocation(line: 64, column: 8, scope: !1811)
!1866 = !DILocalVariable(name: "saved_errno", scope: !1811, file: !623, line: 65, type: !61)
!1867 = !DILocation(line: 65, column: 7, scope: !1811)
!1868 = !DILocation(line: 67, column: 19, scope: !1811)
!1869 = !DILocation(line: 67, column: 11, scope: !1811)
!1870 = !DILocation(line: 67, column: 3, scope: !1811)
!1871 = !DILocation(line: 70, column: 11, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !623, line: 70, column: 11)
!1873 = distinct !DILexicalBlock(scope: !1811, file: !623, line: 68, column: 5)
!1874 = !DILocation(line: 70, column: 47, scope: !1872)
!1875 = !DILocation(line: 70, column: 11, scope: !1873)
!1876 = !DILocation(line: 71, column: 21, scope: !1872)
!1877 = !DILocation(line: 71, column: 9, scope: !1872)
!1878 = !DILocation(line: 70, column: 50, scope: !1872)
!1879 = !DILocation(line: 74, column: 11, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1873, file: !623, line: 74, column: 11)
!1881 = !DILocation(line: 74, column: 47, scope: !1880)
!1882 = !DILocation(line: 74, column: 11, scope: !1873)
!1883 = !DILocation(line: 75, column: 21, scope: !1880)
!1884 = !DILocation(line: 75, column: 9, scope: !1880)
!1885 = !DILocation(line: 74, column: 50, scope: !1880)
!1886 = !DILocation(line: 78, column: 11, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1873, file: !623, line: 78, column: 11)
!1888 = !DILocation(line: 78, column: 45, scope: !1887)
!1889 = !DILocation(line: 78, column: 11, scope: !1873)
!1890 = !DILocation(line: 79, column: 20, scope: !1887)
!1891 = !DILocation(line: 79, column: 9, scope: !1887)
!1892 = !DILocation(line: 78, column: 48, scope: !1887)
!1893 = !DILocation(line: 83, column: 7, scope: !1873)
!1894 = !DILocation(line: 85, column: 7, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1811, file: !623, line: 85, column: 7)
!1896 = !DILocation(line: 85, column: 18, scope: !1895)
!1897 = !DILocation(line: 85, column: 22, scope: !1895)
!1898 = !DILocation(line: 85, column: 7, scope: !1811)
!1899 = !DILocation(line: 86, column: 7, scope: !1895)
!1900 = !DILocation(line: 86, column: 5, scope: !1895)
!1901 = !DILocation(line: 87, column: 12, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1895, file: !623, line: 87, column: 12)
!1903 = !DILocation(line: 87, column: 24, scope: !1902)
!1904 = !DILocation(line: 87, column: 28, scope: !1902)
!1905 = !DILocation(line: 87, column: 12, scope: !1895)
!1906 = !DILocation(line: 88, column: 7, scope: !1902)
!1907 = !DILocation(line: 88, column: 5, scope: !1902)
!1908 = !DILocation(line: 89, column: 12, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1902, file: !623, line: 89, column: 12)
!1910 = !DILocation(line: 89, column: 24, scope: !1909)
!1911 = !DILocation(line: 89, column: 28, scope: !1909)
!1912 = !DILocation(line: 89, column: 12, scope: !1902)
!1913 = !DILocation(line: 90, column: 7, scope: !1909)
!1914 = !DILocation(line: 90, column: 5, scope: !1909)
!1915 = !DILocation(line: 92, column: 18, scope: !1909)
!1916 = !DILocation(line: 92, column: 24, scope: !1909)
!1917 = !DILocation(line: 92, column: 30, scope: !1909)
!1918 = !DILocation(line: 92, column: 9, scope: !1909)
!1919 = !DILocation(line: 92, column: 7, scope: !1909)
!1920 = !DILocation(line: 93, column: 17, scope: !1811)
!1921 = !DILocation(line: 93, column: 15, scope: !1811)
!1922 = !DILocation(line: 94, column: 7, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1811, file: !623, line: 94, column: 7)
!1924 = !DILocation(line: 94, column: 7, scope: !1811)
!1925 = !DILocation(line: 95, column: 5, scope: !1923)
!1926 = !DILocation(line: 96, column: 7, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1811, file: !623, line: 96, column: 7)
!1928 = !DILocation(line: 96, column: 7, scope: !1811)
!1929 = !DILocation(line: 97, column: 5, scope: !1927)
!1930 = !DILocation(line: 98, column: 7, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1811, file: !623, line: 98, column: 7)
!1932 = !DILocation(line: 98, column: 7, scope: !1811)
!1933 = !DILocation(line: 99, column: 5, scope: !1931)
!1934 = !DILocation(line: 100, column: 8, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1811, file: !623, line: 100, column: 7)
!1936 = !DILocation(line: 100, column: 7, scope: !1811)
!1937 = !DILocation(line: 101, column: 13, scope: !1935)
!1938 = !DILocation(line: 101, column: 5, scope: !1935)
!1939 = !DILocation(line: 101, column: 11, scope: !1935)
!1940 = !DILocation(line: 102, column: 10, scope: !1811)
!1941 = !DILocation(line: 102, column: 3, scope: !1811)
!1942 = distinct !DISubprogram(name: "protect_fd", scope: !623, file: !623, line: 32, type: !1943, isLocal: true, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: false, unit: !622, variables: !113)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!74, !61}
!1945 = !DILocalVariable(name: "fd", arg: 1, scope: !1942, file: !623, line: 32, type: !61)
!1946 = !DILocation(line: 32, column: 17, scope: !1942)
!1947 = !DILocalVariable(name: "value", scope: !1942, file: !623, line: 34, type: !61)
!1948 = !DILocation(line: 34, column: 7, scope: !1942)
!1949 = !DILocation(line: 34, column: 15, scope: !1942)
!1950 = !DILocation(line: 35, column: 7, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1942, file: !623, line: 35, column: 7)
!1952 = !DILocation(line: 35, column: 16, scope: !1951)
!1953 = !DILocation(line: 35, column: 13, scope: !1951)
!1954 = !DILocation(line: 35, column: 7, scope: !1942)
!1955 = !DILocation(line: 37, column: 16, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !623, line: 37, column: 11)
!1957 = distinct !DILexicalBlock(scope: !1951, file: !623, line: 36, column: 5)
!1958 = !DILocation(line: 37, column: 13, scope: !1956)
!1959 = !DILocation(line: 37, column: 11, scope: !1957)
!1960 = !DILocation(line: 39, column: 18, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1956, file: !623, line: 38, column: 9)
!1962 = !DILocation(line: 39, column: 11, scope: !1961)
!1963 = !DILocation(line: 40, column: 11, scope: !1961)
!1964 = !DILocation(line: 40, column: 17, scope: !1961)
!1965 = !DILocation(line: 41, column: 9, scope: !1961)
!1966 = !DILocation(line: 42, column: 7, scope: !1957)
!1967 = !DILocation(line: 44, column: 3, scope: !1942)
!1968 = !DILocation(line: 45, column: 1, scope: !1942)
!1969 = distinct !DISubprogram(name: "hard_locale", scope: !625, file: !625, line: 38, type: !1943, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: false, unit: !624, variables: !113)
!1970 = !DILocalVariable(name: "category", arg: 1, scope: !1969, file: !625, line: 38, type: !61)
!1971 = !DILocation(line: 38, column: 18, scope: !1969)
!1972 = !DILocalVariable(name: "hard", scope: !1969, file: !625, line: 40, type: !74)
!1973 = !DILocation(line: 40, column: 8, scope: !1969)
!1974 = !DILocalVariable(name: "p", scope: !1969, file: !625, line: 41, type: !52)
!1975 = !DILocation(line: 41, column: 15, scope: !1969)
!1976 = !DILocation(line: 41, column: 30, scope: !1969)
!1977 = !DILocation(line: 41, column: 19, scope: !1969)
!1978 = !DILocation(line: 43, column: 7, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1969, file: !625, line: 43, column: 7)
!1980 = !DILocation(line: 43, column: 7, scope: !1969)
!1981 = !DILocation(line: 47, column: 23, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !625, line: 47, column: 15)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !625, line: 46, column: 9)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !625, line: 45, column: 11)
!1985 = distinct !DILexicalBlock(scope: !1979, file: !625, line: 44, column: 5)
!1986 = !DILocation(line: 47, column: 15, scope: !1982)
!1987 = !DILocation(line: 47, column: 31, scope: !1982)
!1988 = !DILocation(line: 47, column: 36, scope: !1982)
!1989 = !DILocation(line: 47, column: 47, scope: !1982)
!1990 = !DILocation(line: 47, column: 39, scope: !1982)
!1991 = !DILocation(line: 47, column: 59, scope: !1982)
!1992 = !DILocation(line: 47, column: 15, scope: !1983)
!1993 = !DILocation(line: 48, column: 18, scope: !1982)
!1994 = !DILocation(line: 48, column: 13, scope: !1982)
!1995 = !DILocation(line: 69, column: 5, scope: !1985)
!1996 = !DILocation(line: 71, column: 10, scope: !1969)
!1997 = !DILocation(line: 71, column: 3, scope: !1969)
!1998 = distinct !DISubprogram(name: "initbuffer", scope: !627, file: !627, line: 37, type: !1999, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: false, unit: !626, variables: !113)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{null, !2001}
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !2003, line: 26, size: 192, elements: !2004)
!2003 = !DIFile(filename: "../../lib/linebuffer.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!2004 = !{!2005, !2006, !2007}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2002, file: !2003, line: 28, baseType: !172, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2002, file: !2003, line: 29, baseType: !172, size: 64, offset: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2002, file: !2003, line: 30, baseType: !60, size: 64, offset: 128)
!2008 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1998, file: !627, line: 37, type: !2001)
!2009 = !DILocation(line: 37, column: 32, scope: !1998)
!2010 = !DILocation(line: 39, column: 11, scope: !1998)
!2011 = !DILocation(line: 39, column: 3, scope: !1998)
!2012 = !DILocation(line: 40, column: 1, scope: !1998)
!2013 = distinct !DISubprogram(name: "readlinebuffer", scope: !627, file: !627, line: 43, type: !2014, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: false, unit: !626, variables: !113)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!2001, !2001, !2016}
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1749, line: 7, baseType: !2018)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1751, line: 245, size: 1728, elements: !2019)
!2019 = !{!2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2018, file: !1751, line: 246, baseType: !61, size: 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2018, file: !1751, line: 251, baseType: !60, size: 64, offset: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2018, file: !1751, line: 252, baseType: !60, size: 64, offset: 128)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2018, file: !1751, line: 253, baseType: !60, size: 64, offset: 192)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2018, file: !1751, line: 254, baseType: !60, size: 64, offset: 256)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2018, file: !1751, line: 255, baseType: !60, size: 64, offset: 320)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2018, file: !1751, line: 256, baseType: !60, size: 64, offset: 384)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2018, file: !1751, line: 257, baseType: !60, size: 64, offset: 448)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2018, file: !1751, line: 258, baseType: !60, size: 64, offset: 512)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2018, file: !1751, line: 260, baseType: !60, size: 64, offset: 576)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2018, file: !1751, line: 261, baseType: !60, size: 64, offset: 640)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2018, file: !1751, line: 262, baseType: !60, size: 64, offset: 704)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2018, file: !1751, line: 264, baseType: !2033, size: 64, offset: 768)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1751, line: 160, size: 192, elements: !2035)
!2035 = !{!2036, !2037, !2039}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2034, file: !1751, line: 161, baseType: !2033, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2034, file: !1751, line: 162, baseType: !2038, size: 64, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2034, file: !1751, line: 166, baseType: !61, size: 32, offset: 128)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2018, file: !1751, line: 266, baseType: !2038, size: 64, offset: 832)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2018, file: !1751, line: 268, baseType: !61, size: 32, offset: 896)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2018, file: !1751, line: 272, baseType: !61, size: 32, offset: 928)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2018, file: !1751, line: 274, baseType: !1729, size: 64, offset: 960)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2018, file: !1751, line: 278, baseType: !62, size: 16, offset: 1024)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2018, file: !1751, line: 279, baseType: !1779, size: 8, offset: 1040)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2018, file: !1751, line: 280, baseType: !1781, size: 8, offset: 1048)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2018, file: !1751, line: 284, baseType: !1785, size: 64, offset: 1088)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2018, file: !1751, line: 293, baseType: !1788, size: 64, offset: 1152)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2018, file: !1751, line: 301, baseType: !55, size: 64, offset: 1216)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2018, file: !1751, line: 302, baseType: !55, size: 64, offset: 1280)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2018, file: !1751, line: 303, baseType: !55, size: 64, offset: 1344)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2018, file: !1751, line: 304, baseType: !55, size: 64, offset: 1408)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2018, file: !1751, line: 306, baseType: !172, size: 64, offset: 1472)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2018, file: !1751, line: 307, baseType: !61, size: 32, offset: 1536)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2018, file: !1751, line: 309, baseType: !1796, size: 160, offset: 1568)
!2056 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2013, file: !627, line: 43, type: !2001)
!2057 = !DILocation(line: 43, column: 36, scope: !2013)
!2058 = !DILocalVariable(name: "stream", arg: 2, scope: !2013, file: !627, line: 43, type: !2016)
!2059 = !DILocation(line: 43, column: 54, scope: !2013)
!2060 = !DILocation(line: 45, column: 32, scope: !2013)
!2061 = !DILocation(line: 45, column: 44, scope: !2013)
!2062 = !DILocation(line: 45, column: 10, scope: !2013)
!2063 = !DILocation(line: 45, column: 3, scope: !2013)
!2064 = distinct !DISubprogram(name: "readlinebuffer_delim", scope: !627, file: !627, line: 59, type: !2065, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: false, unit: !626, variables: !113)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!2001, !2001, !2016, !54}
!2067 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2064, file: !627, line: 59, type: !2001)
!2068 = !DILocation(line: 59, column: 42, scope: !2064)
!2069 = !DILocalVariable(name: "stream", arg: 2, scope: !2064, file: !627, line: 59, type: !2016)
!2070 = !DILocation(line: 59, column: 60, scope: !2064)
!2071 = !DILocalVariable(name: "delimiter", arg: 3, scope: !2064, file: !627, line: 60, type: !54)
!2072 = !DILocation(line: 60, column: 28, scope: !2064)
!2073 = !DILocalVariable(name: "c", scope: !2064, file: !627, line: 62, type: !61)
!2074 = !DILocation(line: 62, column: 7, scope: !2064)
!2075 = !DILocalVariable(name: "buffer", scope: !2064, file: !627, line: 63, type: !60)
!2076 = !DILocation(line: 63, column: 9, scope: !2064)
!2077 = !DILocation(line: 63, column: 18, scope: !2064)
!2078 = !DILocation(line: 63, column: 30, scope: !2064)
!2079 = !DILocalVariable(name: "p", scope: !2064, file: !627, line: 64, type: !60)
!2080 = !DILocation(line: 64, column: 9, scope: !2064)
!2081 = !DILocation(line: 64, column: 13, scope: !2064)
!2082 = !DILocation(line: 64, column: 25, scope: !2064)
!2083 = !DILocalVariable(name: "end", scope: !2064, file: !627, line: 65, type: !60)
!2084 = !DILocation(line: 65, column: 9, scope: !2064)
!2085 = !DILocation(line: 65, column: 15, scope: !2064)
!2086 = !DILocation(line: 65, column: 24, scope: !2064)
!2087 = !DILocation(line: 65, column: 36, scope: !2064)
!2088 = !DILocation(line: 65, column: 22, scope: !2064)
!2089 = !DILocation(line: 67, column: 7, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2064, file: !627, line: 67, column: 7)
!2091 = !DILocation(line: 67, column: 7, scope: !2064)
!2092 = !DILocation(line: 68, column: 5, scope: !2090)
!2093 = !DILocation(line: 70, column: 3, scope: !2064)
!2094 = distinct !{!2094, !2093, !2095}
!2095 = !DILocation(line: 91, column: 24, scope: !2064)
!2096 = !DILocation(line: 72, column: 11, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2064, file: !627, line: 71, column: 5)
!2098 = !DILocation(line: 72, column: 9, scope: !2097)
!2099 = !DILocation(line: 73, column: 11, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2097, file: !627, line: 73, column: 11)
!2101 = !DILocation(line: 73, column: 13, scope: !2100)
!2102 = !DILocation(line: 73, column: 11, scope: !2097)
!2103 = !DILocation(line: 75, column: 15, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !627, line: 75, column: 15)
!2105 = distinct !DILexicalBlock(scope: !2100, file: !627, line: 74, column: 9)
!2106 = !DILocation(line: 75, column: 20, scope: !2104)
!2107 = !DILocation(line: 75, column: 17, scope: !2104)
!2108 = !DILocation(line: 75, column: 27, scope: !2104)
!2109 = !DILocation(line: 75, column: 30, scope: !2104)
!2110 = !DILocation(line: 75, column: 15, scope: !2105)
!2111 = !DILocation(line: 76, column: 13, scope: !2104)
!2112 = !DILocation(line: 77, column: 15, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2105, file: !627, line: 77, column: 15)
!2114 = !DILocation(line: 77, column: 24, scope: !2113)
!2115 = !DILocation(line: 77, column: 21, scope: !2113)
!2116 = !DILocation(line: 77, column: 15, scope: !2105)
!2117 = !DILocation(line: 78, column: 13, scope: !2113)
!2118 = !DILocation(line: 79, column: 15, scope: !2105)
!2119 = !DILocation(line: 79, column: 13, scope: !2105)
!2120 = !DILocation(line: 80, column: 9, scope: !2105)
!2121 = !DILocation(line: 81, column: 11, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2097, file: !627, line: 81, column: 11)
!2123 = !DILocation(line: 81, column: 16, scope: !2122)
!2124 = !DILocation(line: 81, column: 13, scope: !2122)
!2125 = !DILocation(line: 81, column: 11, scope: !2097)
!2126 = !DILocalVariable(name: "oldsize", scope: !2127, file: !627, line: 83, type: !172)
!2127 = distinct !DILexicalBlock(scope: !2122, file: !627, line: 82, column: 9)
!2128 = !DILocation(line: 83, column: 18, scope: !2127)
!2129 = !DILocation(line: 83, column: 28, scope: !2127)
!2130 = !DILocation(line: 83, column: 40, scope: !2127)
!2131 = !DILocation(line: 84, column: 31, scope: !2127)
!2132 = !DILocation(line: 84, column: 40, scope: !2127)
!2133 = !DILocation(line: 84, column: 52, scope: !2127)
!2134 = !DILocation(line: 84, column: 20, scope: !2127)
!2135 = !DILocation(line: 84, column: 18, scope: !2127)
!2136 = !DILocation(line: 85, column: 15, scope: !2127)
!2137 = !DILocation(line: 85, column: 24, scope: !2127)
!2138 = !DILocation(line: 85, column: 22, scope: !2127)
!2139 = !DILocation(line: 85, column: 13, scope: !2127)
!2140 = !DILocation(line: 86, column: 32, scope: !2127)
!2141 = !DILocation(line: 86, column: 11, scope: !2127)
!2142 = !DILocation(line: 86, column: 23, scope: !2127)
!2143 = !DILocation(line: 86, column: 30, scope: !2127)
!2144 = !DILocation(line: 87, column: 17, scope: !2127)
!2145 = !DILocation(line: 87, column: 26, scope: !2127)
!2146 = !DILocation(line: 87, column: 38, scope: !2127)
!2147 = !DILocation(line: 87, column: 24, scope: !2127)
!2148 = !DILocation(line: 87, column: 15, scope: !2127)
!2149 = !DILocation(line: 88, column: 9, scope: !2127)
!2150 = !DILocation(line: 89, column: 14, scope: !2097)
!2151 = !DILocation(line: 89, column: 9, scope: !2097)
!2152 = !DILocation(line: 89, column: 12, scope: !2097)
!2153 = !DILocation(line: 90, column: 5, scope: !2097)
!2154 = !DILocation(line: 91, column: 10, scope: !2064)
!2155 = !DILocation(line: 91, column: 15, scope: !2064)
!2156 = !DILocation(line: 91, column: 12, scope: !2064)
!2157 = !DILocation(line: 93, column: 24, scope: !2064)
!2158 = !DILocation(line: 93, column: 28, scope: !2064)
!2159 = !DILocation(line: 93, column: 26, scope: !2064)
!2160 = !DILocation(line: 93, column: 3, scope: !2064)
!2161 = !DILocation(line: 93, column: 15, scope: !2064)
!2162 = !DILocation(line: 93, column: 22, scope: !2064)
!2163 = !DILocation(line: 94, column: 10, scope: !2064)
!2164 = !DILocation(line: 94, column: 3, scope: !2064)
!2165 = !DILocation(line: 95, column: 1, scope: !2064)
!2166 = distinct !DISubprogram(name: "freebuffer", scope: !627, file: !627, line: 100, type: !1999, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: false, unit: !626, variables: !113)
!2167 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2166, file: !627, line: 100, type: !2001)
!2168 = !DILocation(line: 100, column: 32, scope: !2166)
!2169 = !DILocation(line: 102, column: 9, scope: !2166)
!2170 = !DILocation(line: 102, column: 21, scope: !2166)
!2171 = !DILocation(line: 102, column: 3, scope: !2166)
!2172 = !DILocation(line: 103, column: 1, scope: !2166)
!2173 = distinct !DISubprogram(name: "memcasecmp", scope: !629, file: !629, line: 32, type: !2174, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: false, unit: !628, variables: !113)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!61, !2176, !2176, !172}
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2178 = !DILocalVariable(name: "vs1", arg: 1, scope: !2173, file: !629, line: 32, type: !2176)
!2179 = !DILocation(line: 32, column: 25, scope: !2173)
!2180 = !DILocalVariable(name: "vs2", arg: 2, scope: !2173, file: !629, line: 32, type: !2176)
!2181 = !DILocation(line: 32, column: 42, scope: !2173)
!2182 = !DILocalVariable(name: "n", arg: 3, scope: !2173, file: !629, line: 32, type: !172)
!2183 = !DILocation(line: 32, column: 54, scope: !2173)
!2184 = !DILocalVariable(name: "i", scope: !2173, file: !629, line: 34, type: !172)
!2185 = !DILocation(line: 34, column: 10, scope: !2173)
!2186 = !DILocalVariable(name: "s1", scope: !2173, file: !629, line: 35, type: !52)
!2187 = !DILocation(line: 35, column: 15, scope: !2173)
!2188 = !DILocation(line: 35, column: 20, scope: !2173)
!2189 = !DILocalVariable(name: "s2", scope: !2173, file: !629, line: 36, type: !52)
!2190 = !DILocation(line: 36, column: 15, scope: !2173)
!2191 = !DILocation(line: 36, column: 20, scope: !2173)
!2192 = !DILocation(line: 37, column: 10, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2173, file: !629, line: 37, column: 3)
!2194 = !DILocation(line: 37, column: 8, scope: !2193)
!2195 = !DILocation(line: 37, column: 15, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2193, file: !629, line: 37, column: 3)
!2197 = !DILocation(line: 37, column: 19, scope: !2196)
!2198 = !DILocation(line: 37, column: 17, scope: !2196)
!2199 = !DILocation(line: 37, column: 3, scope: !2193)
!2200 = !DILocalVariable(name: "u1", scope: !2201, file: !629, line: 39, type: !673)
!2201 = distinct !DILexicalBlock(scope: !2196, file: !629, line: 38, column: 5)
!2202 = !DILocation(line: 39, column: 21, scope: !2201)
!2203 = !DILocation(line: 39, column: 26, scope: !2201)
!2204 = !DILocation(line: 39, column: 29, scope: !2201)
!2205 = !DILocalVariable(name: "u2", scope: !2201, file: !629, line: 40, type: !673)
!2206 = !DILocation(line: 40, column: 21, scope: !2201)
!2207 = !DILocation(line: 40, column: 26, scope: !2201)
!2208 = !DILocation(line: 40, column: 29, scope: !2201)
!2209 = !DILocalVariable(name: "U1", scope: !2201, file: !629, line: 41, type: !61)
!2210 = !DILocation(line: 41, column: 11, scope: !2201)
!2211 = !DILocation(line: 41, column: 25, scope: !2201)
!2212 = !DILocation(line: 41, column: 16, scope: !2201)
!2213 = !DILocalVariable(name: "U2", scope: !2201, file: !629, line: 42, type: !61)
!2214 = !DILocation(line: 42, column: 11, scope: !2201)
!2215 = !DILocation(line: 42, column: 25, scope: !2201)
!2216 = !DILocation(line: 42, column: 16, scope: !2201)
!2217 = !DILocalVariable(name: "diff", scope: !2201, file: !629, line: 43, type: !61)
!2218 = !DILocation(line: 43, column: 11, scope: !2201)
!2219 = !DILocation(line: 43, column: 42, scope: !2201)
!2220 = !DILocation(line: 43, column: 47, scope: !2201)
!2221 = !DILocation(line: 43, column: 45, scope: !2201)
!2222 = !DILocation(line: 45, column: 11, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2201, file: !629, line: 45, column: 11)
!2224 = !DILocation(line: 45, column: 11, scope: !2201)
!2225 = !DILocation(line: 46, column: 16, scope: !2223)
!2226 = !DILocation(line: 46, column: 9, scope: !2223)
!2227 = !DILocation(line: 47, column: 5, scope: !2201)
!2228 = !DILocation(line: 37, column: 23, scope: !2196)
!2229 = !DILocation(line: 37, column: 3, scope: !2196)
!2230 = distinct !{!2230, !2199, !2231}
!2231 = !DILocation(line: 47, column: 5, scope: !2193)
!2232 = !DILocation(line: 48, column: 3, scope: !2173)
!2233 = !DILocation(line: 49, column: 1, scope: !2173)
!2234 = distinct !DISubprogram(name: "posix2_version", scope: !631, file: !631, line: 40, type: !2235, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: false, unit: !630, variables: !113)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{!61}
!2237 = !DILocalVariable(name: "v", scope: !2234, file: !631, line: 42, type: !1353)
!2238 = !DILocation(line: 42, column: 12, scope: !2234)
!2239 = !DILocalVariable(name: "s", scope: !2234, file: !631, line: 43, type: !52)
!2240 = !DILocation(line: 43, column: 15, scope: !2234)
!2241 = !DILocation(line: 43, column: 19, scope: !2234)
!2242 = !DILocation(line: 45, column: 7, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2234, file: !631, line: 45, column: 7)
!2244 = !DILocation(line: 45, column: 9, scope: !2243)
!2245 = !DILocation(line: 45, column: 13, scope: !2243)
!2246 = !DILocation(line: 45, column: 12, scope: !2243)
!2247 = !DILocation(line: 45, column: 7, scope: !2234)
!2248 = !DILocalVariable(name: "e", scope: !2249, file: !631, line: 47, type: !60)
!2249 = distinct !DILexicalBlock(scope: !2243, file: !631, line: 46, column: 5)
!2250 = !DILocation(line: 47, column: 13, scope: !2249)
!2251 = !DILocalVariable(name: "i", scope: !2249, file: !631, line: 48, type: !1353)
!2252 = !DILocation(line: 48, column: 16, scope: !2249)
!2253 = !DILocation(line: 48, column: 28, scope: !2249)
!2254 = !DILocation(line: 48, column: 20, scope: !2249)
!2255 = !DILocation(line: 49, column: 14, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2249, file: !631, line: 49, column: 11)
!2257 = !DILocation(line: 49, column: 13, scope: !2256)
!2258 = !DILocation(line: 49, column: 11, scope: !2249)
!2259 = !DILocation(line: 50, column: 13, scope: !2256)
!2260 = !DILocation(line: 50, column: 11, scope: !2256)
!2261 = !DILocation(line: 50, column: 9, scope: !2256)
!2262 = !DILocation(line: 51, column: 5, scope: !2249)
!2263 = !DILocation(line: 53, column: 10, scope: !2234)
!2264 = !DILocation(line: 53, column: 12, scope: !2234)
!2265 = !DILocation(line: 53, column: 34, scope: !2234)
!2266 = !DILocation(line: 53, column: 36, scope: !2234)
!2267 = !DILocation(line: 53, column: 48, scope: !2234)
!2268 = !DILocation(line: 53, column: 3, scope: !2234)
!2269 = distinct !DISubprogram(name: "set_program_name", scope: !156, file: !156, line: 39, type: !1601, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: false, unit: !155, variables: !113)
!2270 = !DILocalVariable(name: "argv0", arg: 1, scope: !2269, file: !156, line: 39, type: !52)
!2271 = !DILocation(line: 39, column: 31, scope: !2269)
!2272 = !DILocalVariable(name: "slash", scope: !2269, file: !156, line: 46, type: !52)
!2273 = !DILocation(line: 46, column: 15, scope: !2269)
!2274 = !DILocalVariable(name: "base", scope: !2269, file: !156, line: 47, type: !52)
!2275 = !DILocation(line: 47, column: 15, scope: !2269)
!2276 = !DILocation(line: 51, column: 7, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2269, file: !156, line: 51, column: 7)
!2278 = !DILocation(line: 51, column: 13, scope: !2277)
!2279 = !DILocation(line: 51, column: 7, scope: !2269)
!2280 = !DILocation(line: 55, column: 14, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2277, file: !156, line: 52, column: 5)
!2282 = !DILocation(line: 54, column: 7, scope: !2281)
!2283 = !DILocation(line: 56, column: 7, scope: !2281)
!2284 = !DILocation(line: 59, column: 20, scope: !2269)
!2285 = !DILocation(line: 59, column: 11, scope: !2269)
!2286 = !DILocation(line: 59, column: 9, scope: !2269)
!2287 = !DILocation(line: 60, column: 11, scope: !2269)
!2288 = !DILocation(line: 60, column: 17, scope: !2269)
!2289 = !DILocation(line: 60, column: 27, scope: !2269)
!2290 = !DILocation(line: 60, column: 33, scope: !2269)
!2291 = !DILocation(line: 60, column: 39, scope: !2269)
!2292 = !DILocation(line: 60, column: 8, scope: !2269)
!2293 = !DILocation(line: 61, column: 7, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2269, file: !156, line: 61, column: 7)
!2295 = !DILocation(line: 61, column: 14, scope: !2294)
!2296 = !DILocation(line: 61, column: 12, scope: !2294)
!2297 = !DILocation(line: 61, column: 20, scope: !2294)
!2298 = !DILocation(line: 61, column: 25, scope: !2294)
!2299 = !DILocation(line: 61, column: 37, scope: !2294)
!2300 = !DILocation(line: 61, column: 42, scope: !2294)
!2301 = !DILocation(line: 61, column: 28, scope: !2294)
!2302 = !DILocation(line: 61, column: 61, scope: !2294)
!2303 = !DILocation(line: 61, column: 7, scope: !2269)
!2304 = !DILocation(line: 63, column: 15, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2294, file: !156, line: 62, column: 5)
!2306 = !DILocation(line: 63, column: 13, scope: !2305)
!2307 = !DILocation(line: 64, column: 20, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2305, file: !156, line: 64, column: 11)
!2309 = !DILocation(line: 64, column: 11, scope: !2308)
!2310 = !DILocation(line: 64, column: 36, scope: !2308)
!2311 = !DILocation(line: 64, column: 11, scope: !2305)
!2312 = !DILocation(line: 66, column: 19, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2308, file: !156, line: 65, column: 9)
!2314 = !DILocation(line: 66, column: 24, scope: !2313)
!2315 = !DILocation(line: 66, column: 17, scope: !2313)
!2316 = !DILocation(line: 70, column: 52, scope: !2313)
!2317 = !DILocation(line: 70, column: 41, scope: !2313)
!2318 = !DILocation(line: 72, column: 9, scope: !2313)
!2319 = !DILocation(line: 73, column: 5, scope: !2305)
!2320 = !DILocation(line: 84, column: 18, scope: !2269)
!2321 = !DILocation(line: 84, column: 16, scope: !2269)
!2322 = !DILocation(line: 90, column: 38, scope: !2269)
!2323 = !DILocation(line: 90, column: 27, scope: !2269)
!2324 = !DILocation(line: 92, column: 1, scope: !2269)
!2325 = distinct !DISubprogram(name: "clone_quoting_options", scope: !162, file: !162, line: 108, type: !2326, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!2328, !2328}
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!2329 = !DILocalVariable(name: "o", arg: 1, scope: !2325, file: !162, line: 108, type: !2328)
!2330 = !DILocation(line: 108, column: 48, scope: !2325)
!2331 = !DILocalVariable(name: "e", scope: !2325, file: !162, line: 110, type: !61)
!2332 = !DILocation(line: 110, column: 7, scope: !2325)
!2333 = !DILocation(line: 110, column: 11, scope: !2325)
!2334 = !DILocalVariable(name: "p", scope: !2325, file: !162, line: 111, type: !2328)
!2335 = !DILocation(line: 111, column: 27, scope: !2325)
!2336 = !DILocation(line: 111, column: 40, scope: !2325)
!2337 = !DILocation(line: 111, column: 44, scope: !2325)
!2338 = !DILocation(line: 111, column: 31, scope: !2325)
!2339 = !DILocation(line: 113, column: 11, scope: !2325)
!2340 = !DILocation(line: 113, column: 3, scope: !2325)
!2341 = !DILocation(line: 113, column: 9, scope: !2325)
!2342 = !DILocation(line: 114, column: 10, scope: !2325)
!2343 = !DILocation(line: 114, column: 3, scope: !2325)
!2344 = distinct !DISubprogram(name: "get_quoting_style", scope: !162, file: !162, line: 119, type: !2345, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!120, !2328}
!2347 = !DILocalVariable(name: "o", arg: 1, scope: !2344, file: !162, line: 119, type: !2328)
!2348 = !DILocation(line: 119, column: 44, scope: !2344)
!2349 = !DILocation(line: 121, column: 11, scope: !2344)
!2350 = !DILocation(line: 121, column: 15, scope: !2344)
!2351 = !DILocation(line: 121, column: 46, scope: !2344)
!2352 = !DILocation(line: 121, column: 3, scope: !2344)
!2353 = distinct !DISubprogram(name: "set_quoting_style", scope: !162, file: !162, line: 127, type: !2354, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{null, !2328, !120}
!2356 = !DILocalVariable(name: "o", arg: 1, scope: !2353, file: !162, line: 127, type: !2328)
!2357 = !DILocation(line: 127, column: 44, scope: !2353)
!2358 = !DILocalVariable(name: "s", arg: 2, scope: !2353, file: !162, line: 127, type: !120)
!2359 = !DILocation(line: 127, column: 66, scope: !2353)
!2360 = !DILocation(line: 129, column: 47, scope: !2353)
!2361 = !DILocation(line: 129, column: 4, scope: !2353)
!2362 = !DILocation(line: 129, column: 8, scope: !2353)
!2363 = !DILocation(line: 129, column: 39, scope: !2353)
!2364 = !DILocation(line: 129, column: 45, scope: !2353)
!2365 = !DILocation(line: 130, column: 1, scope: !2353)
!2366 = distinct !DISubprogram(name: "set_char_quoting", scope: !162, file: !162, line: 138, type: !2367, isLocal: false, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!61, !2328, !54, !61}
!2369 = !DILocalVariable(name: "o", arg: 1, scope: !2366, file: !162, line: 138, type: !2328)
!2370 = !DILocation(line: 138, column: 43, scope: !2366)
!2371 = !DILocalVariable(name: "c", arg: 2, scope: !2366, file: !162, line: 138, type: !54)
!2372 = !DILocation(line: 138, column: 51, scope: !2366)
!2373 = !DILocalVariable(name: "i", arg: 3, scope: !2366, file: !162, line: 138, type: !61)
!2374 = !DILocation(line: 138, column: 58, scope: !2366)
!2375 = !DILocalVariable(name: "uc", scope: !2366, file: !162, line: 140, type: !673)
!2376 = !DILocation(line: 140, column: 17, scope: !2366)
!2377 = !DILocation(line: 140, column: 22, scope: !2366)
!2378 = !DILocalVariable(name: "p", scope: !2366, file: !162, line: 141, type: !2379)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!2380 = !DILocation(line: 141, column: 17, scope: !2366)
!2381 = !DILocation(line: 142, column: 6, scope: !2366)
!2382 = !DILocation(line: 142, column: 10, scope: !2366)
!2383 = !DILocation(line: 142, column: 41, scope: !2366)
!2384 = !DILocation(line: 142, column: 5, scope: !2366)
!2385 = !DILocation(line: 142, column: 59, scope: !2366)
!2386 = !DILocation(line: 142, column: 62, scope: !2366)
!2387 = !DILocation(line: 142, column: 57, scope: !2366)
!2388 = !DILocalVariable(name: "shift", scope: !2366, file: !162, line: 143, type: !61)
!2389 = !DILocation(line: 143, column: 7, scope: !2366)
!2390 = !DILocation(line: 143, column: 15, scope: !2366)
!2391 = !DILocation(line: 143, column: 18, scope: !2366)
!2392 = !DILocalVariable(name: "r", scope: !2366, file: !162, line: 144, type: !61)
!2393 = !DILocation(line: 144, column: 7, scope: !2366)
!2394 = !DILocation(line: 144, column: 13, scope: !2366)
!2395 = !DILocation(line: 144, column: 12, scope: !2366)
!2396 = !DILocation(line: 144, column: 18, scope: !2366)
!2397 = !DILocation(line: 144, column: 15, scope: !2366)
!2398 = !DILocation(line: 144, column: 25, scope: !2366)
!2399 = !DILocation(line: 145, column: 11, scope: !2366)
!2400 = !DILocation(line: 145, column: 13, scope: !2366)
!2401 = !DILocation(line: 145, column: 20, scope: !2366)
!2402 = !DILocation(line: 145, column: 18, scope: !2366)
!2403 = !DILocation(line: 145, column: 26, scope: !2366)
!2404 = !DILocation(line: 145, column: 23, scope: !2366)
!2405 = !DILocation(line: 145, column: 4, scope: !2366)
!2406 = !DILocation(line: 145, column: 6, scope: !2366)
!2407 = !DILocation(line: 146, column: 10, scope: !2366)
!2408 = !DILocation(line: 146, column: 3, scope: !2366)
!2409 = distinct !DISubprogram(name: "set_quoting_flags", scope: !162, file: !162, line: 154, type: !2410, isLocal: false, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!61, !2328, !61}
!2412 = !DILocalVariable(name: "o", arg: 1, scope: !2409, file: !162, line: 154, type: !2328)
!2413 = !DILocation(line: 154, column: 44, scope: !2409)
!2414 = !DILocalVariable(name: "i", arg: 2, scope: !2409, file: !162, line: 154, type: !61)
!2415 = !DILocation(line: 154, column: 51, scope: !2409)
!2416 = !DILocalVariable(name: "r", scope: !2409, file: !162, line: 156, type: !61)
!2417 = !DILocation(line: 156, column: 7, scope: !2409)
!2418 = !DILocation(line: 157, column: 8, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2409, file: !162, line: 157, column: 7)
!2420 = !DILocation(line: 157, column: 7, scope: !2409)
!2421 = !DILocation(line: 158, column: 7, scope: !2419)
!2422 = !DILocation(line: 158, column: 5, scope: !2419)
!2423 = !DILocation(line: 159, column: 7, scope: !2409)
!2424 = !DILocation(line: 159, column: 10, scope: !2409)
!2425 = !DILocation(line: 159, column: 5, scope: !2409)
!2426 = !DILocation(line: 160, column: 14, scope: !2409)
!2427 = !DILocation(line: 160, column: 3, scope: !2409)
!2428 = !DILocation(line: 160, column: 6, scope: !2409)
!2429 = !DILocation(line: 160, column: 12, scope: !2409)
!2430 = !DILocation(line: 161, column: 10, scope: !2409)
!2431 = !DILocation(line: 161, column: 3, scope: !2409)
!2432 = distinct !DISubprogram(name: "set_custom_quoting", scope: !162, file: !162, line: 165, type: !2433, isLocal: false, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{null, !2328, !52, !52}
!2435 = !DILocalVariable(name: "o", arg: 1, scope: !2432, file: !162, line: 165, type: !2328)
!2436 = !DILocation(line: 165, column: 45, scope: !2432)
!2437 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2432, file: !162, line: 166, type: !52)
!2438 = !DILocation(line: 166, column: 33, scope: !2432)
!2439 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2432, file: !162, line: 166, type: !52)
!2440 = !DILocation(line: 166, column: 57, scope: !2432)
!2441 = !DILocation(line: 168, column: 8, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2432, file: !162, line: 168, column: 7)
!2443 = !DILocation(line: 168, column: 7, scope: !2432)
!2444 = !DILocation(line: 169, column: 7, scope: !2442)
!2445 = !DILocation(line: 169, column: 5, scope: !2442)
!2446 = !DILocation(line: 170, column: 3, scope: !2432)
!2447 = !DILocation(line: 170, column: 6, scope: !2432)
!2448 = !DILocation(line: 170, column: 12, scope: !2432)
!2449 = !DILocation(line: 171, column: 8, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2432, file: !162, line: 171, column: 7)
!2451 = !DILocation(line: 171, column: 19, scope: !2450)
!2452 = !DILocation(line: 171, column: 23, scope: !2450)
!2453 = !DILocation(line: 171, column: 7, scope: !2432)
!2454 = !DILocation(line: 172, column: 5, scope: !2450)
!2455 = !DILocation(line: 173, column: 19, scope: !2432)
!2456 = !DILocation(line: 173, column: 3, scope: !2432)
!2457 = !DILocation(line: 173, column: 6, scope: !2432)
!2458 = !DILocation(line: 173, column: 17, scope: !2432)
!2459 = !DILocation(line: 174, column: 20, scope: !2432)
!2460 = !DILocation(line: 174, column: 3, scope: !2432)
!2461 = !DILocation(line: 174, column: 6, scope: !2432)
!2462 = !DILocation(line: 174, column: 18, scope: !2432)
!2463 = !DILocation(line: 175, column: 1, scope: !2432)
!2464 = distinct !DISubprogram(name: "quotearg_buffer", scope: !162, file: !162, line: 668, type: !2465, isLocal: false, isDefinition: true, scopeLine: 671, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!172, !60, !172, !52, !172, !2467}
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!2469 = !DILocalVariable(name: "buffer", arg: 1, scope: !2464, file: !162, line: 668, type: !60)
!2470 = !DILocation(line: 668, column: 24, scope: !2464)
!2471 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2464, file: !162, line: 668, type: !172)
!2472 = !DILocation(line: 668, column: 39, scope: !2464)
!2473 = !DILocalVariable(name: "arg", arg: 3, scope: !2464, file: !162, line: 669, type: !52)
!2474 = !DILocation(line: 669, column: 30, scope: !2464)
!2475 = !DILocalVariable(name: "argsize", arg: 4, scope: !2464, file: !162, line: 669, type: !172)
!2476 = !DILocation(line: 669, column: 42, scope: !2464)
!2477 = !DILocalVariable(name: "o", arg: 5, scope: !2464, file: !162, line: 670, type: !2467)
!2478 = !DILocation(line: 670, column: 48, scope: !2464)
!2479 = !DILocalVariable(name: "p", scope: !2464, file: !162, line: 672, type: !2467)
!2480 = !DILocation(line: 672, column: 33, scope: !2464)
!2481 = !DILocation(line: 672, column: 37, scope: !2464)
!2482 = !DILocation(line: 672, column: 41, scope: !2464)
!2483 = !DILocalVariable(name: "e", scope: !2464, file: !162, line: 673, type: !61)
!2484 = !DILocation(line: 673, column: 7, scope: !2464)
!2485 = !DILocation(line: 673, column: 11, scope: !2464)
!2486 = !DILocalVariable(name: "r", scope: !2464, file: !162, line: 674, type: !172)
!2487 = !DILocation(line: 674, column: 10, scope: !2464)
!2488 = !DILocation(line: 674, column: 40, scope: !2464)
!2489 = !DILocation(line: 674, column: 48, scope: !2464)
!2490 = !DILocation(line: 674, column: 60, scope: !2464)
!2491 = !DILocation(line: 674, column: 65, scope: !2464)
!2492 = !DILocation(line: 675, column: 40, scope: !2464)
!2493 = !DILocation(line: 675, column: 43, scope: !2464)
!2494 = !DILocation(line: 675, column: 50, scope: !2464)
!2495 = !DILocation(line: 675, column: 53, scope: !2464)
!2496 = !DILocation(line: 675, column: 60, scope: !2464)
!2497 = !DILocation(line: 675, column: 63, scope: !2464)
!2498 = !DILocation(line: 676, column: 40, scope: !2464)
!2499 = !DILocation(line: 676, column: 43, scope: !2464)
!2500 = !DILocation(line: 676, column: 55, scope: !2464)
!2501 = !DILocation(line: 676, column: 58, scope: !2464)
!2502 = !DILocation(line: 674, column: 14, scope: !2464)
!2503 = !DILocation(line: 677, column: 11, scope: !2464)
!2504 = !DILocation(line: 677, column: 3, scope: !2464)
!2505 = !DILocation(line: 677, column: 9, scope: !2464)
!2506 = !DILocation(line: 678, column: 10, scope: !2464)
!2507 = !DILocation(line: 678, column: 3, scope: !2464)
!2508 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !162, file: !162, line: 242, type: !2509, isLocal: true, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!172, !60, !172, !52, !172, !120, !61, !2511, !52, !52}
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!2513 = !DILocalVariable(name: "buffer", arg: 1, scope: !2508, file: !162, line: 242, type: !60)
!2514 = !DILocation(line: 242, column: 33, scope: !2508)
!2515 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2508, file: !162, line: 242, type: !172)
!2516 = !DILocation(line: 242, column: 48, scope: !2508)
!2517 = !DILocalVariable(name: "arg", arg: 3, scope: !2508, file: !162, line: 243, type: !52)
!2518 = !DILocation(line: 243, column: 39, scope: !2508)
!2519 = !DILocalVariable(name: "argsize", arg: 4, scope: !2508, file: !162, line: 243, type: !172)
!2520 = !DILocation(line: 243, column: 51, scope: !2508)
!2521 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2508, file: !162, line: 244, type: !120)
!2522 = !DILocation(line: 244, column: 46, scope: !2508)
!2523 = !DILocalVariable(name: "flags", arg: 6, scope: !2508, file: !162, line: 244, type: !61)
!2524 = !DILocation(line: 244, column: 65, scope: !2508)
!2525 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2508, file: !162, line: 245, type: !2511)
!2526 = !DILocation(line: 245, column: 47, scope: !2508)
!2527 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2508, file: !162, line: 246, type: !52)
!2528 = !DILocation(line: 246, column: 39, scope: !2508)
!2529 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2508, file: !162, line: 247, type: !52)
!2530 = !DILocation(line: 247, column: 39, scope: !2508)
!2531 = !DILocalVariable(name: "i", scope: !2508, file: !162, line: 249, type: !172)
!2532 = !DILocation(line: 249, column: 10, scope: !2508)
!2533 = !DILocalVariable(name: "len", scope: !2508, file: !162, line: 250, type: !172)
!2534 = !DILocation(line: 250, column: 10, scope: !2508)
!2535 = !DILocalVariable(name: "quote_string", scope: !2508, file: !162, line: 251, type: !52)
!2536 = !DILocation(line: 251, column: 15, scope: !2508)
!2537 = !DILocalVariable(name: "quote_string_len", scope: !2508, file: !162, line: 252, type: !172)
!2538 = !DILocation(line: 252, column: 10, scope: !2508)
!2539 = !DILocalVariable(name: "backslash_escapes", scope: !2508, file: !162, line: 253, type: !74)
!2540 = !DILocation(line: 253, column: 8, scope: !2508)
!2541 = !DILocalVariable(name: "unibyte_locale", scope: !2508, file: !162, line: 254, type: !74)
!2542 = !DILocation(line: 254, column: 8, scope: !2508)
!2543 = !DILocation(line: 254, column: 25, scope: !2508)
!2544 = !DILocation(line: 254, column: 36, scope: !2508)
!2545 = !DILocalVariable(name: "elide_outer_quotes", scope: !2508, file: !162, line: 255, type: !74)
!2546 = !DILocation(line: 255, column: 8, scope: !2508)
!2547 = !DILocation(line: 255, column: 30, scope: !2508)
!2548 = !DILocation(line: 255, column: 36, scope: !2508)
!2549 = !DILocation(line: 255, column: 61, scope: !2508)
!2550 = !DILocation(line: 266, column: 11, scope: !2508)
!2551 = !DILocation(line: 266, column: 3, scope: !2508)
!2552 = !DILocation(line: 269, column: 21, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2508, file: !162, line: 267, column: 5)
!2554 = !DILocation(line: 270, column: 26, scope: !2553)
!2555 = !DILocation(line: 270, column: 7, scope: !2553)
!2556 = !DILocation(line: 273, column: 12, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2553, file: !162, line: 273, column: 11)
!2558 = !DILocation(line: 273, column: 11, scope: !2553)
!2559 = !DILocation(line: 274, column: 9, scope: !2557)
!2560 = distinct !{!2560, !2559, !2559}
!2561 = !DILocation(line: 274, column: 9, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !162, line: 274, column: 9)
!2563 = distinct !DILexicalBlock(scope: !2557, file: !162, line: 274, column: 9)
!2564 = !DILocation(line: 274, column: 9, scope: !2563)
!2565 = !DILocation(line: 275, column: 25, scope: !2553)
!2566 = !DILocation(line: 276, column: 20, scope: !2553)
!2567 = !DILocation(line: 277, column: 24, scope: !2553)
!2568 = !DILocation(line: 278, column: 7, scope: !2553)
!2569 = !DILocation(line: 281, column: 25, scope: !2553)
!2570 = !DILocation(line: 282, column: 26, scope: !2553)
!2571 = !DILocation(line: 283, column: 7, scope: !2553)
!2572 = !DILocation(line: 289, column: 13, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !162, line: 289, column: 13)
!2574 = distinct !DILexicalBlock(scope: !2553, file: !162, line: 288, column: 7)
!2575 = !DILocation(line: 289, column: 27, scope: !2573)
!2576 = !DILocation(line: 289, column: 13, scope: !2574)
!2577 = !DILocation(line: 312, column: 50, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2573, file: !162, line: 290, column: 11)
!2579 = !DILocation(line: 312, column: 26, scope: !2578)
!2580 = !DILocation(line: 312, column: 24, scope: !2578)
!2581 = !DILocation(line: 313, column: 51, scope: !2578)
!2582 = !DILocation(line: 313, column: 27, scope: !2578)
!2583 = !DILocation(line: 313, column: 25, scope: !2578)
!2584 = !DILocation(line: 314, column: 11, scope: !2578)
!2585 = !DILocation(line: 315, column: 14, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2574, file: !162, line: 315, column: 13)
!2587 = !DILocation(line: 315, column: 13, scope: !2574)
!2588 = !DILocation(line: 316, column: 31, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2586, file: !162, line: 316, column: 11)
!2590 = !DILocation(line: 316, column: 29, scope: !2589)
!2591 = !DILocation(line: 316, column: 16, scope: !2589)
!2592 = !DILocation(line: 316, column: 44, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2589, file: !162, line: 316, column: 11)
!2594 = !DILocation(line: 316, column: 43, scope: !2593)
!2595 = !DILocation(line: 316, column: 11, scope: !2589)
!2596 = !DILocation(line: 317, column: 13, scope: !2593)
!2597 = distinct !{!2597, !2596, !2596}
!2598 = !DILocation(line: 317, column: 13, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !162, line: 317, column: 13)
!2600 = distinct !DILexicalBlock(scope: !2593, file: !162, line: 317, column: 13)
!2601 = !DILocation(line: 317, column: 13, scope: !2600)
!2602 = !DILocation(line: 316, column: 70, scope: !2593)
!2603 = !DILocation(line: 316, column: 11, scope: !2593)
!2604 = distinct !{!2604, !2595, !2605}
!2605 = !DILocation(line: 317, column: 13, scope: !2589)
!2606 = !DILocation(line: 318, column: 27, scope: !2574)
!2607 = !DILocation(line: 319, column: 24, scope: !2574)
!2608 = !DILocation(line: 319, column: 22, scope: !2574)
!2609 = !DILocation(line: 320, column: 36, scope: !2574)
!2610 = !DILocation(line: 320, column: 28, scope: !2574)
!2611 = !DILocation(line: 320, column: 26, scope: !2574)
!2612 = !DILocation(line: 322, column: 7, scope: !2553)
!2613 = !DILocation(line: 325, column: 21, scope: !2553)
!2614 = !DILocation(line: 326, column: 26, scope: !2553)
!2615 = !DILocation(line: 326, column: 7, scope: !2553)
!2616 = !DILocation(line: 329, column: 12, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2553, file: !162, line: 329, column: 11)
!2618 = !DILocation(line: 329, column: 11, scope: !2553)
!2619 = !DILocation(line: 330, column: 9, scope: !2617)
!2620 = distinct !{!2620, !2619, !2619}
!2621 = !DILocation(line: 330, column: 9, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2623, file: !162, line: 330, column: 9)
!2623 = distinct !DILexicalBlock(scope: !2617, file: !162, line: 330, column: 9)
!2624 = !DILocation(line: 330, column: 9, scope: !2623)
!2625 = !DILocation(line: 331, column: 20, scope: !2553)
!2626 = !DILocation(line: 332, column: 24, scope: !2553)
!2627 = !DILocation(line: 333, column: 7, scope: !2553)
!2628 = !DILocation(line: 336, column: 26, scope: !2553)
!2629 = !DILocation(line: 337, column: 7, scope: !2553)
!2630 = !DILocation(line: 340, column: 7, scope: !2553)
!2631 = !DILocation(line: 343, column: 10, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2508, file: !162, line: 343, column: 3)
!2633 = !DILocation(line: 343, column: 8, scope: !2632)
!2634 = !DILocation(line: 343, column: 19, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2632, file: !162, line: 343, column: 3)
!2636 = !DILocation(line: 343, column: 27, scope: !2635)
!2637 = !DILocation(line: 343, column: 41, scope: !2635)
!2638 = !DILocation(line: 343, column: 45, scope: !2635)
!2639 = !DILocation(line: 343, column: 48, scope: !2635)
!2640 = !DILocation(line: 343, column: 58, scope: !2635)
!2641 = !DILocation(line: 343, column: 63, scope: !2635)
!2642 = !DILocation(line: 343, column: 60, scope: !2635)
!2643 = !DILocation(line: 343, column: 16, scope: !2635)
!2644 = !DILocation(line: 343, column: 3, scope: !2632)
!2645 = !DILocalVariable(name: "c", scope: !2646, file: !162, line: 345, type: !673)
!2646 = distinct !DILexicalBlock(scope: !2635, file: !162, line: 344, column: 5)
!2647 = !DILocation(line: 345, column: 21, scope: !2646)
!2648 = !DILocalVariable(name: "esc", scope: !2646, file: !162, line: 346, type: !673)
!2649 = !DILocation(line: 346, column: 21, scope: !2646)
!2650 = !DILocalVariable(name: "is_right_quote", scope: !2646, file: !162, line: 347, type: !74)
!2651 = !DILocation(line: 347, column: 12, scope: !2646)
!2652 = !DILocation(line: 349, column: 11, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2646, file: !162, line: 349, column: 11)
!2654 = !DILocation(line: 350, column: 11, scope: !2653)
!2655 = !DILocation(line: 350, column: 14, scope: !2653)
!2656 = !DILocation(line: 351, column: 11, scope: !2653)
!2657 = !DILocation(line: 351, column: 14, scope: !2653)
!2658 = !DILocation(line: 351, column: 18, scope: !2653)
!2659 = !DILocation(line: 351, column: 16, scope: !2653)
!2660 = !DILocation(line: 351, column: 38, scope: !2653)
!2661 = !DILocation(line: 351, column: 35, scope: !2653)
!2662 = !DILocation(line: 352, column: 11, scope: !2653)
!2663 = !DILocation(line: 352, column: 22, scope: !2653)
!2664 = !DILocation(line: 352, column: 28, scope: !2653)
!2665 = !DILocation(line: 352, column: 26, scope: !2653)
!2666 = !DILocation(line: 352, column: 31, scope: !2653)
!2667 = !DILocation(line: 352, column: 45, scope: !2653)
!2668 = !DILocation(line: 352, column: 14, scope: !2653)
!2669 = !DILocation(line: 352, column: 63, scope: !2653)
!2670 = !DILocation(line: 349, column: 11, scope: !2646)
!2671 = !DILocation(line: 354, column: 15, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !162, line: 354, column: 15)
!2673 = distinct !DILexicalBlock(scope: !2653, file: !162, line: 353, column: 9)
!2674 = !DILocation(line: 354, column: 15, scope: !2673)
!2675 = !DILocation(line: 355, column: 13, scope: !2672)
!2676 = !DILocation(line: 356, column: 26, scope: !2673)
!2677 = !DILocation(line: 357, column: 9, scope: !2673)
!2678 = !DILocation(line: 359, column: 11, scope: !2646)
!2679 = !DILocation(line: 359, column: 15, scope: !2646)
!2680 = !DILocation(line: 359, column: 9, scope: !2646)
!2681 = !DILocation(line: 360, column: 15, scope: !2646)
!2682 = !DILocation(line: 360, column: 7, scope: !2646)
!2683 = !DILocation(line: 363, column: 15, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2685, file: !162, line: 363, column: 15)
!2685 = distinct !DILexicalBlock(scope: !2646, file: !162, line: 361, column: 9)
!2686 = !DILocation(line: 363, column: 15, scope: !2685)
!2687 = !DILocation(line: 365, column: 19, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2689, file: !162, line: 365, column: 19)
!2689 = distinct !DILexicalBlock(scope: !2684, file: !162, line: 364, column: 13)
!2690 = !DILocation(line: 365, column: 19, scope: !2689)
!2691 = !DILocation(line: 366, column: 17, scope: !2688)
!2692 = !DILocation(line: 367, column: 15, scope: !2689)
!2693 = distinct !{!2693, !2692, !2692}
!2694 = !DILocation(line: 367, column: 15, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2696, file: !162, line: 367, column: 15)
!2696 = distinct !DILexicalBlock(scope: !2689, file: !162, line: 367, column: 15)
!2697 = !DILocation(line: 367, column: 15, scope: !2696)
!2698 = !DILocation(line: 373, column: 19, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2689, file: !162, line: 373, column: 19)
!2700 = !DILocation(line: 373, column: 21, scope: !2699)
!2701 = !DILocation(line: 373, column: 27, scope: !2699)
!2702 = !DILocation(line: 373, column: 25, scope: !2699)
!2703 = !DILocation(line: 373, column: 35, scope: !2699)
!2704 = !DILocation(line: 373, column: 45, scope: !2699)
!2705 = !DILocation(line: 373, column: 49, scope: !2699)
!2706 = !DILocation(line: 373, column: 51, scope: !2699)
!2707 = !DILocation(line: 373, column: 42, scope: !2699)
!2708 = !DILocation(line: 373, column: 56, scope: !2699)
!2709 = !DILocation(line: 373, column: 59, scope: !2699)
!2710 = !DILocation(line: 373, column: 63, scope: !2699)
!2711 = !DILocation(line: 373, column: 65, scope: !2699)
!2712 = !DILocation(line: 373, column: 70, scope: !2699)
!2713 = !DILocation(line: 373, column: 19, scope: !2689)
!2714 = !DILocation(line: 375, column: 19, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2699, file: !162, line: 374, column: 17)
!2716 = distinct !{!2716, !2714, !2714}
!2717 = !DILocation(line: 375, column: 19, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2719, file: !162, line: 375, column: 19)
!2719 = distinct !DILexicalBlock(scope: !2715, file: !162, line: 375, column: 19)
!2720 = !DILocation(line: 375, column: 19, scope: !2719)
!2721 = !DILocation(line: 376, column: 19, scope: !2715)
!2722 = distinct !{!2722, !2721, !2721}
!2723 = !DILocation(line: 376, column: 19, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2725, file: !162, line: 376, column: 19)
!2725 = distinct !DILexicalBlock(scope: !2715, file: !162, line: 376, column: 19)
!2726 = !DILocation(line: 376, column: 19, scope: !2725)
!2727 = !DILocation(line: 377, column: 17, scope: !2715)
!2728 = !DILocation(line: 378, column: 17, scope: !2689)
!2729 = !DILocation(line: 383, column: 13, scope: !2689)
!2730 = !DILocation(line: 384, column: 20, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2684, file: !162, line: 384, column: 20)
!2732 = !DILocation(line: 384, column: 26, scope: !2731)
!2733 = !DILocation(line: 384, column: 20, scope: !2684)
!2734 = !DILocation(line: 385, column: 13, scope: !2731)
!2735 = !DILocation(line: 386, column: 11, scope: !2685)
!2736 = !DILocation(line: 389, column: 19, scope: !2685)
!2737 = !DILocation(line: 389, column: 11, scope: !2685)
!2738 = !DILocation(line: 392, column: 19, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !162, line: 392, column: 19)
!2740 = distinct !DILexicalBlock(scope: !2685, file: !162, line: 390, column: 13)
!2741 = !DILocation(line: 392, column: 19, scope: !2740)
!2742 = !DILocation(line: 393, column: 17, scope: !2739)
!2743 = !DILocation(line: 394, column: 15, scope: !2740)
!2744 = !DILocation(line: 397, column: 20, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2740, file: !162, line: 397, column: 19)
!2746 = !DILocation(line: 397, column: 26, scope: !2745)
!2747 = !DILocation(line: 398, column: 19, scope: !2745)
!2748 = !DILocation(line: 398, column: 22, scope: !2745)
!2749 = !DILocation(line: 398, column: 24, scope: !2745)
!2750 = !DILocation(line: 398, column: 30, scope: !2745)
!2751 = !DILocation(line: 398, column: 28, scope: !2745)
!2752 = !DILocation(line: 398, column: 38, scope: !2745)
!2753 = !DILocation(line: 398, column: 41, scope: !2745)
!2754 = !DILocation(line: 398, column: 45, scope: !2745)
!2755 = !DILocation(line: 398, column: 47, scope: !2745)
!2756 = !DILocation(line: 398, column: 52, scope: !2745)
!2757 = !DILocation(line: 397, column: 19, scope: !2740)
!2758 = !DILocation(line: 399, column: 25, scope: !2745)
!2759 = !DILocation(line: 399, column: 29, scope: !2745)
!2760 = !DILocation(line: 399, column: 31, scope: !2745)
!2761 = !DILocation(line: 399, column: 17, scope: !2745)
!2762 = !DILocation(line: 406, column: 25, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2764, file: !162, line: 406, column: 25)
!2764 = distinct !DILexicalBlock(scope: !2745, file: !162, line: 400, column: 19)
!2765 = !DILocation(line: 406, column: 25, scope: !2764)
!2766 = !DILocation(line: 407, column: 23, scope: !2763)
!2767 = !DILocation(line: 408, column: 25, scope: !2764)
!2768 = !DILocation(line: 408, column: 29, scope: !2764)
!2769 = !DILocation(line: 408, column: 31, scope: !2764)
!2770 = !DILocation(line: 408, column: 23, scope: !2764)
!2771 = !DILocation(line: 409, column: 23, scope: !2764)
!2772 = !DILocation(line: 410, column: 21, scope: !2764)
!2773 = distinct !{!2773, !2772, !2772}
!2774 = !DILocation(line: 410, column: 21, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !162, line: 410, column: 21)
!2776 = distinct !DILexicalBlock(scope: !2764, file: !162, line: 410, column: 21)
!2777 = !DILocation(line: 410, column: 21, scope: !2776)
!2778 = !DILocation(line: 411, column: 21, scope: !2764)
!2779 = distinct !{!2779, !2778, !2778}
!2780 = !DILocation(line: 411, column: 21, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !162, line: 411, column: 21)
!2782 = distinct !DILexicalBlock(scope: !2764, file: !162, line: 411, column: 21)
!2783 = !DILocation(line: 411, column: 21, scope: !2782)
!2784 = !DILocation(line: 412, column: 21, scope: !2764)
!2785 = distinct !{!2785, !2784, !2784}
!2786 = !DILocation(line: 412, column: 21, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2788, file: !162, line: 412, column: 21)
!2788 = distinct !DILexicalBlock(scope: !2764, file: !162, line: 412, column: 21)
!2789 = !DILocation(line: 412, column: 21, scope: !2788)
!2790 = !DILocation(line: 413, column: 21, scope: !2764)
!2791 = distinct !{!2791, !2790, !2790}
!2792 = !DILocation(line: 413, column: 21, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2794, file: !162, line: 413, column: 21)
!2794 = distinct !DILexicalBlock(scope: !2764, file: !162, line: 413, column: 21)
!2795 = !DILocation(line: 413, column: 21, scope: !2794)
!2796 = !DILocation(line: 414, column: 21, scope: !2764)
!2797 = !DILocation(line: 417, column: 21, scope: !2764)
!2798 = !DILocation(line: 418, column: 19, scope: !2764)
!2799 = !DILocation(line: 419, column: 15, scope: !2740)
!2800 = !DILocation(line: 422, column: 15, scope: !2740)
!2801 = !DILocation(line: 424, column: 11, scope: !2685)
!2802 = !DILocation(line: 426, column: 24, scope: !2685)
!2803 = !DILocation(line: 426, column: 31, scope: !2685)
!2804 = !DILocation(line: 427, column: 24, scope: !2685)
!2805 = !DILocation(line: 427, column: 31, scope: !2685)
!2806 = !DILocation(line: 428, column: 24, scope: !2685)
!2807 = !DILocation(line: 428, column: 31, scope: !2685)
!2808 = !DILocation(line: 429, column: 24, scope: !2685)
!2809 = !DILocation(line: 429, column: 31, scope: !2685)
!2810 = !DILocation(line: 430, column: 24, scope: !2685)
!2811 = !DILocation(line: 430, column: 31, scope: !2685)
!2812 = !DILocation(line: 431, column: 24, scope: !2685)
!2813 = !DILocation(line: 431, column: 31, scope: !2685)
!2814 = !DILocation(line: 432, column: 24, scope: !2685)
!2815 = !DILocation(line: 432, column: 31, scope: !2685)
!2816 = !DILocation(line: 433, column: 26, scope: !2685)
!2817 = !DILocation(line: 433, column: 24, scope: !2685)
!2818 = !DILocation(line: 436, column: 15, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2685, file: !162, line: 436, column: 15)
!2820 = !DILocation(line: 436, column: 33, scope: !2819)
!2821 = !DILocation(line: 436, column: 36, scope: !2819)
!2822 = !DILocation(line: 436, column: 55, scope: !2819)
!2823 = !DILocation(line: 436, column: 58, scope: !2819)
!2824 = !DILocation(line: 436, column: 15, scope: !2685)
!2825 = !DILocation(line: 437, column: 13, scope: !2819)
!2826 = !DILocation(line: 440, column: 15, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2685, file: !162, line: 440, column: 15)
!2828 = !DILocation(line: 440, column: 29, scope: !2827)
!2829 = !DILocation(line: 441, column: 15, scope: !2827)
!2830 = !DILocation(line: 441, column: 18, scope: !2827)
!2831 = !DILocation(line: 440, column: 15, scope: !2685)
!2832 = !DILocation(line: 442, column: 13, scope: !2827)
!2833 = !DILocation(line: 445, column: 15, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2685, file: !162, line: 445, column: 15)
!2835 = !DILocation(line: 445, column: 15, scope: !2685)
!2836 = !DILocation(line: 447, column: 19, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2834, file: !162, line: 446, column: 13)
!2838 = !DILocation(line: 447, column: 17, scope: !2837)
!2839 = !DILocation(line: 448, column: 15, scope: !2837)
!2840 = !DILocation(line: 450, column: 11, scope: !2685)
!2841 = !DILocation(line: 453, column: 18, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2685, file: !162, line: 453, column: 15)
!2843 = !DILocation(line: 453, column: 26, scope: !2842)
!2844 = !DILocation(line: 453, column: 15, scope: !2685)
!2845 = !DILocation(line: 453, column: 40, scope: !2842)
!2846 = !DILocation(line: 453, column: 47, scope: !2842)
!2847 = !DILocation(line: 453, column: 57, scope: !2842)
!2848 = !DILocation(line: 453, column: 65, scope: !2842)
!2849 = !DILocation(line: 454, column: 13, scope: !2842)
!2850 = !DILocation(line: 453, column: 69, scope: !2842)
!2851 = !DILocation(line: 457, column: 15, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2685, file: !162, line: 457, column: 15)
!2853 = !DILocation(line: 457, column: 17, scope: !2852)
!2854 = !DILocation(line: 457, column: 15, scope: !2685)
!2855 = !DILocation(line: 458, column: 13, scope: !2852)
!2856 = !DILocation(line: 457, column: 20, scope: !2852)
!2857 = !DILocation(line: 473, column: 15, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2685, file: !162, line: 473, column: 15)
!2859 = !DILocation(line: 473, column: 29, scope: !2858)
!2860 = !DILocation(line: 474, column: 15, scope: !2858)
!2861 = !DILocation(line: 474, column: 18, scope: !2858)
!2862 = !DILocation(line: 473, column: 15, scope: !2685)
!2863 = !DILocation(line: 475, column: 13, scope: !2858)
!2864 = !DILocation(line: 476, column: 11, scope: !2685)
!2865 = !DILocation(line: 479, column: 15, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2685, file: !162, line: 479, column: 15)
!2867 = !DILocation(line: 479, column: 29, scope: !2866)
!2868 = !DILocation(line: 479, column: 15, scope: !2685)
!2869 = !DILocation(line: 481, column: 19, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2871, file: !162, line: 481, column: 19)
!2871 = distinct !DILexicalBlock(scope: !2866, file: !162, line: 480, column: 13)
!2872 = !DILocation(line: 481, column: 19, scope: !2871)
!2873 = !DILocation(line: 482, column: 17, scope: !2870)
!2874 = !DILocation(line: 483, column: 15, scope: !2871)
!2875 = distinct !{!2875, !2874, !2874}
!2876 = !DILocation(line: 483, column: 15, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2878, file: !162, line: 483, column: 15)
!2878 = distinct !DILexicalBlock(scope: !2871, file: !162, line: 483, column: 15)
!2879 = !DILocation(line: 483, column: 15, scope: !2878)
!2880 = !DILocation(line: 484, column: 15, scope: !2871)
!2881 = distinct !{!2881, !2880, !2880}
!2882 = !DILocation(line: 484, column: 15, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2884, file: !162, line: 484, column: 15)
!2884 = distinct !DILexicalBlock(scope: !2871, file: !162, line: 484, column: 15)
!2885 = !DILocation(line: 484, column: 15, scope: !2884)
!2886 = !DILocation(line: 485, column: 15, scope: !2871)
!2887 = distinct !{!2887, !2886, !2886}
!2888 = !DILocation(line: 485, column: 15, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2890, file: !162, line: 485, column: 15)
!2890 = distinct !DILexicalBlock(scope: !2871, file: !162, line: 485, column: 15)
!2891 = !DILocation(line: 485, column: 15, scope: !2890)
!2892 = !DILocation(line: 486, column: 13, scope: !2871)
!2893 = !DILocation(line: 487, column: 11, scope: !2685)
!2894 = !DILocation(line: 511, column: 11, scope: !2685)
!2895 = !DILocalVariable(name: "m", scope: !2896, file: !162, line: 521, type: !172)
!2896 = distinct !DILexicalBlock(scope: !2685, file: !162, line: 519, column: 11)
!2897 = !DILocation(line: 521, column: 20, scope: !2896)
!2898 = !DILocalVariable(name: "printable", scope: !2896, file: !162, line: 523, type: !74)
!2899 = !DILocation(line: 523, column: 18, scope: !2896)
!2900 = !DILocation(line: 525, column: 17, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2896, file: !162, line: 525, column: 17)
!2902 = !DILocation(line: 525, column: 17, scope: !2896)
!2903 = !DILocation(line: 527, column: 19, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2901, file: !162, line: 526, column: 15)
!2905 = !DILocation(line: 528, column: 29, scope: !2904)
!2906 = !DILocation(line: 528, column: 41, scope: !2904)
!2907 = !DILocation(line: 528, column: 27, scope: !2904)
!2908 = !DILocation(line: 529, column: 15, scope: !2904)
!2909 = !DILocalVariable(name: "mbstate", scope: !2910, file: !162, line: 532, type: !2911)
!2910 = distinct !DILexicalBlock(scope: !2901, file: !162, line: 531, column: 15)
!2911 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2912, line: 6, baseType: !2913)
!2912 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!2913 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2914, line: 21, baseType: !2915)
!2914 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2914, line: 13, size: 64, elements: !2916)
!2916 = !{!2917, !2918}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2915, file: !2914, line: 15, baseType: !61, size: 32)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2915, file: !2914, line: 20, baseType: !2919, size: 32, offset: 32)
!2919 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2915, file: !2914, line: 16, size: 32, elements: !2920)
!2920 = !{!2921, !2922}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2919, file: !2914, line: 18, baseType: !189, size: 32)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2919, file: !2914, line: 19, baseType: !2923, size: 32)
!2923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 32, elements: !107)
!2924 = !DILocation(line: 532, column: 27, scope: !2910)
!2925 = !DILocation(line: 533, column: 17, scope: !2910)
!2926 = !DILocation(line: 535, column: 19, scope: !2910)
!2927 = !DILocation(line: 536, column: 27, scope: !2910)
!2928 = !DILocation(line: 537, column: 21, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2910, file: !162, line: 537, column: 21)
!2930 = !DILocation(line: 537, column: 29, scope: !2929)
!2931 = !DILocation(line: 537, column: 21, scope: !2910)
!2932 = !DILocation(line: 538, column: 37, scope: !2929)
!2933 = !DILocation(line: 538, column: 29, scope: !2929)
!2934 = !DILocation(line: 538, column: 27, scope: !2929)
!2935 = !DILocation(line: 538, column: 19, scope: !2929)
!2936 = !DILocation(line: 540, column: 17, scope: !2910)
!2937 = distinct !{!2937, !2936, !2938}
!2938 = !DILocation(line: 586, column: 44, scope: !2910)
!2939 = !DILocalVariable(name: "w", scope: !2940, file: !162, line: 542, type: !2941)
!2940 = distinct !DILexicalBlock(scope: !2910, file: !162, line: 541, column: 19)
!2941 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !173, line: 90, baseType: !61)
!2942 = !DILocation(line: 542, column: 29, scope: !2940)
!2943 = !DILocalVariable(name: "bytes", scope: !2940, file: !162, line: 543, type: !172)
!2944 = !DILocation(line: 543, column: 28, scope: !2940)
!2945 = !DILocation(line: 543, column: 50, scope: !2940)
!2946 = !DILocation(line: 543, column: 54, scope: !2940)
!2947 = !DILocation(line: 543, column: 58, scope: !2940)
!2948 = !DILocation(line: 543, column: 56, scope: !2940)
!2949 = !DILocation(line: 544, column: 45, scope: !2940)
!2950 = !DILocation(line: 544, column: 56, scope: !2940)
!2951 = !DILocation(line: 544, column: 60, scope: !2940)
!2952 = !DILocation(line: 544, column: 58, scope: !2940)
!2953 = !DILocation(line: 544, column: 53, scope: !2940)
!2954 = !DILocation(line: 543, column: 36, scope: !2940)
!2955 = !DILocation(line: 545, column: 25, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2940, file: !162, line: 545, column: 25)
!2957 = !DILocation(line: 545, column: 31, scope: !2956)
!2958 = !DILocation(line: 545, column: 25, scope: !2940)
!2959 = !DILocation(line: 546, column: 23, scope: !2956)
!2960 = !DILocation(line: 547, column: 30, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2956, file: !162, line: 547, column: 30)
!2962 = !DILocation(line: 547, column: 36, scope: !2961)
!2963 = !DILocation(line: 547, column: 30, scope: !2956)
!2964 = !DILocation(line: 549, column: 35, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2961, file: !162, line: 548, column: 23)
!2966 = !DILocation(line: 550, column: 25, scope: !2965)
!2967 = !DILocation(line: 552, column: 30, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2961, file: !162, line: 552, column: 30)
!2969 = !DILocation(line: 552, column: 36, scope: !2968)
!2970 = !DILocation(line: 552, column: 30, scope: !2961)
!2971 = !DILocation(line: 554, column: 35, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2968, file: !162, line: 553, column: 23)
!2973 = !DILocation(line: 555, column: 25, scope: !2972)
!2974 = !DILocation(line: 555, column: 32, scope: !2972)
!2975 = !DILocation(line: 555, column: 36, scope: !2972)
!2976 = !DILocation(line: 555, column: 34, scope: !2972)
!2977 = !DILocation(line: 555, column: 40, scope: !2972)
!2978 = !DILocation(line: 555, column: 38, scope: !2972)
!2979 = !DILocation(line: 555, column: 48, scope: !2972)
!2980 = !DILocation(line: 555, column: 51, scope: !2972)
!2981 = !DILocation(line: 555, column: 55, scope: !2972)
!2982 = !DILocation(line: 555, column: 59, scope: !2972)
!2983 = !DILocation(line: 555, column: 57, scope: !2972)
!2984 = !DILocation(line: 556, column: 28, scope: !2972)
!2985 = distinct !{!2985, !2973, !2984}
!2986 = !DILocation(line: 557, column: 25, scope: !2972)
!2987 = !DILocation(line: 565, column: 44, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2989, file: !162, line: 565, column: 29)
!2989 = distinct !DILexicalBlock(scope: !2968, file: !162, line: 560, column: 23)
!2990 = !DILocation(line: 566, column: 29, scope: !2988)
!2991 = !DILocation(line: 566, column: 32, scope: !2988)
!2992 = !DILocation(line: 566, column: 46, scope: !2988)
!2993 = !DILocation(line: 565, column: 29, scope: !2989)
!2994 = !DILocalVariable(name: "j", scope: !2995, file: !162, line: 568, type: !172)
!2995 = distinct !DILexicalBlock(scope: !2988, file: !162, line: 567, column: 27)
!2996 = !DILocation(line: 568, column: 36, scope: !2995)
!2997 = !DILocation(line: 569, column: 36, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2995, file: !162, line: 569, column: 29)
!2999 = !DILocation(line: 569, column: 34, scope: !2998)
!3000 = !DILocation(line: 569, column: 41, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2998, file: !162, line: 569, column: 29)
!3002 = !DILocation(line: 569, column: 45, scope: !3001)
!3003 = !DILocation(line: 569, column: 43, scope: !3001)
!3004 = !DILocation(line: 569, column: 29, scope: !2998)
!3005 = !DILocation(line: 570, column: 39, scope: !3001)
!3006 = !DILocation(line: 570, column: 43, scope: !3001)
!3007 = !DILocation(line: 570, column: 47, scope: !3001)
!3008 = !DILocation(line: 570, column: 45, scope: !3001)
!3009 = !DILocation(line: 570, column: 51, scope: !3001)
!3010 = !DILocation(line: 570, column: 49, scope: !3001)
!3011 = !DILocation(line: 570, column: 31, scope: !3001)
!3012 = !DILocation(line: 574, column: 35, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !3001, file: !162, line: 571, column: 33)
!3014 = !DILocation(line: 577, column: 35, scope: !3013)
!3015 = !DILocation(line: 578, column: 33, scope: !3013)
!3016 = !DILocation(line: 569, column: 53, scope: !3001)
!3017 = !DILocation(line: 569, column: 29, scope: !3001)
!3018 = distinct !{!3018, !3004, !3019}
!3019 = !DILocation(line: 578, column: 33, scope: !2998)
!3020 = !DILocation(line: 579, column: 27, scope: !2995)
!3021 = !DILocation(line: 581, column: 41, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !2989, file: !162, line: 581, column: 29)
!3023 = !DILocation(line: 581, column: 31, scope: !3022)
!3024 = !DILocation(line: 581, column: 29, scope: !2989)
!3025 = !DILocation(line: 582, column: 37, scope: !3022)
!3026 = !DILocation(line: 582, column: 27, scope: !3022)
!3027 = !DILocation(line: 583, column: 30, scope: !2989)
!3028 = !DILocation(line: 583, column: 27, scope: !2989)
!3029 = !DILocation(line: 585, column: 19, scope: !2940)
!3030 = !DILocation(line: 586, column: 26, scope: !2910)
!3031 = !DILocation(line: 586, column: 24, scope: !2910)
!3032 = !DILocation(line: 589, column: 21, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !2896, file: !162, line: 589, column: 17)
!3034 = !DILocation(line: 589, column: 19, scope: !3033)
!3035 = !DILocation(line: 589, column: 23, scope: !3033)
!3036 = !DILocation(line: 589, column: 27, scope: !3033)
!3037 = !DILocation(line: 589, column: 45, scope: !3033)
!3038 = !DILocation(line: 589, column: 50, scope: !3033)
!3039 = !DILocation(line: 589, column: 17, scope: !2896)
!3040 = !DILocalVariable(name: "ilim", scope: !3041, file: !162, line: 593, type: !172)
!3041 = distinct !DILexicalBlock(scope: !3033, file: !162, line: 590, column: 15)
!3042 = !DILocation(line: 593, column: 24, scope: !3041)
!3043 = !DILocation(line: 593, column: 31, scope: !3041)
!3044 = !DILocation(line: 593, column: 35, scope: !3041)
!3045 = !DILocation(line: 593, column: 33, scope: !3041)
!3046 = !DILocation(line: 595, column: 17, scope: !3041)
!3047 = !DILocation(line: 597, column: 25, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3049, file: !162, line: 597, column: 25)
!3049 = distinct !DILexicalBlock(scope: !3050, file: !162, line: 596, column: 19)
!3050 = distinct !DILexicalBlock(scope: !3051, file: !162, line: 595, column: 17)
!3051 = distinct !DILexicalBlock(scope: !3041, file: !162, line: 595, column: 17)
!3052 = !DILocation(line: 597, column: 43, scope: !3048)
!3053 = !DILocation(line: 597, column: 48, scope: !3048)
!3054 = !DILocation(line: 597, column: 25, scope: !3049)
!3055 = !DILocation(line: 599, column: 29, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3057, file: !162, line: 599, column: 29)
!3057 = distinct !DILexicalBlock(scope: !3048, file: !162, line: 598, column: 23)
!3058 = !DILocation(line: 599, column: 29, scope: !3057)
!3059 = !DILocation(line: 600, column: 27, scope: !3056)
!3060 = !DILocation(line: 601, column: 25, scope: !3057)
!3061 = distinct !{!3061, !3060, !3060}
!3062 = !DILocation(line: 601, column: 25, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3064, file: !162, line: 601, column: 25)
!3064 = distinct !DILexicalBlock(scope: !3057, file: !162, line: 601, column: 25)
!3065 = !DILocation(line: 601, column: 25, scope: !3064)
!3066 = !DILocation(line: 602, column: 25, scope: !3057)
!3067 = distinct !{!3067, !3066, !3066}
!3068 = !DILocation(line: 602, column: 25, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3070, file: !162, line: 602, column: 25)
!3070 = distinct !DILexicalBlock(scope: !3057, file: !162, line: 602, column: 25)
!3071 = !DILocation(line: 602, column: 25, scope: !3070)
!3072 = !DILocation(line: 603, column: 25, scope: !3057)
!3073 = distinct !{!3073, !3072, !3072}
!3074 = !DILocation(line: 603, column: 25, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3076, file: !162, line: 603, column: 25)
!3076 = distinct !DILexicalBlock(scope: !3057, file: !162, line: 603, column: 25)
!3077 = !DILocation(line: 603, column: 25, scope: !3076)
!3078 = !DILocation(line: 604, column: 36, scope: !3057)
!3079 = !DILocation(line: 604, column: 38, scope: !3057)
!3080 = !DILocation(line: 604, column: 33, scope: !3057)
!3081 = !DILocation(line: 604, column: 29, scope: !3057)
!3082 = !DILocation(line: 604, column: 27, scope: !3057)
!3083 = !DILocation(line: 605, column: 23, scope: !3057)
!3084 = !DILocation(line: 606, column: 30, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3048, file: !162, line: 606, column: 30)
!3086 = !DILocation(line: 606, column: 30, scope: !3048)
!3087 = !DILocation(line: 608, column: 25, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3085, file: !162, line: 607, column: 23)
!3089 = distinct !{!3089, !3087, !3087}
!3090 = !DILocation(line: 608, column: 25, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3092, file: !162, line: 608, column: 25)
!3092 = distinct !DILexicalBlock(scope: !3088, file: !162, line: 608, column: 25)
!3093 = !DILocation(line: 608, column: 25, scope: !3092)
!3094 = !DILocation(line: 609, column: 40, scope: !3088)
!3095 = !DILocation(line: 610, column: 23, scope: !3088)
!3096 = !DILocation(line: 611, column: 25, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3049, file: !162, line: 611, column: 25)
!3098 = !DILocation(line: 611, column: 33, scope: !3097)
!3099 = !DILocation(line: 611, column: 35, scope: !3097)
!3100 = !DILocation(line: 611, column: 30, scope: !3097)
!3101 = !DILocation(line: 611, column: 25, scope: !3049)
!3102 = !DILocation(line: 612, column: 23, scope: !3097)
!3103 = !DILocation(line: 613, column: 21, scope: !3049)
!3104 = distinct !{!3104, !3103, !3103}
!3105 = !DILocation(line: 613, column: 21, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3107, file: !162, line: 613, column: 21)
!3107 = distinct !DILexicalBlock(scope: !3049, file: !162, line: 613, column: 21)
!3108 = !DILocation(line: 613, column: 21, scope: !3107)
!3109 = !DILocation(line: 614, column: 25, scope: !3049)
!3110 = !DILocation(line: 614, column: 29, scope: !3049)
!3111 = !DILocation(line: 614, column: 23, scope: !3049)
!3112 = !DILocation(line: 595, column: 17, scope: !3050)
!3113 = distinct !{!3113, !3114, !3115}
!3114 = !DILocation(line: 595, column: 17, scope: !3051)
!3115 = !DILocation(line: 615, column: 19, scope: !3051)
!3116 = !DILocation(line: 617, column: 17, scope: !3041)
!3117 = !DILocation(line: 620, column: 9, scope: !2685)
!3118 = !DILocation(line: 622, column: 15, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !2646, file: !162, line: 622, column: 11)
!3120 = !DILocation(line: 622, column: 33, scope: !3119)
!3121 = !DILocation(line: 622, column: 36, scope: !3119)
!3122 = !DILocation(line: 623, column: 14, scope: !3119)
!3123 = !DILocation(line: 623, column: 17, scope: !3119)
!3124 = !DILocation(line: 624, column: 14, scope: !3119)
!3125 = !DILocation(line: 624, column: 17, scope: !3119)
!3126 = !DILocation(line: 624, column: 33, scope: !3119)
!3127 = !DILocation(line: 624, column: 35, scope: !3119)
!3128 = !DILocation(line: 624, column: 56, scope: !3119)
!3129 = !DILocation(line: 624, column: 58, scope: !3119)
!3130 = !DILocation(line: 624, column: 52, scope: !3119)
!3131 = !DILocation(line: 624, column: 47, scope: !3119)
!3132 = !DILocation(line: 625, column: 11, scope: !3119)
!3133 = !DILocation(line: 625, column: 15, scope: !3119)
!3134 = !DILocation(line: 622, column: 11, scope: !2646)
!3135 = !DILocation(line: 626, column: 9, scope: !3119)
!3136 = !DILocation(line: 629, column: 11, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !2646, file: !162, line: 629, column: 11)
!3138 = !DILocation(line: 629, column: 11, scope: !2646)
!3139 = !DILocation(line: 630, column: 9, scope: !3137)
!3140 = !DILocation(line: 631, column: 7, scope: !2646)
!3141 = distinct !{!3141, !3140, !3140}
!3142 = !DILocation(line: 631, column: 7, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3144, file: !162, line: 631, column: 7)
!3144 = distinct !DILexicalBlock(scope: !2646, file: !162, line: 631, column: 7)
!3145 = !DILocation(line: 631, column: 7, scope: !3144)
!3146 = !DILocation(line: 634, column: 7, scope: !2646)
!3147 = distinct !{!3147, !3146, !3146}
!3148 = !DILocation(line: 634, column: 7, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3150, file: !162, line: 634, column: 7)
!3150 = distinct !DILexicalBlock(scope: !2646, file: !162, line: 634, column: 7)
!3151 = !DILocation(line: 634, column: 7, scope: !3150)
!3152 = !DILocation(line: 635, column: 5, scope: !2646)
!3153 = !DILocation(line: 343, column: 75, scope: !2635)
!3154 = !DILocation(line: 343, column: 3, scope: !2635)
!3155 = distinct !{!3155, !2644, !3156}
!3156 = !DILocation(line: 635, column: 5, scope: !2632)
!3157 = !DILocation(line: 637, column: 7, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !2508, file: !162, line: 637, column: 7)
!3159 = !DILocation(line: 637, column: 11, scope: !3158)
!3160 = !DILocation(line: 637, column: 16, scope: !3158)
!3161 = !DILocation(line: 637, column: 19, scope: !3158)
!3162 = !DILocation(line: 637, column: 33, scope: !3158)
!3163 = !DILocation(line: 638, column: 7, scope: !3158)
!3164 = !DILocation(line: 638, column: 10, scope: !3158)
!3165 = !DILocation(line: 637, column: 7, scope: !2508)
!3166 = !DILocation(line: 639, column: 5, scope: !3158)
!3167 = !DILocation(line: 641, column: 7, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !2508, file: !162, line: 641, column: 7)
!3169 = !DILocation(line: 641, column: 20, scope: !3168)
!3170 = !DILocation(line: 641, column: 24, scope: !3168)
!3171 = !DILocation(line: 641, column: 7, scope: !2508)
!3172 = !DILocation(line: 642, column: 5, scope: !3168)
!3173 = !DILocation(line: 642, column: 13, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3175, file: !162, line: 642, column: 5)
!3175 = distinct !DILexicalBlock(scope: !3168, file: !162, line: 642, column: 5)
!3176 = !DILocation(line: 642, column: 12, scope: !3174)
!3177 = !DILocation(line: 642, column: 5, scope: !3175)
!3178 = !DILocation(line: 643, column: 7, scope: !3174)
!3179 = distinct !{!3179, !3178, !3178}
!3180 = !DILocation(line: 643, column: 7, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3182, file: !162, line: 643, column: 7)
!3182 = distinct !DILexicalBlock(scope: !3174, file: !162, line: 643, column: 7)
!3183 = !DILocation(line: 643, column: 7, scope: !3182)
!3184 = !DILocation(line: 642, column: 39, scope: !3174)
!3185 = !DILocation(line: 642, column: 5, scope: !3174)
!3186 = distinct !{!3186, !3177, !3187}
!3187 = !DILocation(line: 643, column: 7, scope: !3175)
!3188 = !DILocation(line: 645, column: 7, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !2508, file: !162, line: 645, column: 7)
!3190 = !DILocation(line: 645, column: 13, scope: !3189)
!3191 = !DILocation(line: 645, column: 11, scope: !3189)
!3192 = !DILocation(line: 645, column: 7, scope: !2508)
!3193 = !DILocation(line: 646, column: 5, scope: !3189)
!3194 = !DILocation(line: 646, column: 12, scope: !3189)
!3195 = !DILocation(line: 646, column: 17, scope: !3189)
!3196 = !DILocation(line: 647, column: 10, scope: !2508)
!3197 = !DILocation(line: 647, column: 3, scope: !2508)
!3198 = !DILocation(line: 652, column: 36, scope: !2508)
!3199 = !DILocation(line: 652, column: 44, scope: !2508)
!3200 = !DILocation(line: 652, column: 56, scope: !2508)
!3201 = !DILocation(line: 652, column: 61, scope: !2508)
!3202 = !DILocation(line: 653, column: 36, scope: !2508)
!3203 = !DILocation(line: 654, column: 36, scope: !2508)
!3204 = !DILocation(line: 654, column: 42, scope: !2508)
!3205 = !DILocation(line: 655, column: 36, scope: !2508)
!3206 = !DILocation(line: 655, column: 48, scope: !2508)
!3207 = !DILocation(line: 652, column: 10, scope: !2508)
!3208 = !DILocation(line: 652, column: 3, scope: !2508)
!3209 = !DILocation(line: 656, column: 1, scope: !2508)
!3210 = distinct !DISubprogram(name: "gettext_quote", scope: !162, file: !162, line: 193, type: !3211, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!52, !52, !120}
!3213 = !DILocalVariable(name: "msgid", arg: 1, scope: !3210, file: !162, line: 193, type: !52)
!3214 = !DILocation(line: 193, column: 28, scope: !3210)
!3215 = !DILocalVariable(name: "s", arg: 2, scope: !3210, file: !162, line: 193, type: !120)
!3216 = !DILocation(line: 193, column: 54, scope: !3210)
!3217 = !DILocalVariable(name: "translation", scope: !3210, file: !162, line: 195, type: !52)
!3218 = !DILocation(line: 195, column: 15, scope: !3210)
!3219 = !DILocation(line: 195, column: 29, scope: !3210)
!3220 = !DILocalVariable(name: "locale_code", scope: !3210, file: !162, line: 196, type: !52)
!3221 = !DILocation(line: 196, column: 15, scope: !3210)
!3222 = !DILocation(line: 198, column: 7, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3210, file: !162, line: 198, column: 7)
!3224 = !DILocation(line: 198, column: 22, scope: !3223)
!3225 = !DILocation(line: 198, column: 19, scope: !3223)
!3226 = !DILocation(line: 198, column: 7, scope: !3210)
!3227 = !DILocation(line: 199, column: 12, scope: !3223)
!3228 = !DILocation(line: 199, column: 5, scope: !3223)
!3229 = !DILocation(line: 219, column: 17, scope: !3210)
!3230 = !DILocation(line: 219, column: 15, scope: !3210)
!3231 = !DILocation(line: 220, column: 7, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3210, file: !162, line: 220, column: 7)
!3233 = !DILocation(line: 220, column: 7, scope: !3210)
!3234 = !DILocation(line: 221, column: 12, scope: !3232)
!3235 = !DILocation(line: 221, column: 21, scope: !3232)
!3236 = !DILocation(line: 221, column: 5, scope: !3232)
!3237 = !DILocation(line: 222, column: 7, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3210, file: !162, line: 222, column: 7)
!3239 = !DILocation(line: 222, column: 7, scope: !3210)
!3240 = !DILocation(line: 223, column: 12, scope: !3238)
!3241 = !DILocation(line: 223, column: 21, scope: !3238)
!3242 = !DILocation(line: 223, column: 5, scope: !3238)
!3243 = !DILocation(line: 225, column: 11, scope: !3210)
!3244 = !DILocation(line: 225, column: 13, scope: !3210)
!3245 = !DILocation(line: 225, column: 3, scope: !3210)
!3246 = !DILocation(line: 226, column: 1, scope: !3210)
!3247 = distinct !DISubprogram(name: "quotearg_alloc", scope: !162, file: !162, line: 683, type: !3248, isLocal: false, isDefinition: true, scopeLine: 685, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!60, !52, !172, !2467}
!3250 = !DILocalVariable(name: "arg", arg: 1, scope: !3247, file: !162, line: 683, type: !52)
!3251 = !DILocation(line: 683, column: 29, scope: !3247)
!3252 = !DILocalVariable(name: "argsize", arg: 2, scope: !3247, file: !162, line: 683, type: !172)
!3253 = !DILocation(line: 683, column: 41, scope: !3247)
!3254 = !DILocalVariable(name: "o", arg: 3, scope: !3247, file: !162, line: 684, type: !2467)
!3255 = !DILocation(line: 684, column: 47, scope: !3247)
!3256 = !DILocation(line: 686, column: 30, scope: !3247)
!3257 = !DILocation(line: 686, column: 35, scope: !3247)
!3258 = !DILocation(line: 686, column: 50, scope: !3247)
!3259 = !DILocation(line: 686, column: 10, scope: !3247)
!3260 = !DILocation(line: 686, column: 3, scope: !3247)
!3261 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !162, file: !162, line: 696, type: !3262, isLocal: false, isDefinition: true, scopeLine: 698, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!60, !52, !172, !647, !2467}
!3264 = !DILocalVariable(name: "arg", arg: 1, scope: !3261, file: !162, line: 696, type: !52)
!3265 = !DILocation(line: 696, column: 33, scope: !3261)
!3266 = !DILocalVariable(name: "argsize", arg: 2, scope: !3261, file: !162, line: 696, type: !172)
!3267 = !DILocation(line: 696, column: 45, scope: !3261)
!3268 = !DILocalVariable(name: "size", arg: 3, scope: !3261, file: !162, line: 696, type: !647)
!3269 = !DILocation(line: 696, column: 62, scope: !3261)
!3270 = !DILocalVariable(name: "o", arg: 4, scope: !3261, file: !162, line: 697, type: !2467)
!3271 = !DILocation(line: 697, column: 51, scope: !3261)
!3272 = !DILocalVariable(name: "p", scope: !3261, file: !162, line: 699, type: !2467)
!3273 = !DILocation(line: 699, column: 33, scope: !3261)
!3274 = !DILocation(line: 699, column: 37, scope: !3261)
!3275 = !DILocation(line: 699, column: 41, scope: !3261)
!3276 = !DILocalVariable(name: "e", scope: !3261, file: !162, line: 700, type: !61)
!3277 = !DILocation(line: 700, column: 7, scope: !3261)
!3278 = !DILocation(line: 700, column: 11, scope: !3261)
!3279 = !DILocalVariable(name: "flags", scope: !3261, file: !162, line: 702, type: !61)
!3280 = !DILocation(line: 702, column: 7, scope: !3261)
!3281 = !DILocation(line: 702, column: 15, scope: !3261)
!3282 = !DILocation(line: 702, column: 18, scope: !3261)
!3283 = !DILocation(line: 702, column: 27, scope: !3261)
!3284 = !DILocation(line: 702, column: 24, scope: !3261)
!3285 = !DILocalVariable(name: "bufsize", scope: !3261, file: !162, line: 703, type: !172)
!3286 = !DILocation(line: 703, column: 10, scope: !3261)
!3287 = !DILocation(line: 703, column: 52, scope: !3261)
!3288 = !DILocation(line: 703, column: 57, scope: !3261)
!3289 = !DILocation(line: 703, column: 66, scope: !3261)
!3290 = !DILocation(line: 703, column: 69, scope: !3261)
!3291 = !DILocation(line: 704, column: 46, scope: !3261)
!3292 = !DILocation(line: 704, column: 53, scope: !3261)
!3293 = !DILocation(line: 704, column: 56, scope: !3261)
!3294 = !DILocation(line: 705, column: 46, scope: !3261)
!3295 = !DILocation(line: 705, column: 49, scope: !3261)
!3296 = !DILocation(line: 706, column: 46, scope: !3261)
!3297 = !DILocation(line: 706, column: 49, scope: !3261)
!3298 = !DILocation(line: 703, column: 20, scope: !3261)
!3299 = !DILocation(line: 706, column: 62, scope: !3261)
!3300 = !DILocalVariable(name: "buf", scope: !3261, file: !162, line: 707, type: !60)
!3301 = !DILocation(line: 707, column: 9, scope: !3261)
!3302 = !DILocation(line: 707, column: 27, scope: !3261)
!3303 = !DILocation(line: 707, column: 15, scope: !3261)
!3304 = !DILocation(line: 708, column: 29, scope: !3261)
!3305 = !DILocation(line: 708, column: 34, scope: !3261)
!3306 = !DILocation(line: 708, column: 43, scope: !3261)
!3307 = !DILocation(line: 708, column: 48, scope: !3261)
!3308 = !DILocation(line: 708, column: 57, scope: !3261)
!3309 = !DILocation(line: 708, column: 60, scope: !3261)
!3310 = !DILocation(line: 708, column: 67, scope: !3261)
!3311 = !DILocation(line: 709, column: 29, scope: !3261)
!3312 = !DILocation(line: 709, column: 32, scope: !3261)
!3313 = !DILocation(line: 710, column: 29, scope: !3261)
!3314 = !DILocation(line: 710, column: 32, scope: !3261)
!3315 = !DILocation(line: 710, column: 44, scope: !3261)
!3316 = !DILocation(line: 710, column: 47, scope: !3261)
!3317 = !DILocation(line: 708, column: 3, scope: !3261)
!3318 = !DILocation(line: 711, column: 11, scope: !3261)
!3319 = !DILocation(line: 711, column: 3, scope: !3261)
!3320 = !DILocation(line: 711, column: 9, scope: !3261)
!3321 = !DILocation(line: 712, column: 7, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3261, file: !162, line: 712, column: 7)
!3323 = !DILocation(line: 712, column: 7, scope: !3261)
!3324 = !DILocation(line: 713, column: 13, scope: !3322)
!3325 = !DILocation(line: 713, column: 21, scope: !3322)
!3326 = !DILocation(line: 713, column: 6, scope: !3322)
!3327 = !DILocation(line: 713, column: 11, scope: !3322)
!3328 = !DILocation(line: 713, column: 5, scope: !3322)
!3329 = !DILocation(line: 714, column: 10, scope: !3261)
!3330 = !DILocation(line: 714, column: 3, scope: !3261)
!3331 = distinct !DISubprogram(name: "quotearg_free", scope: !162, file: !162, line: 732, type: !137, isLocal: false, isDefinition: true, scopeLine: 733, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3332 = !DILocalVariable(name: "sv", scope: !3331, file: !162, line: 734, type: !201)
!3333 = !DILocation(line: 734, column: 19, scope: !3331)
!3334 = !DILocation(line: 734, column: 24, scope: !3331)
!3335 = !DILocalVariable(name: "i", scope: !3331, file: !162, line: 735, type: !189)
!3336 = !DILocation(line: 735, column: 16, scope: !3331)
!3337 = !DILocation(line: 736, column: 10, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3331, file: !162, line: 736, column: 3)
!3339 = !DILocation(line: 736, column: 8, scope: !3338)
!3340 = !DILocation(line: 736, column: 15, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3338, file: !162, line: 736, column: 3)
!3342 = !DILocation(line: 736, column: 19, scope: !3341)
!3343 = !DILocation(line: 736, column: 17, scope: !3341)
!3344 = !DILocation(line: 736, column: 3, scope: !3338)
!3345 = !DILocation(line: 737, column: 11, scope: !3341)
!3346 = !DILocation(line: 737, column: 14, scope: !3341)
!3347 = !DILocation(line: 737, column: 17, scope: !3341)
!3348 = !DILocation(line: 737, column: 5, scope: !3341)
!3349 = !DILocation(line: 736, column: 28, scope: !3341)
!3350 = !DILocation(line: 736, column: 3, scope: !3341)
!3351 = distinct !{!3351, !3344, !3352}
!3352 = !DILocation(line: 737, column: 20, scope: !3338)
!3353 = !DILocation(line: 738, column: 7, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3331, file: !162, line: 738, column: 7)
!3355 = !DILocation(line: 738, column: 13, scope: !3354)
!3356 = !DILocation(line: 738, column: 17, scope: !3354)
!3357 = !DILocation(line: 738, column: 7, scope: !3331)
!3358 = !DILocation(line: 740, column: 13, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3354, file: !162, line: 739, column: 5)
!3360 = !DILocation(line: 740, column: 19, scope: !3359)
!3361 = !DILocation(line: 740, column: 7, scope: !3359)
!3362 = !DILocation(line: 741, column: 21, scope: !3359)
!3363 = !DILocation(line: 742, column: 20, scope: !3359)
!3364 = !DILocation(line: 743, column: 5, scope: !3359)
!3365 = !DILocation(line: 744, column: 7, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3331, file: !162, line: 744, column: 7)
!3367 = !DILocation(line: 744, column: 10, scope: !3366)
!3368 = !DILocation(line: 744, column: 7, scope: !3331)
!3369 = !DILocation(line: 746, column: 13, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3366, file: !162, line: 745, column: 5)
!3371 = !DILocation(line: 746, column: 7, scope: !3370)
!3372 = !DILocation(line: 747, column: 15, scope: !3370)
!3373 = !DILocation(line: 748, column: 5, scope: !3370)
!3374 = !DILocation(line: 749, column: 10, scope: !3331)
!3375 = !DILocation(line: 750, column: 1, scope: !3331)
!3376 = distinct !DISubprogram(name: "quotearg_n", scope: !162, file: !162, line: 821, type: !3377, isLocal: false, isDefinition: true, scopeLine: 822, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!60, !61, !52}
!3379 = !DILocalVariable(name: "n", arg: 1, scope: !3376, file: !162, line: 821, type: !61)
!3380 = !DILocation(line: 821, column: 17, scope: !3376)
!3381 = !DILocalVariable(name: "arg", arg: 2, scope: !3376, file: !162, line: 821, type: !52)
!3382 = !DILocation(line: 821, column: 32, scope: !3376)
!3383 = !DILocation(line: 823, column: 30, scope: !3376)
!3384 = !DILocation(line: 823, column: 33, scope: !3376)
!3385 = !DILocation(line: 823, column: 10, scope: !3376)
!3386 = !DILocation(line: 823, column: 3, scope: !3376)
!3387 = distinct !DISubprogram(name: "quotearg_n_options", scope: !162, file: !162, line: 761, type: !3388, isLocal: true, isDefinition: true, scopeLine: 763, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!60, !61, !52, !172, !2467}
!3390 = !DILocalVariable(name: "n", arg: 1, scope: !3387, file: !162, line: 761, type: !61)
!3391 = !DILocation(line: 761, column: 25, scope: !3387)
!3392 = !DILocalVariable(name: "arg", arg: 2, scope: !3387, file: !162, line: 761, type: !52)
!3393 = !DILocation(line: 761, column: 40, scope: !3387)
!3394 = !DILocalVariable(name: "argsize", arg: 3, scope: !3387, file: !162, line: 761, type: !172)
!3395 = !DILocation(line: 761, column: 52, scope: !3387)
!3396 = !DILocalVariable(name: "options", arg: 4, scope: !3387, file: !162, line: 762, type: !2467)
!3397 = !DILocation(line: 762, column: 51, scope: !3387)
!3398 = !DILocalVariable(name: "e", scope: !3387, file: !162, line: 764, type: !61)
!3399 = !DILocation(line: 764, column: 7, scope: !3387)
!3400 = !DILocation(line: 764, column: 11, scope: !3387)
!3401 = !DILocalVariable(name: "n0", scope: !3387, file: !162, line: 766, type: !189)
!3402 = !DILocation(line: 766, column: 16, scope: !3387)
!3403 = !DILocation(line: 766, column: 21, scope: !3387)
!3404 = !DILocalVariable(name: "sv", scope: !3387, file: !162, line: 767, type: !201)
!3405 = !DILocation(line: 767, column: 19, scope: !3387)
!3406 = !DILocation(line: 767, column: 24, scope: !3387)
!3407 = !DILocation(line: 769, column: 7, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3387, file: !162, line: 769, column: 7)
!3409 = !DILocation(line: 769, column: 9, scope: !3408)
!3410 = !DILocation(line: 769, column: 7, scope: !3387)
!3411 = !DILocation(line: 770, column: 5, scope: !3408)
!3412 = !DILocation(line: 772, column: 7, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3387, file: !162, line: 772, column: 7)
!3414 = !DILocation(line: 772, column: 17, scope: !3413)
!3415 = !DILocation(line: 772, column: 14, scope: !3413)
!3416 = !DILocation(line: 772, column: 7, scope: !3387)
!3417 = !DILocalVariable(name: "n1", scope: !3418, file: !162, line: 779, type: !172)
!3418 = distinct !DILexicalBlock(scope: !3413, file: !162, line: 773, column: 5)
!3419 = !DILocation(line: 779, column: 14, scope: !3418)
!3420 = !DILocation(line: 779, column: 19, scope: !3418)
!3421 = !DILocation(line: 779, column: 22, scope: !3418)
!3422 = !DILocalVariable(name: "preallocated", scope: !3418, file: !162, line: 780, type: !74)
!3423 = !DILocation(line: 780, column: 12, scope: !3418)
!3424 = !DILocation(line: 780, column: 28, scope: !3418)
!3425 = !DILocation(line: 780, column: 31, scope: !3418)
!3426 = !DILocation(line: 782, column: 11, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3418, file: !162, line: 782, column: 11)
!3428 = !DILocation(line: 782, column: 11, scope: !3418)
!3429 = !DILocation(line: 783, column: 9, scope: !3427)
!3430 = !DILocation(line: 785, column: 32, scope: !3418)
!3431 = !DILocation(line: 785, column: 54, scope: !3418)
!3432 = !DILocation(line: 785, column: 58, scope: !3418)
!3433 = !DILocation(line: 785, column: 61, scope: !3418)
!3434 = !DILocation(line: 785, column: 22, scope: !3418)
!3435 = !DILocation(line: 785, column: 20, scope: !3418)
!3436 = !DILocation(line: 785, column: 15, scope: !3418)
!3437 = !DILocation(line: 786, column: 11, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3418, file: !162, line: 786, column: 11)
!3439 = !DILocation(line: 786, column: 11, scope: !3418)
!3440 = !DILocation(line: 787, column: 10, scope: !3438)
!3441 = !DILocation(line: 787, column: 15, scope: !3438)
!3442 = !DILocation(line: 787, column: 9, scope: !3438)
!3443 = !DILocation(line: 788, column: 15, scope: !3418)
!3444 = !DILocation(line: 788, column: 20, scope: !3418)
!3445 = !DILocation(line: 788, column: 18, scope: !3418)
!3446 = !DILocation(line: 788, column: 7, scope: !3418)
!3447 = !DILocation(line: 788, column: 32, scope: !3418)
!3448 = !DILocation(line: 788, column: 37, scope: !3418)
!3449 = !DILocation(line: 788, column: 35, scope: !3418)
!3450 = !DILocation(line: 788, column: 45, scope: !3418)
!3451 = !DILocation(line: 789, column: 16, scope: !3418)
!3452 = !DILocation(line: 789, column: 14, scope: !3418)
!3453 = !DILocation(line: 790, column: 5, scope: !3418)
!3454 = !DILocalVariable(name: "size", scope: !3455, file: !162, line: 793, type: !172)
!3455 = distinct !DILexicalBlock(scope: !3387, file: !162, line: 792, column: 3)
!3456 = !DILocation(line: 793, column: 12, scope: !3455)
!3457 = !DILocation(line: 793, column: 19, scope: !3455)
!3458 = !DILocation(line: 793, column: 22, scope: !3455)
!3459 = !DILocation(line: 793, column: 25, scope: !3455)
!3460 = !DILocalVariable(name: "val", scope: !3455, file: !162, line: 794, type: !60)
!3461 = !DILocation(line: 794, column: 11, scope: !3455)
!3462 = !DILocation(line: 794, column: 17, scope: !3455)
!3463 = !DILocation(line: 794, column: 20, scope: !3455)
!3464 = !DILocation(line: 794, column: 23, scope: !3455)
!3465 = !DILocalVariable(name: "flags", scope: !3455, file: !162, line: 796, type: !61)
!3466 = !DILocation(line: 796, column: 9, scope: !3455)
!3467 = !DILocation(line: 796, column: 17, scope: !3455)
!3468 = !DILocation(line: 796, column: 26, scope: !3455)
!3469 = !DILocation(line: 796, column: 32, scope: !3455)
!3470 = !DILocalVariable(name: "qsize", scope: !3455, file: !162, line: 797, type: !172)
!3471 = !DILocation(line: 797, column: 12, scope: !3455)
!3472 = !DILocation(line: 797, column: 46, scope: !3455)
!3473 = !DILocation(line: 797, column: 51, scope: !3455)
!3474 = !DILocation(line: 797, column: 57, scope: !3455)
!3475 = !DILocation(line: 797, column: 62, scope: !3455)
!3476 = !DILocation(line: 798, column: 46, scope: !3455)
!3477 = !DILocation(line: 798, column: 55, scope: !3455)
!3478 = !DILocation(line: 798, column: 62, scope: !3455)
!3479 = !DILocation(line: 799, column: 46, scope: !3455)
!3480 = !DILocation(line: 799, column: 55, scope: !3455)
!3481 = !DILocation(line: 800, column: 46, scope: !3455)
!3482 = !DILocation(line: 800, column: 55, scope: !3455)
!3483 = !DILocation(line: 801, column: 46, scope: !3455)
!3484 = !DILocation(line: 801, column: 55, scope: !3455)
!3485 = !DILocation(line: 797, column: 20, scope: !3455)
!3486 = !DILocation(line: 803, column: 9, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3455, file: !162, line: 803, column: 9)
!3488 = !DILocation(line: 803, column: 17, scope: !3487)
!3489 = !DILocation(line: 803, column: 14, scope: !3487)
!3490 = !DILocation(line: 803, column: 9, scope: !3455)
!3491 = !DILocation(line: 805, column: 29, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3487, file: !162, line: 804, column: 7)
!3493 = !DILocation(line: 805, column: 35, scope: !3492)
!3494 = !DILocation(line: 805, column: 27, scope: !3492)
!3495 = !DILocation(line: 805, column: 9, scope: !3492)
!3496 = !DILocation(line: 805, column: 12, scope: !3492)
!3497 = !DILocation(line: 805, column: 15, scope: !3492)
!3498 = !DILocation(line: 805, column: 20, scope: !3492)
!3499 = !DILocation(line: 806, column: 13, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3492, file: !162, line: 806, column: 13)
!3501 = !DILocation(line: 806, column: 17, scope: !3500)
!3502 = !DILocation(line: 806, column: 13, scope: !3492)
!3503 = !DILocation(line: 807, column: 17, scope: !3500)
!3504 = !DILocation(line: 807, column: 11, scope: !3500)
!3505 = !DILocation(line: 808, column: 39, scope: !3492)
!3506 = !DILocation(line: 808, column: 27, scope: !3492)
!3507 = !DILocation(line: 808, column: 25, scope: !3492)
!3508 = !DILocation(line: 808, column: 9, scope: !3492)
!3509 = !DILocation(line: 808, column: 12, scope: !3492)
!3510 = !DILocation(line: 808, column: 15, scope: !3492)
!3511 = !DILocation(line: 808, column: 19, scope: !3492)
!3512 = !DILocation(line: 809, column: 35, scope: !3492)
!3513 = !DILocation(line: 809, column: 40, scope: !3492)
!3514 = !DILocation(line: 809, column: 46, scope: !3492)
!3515 = !DILocation(line: 809, column: 51, scope: !3492)
!3516 = !DILocation(line: 809, column: 60, scope: !3492)
!3517 = !DILocation(line: 809, column: 69, scope: !3492)
!3518 = !DILocation(line: 810, column: 35, scope: !3492)
!3519 = !DILocation(line: 810, column: 42, scope: !3492)
!3520 = !DILocation(line: 810, column: 51, scope: !3492)
!3521 = !DILocation(line: 811, column: 35, scope: !3492)
!3522 = !DILocation(line: 811, column: 44, scope: !3492)
!3523 = !DILocation(line: 812, column: 35, scope: !3492)
!3524 = !DILocation(line: 812, column: 44, scope: !3492)
!3525 = !DILocation(line: 809, column: 9, scope: !3492)
!3526 = !DILocation(line: 813, column: 7, scope: !3492)
!3527 = !DILocation(line: 815, column: 13, scope: !3455)
!3528 = !DILocation(line: 815, column: 5, scope: !3455)
!3529 = !DILocation(line: 815, column: 11, scope: !3455)
!3530 = !DILocation(line: 816, column: 12, scope: !3455)
!3531 = !DILocation(line: 816, column: 5, scope: !3455)
!3532 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !162, file: !162, line: 827, type: !3533, isLocal: false, isDefinition: true, scopeLine: 828, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{!60, !61, !52, !172}
!3535 = !DILocalVariable(name: "n", arg: 1, scope: !3532, file: !162, line: 827, type: !61)
!3536 = !DILocation(line: 827, column: 21, scope: !3532)
!3537 = !DILocalVariable(name: "arg", arg: 2, scope: !3532, file: !162, line: 827, type: !52)
!3538 = !DILocation(line: 827, column: 36, scope: !3532)
!3539 = !DILocalVariable(name: "argsize", arg: 3, scope: !3532, file: !162, line: 827, type: !172)
!3540 = !DILocation(line: 827, column: 48, scope: !3532)
!3541 = !DILocation(line: 829, column: 30, scope: !3532)
!3542 = !DILocation(line: 829, column: 33, scope: !3532)
!3543 = !DILocation(line: 829, column: 38, scope: !3532)
!3544 = !DILocation(line: 829, column: 10, scope: !3532)
!3545 = !DILocation(line: 829, column: 3, scope: !3532)
!3546 = distinct !DISubprogram(name: "quotearg", scope: !162, file: !162, line: 833, type: !1652, isLocal: false, isDefinition: true, scopeLine: 834, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3547 = !DILocalVariable(name: "arg", arg: 1, scope: !3546, file: !162, line: 833, type: !52)
!3548 = !DILocation(line: 833, column: 23, scope: !3546)
!3549 = !DILocation(line: 835, column: 25, scope: !3546)
!3550 = !DILocation(line: 835, column: 10, scope: !3546)
!3551 = !DILocation(line: 835, column: 3, scope: !3546)
!3552 = distinct !DISubprogram(name: "quotearg_mem", scope: !162, file: !162, line: 839, type: !3553, isLocal: false, isDefinition: true, scopeLine: 840, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{!60, !52, !172}
!3555 = !DILocalVariable(name: "arg", arg: 1, scope: !3552, file: !162, line: 839, type: !52)
!3556 = !DILocation(line: 839, column: 27, scope: !3552)
!3557 = !DILocalVariable(name: "argsize", arg: 2, scope: !3552, file: !162, line: 839, type: !172)
!3558 = !DILocation(line: 839, column: 39, scope: !3552)
!3559 = !DILocation(line: 841, column: 29, scope: !3552)
!3560 = !DILocation(line: 841, column: 34, scope: !3552)
!3561 = !DILocation(line: 841, column: 10, scope: !3552)
!3562 = !DILocation(line: 841, column: 3, scope: !3552)
!3563 = distinct !DISubprogram(name: "quotearg_n_style", scope: !162, file: !162, line: 845, type: !3564, isLocal: false, isDefinition: true, scopeLine: 846, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!60, !61, !120, !52}
!3566 = !DILocalVariable(name: "n", arg: 1, scope: !3563, file: !162, line: 845, type: !61)
!3567 = !DILocation(line: 845, column: 23, scope: !3563)
!3568 = !DILocalVariable(name: "s", arg: 2, scope: !3563, file: !162, line: 845, type: !120)
!3569 = !DILocation(line: 845, column: 45, scope: !3563)
!3570 = !DILocalVariable(name: "arg", arg: 3, scope: !3563, file: !162, line: 845, type: !52)
!3571 = !DILocation(line: 845, column: 60, scope: !3563)
!3572 = !DILocalVariable(name: "o", scope: !3563, file: !162, line: 847, type: !2468)
!3573 = !DILocation(line: 847, column: 32, scope: !3563)
!3574 = !DILocation(line: 847, column: 64, scope: !3563)
!3575 = !DILocation(line: 847, column: 36, scope: !3563)
!3576 = !DILocation(line: 848, column: 30, scope: !3563)
!3577 = !DILocation(line: 848, column: 33, scope: !3563)
!3578 = !DILocation(line: 848, column: 10, scope: !3563)
!3579 = !DILocation(line: 848, column: 3, scope: !3563)
!3580 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !162, file: !162, line: 179, type: !3581, isLocal: true, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!183, !120}
!3583 = !DILocalVariable(name: "style", arg: 1, scope: !3580, file: !162, line: 179, type: !120)
!3584 = !DILocation(line: 179, column: 48, scope: !3580)
!3585 = !DILocalVariable(name: "o", scope: !3580, file: !162, line: 181, type: !183)
!3586 = !DILocation(line: 181, column: 26, scope: !3580)
!3587 = !DILocation(line: 182, column: 7, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3580, file: !162, line: 182, column: 7)
!3589 = !DILocation(line: 182, column: 13, scope: !3588)
!3590 = !DILocation(line: 182, column: 7, scope: !3580)
!3591 = !DILocation(line: 183, column: 5, scope: !3588)
!3592 = !DILocation(line: 184, column: 13, scope: !3580)
!3593 = !DILocation(line: 184, column: 5, scope: !3580)
!3594 = !DILocation(line: 184, column: 11, scope: !3580)
!3595 = !DILocation(line: 185, column: 10, scope: !3580)
!3596 = !DILocation(line: 185, column: 3, scope: !3580)
!3597 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !162, file: !162, line: 852, type: !3598, isLocal: false, isDefinition: true, scopeLine: 854, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{!60, !61, !120, !52, !172}
!3600 = !DILocalVariable(name: "n", arg: 1, scope: !3597, file: !162, line: 852, type: !61)
!3601 = !DILocation(line: 852, column: 27, scope: !3597)
!3602 = !DILocalVariable(name: "s", arg: 2, scope: !3597, file: !162, line: 852, type: !120)
!3603 = !DILocation(line: 852, column: 49, scope: !3597)
!3604 = !DILocalVariable(name: "arg", arg: 3, scope: !3597, file: !162, line: 853, type: !52)
!3605 = !DILocation(line: 853, column: 35, scope: !3597)
!3606 = !DILocalVariable(name: "argsize", arg: 4, scope: !3597, file: !162, line: 853, type: !172)
!3607 = !DILocation(line: 853, column: 47, scope: !3597)
!3608 = !DILocalVariable(name: "o", scope: !3597, file: !162, line: 855, type: !2468)
!3609 = !DILocation(line: 855, column: 32, scope: !3597)
!3610 = !DILocation(line: 855, column: 64, scope: !3597)
!3611 = !DILocation(line: 855, column: 36, scope: !3597)
!3612 = !DILocation(line: 856, column: 30, scope: !3597)
!3613 = !DILocation(line: 856, column: 33, scope: !3597)
!3614 = !DILocation(line: 856, column: 38, scope: !3597)
!3615 = !DILocation(line: 856, column: 10, scope: !3597)
!3616 = !DILocation(line: 856, column: 3, scope: !3597)
!3617 = distinct !DISubprogram(name: "quotearg_style", scope: !162, file: !162, line: 860, type: !3618, isLocal: false, isDefinition: true, scopeLine: 861, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{!60, !120, !52}
!3620 = !DILocalVariable(name: "s", arg: 1, scope: !3617, file: !162, line: 860, type: !120)
!3621 = !DILocation(line: 860, column: 36, scope: !3617)
!3622 = !DILocalVariable(name: "arg", arg: 2, scope: !3617, file: !162, line: 860, type: !52)
!3623 = !DILocation(line: 860, column: 51, scope: !3617)
!3624 = !DILocation(line: 862, column: 31, scope: !3617)
!3625 = !DILocation(line: 862, column: 34, scope: !3617)
!3626 = !DILocation(line: 862, column: 10, scope: !3617)
!3627 = !DILocation(line: 862, column: 3, scope: !3617)
!3628 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !162, file: !162, line: 866, type: !3629, isLocal: false, isDefinition: true, scopeLine: 867, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{!60, !120, !52, !172}
!3631 = !DILocalVariable(name: "s", arg: 1, scope: !3628, file: !162, line: 866, type: !120)
!3632 = !DILocation(line: 866, column: 40, scope: !3628)
!3633 = !DILocalVariable(name: "arg", arg: 2, scope: !3628, file: !162, line: 866, type: !52)
!3634 = !DILocation(line: 866, column: 55, scope: !3628)
!3635 = !DILocalVariable(name: "argsize", arg: 3, scope: !3628, file: !162, line: 866, type: !172)
!3636 = !DILocation(line: 866, column: 67, scope: !3628)
!3637 = !DILocation(line: 868, column: 35, scope: !3628)
!3638 = !DILocation(line: 868, column: 38, scope: !3628)
!3639 = !DILocation(line: 868, column: 43, scope: !3628)
!3640 = !DILocation(line: 868, column: 10, scope: !3628)
!3641 = !DILocation(line: 868, column: 3, scope: !3628)
!3642 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !162, file: !162, line: 872, type: !3643, isLocal: false, isDefinition: true, scopeLine: 873, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!60, !52, !172, !54}
!3645 = !DILocalVariable(name: "arg", arg: 1, scope: !3642, file: !162, line: 872, type: !52)
!3646 = !DILocation(line: 872, column: 32, scope: !3642)
!3647 = !DILocalVariable(name: "argsize", arg: 2, scope: !3642, file: !162, line: 872, type: !172)
!3648 = !DILocation(line: 872, column: 44, scope: !3642)
!3649 = !DILocalVariable(name: "ch", arg: 3, scope: !3642, file: !162, line: 872, type: !54)
!3650 = !DILocation(line: 872, column: 58, scope: !3642)
!3651 = !DILocalVariable(name: "options", scope: !3642, file: !162, line: 874, type: !183)
!3652 = !DILocation(line: 874, column: 26, scope: !3642)
!3653 = !DILocation(line: 875, column: 13, scope: !3642)
!3654 = !DILocation(line: 876, column: 31, scope: !3642)
!3655 = !DILocation(line: 876, column: 3, scope: !3642)
!3656 = !DILocation(line: 877, column: 33, scope: !3642)
!3657 = !DILocation(line: 877, column: 38, scope: !3642)
!3658 = !DILocation(line: 877, column: 10, scope: !3642)
!3659 = !DILocation(line: 877, column: 3, scope: !3642)
!3660 = distinct !DISubprogram(name: "quotearg_char", scope: !162, file: !162, line: 881, type: !3661, isLocal: false, isDefinition: true, scopeLine: 882, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!60, !52, !54}
!3663 = !DILocalVariable(name: "arg", arg: 1, scope: !3660, file: !162, line: 881, type: !52)
!3664 = !DILocation(line: 881, column: 28, scope: !3660)
!3665 = !DILocalVariable(name: "ch", arg: 2, scope: !3660, file: !162, line: 881, type: !54)
!3666 = !DILocation(line: 881, column: 38, scope: !3660)
!3667 = !DILocation(line: 883, column: 29, scope: !3660)
!3668 = !DILocation(line: 883, column: 44, scope: !3660)
!3669 = !DILocation(line: 883, column: 10, scope: !3660)
!3670 = !DILocation(line: 883, column: 3, scope: !3660)
!3671 = distinct !DISubprogram(name: "quotearg_colon", scope: !162, file: !162, line: 887, type: !1652, isLocal: false, isDefinition: true, scopeLine: 888, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3672 = !DILocalVariable(name: "arg", arg: 1, scope: !3671, file: !162, line: 887, type: !52)
!3673 = !DILocation(line: 887, column: 29, scope: !3671)
!3674 = !DILocation(line: 889, column: 25, scope: !3671)
!3675 = !DILocation(line: 889, column: 10, scope: !3671)
!3676 = !DILocation(line: 889, column: 3, scope: !3671)
!3677 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !162, file: !162, line: 893, type: !3553, isLocal: false, isDefinition: true, scopeLine: 894, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3678 = !DILocalVariable(name: "arg", arg: 1, scope: !3677, file: !162, line: 893, type: !52)
!3679 = !DILocation(line: 893, column: 33, scope: !3677)
!3680 = !DILocalVariable(name: "argsize", arg: 2, scope: !3677, file: !162, line: 893, type: !172)
!3681 = !DILocation(line: 893, column: 45, scope: !3677)
!3682 = !DILocation(line: 895, column: 29, scope: !3677)
!3683 = !DILocation(line: 895, column: 34, scope: !3677)
!3684 = !DILocation(line: 895, column: 10, scope: !3677)
!3685 = !DILocation(line: 895, column: 3, scope: !3677)
!3686 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !162, file: !162, line: 899, type: !3687, isLocal: false, isDefinition: true, scopeLine: 901, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!60, !61, !52, !52, !52}
!3689 = !DILocalVariable(name: "n", arg: 1, scope: !3686, file: !162, line: 899, type: !61)
!3690 = !DILocation(line: 899, column: 24, scope: !3686)
!3691 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3686, file: !162, line: 899, type: !52)
!3692 = !DILocation(line: 899, column: 39, scope: !3686)
!3693 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3686, file: !162, line: 900, type: !52)
!3694 = !DILocation(line: 900, column: 32, scope: !3686)
!3695 = !DILocalVariable(name: "arg", arg: 4, scope: !3686, file: !162, line: 900, type: !52)
!3696 = !DILocation(line: 900, column: 57, scope: !3686)
!3697 = !DILocation(line: 902, column: 33, scope: !3686)
!3698 = !DILocation(line: 902, column: 36, scope: !3686)
!3699 = !DILocation(line: 902, column: 48, scope: !3686)
!3700 = !DILocation(line: 902, column: 61, scope: !3686)
!3701 = !DILocation(line: 902, column: 10, scope: !3686)
!3702 = !DILocation(line: 902, column: 3, scope: !3686)
!3703 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !162, file: !162, line: 907, type: !3704, isLocal: false, isDefinition: true, scopeLine: 910, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!60, !61, !52, !52, !52, !172}
!3706 = !DILocalVariable(name: "n", arg: 1, scope: !3703, file: !162, line: 907, type: !61)
!3707 = !DILocation(line: 907, column: 28, scope: !3703)
!3708 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3703, file: !162, line: 907, type: !52)
!3709 = !DILocation(line: 907, column: 43, scope: !3703)
!3710 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3703, file: !162, line: 908, type: !52)
!3711 = !DILocation(line: 908, column: 36, scope: !3703)
!3712 = !DILocalVariable(name: "arg", arg: 4, scope: !3703, file: !162, line: 909, type: !52)
!3713 = !DILocation(line: 909, column: 36, scope: !3703)
!3714 = !DILocalVariable(name: "argsize", arg: 5, scope: !3703, file: !162, line: 909, type: !172)
!3715 = !DILocation(line: 909, column: 48, scope: !3703)
!3716 = !DILocalVariable(name: "o", scope: !3703, file: !162, line: 911, type: !183)
!3717 = !DILocation(line: 911, column: 26, scope: !3703)
!3718 = !DILocation(line: 911, column: 30, scope: !3703)
!3719 = !DILocation(line: 912, column: 27, scope: !3703)
!3720 = !DILocation(line: 912, column: 39, scope: !3703)
!3721 = !DILocation(line: 912, column: 3, scope: !3703)
!3722 = !DILocation(line: 913, column: 30, scope: !3703)
!3723 = !DILocation(line: 913, column: 33, scope: !3703)
!3724 = !DILocation(line: 913, column: 38, scope: !3703)
!3725 = !DILocation(line: 913, column: 10, scope: !3703)
!3726 = !DILocation(line: 913, column: 3, scope: !3703)
!3727 = distinct !DISubprogram(name: "quotearg_custom", scope: !162, file: !162, line: 917, type: !3728, isLocal: false, isDefinition: true, scopeLine: 919, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!60, !52, !52, !52}
!3730 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3727, file: !162, line: 917, type: !52)
!3731 = !DILocation(line: 917, column: 30, scope: !3727)
!3732 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3727, file: !162, line: 917, type: !52)
!3733 = !DILocation(line: 917, column: 54, scope: !3727)
!3734 = !DILocalVariable(name: "arg", arg: 3, scope: !3727, file: !162, line: 918, type: !52)
!3735 = !DILocation(line: 918, column: 30, scope: !3727)
!3736 = !DILocation(line: 920, column: 32, scope: !3727)
!3737 = !DILocation(line: 920, column: 44, scope: !3727)
!3738 = !DILocation(line: 920, column: 57, scope: !3727)
!3739 = !DILocation(line: 920, column: 10, scope: !3727)
!3740 = !DILocation(line: 920, column: 3, scope: !3727)
!3741 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !162, file: !162, line: 924, type: !3742, isLocal: false, isDefinition: true, scopeLine: 926, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!60, !52, !52, !52, !172}
!3744 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3741, file: !162, line: 924, type: !52)
!3745 = !DILocation(line: 924, column: 34, scope: !3741)
!3746 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3741, file: !162, line: 924, type: !52)
!3747 = !DILocation(line: 924, column: 58, scope: !3741)
!3748 = !DILocalVariable(name: "arg", arg: 3, scope: !3741, file: !162, line: 925, type: !52)
!3749 = !DILocation(line: 925, column: 34, scope: !3741)
!3750 = !DILocalVariable(name: "argsize", arg: 4, scope: !3741, file: !162, line: 925, type: !172)
!3751 = !DILocation(line: 925, column: 46, scope: !3741)
!3752 = !DILocation(line: 927, column: 36, scope: !3741)
!3753 = !DILocation(line: 927, column: 48, scope: !3741)
!3754 = !DILocation(line: 927, column: 61, scope: !3741)
!3755 = !DILocation(line: 928, column: 33, scope: !3741)
!3756 = !DILocation(line: 927, column: 10, scope: !3741)
!3757 = !DILocation(line: 927, column: 3, scope: !3741)
!3758 = distinct !DISubprogram(name: "quote_n", scope: !162, file: !162, line: 942, type: !3759, isLocal: false, isDefinition: true, scopeLine: 943, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!52, !61, !52}
!3761 = !DILocalVariable(name: "n", arg: 1, scope: !3758, file: !162, line: 942, type: !61)
!3762 = !DILocation(line: 942, column: 14, scope: !3758)
!3763 = !DILocalVariable(name: "name", arg: 2, scope: !3758, file: !162, line: 942, type: !52)
!3764 = !DILocation(line: 942, column: 29, scope: !3758)
!3765 = !DILocation(line: 944, column: 30, scope: !3758)
!3766 = !DILocation(line: 944, column: 33, scope: !3758)
!3767 = !DILocation(line: 944, column: 10, scope: !3758)
!3768 = !DILocation(line: 944, column: 3, scope: !3758)
!3769 = distinct !DISubprogram(name: "quote", scope: !162, file: !162, line: 948, type: !3770, isLocal: false, isDefinition: true, scopeLine: 949, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!52, !52}
!3772 = !DILocalVariable(name: "name", arg: 1, scope: !3769, file: !162, line: 948, type: !52)
!3773 = !DILocation(line: 948, column: 20, scope: !3769)
!3774 = !DILocation(line: 950, column: 22, scope: !3769)
!3775 = !DILocation(line: 950, column: 10, scope: !3769)
!3776 = !DILocation(line: 950, column: 3, scope: !3769)
!3777 = distinct !DISubprogram(name: "version_etc_arn", scope: !633, file: !633, line: 62, type: !3778, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: false, unit: !632, variables: !113)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{null, !3780, !52, !52, !52, !1354, !172}
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1749, line: 7, baseType: !3782)
!3782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1751, line: 245, size: 1728, elements: !3783)
!3783 = !{!3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3782, file: !1751, line: 246, baseType: !61, size: 32)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3782, file: !1751, line: 251, baseType: !60, size: 64, offset: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3782, file: !1751, line: 252, baseType: !60, size: 64, offset: 128)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3782, file: !1751, line: 253, baseType: !60, size: 64, offset: 192)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3782, file: !1751, line: 254, baseType: !60, size: 64, offset: 256)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3782, file: !1751, line: 255, baseType: !60, size: 64, offset: 320)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3782, file: !1751, line: 256, baseType: !60, size: 64, offset: 384)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3782, file: !1751, line: 257, baseType: !60, size: 64, offset: 448)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3782, file: !1751, line: 258, baseType: !60, size: 64, offset: 512)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3782, file: !1751, line: 260, baseType: !60, size: 64, offset: 576)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3782, file: !1751, line: 261, baseType: !60, size: 64, offset: 640)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3782, file: !1751, line: 262, baseType: !60, size: 64, offset: 704)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3782, file: !1751, line: 264, baseType: !3797, size: 64, offset: 768)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1751, line: 160, size: 192, elements: !3799)
!3799 = !{!3800, !3801, !3803}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3798, file: !1751, line: 161, baseType: !3797, size: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3798, file: !1751, line: 162, baseType: !3802, size: 64, offset: 64)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3798, file: !1751, line: 166, baseType: !61, size: 32, offset: 128)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3782, file: !1751, line: 266, baseType: !3802, size: 64, offset: 832)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3782, file: !1751, line: 268, baseType: !61, size: 32, offset: 896)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3782, file: !1751, line: 272, baseType: !61, size: 32, offset: 928)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3782, file: !1751, line: 274, baseType: !1729, size: 64, offset: 960)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3782, file: !1751, line: 278, baseType: !62, size: 16, offset: 1024)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3782, file: !1751, line: 279, baseType: !1779, size: 8, offset: 1040)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3782, file: !1751, line: 280, baseType: !1781, size: 8, offset: 1048)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3782, file: !1751, line: 284, baseType: !1785, size: 64, offset: 1088)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3782, file: !1751, line: 293, baseType: !1788, size: 64, offset: 1152)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3782, file: !1751, line: 301, baseType: !55, size: 64, offset: 1216)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3782, file: !1751, line: 302, baseType: !55, size: 64, offset: 1280)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3782, file: !1751, line: 303, baseType: !55, size: 64, offset: 1344)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3782, file: !1751, line: 304, baseType: !55, size: 64, offset: 1408)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3782, file: !1751, line: 306, baseType: !172, size: 64, offset: 1472)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3782, file: !1751, line: 307, baseType: !61, size: 32, offset: 1536)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3782, file: !1751, line: 309, baseType: !1796, size: 160, offset: 1568)
!3820 = !DILocalVariable(name: "stream", arg: 1, scope: !3777, file: !633, line: 62, type: !3780)
!3821 = !DILocation(line: 62, column: 24, scope: !3777)
!3822 = !DILocalVariable(name: "command_name", arg: 2, scope: !3777, file: !633, line: 63, type: !52)
!3823 = !DILocation(line: 63, column: 30, scope: !3777)
!3824 = !DILocalVariable(name: "package", arg: 3, scope: !3777, file: !633, line: 63, type: !52)
!3825 = !DILocation(line: 63, column: 56, scope: !3777)
!3826 = !DILocalVariable(name: "version", arg: 4, scope: !3777, file: !633, line: 64, type: !52)
!3827 = !DILocation(line: 64, column: 30, scope: !3777)
!3828 = !DILocalVariable(name: "authors", arg: 5, scope: !3777, file: !633, line: 65, type: !1354)
!3829 = !DILocation(line: 65, column: 39, scope: !3777)
!3830 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3777, file: !633, line: 65, type: !172)
!3831 = !DILocation(line: 65, column: 55, scope: !3777)
!3832 = !DILocation(line: 67, column: 7, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3777, file: !633, line: 67, column: 7)
!3834 = !DILocation(line: 67, column: 7, scope: !3777)
!3835 = !DILocation(line: 68, column: 14, scope: !3833)
!3836 = !DILocation(line: 68, column: 38, scope: !3833)
!3837 = !DILocation(line: 68, column: 52, scope: !3833)
!3838 = !DILocation(line: 68, column: 61, scope: !3833)
!3839 = !DILocation(line: 68, column: 5, scope: !3833)
!3840 = !DILocation(line: 70, column: 14, scope: !3833)
!3841 = !DILocation(line: 70, column: 33, scope: !3833)
!3842 = !DILocation(line: 70, column: 42, scope: !3833)
!3843 = !DILocation(line: 70, column: 5, scope: !3833)
!3844 = !DILocation(line: 84, column: 12, scope: !3777)
!3845 = !DILocation(line: 84, column: 3, scope: !3777)
!3846 = !DILocation(line: 86, column: 3, scope: !3777)
!3847 = !DILocation(line: 95, column: 11, scope: !3777)
!3848 = !DILocation(line: 95, column: 3, scope: !3777)
!3849 = !DILocation(line: 99, column: 7, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3777, file: !633, line: 96, column: 5)
!3851 = !DILocation(line: 102, column: 16, scope: !3850)
!3852 = !DILocation(line: 102, column: 47, scope: !3850)
!3853 = !DILocation(line: 102, column: 7, scope: !3850)
!3854 = !DILocation(line: 103, column: 7, scope: !3850)
!3855 = !DILocation(line: 106, column: 16, scope: !3850)
!3856 = !DILocation(line: 106, column: 54, scope: !3850)
!3857 = !DILocation(line: 106, column: 66, scope: !3850)
!3858 = !DILocation(line: 106, column: 7, scope: !3850)
!3859 = !DILocation(line: 107, column: 7, scope: !3850)
!3860 = !DILocation(line: 110, column: 16, scope: !3850)
!3861 = !DILocation(line: 111, column: 16, scope: !3850)
!3862 = !DILocation(line: 111, column: 28, scope: !3850)
!3863 = !DILocation(line: 111, column: 40, scope: !3850)
!3864 = !DILocation(line: 110, column: 7, scope: !3850)
!3865 = !DILocation(line: 112, column: 7, scope: !3850)
!3866 = !DILocation(line: 117, column: 16, scope: !3850)
!3867 = !DILocation(line: 118, column: 16, scope: !3850)
!3868 = !DILocation(line: 118, column: 28, scope: !3850)
!3869 = !DILocation(line: 118, column: 40, scope: !3850)
!3870 = !DILocation(line: 118, column: 52, scope: !3850)
!3871 = !DILocation(line: 117, column: 7, scope: !3850)
!3872 = !DILocation(line: 119, column: 7, scope: !3850)
!3873 = !DILocation(line: 124, column: 16, scope: !3850)
!3874 = !DILocation(line: 125, column: 16, scope: !3850)
!3875 = !DILocation(line: 125, column: 28, scope: !3850)
!3876 = !DILocation(line: 125, column: 40, scope: !3850)
!3877 = !DILocation(line: 125, column: 52, scope: !3850)
!3878 = !DILocation(line: 125, column: 64, scope: !3850)
!3879 = !DILocation(line: 124, column: 7, scope: !3850)
!3880 = !DILocation(line: 126, column: 7, scope: !3850)
!3881 = !DILocation(line: 131, column: 16, scope: !3850)
!3882 = !DILocation(line: 132, column: 16, scope: !3850)
!3883 = !DILocation(line: 132, column: 28, scope: !3850)
!3884 = !DILocation(line: 132, column: 40, scope: !3850)
!3885 = !DILocation(line: 132, column: 52, scope: !3850)
!3886 = !DILocation(line: 132, column: 64, scope: !3850)
!3887 = !DILocation(line: 133, column: 16, scope: !3850)
!3888 = !DILocation(line: 131, column: 7, scope: !3850)
!3889 = !DILocation(line: 134, column: 7, scope: !3850)
!3890 = !DILocation(line: 139, column: 16, scope: !3850)
!3891 = !DILocation(line: 140, column: 16, scope: !3850)
!3892 = !DILocation(line: 140, column: 28, scope: !3850)
!3893 = !DILocation(line: 140, column: 40, scope: !3850)
!3894 = !DILocation(line: 140, column: 52, scope: !3850)
!3895 = !DILocation(line: 140, column: 64, scope: !3850)
!3896 = !DILocation(line: 141, column: 16, scope: !3850)
!3897 = !DILocation(line: 141, column: 28, scope: !3850)
!3898 = !DILocation(line: 139, column: 7, scope: !3850)
!3899 = !DILocation(line: 142, column: 7, scope: !3850)
!3900 = !DILocation(line: 147, column: 16, scope: !3850)
!3901 = !DILocation(line: 149, column: 17, scope: !3850)
!3902 = !DILocation(line: 149, column: 29, scope: !3850)
!3903 = !DILocation(line: 149, column: 41, scope: !3850)
!3904 = !DILocation(line: 149, column: 53, scope: !3850)
!3905 = !DILocation(line: 149, column: 65, scope: !3850)
!3906 = !DILocation(line: 150, column: 17, scope: !3850)
!3907 = !DILocation(line: 150, column: 29, scope: !3850)
!3908 = !DILocation(line: 150, column: 41, scope: !3850)
!3909 = !DILocation(line: 147, column: 7, scope: !3850)
!3910 = !DILocation(line: 151, column: 7, scope: !3850)
!3911 = !DILocation(line: 156, column: 16, scope: !3850)
!3912 = !DILocation(line: 158, column: 16, scope: !3850)
!3913 = !DILocation(line: 158, column: 28, scope: !3850)
!3914 = !DILocation(line: 158, column: 40, scope: !3850)
!3915 = !DILocation(line: 158, column: 52, scope: !3850)
!3916 = !DILocation(line: 158, column: 64, scope: !3850)
!3917 = !DILocation(line: 159, column: 16, scope: !3850)
!3918 = !DILocation(line: 159, column: 28, scope: !3850)
!3919 = !DILocation(line: 159, column: 40, scope: !3850)
!3920 = !DILocation(line: 159, column: 52, scope: !3850)
!3921 = !DILocation(line: 156, column: 7, scope: !3850)
!3922 = !DILocation(line: 160, column: 7, scope: !3850)
!3923 = !DILocation(line: 167, column: 16, scope: !3850)
!3924 = !DILocation(line: 169, column: 17, scope: !3850)
!3925 = !DILocation(line: 169, column: 29, scope: !3850)
!3926 = !DILocation(line: 169, column: 41, scope: !3850)
!3927 = !DILocation(line: 169, column: 53, scope: !3850)
!3928 = !DILocation(line: 169, column: 65, scope: !3850)
!3929 = !DILocation(line: 170, column: 17, scope: !3850)
!3930 = !DILocation(line: 170, column: 29, scope: !3850)
!3931 = !DILocation(line: 170, column: 41, scope: !3850)
!3932 = !DILocation(line: 170, column: 53, scope: !3850)
!3933 = !DILocation(line: 167, column: 7, scope: !3850)
!3934 = !DILocation(line: 171, column: 7, scope: !3850)
!3935 = !DILocation(line: 173, column: 1, scope: !3777)
!3936 = distinct !DISubprogram(name: "version_etc_ar", scope: !633, file: !633, line: 180, type: !3937, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: false, unit: !632, variables: !113)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{null, !3780, !52, !52, !52, !1354}
!3939 = !DILocalVariable(name: "stream", arg: 1, scope: !3936, file: !633, line: 180, type: !3780)
!3940 = !DILocation(line: 180, column: 23, scope: !3936)
!3941 = !DILocalVariable(name: "command_name", arg: 2, scope: !3936, file: !633, line: 181, type: !52)
!3942 = !DILocation(line: 181, column: 29, scope: !3936)
!3943 = !DILocalVariable(name: "package", arg: 3, scope: !3936, file: !633, line: 181, type: !52)
!3944 = !DILocation(line: 181, column: 55, scope: !3936)
!3945 = !DILocalVariable(name: "version", arg: 4, scope: !3936, file: !633, line: 182, type: !52)
!3946 = !DILocation(line: 182, column: 29, scope: !3936)
!3947 = !DILocalVariable(name: "authors", arg: 5, scope: !3936, file: !633, line: 182, type: !1354)
!3948 = !DILocation(line: 182, column: 59, scope: !3936)
!3949 = !DILocalVariable(name: "n_authors", scope: !3936, file: !633, line: 184, type: !172)
!3950 = !DILocation(line: 184, column: 10, scope: !3936)
!3951 = !DILocation(line: 186, column: 18, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3936, file: !633, line: 186, column: 3)
!3953 = !DILocation(line: 186, column: 8, scope: !3952)
!3954 = !DILocation(line: 186, column: 23, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3952, file: !633, line: 186, column: 3)
!3956 = !DILocation(line: 186, column: 31, scope: !3955)
!3957 = !DILocation(line: 186, column: 3, scope: !3952)
!3958 = !DILocation(line: 186, column: 52, scope: !3955)
!3959 = !DILocation(line: 186, column: 3, scope: !3955)
!3960 = distinct !{!3960, !3957, !3961}
!3961 = !DILocation(line: 187, column: 5, scope: !3952)
!3962 = !DILocation(line: 188, column: 20, scope: !3936)
!3963 = !DILocation(line: 188, column: 28, scope: !3936)
!3964 = !DILocation(line: 188, column: 42, scope: !3936)
!3965 = !DILocation(line: 188, column: 51, scope: !3936)
!3966 = !DILocation(line: 188, column: 60, scope: !3936)
!3967 = !DILocation(line: 188, column: 69, scope: !3936)
!3968 = !DILocation(line: 188, column: 3, scope: !3936)
!3969 = !DILocation(line: 189, column: 1, scope: !3936)
!3970 = distinct !DISubprogram(name: "version_etc_va", scope: !633, file: !633, line: 196, type: !3971, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: false, unit: !632, variables: !113)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{null, !3780, !52, !52, !52, !3973}
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !633, line: 189, size: 192, elements: !3975)
!3975 = !{!3976, !3977, !3978, !3979}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3974, file: !633, line: 189, baseType: !189, size: 32)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3974, file: !633, line: 189, baseType: !189, size: 32, offset: 32)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3974, file: !633, line: 189, baseType: !55, size: 64, offset: 64)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3974, file: !633, line: 189, baseType: !55, size: 64, offset: 128)
!3980 = !DILocalVariable(name: "stream", arg: 1, scope: !3970, file: !633, line: 196, type: !3780)
!3981 = !DILocation(line: 196, column: 23, scope: !3970)
!3982 = !DILocalVariable(name: "command_name", arg: 2, scope: !3970, file: !633, line: 197, type: !52)
!3983 = !DILocation(line: 197, column: 29, scope: !3970)
!3984 = !DILocalVariable(name: "package", arg: 3, scope: !3970, file: !633, line: 197, type: !52)
!3985 = !DILocation(line: 197, column: 55, scope: !3970)
!3986 = !DILocalVariable(name: "version", arg: 4, scope: !3970, file: !633, line: 198, type: !52)
!3987 = !DILocation(line: 198, column: 29, scope: !3970)
!3988 = !DILocalVariable(name: "authors", arg: 5, scope: !3970, file: !633, line: 198, type: !3973)
!3989 = !DILocation(line: 198, column: 46, scope: !3970)
!3990 = !DILocalVariable(name: "n_authors", scope: !3970, file: !633, line: 200, type: !172)
!3991 = !DILocation(line: 200, column: 10, scope: !3970)
!3992 = !DILocalVariable(name: "authtab", scope: !3970, file: !633, line: 201, type: !3993)
!3993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 640, elements: !3994)
!3994 = !{!3995}
!3995 = !DISubrange(count: 10)
!3996 = !DILocation(line: 201, column: 15, scope: !3970)
!3997 = !DILocation(line: 203, column: 18, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !3970, file: !633, line: 203, column: 3)
!3999 = !DILocation(line: 203, column: 8, scope: !3998)
!4000 = !DILocation(line: 204, column: 8, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !3998, file: !633, line: 203, column: 3)
!4002 = !DILocation(line: 204, column: 18, scope: !4001)
!4003 = !DILocation(line: 205, column: 10, scope: !4001)
!4004 = !DILocation(line: 205, column: 35, scope: !4001)
!4005 = !DILocation(line: 205, column: 22, scope: !4001)
!4006 = !DILocation(line: 205, column: 14, scope: !4001)
!4007 = !DILocation(line: 205, column: 33, scope: !4001)
!4008 = !DILocation(line: 205, column: 67, scope: !4001)
!4009 = !DILocation(line: 203, column: 3, scope: !3998)
!4010 = !DILocation(line: 206, column: 17, scope: !4001)
!4011 = !DILocation(line: 203, column: 3, scope: !4001)
!4012 = distinct !{!4012, !4009, !4013}
!4013 = !DILocation(line: 207, column: 5, scope: !3998)
!4014 = !DILocation(line: 208, column: 20, scope: !3970)
!4015 = !DILocation(line: 208, column: 28, scope: !3970)
!4016 = !DILocation(line: 208, column: 42, scope: !3970)
!4017 = !DILocation(line: 208, column: 51, scope: !3970)
!4018 = !DILocation(line: 209, column: 20, scope: !3970)
!4019 = !DILocation(line: 209, column: 29, scope: !3970)
!4020 = !DILocation(line: 208, column: 3, scope: !3970)
!4021 = !DILocation(line: 210, column: 1, scope: !3970)
!4022 = distinct !DISubprogram(name: "version_etc", scope: !633, file: !633, line: 227, type: !4023, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: false, unit: !632, variables: !113)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{null, !3780, !52, !52, !52, null}
!4025 = !DILocalVariable(name: "stream", arg: 1, scope: !4022, file: !633, line: 227, type: !3780)
!4026 = !DILocation(line: 227, column: 20, scope: !4022)
!4027 = !DILocalVariable(name: "command_name", arg: 2, scope: !4022, file: !633, line: 228, type: !52)
!4028 = !DILocation(line: 228, column: 26, scope: !4022)
!4029 = !DILocalVariable(name: "package", arg: 3, scope: !4022, file: !633, line: 228, type: !52)
!4030 = !DILocation(line: 228, column: 52, scope: !4022)
!4031 = !DILocalVariable(name: "version", arg: 4, scope: !4022, file: !633, line: 229, type: !52)
!4032 = !DILocation(line: 229, column: 26, scope: !4022)
!4033 = !DILocalVariable(name: "authors", scope: !4022, file: !633, line: 231, type: !4034)
!4034 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1728, line: 46, baseType: !4035)
!4035 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4036, line: 48, baseType: !4037)
!4036 = !DIFile(filename: "/home/ma481/Downloads/LLVM_6.0/lib/clang/6.0.0/include/stdarg.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!4037 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !633, line: 231, baseType: !4038)
!4038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3974, size: 192, elements: !1782)
!4039 = !DILocation(line: 231, column: 11, scope: !4022)
!4040 = !DILocation(line: 233, column: 3, scope: !4022)
!4041 = !DILocation(line: 234, column: 19, scope: !4022)
!4042 = !DILocation(line: 234, column: 27, scope: !4022)
!4043 = !DILocation(line: 234, column: 41, scope: !4022)
!4044 = !DILocation(line: 234, column: 50, scope: !4022)
!4045 = !DILocation(line: 234, column: 59, scope: !4022)
!4046 = !DILocation(line: 234, column: 3, scope: !4022)
!4047 = !DILocation(line: 235, column: 3, scope: !4022)
!4048 = !DILocation(line: 236, column: 1, scope: !4022)
!4049 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !633, file: !633, line: 239, type: !137, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: false, unit: !632, variables: !113)
!4050 = !DILocation(line: 245, column: 3, scope: !4049)
!4051 = !DILocation(line: 251, column: 3, scope: !4049)
!4052 = !DILocation(line: 256, column: 3, scope: !4049)
!4053 = !DILocation(line: 258, column: 1, scope: !4049)
!4054 = distinct !DISubprogram(name: "xnmalloc", scope: !643, file: !643, line: 109, type: !4055, isLocal: false, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: false, unit: !639, variables: !113)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!55, !172, !172}
!4057 = !DILocalVariable(name: "n", arg: 1, scope: !4054, file: !643, line: 109, type: !172)
!4058 = !DILocation(line: 109, column: 18, scope: !4054)
!4059 = !DILocalVariable(name: "s", arg: 2, scope: !4054, file: !643, line: 109, type: !172)
!4060 = !DILocation(line: 109, column: 28, scope: !4054)
!4061 = !DILocation(line: 111, column: 7, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !4054, file: !643, line: 111, column: 7)
!4063 = !DILocation(line: 111, column: 7, scope: !4054)
!4064 = !DILocation(line: 112, column: 5, scope: !4062)
!4065 = !DILocation(line: 113, column: 19, scope: !4054)
!4066 = !DILocation(line: 113, column: 23, scope: !4054)
!4067 = !DILocation(line: 113, column: 21, scope: !4054)
!4068 = !DILocation(line: 113, column: 10, scope: !4054)
!4069 = !DILocation(line: 113, column: 3, scope: !4054)
!4070 = distinct !DISubprogram(name: "xmalloc", scope: !640, file: !640, line: 41, type: !4071, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: false, unit: !639, variables: !113)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{!55, !172}
!4073 = !DILocalVariable(name: "n", arg: 1, scope: !4070, file: !640, line: 41, type: !172)
!4074 = !DILocation(line: 41, column: 17, scope: !4070)
!4075 = !DILocalVariable(name: "p", scope: !4070, file: !640, line: 43, type: !55)
!4076 = !DILocation(line: 43, column: 9, scope: !4070)
!4077 = !DILocation(line: 43, column: 21, scope: !4070)
!4078 = !DILocation(line: 43, column: 13, scope: !4070)
!4079 = !DILocation(line: 44, column: 8, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !4070, file: !640, line: 44, column: 7)
!4081 = !DILocation(line: 44, column: 10, scope: !4080)
!4082 = !DILocation(line: 44, column: 13, scope: !4080)
!4083 = !DILocation(line: 44, column: 15, scope: !4080)
!4084 = !DILocation(line: 44, column: 7, scope: !4070)
!4085 = !DILocation(line: 45, column: 5, scope: !4080)
!4086 = !DILocation(line: 46, column: 10, scope: !4070)
!4087 = !DILocation(line: 46, column: 3, scope: !4070)
!4088 = distinct !DISubprogram(name: "xnrealloc", scope: !643, file: !643, line: 122, type: !4089, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: false, unit: !639, variables: !113)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!55, !55, !172, !172}
!4091 = !DILocalVariable(name: "p", arg: 1, scope: !4088, file: !643, line: 122, type: !55)
!4092 = !DILocation(line: 122, column: 18, scope: !4088)
!4093 = !DILocalVariable(name: "n", arg: 2, scope: !4088, file: !643, line: 122, type: !172)
!4094 = !DILocation(line: 122, column: 28, scope: !4088)
!4095 = !DILocalVariable(name: "s", arg: 3, scope: !4088, file: !643, line: 122, type: !172)
!4096 = !DILocation(line: 122, column: 38, scope: !4088)
!4097 = !DILocation(line: 124, column: 7, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !4088, file: !643, line: 124, column: 7)
!4099 = !DILocation(line: 124, column: 7, scope: !4088)
!4100 = !DILocation(line: 125, column: 5, scope: !4098)
!4101 = !DILocation(line: 126, column: 20, scope: !4088)
!4102 = !DILocation(line: 126, column: 23, scope: !4088)
!4103 = !DILocation(line: 126, column: 27, scope: !4088)
!4104 = !DILocation(line: 126, column: 25, scope: !4088)
!4105 = !DILocation(line: 126, column: 10, scope: !4088)
!4106 = !DILocation(line: 126, column: 3, scope: !4088)
!4107 = distinct !DISubprogram(name: "xrealloc", scope: !640, file: !640, line: 53, type: !4108, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: false, unit: !639, variables: !113)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!55, !55, !172}
!4110 = !DILocalVariable(name: "p", arg: 1, scope: !4107, file: !640, line: 53, type: !55)
!4111 = !DILocation(line: 53, column: 17, scope: !4107)
!4112 = !DILocalVariable(name: "n", arg: 2, scope: !4107, file: !640, line: 53, type: !172)
!4113 = !DILocation(line: 53, column: 27, scope: !4107)
!4114 = !DILocation(line: 55, column: 8, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !4107, file: !640, line: 55, column: 7)
!4116 = !DILocation(line: 55, column: 10, scope: !4115)
!4117 = !DILocation(line: 55, column: 13, scope: !4115)
!4118 = !DILocation(line: 55, column: 7, scope: !4107)
!4119 = !DILocation(line: 59, column: 13, scope: !4120)
!4120 = distinct !DILexicalBlock(scope: !4115, file: !640, line: 56, column: 5)
!4121 = !DILocation(line: 59, column: 7, scope: !4120)
!4122 = !DILocation(line: 60, column: 7, scope: !4120)
!4123 = !DILocation(line: 63, column: 16, scope: !4107)
!4124 = !DILocation(line: 63, column: 19, scope: !4107)
!4125 = !DILocation(line: 63, column: 7, scope: !4107)
!4126 = !DILocation(line: 63, column: 5, scope: !4107)
!4127 = !DILocation(line: 64, column: 8, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4107, file: !640, line: 64, column: 7)
!4129 = !DILocation(line: 64, column: 10, scope: !4128)
!4130 = !DILocation(line: 64, column: 13, scope: !4128)
!4131 = !DILocation(line: 64, column: 7, scope: !4107)
!4132 = !DILocation(line: 65, column: 5, scope: !4128)
!4133 = !DILocation(line: 66, column: 10, scope: !4107)
!4134 = !DILocation(line: 66, column: 3, scope: !4107)
!4135 = !DILocation(line: 67, column: 1, scope: !4107)
!4136 = !DILocalVariable(name: "p", arg: 1, scope: !644, file: !643, line: 185, type: !55)
!4137 = !DILocation(line: 185, column: 19, scope: !644)
!4138 = !DILocalVariable(name: "pn", arg: 2, scope: !644, file: !643, line: 185, type: !647)
!4139 = !DILocation(line: 185, column: 30, scope: !644)
!4140 = !DILocalVariable(name: "s", arg: 3, scope: !644, file: !643, line: 185, type: !172)
!4141 = !DILocation(line: 185, column: 41, scope: !644)
!4142 = !DILocalVariable(name: "n", scope: !644, file: !643, line: 187, type: !172)
!4143 = !DILocation(line: 187, column: 10, scope: !644)
!4144 = !DILocation(line: 187, column: 15, scope: !644)
!4145 = !DILocation(line: 187, column: 14, scope: !644)
!4146 = !DILocation(line: 189, column: 9, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !644, file: !643, line: 189, column: 7)
!4148 = !DILocation(line: 189, column: 7, scope: !644)
!4149 = !DILocation(line: 191, column: 13, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4151, file: !643, line: 191, column: 11)
!4151 = distinct !DILexicalBlock(scope: !4147, file: !643, line: 190, column: 5)
!4152 = !DILocation(line: 191, column: 11, scope: !4151)
!4153 = !DILocation(line: 199, column: 32, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !4150, file: !643, line: 192, column: 9)
!4155 = !DILocation(line: 199, column: 30, scope: !4154)
!4156 = !DILocation(line: 199, column: 13, scope: !4154)
!4157 = !DILocation(line: 200, column: 17, scope: !4154)
!4158 = !DILocation(line: 200, column: 16, scope: !4154)
!4159 = !DILocation(line: 200, column: 13, scope: !4154)
!4160 = !DILocation(line: 201, column: 9, scope: !4154)
!4161 = !DILocation(line: 202, column: 5, scope: !4151)
!4162 = !DILocation(line: 209, column: 33, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !4164, file: !643, line: 209, column: 11)
!4164 = distinct !DILexicalBlock(scope: !4147, file: !643, line: 204, column: 5)
!4165 = !DILocation(line: 209, column: 31, scope: !4163)
!4166 = !DILocation(line: 209, column: 38, scope: !4163)
!4167 = !DILocation(line: 209, column: 35, scope: !4163)
!4168 = !DILocation(line: 209, column: 11, scope: !4164)
!4169 = !DILocation(line: 210, column: 9, scope: !4163)
!4170 = !DILocation(line: 211, column: 13, scope: !4164)
!4171 = !DILocation(line: 211, column: 15, scope: !4164)
!4172 = !DILocation(line: 211, column: 20, scope: !4164)
!4173 = !DILocation(line: 211, column: 9, scope: !4164)
!4174 = !DILocation(line: 214, column: 9, scope: !644)
!4175 = !DILocation(line: 214, column: 4, scope: !644)
!4176 = !DILocation(line: 214, column: 7, scope: !644)
!4177 = !DILocation(line: 215, column: 20, scope: !644)
!4178 = !DILocation(line: 215, column: 23, scope: !644)
!4179 = !DILocation(line: 215, column: 27, scope: !644)
!4180 = !DILocation(line: 215, column: 25, scope: !644)
!4181 = !DILocation(line: 215, column: 10, scope: !644)
!4182 = !DILocation(line: 215, column: 3, scope: !644)
!4183 = distinct !DISubprogram(name: "xcharalloc", scope: !643, file: !643, line: 224, type: !4184, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: false, unit: !639, variables: !113)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{!60, !172}
!4186 = !DILocalVariable(name: "n", arg: 1, scope: !4183, file: !643, line: 224, type: !172)
!4187 = !DILocation(line: 224, column: 20, scope: !4183)
!4188 = !DILocation(line: 226, column: 10, scope: !4183)
!4189 = !DILocation(line: 226, column: 3, scope: !4183)
!4190 = distinct !DISubprogram(name: "x2realloc", scope: !640, file: !640, line: 76, type: !4191, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: false, unit: !639, variables: !113)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!55, !55, !647}
!4193 = !DILocalVariable(name: "p", arg: 1, scope: !4190, file: !640, line: 76, type: !55)
!4194 = !DILocation(line: 76, column: 18, scope: !4190)
!4195 = !DILocalVariable(name: "pn", arg: 2, scope: !4190, file: !640, line: 76, type: !647)
!4196 = !DILocation(line: 76, column: 29, scope: !4190)
!4197 = !DILocation(line: 78, column: 22, scope: !4190)
!4198 = !DILocation(line: 78, column: 25, scope: !4190)
!4199 = !DILocation(line: 78, column: 10, scope: !4190)
!4200 = !DILocation(line: 78, column: 3, scope: !4190)
!4201 = distinct !DISubprogram(name: "xzalloc", scope: !640, file: !640, line: 86, type: !4071, isLocal: false, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: false, unit: !639, variables: !113)
!4202 = !DILocalVariable(name: "s", arg: 1, scope: !4201, file: !640, line: 86, type: !172)
!4203 = !DILocation(line: 86, column: 17, scope: !4201)
!4204 = !DILocation(line: 88, column: 27, scope: !4201)
!4205 = !DILocation(line: 88, column: 18, scope: !4201)
!4206 = !DILocation(line: 88, column: 34, scope: !4201)
!4207 = !DILocation(line: 88, column: 10, scope: !4201)
!4208 = !DILocation(line: 88, column: 3, scope: !4201)
!4209 = distinct !DISubprogram(name: "xcalloc", scope: !640, file: !640, line: 95, type: !4055, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: false, unit: !639, variables: !113)
!4210 = !DILocalVariable(name: "n", arg: 1, scope: !4209, file: !640, line: 95, type: !172)
!4211 = !DILocation(line: 95, column: 17, scope: !4209)
!4212 = !DILocalVariable(name: "s", arg: 2, scope: !4209, file: !640, line: 95, type: !172)
!4213 = !DILocation(line: 95, column: 27, scope: !4209)
!4214 = !DILocalVariable(name: "p", scope: !4209, file: !640, line: 97, type: !55)
!4215 = !DILocation(line: 97, column: 9, scope: !4209)
!4216 = !DILocation(line: 103, column: 26, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4209, file: !640, line: 102, column: 7)
!4218 = !DILocation(line: 103, column: 29, scope: !4217)
!4219 = !DILocation(line: 103, column: 18, scope: !4217)
!4220 = !DILocation(line: 103, column: 16, scope: !4217)
!4221 = !DILocation(line: 102, column: 7, scope: !4209)
!4222 = !DILocation(line: 104, column: 5, scope: !4217)
!4223 = !DILocation(line: 105, column: 10, scope: !4209)
!4224 = !DILocation(line: 105, column: 3, scope: !4209)
!4225 = distinct !DISubprogram(name: "xmemdup", scope: !640, file: !640, line: 113, type: !4226, isLocal: false, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: false, unit: !639, variables: !113)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{!55, !2176, !172}
!4228 = !DILocalVariable(name: "p", arg: 1, scope: !4225, file: !640, line: 113, type: !2176)
!4229 = !DILocation(line: 113, column: 22, scope: !4225)
!4230 = !DILocalVariable(name: "s", arg: 2, scope: !4225, file: !640, line: 113, type: !172)
!4231 = !DILocation(line: 113, column: 32, scope: !4225)
!4232 = !DILocation(line: 115, column: 27, scope: !4225)
!4233 = !DILocation(line: 115, column: 18, scope: !4225)
!4234 = !DILocation(line: 115, column: 31, scope: !4225)
!4235 = !DILocation(line: 115, column: 34, scope: !4225)
!4236 = !DILocation(line: 115, column: 10, scope: !4225)
!4237 = !DILocation(line: 115, column: 3, scope: !4225)
!4238 = distinct !DISubprogram(name: "xstrdup", scope: !640, file: !640, line: 121, type: !1652, isLocal: false, isDefinition: true, scopeLine: 122, flags: DIFlagPrototyped, isOptimized: false, unit: !639, variables: !113)
!4239 = !DILocalVariable(name: "string", arg: 1, scope: !4238, file: !640, line: 121, type: !52)
!4240 = !DILocation(line: 121, column: 22, scope: !4238)
!4241 = !DILocation(line: 123, column: 19, scope: !4238)
!4242 = !DILocation(line: 123, column: 35, scope: !4238)
!4243 = !DILocation(line: 123, column: 27, scope: !4238)
!4244 = !DILocation(line: 123, column: 43, scope: !4238)
!4245 = !DILocation(line: 123, column: 10, scope: !4238)
!4246 = !DILocation(line: 123, column: 3, scope: !4238)
!4247 = distinct !DISubprogram(name: "xalloc_die", scope: !652, file: !652, line: 32, type: !137, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false, unit: !651, variables: !113)
!4248 = !DILocation(line: 34, column: 10, scope: !4247)
!4249 = !DILocation(line: 34, column: 3, scope: !4247)
!4250 = !DILocation(line: 40, column: 3, scope: !4247)
!4251 = !DILocation(line: 41, column: 1, scope: !4247)
!4252 = distinct !DISubprogram(name: "xmemcoll", scope: !654, file: !654, line: 54, type: !4253, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: false, unit: !653, variables: !113)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{!61, !60, !172, !60, !172}
!4255 = !DILocalVariable(name: "s1", arg: 1, scope: !4252, file: !654, line: 54, type: !60)
!4256 = !DILocation(line: 54, column: 17, scope: !4252)
!4257 = !DILocalVariable(name: "s1len", arg: 2, scope: !4252, file: !654, line: 54, type: !172)
!4258 = !DILocation(line: 54, column: 28, scope: !4252)
!4259 = !DILocalVariable(name: "s2", arg: 3, scope: !4252, file: !654, line: 54, type: !60)
!4260 = !DILocation(line: 54, column: 41, scope: !4252)
!4261 = !DILocalVariable(name: "s2len", arg: 4, scope: !4252, file: !654, line: 54, type: !172)
!4262 = !DILocation(line: 54, column: 52, scope: !4252)
!4263 = !DILocalVariable(name: "diff", scope: !4252, file: !654, line: 56, type: !61)
!4264 = !DILocation(line: 56, column: 7, scope: !4252)
!4265 = !DILocation(line: 56, column: 23, scope: !4252)
!4266 = !DILocation(line: 56, column: 27, scope: !4252)
!4267 = !DILocation(line: 56, column: 34, scope: !4252)
!4268 = !DILocation(line: 56, column: 38, scope: !4252)
!4269 = !DILocation(line: 56, column: 14, scope: !4252)
!4270 = !DILocalVariable(name: "collation_errno", scope: !4252, file: !654, line: 57, type: !61)
!4271 = !DILocation(line: 57, column: 7, scope: !4252)
!4272 = !DILocation(line: 57, column: 25, scope: !4252)
!4273 = !DILocation(line: 58, column: 7, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4252, file: !654, line: 58, column: 7)
!4275 = !DILocation(line: 58, column: 7, scope: !4252)
!4276 = !DILocation(line: 59, column: 20, scope: !4274)
!4277 = !DILocation(line: 59, column: 37, scope: !4274)
!4278 = !DILocation(line: 59, column: 41, scope: !4274)
!4279 = !DILocation(line: 59, column: 48, scope: !4274)
!4280 = !DILocation(line: 59, column: 52, scope: !4274)
!4281 = !DILocation(line: 59, column: 5, scope: !4274)
!4282 = !DILocation(line: 60, column: 10, scope: !4252)
!4283 = !DILocation(line: 60, column: 3, scope: !4252)
!4284 = distinct !DISubprogram(name: "collate_error", scope: !654, file: !654, line: 35, type: !4285, isLocal: true, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: false, unit: !653, variables: !113)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{null, !61, !52, !172, !52, !172}
!4287 = !DILocalVariable(name: "collation_errno", arg: 1, scope: !4284, file: !654, line: 35, type: !61)
!4288 = !DILocation(line: 35, column: 20, scope: !4284)
!4289 = !DILocalVariable(name: "s1", arg: 2, scope: !4284, file: !654, line: 36, type: !52)
!4290 = !DILocation(line: 36, column: 28, scope: !4284)
!4291 = !DILocalVariable(name: "s1len", arg: 3, scope: !4284, file: !654, line: 36, type: !172)
!4292 = !DILocation(line: 36, column: 39, scope: !4284)
!4293 = !DILocalVariable(name: "s2", arg: 4, scope: !4284, file: !654, line: 37, type: !52)
!4294 = !DILocation(line: 37, column: 28, scope: !4284)
!4295 = !DILocalVariable(name: "s2len", arg: 5, scope: !4284, file: !654, line: 37, type: !172)
!4296 = !DILocation(line: 37, column: 39, scope: !4284)
!4297 = !DILocation(line: 39, column: 13, scope: !4284)
!4298 = !DILocation(line: 39, column: 3, scope: !4284)
!4299 = !DILocation(line: 40, column: 3, scope: !4284)
!4300 = !DILocation(line: 41, column: 10, scope: !4284)
!4301 = !DILocation(line: 43, column: 57, scope: !4284)
!4302 = !DILocation(line: 43, column: 61, scope: !4284)
!4303 = !DILocation(line: 43, column: 10, scope: !4284)
!4304 = !DILocation(line: 44, column: 57, scope: !4284)
!4305 = !DILocation(line: 44, column: 61, scope: !4284)
!4306 = !DILocation(line: 44, column: 10, scope: !4284)
!4307 = !DILocation(line: 41, column: 3, scope: !4284)
!4308 = !DILocation(line: 45, column: 1, scope: !4284)
!4309 = distinct !DISubprogram(name: "xmemcoll0", scope: !654, file: !654, line: 69, type: !4310, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: false, unit: !653, variables: !113)
!4310 = !DISubroutineType(types: !4311)
!4311 = !{!61, !52, !172, !52, !172}
!4312 = !DILocalVariable(name: "s1", arg: 1, scope: !4309, file: !654, line: 69, type: !52)
!4313 = !DILocation(line: 69, column: 24, scope: !4309)
!4314 = !DILocalVariable(name: "s1size", arg: 2, scope: !4309, file: !654, line: 69, type: !172)
!4315 = !DILocation(line: 69, column: 35, scope: !4309)
!4316 = !DILocalVariable(name: "s2", arg: 3, scope: !4309, file: !654, line: 69, type: !52)
!4317 = !DILocation(line: 69, column: 55, scope: !4309)
!4318 = !DILocalVariable(name: "s2size", arg: 4, scope: !4309, file: !654, line: 69, type: !172)
!4319 = !DILocation(line: 69, column: 66, scope: !4309)
!4320 = !DILocalVariable(name: "diff", scope: !4309, file: !654, line: 71, type: !61)
!4321 = !DILocation(line: 71, column: 7, scope: !4309)
!4322 = !DILocation(line: 71, column: 24, scope: !4309)
!4323 = !DILocation(line: 71, column: 28, scope: !4309)
!4324 = !DILocation(line: 71, column: 36, scope: !4309)
!4325 = !DILocation(line: 71, column: 40, scope: !4309)
!4326 = !DILocation(line: 71, column: 14, scope: !4309)
!4327 = !DILocalVariable(name: "collation_errno", scope: !4309, file: !654, line: 72, type: !61)
!4328 = !DILocation(line: 72, column: 7, scope: !4309)
!4329 = !DILocation(line: 72, column: 25, scope: !4309)
!4330 = !DILocation(line: 73, column: 7, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4309, file: !654, line: 73, column: 7)
!4332 = !DILocation(line: 73, column: 7, scope: !4309)
!4333 = !DILocation(line: 74, column: 20, scope: !4331)
!4334 = !DILocation(line: 74, column: 37, scope: !4331)
!4335 = !DILocation(line: 74, column: 41, scope: !4331)
!4336 = !DILocation(line: 74, column: 48, scope: !4331)
!4337 = !DILocation(line: 74, column: 53, scope: !4331)
!4338 = !DILocation(line: 74, column: 57, scope: !4331)
!4339 = !DILocation(line: 74, column: 64, scope: !4331)
!4340 = !DILocation(line: 74, column: 5, scope: !4331)
!4341 = !DILocation(line: 75, column: 10, scope: !4309)
!4342 = !DILocation(line: 75, column: 3, scope: !4309)
!4343 = distinct !DISubprogram(name: "xstrtoul", scope: !4344, file: !4344, line: 88, type: !4345, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: false, unit: !655, variables: !113)
!4344 = !DIFile(filename: "../../lib/xstrtol.c", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!4345 = !DISubroutineType(types: !4346)
!4346 = !{!4347, !52, !744, !61, !4348, !52}
!4347 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !659, line: 39, baseType: !658)
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!4349 = !DILocalVariable(name: "s", arg: 1, scope: !4343, file: !4344, line: 88, type: !52)
!4350 = !DILocation(line: 88, column: 24, scope: !4343)
!4351 = !DILocalVariable(name: "ptr", arg: 2, scope: !4343, file: !4344, line: 88, type: !744)
!4352 = !DILocation(line: 88, column: 34, scope: !4343)
!4353 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !4343, file: !4344, line: 88, type: !61)
!4354 = !DILocation(line: 88, column: 43, scope: !4343)
!4355 = !DILocalVariable(name: "val", arg: 4, scope: !4343, file: !4344, line: 89, type: !4348)
!4356 = !DILocation(line: 89, column: 24, scope: !4343)
!4357 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4343, file: !4344, line: 89, type: !52)
!4358 = !DILocation(line: 89, column: 41, scope: !4343)
!4359 = !DILocalVariable(name: "t_ptr", scope: !4343, file: !4344, line: 91, type: !60)
!4360 = !DILocation(line: 91, column: 9, scope: !4343)
!4361 = !DILocalVariable(name: "p", scope: !4343, file: !4344, line: 92, type: !744)
!4362 = !DILocation(line: 92, column: 10, scope: !4343)
!4363 = !DILocalVariable(name: "tmp", scope: !4343, file: !4344, line: 93, type: !59)
!4364 = !DILocation(line: 93, column: 14, scope: !4343)
!4365 = !DILocalVariable(name: "err", scope: !4343, file: !4344, line: 94, type: !4347)
!4366 = !DILocation(line: 94, column: 16, scope: !4343)
!4367 = !DILocation(line: 96, column: 3, scope: !4368)
!4368 = distinct !DILexicalBlock(scope: !4369, file: !4344, line: 96, column: 3)
!4369 = distinct !DILexicalBlock(scope: !4343, file: !4344, line: 96, column: 3)
!4370 = !DILocation(line: 96, column: 3, scope: !4369)
!4371 = !DILocation(line: 98, column: 8, scope: !4343)
!4372 = !DILocation(line: 98, column: 14, scope: !4343)
!4373 = !DILocation(line: 98, column: 5, scope: !4343)
!4374 = !DILocalVariable(name: "q", scope: !4375, file: !4344, line: 102, type: !52)
!4375 = distinct !DILexicalBlock(scope: !4376, file: !4344, line: 101, column: 5)
!4376 = distinct !DILexicalBlock(scope: !4343, file: !4344, line: 100, column: 7)
!4377 = !DILocation(line: 102, column: 19, scope: !4375)
!4378 = !DILocation(line: 102, column: 23, scope: !4375)
!4379 = !DILocalVariable(name: "ch", scope: !4375, file: !4344, line: 103, type: !673)
!4380 = !DILocation(line: 103, column: 21, scope: !4375)
!4381 = !DILocation(line: 103, column: 27, scope: !4375)
!4382 = !DILocation(line: 103, column: 26, scope: !4375)
!4383 = !DILocation(line: 104, column: 7, scope: !4375)
!4384 = !DILocation(line: 104, column: 14, scope: !4375)
!4385 = !DILocation(line: 105, column: 15, scope: !4375)
!4386 = !DILocation(line: 105, column: 14, scope: !4375)
!4387 = !DILocation(line: 105, column: 12, scope: !4375)
!4388 = distinct !{!4388, !4383, !4389}
!4389 = !DILocation(line: 105, column: 17, scope: !4375)
!4390 = !DILocation(line: 106, column: 11, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !4375, file: !4344, line: 106, column: 11)
!4392 = !DILocation(line: 106, column: 14, scope: !4391)
!4393 = !DILocation(line: 106, column: 11, scope: !4375)
!4394 = !DILocation(line: 107, column: 9, scope: !4391)
!4395 = !DILocation(line: 110, column: 3, scope: !4343)
!4396 = !DILocation(line: 110, column: 9, scope: !4343)
!4397 = !DILocation(line: 111, column: 19, scope: !4343)
!4398 = !DILocation(line: 111, column: 22, scope: !4343)
!4399 = !DILocation(line: 111, column: 25, scope: !4343)
!4400 = !DILocation(line: 111, column: 9, scope: !4343)
!4401 = !DILocation(line: 111, column: 7, scope: !4343)
!4402 = !DILocation(line: 113, column: 8, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4343, file: !4344, line: 113, column: 7)
!4404 = !DILocation(line: 113, column: 7, scope: !4403)
!4405 = !DILocation(line: 113, column: 13, scope: !4403)
!4406 = !DILocation(line: 113, column: 10, scope: !4403)
!4407 = !DILocation(line: 113, column: 7, scope: !4343)
!4408 = !DILocation(line: 117, column: 11, scope: !4409)
!4409 = distinct !DILexicalBlock(scope: !4410, file: !4344, line: 117, column: 11)
!4410 = distinct !DILexicalBlock(scope: !4403, file: !4344, line: 114, column: 5)
!4411 = !DILocation(line: 117, column: 26, scope: !4409)
!4412 = !DILocation(line: 117, column: 31, scope: !4409)
!4413 = !DILocation(line: 117, column: 30, scope: !4409)
!4414 = !DILocation(line: 117, column: 29, scope: !4409)
!4415 = !DILocation(line: 117, column: 33, scope: !4409)
!4416 = !DILocation(line: 117, column: 44, scope: !4409)
!4417 = !DILocation(line: 117, column: 62, scope: !4409)
!4418 = !DILocation(line: 117, column: 61, scope: !4409)
!4419 = !DILocation(line: 117, column: 60, scope: !4409)
!4420 = !DILocation(line: 117, column: 36, scope: !4409)
!4421 = !DILocation(line: 117, column: 11, scope: !4410)
!4422 = !DILocation(line: 118, column: 13, scope: !4409)
!4423 = !DILocation(line: 118, column: 9, scope: !4409)
!4424 = !DILocation(line: 120, column: 9, scope: !4409)
!4425 = !DILocation(line: 121, column: 5, scope: !4410)
!4426 = !DILocation(line: 122, column: 12, scope: !4427)
!4427 = distinct !DILexicalBlock(scope: !4403, file: !4344, line: 122, column: 12)
!4428 = !DILocation(line: 122, column: 18, scope: !4427)
!4429 = !DILocation(line: 122, column: 12, scope: !4403)
!4430 = !DILocation(line: 124, column: 11, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !4432, file: !4344, line: 124, column: 11)
!4432 = distinct !DILexicalBlock(scope: !4427, file: !4344, line: 123, column: 5)
!4433 = !DILocation(line: 124, column: 17, scope: !4431)
!4434 = !DILocation(line: 124, column: 11, scope: !4432)
!4435 = !DILocation(line: 125, column: 9, scope: !4431)
!4436 = !DILocation(line: 126, column: 11, scope: !4432)
!4437 = !DILocation(line: 127, column: 5, scope: !4432)
!4438 = !DILocation(line: 132, column: 8, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4343, file: !4344, line: 132, column: 7)
!4440 = !DILocation(line: 132, column: 7, scope: !4343)
!4441 = !DILocation(line: 134, column: 14, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4439, file: !4344, line: 133, column: 5)
!4443 = !DILocation(line: 134, column: 8, scope: !4442)
!4444 = !DILocation(line: 134, column: 12, scope: !4442)
!4445 = !DILocation(line: 135, column: 14, scope: !4442)
!4446 = !DILocation(line: 135, column: 7, scope: !4442)
!4447 = !DILocation(line: 138, column: 9, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4343, file: !4344, line: 138, column: 7)
!4449 = !DILocation(line: 138, column: 8, scope: !4448)
!4450 = !DILocation(line: 138, column: 7, scope: !4448)
!4451 = !DILocation(line: 138, column: 11, scope: !4448)
!4452 = !DILocation(line: 138, column: 7, scope: !4343)
!4453 = !DILocalVariable(name: "base", scope: !4454, file: !4344, line: 140, type: !61)
!4454 = distinct !DILexicalBlock(scope: !4448, file: !4344, line: 139, column: 5)
!4455 = !DILocation(line: 140, column: 11, scope: !4454)
!4456 = !DILocalVariable(name: "suffixes", scope: !4454, file: !4344, line: 141, type: !61)
!4457 = !DILocation(line: 141, column: 11, scope: !4454)
!4458 = !DILocalVariable(name: "overflow", scope: !4454, file: !4344, line: 142, type: !4347)
!4459 = !DILocation(line: 142, column: 20, scope: !4454)
!4460 = !DILocation(line: 144, column: 20, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4454, file: !4344, line: 144, column: 11)
!4462 = !DILocation(line: 144, column: 38, scope: !4461)
!4463 = !DILocation(line: 144, column: 37, scope: !4461)
!4464 = !DILocation(line: 144, column: 36, scope: !4461)
!4465 = !DILocation(line: 144, column: 12, scope: !4461)
!4466 = !DILocation(line: 144, column: 11, scope: !4454)
!4467 = !DILocation(line: 146, column: 18, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4461, file: !4344, line: 145, column: 9)
!4469 = !DILocation(line: 146, column: 12, scope: !4468)
!4470 = !DILocation(line: 146, column: 16, scope: !4468)
!4471 = !DILocation(line: 147, column: 18, scope: !4468)
!4472 = !DILocation(line: 147, column: 22, scope: !4468)
!4473 = !DILocation(line: 147, column: 11, scope: !4468)
!4474 = !DILocation(line: 150, column: 19, scope: !4475)
!4475 = distinct !DILexicalBlock(scope: !4454, file: !4344, line: 150, column: 11)
!4476 = !DILocation(line: 150, column: 11, scope: !4475)
!4477 = !DILocation(line: 150, column: 11, scope: !4454)
!4478 = !DILocation(line: 159, column: 19, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4475, file: !4344, line: 151, column: 9)
!4480 = !DILocation(line: 159, column: 11, scope: !4479)
!4481 = !DILocation(line: 162, column: 19, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !4483, file: !4344, line: 162, column: 19)
!4483 = distinct !DILexicalBlock(scope: !4479, file: !4344, line: 160, column: 13)
!4484 = !DILocation(line: 162, column: 27, scope: !4482)
!4485 = !DILocation(line: 162, column: 19, scope: !4483)
!4486 = !DILocation(line: 163, column: 26, scope: !4482)
!4487 = !DILocation(line: 163, column: 17, scope: !4482)
!4488 = !DILocation(line: 164, column: 15, scope: !4483)
!4489 = !DILocation(line: 168, column: 20, scope: !4483)
!4490 = !DILocation(line: 169, column: 23, scope: !4483)
!4491 = !DILocation(line: 170, column: 15, scope: !4483)
!4492 = !DILocation(line: 172, column: 9, scope: !4479)
!4493 = !DILocation(line: 174, column: 17, scope: !4454)
!4494 = !DILocation(line: 174, column: 16, scope: !4454)
!4495 = !DILocation(line: 174, column: 15, scope: !4454)
!4496 = !DILocation(line: 174, column: 7, scope: !4454)
!4497 = !DILocation(line: 177, column: 22, scope: !4498)
!4498 = distinct !DILexicalBlock(scope: !4454, file: !4344, line: 175, column: 9)
!4499 = !DILocation(line: 177, column: 20, scope: !4498)
!4500 = !DILocation(line: 178, column: 11, scope: !4498)
!4501 = !DILocation(line: 181, column: 22, scope: !4498)
!4502 = !DILocation(line: 181, column: 20, scope: !4498)
!4503 = !DILocation(line: 182, column: 11, scope: !4498)
!4504 = !DILocation(line: 185, column: 20, scope: !4498)
!4505 = !DILocation(line: 186, column: 11, scope: !4498)
!4506 = !DILocation(line: 189, column: 48, scope: !4498)
!4507 = !DILocation(line: 189, column: 22, scope: !4498)
!4508 = !DILocation(line: 189, column: 20, scope: !4498)
!4509 = !DILocation(line: 190, column: 11, scope: !4498)
!4510 = !DILocation(line: 194, column: 48, scope: !4498)
!4511 = !DILocation(line: 194, column: 22, scope: !4498)
!4512 = !DILocation(line: 194, column: 20, scope: !4498)
!4513 = !DILocation(line: 195, column: 11, scope: !4498)
!4514 = !DILocation(line: 199, column: 48, scope: !4498)
!4515 = !DILocation(line: 199, column: 22, scope: !4498)
!4516 = !DILocation(line: 199, column: 20, scope: !4498)
!4517 = !DILocation(line: 200, column: 11, scope: !4498)
!4518 = !DILocation(line: 204, column: 48, scope: !4498)
!4519 = !DILocation(line: 204, column: 22, scope: !4498)
!4520 = !DILocation(line: 204, column: 20, scope: !4498)
!4521 = !DILocation(line: 205, column: 11, scope: !4498)
!4522 = !DILocation(line: 208, column: 48, scope: !4498)
!4523 = !DILocation(line: 208, column: 22, scope: !4498)
!4524 = !DILocation(line: 208, column: 20, scope: !4498)
!4525 = !DILocation(line: 209, column: 11, scope: !4498)
!4526 = !DILocation(line: 213, column: 48, scope: !4498)
!4527 = !DILocation(line: 213, column: 22, scope: !4498)
!4528 = !DILocation(line: 213, column: 20, scope: !4498)
!4529 = !DILocation(line: 214, column: 11, scope: !4498)
!4530 = !DILocation(line: 217, column: 22, scope: !4498)
!4531 = !DILocation(line: 217, column: 20, scope: !4498)
!4532 = !DILocation(line: 218, column: 11, scope: !4498)
!4533 = !DILocation(line: 221, column: 48, scope: !4498)
!4534 = !DILocation(line: 221, column: 22, scope: !4498)
!4535 = !DILocation(line: 221, column: 20, scope: !4498)
!4536 = !DILocation(line: 222, column: 11, scope: !4498)
!4537 = !DILocation(line: 225, column: 48, scope: !4498)
!4538 = !DILocation(line: 225, column: 22, scope: !4498)
!4539 = !DILocation(line: 225, column: 20, scope: !4498)
!4540 = !DILocation(line: 226, column: 11, scope: !4498)
!4541 = !DILocation(line: 229, column: 18, scope: !4498)
!4542 = !DILocation(line: 229, column: 12, scope: !4498)
!4543 = !DILocation(line: 229, column: 16, scope: !4498)
!4544 = !DILocation(line: 230, column: 18, scope: !4498)
!4545 = !DILocation(line: 230, column: 22, scope: !4498)
!4546 = !DILocation(line: 230, column: 11, scope: !4498)
!4547 = !DILocation(line: 233, column: 14, scope: !4454)
!4548 = !DILocation(line: 233, column: 11, scope: !4454)
!4549 = !DILocation(line: 234, column: 13, scope: !4454)
!4550 = !DILocation(line: 234, column: 8, scope: !4454)
!4551 = !DILocation(line: 234, column: 10, scope: !4454)
!4552 = !DILocation(line: 235, column: 13, scope: !4553)
!4553 = distinct !DILexicalBlock(scope: !4454, file: !4344, line: 235, column: 11)
!4554 = !DILocation(line: 235, column: 12, scope: !4553)
!4555 = !DILocation(line: 235, column: 11, scope: !4553)
!4556 = !DILocation(line: 235, column: 11, scope: !4454)
!4557 = !DILocation(line: 236, column: 13, scope: !4553)
!4558 = !DILocation(line: 236, column: 9, scope: !4553)
!4559 = !DILocation(line: 237, column: 5, scope: !4454)
!4560 = !DILocation(line: 239, column: 10, scope: !4343)
!4561 = !DILocation(line: 239, column: 4, scope: !4343)
!4562 = !DILocation(line: 239, column: 8, scope: !4343)
!4563 = !DILocation(line: 240, column: 10, scope: !4343)
!4564 = !DILocation(line: 240, column: 3, scope: !4343)
!4565 = !DILocation(line: 241, column: 1, scope: !4343)
!4566 = distinct !DISubprogram(name: "bkm_scale", scope: !4344, file: !4344, line: 60, type: !4567, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: false, unit: !655, variables: !113)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{!4347, !4348, !61}
!4569 = !DILocalVariable(name: "x", arg: 1, scope: !4566, file: !4344, line: 60, type: !4348)
!4570 = !DILocation(line: 60, column: 24, scope: !4566)
!4571 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4566, file: !4344, line: 60, type: !61)
!4572 = !DILocation(line: 60, column: 31, scope: !4566)
!4573 = !DILocation(line: 67, column: 26, scope: !4574)
!4574 = distinct !DILexicalBlock(scope: !4566, file: !4344, line: 67, column: 7)
!4575 = !DILocation(line: 67, column: 24, scope: !4574)
!4576 = !DILocation(line: 67, column: 42, scope: !4574)
!4577 = !DILocation(line: 67, column: 41, scope: !4574)
!4578 = !DILocation(line: 67, column: 39, scope: !4574)
!4579 = !DILocation(line: 67, column: 7, scope: !4566)
!4580 = !DILocation(line: 69, column: 8, scope: !4581)
!4581 = distinct !DILexicalBlock(scope: !4574, file: !4344, line: 68, column: 5)
!4582 = !DILocation(line: 69, column: 10, scope: !4581)
!4583 = !DILocation(line: 70, column: 7, scope: !4581)
!4584 = !DILocation(line: 72, column: 9, scope: !4566)
!4585 = !DILocation(line: 72, column: 4, scope: !4566)
!4586 = !DILocation(line: 72, column: 6, scope: !4566)
!4587 = !DILocation(line: 73, column: 3, scope: !4566)
!4588 = !DILocation(line: 74, column: 1, scope: !4566)
!4589 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4344, file: !4344, line: 77, type: !4590, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: false, unit: !655, variables: !113)
!4590 = !DISubroutineType(types: !4591)
!4591 = !{!4347, !4348, !61, !61}
!4592 = !DILocalVariable(name: "x", arg: 1, scope: !4589, file: !4344, line: 77, type: !4348)
!4593 = !DILocation(line: 77, column: 33, scope: !4589)
!4594 = !DILocalVariable(name: "base", arg: 2, scope: !4589, file: !4344, line: 77, type: !61)
!4595 = !DILocation(line: 77, column: 40, scope: !4589)
!4596 = !DILocalVariable(name: "power", arg: 3, scope: !4589, file: !4344, line: 77, type: !61)
!4597 = !DILocation(line: 77, column: 50, scope: !4589)
!4598 = !DILocalVariable(name: "err", scope: !4589, file: !4344, line: 79, type: !4347)
!4599 = !DILocation(line: 79, column: 16, scope: !4589)
!4600 = !DILocation(line: 80, column: 3, scope: !4589)
!4601 = !DILocation(line: 80, column: 15, scope: !4589)
!4602 = !DILocation(line: 81, column: 23, scope: !4589)
!4603 = !DILocation(line: 81, column: 26, scope: !4589)
!4604 = !DILocation(line: 81, column: 12, scope: !4589)
!4605 = !DILocation(line: 81, column: 9, scope: !4589)
!4606 = distinct !{!4606, !4600, !4607}
!4607 = !DILocation(line: 81, column: 30, scope: !4589)
!4608 = !DILocation(line: 82, column: 10, scope: !4589)
!4609 = !DILocation(line: 82, column: 3, scope: !4589)
!4610 = distinct !DISubprogram(name: "rpl_fclose", scope: !662, file: !662, line: 56, type: !4611, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, unit: !661, variables: !113)
!4611 = !DISubroutineType(types: !4612)
!4612 = !{!61, !4613}
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1749, line: 7, baseType: !4615)
!4615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1751, line: 245, size: 1728, elements: !4616)
!4616 = !{!4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4637, !4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652}
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4615, file: !1751, line: 246, baseType: !61, size: 32)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4615, file: !1751, line: 251, baseType: !60, size: 64, offset: 64)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4615, file: !1751, line: 252, baseType: !60, size: 64, offset: 128)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4615, file: !1751, line: 253, baseType: !60, size: 64, offset: 192)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4615, file: !1751, line: 254, baseType: !60, size: 64, offset: 256)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4615, file: !1751, line: 255, baseType: !60, size: 64, offset: 320)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4615, file: !1751, line: 256, baseType: !60, size: 64, offset: 384)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4615, file: !1751, line: 257, baseType: !60, size: 64, offset: 448)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4615, file: !1751, line: 258, baseType: !60, size: 64, offset: 512)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4615, file: !1751, line: 260, baseType: !60, size: 64, offset: 576)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4615, file: !1751, line: 261, baseType: !60, size: 64, offset: 640)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4615, file: !1751, line: 262, baseType: !60, size: 64, offset: 704)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4615, file: !1751, line: 264, baseType: !4630, size: 64, offset: 768)
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1751, line: 160, size: 192, elements: !4632)
!4632 = !{!4633, !4634, !4636}
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4631, file: !1751, line: 161, baseType: !4630, size: 64)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4631, file: !1751, line: 162, baseType: !4635, size: 64, offset: 64)
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4615, size: 64)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4631, file: !1751, line: 166, baseType: !61, size: 32, offset: 128)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4615, file: !1751, line: 266, baseType: !4635, size: 64, offset: 832)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4615, file: !1751, line: 268, baseType: !61, size: 32, offset: 896)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4615, file: !1751, line: 272, baseType: !61, size: 32, offset: 928)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4615, file: !1751, line: 274, baseType: !1729, size: 64, offset: 960)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4615, file: !1751, line: 278, baseType: !62, size: 16, offset: 1024)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4615, file: !1751, line: 279, baseType: !1779, size: 8, offset: 1040)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4615, file: !1751, line: 280, baseType: !1781, size: 8, offset: 1048)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4615, file: !1751, line: 284, baseType: !1785, size: 64, offset: 1088)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4615, file: !1751, line: 293, baseType: !1788, size: 64, offset: 1152)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4615, file: !1751, line: 301, baseType: !55, size: 64, offset: 1216)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4615, file: !1751, line: 302, baseType: !55, size: 64, offset: 1280)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4615, file: !1751, line: 303, baseType: !55, size: 64, offset: 1344)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4615, file: !1751, line: 304, baseType: !55, size: 64, offset: 1408)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4615, file: !1751, line: 306, baseType: !172, size: 64, offset: 1472)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4615, file: !1751, line: 307, baseType: !61, size: 32, offset: 1536)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4615, file: !1751, line: 309, baseType: !1796, size: 160, offset: 1568)
!4653 = !DILocalVariable(name: "fp", arg: 1, scope: !4610, file: !662, line: 56, type: !4613)
!4654 = !DILocation(line: 56, column: 19, scope: !4610)
!4655 = !DILocalVariable(name: "saved_errno", scope: !4610, file: !662, line: 58, type: !61)
!4656 = !DILocation(line: 58, column: 7, scope: !4610)
!4657 = !DILocalVariable(name: "fd", scope: !4610, file: !662, line: 59, type: !61)
!4658 = !DILocation(line: 59, column: 7, scope: !4610)
!4659 = !DILocalVariable(name: "result", scope: !4610, file: !662, line: 60, type: !61)
!4660 = !DILocation(line: 60, column: 7, scope: !4610)
!4661 = !DILocation(line: 63, column: 16, scope: !4610)
!4662 = !DILocation(line: 63, column: 8, scope: !4610)
!4663 = !DILocation(line: 63, column: 6, scope: !4610)
!4664 = !DILocation(line: 64, column: 7, scope: !4665)
!4665 = distinct !DILexicalBlock(scope: !4610, file: !662, line: 64, column: 7)
!4666 = !DILocation(line: 64, column: 10, scope: !4665)
!4667 = !DILocation(line: 64, column: 7, scope: !4610)
!4668 = !DILocation(line: 65, column: 28, scope: !4665)
!4669 = !DILocation(line: 65, column: 12, scope: !4665)
!4670 = !DILocation(line: 65, column: 5, scope: !4665)
!4671 = !DILocation(line: 70, column: 9, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4610, file: !662, line: 70, column: 7)
!4673 = !DILocation(line: 70, column: 23, scope: !4672)
!4674 = !DILocation(line: 70, column: 41, scope: !4672)
!4675 = !DILocation(line: 70, column: 33, scope: !4672)
!4676 = !DILocation(line: 70, column: 26, scope: !4672)
!4677 = !DILocation(line: 70, column: 59, scope: !4672)
!4678 = !DILocation(line: 71, column: 7, scope: !4672)
!4679 = !DILocation(line: 71, column: 18, scope: !4672)
!4680 = !DILocation(line: 71, column: 10, scope: !4672)
!4681 = !DILocation(line: 70, column: 7, scope: !4610)
!4682 = !DILocation(line: 72, column: 19, scope: !4672)
!4683 = !DILocation(line: 72, column: 17, scope: !4672)
!4684 = !DILocation(line: 72, column: 5, scope: !4672)
!4685 = !DILocation(line: 98, column: 28, scope: !4610)
!4686 = !DILocation(line: 98, column: 12, scope: !4610)
!4687 = !DILocation(line: 98, column: 10, scope: !4610)
!4688 = !DILocation(line: 103, column: 7, scope: !4689)
!4689 = distinct !DILexicalBlock(scope: !4610, file: !662, line: 103, column: 7)
!4690 = !DILocation(line: 103, column: 19, scope: !4689)
!4691 = !DILocation(line: 103, column: 7, scope: !4610)
!4692 = !DILocation(line: 105, column: 15, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4689, file: !662, line: 104, column: 5)
!4694 = !DILocation(line: 105, column: 7, scope: !4693)
!4695 = !DILocation(line: 105, column: 13, scope: !4693)
!4696 = !DILocation(line: 106, column: 14, scope: !4693)
!4697 = !DILocation(line: 107, column: 5, scope: !4693)
!4698 = !DILocation(line: 109, column: 10, scope: !4610)
!4699 = !DILocation(line: 109, column: 3, scope: !4610)
!4700 = !DILocation(line: 110, column: 1, scope: !4610)
!4701 = distinct !DISubprogram(name: "rpl_fflush", scope: !664, file: !664, line: 117, type: !4702, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: false, unit: !663, variables: !113)
!4702 = !DISubroutineType(types: !4703)
!4703 = !{!61, !4704}
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1749, line: 7, baseType: !4706)
!4706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1751, line: 245, size: 1728, elements: !4707)
!4707 = !{!4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4720, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4743}
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4706, file: !1751, line: 246, baseType: !61, size: 32)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4706, file: !1751, line: 251, baseType: !60, size: 64, offset: 64)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4706, file: !1751, line: 252, baseType: !60, size: 64, offset: 128)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4706, file: !1751, line: 253, baseType: !60, size: 64, offset: 192)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4706, file: !1751, line: 254, baseType: !60, size: 64, offset: 256)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4706, file: !1751, line: 255, baseType: !60, size: 64, offset: 320)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4706, file: !1751, line: 256, baseType: !60, size: 64, offset: 384)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4706, file: !1751, line: 257, baseType: !60, size: 64, offset: 448)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4706, file: !1751, line: 258, baseType: !60, size: 64, offset: 512)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4706, file: !1751, line: 260, baseType: !60, size: 64, offset: 576)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4706, file: !1751, line: 261, baseType: !60, size: 64, offset: 640)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4706, file: !1751, line: 262, baseType: !60, size: 64, offset: 704)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4706, file: !1751, line: 264, baseType: !4721, size: 64, offset: 768)
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1751, line: 160, size: 192, elements: !4723)
!4723 = !{!4724, !4725, !4727}
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4722, file: !1751, line: 161, baseType: !4721, size: 64)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4722, file: !1751, line: 162, baseType: !4726, size: 64, offset: 64)
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4706, size: 64)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4722, file: !1751, line: 166, baseType: !61, size: 32, offset: 128)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4706, file: !1751, line: 266, baseType: !4726, size: 64, offset: 832)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4706, file: !1751, line: 268, baseType: !61, size: 32, offset: 896)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4706, file: !1751, line: 272, baseType: !61, size: 32, offset: 928)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4706, file: !1751, line: 274, baseType: !1729, size: 64, offset: 960)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4706, file: !1751, line: 278, baseType: !62, size: 16, offset: 1024)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4706, file: !1751, line: 279, baseType: !1779, size: 8, offset: 1040)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4706, file: !1751, line: 280, baseType: !1781, size: 8, offset: 1048)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4706, file: !1751, line: 284, baseType: !1785, size: 64, offset: 1088)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4706, file: !1751, line: 293, baseType: !1788, size: 64, offset: 1152)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4706, file: !1751, line: 301, baseType: !55, size: 64, offset: 1216)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4706, file: !1751, line: 302, baseType: !55, size: 64, offset: 1280)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4706, file: !1751, line: 303, baseType: !55, size: 64, offset: 1344)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4706, file: !1751, line: 304, baseType: !55, size: 64, offset: 1408)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4706, file: !1751, line: 306, baseType: !172, size: 64, offset: 1472)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4706, file: !1751, line: 307, baseType: !61, size: 32, offset: 1536)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4706, file: !1751, line: 309, baseType: !1796, size: 160, offset: 1568)
!4744 = !DILocalVariable(name: "stream", arg: 1, scope: !4701, file: !664, line: 117, type: !4704)
!4745 = !DILocation(line: 117, column: 19, scope: !4701)
!4746 = !DILocation(line: 138, column: 7, scope: !4747)
!4747 = distinct !DILexicalBlock(scope: !4701, file: !664, line: 138, column: 7)
!4748 = !DILocation(line: 138, column: 14, scope: !4747)
!4749 = !DILocation(line: 138, column: 22, scope: !4747)
!4750 = !DILocation(line: 138, column: 27, scope: !4747)
!4751 = !DILocation(line: 138, column: 7, scope: !4701)
!4752 = !DILocation(line: 139, column: 20, scope: !4747)
!4753 = !DILocation(line: 139, column: 12, scope: !4747)
!4754 = !DILocation(line: 139, column: 5, scope: !4747)
!4755 = !DILocation(line: 143, column: 44, scope: !4701)
!4756 = !DILocation(line: 143, column: 3, scope: !4701)
!4757 = !DILocation(line: 145, column: 18, scope: !4701)
!4758 = !DILocation(line: 145, column: 10, scope: !4701)
!4759 = !DILocation(line: 145, column: 3, scope: !4701)
!4760 = !DILocation(line: 218, column: 1, scope: !4701)
!4761 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !664, file: !664, line: 38, type: !4762, isLocal: true, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: false, unit: !663, variables: !113)
!4762 = !DISubroutineType(types: !4763)
!4763 = !{null, !4704}
!4764 = !DILocalVariable(name: "fp", arg: 1, scope: !4761, file: !664, line: 38, type: !4704)
!4765 = !DILocation(line: 38, column: 48, scope: !4761)
!4766 = !DILocation(line: 40, column: 7, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4761, file: !664, line: 40, column: 7)
!4768 = !DILocation(line: 40, column: 11, scope: !4767)
!4769 = !DILocation(line: 40, column: 18, scope: !4767)
!4770 = !DILocation(line: 40, column: 7, scope: !4761)
!4771 = !DILocation(line: 42, column: 13, scope: !4767)
!4772 = !DILocation(line: 42, column: 5, scope: !4767)
!4773 = !DILocation(line: 43, column: 1, scope: !4761)
!4774 = distinct !DISubprogram(name: "rpl_fseeko", scope: !667, file: !667, line: 28, type: !4775, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: false, unit: !666, variables: !113)
!4775 = !DISubroutineType(types: !4776)
!4776 = !{!61, !4777, !1727, !61}
!4777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4778, size: 64)
!4778 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1749, line: 7, baseType: !4779)
!4779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1751, line: 245, size: 1728, elements: !4780)
!4780 = !{!4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816}
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4779, file: !1751, line: 246, baseType: !61, size: 32)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4779, file: !1751, line: 251, baseType: !60, size: 64, offset: 64)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4779, file: !1751, line: 252, baseType: !60, size: 64, offset: 128)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4779, file: !1751, line: 253, baseType: !60, size: 64, offset: 192)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4779, file: !1751, line: 254, baseType: !60, size: 64, offset: 256)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4779, file: !1751, line: 255, baseType: !60, size: 64, offset: 320)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4779, file: !1751, line: 256, baseType: !60, size: 64, offset: 384)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4779, file: !1751, line: 257, baseType: !60, size: 64, offset: 448)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4779, file: !1751, line: 258, baseType: !60, size: 64, offset: 512)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4779, file: !1751, line: 260, baseType: !60, size: 64, offset: 576)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4779, file: !1751, line: 261, baseType: !60, size: 64, offset: 640)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4779, file: !1751, line: 262, baseType: !60, size: 64, offset: 704)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4779, file: !1751, line: 264, baseType: !4794, size: 64, offset: 768)
!4794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4795, size: 64)
!4795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1751, line: 160, size: 192, elements: !4796)
!4796 = !{!4797, !4798, !4800}
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4795, file: !1751, line: 161, baseType: !4794, size: 64)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4795, file: !1751, line: 162, baseType: !4799, size: 64, offset: 64)
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4779, size: 64)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4795, file: !1751, line: 166, baseType: !61, size: 32, offset: 128)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4779, file: !1751, line: 266, baseType: !4799, size: 64, offset: 832)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4779, file: !1751, line: 268, baseType: !61, size: 32, offset: 896)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4779, file: !1751, line: 272, baseType: !61, size: 32, offset: 928)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4779, file: !1751, line: 274, baseType: !1729, size: 64, offset: 960)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4779, file: !1751, line: 278, baseType: !62, size: 16, offset: 1024)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4779, file: !1751, line: 279, baseType: !1779, size: 8, offset: 1040)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4779, file: !1751, line: 280, baseType: !1781, size: 8, offset: 1048)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4779, file: !1751, line: 284, baseType: !1785, size: 64, offset: 1088)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4779, file: !1751, line: 293, baseType: !1788, size: 64, offset: 1152)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4779, file: !1751, line: 301, baseType: !55, size: 64, offset: 1216)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4779, file: !1751, line: 302, baseType: !55, size: 64, offset: 1280)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4779, file: !1751, line: 303, baseType: !55, size: 64, offset: 1344)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4779, file: !1751, line: 304, baseType: !55, size: 64, offset: 1408)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4779, file: !1751, line: 306, baseType: !172, size: 64, offset: 1472)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4779, file: !1751, line: 307, baseType: !61, size: 32, offset: 1536)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4779, file: !1751, line: 309, baseType: !1796, size: 160, offset: 1568)
!4817 = !DILocalVariable(name: "fp", arg: 1, scope: !4774, file: !667, line: 28, type: !4777)
!4818 = !DILocation(line: 28, column: 15, scope: !4774)
!4819 = !DILocalVariable(name: "offset", arg: 2, scope: !4774, file: !667, line: 28, type: !1727)
!4820 = !DILocation(line: 28, column: 25, scope: !4774)
!4821 = !DILocalVariable(name: "whence", arg: 3, scope: !4774, file: !667, line: 28, type: !61)
!4822 = !DILocation(line: 28, column: 37, scope: !4774)
!4823 = !DILocation(line: 43, column: 7, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4774, file: !667, line: 43, column: 7)
!4825 = !DILocation(line: 43, column: 11, scope: !4824)
!4826 = !DILocation(line: 43, column: 27, scope: !4824)
!4827 = !DILocation(line: 43, column: 31, scope: !4824)
!4828 = !DILocation(line: 43, column: 24, scope: !4824)
!4829 = !DILocation(line: 44, column: 7, scope: !4824)
!4830 = !DILocation(line: 44, column: 10, scope: !4824)
!4831 = !DILocation(line: 44, column: 14, scope: !4824)
!4832 = !DILocation(line: 44, column: 31, scope: !4824)
!4833 = !DILocation(line: 44, column: 35, scope: !4824)
!4834 = !DILocation(line: 44, column: 28, scope: !4824)
!4835 = !DILocation(line: 45, column: 7, scope: !4824)
!4836 = !DILocation(line: 45, column: 10, scope: !4824)
!4837 = !DILocation(line: 45, column: 14, scope: !4824)
!4838 = !DILocation(line: 45, column: 28, scope: !4824)
!4839 = !DILocation(line: 43, column: 7, scope: !4774)
!4840 = !DILocalVariable(name: "pos", scope: !4841, file: !667, line: 101, type: !1727)
!4841 = distinct !DILexicalBlock(scope: !4824, file: !667, line: 97, column: 5)
!4842 = !DILocation(line: 101, column: 13, scope: !4841)
!4843 = !DILocation(line: 101, column: 34, scope: !4841)
!4844 = !DILocation(line: 101, column: 26, scope: !4841)
!4845 = !DILocation(line: 101, column: 39, scope: !4841)
!4846 = !DILocation(line: 101, column: 47, scope: !4841)
!4847 = !DILocation(line: 101, column: 19, scope: !4841)
!4848 = !DILocation(line: 102, column: 11, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4841, file: !667, line: 102, column: 11)
!4850 = !DILocation(line: 102, column: 15, scope: !4849)
!4851 = !DILocation(line: 102, column: 11, scope: !4841)
!4852 = !DILocation(line: 107, column: 11, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4849, file: !667, line: 103, column: 9)
!4854 = !DILocation(line: 111, column: 7, scope: !4841)
!4855 = !DILocation(line: 111, column: 11, scope: !4841)
!4856 = !DILocation(line: 111, column: 18, scope: !4841)
!4857 = !DILocation(line: 112, column: 21, scope: !4841)
!4858 = !DILocation(line: 112, column: 7, scope: !4841)
!4859 = !DILocation(line: 112, column: 11, scope: !4841)
!4860 = !DILocation(line: 112, column: 19, scope: !4841)
!4861 = !DILocation(line: 142, column: 7, scope: !4841)
!4862 = !DILocation(line: 144, column: 18, scope: !4774)
!4863 = !DILocation(line: 144, column: 22, scope: !4774)
!4864 = !DILocation(line: 144, column: 30, scope: !4774)
!4865 = !DILocation(line: 144, column: 10, scope: !4774)
!4866 = !DILocation(line: 144, column: 3, scope: !4774)
!4867 = !DILocation(line: 145, column: 1, scope: !4774)
!4868 = distinct !DISubprogram(name: "c_strcasecmp", scope: !669, file: !669, line: 27, type: !4869, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: false, unit: !668, variables: !113)
!4869 = !DISubroutineType(types: !4870)
!4870 = !{!61, !52, !52}
!4871 = !DILocalVariable(name: "s1", arg: 1, scope: !4868, file: !669, line: 27, type: !52)
!4872 = !DILocation(line: 27, column: 27, scope: !4868)
!4873 = !DILocalVariable(name: "s2", arg: 2, scope: !4868, file: !669, line: 27, type: !52)
!4874 = !DILocation(line: 27, column: 43, scope: !4868)
!4875 = !DILocalVariable(name: "p1", scope: !4868, file: !669, line: 29, type: !671)
!4876 = !DILocation(line: 29, column: 33, scope: !4868)
!4877 = !DILocation(line: 29, column: 62, scope: !4868)
!4878 = !DILocalVariable(name: "p2", scope: !4868, file: !669, line: 30, type: !671)
!4879 = !DILocation(line: 30, column: 33, scope: !4868)
!4880 = !DILocation(line: 30, column: 62, scope: !4868)
!4881 = !DILocalVariable(name: "c1", scope: !4868, file: !669, line: 31, type: !673)
!4882 = !DILocation(line: 31, column: 17, scope: !4868)
!4883 = !DILocalVariable(name: "c2", scope: !4868, file: !669, line: 31, type: !673)
!4884 = !DILocation(line: 31, column: 21, scope: !4868)
!4885 = !DILocation(line: 33, column: 7, scope: !4886)
!4886 = distinct !DILexicalBlock(scope: !4868, file: !669, line: 33, column: 7)
!4887 = !DILocation(line: 33, column: 13, scope: !4886)
!4888 = !DILocation(line: 33, column: 10, scope: !4886)
!4889 = !DILocation(line: 33, column: 7, scope: !4868)
!4890 = !DILocation(line: 34, column: 5, scope: !4886)
!4891 = !DILocation(line: 36, column: 3, scope: !4868)
!4892 = distinct !{!4892, !4891, !4893}
!4893 = !DILocation(line: 47, column: 18, scope: !4868)
!4894 = !DILocation(line: 38, column: 24, scope: !4895)
!4895 = distinct !DILexicalBlock(scope: !4868, file: !669, line: 37, column: 5)
!4896 = !DILocation(line: 38, column: 23, scope: !4895)
!4897 = !DILocation(line: 38, column: 12, scope: !4895)
!4898 = !DILocation(line: 38, column: 10, scope: !4895)
!4899 = !DILocation(line: 39, column: 24, scope: !4895)
!4900 = !DILocation(line: 39, column: 23, scope: !4895)
!4901 = !DILocation(line: 39, column: 12, scope: !4895)
!4902 = !DILocation(line: 39, column: 10, scope: !4895)
!4903 = !DILocation(line: 41, column: 11, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4895, file: !669, line: 41, column: 11)
!4905 = !DILocation(line: 41, column: 14, scope: !4904)
!4906 = !DILocation(line: 41, column: 11, scope: !4895)
!4907 = !DILocation(line: 42, column: 9, scope: !4904)
!4908 = !DILocation(line: 44, column: 7, scope: !4895)
!4909 = !DILocation(line: 45, column: 7, scope: !4895)
!4910 = !DILocation(line: 46, column: 5, scope: !4895)
!4911 = !DILocation(line: 47, column: 10, scope: !4868)
!4912 = !DILocation(line: 47, column: 16, scope: !4868)
!4913 = !DILocation(line: 47, column: 13, scope: !4868)
!4914 = !DILocation(line: 50, column: 12, scope: !4915)
!4915 = distinct !DILexicalBlock(scope: !4868, file: !669, line: 49, column: 7)
!4916 = !DILocation(line: 50, column: 17, scope: !4915)
!4917 = !DILocation(line: 50, column: 15, scope: !4915)
!4918 = !DILocation(line: 50, column: 5, scope: !4915)
!4919 = !DILocation(line: 56, column: 1, scope: !4868)
!4920 = distinct !DISubprogram(name: "close_stream", scope: !675, file: !675, line: 56, type: !4921, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, unit: !674, variables: !113)
!4921 = !DISubroutineType(types: !4922)
!4922 = !{!61, !4923}
!4923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4924, size: 64)
!4924 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1749, line: 7, baseType: !4925)
!4925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1751, line: 245, size: 1728, elements: !4926)
!4926 = !{!4927, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4947, !4948, !4949, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4962}
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4925, file: !1751, line: 246, baseType: !61, size: 32)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4925, file: !1751, line: 251, baseType: !60, size: 64, offset: 64)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4925, file: !1751, line: 252, baseType: !60, size: 64, offset: 128)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4925, file: !1751, line: 253, baseType: !60, size: 64, offset: 192)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4925, file: !1751, line: 254, baseType: !60, size: 64, offset: 256)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4925, file: !1751, line: 255, baseType: !60, size: 64, offset: 320)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4925, file: !1751, line: 256, baseType: !60, size: 64, offset: 384)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4925, file: !1751, line: 257, baseType: !60, size: 64, offset: 448)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4925, file: !1751, line: 258, baseType: !60, size: 64, offset: 512)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4925, file: !1751, line: 260, baseType: !60, size: 64, offset: 576)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4925, file: !1751, line: 261, baseType: !60, size: 64, offset: 640)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4925, file: !1751, line: 262, baseType: !60, size: 64, offset: 704)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4925, file: !1751, line: 264, baseType: !4940, size: 64, offset: 768)
!4940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4941, size: 64)
!4941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1751, line: 160, size: 192, elements: !4942)
!4942 = !{!4943, !4944, !4946}
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4941, file: !1751, line: 161, baseType: !4940, size: 64)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4941, file: !1751, line: 162, baseType: !4945, size: 64, offset: 64)
!4945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4925, size: 64)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4941, file: !1751, line: 166, baseType: !61, size: 32, offset: 128)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4925, file: !1751, line: 266, baseType: !4945, size: 64, offset: 832)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4925, file: !1751, line: 268, baseType: !61, size: 32, offset: 896)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4925, file: !1751, line: 272, baseType: !61, size: 32, offset: 928)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4925, file: !1751, line: 274, baseType: !1729, size: 64, offset: 960)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4925, file: !1751, line: 278, baseType: !62, size: 16, offset: 1024)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4925, file: !1751, line: 279, baseType: !1779, size: 8, offset: 1040)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4925, file: !1751, line: 280, baseType: !1781, size: 8, offset: 1048)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4925, file: !1751, line: 284, baseType: !1785, size: 64, offset: 1088)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4925, file: !1751, line: 293, baseType: !1788, size: 64, offset: 1152)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4925, file: !1751, line: 301, baseType: !55, size: 64, offset: 1216)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4925, file: !1751, line: 302, baseType: !55, size: 64, offset: 1280)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4925, file: !1751, line: 303, baseType: !55, size: 64, offset: 1344)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4925, file: !1751, line: 304, baseType: !55, size: 64, offset: 1408)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4925, file: !1751, line: 306, baseType: !172, size: 64, offset: 1472)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4925, file: !1751, line: 307, baseType: !61, size: 32, offset: 1536)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4925, file: !1751, line: 309, baseType: !1796, size: 160, offset: 1568)
!4963 = !DILocalVariable(name: "stream", arg: 1, scope: !4920, file: !675, line: 56, type: !4923)
!4964 = !DILocation(line: 56, column: 21, scope: !4920)
!4965 = !DILocalVariable(name: "some_pending", scope: !4920, file: !675, line: 58, type: !4966)
!4966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!4967 = !DILocation(line: 58, column: 14, scope: !4920)
!4968 = !DILocation(line: 58, column: 42, scope: !4920)
!4969 = !DILocation(line: 58, column: 30, scope: !4920)
!4970 = !DILocation(line: 58, column: 50, scope: !4920)
!4971 = !DILocalVariable(name: "prev_fail", scope: !4920, file: !675, line: 59, type: !4966)
!4972 = !DILocation(line: 59, column: 14, scope: !4920)
!4973 = !DILocation(line: 59, column: 27, scope: !4920)
!4974 = !DILocation(line: 59, column: 43, scope: !4920)
!4975 = !DILocalVariable(name: "fclose_fail", scope: !4920, file: !675, line: 60, type: !4966)
!4976 = !DILocation(line: 60, column: 14, scope: !4920)
!4977 = !DILocation(line: 60, column: 37, scope: !4920)
!4978 = !DILocation(line: 60, column: 29, scope: !4920)
!4979 = !DILocation(line: 60, column: 45, scope: !4920)
!4980 = !DILocation(line: 70, column: 7, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4920, file: !675, line: 70, column: 7)
!4982 = !DILocation(line: 70, column: 17, scope: !4981)
!4983 = !DILocation(line: 70, column: 21, scope: !4981)
!4984 = !DILocation(line: 70, column: 33, scope: !4981)
!4985 = !DILocation(line: 70, column: 37, scope: !4981)
!4986 = !DILocation(line: 70, column: 50, scope: !4981)
!4987 = !DILocation(line: 70, column: 53, scope: !4981)
!4988 = !DILocation(line: 70, column: 59, scope: !4981)
!4989 = !DILocation(line: 70, column: 7, scope: !4920)
!4990 = !DILocation(line: 72, column: 13, scope: !4991)
!4991 = distinct !DILexicalBlock(scope: !4992, file: !675, line: 72, column: 11)
!4992 = distinct !DILexicalBlock(scope: !4981, file: !675, line: 71, column: 5)
!4993 = !DILocation(line: 72, column: 11, scope: !4992)
!4994 = !DILocation(line: 73, column: 9, scope: !4991)
!4995 = !DILocation(line: 73, column: 15, scope: !4991)
!4996 = !DILocation(line: 74, column: 7, scope: !4992)
!4997 = !DILocation(line: 77, column: 3, scope: !4920)
!4998 = !DILocation(line: 78, column: 1, scope: !4920)
!4999 = distinct !DISubprogram(name: "locale_charset", scope: !224, file: !224, line: 357, type: !5000, isLocal: false, isDefinition: true, scopeLine: 358, flags: DIFlagPrototyped, isOptimized: false, unit: !223, variables: !113)
!5000 = !DISubroutineType(types: !143)
!5001 = !DILocalVariable(name: "codeset", scope: !4999, file: !224, line: 359, type: !52)
!5002 = !DILocation(line: 359, column: 15, scope: !4999)
!5003 = !DILocalVariable(name: "aliases", scope: !4999, file: !224, line: 360, type: !52)
!5004 = !DILocation(line: 360, column: 15, scope: !4999)
!5005 = !DILocation(line: 367, column: 13, scope: !4999)
!5006 = !DILocation(line: 367, column: 11, scope: !4999)
!5007 = !DILocation(line: 524, column: 7, scope: !5008)
!5008 = distinct !DILexicalBlock(scope: !4999, file: !224, line: 524, column: 7)
!5009 = !DILocation(line: 524, column: 15, scope: !5008)
!5010 = !DILocation(line: 524, column: 7, scope: !4999)
!5011 = !DILocation(line: 526, column: 13, scope: !5008)
!5012 = !DILocation(line: 526, column: 5, scope: !5008)
!5013 = !DILocation(line: 529, column: 18, scope: !5014)
!5014 = distinct !DILexicalBlock(scope: !4999, file: !224, line: 529, column: 3)
!5015 = !DILocation(line: 529, column: 16, scope: !5014)
!5016 = !DILocation(line: 529, column: 8, scope: !5014)
!5017 = !DILocation(line: 530, column: 9, scope: !5018)
!5018 = distinct !DILexicalBlock(scope: !5014, file: !224, line: 529, column: 3)
!5019 = !DILocation(line: 530, column: 8, scope: !5018)
!5020 = !DILocation(line: 530, column: 17, scope: !5018)
!5021 = !DILocation(line: 529, column: 3, scope: !5014)
!5022 = !DILocation(line: 532, column: 17, scope: !5023)
!5023 = distinct !DILexicalBlock(scope: !5018, file: !224, line: 532, column: 9)
!5024 = !DILocation(line: 532, column: 26, scope: !5023)
!5025 = !DILocation(line: 532, column: 9, scope: !5023)
!5026 = !DILocation(line: 532, column: 35, scope: !5023)
!5027 = !DILocation(line: 533, column: 9, scope: !5023)
!5028 = !DILocation(line: 533, column: 13, scope: !5023)
!5029 = !DILocation(line: 533, column: 24, scope: !5023)
!5030 = !DILocation(line: 533, column: 31, scope: !5023)
!5031 = !DILocation(line: 533, column: 34, scope: !5023)
!5032 = !DILocation(line: 533, column: 45, scope: !5023)
!5033 = !DILocation(line: 532, column: 9, scope: !5018)
!5034 = !DILocation(line: 535, column: 19, scope: !5035)
!5035 = distinct !DILexicalBlock(scope: !5023, file: !224, line: 534, column: 7)
!5036 = !DILocation(line: 535, column: 37, scope: !5035)
!5037 = !DILocation(line: 535, column: 29, scope: !5035)
!5038 = !DILocation(line: 535, column: 27, scope: !5035)
!5039 = !DILocation(line: 535, column: 46, scope: !5035)
!5040 = !DILocation(line: 535, column: 17, scope: !5035)
!5041 = !DILocation(line: 536, column: 9, scope: !5035)
!5042 = !DILocation(line: 533, column: 52, scope: !5023)
!5043 = !DILocation(line: 531, column: 27, scope: !5018)
!5044 = !DILocation(line: 531, column: 19, scope: !5018)
!5045 = !DILocation(line: 531, column: 36, scope: !5018)
!5046 = !DILocation(line: 531, column: 16, scope: !5018)
!5047 = !DILocation(line: 531, column: 60, scope: !5018)
!5048 = !DILocation(line: 531, column: 52, scope: !5018)
!5049 = !DILocation(line: 531, column: 69, scope: !5018)
!5050 = !DILocation(line: 531, column: 49, scope: !5018)
!5051 = !DILocation(line: 529, column: 3, scope: !5018)
!5052 = distinct !{!5052, !5021, !5053}
!5053 = !DILocation(line: 537, column: 7, scope: !5014)
!5054 = !DILocation(line: 542, column: 7, scope: !5055)
!5055 = distinct !DILexicalBlock(scope: !4999, file: !224, line: 542, column: 7)
!5056 = !DILocation(line: 542, column: 18, scope: !5055)
!5057 = !DILocation(line: 542, column: 7, scope: !4999)
!5058 = !DILocation(line: 543, column: 13, scope: !5055)
!5059 = !DILocation(line: 543, column: 5, scope: !5055)
!5060 = !DILocation(line: 545, column: 10, scope: !4999)
!5061 = !DILocation(line: 545, column: 3, scope: !4999)
!5062 = distinct !DISubprogram(name: "get_charset_aliases", scope: !224, file: !224, line: 118, type: !5000, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: false, unit: !223, variables: !113)
!5063 = !DILocalVariable(name: "cp", scope: !5062, file: !224, line: 120, type: !52)
!5064 = !DILocation(line: 120, column: 15, scope: !5062)
!5065 = !DILocation(line: 122, column: 8, scope: !5062)
!5066 = !DILocation(line: 122, column: 6, scope: !5062)
!5067 = !DILocation(line: 123, column: 7, scope: !5068)
!5068 = distinct !DILexicalBlock(scope: !5062, file: !224, line: 123, column: 7)
!5069 = !DILocation(line: 123, column: 10, scope: !5068)
!5070 = !DILocation(line: 123, column: 7, scope: !5062)
!5071 = !DILocalVariable(name: "dir", scope: !5072, file: !224, line: 126, type: !52)
!5072 = distinct !DILexicalBlock(scope: !5068, file: !224, line: 124, column: 5)
!5073 = !DILocation(line: 126, column: 19, scope: !5072)
!5074 = !DILocalVariable(name: "base", scope: !5072, file: !224, line: 127, type: !52)
!5075 = !DILocation(line: 127, column: 19, scope: !5072)
!5076 = !DILocalVariable(name: "file_name", scope: !5072, file: !224, line: 128, type: !60)
!5077 = !DILocation(line: 128, column: 13, scope: !5072)
!5078 = !DILocation(line: 132, column: 13, scope: !5072)
!5079 = !DILocation(line: 132, column: 11, scope: !5072)
!5080 = !DILocation(line: 133, column: 11, scope: !5081)
!5081 = distinct !DILexicalBlock(scope: !5072, file: !224, line: 133, column: 11)
!5082 = !DILocation(line: 133, column: 15, scope: !5081)
!5083 = !DILocation(line: 133, column: 23, scope: !5081)
!5084 = !DILocation(line: 133, column: 26, scope: !5081)
!5085 = !DILocation(line: 133, column: 33, scope: !5081)
!5086 = !DILocation(line: 133, column: 11, scope: !5072)
!5087 = !DILocation(line: 134, column: 13, scope: !5081)
!5088 = !DILocation(line: 134, column: 9, scope: !5081)
!5089 = !DILocalVariable(name: "dir_len", scope: !5090, file: !224, line: 138, type: !172)
!5090 = distinct !DILexicalBlock(scope: !5072, file: !224, line: 137, column: 7)
!5091 = !DILocation(line: 138, column: 16, scope: !5090)
!5092 = !DILocation(line: 138, column: 34, scope: !5090)
!5093 = !DILocation(line: 138, column: 26, scope: !5090)
!5094 = !DILocalVariable(name: "base_len", scope: !5090, file: !224, line: 139, type: !172)
!5095 = !DILocation(line: 139, column: 16, scope: !5090)
!5096 = !DILocation(line: 139, column: 35, scope: !5090)
!5097 = !DILocation(line: 139, column: 27, scope: !5090)
!5098 = !DILocalVariable(name: "add_slash", scope: !5090, file: !224, line: 140, type: !61)
!5099 = !DILocation(line: 140, column: 13, scope: !5090)
!5100 = !DILocation(line: 140, column: 26, scope: !5090)
!5101 = !DILocation(line: 140, column: 34, scope: !5090)
!5102 = !DILocation(line: 140, column: 38, scope: !5090)
!5103 = !DILocation(line: 140, column: 42, scope: !5090)
!5104 = !DILocation(line: 140, column: 41, scope: !5090)
!5105 = !DILocation(line: 141, column: 38, scope: !5090)
!5106 = !DILocation(line: 141, column: 48, scope: !5090)
!5107 = !DILocation(line: 141, column: 46, scope: !5090)
!5108 = !DILocation(line: 141, column: 60, scope: !5090)
!5109 = !DILocation(line: 141, column: 58, scope: !5090)
!5110 = !DILocation(line: 141, column: 69, scope: !5090)
!5111 = !DILocation(line: 141, column: 30, scope: !5090)
!5112 = !DILocation(line: 141, column: 19, scope: !5090)
!5113 = !DILocation(line: 142, column: 13, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !5090, file: !224, line: 142, column: 13)
!5115 = !DILocation(line: 142, column: 23, scope: !5114)
!5116 = !DILocation(line: 142, column: 13, scope: !5090)
!5117 = !DILocation(line: 144, column: 21, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !5114, file: !224, line: 143, column: 11)
!5119 = !DILocation(line: 144, column: 32, scope: !5118)
!5120 = !DILocation(line: 144, column: 37, scope: !5118)
!5121 = !DILocation(line: 144, column: 13, scope: !5118)
!5122 = !DILocation(line: 145, column: 17, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5118, file: !224, line: 145, column: 17)
!5124 = !DILocation(line: 145, column: 17, scope: !5118)
!5125 = !DILocation(line: 146, column: 15, scope: !5123)
!5126 = !DILocation(line: 146, column: 25, scope: !5123)
!5127 = !DILocation(line: 146, column: 34, scope: !5123)
!5128 = !DILocation(line: 147, column: 21, scope: !5118)
!5129 = !DILocation(line: 147, column: 33, scope: !5118)
!5130 = !DILocation(line: 147, column: 31, scope: !5118)
!5131 = !DILocation(line: 147, column: 43, scope: !5118)
!5132 = !DILocation(line: 147, column: 41, scope: !5118)
!5133 = !DILocation(line: 147, column: 54, scope: !5118)
!5134 = !DILocation(line: 147, column: 60, scope: !5118)
!5135 = !DILocation(line: 147, column: 69, scope: !5118)
!5136 = !DILocation(line: 147, column: 13, scope: !5118)
!5137 = !DILocation(line: 148, column: 11, scope: !5118)
!5138 = !DILocation(line: 151, column: 11, scope: !5139)
!5139 = distinct !DILexicalBlock(scope: !5072, file: !224, line: 151, column: 11)
!5140 = !DILocation(line: 151, column: 21, scope: !5139)
!5141 = !DILocation(line: 151, column: 11, scope: !5072)
!5142 = !DILocation(line: 153, column: 12, scope: !5139)
!5143 = !DILocation(line: 153, column: 9, scope: !5139)
!5144 = !DILocalVariable(name: "fd", scope: !5145, file: !224, line: 156, type: !61)
!5145 = distinct !DILexicalBlock(scope: !5139, file: !224, line: 155, column: 9)
!5146 = !DILocation(line: 156, column: 15, scope: !5145)
!5147 = !DILocation(line: 165, column: 22, scope: !5145)
!5148 = !DILocation(line: 165, column: 16, scope: !5145)
!5149 = !DILocation(line: 165, column: 14, scope: !5145)
!5150 = !DILocation(line: 167, column: 15, scope: !5151)
!5151 = distinct !DILexicalBlock(scope: !5145, file: !224, line: 167, column: 15)
!5152 = !DILocation(line: 167, column: 18, scope: !5151)
!5153 = !DILocation(line: 167, column: 15, scope: !5145)
!5154 = !DILocation(line: 169, column: 16, scope: !5151)
!5155 = !DILocation(line: 169, column: 13, scope: !5151)
!5156 = !DILocalVariable(name: "fp", scope: !5157, file: !224, line: 172, type: !5158)
!5157 = distinct !DILexicalBlock(scope: !5151, file: !224, line: 171, column: 13)
!5158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5159, size: 64)
!5159 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1749, line: 7, baseType: !5160)
!5160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1751, line: 245, size: 1728, elements: !5161)
!5161 = !{!5162, !5163, !5164, !5165, !5166, !5167, !5168, !5169, !5170, !5171, !5172, !5173, !5174, !5182, !5183, !5184, !5185, !5186, !5187, !5188, !5189, !5190, !5191, !5192, !5193, !5194, !5195, !5196, !5197}
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5160, file: !1751, line: 246, baseType: !61, size: 32)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5160, file: !1751, line: 251, baseType: !60, size: 64, offset: 64)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5160, file: !1751, line: 252, baseType: !60, size: 64, offset: 128)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5160, file: !1751, line: 253, baseType: !60, size: 64, offset: 192)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5160, file: !1751, line: 254, baseType: !60, size: 64, offset: 256)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5160, file: !1751, line: 255, baseType: !60, size: 64, offset: 320)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5160, file: !1751, line: 256, baseType: !60, size: 64, offset: 384)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5160, file: !1751, line: 257, baseType: !60, size: 64, offset: 448)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5160, file: !1751, line: 258, baseType: !60, size: 64, offset: 512)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5160, file: !1751, line: 260, baseType: !60, size: 64, offset: 576)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5160, file: !1751, line: 261, baseType: !60, size: 64, offset: 640)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5160, file: !1751, line: 262, baseType: !60, size: 64, offset: 704)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5160, file: !1751, line: 264, baseType: !5175, size: 64, offset: 768)
!5175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5176, size: 64)
!5176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1751, line: 160, size: 192, elements: !5177)
!5177 = !{!5178, !5179, !5181}
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5176, file: !1751, line: 161, baseType: !5175, size: 64)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5176, file: !1751, line: 162, baseType: !5180, size: 64, offset: 64)
!5180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5160, size: 64)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5176, file: !1751, line: 166, baseType: !61, size: 32, offset: 128)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5160, file: !1751, line: 266, baseType: !5180, size: 64, offset: 832)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5160, file: !1751, line: 268, baseType: !61, size: 32, offset: 896)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5160, file: !1751, line: 272, baseType: !61, size: 32, offset: 928)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5160, file: !1751, line: 274, baseType: !1729, size: 64, offset: 960)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5160, file: !1751, line: 278, baseType: !62, size: 16, offset: 1024)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5160, file: !1751, line: 279, baseType: !1779, size: 8, offset: 1040)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5160, file: !1751, line: 280, baseType: !1781, size: 8, offset: 1048)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5160, file: !1751, line: 284, baseType: !1785, size: 64, offset: 1088)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5160, file: !1751, line: 293, baseType: !1788, size: 64, offset: 1152)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5160, file: !1751, line: 301, baseType: !55, size: 64, offset: 1216)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5160, file: !1751, line: 302, baseType: !55, size: 64, offset: 1280)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5160, file: !1751, line: 303, baseType: !55, size: 64, offset: 1344)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5160, file: !1751, line: 304, baseType: !55, size: 64, offset: 1408)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5160, file: !1751, line: 306, baseType: !172, size: 64, offset: 1472)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5160, file: !1751, line: 307, baseType: !61, size: 32, offset: 1536)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5160, file: !1751, line: 309, baseType: !1796, size: 160, offset: 1568)
!5198 = !DILocation(line: 172, column: 21, scope: !5157)
!5199 = !DILocation(line: 174, column: 28, scope: !5157)
!5200 = !DILocation(line: 174, column: 20, scope: !5157)
!5201 = !DILocation(line: 174, column: 18, scope: !5157)
!5202 = !DILocation(line: 175, column: 19, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !5157, file: !224, line: 175, column: 19)
!5204 = !DILocation(line: 175, column: 22, scope: !5203)
!5205 = !DILocation(line: 175, column: 19, scope: !5157)
!5206 = !DILocation(line: 178, column: 26, scope: !5207)
!5207 = distinct !DILexicalBlock(scope: !5203, file: !224, line: 176, column: 17)
!5208 = !DILocation(line: 178, column: 19, scope: !5207)
!5209 = !DILocation(line: 179, column: 22, scope: !5207)
!5210 = !DILocation(line: 180, column: 17, scope: !5207)
!5211 = !DILocalVariable(name: "res_ptr", scope: !5212, file: !224, line: 184, type: !60)
!5212 = distinct !DILexicalBlock(scope: !5203, file: !224, line: 182, column: 17)
!5213 = !DILocation(line: 184, column: 25, scope: !5212)
!5214 = !DILocalVariable(name: "res_size", scope: !5212, file: !224, line: 185, type: !172)
!5215 = !DILocation(line: 185, column: 26, scope: !5212)
!5216 = !DILocation(line: 187, column: 19, scope: !5212)
!5217 = !DILocalVariable(name: "c", scope: !5218, file: !224, line: 189, type: !61)
!5218 = distinct !DILexicalBlock(scope: !5219, file: !224, line: 188, column: 21)
!5219 = distinct !DILexicalBlock(scope: !5220, file: !224, line: 187, column: 19)
!5220 = distinct !DILexicalBlock(scope: !5212, file: !224, line: 187, column: 19)
!5221 = !DILocation(line: 189, column: 27, scope: !5218)
!5222 = !DILocalVariable(name: "buf1", scope: !5218, file: !224, line: 190, type: !5223)
!5223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 408, elements: !5224)
!5224 = !{!5225}
!5225 = !DISubrange(count: 51)
!5226 = !DILocation(line: 190, column: 28, scope: !5218)
!5227 = !DILocalVariable(name: "buf2", scope: !5218, file: !224, line: 191, type: !5223)
!5228 = !DILocation(line: 191, column: 28, scope: !5218)
!5229 = !DILocalVariable(name: "l1", scope: !5218, file: !224, line: 192, type: !172)
!5230 = !DILocation(line: 192, column: 30, scope: !5218)
!5231 = !DILocalVariable(name: "l2", scope: !5218, file: !224, line: 192, type: !172)
!5232 = !DILocation(line: 192, column: 34, scope: !5218)
!5233 = !DILocalVariable(name: "old_res_ptr", scope: !5218, file: !224, line: 193, type: !60)
!5234 = !DILocation(line: 193, column: 29, scope: !5218)
!5235 = !DILocation(line: 195, column: 33, scope: !5218)
!5236 = !DILocation(line: 195, column: 27, scope: !5218)
!5237 = !DILocation(line: 195, column: 25, scope: !5218)
!5238 = !DILocation(line: 196, column: 27, scope: !5239)
!5239 = distinct !DILexicalBlock(scope: !5218, file: !224, line: 196, column: 27)
!5240 = !DILocation(line: 196, column: 29, scope: !5239)
!5241 = !DILocation(line: 196, column: 27, scope: !5218)
!5242 = !DILocation(line: 197, column: 25, scope: !5239)
!5243 = !DILocation(line: 198, column: 27, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5218, file: !224, line: 198, column: 27)
!5245 = !DILocation(line: 198, column: 29, scope: !5244)
!5246 = !DILocation(line: 198, column: 37, scope: !5244)
!5247 = !DILocation(line: 198, column: 40, scope: !5244)
!5248 = !DILocation(line: 198, column: 42, scope: !5244)
!5249 = !DILocation(line: 198, column: 49, scope: !5244)
!5250 = !DILocation(line: 198, column: 52, scope: !5244)
!5251 = !DILocation(line: 198, column: 54, scope: !5244)
!5252 = !DILocation(line: 198, column: 27, scope: !5218)
!5253 = !DILocation(line: 199, column: 25, scope: !5244)
!5254 = distinct !{!5254, !5255, !5256}
!5255 = !DILocation(line: 187, column: 19, scope: !5220)
!5256 = !DILocation(line: 235, column: 21, scope: !5220)
!5257 = !DILocation(line: 200, column: 27, scope: !5258)
!5258 = distinct !DILexicalBlock(scope: !5218, file: !224, line: 200, column: 27)
!5259 = !DILocation(line: 200, column: 29, scope: !5258)
!5260 = !DILocation(line: 200, column: 27, scope: !5218)
!5261 = !DILocation(line: 203, column: 27, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5258, file: !224, line: 201, column: 25)
!5263 = distinct !{!5263, !5261, !5264}
!5264 = !DILocation(line: 205, column: 58, scope: !5262)
!5265 = !DILocation(line: 204, column: 39, scope: !5262)
!5266 = !DILocation(line: 204, column: 33, scope: !5262)
!5267 = !DILocation(line: 204, column: 31, scope: !5262)
!5268 = !DILocation(line: 204, column: 29, scope: !5262)
!5269 = !DILocation(line: 205, column: 36, scope: !5262)
!5270 = !DILocation(line: 205, column: 38, scope: !5262)
!5271 = !DILocation(line: 205, column: 45, scope: !5262)
!5272 = !DILocation(line: 205, column: 48, scope: !5262)
!5273 = !DILocation(line: 205, column: 50, scope: !5262)
!5274 = !DILocation(line: 205, column: 34, scope: !5262)
!5275 = !DILocation(line: 206, column: 31, scope: !5276)
!5276 = distinct !DILexicalBlock(scope: !5262, file: !224, line: 206, column: 31)
!5277 = !DILocation(line: 206, column: 33, scope: !5276)
!5278 = !DILocation(line: 206, column: 31, scope: !5262)
!5279 = !DILocation(line: 207, column: 29, scope: !5276)
!5280 = !DILocation(line: 208, column: 27, scope: !5262)
!5281 = !DILocation(line: 210, column: 31, scope: !5218)
!5282 = !DILocation(line: 210, column: 34, scope: !5218)
!5283 = !DILocation(line: 210, column: 23, scope: !5218)
!5284 = !DILocation(line: 211, column: 35, scope: !5285)
!5285 = distinct !DILexicalBlock(scope: !5218, file: !224, line: 211, column: 27)
!5286 = !DILocation(line: 211, column: 52, scope: !5285)
!5287 = !DILocation(line: 211, column: 58, scope: !5285)
!5288 = !DILocation(line: 211, column: 27, scope: !5285)
!5289 = !DILocation(line: 211, column: 64, scope: !5285)
!5290 = !DILocation(line: 211, column: 27, scope: !5218)
!5291 = !DILocation(line: 212, column: 25, scope: !5285)
!5292 = !DILocation(line: 213, column: 36, scope: !5218)
!5293 = !DILocation(line: 213, column: 28, scope: !5218)
!5294 = !DILocation(line: 213, column: 26, scope: !5218)
!5295 = !DILocation(line: 214, column: 36, scope: !5218)
!5296 = !DILocation(line: 214, column: 28, scope: !5218)
!5297 = !DILocation(line: 214, column: 26, scope: !5218)
!5298 = !DILocation(line: 215, column: 37, scope: !5218)
!5299 = !DILocation(line: 215, column: 35, scope: !5218)
!5300 = !DILocation(line: 216, column: 27, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5218, file: !224, line: 216, column: 27)
!5302 = !DILocation(line: 216, column: 36, scope: !5301)
!5303 = !DILocation(line: 216, column: 27, scope: !5218)
!5304 = !DILocation(line: 218, column: 38, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5301, file: !224, line: 217, column: 25)
!5306 = !DILocation(line: 218, column: 41, scope: !5305)
!5307 = !DILocation(line: 218, column: 47, scope: !5305)
!5308 = !DILocation(line: 218, column: 45, scope: !5305)
!5309 = !DILocation(line: 218, column: 50, scope: !5305)
!5310 = !DILocation(line: 218, column: 36, scope: !5305)
!5311 = !DILocation(line: 219, column: 54, scope: !5305)
!5312 = !DILocation(line: 219, column: 63, scope: !5305)
!5313 = !DILocation(line: 219, column: 46, scope: !5305)
!5314 = !DILocation(line: 219, column: 35, scope: !5305)
!5315 = !DILocation(line: 220, column: 25, scope: !5305)
!5316 = !DILocation(line: 223, column: 39, scope: !5317)
!5317 = distinct !DILexicalBlock(scope: !5301, file: !224, line: 222, column: 25)
!5318 = !DILocation(line: 223, column: 42, scope: !5317)
!5319 = !DILocation(line: 223, column: 48, scope: !5317)
!5320 = !DILocation(line: 223, column: 46, scope: !5317)
!5321 = !DILocation(line: 223, column: 51, scope: !5317)
!5322 = !DILocation(line: 223, column: 36, scope: !5317)
!5323 = !DILocation(line: 224, column: 55, scope: !5317)
!5324 = !DILocation(line: 224, column: 64, scope: !5317)
!5325 = !DILocation(line: 224, column: 73, scope: !5317)
!5326 = !DILocation(line: 224, column: 46, scope: !5317)
!5327 = !DILocation(line: 224, column: 35, scope: !5317)
!5328 = !DILocation(line: 226, column: 27, scope: !5329)
!5329 = distinct !DILexicalBlock(scope: !5218, file: !224, line: 226, column: 27)
!5330 = !DILocation(line: 226, column: 35, scope: !5329)
!5331 = !DILocation(line: 226, column: 27, scope: !5218)
!5332 = !DILocation(line: 229, column: 36, scope: !5333)
!5333 = distinct !DILexicalBlock(scope: !5329, file: !224, line: 227, column: 25)
!5334 = !DILocation(line: 230, column: 33, scope: !5333)
!5335 = !DILocation(line: 230, column: 27, scope: !5333)
!5336 = !DILocation(line: 231, column: 27, scope: !5333)
!5337 = !DILocation(line: 233, column: 31, scope: !5218)
!5338 = !DILocation(line: 233, column: 41, scope: !5218)
!5339 = !DILocation(line: 233, column: 39, scope: !5218)
!5340 = !DILocation(line: 233, column: 53, scope: !5218)
!5341 = !DILocation(line: 233, column: 56, scope: !5218)
!5342 = !DILocation(line: 233, column: 50, scope: !5218)
!5343 = !DILocation(line: 233, column: 64, scope: !5218)
!5344 = !DILocation(line: 233, column: 67, scope: !5218)
!5345 = !DILocation(line: 233, column: 61, scope: !5218)
!5346 = !DILocation(line: 233, column: 73, scope: !5218)
!5347 = !DILocation(line: 233, column: 23, scope: !5218)
!5348 = !DILocation(line: 234, column: 31, scope: !5218)
!5349 = !DILocation(line: 234, column: 41, scope: !5218)
!5350 = !DILocation(line: 234, column: 39, scope: !5218)
!5351 = !DILocation(line: 234, column: 53, scope: !5218)
!5352 = !DILocation(line: 234, column: 56, scope: !5218)
!5353 = !DILocation(line: 234, column: 50, scope: !5218)
!5354 = !DILocation(line: 234, column: 62, scope: !5218)
!5355 = !DILocation(line: 234, column: 23, scope: !5218)
!5356 = !DILocation(line: 187, column: 19, scope: !5219)
!5357 = !DILocation(line: 236, column: 27, scope: !5212)
!5358 = !DILocation(line: 236, column: 19, scope: !5212)
!5359 = !DILocation(line: 237, column: 23, scope: !5360)
!5360 = distinct !DILexicalBlock(scope: !5212, file: !224, line: 237, column: 23)
!5361 = !DILocation(line: 237, column: 32, scope: !5360)
!5362 = !DILocation(line: 237, column: 23, scope: !5212)
!5363 = !DILocation(line: 238, column: 24, scope: !5360)
!5364 = !DILocation(line: 238, column: 21, scope: !5360)
!5365 = !DILocation(line: 241, column: 25, scope: !5366)
!5366 = distinct !DILexicalBlock(scope: !5360, file: !224, line: 240, column: 21)
!5367 = !DILocation(line: 241, column: 35, scope: !5366)
!5368 = !DILocation(line: 241, column: 33, scope: !5366)
!5369 = !DILocation(line: 241, column: 45, scope: !5366)
!5370 = !DILocation(line: 242, column: 28, scope: !5366)
!5371 = !DILocation(line: 242, column: 26, scope: !5366)
!5372 = !DILocation(line: 247, column: 17, scope: !5145)
!5373 = !DILocation(line: 247, column: 11, scope: !5145)
!5374 = !DILocation(line: 341, column: 25, scope: !5072)
!5375 = !DILocation(line: 341, column: 23, scope: !5072)
!5376 = !DILocation(line: 342, column: 5, scope: !5072)
!5377 = !DILocation(line: 344, column: 10, scope: !5062)
!5378 = !DILocation(line: 344, column: 3, scope: !5062)
!5379 = distinct !DISubprogram(name: "memcoll", scope: !677, file: !677, line: 66, type: !4253, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, unit: !676, variables: !113)
!5380 = !DILocalVariable(name: "s1", arg: 1, scope: !5379, file: !677, line: 66, type: !60)
!5381 = !DILocation(line: 66, column: 16, scope: !5379)
!5382 = !DILocalVariable(name: "s1len", arg: 2, scope: !5379, file: !677, line: 66, type: !172)
!5383 = !DILocation(line: 66, column: 27, scope: !5379)
!5384 = !DILocalVariable(name: "s2", arg: 3, scope: !5379, file: !677, line: 66, type: !60)
!5385 = !DILocation(line: 66, column: 40, scope: !5379)
!5386 = !DILocalVariable(name: "s2len", arg: 4, scope: !5379, file: !677, line: 66, type: !172)
!5387 = !DILocation(line: 66, column: 51, scope: !5379)
!5388 = !DILocalVariable(name: "diff", scope: !5379, file: !677, line: 68, type: !61)
!5389 = !DILocation(line: 68, column: 7, scope: !5379)
!5390 = !DILocation(line: 74, column: 7, scope: !5391)
!5391 = distinct !DILexicalBlock(scope: !5379, file: !677, line: 74, column: 7)
!5392 = !DILocation(line: 74, column: 16, scope: !5391)
!5393 = !DILocation(line: 74, column: 13, scope: !5391)
!5394 = !DILocation(line: 74, column: 22, scope: !5391)
!5395 = !DILocation(line: 74, column: 33, scope: !5391)
!5396 = !DILocation(line: 74, column: 37, scope: !5391)
!5397 = !DILocation(line: 74, column: 41, scope: !5391)
!5398 = !DILocation(line: 74, column: 25, scope: !5391)
!5399 = !DILocation(line: 74, column: 48, scope: !5391)
!5400 = !DILocation(line: 74, column: 7, scope: !5379)
!5401 = !DILocation(line: 76, column: 7, scope: !5402)
!5402 = distinct !DILexicalBlock(scope: !5391, file: !677, line: 75, column: 5)
!5403 = !DILocation(line: 76, column: 13, scope: !5402)
!5404 = !DILocation(line: 77, column: 12, scope: !5402)
!5405 = !DILocation(line: 78, column: 5, scope: !5402)
!5406 = !DILocalVariable(name: "n1", scope: !5407, file: !677, line: 81, type: !54)
!5407 = distinct !DILexicalBlock(scope: !5391, file: !677, line: 80, column: 5)
!5408 = !DILocation(line: 81, column: 12, scope: !5407)
!5409 = !DILocation(line: 81, column: 17, scope: !5407)
!5410 = !DILocation(line: 81, column: 20, scope: !5407)
!5411 = !DILocalVariable(name: "n2", scope: !5407, file: !677, line: 82, type: !54)
!5412 = !DILocation(line: 82, column: 12, scope: !5407)
!5413 = !DILocation(line: 82, column: 17, scope: !5407)
!5414 = !DILocation(line: 82, column: 20, scope: !5407)
!5415 = !DILocation(line: 84, column: 7, scope: !5407)
!5416 = !DILocation(line: 84, column: 10, scope: !5407)
!5417 = !DILocation(line: 84, column: 17, scope: !5407)
!5418 = !DILocation(line: 85, column: 7, scope: !5407)
!5419 = !DILocation(line: 85, column: 10, scope: !5407)
!5420 = !DILocation(line: 85, column: 17, scope: !5407)
!5421 = !DILocation(line: 87, column: 28, scope: !5407)
!5422 = !DILocation(line: 87, column: 32, scope: !5407)
!5423 = !DILocation(line: 87, column: 38, scope: !5407)
!5424 = !DILocation(line: 87, column: 43, scope: !5407)
!5425 = !DILocation(line: 87, column: 47, scope: !5407)
!5426 = !DILocation(line: 87, column: 53, scope: !5407)
!5427 = !DILocation(line: 87, column: 14, scope: !5407)
!5428 = !DILocation(line: 87, column: 12, scope: !5407)
!5429 = !DILocation(line: 89, column: 19, scope: !5407)
!5430 = !DILocation(line: 89, column: 7, scope: !5407)
!5431 = !DILocation(line: 89, column: 10, scope: !5407)
!5432 = !DILocation(line: 89, column: 17, scope: !5407)
!5433 = !DILocation(line: 90, column: 19, scope: !5407)
!5434 = !DILocation(line: 90, column: 7, scope: !5407)
!5435 = !DILocation(line: 90, column: 10, scope: !5407)
!5436 = !DILocation(line: 90, column: 17, scope: !5407)
!5437 = !DILocation(line: 93, column: 10, scope: !5379)
!5438 = !DILocation(line: 93, column: 3, scope: !5379)
!5439 = distinct !DISubprogram(name: "strcoll_loop", scope: !677, file: !677, line: 35, type: !4310, isLocal: true, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false, unit: !676, variables: !113)
!5440 = !DILocalVariable(name: "s1", arg: 1, scope: !5439, file: !677, line: 35, type: !52)
!5441 = !DILocation(line: 35, column: 27, scope: !5439)
!5442 = !DILocalVariable(name: "s1size", arg: 2, scope: !5439, file: !677, line: 35, type: !172)
!5443 = !DILocation(line: 35, column: 38, scope: !5439)
!5444 = !DILocalVariable(name: "s2", arg: 3, scope: !5439, file: !677, line: 35, type: !52)
!5445 = !DILocation(line: 35, column: 58, scope: !5439)
!5446 = !DILocalVariable(name: "s2size", arg: 4, scope: !5439, file: !677, line: 35, type: !172)
!5447 = !DILocation(line: 35, column: 69, scope: !5439)
!5448 = !DILocalVariable(name: "diff", scope: !5439, file: !677, line: 37, type: !61)
!5449 = !DILocation(line: 37, column: 7, scope: !5439)
!5450 = !DILocation(line: 39, column: 3, scope: !5439)
!5451 = !DILocation(line: 39, column: 13, scope: !5439)
!5452 = !DILocation(line: 39, column: 19, scope: !5439)
!5453 = !DILocation(line: 39, column: 41, scope: !5439)
!5454 = !DILocation(line: 39, column: 45, scope: !5439)
!5455 = !DILocation(line: 39, column: 32, scope: !5439)
!5456 = !DILocation(line: 39, column: 30, scope: !5439)
!5457 = !DILocation(line: 39, column: 50, scope: !5439)
!5458 = !DILocation(line: 39, column: 53, scope: !5439)
!5459 = !DILocation(line: 39, column: 10, scope: !5439)
!5460 = !DILocalVariable(name: "size1", scope: !5461, file: !677, line: 44, type: !172)
!5461 = distinct !DILexicalBlock(scope: !5439, file: !677, line: 40, column: 5)
!5462 = !DILocation(line: 44, column: 14, scope: !5461)
!5463 = !DILocation(line: 44, column: 30, scope: !5461)
!5464 = !DILocation(line: 44, column: 22, scope: !5461)
!5465 = !DILocation(line: 44, column: 34, scope: !5461)
!5466 = !DILocalVariable(name: "size2", scope: !5461, file: !677, line: 45, type: !172)
!5467 = !DILocation(line: 45, column: 14, scope: !5461)
!5468 = !DILocation(line: 45, column: 30, scope: !5461)
!5469 = !DILocation(line: 45, column: 22, scope: !5461)
!5470 = !DILocation(line: 45, column: 34, scope: !5461)
!5471 = !DILocation(line: 46, column: 13, scope: !5461)
!5472 = !DILocation(line: 46, column: 10, scope: !5461)
!5473 = !DILocation(line: 47, column: 13, scope: !5461)
!5474 = !DILocation(line: 47, column: 10, scope: !5461)
!5475 = !DILocation(line: 48, column: 17, scope: !5461)
!5476 = !DILocation(line: 48, column: 14, scope: !5461)
!5477 = !DILocation(line: 49, column: 17, scope: !5461)
!5478 = !DILocation(line: 49, column: 14, scope: !5461)
!5479 = !DILocation(line: 51, column: 11, scope: !5480)
!5480 = distinct !DILexicalBlock(scope: !5461, file: !677, line: 51, column: 11)
!5481 = !DILocation(line: 51, column: 18, scope: !5480)
!5482 = !DILocation(line: 51, column: 11, scope: !5461)
!5483 = !DILocation(line: 52, column: 19, scope: !5480)
!5484 = !DILocation(line: 52, column: 26, scope: !5480)
!5485 = !DILocation(line: 52, column: 16, scope: !5480)
!5486 = !DILocation(line: 52, column: 9, scope: !5480)
!5487 = !DILocation(line: 53, column: 11, scope: !5488)
!5488 = distinct !DILexicalBlock(scope: !5461, file: !677, line: 53, column: 11)
!5489 = !DILocation(line: 53, column: 18, scope: !5488)
!5490 = !DILocation(line: 53, column: 11, scope: !5461)
!5491 = !DILocation(line: 54, column: 9, scope: !5488)
!5492 = distinct !{!5492, !5450, !5493}
!5493 = !DILocation(line: 55, column: 5, scope: !5439)
!5494 = !DILocation(line: 57, column: 10, scope: !5439)
!5495 = !DILocation(line: 57, column: 3, scope: !5439)
!5496 = !DILocation(line: 58, column: 1, scope: !5439)
!5497 = distinct !DISubprogram(name: "memcoll0", scope: !677, file: !677, line: 102, type: !4310, isLocal: false, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: false, unit: !676, variables: !113)
!5498 = !DILocalVariable(name: "s1", arg: 1, scope: !5497, file: !677, line: 102, type: !52)
!5499 = !DILocation(line: 102, column: 23, scope: !5497)
!5500 = !DILocalVariable(name: "s1size", arg: 2, scope: !5497, file: !677, line: 102, type: !172)
!5501 = !DILocation(line: 102, column: 34, scope: !5497)
!5502 = !DILocalVariable(name: "s2", arg: 3, scope: !5497, file: !677, line: 102, type: !52)
!5503 = !DILocation(line: 102, column: 54, scope: !5497)
!5504 = !DILocalVariable(name: "s2size", arg: 4, scope: !5497, file: !677, line: 102, type: !172)
!5505 = !DILocation(line: 102, column: 65, scope: !5497)
!5506 = !DILocation(line: 104, column: 7, scope: !5507)
!5507 = distinct !DILexicalBlock(scope: !5497, file: !677, line: 104, column: 7)
!5508 = !DILocation(line: 104, column: 17, scope: !5507)
!5509 = !DILocation(line: 104, column: 14, scope: !5507)
!5510 = !DILocation(line: 104, column: 24, scope: !5507)
!5511 = !DILocation(line: 104, column: 35, scope: !5507)
!5512 = !DILocation(line: 104, column: 39, scope: !5507)
!5513 = !DILocation(line: 104, column: 43, scope: !5507)
!5514 = !DILocation(line: 104, column: 27, scope: !5507)
!5515 = !DILocation(line: 104, column: 51, scope: !5507)
!5516 = !DILocation(line: 104, column: 7, scope: !5497)
!5517 = !DILocation(line: 106, column: 7, scope: !5518)
!5518 = distinct !DILexicalBlock(scope: !5507, file: !677, line: 105, column: 5)
!5519 = !DILocation(line: 106, column: 13, scope: !5518)
!5520 = !DILocation(line: 107, column: 7, scope: !5518)
!5521 = !DILocation(line: 110, column: 26, scope: !5507)
!5522 = !DILocation(line: 110, column: 30, scope: !5507)
!5523 = !DILocation(line: 110, column: 38, scope: !5507)
!5524 = !DILocation(line: 110, column: 42, scope: !5507)
!5525 = !DILocation(line: 110, column: 12, scope: !5507)
!5526 = !DILocation(line: 110, column: 5, scope: !5507)
!5527 = !DILocation(line: 111, column: 1, scope: !5497)
!5528 = distinct !DISubprogram(name: "c_isascii", scope: !679, file: !679, line: 27, type: !1943, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5529 = !DILocalVariable(name: "c", arg: 1, scope: !5528, file: !679, line: 27, type: !61)
!5530 = !DILocation(line: 27, column: 16, scope: !5528)
!5531 = !DILocation(line: 29, column: 11, scope: !5528)
!5532 = !DILocation(line: 29, column: 13, scope: !5528)
!5533 = !DILocation(line: 29, column: 21, scope: !5528)
!5534 = !DILocation(line: 29, column: 24, scope: !5528)
!5535 = !DILocation(line: 29, column: 26, scope: !5528)
!5536 = !DILocation(line: 29, column: 3, scope: !5528)
!5537 = distinct !DISubprogram(name: "c_isalnum", scope: !679, file: !679, line: 33, type: !1943, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5538 = !DILocalVariable(name: "c", arg: 1, scope: !5537, file: !679, line: 33, type: !61)
!5539 = !DILocation(line: 33, column: 16, scope: !5537)
!5540 = !DILocation(line: 38, column: 12, scope: !5537)
!5541 = !DILocation(line: 38, column: 14, scope: !5537)
!5542 = !DILocation(line: 38, column: 21, scope: !5537)
!5543 = !DILocation(line: 38, column: 24, scope: !5537)
!5544 = !DILocation(line: 38, column: 26, scope: !5537)
!5545 = !DILocation(line: 39, column: 11, scope: !5537)
!5546 = !DILocation(line: 39, column: 16, scope: !5537)
!5547 = !DILocation(line: 39, column: 18, scope: !5537)
!5548 = !DILocation(line: 39, column: 27, scope: !5537)
!5549 = !DILocation(line: 39, column: 34, scope: !5537)
!5550 = !DILocation(line: 39, column: 38, scope: !5537)
!5551 = !DILocation(line: 39, column: 40, scope: !5537)
!5552 = !DILocation(line: 39, column: 49, scope: !5537)
!5553 = !DILocation(line: 38, column: 3, scope: !5537)
!5554 = distinct !DISubprogram(name: "c_isalpha", scope: !679, file: !679, line: 68, type: !1943, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5555 = !DILocalVariable(name: "c", arg: 1, scope: !5554, file: !679, line: 68, type: !61)
!5556 = !DILocation(line: 68, column: 16, scope: !5554)
!5557 = !DILocation(line: 72, column: 12, scope: !5554)
!5558 = !DILocation(line: 72, column: 14, scope: !5554)
!5559 = !DILocation(line: 72, column: 23, scope: !5554)
!5560 = !DILocation(line: 72, column: 30, scope: !5554)
!5561 = !DILocation(line: 72, column: 34, scope: !5554)
!5562 = !DILocation(line: 72, column: 36, scope: !5554)
!5563 = !DILocation(line: 72, column: 45, scope: !5554)
!5564 = !DILocation(line: 72, column: 3, scope: !5554)
!5565 = distinct !DISubprogram(name: "c_isblank", scope: !679, file: !679, line: 97, type: !1943, isLocal: false, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5566 = !DILocalVariable(name: "c", arg: 1, scope: !5565, file: !679, line: 97, type: !61)
!5567 = !DILocation(line: 97, column: 16, scope: !5565)
!5568 = !DILocation(line: 99, column: 11, scope: !5565)
!5569 = !DILocation(line: 99, column: 13, scope: !5565)
!5570 = !DILocation(line: 99, column: 20, scope: !5565)
!5571 = !DILocation(line: 99, column: 23, scope: !5565)
!5572 = !DILocation(line: 99, column: 25, scope: !5565)
!5573 = !DILocation(line: 99, column: 3, scope: !5565)
!5574 = distinct !DISubprogram(name: "c_iscntrl", scope: !679, file: !679, line: 103, type: !1943, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5575 = !DILocalVariable(name: "c", arg: 1, scope: !5574, file: !679, line: 103, type: !61)
!5576 = !DILocation(line: 103, column: 16, scope: !5574)
!5577 = !DILocation(line: 106, column: 12, scope: !5574)
!5578 = !DILocation(line: 106, column: 14, scope: !5574)
!5579 = !DILocation(line: 106, column: 23, scope: !5574)
!5580 = !DILocation(line: 106, column: 28, scope: !5574)
!5581 = !DILocation(line: 106, column: 31, scope: !5574)
!5582 = !DILocation(line: 106, column: 33, scope: !5574)
!5583 = !DILocation(line: 106, column: 3, scope: !5574)
!5584 = distinct !DISubprogram(name: "c_isdigit", scope: !679, file: !679, line: 137, type: !1943, isLocal: false, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5585 = !DILocalVariable(name: "c", arg: 1, scope: !5584, file: !679, line: 137, type: !61)
!5586 = !DILocation(line: 137, column: 16, scope: !5584)
!5587 = !DILocation(line: 140, column: 11, scope: !5584)
!5588 = !DILocation(line: 140, column: 13, scope: !5584)
!5589 = !DILocation(line: 140, column: 20, scope: !5584)
!5590 = !DILocation(line: 140, column: 23, scope: !5584)
!5591 = !DILocation(line: 140, column: 25, scope: !5584)
!5592 = !DILocation(line: 140, column: 3, scope: !5584)
!5593 = distinct !DISubprogram(name: "c_islower", scope: !679, file: !679, line: 154, type: !1943, isLocal: false, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5594 = !DILocalVariable(name: "c", arg: 1, scope: !5593, file: !679, line: 154, type: !61)
!5595 = !DILocation(line: 154, column: 16, scope: !5593)
!5596 = !DILocation(line: 157, column: 11, scope: !5593)
!5597 = !DILocation(line: 157, column: 13, scope: !5593)
!5598 = !DILocation(line: 157, column: 20, scope: !5593)
!5599 = !DILocation(line: 157, column: 23, scope: !5593)
!5600 = !DILocation(line: 157, column: 25, scope: !5593)
!5601 = !DILocation(line: 157, column: 3, scope: !5593)
!5602 = distinct !DISubprogram(name: "c_isgraph", scope: !679, file: !679, line: 174, type: !1943, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5603 = !DILocalVariable(name: "c", arg: 1, scope: !5602, file: !679, line: 174, type: !61)
!5604 = !DILocation(line: 174, column: 16, scope: !5602)
!5605 = !DILocation(line: 177, column: 11, scope: !5602)
!5606 = !DILocation(line: 177, column: 13, scope: !5602)
!5607 = !DILocation(line: 177, column: 20, scope: !5602)
!5608 = !DILocation(line: 177, column: 23, scope: !5602)
!5609 = !DILocation(line: 177, column: 25, scope: !5602)
!5610 = !DILocation(line: 177, column: 3, scope: !5602)
!5611 = distinct !DISubprogram(name: "c_isprint", scope: !679, file: !679, line: 208, type: !1943, isLocal: false, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5612 = !DILocalVariable(name: "c", arg: 1, scope: !5611, file: !679, line: 208, type: !61)
!5613 = !DILocation(line: 208, column: 16, scope: !5611)
!5614 = !DILocation(line: 211, column: 11, scope: !5611)
!5615 = !DILocation(line: 211, column: 13, scope: !5611)
!5616 = !DILocation(line: 211, column: 20, scope: !5611)
!5617 = !DILocation(line: 211, column: 23, scope: !5611)
!5618 = !DILocation(line: 211, column: 25, scope: !5611)
!5619 = !DILocation(line: 211, column: 3, scope: !5611)
!5620 = distinct !DISubprogram(name: "c_ispunct", scope: !679, file: !679, line: 242, type: !1943, isLocal: false, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5621 = !DILocalVariable(name: "c", arg: 1, scope: !5620, file: !679, line: 242, type: !61)
!5622 = !DILocation(line: 242, column: 16, scope: !5620)
!5623 = !DILocation(line: 245, column: 12, scope: !5620)
!5624 = !DILocation(line: 245, column: 14, scope: !5620)
!5625 = !DILocation(line: 245, column: 21, scope: !5620)
!5626 = !DILocation(line: 245, column: 24, scope: !5620)
!5627 = !DILocation(line: 245, column: 26, scope: !5620)
!5628 = !DILocation(line: 246, column: 11, scope: !5620)
!5629 = !DILocation(line: 246, column: 17, scope: !5620)
!5630 = !DILocation(line: 246, column: 19, scope: !5620)
!5631 = !DILocation(line: 246, column: 26, scope: !5620)
!5632 = !DILocation(line: 246, column: 29, scope: !5620)
!5633 = !DILocation(line: 246, column: 31, scope: !5620)
!5634 = !DILocation(line: 247, column: 16, scope: !5620)
!5635 = !DILocation(line: 247, column: 21, scope: !5620)
!5636 = !DILocation(line: 247, column: 23, scope: !5620)
!5637 = !DILocation(line: 247, column: 32, scope: !5620)
!5638 = !DILocation(line: 247, column: 39, scope: !5620)
!5639 = !DILocation(line: 247, column: 43, scope: !5620)
!5640 = !DILocation(line: 247, column: 45, scope: !5620)
!5641 = !DILocation(line: 247, column: 54, scope: !5620)
!5642 = !DILocation(line: 246, column: 14, scope: !5620)
!5643 = !DILocation(line: 245, column: 3, scope: !5620)
!5644 = distinct !DISubprogram(name: "c_isspace", scope: !679, file: !679, line: 266, type: !1943, isLocal: false, isDefinition: true, scopeLine: 267, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5645 = !DILocalVariable(name: "c", arg: 1, scope: !5644, file: !679, line: 266, type: !61)
!5646 = !DILocation(line: 266, column: 16, scope: !5644)
!5647 = !DILocation(line: 268, column: 11, scope: !5644)
!5648 = !DILocation(line: 268, column: 13, scope: !5644)
!5649 = !DILocation(line: 268, column: 20, scope: !5644)
!5650 = !DILocation(line: 268, column: 23, scope: !5644)
!5651 = !DILocation(line: 268, column: 25, scope: !5644)
!5652 = !DILocation(line: 269, column: 11, scope: !5644)
!5653 = !DILocation(line: 269, column: 14, scope: !5644)
!5654 = !DILocation(line: 269, column: 16, scope: !5644)
!5655 = !DILocation(line: 269, column: 24, scope: !5644)
!5656 = !DILocation(line: 269, column: 27, scope: !5644)
!5657 = !DILocation(line: 269, column: 29, scope: !5644)
!5658 = !DILocation(line: 269, column: 37, scope: !5644)
!5659 = !DILocation(line: 269, column: 40, scope: !5644)
!5660 = !DILocation(line: 269, column: 42, scope: !5644)
!5661 = !DILocation(line: 269, column: 50, scope: !5644)
!5662 = !DILocation(line: 269, column: 53, scope: !5644)
!5663 = !DILocation(line: 269, column: 55, scope: !5644)
!5664 = !DILocation(line: 268, column: 3, scope: !5644)
!5665 = distinct !DISubprogram(name: "c_isupper", scope: !679, file: !679, line: 273, type: !1943, isLocal: false, isDefinition: true, scopeLine: 274, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5666 = !DILocalVariable(name: "c", arg: 1, scope: !5665, file: !679, line: 273, type: !61)
!5667 = !DILocation(line: 273, column: 16, scope: !5665)
!5668 = !DILocation(line: 276, column: 11, scope: !5665)
!5669 = !DILocation(line: 276, column: 13, scope: !5665)
!5670 = !DILocation(line: 276, column: 20, scope: !5665)
!5671 = !DILocation(line: 276, column: 23, scope: !5665)
!5672 = !DILocation(line: 276, column: 25, scope: !5665)
!5673 = !DILocation(line: 276, column: 3, scope: !5665)
!5674 = distinct !DISubprogram(name: "c_isxdigit", scope: !679, file: !679, line: 293, type: !1943, isLocal: false, isDefinition: true, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5675 = !DILocalVariable(name: "c", arg: 1, scope: !5674, file: !679, line: 293, type: !61)
!5676 = !DILocation(line: 293, column: 17, scope: !5674)
!5677 = !DILocation(line: 298, column: 12, scope: !5674)
!5678 = !DILocation(line: 298, column: 14, scope: !5674)
!5679 = !DILocation(line: 298, column: 21, scope: !5674)
!5680 = !DILocation(line: 298, column: 24, scope: !5674)
!5681 = !DILocation(line: 298, column: 26, scope: !5674)
!5682 = !DILocation(line: 299, column: 11, scope: !5674)
!5683 = !DILocation(line: 299, column: 16, scope: !5674)
!5684 = !DILocation(line: 299, column: 18, scope: !5674)
!5685 = !DILocation(line: 299, column: 27, scope: !5674)
!5686 = !DILocation(line: 299, column: 34, scope: !5674)
!5687 = !DILocation(line: 299, column: 38, scope: !5674)
!5688 = !DILocation(line: 299, column: 40, scope: !5674)
!5689 = !DILocation(line: 299, column: 49, scope: !5674)
!5690 = !DILocation(line: 298, column: 3, scope: !5674)
!5691 = distinct !DISubprogram(name: "c_tolower", scope: !679, file: !679, line: 320, type: !5692, isLocal: false, isDefinition: true, scopeLine: 321, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5692 = !DISubroutineType(types: !5693)
!5693 = !{!61, !61}
!5694 = !DILocalVariable(name: "c", arg: 1, scope: !5691, file: !679, line: 320, type: !61)
!5695 = !DILocation(line: 320, column: 16, scope: !5691)
!5696 = !DILocation(line: 323, column: 11, scope: !5691)
!5697 = !DILocation(line: 323, column: 13, scope: !5691)
!5698 = !DILocation(line: 323, column: 20, scope: !5691)
!5699 = !DILocation(line: 323, column: 23, scope: !5691)
!5700 = !DILocation(line: 323, column: 25, scope: !5691)
!5701 = !DILocation(line: 323, column: 34, scope: !5691)
!5702 = !DILocation(line: 323, column: 36, scope: !5691)
!5703 = !DILocation(line: 323, column: 42, scope: !5691)
!5704 = !DILocation(line: 323, column: 50, scope: !5691)
!5705 = !DILocation(line: 323, column: 3, scope: !5691)
!5706 = distinct !DISubprogram(name: "c_toupper", scope: !679, file: !679, line: 359, type: !5692, isLocal: false, isDefinition: true, scopeLine: 360, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5707 = !DILocalVariable(name: "c", arg: 1, scope: !5706, file: !679, line: 359, type: !61)
!5708 = !DILocation(line: 359, column: 16, scope: !5706)
!5709 = !DILocation(line: 362, column: 11, scope: !5706)
!5710 = !DILocation(line: 362, column: 13, scope: !5706)
!5711 = !DILocation(line: 362, column: 20, scope: !5706)
!5712 = !DILocation(line: 362, column: 23, scope: !5706)
!5713 = !DILocation(line: 362, column: 25, scope: !5706)
!5714 = !DILocation(line: 362, column: 34, scope: !5706)
!5715 = !DILocation(line: 362, column: 36, scope: !5706)
!5716 = !DILocation(line: 362, column: 42, scope: !5706)
!5717 = !DILocation(line: 362, column: 50, scope: !5706)
!5718 = !DILocation(line: 362, column: 3, scope: !5706)
