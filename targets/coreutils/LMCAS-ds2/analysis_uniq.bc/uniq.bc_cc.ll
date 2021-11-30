; ModuleID = 'uniq.bc_cc.bc'
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

; <label>:25:                                     ; preds = %2, %142
  %26 = icmp eq i32 -1, -1, !dbg !785
  br i1 %26, label %36, label %27, !dbg !788

; <label>:27:                                     ; preds = %25
  %28 = trunc i8 0 to i1, !dbg !789
  br i1 %28, label %29, label %31, !dbg !790

; <label>:29:                                     ; preds = %27
  %30 = icmp ne i32 0, 0, !dbg !791
  br i1 %30, label %36, label %31, !dbg !792

; <label>:31:                                     ; preds = %29, %27
  %32 = load i32, i32* %4, align 4, !dbg !793
  %33 = load i8**, i8*** %5, align 8, !dbg !794
  %34 = call i32 @getopt_long(i32 %32, i8** %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0), %struct.option* getelementptr inbounds ([12 x %struct.option], [12 x %struct.option]* @longopts, i32 0, i32 0), i32* null) #11, !dbg !795
  store i32 %34, i32* %6, align 4, !dbg !796
  %35 = icmp eq i32 %34, -1, !dbg !797
  br i1 %35, label %36, label %60, !dbg !798

; <label>:36:                                     ; preds = %31, %29, %25
  %37 = load i32, i32* %4, align 4, !dbg !799
  %38 = load i32, i32* @optind, align 4, !dbg !802
  %39 = icmp sle i32 %37, %38, !dbg !803
  br i1 %39, label %40, label %41, !dbg !804

; <label>:40:                                     ; preds = %36
  br label %143, !dbg !805

; <label>:41:                                     ; preds = %36
  %42 = icmp eq i32 0, 2, !dbg !806
  br i1 %42, label %43, label %50, !dbg !808

; <label>:43:                                     ; preds = %41
  %44 = load i8**, i8*** %5, align 8, !dbg !809
  %45 = load i32, i32* @optind, align 4, !dbg !811
  %46 = sext i32 %45 to i64, !dbg !809
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46, !dbg !809
  %48 = load i8*, i8** %47, align 8, !dbg !809
  %49 = call i8* @quote(i8* %48), !dbg !812
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i8* %49), !dbg !813
  call void @usage(i32 1) #15, !dbg !814
  unreachable, !dbg !814

; <label>:50:                                     ; preds = %41
  %51 = load i8**, i8*** %5, align 8, !dbg !815
  %52 = load i32, i32* @optind, align 4, !dbg !816
  %53 = add nsw i32 %52, 1, !dbg !816
  store i32 %53, i32* @optind, align 4, !dbg !816
  %54 = sext i32 %52 to i64, !dbg !815
  %55 = getelementptr inbounds i8*, i8** %51, i64 %54, !dbg !815
  %56 = load i8*, i8** %55, align 8, !dbg !815
  %57 = add nsw i32 0, 1, !dbg !817
  store i32 %57, i32* %9, align 4, !dbg !817
  %58 = sext i32 0 to i64, !dbg !818
  %59 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 %58, !dbg !818
  store i8* %56, i8** %59, align 8, !dbg !819
  br label %142, !dbg !820

; <label>:60:                                     ; preds = %31
  switch i32 -1, label %140 [
    i32 1, label %61
    i32 48, label %89
    i32 49, label %89
    i32 50, label %89
    i32 51, label %89
    i32 52, label %89
    i32 53, label %89
    i32 54, label %89
    i32 55, label %89
    i32 56, label %89
    i32 57, label %89
    i32 99, label %111
    i32 100, label %112
    i32 68, label %113
    i32 102, label %124
    i32 105, label %127
    i32 115, label %128
    i32 117, label %131
    i32 119, label %132
    i32 122, label %135
    i32 -130, label %136
    i32 -131, label %137
  ], !dbg !821

; <label>:61:                                     ; preds = %60
  call void @llvm.dbg.declare(metadata i64* %12, metadata !822, metadata !DIExpression()), !dbg !825
  %62 = load i8*, i8** @optarg, align 8, !dbg !826
  %63 = getelementptr inbounds i8, i8* %62, i64 0, !dbg !826
  %64 = load i8, i8* %63, align 1, !dbg !826
  %65 = sext i8 %64 to i32, !dbg !826
  %66 = icmp eq i32 %65, 43, !dbg !828
  br i1 %66, label %67, label %77, !dbg !829

; <label>:67:                                     ; preds = %61
  %68 = call i32 @posix2_version(), !dbg !830
  %69 = icmp slt i32 %68, 200112, !dbg !831
  br i1 %69, label %70, label %77, !dbg !832

; <label>:70:                                     ; preds = %67
  %71 = load i8*, i8** @optarg, align 8, !dbg !833
  %72 = call i32 @xstrtoul(i8* %71, i8** null, i32 10, i64* %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0)), !dbg !834
  %73 = icmp eq i32 %72, 0, !dbg !835
  br i1 %73, label %74, label %77, !dbg !836

; <label>:74:                                     ; preds = %70
  %75 = icmp ule i64 -6076574518398440533, -1, !dbg !837
  br i1 %75, label %76, label %77, !dbg !838

; <label>:76:                                     ; preds = %74
  store i64 -6076574518398440533, i64* @skip_chars, align 8, !dbg !839
  br label %88, !dbg !840

; <label>:77:                                     ; preds = %74, %70, %67, %61
  %78 = icmp eq i32 0, 2, !dbg !841
  br i1 %78, label %79, label %82, !dbg !843

; <label>:79:                                     ; preds = %77
  %80 = load i8*, i8** @optarg, align 8, !dbg !844
  %81 = call i8* @quote(i8* %80), !dbg !846
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i8* %81), !dbg !847
  call void @usage(i32 1) #15, !dbg !848
  unreachable, !dbg !848

; <label>:82:                                     ; preds = %77
  %83 = load i8*, i8** @optarg, align 8, !dbg !849
  %84 = add nsw i32 0, 1, !dbg !850
  store i32 %84, i32* %9, align 4, !dbg !850
  %85 = sext i32 0 to i64, !dbg !851
  %86 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 %85, !dbg !851
  store i8* %83, i8** %86, align 8, !dbg !852
  br label %87

; <label>:87:                                     ; preds = %82
  br label %88

; <label>:88:                                     ; preds = %87, %76
  br label %141, !dbg !853

; <label>:89:                                     ; preds = %60, %60, %60, %60, %60, %60, %60, %60, %60, %60
  %90 = icmp eq i32 0, 2, !dbg !854
  br i1 %90, label %91, label %92, !dbg !857

; <label>:91:                                     ; preds = %89
  store i64 0, i64* @skip_fields, align 8, !dbg !858
  br label %92, !dbg !859

; <label>:92:                                     ; preds = %91, %89
  %93 = icmp ult i64 1844674407370955161, 0, !dbg !860
  br i1 %93, label %100, label %94, !dbg !860

; <label>:94:                                     ; preds = %92
  %95 = mul i64 0, 10, !dbg !860
  %96 = sub nsw i32 -1, 48, !dbg !860
  %97 = sext i32 %96 to i64, !dbg !860
  %98 = add i64 %95, %97, !dbg !860
  %99 = icmp ult i64 %98, 0, !dbg !860
  br i1 %99, label %100, label %101, !dbg !860

; <label>:100:                                    ; preds = %94, %92
  br label %106, !dbg !860

; <label>:101:                                    ; preds = %94
  %102 = mul i64 0, 10, !dbg !860
  %103 = sub nsw i32 -1, 48, !dbg !860
  %104 = sext i32 %103 to i64, !dbg !860
  %105 = add i64 %102, %104, !dbg !860
  store i64 %105, i64* @skip_fields, align 8, !dbg !860
  br label %106, !dbg !860

; <label>:106:                                    ; preds = %101, %100
  %107 = phi i32 [ 0, %100 ], [ 1, %101 ], !dbg !860
  %108 = icmp ne i32 %107, 0, !dbg !860
  br i1 %108, label %110, label %109, !dbg !862

; <label>:109:                                    ; preds = %106
  store i64 -1, i64* @skip_fields, align 8, !dbg !863
  br label %110, !dbg !864

; <label>:110:                                    ; preds = %109, %106
  store i32 0, i32* %8, !dbg !865
  br label %141, !dbg !866

; <label>:111:                                    ; preds = %60
  store i32 0, i32* @countmode, align 4, !dbg !867
  br label %141, !dbg !868

; <label>:112:                                    ; preds = %60
  store i8 0, i8* @output_unique, align 1, !dbg !869
  br label %141, !dbg !870

; <label>:113:                                    ; preds = %60
  store i8 0, i8* @output_unique, align 1, !dbg !871
  store i8 1, i8* @output_later_repeated, align 1, !dbg !872
  %114 = load i8*, i8** @optarg, align 8, !dbg !873
  %115 = icmp eq i8* %114, null, !dbg !875
  br i1 %115, label %116, label %117, !dbg !876

; <label>:116:                                    ; preds = %113
  store i32 0, i32* @delimit_groups, align 4, !dbg !877
  br label %123, !dbg !878

; <label>:117:                                    ; preds = %113
  %118 = load i8*, i8** @optarg, align 8, !dbg !879
  %119 = load void ()*, void ()** @argmatch_die, align 8, !dbg !879
  %120 = call i64 @__xargmatch_internal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* %118, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @delimit_method_string, i32 0, i32 0), i8* bitcast ([3 x i32]* @delimit_method_map to i8*), i64 4, void ()* %119), !dbg !879
  %121 = getelementptr inbounds [3 x i32], [3 x i32]* @delimit_method_map, i64 0, i64 %120, !dbg !879
  %122 = load i32, i32* %121, align 4, !dbg !879
  store i32 %122, i32* @delimit_groups, align 4, !dbg !880
  br label %123

; <label>:123:                                    ; preds = %117, %116
  br label %141, !dbg !881

; <label>:124:                                    ; preds = %60
  store i32 0, i32* %8, !dbg !882
  %125 = load i8*, i8** @optarg, align 8, !dbg !883
  %126 = call i64 @size_opt(i8* %125, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i32 0, i32 0)), !dbg !884
  store i64 %126, i64* @skip_fields, align 8, !dbg !885
  br label %141, !dbg !886

; <label>:127:                                    ; preds = %60
  store i8 1, i8* @ignore_case, align 1, !dbg !887
  br label %141, !dbg !888

; <label>:128:                                    ; preds = %60
  %129 = load i8*, i8** @optarg, align 8, !dbg !889
  %130 = call i64 @size_opt(i8* %129, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0)), !dbg !890
  store i64 %130, i64* @skip_chars, align 8, !dbg !891
  br label %141, !dbg !892

; <label>:131:                                    ; preds = %60
  store i8 0, i8* @output_first_repeated, align 1, !dbg !893
  br label %141, !dbg !894

; <label>:132:                                    ; preds = %60
  %133 = load i8*, i8** @optarg, align 8, !dbg !895
  %134 = call i64 @size_opt(i8* %133, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i32 0, i32 0)), !dbg !896
  store i64 %134, i64* @check_chars, align 8, !dbg !897
  br label %141, !dbg !898

; <label>:135:                                    ; preds = %60
  store i8 10, i8* %11, !dbg !899
  br label %141, !dbg !900

; <label>:136:                                    ; preds = %60
  call void @usage(i32 0) #15, !dbg !901
  unreachable, !dbg !901

; <label>:137:                                    ; preds = %60
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !902
  %139 = load i8*, i8** @Version, align 8, !dbg !902
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %138, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i8* %139, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0), i8* null), !dbg !902
  call void @exit(i32 0) #13, !dbg !902
  unreachable, !dbg !902

; <label>:140:                                    ; preds = %60
  call void @usage(i32 1) #15, !dbg !903
  unreachable, !dbg !903

; <label>:141:                                    ; preds = %135, %132, %131, %128, %127, %124, %123, %112, %111, %110, %88
  br label %142

; <label>:142:                                    ; preds = %141, %50
  br label %25, !dbg !784, !llvm.loop !904

; <label>:143:                                    ; preds = %40
  call void @klee_dump_memory(), !dbg !906
  %144 = icmp eq i32 1, 0, !dbg !907
  br i1 %144, label %145, label %148, !dbg !909

; <label>:145:                                    ; preds = %143
  %146 = trunc i8 0 to i1, !dbg !910
  br i1 %146, label %147, label %148, !dbg !911

; <label>:147:                                    ; preds = %145
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.23, i32 0, i32 0)), !dbg !912
  call void @usage(i32 1) #15, !dbg !914
  unreachable, !dbg !914

; <label>:148:                                    ; preds = %145, %143
  %149 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0, !dbg !915
  %150 = load i8*, i8** %149, align 16, !dbg !915
  %151 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 1, !dbg !916
  %152 = load i8*, i8** %151, align 8, !dbg !916
  %153 = load i8, i8* %11, align 1, !dbg !917
  call void @check_file(i8* %150, i8* %152, i8 signext %153), !dbg !918
  call void @exit(i32 0) #13, !dbg !919
  unreachable, !dbg !919
                                                  ; No predecessors!
  %155 = load i32, i32* %3, align 4, !dbg !920
  ret i32 %155, !dbg !920
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #5

; Function Attrs: nounwind
declare i32 @atexit(void ()*) #5

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #5

declare void @error(i32, i32, i8*, ...) #3

; Function Attrs: noinline nounwind uwtable
define internal i64 @size_opt(i8*, i8*) #2 !dbg !921 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !924, metadata !DIExpression()), !dbg !925
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !926, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.declare(metadata i64* %5, metadata !928, metadata !DIExpression()), !dbg !929
  %6 = load i8*, i8** %3, align 8, !dbg !930
  %7 = call i32 @xstrtoul(i8* %6, i8** null, i32 10, i64* %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0)), !dbg !931
  switch i32 %7, label %9 [
    i32 0, label %8
    i32 1, label %8
  ], !dbg !932

; <label>:8:                                      ; preds = %2, %2
  br label %12, !dbg !933

; <label>:9:                                      ; preds = %2
  %10 = load i8*, i8** %3, align 8, !dbg !935
  %11 = load i8*, i8** %4, align 8, !dbg !936
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i8* %10, i8* %11), !dbg !937
  br label %12, !dbg !938

; <label>:12:                                     ; preds = %9, %8
  %13 = load i64, i64* %5, align 8, !dbg !939
  %14 = icmp ult i64 %13, -1, !dbg !939
  br i1 %14, label %15, label %17, !dbg !939

; <label>:15:                                     ; preds = %12
  %16 = load i64, i64* %5, align 8, !dbg !939
  br label %18, !dbg !939

; <label>:17:                                     ; preds = %12
  br label %18, !dbg !939

; <label>:18:                                     ; preds = %17, %15
  %19 = phi i64 [ %16, %15 ], [ -1, %17 ], !dbg !939
  ret i64 %19, !dbg !940
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_file(i8*, i8*, i8 signext) #2 !dbg !941 {
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
  call void @llvm.dbg.declare(metadata i8** %4, metadata !944, metadata !DIExpression()), !dbg !945
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !946, metadata !DIExpression()), !dbg !947
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !948, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.declare(metadata %struct.linebuffer* %7, metadata !950, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.declare(metadata %struct.linebuffer* %8, metadata !958, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %9, metadata !960, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %10, metadata !963, metadata !DIExpression()), !dbg !964
  %24 = load i8*, i8** %4, align 8, !dbg !965
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #14, !dbg !965
  %26 = icmp eq i32 %25, 0, !dbg !965
  br i1 %26, label %36, label %27, !dbg !967

; <label>:27:                                     ; preds = %3
  %28 = load i8*, i8** %4, align 8, !dbg !968
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !969
  %30 = call %struct._IO_FILE* @freopen_safer(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0), %struct._IO_FILE* %29), !dbg !970
  %31 = icmp ne %struct._IO_FILE* %30, null, !dbg !970
  br i1 %31, label %36, label %32, !dbg !971

; <label>:32:                                     ; preds = %27
  %33 = call i32* @__errno_location() #16, !dbg !972
  %34 = load i32, i32* %33, align 4, !dbg !972
  %35 = load i8*, i8** %4, align 8, !dbg !973
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0), i8* %35), !dbg !974
  br label %36, !dbg !974

; <label>:36:                                     ; preds = %32, %27, %3
  %37 = load i8*, i8** %5, align 8, !dbg !975
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #14, !dbg !975
  %39 = icmp eq i32 %38, 0, !dbg !975
  br i1 %39, label %49, label %40, !dbg !977

; <label>:40:                                     ; preds = %36
  %41 = load i8*, i8** %5, align 8, !dbg !978
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !979
  %43 = call %struct._IO_FILE* @freopen_safer(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0), %struct._IO_FILE* %42), !dbg !980
  %44 = icmp ne %struct._IO_FILE* %43, null, !dbg !980
  br i1 %44, label %49, label %45, !dbg !981

; <label>:45:                                     ; preds = %40
  %46 = call i32* @__errno_location() #16, !dbg !982
  %47 = load i32, i32* %46, align 4, !dbg !982
  %48 = load i8*, i8** %5, align 8, !dbg !983
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0), i8* %48), !dbg !984
  br label %49, !dbg !984

; <label>:49:                                     ; preds = %45, %40, %36
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !985
  call void @fadvise(%struct._IO_FILE* %50, i32 2), !dbg !986
  store %struct.linebuffer* %7, %struct.linebuffer** %9, align 8, !dbg !987
  store %struct.linebuffer* %8, %struct.linebuffer** %10, align 8, !dbg !988
  %51 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !989
  call void @initbuffer(%struct.linebuffer* %51), !dbg !990
  %52 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !991
  call void @initbuffer(%struct.linebuffer* %52), !dbg !992
  %53 = trunc i8 0 to i1, !dbg !993
  br i1 %53, label %54, label %114, !dbg !995

; <label>:54:                                     ; preds = %49
  %55 = trunc i8 1 to i1, !dbg !996
  br i1 %55, label %56, label %114, !dbg !997

; <label>:56:                                     ; preds = %54
  %57 = icmp eq i32 1, 1, !dbg !998
  br i1 %57, label %58, label %114, !dbg !999

; <label>:58:                                     ; preds = %56
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1000, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1003, metadata !DIExpression()), !dbg !1004
  br label %59, !dbg !1005

; <label>:59:                                     ; preds = %112, %58
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1006
  %61 = call i32 @feof_unlocked(%struct._IO_FILE* %60) #11, !dbg !1006
  %62 = icmp ne i32 %61, 0, !dbg !1007
  %63 = xor i1 %62, true, !dbg !1007
  br i1 %63, label %64, label %113, !dbg !1005

; <label>:64:                                     ; preds = %59
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1008, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1011, metadata !DIExpression()), !dbg !1012
  %65 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1013
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1015
  %67 = load i8, i8* %6, align 1, !dbg !1016
  %68 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %65, %struct._IO_FILE* %66, i8 signext %67), !dbg !1017
  %69 = icmp eq %struct.linebuffer* %68, null, !dbg !1018
  br i1 %69, label %70, label %71, !dbg !1019

; <label>:70:                                     ; preds = %64
  br label %113, !dbg !1020

; <label>:71:                                     ; preds = %64
  %72 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1021
  %73 = call i8* @find_field(%struct.linebuffer* %72) #14, !dbg !1022
  store i8* %73, i8** %13, align 8, !dbg !1023
  %74 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1024
  %75 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %74, i32 0, i32 1, !dbg !1025
  %76 = load i64, i64* %75, align 8, !dbg !1025
  %77 = sub i64 %76, 1, !dbg !1026
  %78 = load i8*, i8** %13, align 8, !dbg !1027
  %79 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1028
  %80 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %79, i32 0, i32 2, !dbg !1029
  %81 = load i8*, i8** %80, align 8, !dbg !1029
  %82 = ptrtoint i8* %78 to i64, !dbg !1030
  %83 = ptrtoint i8* %81 to i64, !dbg !1030
  %84 = sub i64 %82, %83, !dbg !1030
  %85 = sub i64 %77, %84, !dbg !1031
  store i64 %85, i64* %14, align 8, !dbg !1032
  %86 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !1033
  %87 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %86, i32 0, i32 1, !dbg !1035
  %88 = load i64, i64* %87, align 8, !dbg !1035
  %89 = icmp eq i64 %88, 0, !dbg !1036
  br i1 %89, label %96, label %90, !dbg !1037

; <label>:90:                                     ; preds = %71
  %91 = load i8*, i8** %13, align 8, !dbg !1038
  %92 = load i8*, i8** %11, align 8, !dbg !1039
  %93 = load i64, i64* %14, align 8, !dbg !1040
  %94 = load i64, i64* %12, align 8, !dbg !1041
  %95 = call zeroext i1 @different(i8* %91, i8* %92, i64 %93, i64 %94), !dbg !1042
  br i1 %95, label %96, label %112, !dbg !1043

; <label>:96:                                     ; preds = %90, %71
  %97 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1044
  %98 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %97, i32 0, i32 2, !dbg !1044
  %99 = load i8*, i8** %98, align 8, !dbg !1044
  %100 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1044
  %101 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %100, i32 0, i32 1, !dbg !1044
  %102 = load i64, i64* %101, align 8, !dbg !1044
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1044
  %104 = call i64 @fwrite_unlocked(i8* %99, i64 1, i64 %102, %struct._IO_FILE* %103), !dbg !1044
  br label %105, !dbg !1046, !llvm.loop !1047

; <label>:105:                                    ; preds = %96
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %15, metadata !1048, metadata !DIExpression()), !dbg !1050
  %106 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !1050
  store %struct.linebuffer* %106, %struct.linebuffer** %15, align 8, !dbg !1050
  %107 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1050
  store %struct.linebuffer* %107, %struct.linebuffer** %10, align 8, !dbg !1050
  %108 = load %struct.linebuffer*, %struct.linebuffer** %15, align 8, !dbg !1050
  store %struct.linebuffer* %108, %struct.linebuffer** %9, align 8, !dbg !1050
  br label %109, !dbg !1050

; <label>:109:                                    ; preds = %105
  %110 = load i8*, i8** %13, align 8, !dbg !1051
  store i8* %110, i8** %11, align 8, !dbg !1052
  %111 = load i64, i64* %14, align 8, !dbg !1053
  store i64 %111, i64* %12, align 8, !dbg !1054
  br label %112, !dbg !1055

; <label>:112:                                    ; preds = %109, %90
  br label %59, !dbg !1005, !llvm.loop !1056

; <label>:113:                                    ; preds = %70, %59
  br label %237, !dbg !1058

; <label>:114:                                    ; preds = %56, %54, %49
  call void @llvm.dbg.declare(metadata i8** %16, metadata !1059, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.declare(metadata i64* %17, metadata !1062, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.declare(metadata i64* %18, metadata !1064, metadata !DIExpression()), !dbg !1069
  store i64 0, i64* %18, align 8, !dbg !1069
  call void @llvm.dbg.declare(metadata i8* %19, metadata !1070, metadata !DIExpression()), !dbg !1071
  store i8 1, i8* %19, align 1, !dbg !1071
  %115 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !1072
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1074
  %117 = load i8, i8* %6, align 1, !dbg !1075
  %118 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %115, %struct._IO_FILE* %116, i8 signext %117), !dbg !1076
  %119 = icmp eq %struct.linebuffer* %118, null, !dbg !1077
  br i1 %119, label %120, label %121, !dbg !1078

; <label>:120:                                    ; preds = %114
  br label %238, !dbg !1079

; <label>:121:                                    ; preds = %114
  %122 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !1080
  %123 = call i8* @find_field(%struct.linebuffer* %122) #14, !dbg !1081
  store i8* %123, i8** %16, align 8, !dbg !1082
  %124 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !1083
  %125 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %124, i32 0, i32 1, !dbg !1084
  %126 = load i64, i64* %125, align 8, !dbg !1084
  %127 = sub i64 %126, 1, !dbg !1085
  %128 = load i8*, i8** %16, align 8, !dbg !1086
  %129 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !1087
  %130 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %129, i32 0, i32 2, !dbg !1088
  %131 = load i8*, i8** %130, align 8, !dbg !1088
  %132 = ptrtoint i8* %128 to i64, !dbg !1089
  %133 = ptrtoint i8* %131 to i64, !dbg !1089
  %134 = sub i64 %132, %133, !dbg !1089
  %135 = sub i64 %127, %134, !dbg !1090
  store i64 %135, i64* %17, align 8, !dbg !1091
  br label %136, !dbg !1092

; <label>:136:                                    ; preds = %233, %121
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1093
  %138 = call i32 @feof_unlocked(%struct._IO_FILE* %137) #11, !dbg !1093
  %139 = icmp ne i32 %138, 0, !dbg !1094
  %140 = xor i1 %139, true, !dbg !1094
  br i1 %140, label %141, label %234, !dbg !1092

; <label>:141:                                    ; preds = %136
  call void @llvm.dbg.declare(metadata i8* %20, metadata !1095, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.declare(metadata i8** %21, metadata !1098, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.declare(metadata i64* %22, metadata !1100, metadata !DIExpression()), !dbg !1101
  %142 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1102
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1104
  %144 = load i8, i8* %6, align 1, !dbg !1105
  %145 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %142, %struct._IO_FILE* %143, i8 signext %144), !dbg !1106
  %146 = icmp eq %struct.linebuffer* %145, null, !dbg !1107
  br i1 %146, label %147, label %153, !dbg !1108

; <label>:147:                                    ; preds = %141
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1109
  %149 = call i32 @ferror_unlocked(%struct._IO_FILE* %148) #11, !dbg !1109
  %150 = icmp ne i32 %149, 0, !dbg !1109
  br i1 %150, label %151, label %152, !dbg !1112

; <label>:151:                                    ; preds = %147
  br label %238, !dbg !1113

; <label>:152:                                    ; preds = %147
  br label %234, !dbg !1114

; <label>:153:                                    ; preds = %141
  %154 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1115
  %155 = call i8* @find_field(%struct.linebuffer* %154) #14, !dbg !1116
  store i8* %155, i8** %21, align 8, !dbg !1117
  %156 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1118
  %157 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %156, i32 0, i32 1, !dbg !1119
  %158 = load i64, i64* %157, align 8, !dbg !1119
  %159 = sub i64 %158, 1, !dbg !1120
  %160 = load i8*, i8** %21, align 8, !dbg !1121
  %161 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1122
  %162 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %161, i32 0, i32 2, !dbg !1123
  %163 = load i8*, i8** %162, align 8, !dbg !1123
  %164 = ptrtoint i8* %160 to i64, !dbg !1124
  %165 = ptrtoint i8* %163 to i64, !dbg !1124
  %166 = sub i64 %164, %165, !dbg !1124
  %167 = sub i64 %159, %166, !dbg !1125
  store i64 %167, i64* %22, align 8, !dbg !1126
  %168 = load i8*, i8** %21, align 8, !dbg !1127
  %169 = load i8*, i8** %16, align 8, !dbg !1128
  %170 = load i64, i64* %22, align 8, !dbg !1129
  %171 = load i64, i64* %17, align 8, !dbg !1130
  %172 = call zeroext i1 @different(i8* %168, i8* %169, i64 %170, i64 %171), !dbg !1131
  %173 = xor i1 %172, true, !dbg !1132
  %174 = zext i1 %173 to i8, !dbg !1133
  store i8 %174, i8* %20, align 1, !dbg !1133
  %175 = load i8, i8* %20, align 1, !dbg !1134
  %176 = trunc i8 %175 to i1, !dbg !1134
  %177 = zext i1 %176 to i64, !dbg !1134
  %178 = load i64, i64* %18, align 8, !dbg !1135
  %179 = add i64 %178, %177, !dbg !1135
  store i64 %179, i64* %18, align 8, !dbg !1135
  %180 = load i64, i64* %18, align 8, !dbg !1136
  %181 = icmp eq i64 %180, -1, !dbg !1138
  br i1 %181, label %182, label %185, !dbg !1139

; <label>:182:                                    ; preds = %153
  %183 = load i64, i64* %18, align 8, !dbg !1140
  %184 = add i64 %183, -1, !dbg !1140
  store i64 %184, i64* %18, align 8, !dbg !1140
  br label %185, !dbg !1142

; <label>:185:                                    ; preds = %182, %153
  %186 = icmp ne i32 0, 0, !dbg !1143
  br i1 %186, label %187, label %212, !dbg !1145

; <label>:187:                                    ; preds = %185
  %188 = load i8, i8* %20, align 1, !dbg !1146
  %189 = trunc i8 %188 to i1, !dbg !1146
  br i1 %189, label %195, label %190, !dbg !1149

; <label>:190:                                    ; preds = %187
  %191 = load i64, i64* %18, align 8, !dbg !1150
  %192 = icmp ne i64 %191, 0, !dbg !1150
  br i1 %192, label %193, label %194, !dbg !1153

; <label>:193:                                    ; preds = %190
  store i8 0, i8* %19, align 1, !dbg !1154
  br label %194, !dbg !1155

; <label>:194:                                    ; preds = %193, %190
  br label %211, !dbg !1156

; <label>:195:                                    ; preds = %187
  %196 = load i64, i64* %18, align 8, !dbg !1157
  %197 = icmp eq i64 %196, 1, !dbg !1159
  br i1 %197, label %198, label %210, !dbg !1160

; <label>:198:                                    ; preds = %195
  %199 = icmp eq i32 0, 1, !dbg !1161
  br i1 %199, label %205, label %200, !dbg !1164

; <label>:200:                                    ; preds = %198
  %201 = icmp eq i32 0, 2, !dbg !1165
  br i1 %201, label %202, label %209, !dbg !1166

; <label>:202:                                    ; preds = %200
  %203 = load i8, i8* %19, align 1, !dbg !1167
  %204 = trunc i8 %203 to i1, !dbg !1167
  br i1 %204, label %209, label %205, !dbg !1168

; <label>:205:                                    ; preds = %202, %198
  %206 = load i8, i8* %6, align 1, !dbg !1169
  %207 = sext i8 %206 to i32, !dbg !1169
  %208 = call i32 @putchar_unlocked(i32 %207), !dbg !1169
  br label %209, !dbg !1169

; <label>:209:                                    ; preds = %205, %202, %200
  br label %210, !dbg !1170

; <label>:210:                                    ; preds = %209, %195
  br label %211

; <label>:211:                                    ; preds = %210, %194
  br label %212, !dbg !1171

; <label>:212:                                    ; preds = %211, %185
  %213 = load i8, i8* %20, align 1, !dbg !1172
  %214 = trunc i8 %213 to i1, !dbg !1172
  br i1 %214, label %215, label %217, !dbg !1174

; <label>:215:                                    ; preds = %212
  %216 = trunc i8 0 to i1, !dbg !1175
  br i1 %216, label %217, label %233, !dbg !1176

; <label>:217:                                    ; preds = %215, %212
  %218 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !1177
  %219 = load i8, i8* %20, align 1, !dbg !1179
  %220 = trunc i8 %219 to i1, !dbg !1179
  %221 = load i64, i64* %18, align 8, !dbg !1180
  call void @writeline(%struct.linebuffer* %218, i1 zeroext %220, i64 %221), !dbg !1181
  br label %222, !dbg !1182, !llvm.loop !1183

; <label>:222:                                    ; preds = %217
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %23, metadata !1184, metadata !DIExpression()), !dbg !1186
  %223 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !1186
  store %struct.linebuffer* %223, %struct.linebuffer** %23, align 8, !dbg !1186
  %224 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1186
  store %struct.linebuffer* %224, %struct.linebuffer** %10, align 8, !dbg !1186
  %225 = load %struct.linebuffer*, %struct.linebuffer** %23, align 8, !dbg !1186
  store %struct.linebuffer* %225, %struct.linebuffer** %9, align 8, !dbg !1186
  br label %226, !dbg !1186

; <label>:226:                                    ; preds = %222
  %227 = load i8*, i8** %21, align 8, !dbg !1187
  store i8* %227, i8** %16, align 8, !dbg !1188
  %228 = load i64, i64* %22, align 8, !dbg !1189
  store i64 %228, i64* %17, align 8, !dbg !1190
  %229 = load i8, i8* %20, align 1, !dbg !1191
  %230 = trunc i8 %229 to i1, !dbg !1191
  br i1 %230, label %232, label %231, !dbg !1193

; <label>:231:                                    ; preds = %226
  store i64 0, i64* %18, align 8, !dbg !1194
  br label %232, !dbg !1195

; <label>:232:                                    ; preds = %231, %226
  br label %233, !dbg !1196

; <label>:233:                                    ; preds = %232, %215
  br label %136, !dbg !1092, !llvm.loop !1197

; <label>:234:                                    ; preds = %152, %136
  %235 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !1199
  %236 = load i64, i64* %18, align 8, !dbg !1200
  call void @writeline(%struct.linebuffer* %235, i1 zeroext false, i64 %236), !dbg !1201
  br label %237

; <label>:237:                                    ; preds = %234, %113
  br label %238, !dbg !1202

; <label>:238:                                    ; preds = %237, %151, %120
  %239 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1203
  %240 = call i32 @ferror_unlocked(%struct._IO_FILE* %239) #11, !dbg !1203
  %241 = icmp ne i32 %240, 0, !dbg !1203
  br i1 %241, label %246, label %242, !dbg !1205

; <label>:242:                                    ; preds = %238
  %243 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1206
  %244 = call i32 @rpl_fclose(%struct._IO_FILE* %243), !dbg !1207
  %245 = icmp ne i32 %244, 0, !dbg !1208
  br i1 %245, label %246, label %248, !dbg !1209

; <label>:246:                                    ; preds = %242, %238
  %247 = load i8*, i8** %4, align 8, !dbg !1210
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.51, i32 0, i32 0), i8* %247), !dbg !1211
  br label %248, !dbg !1211

; <label>:248:                                    ; preds = %246, %242
  %249 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %7, i32 0, i32 2, !dbg !1212
  %250 = load i8*, i8** %249, align 8, !dbg !1212
  call void @free(i8* %250) #11, !dbg !1213
  %251 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %8, i32 0, i32 2, !dbg !1214
  %252 = load i8*, i8** %251, align 8, !dbg !1214
  call void @free(i8* %252) #11, !dbg !1215
  ret void, !dbg !1216
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #6

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

; Function Attrs: nounwind
declare i32 @feof_unlocked(%struct._IO_FILE*) #5

; Function Attrs: noinline nounwind readonly uwtable
define internal i8* @find_field(%struct.linebuffer*) #8 !dbg !1217 {
  %2 = alloca %struct.linebuffer*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.linebuffer* %0, %struct.linebuffer** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %2, metadata !1222, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1224, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1226, metadata !DIExpression()), !dbg !1227
  %7 = load %struct.linebuffer*, %struct.linebuffer** %2, align 8, !dbg !1228
  %8 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %7, i32 0, i32 2, !dbg !1229
  %9 = load i8*, i8** %8, align 8, !dbg !1229
  store i8* %9, i8** %4, align 8, !dbg !1227
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1230, metadata !DIExpression()), !dbg !1231
  %10 = load %struct.linebuffer*, %struct.linebuffer** %2, align 8, !dbg !1232
  %11 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %10, i32 0, i32 1, !dbg !1233
  %12 = load i64, i64* %11, align 8, !dbg !1233
  %13 = sub i64 %12, 1, !dbg !1234
  store i64 %13, i64* %5, align 8, !dbg !1231
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1235, metadata !DIExpression()), !dbg !1236
  store i64 0, i64* %6, align 8, !dbg !1236
  store i64 0, i64* %3, align 8, !dbg !1237
  br label %14, !dbg !1239

; <label>:14:                                     ; preds = %75, %1
  %15 = load i64, i64* %3, align 8, !dbg !1240
  %16 = icmp ult i64 %15, 0, !dbg !1242
  br i1 %16, label %17, label %21, !dbg !1243

; <label>:17:                                     ; preds = %14
  %18 = load i64, i64* %6, align 8, !dbg !1244
  %19 = load i64, i64* %5, align 8, !dbg !1245
  %20 = icmp ult i64 %18, %19, !dbg !1246
  br label %21

; <label>:21:                                     ; preds = %17, %14
  %22 = phi i1 [ false, %14 ], [ %20, %17 ]
  br i1 %22, label %23, label %78, !dbg !1247

; <label>:23:                                     ; preds = %21
  br label %24, !dbg !1248

; <label>:24:                                     ; preds = %45, %23
  %25 = load i64, i64* %6, align 8, !dbg !1250
  %26 = load i64, i64* %5, align 8, !dbg !1251
  %27 = icmp ult i64 %25, %26, !dbg !1252
  br i1 %27, label %28, label %43, !dbg !1253

; <label>:28:                                     ; preds = %24
  %29 = call i16** @__ctype_b_loc() #16, !dbg !1254
  %30 = load i16*, i16** %29, align 8, !dbg !1254
  %31 = load i8*, i8** %4, align 8, !dbg !1254
  %32 = load i64, i64* %6, align 8, !dbg !1254
  %33 = getelementptr inbounds i8, i8* %31, i64 %32, !dbg !1254
  %34 = load i8, i8* %33, align 1, !dbg !1254
  %35 = call zeroext i8 @to_uchar(i8 signext %34), !dbg !1254
  %36 = zext i8 %35 to i32, !dbg !1254
  %37 = sext i32 %36 to i64, !dbg !1254
  %38 = getelementptr inbounds i16, i16* %30, i64 %37, !dbg !1254
  %39 = load i16, i16* %38, align 2, !dbg !1254
  %40 = zext i16 %39 to i32, !dbg !1254
  %41 = and i32 %40, 1, !dbg !1254
  %42 = icmp ne i32 %41, 0, !dbg !1253
  br label %43

; <label>:43:                                     ; preds = %28, %24
  %44 = phi i1 [ false, %24 ], [ %42, %28 ]
  br i1 %44, label %45, label %48, !dbg !1248

; <label>:45:                                     ; preds = %43
  %46 = load i64, i64* %6, align 8, !dbg !1255
  %47 = add i64 %46, 1, !dbg !1255
  store i64 %47, i64* %6, align 8, !dbg !1255
  br label %24, !dbg !1248, !llvm.loop !1256

; <label>:48:                                     ; preds = %43
  br label %49, !dbg !1257

; <label>:49:                                     ; preds = %71, %48
  %50 = load i64, i64* %6, align 8, !dbg !1258
  %51 = load i64, i64* %5, align 8, !dbg !1259
  %52 = icmp ult i64 %50, %51, !dbg !1260
  br i1 %52, label %53, label %69, !dbg !1261

; <label>:53:                                     ; preds = %49
  %54 = call i16** @__ctype_b_loc() #16, !dbg !1262
  %55 = load i16*, i16** %54, align 8, !dbg !1262
  %56 = load i8*, i8** %4, align 8, !dbg !1262
  %57 = load i64, i64* %6, align 8, !dbg !1262
  %58 = getelementptr inbounds i8, i8* %56, i64 %57, !dbg !1262
  %59 = load i8, i8* %58, align 1, !dbg !1262
  %60 = call zeroext i8 @to_uchar(i8 signext %59), !dbg !1262
  %61 = zext i8 %60 to i32, !dbg !1262
  %62 = sext i32 %61 to i64, !dbg !1262
  %63 = getelementptr inbounds i16, i16* %55, i64 %62, !dbg !1262
  %64 = load i16, i16* %63, align 2, !dbg !1262
  %65 = zext i16 %64 to i32, !dbg !1262
  %66 = and i32 %65, 1, !dbg !1262
  %67 = icmp ne i32 %66, 0, !dbg !1263
  %68 = xor i1 %67, true, !dbg !1263
  br label %69

; <label>:69:                                     ; preds = %53, %49
  %70 = phi i1 [ false, %49 ], [ %68, %53 ]
  br i1 %70, label %71, label %74, !dbg !1257

; <label>:71:                                     ; preds = %69
  %72 = load i64, i64* %6, align 8, !dbg !1264
  %73 = add i64 %72, 1, !dbg !1264
  store i64 %73, i64* %6, align 8, !dbg !1264
  br label %49, !dbg !1257, !llvm.loop !1265

; <label>:74:                                     ; preds = %69
  br label %75, !dbg !1266

; <label>:75:                                     ; preds = %74
  %76 = load i64, i64* %3, align 8, !dbg !1267
  %77 = add i64 %76, 1, !dbg !1267
  store i64 %77, i64* %3, align 8, !dbg !1267
  br label %14, !dbg !1268, !llvm.loop !1269

; <label>:78:                                     ; preds = %21
  %79 = load i64, i64* %5, align 8, !dbg !1271
  %80 = load i64, i64* %6, align 8, !dbg !1271
  %81 = sub i64 %79, %80, !dbg !1271
  %82 = icmp ult i64 0, %81, !dbg !1271
  br i1 %82, label %83, label %84, !dbg !1271

; <label>:83:                                     ; preds = %78
  br label %88, !dbg !1271

; <label>:84:                                     ; preds = %78
  %85 = load i64, i64* %5, align 8, !dbg !1271
  %86 = load i64, i64* %6, align 8, !dbg !1271
  %87 = sub i64 %85, %86, !dbg !1271
  br label %88, !dbg !1271

; <label>:88:                                     ; preds = %84, %83
  %89 = phi i64 [ 0, %83 ], [ %87, %84 ], !dbg !1271
  %90 = load i64, i64* %6, align 8, !dbg !1272
  %91 = add i64 %90, %89, !dbg !1272
  store i64 %91, i64* %6, align 8, !dbg !1272
  %92 = load %struct.linebuffer*, %struct.linebuffer** %2, align 8, !dbg !1273
  %93 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %92, i32 0, i32 2, !dbg !1274
  %94 = load i8*, i8** %93, align 8, !dbg !1274
  %95 = load i64, i64* %6, align 8, !dbg !1275
  %96 = getelementptr inbounds i8, i8* %94, i64 %95, !dbg !1276
  ret i8* %96, !dbg !1277
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @different(i8*, i8*, i64, i64) #2 !dbg !1278 {
  %5 = alloca i1, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1281, metadata !DIExpression()), !dbg !1282
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1283, metadata !DIExpression()), !dbg !1284
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1285, metadata !DIExpression()), !dbg !1286
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1287, metadata !DIExpression()), !dbg !1288
  %10 = load i64, i64* %8, align 8, !dbg !1289
  %11 = icmp ult i64 -1, %10, !dbg !1291
  br i1 %11, label %12, label %13, !dbg !1292

; <label>:12:                                     ; preds = %4
  store i64 -1, i64* %8, align 8, !dbg !1293
  br label %13, !dbg !1294

; <label>:13:                                     ; preds = %12, %4
  %14 = load i64, i64* %9, align 8, !dbg !1295
  %15 = icmp ult i64 -1, %14, !dbg !1297
  br i1 %15, label %16, label %17, !dbg !1298

; <label>:16:                                     ; preds = %13
  store i64 -1, i64* %9, align 8, !dbg !1299
  br label %17, !dbg !1300

; <label>:17:                                     ; preds = %16, %13
  %18 = trunc i8 0 to i1, !dbg !1301
  br i1 %18, label %19, label %31, !dbg !1303

; <label>:19:                                     ; preds = %17
  %20 = load i64, i64* %8, align 8, !dbg !1304
  %21 = load i64, i64* %9, align 8, !dbg !1306
  %22 = icmp ne i64 %20, %21, !dbg !1307
  br i1 %22, label %29, label %23, !dbg !1308

; <label>:23:                                     ; preds = %19
  %24 = load i8*, i8** %6, align 8, !dbg !1309
  %25 = load i8*, i8** %7, align 8, !dbg !1310
  %26 = load i64, i64* %8, align 8, !dbg !1311
  %27 = call i32 @memcasecmp(i8* %24, i8* %25, i64 %26) #14, !dbg !1312
  %28 = icmp ne i32 %27, 0, !dbg !1308
  br label %29, !dbg !1308

; <label>:29:                                     ; preds = %23, %19
  %30 = phi i1 [ true, %19 ], [ %28, %23 ]
  store i1 %30, i1* %5, align 1, !dbg !1313
  br label %52, !dbg !1313

; <label>:31:                                     ; preds = %17
  %32 = trunc i8 1 to i1, !dbg !1314
  br i1 %32, label %33, label %40, !dbg !1316

; <label>:33:                                     ; preds = %31
  %34 = load i8*, i8** %6, align 8, !dbg !1317
  %35 = load i64, i64* %8, align 8, !dbg !1318
  %36 = load i8*, i8** %7, align 8, !dbg !1319
  %37 = load i64, i64* %9, align 8, !dbg !1320
  %38 = call i32 @xmemcoll(i8* %34, i64 %35, i8* %36, i64 %37), !dbg !1321
  %39 = icmp ne i32 %38, 0, !dbg !1322
  store i1 %39, i1* %5, align 1, !dbg !1323
  br label %52, !dbg !1323

; <label>:40:                                     ; preds = %31
  %41 = load i64, i64* %8, align 8, !dbg !1324
  %42 = load i64, i64* %9, align 8, !dbg !1325
  %43 = icmp ne i64 %41, %42, !dbg !1326
  br i1 %43, label %50, label %44, !dbg !1327

; <label>:44:                                     ; preds = %40
  %45 = load i8*, i8** %6, align 8, !dbg !1328
  %46 = load i8*, i8** %7, align 8, !dbg !1329
  %47 = load i64, i64* %8, align 8, !dbg !1330
  %48 = call i32 @memcmp(i8* %45, i8* %46, i64 %47) #14, !dbg !1331
  %49 = icmp ne i32 %48, 0, !dbg !1327
  br label %50, !dbg !1327

; <label>:50:                                     ; preds = %44, %40
  %51 = phi i1 [ true, %40 ], [ %49, %44 ]
  store i1 %51, i1* %5, align 1, !dbg !1332
  br label %52, !dbg !1332

; <label>:52:                                     ; preds = %50, %33, %29
  %53 = load i1, i1* %5, align 1, !dbg !1333
  ret i1 %53, !dbg !1333
}

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE*) #5

declare i32 @putchar_unlocked(i32) #3

; Function Attrs: noinline nounwind uwtable
define internal void @writeline(%struct.linebuffer*, i1 zeroext, i64) #2 !dbg !1334 {
  %4 = alloca %struct.linebuffer*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  store %struct.linebuffer* %0, %struct.linebuffer** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %4, metadata !1337, metadata !DIExpression()), !dbg !1338
  %7 = zext i1 %1 to i8
  store i8 %7, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1339, metadata !DIExpression()), !dbg !1340
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1341, metadata !DIExpression()), !dbg !1342
  %8 = load i64, i64* %6, align 8, !dbg !1343
  %9 = icmp eq i64 %8, 0, !dbg !1345
  br i1 %9, label %10, label %12, !dbg !1346

; <label>:10:                                     ; preds = %3
  %11 = trunc i8 0 to i1, !dbg !1347
  br i1 %11, label %20, label %19, !dbg !1343

; <label>:12:                                     ; preds = %3
  %13 = load i8, i8* %5, align 1, !dbg !1348
  %14 = trunc i8 %13 to i1, !dbg !1348
  br i1 %14, label %17, label %15, !dbg !1346

; <label>:15:                                     ; preds = %12
  %16 = trunc i8 1 to i1, !dbg !1349
  br i1 %16, label %20, label %19, !dbg !1350

; <label>:17:                                     ; preds = %12
  %18 = trunc i8 0 to i1, !dbg !1351
  br i1 %18, label %20, label %19, !dbg !1346

; <label>:19:                                     ; preds = %17, %15, %10
  br label %35, !dbg !1352

; <label>:20:                                     ; preds = %17, %15, %10
  %21 = icmp eq i32 1, 0, !dbg !1353
  br i1 %21, label %22, label %26, !dbg !1355

; <label>:22:                                     ; preds = %20
  %23 = load i64, i64* %6, align 8, !dbg !1356
  %24 = add i64 %23, 1, !dbg !1357
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i64 %24), !dbg !1358
  br label %26, !dbg !1358

; <label>:26:                                     ; preds = %22, %20
  %27 = load %struct.linebuffer*, %struct.linebuffer** %4, align 8, !dbg !1359
  %28 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %27, i32 0, i32 2, !dbg !1359
  %29 = load i8*, i8** %28, align 8, !dbg !1359
  %30 = load %struct.linebuffer*, %struct.linebuffer** %4, align 8, !dbg !1359
  %31 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %30, i32 0, i32 1, !dbg !1359
  %32 = load i64, i64* %31, align 8, !dbg !1359
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1359
  %34 = call i64 @fwrite_unlocked(i8* %29, i64 1, i64 %32, %struct._IO_FILE* %33), !dbg !1359
  br label %35, !dbg !1360

; <label>:35:                                     ; preds = %26, %19
  ret void, !dbg !1360
}

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #6

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #7

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @to_uchar(i8 signext) #2 !dbg !1361 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !1364, metadata !DIExpression()), !dbg !1365
  %3 = load i8, i8* %2, align 1, !dbg !1366
  ret i8 %3, !dbg !1367
}

; Function Attrs: noinline nounwind uwtable
define internal void @__argmatch_die() #2 !dbg !1368 {
  call void @usage(i32 1), !dbg !1369
  ret void, !dbg !1370
}

; Function Attrs: noinline nounwind readonly uwtable
define i64 @argmatch(i8*, i8**, i8*, i64) #8 !dbg !1371 {
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
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1377, metadata !DIExpression()), !dbg !1378
  store i8** %1, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1379, metadata !DIExpression()), !dbg !1380
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1381, metadata !DIExpression()), !dbg !1382
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1383, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1385, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1387, metadata !DIExpression()), !dbg !1388
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1389, metadata !DIExpression()), !dbg !1390
  store i64 -1, i64* %12, align 8, !dbg !1390
  call void @llvm.dbg.declare(metadata i8* %13, metadata !1391, metadata !DIExpression()), !dbg !1392
  store i8 0, i8* %13, align 1, !dbg !1392
  %14 = load i8*, i8** %6, align 8, !dbg !1393
  %15 = call i64 @strlen(i8* %14) #14, !dbg !1394
  store i64 %15, i64* %11, align 8, !dbg !1395
  store i64 0, i64* %10, align 8, !dbg !1396
  br label %16, !dbg !1398

; <label>:16:                                     ; preds = %68, %4
  %17 = load i8**, i8*** %7, align 8, !dbg !1399
  %18 = load i64, i64* %10, align 8, !dbg !1401
  %19 = getelementptr inbounds i8*, i8** %17, i64 %18, !dbg !1399
  %20 = load i8*, i8** %19, align 8, !dbg !1399
  %21 = icmp ne i8* %20, null, !dbg !1402
  br i1 %21, label %22, label %71, !dbg !1402

; <label>:22:                                     ; preds = %16
  %23 = load i8**, i8*** %7, align 8, !dbg !1403
  %24 = load i64, i64* %10, align 8, !dbg !1406
  %25 = getelementptr inbounds i8*, i8** %23, i64 %24, !dbg !1403
  %26 = load i8*, i8** %25, align 8, !dbg !1403
  %27 = load i8*, i8** %6, align 8, !dbg !1407
  %28 = load i64, i64* %11, align 8, !dbg !1408
  %29 = call i32 @strncmp(i8* %26, i8* %27, i64 %28) #14, !dbg !1409
  %30 = icmp ne i32 %29, 0, !dbg !1409
  br i1 %30, label %67, label %31, !dbg !1410

; <label>:31:                                     ; preds = %22
  %32 = load i8**, i8*** %7, align 8, !dbg !1411
  %33 = load i64, i64* %10, align 8, !dbg !1414
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33, !dbg !1411
  %35 = load i8*, i8** %34, align 8, !dbg !1411
  %36 = call i64 @strlen(i8* %35) #14, !dbg !1415
  %37 = load i64, i64* %11, align 8, !dbg !1416
  %38 = icmp eq i64 %36, %37, !dbg !1417
  br i1 %38, label %39, label %41, !dbg !1418

; <label>:39:                                     ; preds = %31
  %40 = load i64, i64* %10, align 8, !dbg !1419
  store i64 %40, i64* %5, align 8, !dbg !1420
  br label %77, !dbg !1420

; <label>:41:                                     ; preds = %31
  %42 = load i64, i64* %12, align 8, !dbg !1421
  %43 = icmp eq i64 %42, -1, !dbg !1423
  br i1 %43, label %44, label %46, !dbg !1424

; <label>:44:                                     ; preds = %41
  %45 = load i64, i64* %10, align 8, !dbg !1425
  store i64 %45, i64* %12, align 8, !dbg !1426
  br label %65, !dbg !1427

; <label>:46:                                     ; preds = %41
  %47 = load i8*, i8** %8, align 8, !dbg !1428
  %48 = icmp eq i8* %47, null, !dbg !1431
  br i1 %48, label %63, label %49, !dbg !1432

; <label>:49:                                     ; preds = %46
  %50 = load i8*, i8** %8, align 8, !dbg !1433
  %51 = load i64, i64* %9, align 8, !dbg !1434
  %52 = load i64, i64* %12, align 8, !dbg !1435
  %53 = mul i64 %51, %52, !dbg !1436
  %54 = getelementptr inbounds i8, i8* %50, i64 %53, !dbg !1437
  %55 = load i8*, i8** %8, align 8, !dbg !1438
  %56 = load i64, i64* %9, align 8, !dbg !1439
  %57 = load i64, i64* %10, align 8, !dbg !1440
  %58 = mul i64 %56, %57, !dbg !1441
  %59 = getelementptr inbounds i8, i8* %55, i64 %58, !dbg !1442
  %60 = load i64, i64* %9, align 8, !dbg !1443
  %61 = call i32 @memcmp(i8* %54, i8* %59, i64 %60) #14, !dbg !1444
  %62 = icmp ne i32 %61, 0, !dbg !1444
  br i1 %62, label %63, label %64, !dbg !1445

; <label>:63:                                     ; preds = %49, %46
  store i8 1, i8* %13, align 1, !dbg !1446
  br label %64, !dbg !1448

; <label>:64:                                     ; preds = %63, %49
  br label %65

; <label>:65:                                     ; preds = %64, %44
  br label %66

; <label>:66:                                     ; preds = %65
  br label %67, !dbg !1449

; <label>:67:                                     ; preds = %66, %22
  br label %68, !dbg !1450

; <label>:68:                                     ; preds = %67
  %69 = load i64, i64* %10, align 8, !dbg !1451
  %70 = add i64 %69, 1, !dbg !1451
  store i64 %70, i64* %10, align 8, !dbg !1451
  br label %16, !dbg !1452, !llvm.loop !1453

; <label>:71:                                     ; preds = %16
  %72 = load i8, i8* %13, align 1, !dbg !1455
  %73 = trunc i8 %72 to i1, !dbg !1455
  br i1 %73, label %74, label %75, !dbg !1457

; <label>:74:                                     ; preds = %71
  store i64 -2, i64* %5, align 8, !dbg !1458
  br label %77, !dbg !1458

; <label>:75:                                     ; preds = %71
  %76 = load i64, i64* %12, align 8, !dbg !1459
  store i64 %76, i64* %5, align 8, !dbg !1460
  br label %77, !dbg !1460

; <label>:77:                                     ; preds = %75, %74, %39
  %78 = load i64, i64* %5, align 8, !dbg !1461
  ret i64 %78, !dbg !1461
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

; Function Attrs: noinline nounwind uwtable
define void @argmatch_invalid(i8*, i8*, i64) #2 !dbg !1462 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1465, metadata !DIExpression()), !dbg !1466
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1467, metadata !DIExpression()), !dbg !1468
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1469, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1471, metadata !DIExpression()), !dbg !1472
  %8 = load i64, i64* %6, align 8, !dbg !1473
  %9 = icmp eq i64 %8, -1, !dbg !1474
  %10 = zext i1 %9 to i64, !dbg !1473
  %11 = select i1 %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.57, i32 0, i32 0), !dbg !1473
  store i8* %11, i8** %7, align 8, !dbg !1472
  %12 = load i8*, i8** %7, align 8, !dbg !1475
  %13 = load i8*, i8** %5, align 8, !dbg !1476
  %14 = call i8* @quotearg_n_style(i32 0, i32 6, i8* %13), !dbg !1477
  %15 = load i8*, i8** %4, align 8, !dbg !1478
  %16 = call i8* @quote_n(i32 1, i8* %15), !dbg !1479
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %12, i8* %14, i8* %16), !dbg !1480
  ret void, !dbg !1481
}

; Function Attrs: noinline nounwind uwtable
define void @argmatch_valid(i8**, i8*, i64) #2 !dbg !1482 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !1485, metadata !DIExpression()), !dbg !1486
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1487, metadata !DIExpression()), !dbg !1488
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1489, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1491, metadata !DIExpression()), !dbg !1492
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1493, metadata !DIExpression()), !dbg !1494
  store i8* null, i8** %8, align 8, !dbg !1494
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1495
  %10 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.58, i32 0, i32 0), %struct._IO_FILE* %9), !dbg !1495
  store i64 0, i64* %7, align 8, !dbg !1496
  br label %11, !dbg !1498

; <label>:11:                                     ; preds = %52, %3
  %12 = load i8**, i8*** %4, align 8, !dbg !1499
  %13 = load i64, i64* %7, align 8, !dbg !1501
  %14 = getelementptr inbounds i8*, i8** %12, i64 %13, !dbg !1499
  %15 = load i8*, i8** %14, align 8, !dbg !1499
  %16 = icmp ne i8* %15, null, !dbg !1502
  br i1 %16, label %17, label %55, !dbg !1502

; <label>:17:                                     ; preds = %11
  %18 = load i64, i64* %7, align 8, !dbg !1503
  %19 = icmp eq i64 %18, 0, !dbg !1505
  br i1 %19, label %30, label %20, !dbg !1506

; <label>:20:                                     ; preds = %17
  %21 = load i8*, i8** %8, align 8, !dbg !1507
  %22 = load i8*, i8** %5, align 8, !dbg !1508
  %23 = load i64, i64* %6, align 8, !dbg !1509
  %24 = load i64, i64* %7, align 8, !dbg !1510
  %25 = mul i64 %23, %24, !dbg !1511
  %26 = getelementptr inbounds i8, i8* %22, i64 %25, !dbg !1512
  %27 = load i64, i64* %6, align 8, !dbg !1513
  %28 = call i32 @memcmp(i8* %21, i8* %26, i64 %27) #14, !dbg !1514
  %29 = icmp ne i32 %28, 0, !dbg !1514
  br i1 %29, label %30, label %43, !dbg !1515

; <label>:30:                                     ; preds = %20, %17
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1516
  %32 = load i8**, i8*** %4, align 8, !dbg !1518
  %33 = load i64, i64* %7, align 8, !dbg !1519
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33, !dbg !1518
  %35 = load i8*, i8** %34, align 8, !dbg !1518
  %36 = call i8* @quote(i8* %35), !dbg !1520
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.59, i32 0, i32 0), i8* %36), !dbg !1521
  %38 = load i8*, i8** %5, align 8, !dbg !1522
  %39 = load i64, i64* %6, align 8, !dbg !1523
  %40 = load i64, i64* %7, align 8, !dbg !1524
  %41 = mul i64 %39, %40, !dbg !1525
  %42 = getelementptr inbounds i8, i8* %38, i64 %41, !dbg !1526
  store i8* %42, i8** %8, align 8, !dbg !1527
  br label %51, !dbg !1528

; <label>:43:                                     ; preds = %20
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1529
  %45 = load i8**, i8*** %4, align 8, !dbg !1531
  %46 = load i64, i64* %7, align 8, !dbg !1532
  %47 = getelementptr inbounds i8*, i8** %45, i64 %46, !dbg !1531
  %48 = load i8*, i8** %47, align 8, !dbg !1531
  %49 = call i8* @quote(i8* %48), !dbg !1533
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.60, i32 0, i32 0), i8* %49), !dbg !1534
  br label %51

; <label>:51:                                     ; preds = %43, %30
  br label %52, !dbg !1535

; <label>:52:                                     ; preds = %51
  %53 = load i64, i64* %7, align 8, !dbg !1536
  %54 = add i64 %53, 1, !dbg !1536
  store i64 %54, i64* %7, align 8, !dbg !1536
  br label %11, !dbg !1537, !llvm.loop !1538

; <label>:55:                                     ; preds = %11
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1540
  %57 = call i32 @putc_unlocked(i32 10, %struct._IO_FILE* %56), !dbg !1540
  ret void, !dbg !1541
}

declare i32 @putc_unlocked(i32, %struct._IO_FILE*) #3

; Function Attrs: noinline nounwind uwtable
define i64 @__xargmatch_internal(i8*, i8*, i8**, i8*, i64, void ()*) #2 !dbg !1542 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca void ()*, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1545, metadata !DIExpression()), !dbg !1546
  store i8* %1, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1547, metadata !DIExpression()), !dbg !1548
  store i8** %2, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !1549, metadata !DIExpression()), !dbg !1550
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1551, metadata !DIExpression()), !dbg !1552
  store i64 %4, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1553, metadata !DIExpression()), !dbg !1554
  store void ()* %5, void ()** %13, align 8
  call void @llvm.dbg.declare(metadata void ()** %13, metadata !1555, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1557, metadata !DIExpression()), !dbg !1558
  %15 = load i8*, i8** %9, align 8, !dbg !1559
  %16 = load i8**, i8*** %10, align 8, !dbg !1560
  %17 = load i8*, i8** %11, align 8, !dbg !1561
  %18 = load i64, i64* %12, align 8, !dbg !1562
  %19 = call i64 @argmatch(i8* %15, i8** %16, i8* %17, i64 %18) #14, !dbg !1563
  store i64 %19, i64* %14, align 8, !dbg !1558
  %20 = load i64, i64* %14, align 8, !dbg !1564
  %21 = icmp sge i64 %20, 0, !dbg !1566
  br i1 %21, label %22, label %24, !dbg !1567

; <label>:22:                                     ; preds = %6
  %23 = load i64, i64* %14, align 8, !dbg !1568
  store i64 %23, i64* %7, align 8, !dbg !1569
  br label %32, !dbg !1569

; <label>:24:                                     ; preds = %6
  %25 = load i8*, i8** %8, align 8, !dbg !1570
  %26 = load i8*, i8** %9, align 8, !dbg !1571
  %27 = load i64, i64* %14, align 8, !dbg !1572
  call void @argmatch_invalid(i8* %25, i8* %26, i64 %27), !dbg !1573
  %28 = load i8**, i8*** %10, align 8, !dbg !1574
  %29 = load i8*, i8** %11, align 8, !dbg !1575
  %30 = load i64, i64* %12, align 8, !dbg !1576
  call void @argmatch_valid(i8** %28, i8* %29, i64 %30), !dbg !1577
  %31 = load void ()*, void ()** %13, align 8, !dbg !1578
  call void %31(), !dbg !1579
  store i64 -1, i64* %7, align 8, !dbg !1580
  br label %32, !dbg !1580

; <label>:32:                                     ; preds = %24, %22
  %33 = load i64, i64* %7, align 8, !dbg !1581
  ret i64 %33, !dbg !1581
}

; Function Attrs: noinline nounwind readonly uwtable
define i8* @argmatch_to_argument(i8*, i8**, i8*, i64) #8 !dbg !1582 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1585, metadata !DIExpression()), !dbg !1586
  store i8** %1, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1587, metadata !DIExpression()), !dbg !1588
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1589, metadata !DIExpression()), !dbg !1590
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1591, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1593, metadata !DIExpression()), !dbg !1594
  store i64 0, i64* %10, align 8, !dbg !1595
  br label %11, !dbg !1597

; <label>:11:                                     ; preds = %33, %4
  %12 = load i8**, i8*** %7, align 8, !dbg !1598
  %13 = load i64, i64* %10, align 8, !dbg !1600
  %14 = getelementptr inbounds i8*, i8** %12, i64 %13, !dbg !1598
  %15 = load i8*, i8** %14, align 8, !dbg !1598
  %16 = icmp ne i8* %15, null, !dbg !1601
  br i1 %16, label %17, label %36, !dbg !1601

; <label>:17:                                     ; preds = %11
  %18 = load i8*, i8** %6, align 8, !dbg !1602
  %19 = load i8*, i8** %8, align 8, !dbg !1604
  %20 = load i64, i64* %9, align 8, !dbg !1605
  %21 = load i64, i64* %10, align 8, !dbg !1606
  %22 = mul i64 %20, %21, !dbg !1607
  %23 = getelementptr inbounds i8, i8* %19, i64 %22, !dbg !1608
  %24 = load i64, i64* %9, align 8, !dbg !1609
  %25 = call i32 @memcmp(i8* %18, i8* %23, i64 %24) #14, !dbg !1610
  %26 = icmp ne i32 %25, 0, !dbg !1610
  br i1 %26, label %32, label %27, !dbg !1611

; <label>:27:                                     ; preds = %17
  %28 = load i8**, i8*** %7, align 8, !dbg !1612
  %29 = load i64, i64* %10, align 8, !dbg !1613
  %30 = getelementptr inbounds i8*, i8** %28, i64 %29, !dbg !1612
  %31 = load i8*, i8** %30, align 8, !dbg !1612
  store i8* %31, i8** %5, align 8, !dbg !1614
  br label %37, !dbg !1614

; <label>:32:                                     ; preds = %17
  br label %33, !dbg !1615

; <label>:33:                                     ; preds = %32
  %34 = load i64, i64* %10, align 8, !dbg !1616
  %35 = add i64 %34, 1, !dbg !1616
  store i64 %35, i64* %10, align 8, !dbg !1616
  br label %11, !dbg !1617, !llvm.loop !1618

; <label>:36:                                     ; preds = %11
  store i8* null, i8** %5, align 8, !dbg !1620
  br label %37, !dbg !1620

; <label>:37:                                     ; preds = %36, %27
  %38 = load i8*, i8** %5, align 8, !dbg !1621
  ret i8* %38, !dbg !1621
}

; Function Attrs: noinline nounwind uwtable
define void @close_stdout_set_file_name(i8*) #2 !dbg !1622 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1625, metadata !DIExpression()), !dbg !1626
  %3 = load i8*, i8** %2, align 8, !dbg !1627
  store i8* %3, i8** @file_name, align 8, !dbg !1628
  ret void, !dbg !1629
}

; Function Attrs: noinline nounwind uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) #2 !dbg !1630 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !1633, metadata !DIExpression()), !dbg !1634
  %4 = load i8, i8* %2, align 1, !dbg !1635
  %5 = trunc i8 %4 to i1, !dbg !1635
  %6 = zext i1 %5 to i8, !dbg !1636
  store i8 %6, i8* @ignore_EPIPE, align 1, !dbg !1636
  ret void, !dbg !1637
}

; Function Attrs: noinline nounwind uwtable
define void @close_stdout() #2 !dbg !1638 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1639
  %3 = call i32 @close_stream(%struct._IO_FILE* %2), !dbg !1641
  %4 = icmp ne i32 %3, 0, !dbg !1642
  br i1 %4, label %5, label %27, !dbg !1643

; <label>:5:                                      ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1644
  %7 = trunc i8 %6 to i1, !dbg !1644
  br i1 %7, label %8, label %12, !dbg !1645

; <label>:8:                                      ; preds = %5
  %9 = call i32* @__errno_location() #16, !dbg !1646
  %10 = load i32, i32* %9, align 4, !dbg !1646
  %11 = icmp eq i32 %10, 32, !dbg !1647
  br i1 %11, label %27, label %12, !dbg !1648

; <label>:12:                                     ; preds = %8, %5
  call void @llvm.dbg.declare(metadata i8** %1, metadata !1649, metadata !DIExpression()), !dbg !1651
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i32 0, i32 0), i8** %1, align 8, !dbg !1651
  %13 = load i8*, i8** @file_name, align 8, !dbg !1652
  %14 = icmp ne i8* %13, null, !dbg !1652
  br i1 %14, label %15, label %21, !dbg !1654

; <label>:15:                                     ; preds = %12
  %16 = call i32* @__errno_location() #16, !dbg !1655
  %17 = load i32, i32* %16, align 4, !dbg !1655
  %18 = load i8*, i8** @file_name, align 8, !dbg !1656
  %19 = call i8* @quotearg_colon(i8* %18), !dbg !1657
  %20 = load i8*, i8** %1, align 8, !dbg !1658
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.66, i32 0, i32 0), i8* %19, i8* %20), !dbg !1659
  br label %25, !dbg !1659

; <label>:21:                                     ; preds = %12
  %22 = call i32* @__errno_location() #16, !dbg !1660
  %23 = load i32, i32* %22, align 4, !dbg !1660
  %24 = load i8*, i8** %1, align 8, !dbg !1661
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.67, i32 0, i32 0), i8* %24), !dbg !1662
  br label %25

; <label>:25:                                     ; preds = %21, %15
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1663
  call void @_exit(i32 %26) #15, !dbg !1664
  unreachable, !dbg !1664

; <label>:27:                                     ; preds = %8, %0
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1665
  %29 = call i32 @close_stream(%struct._IO_FILE* %28), !dbg !1667
  %30 = icmp ne i32 %29, 0, !dbg !1668
  br i1 %30, label %31, label %33, !dbg !1669

; <label>:31:                                     ; preds = %27
  %32 = load volatile i32, i32* @exit_failure, align 4, !dbg !1670
  call void @_exit(i32 %32) #15, !dbg !1671
  unreachable, !dbg !1671

; <label>:33:                                     ; preds = %27
  ret void, !dbg !1672
}

; Function Attrs: noreturn
declare void @_exit(i32) #9

; Function Attrs: noinline nounwind readonly uwtable
define i8* @last_component(i8*) #8 !dbg !1673 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1676, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1678, metadata !DIExpression()), !dbg !1679
  %6 = load i8*, i8** %2, align 8, !dbg !1680
  %7 = getelementptr inbounds i8, i8* %6, i64 0, !dbg !1681
  store i8* %7, i8** %3, align 8, !dbg !1679
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1682, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1684, metadata !DIExpression()), !dbg !1685
  store i8 0, i8* %5, align 1, !dbg !1685
  br label %8, !dbg !1686

; <label>:8:                                      ; preds = %13, %1
  %9 = load i8*, i8** %3, align 8, !dbg !1687
  %10 = load i8, i8* %9, align 1, !dbg !1687
  %11 = sext i8 %10 to i32, !dbg !1687
  %12 = icmp eq i32 %11, 47, !dbg !1687
  br i1 %12, label %13, label %16, !dbg !1686

; <label>:13:                                     ; preds = %8
  %14 = load i8*, i8** %3, align 8, !dbg !1688
  %15 = getelementptr inbounds i8, i8* %14, i32 1, !dbg !1688
  store i8* %15, i8** %3, align 8, !dbg !1688
  br label %8, !dbg !1686, !llvm.loop !1689

; <label>:16:                                     ; preds = %8
  %17 = load i8*, i8** %3, align 8, !dbg !1690
  store i8* %17, i8** %4, align 8, !dbg !1692
  br label %18, !dbg !1693

; <label>:18:                                     ; preds = %35, %16
  %19 = load i8*, i8** %4, align 8, !dbg !1694
  %20 = load i8, i8* %19, align 1, !dbg !1696
  %21 = icmp ne i8 %20, 0, !dbg !1697
  br i1 %21, label %22, label %38, !dbg !1697

; <label>:22:                                     ; preds = %18
  %23 = load i8*, i8** %4, align 8, !dbg !1698
  %24 = load i8, i8* %23, align 1, !dbg !1698
  %25 = sext i8 %24 to i32, !dbg !1698
  %26 = icmp eq i32 %25, 47, !dbg !1698
  br i1 %26, label %27, label %28, !dbg !1701

; <label>:27:                                     ; preds = %22
  store i8 1, i8* %5, align 1, !dbg !1702
  br label %34, !dbg !1703

; <label>:28:                                     ; preds = %22
  %29 = load i8, i8* %5, align 1, !dbg !1704
  %30 = trunc i8 %29 to i1, !dbg !1704
  br i1 %30, label %31, label %33, !dbg !1706

; <label>:31:                                     ; preds = %28
  %32 = load i8*, i8** %4, align 8, !dbg !1707
  store i8* %32, i8** %3, align 8, !dbg !1709
  store i8 0, i8* %5, align 1, !dbg !1710
  br label %33, !dbg !1711

; <label>:33:                                     ; preds = %31, %28
  br label %34

; <label>:34:                                     ; preds = %33, %27
  br label %35, !dbg !1712

; <label>:35:                                     ; preds = %34
  %36 = load i8*, i8** %4, align 8, !dbg !1713
  %37 = getelementptr inbounds i8, i8* %36, i32 1, !dbg !1713
  store i8* %37, i8** %4, align 8, !dbg !1713
  br label %18, !dbg !1714, !llvm.loop !1715

; <label>:38:                                     ; preds = %18
  %39 = load i8*, i8** %3, align 8, !dbg !1717
  ret i8* %39, !dbg !1718
}

; Function Attrs: noinline nounwind readonly uwtable
define i64 @base_len(i8*) #8 !dbg !1719 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1722, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1724, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1726, metadata !DIExpression()), !dbg !1727
  store i64 0, i64* %4, align 8, !dbg !1727
  %5 = load i8*, i8** %2, align 8, !dbg !1728
  %6 = call i64 @strlen(i8* %5) #14, !dbg !1730
  store i64 %6, i64* %3, align 8, !dbg !1731
  br label %7, !dbg !1732

; <label>:7:                                      ; preds = %21, %1
  %8 = load i64, i64* %3, align 8, !dbg !1733
  %9 = icmp ult i64 1, %8, !dbg !1735
  br i1 %9, label %10, label %18, !dbg !1736

; <label>:10:                                     ; preds = %7
  %11 = load i8*, i8** %2, align 8, !dbg !1737
  %12 = load i64, i64* %3, align 8, !dbg !1737
  %13 = sub i64 %12, 1, !dbg !1737
  %14 = getelementptr inbounds i8, i8* %11, i64 %13, !dbg !1737
  %15 = load i8, i8* %14, align 1, !dbg !1737
  %16 = sext i8 %15 to i32, !dbg !1737
  %17 = icmp eq i32 %16, 47, !dbg !1737
  br label %18

; <label>:18:                                     ; preds = %10, %7
  %19 = phi i1 [ false, %7 ], [ %17, %10 ]
  br i1 %19, label %20, label %24, !dbg !1738

; <label>:20:                                     ; preds = %18
  br label %21, !dbg !1739

; <label>:21:                                     ; preds = %20
  %22 = load i64, i64* %3, align 8, !dbg !1740
  %23 = add i64 %22, -1, !dbg !1740
  store i64 %23, i64* %3, align 8, !dbg !1740
  br label %7, !dbg !1741, !llvm.loop !1742

; <label>:24:                                     ; preds = %18
  %25 = load i64, i64* %3, align 8, !dbg !1744
  ret i64 %25, !dbg !1745
}

; Function Attrs: noinline nounwind uwtable
define void @fdadvise(i32, i64, i64, i32) #2 !dbg !1746 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1754, metadata !DIExpression()), !dbg !1755
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1756, metadata !DIExpression()), !dbg !1757
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1758, metadata !DIExpression()), !dbg !1759
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1760, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1762, metadata !DIExpression()), !dbg !1764
  %10 = load i32, i32* %5, align 4, !dbg !1764
  %11 = load i64, i64* %6, align 8, !dbg !1764
  %12 = load i64, i64* %7, align 8, !dbg !1764
  %13 = load i32, i32* %8, align 4, !dbg !1764
  %14 = call i32 @posix_fadvise(i32 %10, i64 %11, i64 %12, i32 %13) #11, !dbg !1764
  store i32 %14, i32* %9, align 4, !dbg !1764
  %15 = load i32, i32* %9, align 4, !dbg !1764
  ret void, !dbg !1765
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) #5

; Function Attrs: noinline nounwind uwtable
define void @fadvise(%struct._IO_FILE*, i32) #2 !dbg !1766 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !1821, metadata !DIExpression()), !dbg !1822
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1823, metadata !DIExpression()), !dbg !1824
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1825
  %6 = icmp ne %struct._IO_FILE* %5, null, !dbg !1825
  br i1 %6, label %7, label %11, !dbg !1827

; <label>:7:                                      ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1828
  %9 = call i32 @fileno(%struct._IO_FILE* %8) #11, !dbg !1829
  %10 = load i32, i32* %4, align 4, !dbg !1830
  call void @fdadvise(i32 %9, i64 0, i64 0, i32 %10), !dbg !1831
  br label %11, !dbg !1831

; <label>:11:                                     ; preds = %7, %2
  ret void, !dbg !1832
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #5

; Function Attrs: noinline nounwind uwtable
define %struct._IO_FILE* @freopen_safer(i8*, i8*, %struct._IO_FILE*) #2 !dbg !1833 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1876, metadata !DIExpression()), !dbg !1877
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1878, metadata !DIExpression()), !dbg !1879
  store %struct._IO_FILE* %2, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !1880, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1882, metadata !DIExpression()), !dbg !1883
  store i8 0, i8* %7, align 1, !dbg !1883
  call void @llvm.dbg.declare(metadata i8* %8, metadata !1884, metadata !DIExpression()), !dbg !1885
  store i8 0, i8* %8, align 1, !dbg !1885
  call void @llvm.dbg.declare(metadata i8* %9, metadata !1886, metadata !DIExpression()), !dbg !1887
  store i8 0, i8* %9, align 1, !dbg !1887
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1888, metadata !DIExpression()), !dbg !1889
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !1890
  %12 = call i32 @fileno(%struct._IO_FILE* %11) #11, !dbg !1891
  switch i32 %12, label %13 [
    i32 2, label %18
    i32 1, label %23
    i32 0, label %28
  ], !dbg !1892

; <label>:13:                                     ; preds = %3
  %14 = call i32 @dup2(i32 2, i32 2) #11, !dbg !1893
  %15 = icmp ne i32 %14, 2, !dbg !1896
  br i1 %15, label %16, label %17, !dbg !1897

; <label>:16:                                     ; preds = %13
  store i8 1, i8* %9, align 1, !dbg !1898
  br label %17, !dbg !1899

; <label>:17:                                     ; preds = %16, %13
  br label %18, !dbg !1900

; <label>:18:                                     ; preds = %3, %17
  %19 = call i32 @dup2(i32 1, i32 1) #11, !dbg !1901
  %20 = icmp ne i32 %19, 1, !dbg !1903
  br i1 %20, label %21, label %22, !dbg !1904

; <label>:21:                                     ; preds = %18
  store i8 1, i8* %8, align 1, !dbg !1905
  br label %22, !dbg !1906

; <label>:22:                                     ; preds = %21, %18
  br label %23, !dbg !1907

; <label>:23:                                     ; preds = %3, %22
  %24 = call i32 @dup2(i32 0, i32 0) #11, !dbg !1908
  %25 = icmp ne i32 %24, 0, !dbg !1910
  br i1 %25, label %26, label %27, !dbg !1911

; <label>:26:                                     ; preds = %23
  store i8 1, i8* %7, align 1, !dbg !1912
  br label %27, !dbg !1913

; <label>:27:                                     ; preds = %26, %23
  br label %28, !dbg !1914

; <label>:28:                                     ; preds = %3, %27
  br label %29, !dbg !1915

; <label>:29:                                     ; preds = %28
  %30 = load i8, i8* %7, align 1, !dbg !1916
  %31 = trunc i8 %30 to i1, !dbg !1916
  br i1 %31, label %32, label %35, !dbg !1918

; <label>:32:                                     ; preds = %29
  %33 = call zeroext i1 @protect_fd(i32 0), !dbg !1919
  br i1 %33, label %35, label %34, !dbg !1920

; <label>:34:                                     ; preds = %32
  store %struct._IO_FILE* null, %struct._IO_FILE** %6, align 8, !dbg !1921
  br label %54, !dbg !1922

; <label>:35:                                     ; preds = %32, %29
  %36 = load i8, i8* %8, align 1, !dbg !1923
  %37 = trunc i8 %36 to i1, !dbg !1923
  br i1 %37, label %38, label %41, !dbg !1925

; <label>:38:                                     ; preds = %35
  %39 = call zeroext i1 @protect_fd(i32 1), !dbg !1926
  br i1 %39, label %41, label %40, !dbg !1927

; <label>:40:                                     ; preds = %38
  store %struct._IO_FILE* null, %struct._IO_FILE** %6, align 8, !dbg !1928
  br label %53, !dbg !1929

; <label>:41:                                     ; preds = %38, %35
  %42 = load i8, i8* %9, align 1, !dbg !1930
  %43 = trunc i8 %42 to i1, !dbg !1930
  br i1 %43, label %44, label %47, !dbg !1932

; <label>:44:                                     ; preds = %41
  %45 = call zeroext i1 @protect_fd(i32 2), !dbg !1933
  br i1 %45, label %47, label %46, !dbg !1934

; <label>:46:                                     ; preds = %44
  store %struct._IO_FILE* null, %struct._IO_FILE** %6, align 8, !dbg !1935
  br label %52, !dbg !1936

; <label>:47:                                     ; preds = %44, %41
  %48 = load i8*, i8** %4, align 8, !dbg !1937
  %49 = load i8*, i8** %5, align 8, !dbg !1938
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !1939
  %51 = call %struct._IO_FILE* @freopen(i8* %48, i8* %49, %struct._IO_FILE* %50), !dbg !1940
  store %struct._IO_FILE* %51, %struct._IO_FILE** %6, align 8, !dbg !1941
  br label %52

; <label>:52:                                     ; preds = %47, %46
  br label %53

; <label>:53:                                     ; preds = %52, %40
  br label %54

; <label>:54:                                     ; preds = %53, %34
  %55 = call i32* @__errno_location() #16, !dbg !1942
  %56 = load i32, i32* %55, align 4, !dbg !1942
  store i32 %56, i32* %10, align 4, !dbg !1943
  %57 = load i8, i8* %9, align 1, !dbg !1944
  %58 = trunc i8 %57 to i1, !dbg !1944
  br i1 %58, label %59, label %61, !dbg !1946

; <label>:59:                                     ; preds = %54
  %60 = call i32 @close(i32 2), !dbg !1947
  br label %61, !dbg !1947

; <label>:61:                                     ; preds = %59, %54
  %62 = load i8, i8* %8, align 1, !dbg !1948
  %63 = trunc i8 %62 to i1, !dbg !1948
  br i1 %63, label %64, label %66, !dbg !1950

; <label>:64:                                     ; preds = %61
  %65 = call i32 @close(i32 1), !dbg !1951
  br label %66, !dbg !1951

; <label>:66:                                     ; preds = %64, %61
  %67 = load i8, i8* %7, align 1, !dbg !1952
  %68 = trunc i8 %67 to i1, !dbg !1952
  br i1 %68, label %69, label %71, !dbg !1954

; <label>:69:                                     ; preds = %66
  %70 = call i32 @close(i32 0), !dbg !1955
  br label %71, !dbg !1955

; <label>:71:                                     ; preds = %69, %66
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !1956
  %73 = icmp ne %struct._IO_FILE* %72, null, !dbg !1956
  br i1 %73, label %77, label %74, !dbg !1958

; <label>:74:                                     ; preds = %71
  %75 = load i32, i32* %10, align 4, !dbg !1959
  %76 = call i32* @__errno_location() #16, !dbg !1960
  store i32 %75, i32* %76, align 4, !dbg !1961
  br label %77, !dbg !1960

; <label>:77:                                     ; preds = %74, %71
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !1962
  ret %struct._IO_FILE* %78, !dbg !1963
}

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) #5

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @protect_fd(i32) #2 !dbg !1964 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1967, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1969, metadata !DIExpression()), !dbg !1970
  %5 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), i32 0), !dbg !1971
  store i32 %5, i32* %4, align 4, !dbg !1970
  %6 = load i32, i32* %4, align 4, !dbg !1972
  %7 = load i32, i32* %3, align 4, !dbg !1974
  %8 = icmp ne i32 %6, %7, !dbg !1975
  br i1 %8, label %9, label %17, !dbg !1976

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* %4, align 4, !dbg !1977
  %11 = icmp sle i32 0, %10, !dbg !1980
  br i1 %11, label %12, label %16, !dbg !1981

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %4, align 4, !dbg !1982
  %14 = call i32 @close(i32 %13), !dbg !1984
  %15 = call i32* @__errno_location() #16, !dbg !1985
  store i32 9, i32* %15, align 4, !dbg !1986
  br label %16, !dbg !1987

; <label>:16:                                     ; preds = %12, %9
  store i1 false, i1* %2, align 1, !dbg !1988
  br label %18, !dbg !1988

; <label>:17:                                     ; preds = %1
  store i1 true, i1* %2, align 1, !dbg !1989
  br label %18, !dbg !1989

; <label>:18:                                     ; preds = %17, %16
  %19 = load i1, i1* %2, align 1, !dbg !1990
  ret i1 %19, !dbg !1990
}

declare %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) #3

declare i32 @close(i32) #3

declare i32 @open(i8*, i32, ...) #3

; Function Attrs: noinline nounwind uwtable
define zeroext i1 @hard_locale(i32) #2 !dbg !1991 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1992, metadata !DIExpression()), !dbg !1993
  call void @llvm.dbg.declare(metadata i8* %3, metadata !1994, metadata !DIExpression()), !dbg !1995
  store i8 1, i8* %3, align 1, !dbg !1995
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1996, metadata !DIExpression()), !dbg !1997
  %5 = load i32, i32* %2, align 4, !dbg !1998
  %6 = call i8* @setlocale(i32 %5, i8* null) #11, !dbg !1999
  store i8* %6, i8** %4, align 8, !dbg !1997
  %7 = load i8*, i8** %4, align 8, !dbg !2000
  %8 = icmp ne i8* %7, null, !dbg !2000
  br i1 %8, label %9, label %19, !dbg !2002

; <label>:9:                                      ; preds = %1
  %10 = load i8*, i8** %4, align 8, !dbg !2003
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i32 0, i32 0)) #14, !dbg !2008
  %12 = icmp eq i32 %11, 0, !dbg !2009
  br i1 %12, label %17, label %13, !dbg !2010

; <label>:13:                                     ; preds = %9
  %14 = load i8*, i8** %4, align 8, !dbg !2011
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.80, i32 0, i32 0)) #14, !dbg !2012
  %16 = icmp eq i32 %15, 0, !dbg !2013
  br i1 %16, label %17, label %18, !dbg !2014

; <label>:17:                                     ; preds = %13, %9
  store i8 0, i8* %3, align 1, !dbg !2015
  br label %18, !dbg !2016

; <label>:18:                                     ; preds = %17, %13
  br label %19, !dbg !2017

; <label>:19:                                     ; preds = %18, %1
  %20 = load i8, i8* %3, align 1, !dbg !2018
  %21 = trunc i8 %20 to i1, !dbg !2018
  ret i1 %21, !dbg !2019
}

; Function Attrs: noinline nounwind uwtable
define void @initbuffer(%struct.linebuffer*) #2 !dbg !2020 {
  %2 = alloca %struct.linebuffer*, align 8
  store %struct.linebuffer* %0, %struct.linebuffer** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %2, metadata !2030, metadata !DIExpression()), !dbg !2031
  %3 = load %struct.linebuffer*, %struct.linebuffer** %2, align 8, !dbg !2032
  %4 = bitcast %struct.linebuffer* %3 to i8*, !dbg !2033
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 24, i32 8, i1 false), !dbg !2033
  ret void, !dbg !2034
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #10

; Function Attrs: noinline nounwind uwtable
define %struct.linebuffer* @readlinebuffer(%struct.linebuffer*, %struct._IO_FILE*) #2 !dbg !2035 {
  %3 = alloca %struct.linebuffer*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  store %struct.linebuffer* %0, %struct.linebuffer** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %3, metadata !2078, metadata !DIExpression()), !dbg !2079
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !2080, metadata !DIExpression()), !dbg !2081
  %5 = load %struct.linebuffer*, %struct.linebuffer** %3, align 8, !dbg !2082
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !2083
  %7 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %5, %struct._IO_FILE* %6, i8 signext 10), !dbg !2084
  ret %struct.linebuffer* %7, !dbg !2085
}

; Function Attrs: noinline nounwind uwtable
define %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer*, %struct._IO_FILE*, i8 signext) #2 !dbg !2086 {
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
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %5, metadata !2089, metadata !DIExpression()), !dbg !2090
  store %struct._IO_FILE* %1, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !2091, metadata !DIExpression()), !dbg !2092
  store i8 %2, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !2093, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2095, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2097, metadata !DIExpression()), !dbg !2098
  %13 = load %struct.linebuffer*, %struct.linebuffer** %5, align 8, !dbg !2099
  %14 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %13, i32 0, i32 2, !dbg !2100
  %15 = load i8*, i8** %14, align 8, !dbg !2100
  store i8* %15, i8** %9, align 8, !dbg !2098
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2101, metadata !DIExpression()), !dbg !2102
  %16 = load %struct.linebuffer*, %struct.linebuffer** %5, align 8, !dbg !2103
  %17 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %16, i32 0, i32 2, !dbg !2104
  %18 = load i8*, i8** %17, align 8, !dbg !2104
  store i8* %18, i8** %10, align 8, !dbg !2102
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2105, metadata !DIExpression()), !dbg !2106
  %19 = load i8*, i8** %9, align 8, !dbg !2107
  %20 = load %struct.linebuffer*, %struct.linebuffer** %5, align 8, !dbg !2108
  %21 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %20, i32 0, i32 0, !dbg !2109
  %22 = load i64, i64* %21, align 8, !dbg !2109
  %23 = getelementptr inbounds i8, i8* %19, i64 %22, !dbg !2110
  store i8* %23, i8** %11, align 8, !dbg !2106
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !2111
  %25 = call i32 @feof_unlocked(%struct._IO_FILE* %24) #11, !dbg !2111
  %26 = icmp ne i32 %25, 0, !dbg !2111
  br i1 %26, label %27, label %28, !dbg !2113

; <label>:27:                                     ; preds = %3
  store %struct.linebuffer* null, %struct.linebuffer** %4, align 8, !dbg !2114
  br label %97, !dbg !2114

; <label>:28:                                     ; preds = %3
  br label %29, !dbg !2115, !llvm.loop !2116

; <label>:29:                                     ; preds = %83, %28
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !2118
  %31 = call i32 @getc_unlocked(%struct._IO_FILE* %30), !dbg !2118
  store i32 %31, i32* %8, align 4, !dbg !2120
  %32 = load i32, i32* %8, align 4, !dbg !2121
  %33 = icmp eq i32 %32, -1, !dbg !2123
  br i1 %33, label %34, label %55, !dbg !2124

; <label>:34:                                     ; preds = %29
  %35 = load i8*, i8** %10, align 8, !dbg !2125
  %36 = load i8*, i8** %9, align 8, !dbg !2128
  %37 = icmp eq i8* %35, %36, !dbg !2129
  br i1 %37, label %42, label %38, !dbg !2130

; <label>:38:                                     ; preds = %34
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !2131
  %40 = call i32 @ferror_unlocked(%struct._IO_FILE* %39) #11, !dbg !2131
  %41 = icmp ne i32 %40, 0, !dbg !2131
  br i1 %41, label %42, label %43, !dbg !2132

; <label>:42:                                     ; preds = %38, %34
  store %struct.linebuffer* null, %struct.linebuffer** %4, align 8, !dbg !2133
  br label %97, !dbg !2133

; <label>:43:                                     ; preds = %38
  %44 = load i8*, i8** %10, align 8, !dbg !2134
  %45 = getelementptr inbounds i8, i8* %44, i64 -1, !dbg !2134
  %46 = load i8, i8* %45, align 1, !dbg !2134
  %47 = sext i8 %46 to i32, !dbg !2134
  %48 = load i8, i8* %7, align 1, !dbg !2136
  %49 = sext i8 %48 to i32, !dbg !2136
  %50 = icmp eq i32 %47, %49, !dbg !2137
  br i1 %50, label %51, label %52, !dbg !2138

; <label>:51:                                     ; preds = %43
  br label %88, !dbg !2139

; <label>:52:                                     ; preds = %43
  %53 = load i8, i8* %7, align 1, !dbg !2140
  %54 = sext i8 %53 to i32, !dbg !2140
  store i32 %54, i32* %8, align 4, !dbg !2141
  br label %55, !dbg !2142

; <label>:55:                                     ; preds = %52, %29
  %56 = load i8*, i8** %10, align 8, !dbg !2143
  %57 = load i8*, i8** %11, align 8, !dbg !2145
  %58 = icmp eq i8* %56, %57, !dbg !2146
  br i1 %58, label %59, label %78, !dbg !2147

; <label>:59:                                     ; preds = %55
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2148, metadata !DIExpression()), !dbg !2150
  %60 = load %struct.linebuffer*, %struct.linebuffer** %5, align 8, !dbg !2151
  %61 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %60, i32 0, i32 0, !dbg !2152
  %62 = load i64, i64* %61, align 8, !dbg !2152
  store i64 %62, i64* %12, align 8, !dbg !2150
  %63 = load i8*, i8** %9, align 8, !dbg !2153
  %64 = load %struct.linebuffer*, %struct.linebuffer** %5, align 8, !dbg !2154
  %65 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %64, i32 0, i32 0, !dbg !2155
  %66 = call i8* @x2realloc(i8* %63, i64* %65), !dbg !2156
  store i8* %66, i8** %9, align 8, !dbg !2157
  %67 = load i8*, i8** %9, align 8, !dbg !2158
  %68 = load i64, i64* %12, align 8, !dbg !2159
  %69 = getelementptr inbounds i8, i8* %67, i64 %68, !dbg !2160
  store i8* %69, i8** %10, align 8, !dbg !2161
  %70 = load i8*, i8** %9, align 8, !dbg !2162
  %71 = load %struct.linebuffer*, %struct.linebuffer** %5, align 8, !dbg !2163
  %72 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %71, i32 0, i32 2, !dbg !2164
  store i8* %70, i8** %72, align 8, !dbg !2165
  %73 = load i8*, i8** %9, align 8, !dbg !2166
  %74 = load %struct.linebuffer*, %struct.linebuffer** %5, align 8, !dbg !2167
  %75 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %74, i32 0, i32 0, !dbg !2168
  %76 = load i64, i64* %75, align 8, !dbg !2168
  %77 = getelementptr inbounds i8, i8* %73, i64 %76, !dbg !2169
  store i8* %77, i8** %11, align 8, !dbg !2170
  br label %78, !dbg !2171

; <label>:78:                                     ; preds = %59, %55
  %79 = load i32, i32* %8, align 4, !dbg !2172
  %80 = trunc i32 %79 to i8, !dbg !2172
  %81 = load i8*, i8** %10, align 8, !dbg !2173
  %82 = getelementptr inbounds i8, i8* %81, i32 1, !dbg !2173
  store i8* %82, i8** %10, align 8, !dbg !2173
  store i8 %80, i8* %81, align 1, !dbg !2174
  br label %83, !dbg !2175

; <label>:83:                                     ; preds = %78
  %84 = load i32, i32* %8, align 4, !dbg !2176
  %85 = load i8, i8* %7, align 1, !dbg !2177
  %86 = sext i8 %85 to i32, !dbg !2177
  %87 = icmp ne i32 %84, %86, !dbg !2178
  br i1 %87, label %29, label %88, !dbg !2175, !llvm.loop !2116

; <label>:88:                                     ; preds = %83, %51
  %89 = load i8*, i8** %10, align 8, !dbg !2179
  %90 = load i8*, i8** %9, align 8, !dbg !2180
  %91 = ptrtoint i8* %89 to i64, !dbg !2181
  %92 = ptrtoint i8* %90 to i64, !dbg !2181
  %93 = sub i64 %91, %92, !dbg !2181
  %94 = load %struct.linebuffer*, %struct.linebuffer** %5, align 8, !dbg !2182
  %95 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %94, i32 0, i32 1, !dbg !2183
  store i64 %93, i64* %95, align 8, !dbg !2184
  %96 = load %struct.linebuffer*, %struct.linebuffer** %5, align 8, !dbg !2185
  store %struct.linebuffer* %96, %struct.linebuffer** %4, align 8, !dbg !2186
  br label %97, !dbg !2186

; <label>:97:                                     ; preds = %88, %42, %27
  %98 = load %struct.linebuffer*, %struct.linebuffer** %4, align 8, !dbg !2187
  ret %struct.linebuffer* %98, !dbg !2187
}

declare i32 @getc_unlocked(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind uwtable
define void @freebuffer(%struct.linebuffer*) #2 !dbg !2188 {
  %2 = alloca %struct.linebuffer*, align 8
  store %struct.linebuffer* %0, %struct.linebuffer** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %2, metadata !2189, metadata !DIExpression()), !dbg !2190
  %3 = load %struct.linebuffer*, %struct.linebuffer** %2, align 8, !dbg !2191
  %4 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %3, i32 0, i32 2, !dbg !2192
  %5 = load i8*, i8** %4, align 8, !dbg !2192
  call void @free(i8* %5) #11, !dbg !2193
  ret void, !dbg !2194
}

; Function Attrs: noinline nounwind readonly uwtable
define i32 @memcasecmp(i8*, i8*, i64) #8 !dbg !2195 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2200, metadata !DIExpression()), !dbg !2201
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2202, metadata !DIExpression()), !dbg !2203
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2204, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2206, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2208, metadata !DIExpression()), !dbg !2209
  %16 = load i8*, i8** %5, align 8, !dbg !2210
  store i8* %16, i8** %9, align 8, !dbg !2209
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2211, metadata !DIExpression()), !dbg !2212
  %17 = load i8*, i8** %6, align 8, !dbg !2213
  store i8* %17, i8** %10, align 8, !dbg !2212
  store i64 0, i64* %8, align 8, !dbg !2214
  br label %18, !dbg !2216

; <label>:18:                                     ; preds = %45, %3
  %19 = load i64, i64* %8, align 8, !dbg !2217
  %20 = load i64, i64* %7, align 8, !dbg !2219
  %21 = icmp ult i64 %19, %20, !dbg !2220
  br i1 %21, label %22, label %48, !dbg !2221

; <label>:22:                                     ; preds = %18
  call void @llvm.dbg.declare(metadata i8* %11, metadata !2222, metadata !DIExpression()), !dbg !2224
  %23 = load i8*, i8** %9, align 8, !dbg !2225
  %24 = load i64, i64* %8, align 8, !dbg !2226
  %25 = getelementptr inbounds i8, i8* %23, i64 %24, !dbg !2225
  %26 = load i8, i8* %25, align 1, !dbg !2225
  store i8 %26, i8* %11, align 1, !dbg !2224
  call void @llvm.dbg.declare(metadata i8* %12, metadata !2227, metadata !DIExpression()), !dbg !2228
  %27 = load i8*, i8** %10, align 8, !dbg !2229
  %28 = load i64, i64* %8, align 8, !dbg !2230
  %29 = getelementptr inbounds i8, i8* %27, i64 %28, !dbg !2229
  %30 = load i8, i8* %29, align 1, !dbg !2229
  store i8 %30, i8* %12, align 1, !dbg !2228
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2231, metadata !DIExpression()), !dbg !2232
  %31 = load i8, i8* %11, align 1, !dbg !2233
  %32 = zext i8 %31 to i32, !dbg !2233
  %33 = call i32 @toupper(i32 %32) #14, !dbg !2234
  store i32 %33, i32* %13, align 4, !dbg !2232
  call void @llvm.dbg.declare(metadata i32* %14, metadata !2235, metadata !DIExpression()), !dbg !2236
  %34 = load i8, i8* %12, align 1, !dbg !2237
  %35 = zext i8 %34 to i32, !dbg !2237
  %36 = call i32 @toupper(i32 %35) #14, !dbg !2238
  store i32 %36, i32* %14, align 4, !dbg !2236
  call void @llvm.dbg.declare(metadata i32* %15, metadata !2239, metadata !DIExpression()), !dbg !2240
  %37 = load i32, i32* %13, align 4, !dbg !2241
  %38 = load i32, i32* %14, align 4, !dbg !2242
  %39 = sub nsw i32 %37, %38, !dbg !2243
  store i32 %39, i32* %15, align 4, !dbg !2240
  %40 = load i32, i32* %15, align 4, !dbg !2244
  %41 = icmp ne i32 %40, 0, !dbg !2244
  br i1 %41, label %42, label %44, !dbg !2246

; <label>:42:                                     ; preds = %22
  %43 = load i32, i32* %15, align 4, !dbg !2247
  store i32 %43, i32* %4, align 4, !dbg !2248
  br label %49, !dbg !2248

; <label>:44:                                     ; preds = %22
  br label %45, !dbg !2249

; <label>:45:                                     ; preds = %44
  %46 = load i64, i64* %8, align 8, !dbg !2250
  %47 = add i64 %46, 1, !dbg !2250
  store i64 %47, i64* %8, align 8, !dbg !2250
  br label %18, !dbg !2251, !llvm.loop !2252

; <label>:48:                                     ; preds = %18
  store i32 0, i32* %4, align 4, !dbg !2254
  br label %49, !dbg !2254

; <label>:49:                                     ; preds = %48, %42
  %50 = load i32, i32* %4, align 4, !dbg !2255
  ret i32 %50, !dbg !2255
}

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) #6

; Function Attrs: noinline nounwind uwtable
define i32 @posix2_version() #2 !dbg !2256 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %1, metadata !2259, metadata !DIExpression()), !dbg !2260
  store i64 200809, i64* %1, align 8, !dbg !2260
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2261, metadata !DIExpression()), !dbg !2262
  %5 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.89, i32 0, i32 0)) #11, !dbg !2263
  store i8* %5, i8** %2, align 8, !dbg !2262
  %6 = load i8*, i8** %2, align 8, !dbg !2264
  %7 = icmp ne i8* %6, null, !dbg !2264
  br i1 %7, label %8, label %22, !dbg !2266

; <label>:8:                                      ; preds = %0
  %9 = load i8*, i8** %2, align 8, !dbg !2267
  %10 = load i8, i8* %9, align 1, !dbg !2268
  %11 = sext i8 %10 to i32, !dbg !2268
  %12 = icmp ne i32 %11, 0, !dbg !2268
  br i1 %12, label %13, label %22, !dbg !2269

; <label>:13:                                     ; preds = %8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2270, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2273, metadata !DIExpression()), !dbg !2274
  %14 = load i8*, i8** %2, align 8, !dbg !2275
  %15 = call i64 @strtol(i8* %14, i8** %3, i32 10) #11, !dbg !2276
  store i64 %15, i64* %4, align 8, !dbg !2274
  %16 = load i8*, i8** %3, align 8, !dbg !2277
  %17 = load i8, i8* %16, align 1, !dbg !2279
  %18 = icmp ne i8 %17, 0, !dbg !2279
  br i1 %18, label %21, label %19, !dbg !2280

; <label>:19:                                     ; preds = %13
  %20 = load i64, i64* %4, align 8, !dbg !2281
  store i64 %20, i64* %1, align 8, !dbg !2282
  br label %21, !dbg !2283

; <label>:21:                                     ; preds = %19, %13
  br label %22, !dbg !2284

; <label>:22:                                     ; preds = %21, %8, %0
  %23 = load i64, i64* %1, align 8, !dbg !2285
  %24 = icmp slt i64 %23, -2147483648, !dbg !2286
  br i1 %24, label %25, label %26, !dbg !2285

; <label>:25:                                     ; preds = %22
  br label %34, !dbg !2285

; <label>:26:                                     ; preds = %22
  %27 = load i64, i64* %1, align 8, !dbg !2287
  %28 = icmp slt i64 %27, 2147483647, !dbg !2288
  br i1 %28, label %29, label %31, !dbg !2287

; <label>:29:                                     ; preds = %26
  %30 = load i64, i64* %1, align 8, !dbg !2289
  br label %32, !dbg !2287

; <label>:31:                                     ; preds = %26
  br label %32, !dbg !2287

; <label>:32:                                     ; preds = %31, %29
  %33 = phi i64 [ %30, %29 ], [ 2147483647, %31 ], !dbg !2287
  br label %34, !dbg !2285

; <label>:34:                                     ; preds = %32, %25
  %35 = phi i64 [ -2147483648, %25 ], [ %33, %32 ], !dbg !2285
  %36 = trunc i64 %35 to i32, !dbg !2285
  ret i32 %36, !dbg !2290
}

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #5

; Function Attrs: noinline nounwind uwtable
define void @set_program_name(i8*) #2 !dbg !2291 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2292, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2294, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2296, metadata !DIExpression()), !dbg !2297
  %5 = load i8*, i8** %2, align 8, !dbg !2298
  %6 = icmp eq i8* %5, null, !dbg !2300
  br i1 %6, label %7, label %10, !dbg !2301

; <label>:7:                                      ; preds = %1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2302
  %9 = call i32 @fputs(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.94, i32 0, i32 0), %struct._IO_FILE* %8), !dbg !2304
  call void @abort() #13, !dbg !2305
  unreachable, !dbg !2305

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %2, align 8, !dbg !2306
  %12 = call i8* @strrchr(i8* %11, i32 47) #14, !dbg !2307
  store i8* %12, i8** %3, align 8, !dbg !2308
  %13 = load i8*, i8** %3, align 8, !dbg !2309
  %14 = icmp ne i8* %13, null, !dbg !2310
  br i1 %14, label %15, label %18, !dbg !2309

; <label>:15:                                     ; preds = %10
  %16 = load i8*, i8** %3, align 8, !dbg !2311
  %17 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !2312
  br label %20, !dbg !2309

; <label>:18:                                     ; preds = %10
  %19 = load i8*, i8** %2, align 8, !dbg !2313
  br label %20, !dbg !2309

; <label>:20:                                     ; preds = %18, %15
  %21 = phi i8* [ %17, %15 ], [ %19, %18 ], !dbg !2309
  store i8* %21, i8** %4, align 8, !dbg !2314
  %22 = load i8*, i8** %4, align 8, !dbg !2315
  %23 = load i8*, i8** %2, align 8, !dbg !2317
  %24 = ptrtoint i8* %22 to i64, !dbg !2318
  %25 = ptrtoint i8* %23 to i64, !dbg !2318
  %26 = sub i64 %24, %25, !dbg !2318
  %27 = icmp sge i64 %26, 7, !dbg !2319
  br i1 %27, label %28, label %43, !dbg !2320

; <label>:28:                                     ; preds = %20
  %29 = load i8*, i8** %4, align 8, !dbg !2321
  %30 = getelementptr inbounds i8, i8* %29, i64 -7, !dbg !2322
  %31 = call i32 @strncmp(i8* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.95, i32 0, i32 0), i64 7) #14, !dbg !2323
  %32 = icmp eq i32 %31, 0, !dbg !2324
  br i1 %32, label %33, label %43, !dbg !2325

; <label>:33:                                     ; preds = %28
  %34 = load i8*, i8** %4, align 8, !dbg !2326
  store i8* %34, i8** %2, align 8, !dbg !2328
  %35 = load i8*, i8** %4, align 8, !dbg !2329
  %36 = call i32 @strncmp(i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.96, i32 0, i32 0), i64 3) #14, !dbg !2331
  %37 = icmp eq i32 %36, 0, !dbg !2332
  br i1 %37, label %38, label %42, !dbg !2333

; <label>:38:                                     ; preds = %33
  %39 = load i8*, i8** %4, align 8, !dbg !2334
  %40 = getelementptr inbounds i8, i8* %39, i64 3, !dbg !2336
  store i8* %40, i8** %2, align 8, !dbg !2337
  %41 = load i8*, i8** %2, align 8, !dbg !2338
  store i8* %41, i8** @program_invocation_short_name, align 8, !dbg !2339
  br label %42, !dbg !2340

; <label>:42:                                     ; preds = %38, %33
  br label %43, !dbg !2341

; <label>:43:                                     ; preds = %42, %28, %20
  %44 = load i8*, i8** %2, align 8, !dbg !2342
  store i8* %44, i8** @program_name, align 8, !dbg !2343
  %45 = load i8*, i8** %2, align 8, !dbg !2344
  store i8* %45, i8** @program_invocation_name, align 8, !dbg !2345
  ret void, !dbg !2346
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #3

; Function Attrs: noreturn nounwind
declare void @abort() #4

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #6

; Function Attrs: noinline nounwind uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) #2 !dbg !2347 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !2351, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2353, metadata !DIExpression()), !dbg !2354
  %5 = call i32* @__errno_location() #16, !dbg !2355
  %6 = load i32, i32* %5, align 4, !dbg !2355
  store i32 %6, i32* %3, align 4, !dbg !2354
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !2356, metadata !DIExpression()), !dbg !2357
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !2358
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !2358
  br i1 %8, label %9, label %11, !dbg !2358

; <label>:9:                                      ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !2359
  br label %12, !dbg !2358

; <label>:11:                                     ; preds = %1
  br label %12, !dbg !2358

; <label>:12:                                     ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ], !dbg !2358
  %14 = bitcast %struct.quoting_options* %13 to i8*, !dbg !2358
  %15 = call noalias i8* @xmemdup(i8* %14, i64 56), !dbg !2360
  %16 = bitcast i8* %15 to %struct.quoting_options*, !dbg !2360
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8, !dbg !2357
  %17 = load i32, i32* %3, align 4, !dbg !2361
  %18 = call i32* @__errno_location() #16, !dbg !2362
  store i32 %17, i32* %18, align 4, !dbg !2363
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2364
  ret %struct.quoting_options* %19, !dbg !2365
}

; Function Attrs: noinline nounwind uwtable
define i32 @get_quoting_style(%struct.quoting_options*) #2 !dbg !2366 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !2369, metadata !DIExpression()), !dbg !2370
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !2371
  %4 = icmp ne %struct.quoting_options* %3, null, !dbg !2371
  br i1 %4, label %5, label %7, !dbg !2371

; <label>:5:                                      ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !2372
  br label %8, !dbg !2371

; <label>:7:                                      ; preds = %1
  br label %8, !dbg !2371

; <label>:8:                                      ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ], !dbg !2371
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0, !dbg !2373
  %11 = load i32, i32* %10, align 8, !dbg !2373
  ret i32 %11, !dbg !2374
}

; Function Attrs: noinline nounwind uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) #2 !dbg !2375 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !2378, metadata !DIExpression()), !dbg !2379
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2380, metadata !DIExpression()), !dbg !2381
  %5 = load i32, i32* %4, align 4, !dbg !2382
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !2383
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !2383
  br i1 %7, label %8, label %10, !dbg !2383

; <label>:8:                                      ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !2384
  br label %11, !dbg !2383

; <label>:10:                                     ; preds = %2
  br label %11, !dbg !2383

; <label>:11:                                     ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ], !dbg !2383
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0, !dbg !2385
  store i32 %5, i32* %13, align 8, !dbg !2386
  ret void, !dbg !2387
}

; Function Attrs: noinline nounwind uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) #2 !dbg !2388 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !2391, metadata !DIExpression()), !dbg !2392
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !2393, metadata !DIExpression()), !dbg !2394
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2395, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.declare(metadata i8* %7, metadata !2397, metadata !DIExpression()), !dbg !2398
  %11 = load i8, i8* %5, align 1, !dbg !2399
  store i8 %11, i8* %7, align 1, !dbg !2398
  call void @llvm.dbg.declare(metadata i32** %8, metadata !2400, metadata !DIExpression()), !dbg !2402
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2403
  %13 = icmp ne %struct.quoting_options* %12, null, !dbg !2403
  br i1 %13, label %14, label %16, !dbg !2403

; <label>:14:                                     ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2404
  br label %17, !dbg !2403

; <label>:16:                                     ; preds = %3
  br label %17, !dbg !2403

; <label>:17:                                     ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ], !dbg !2403
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2, !dbg !2405
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i32 0, i32 0, !dbg !2406
  %21 = load i8, i8* %7, align 1, !dbg !2407
  %22 = zext i8 %21 to i64, !dbg !2407
  %23 = udiv i64 %22, 32, !dbg !2408
  %24 = getelementptr inbounds i32, i32* %20, i64 %23, !dbg !2409
  store i32* %24, i32** %8, align 8, !dbg !2402
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2410, metadata !DIExpression()), !dbg !2411
  %25 = load i8, i8* %7, align 1, !dbg !2412
  %26 = zext i8 %25 to i64, !dbg !2412
  %27 = urem i64 %26, 32, !dbg !2413
  %28 = trunc i64 %27 to i32, !dbg !2412
  store i32 %28, i32* %9, align 4, !dbg !2411
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2414, metadata !DIExpression()), !dbg !2415
  %29 = load i32*, i32** %8, align 8, !dbg !2416
  %30 = load i32, i32* %29, align 4, !dbg !2417
  %31 = load i32, i32* %9, align 4, !dbg !2418
  %32 = lshr i32 %30, %31, !dbg !2419
  %33 = and i32 %32, 1, !dbg !2420
  store i32 %33, i32* %10, align 4, !dbg !2415
  %34 = load i32, i32* %6, align 4, !dbg !2421
  %35 = and i32 %34, 1, !dbg !2422
  %36 = load i32, i32* %10, align 4, !dbg !2423
  %37 = xor i32 %35, %36, !dbg !2424
  %38 = load i32, i32* %9, align 4, !dbg !2425
  %39 = shl i32 %37, %38, !dbg !2426
  %40 = load i32*, i32** %8, align 8, !dbg !2427
  %41 = load i32, i32* %40, align 4, !dbg !2428
  %42 = xor i32 %41, %39, !dbg !2428
  store i32 %42, i32* %40, align 4, !dbg !2428
  %43 = load i32, i32* %10, align 4, !dbg !2429
  ret i32 %43, !dbg !2430
}

; Function Attrs: noinline nounwind uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) #2 !dbg !2431 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !2434, metadata !DIExpression()), !dbg !2435
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2436, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2438, metadata !DIExpression()), !dbg !2439
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !2440
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !2440
  br i1 %7, label %9, label %8, !dbg !2442

; <label>:8:                                      ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8, !dbg !2443
  br label %9, !dbg !2444

; <label>:9:                                      ; preds = %8, %2
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !2445
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1, !dbg !2446
  %12 = load i32, i32* %11, align 4, !dbg !2446
  store i32 %12, i32* %5, align 4, !dbg !2447
  %13 = load i32, i32* %4, align 4, !dbg !2448
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !2449
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1, !dbg !2450
  store i32 %13, i32* %15, align 4, !dbg !2451
  %16 = load i32, i32* %5, align 4, !dbg !2452
  ret i32 %16, !dbg !2453
}

; Function Attrs: noinline nounwind uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) #2 !dbg !2454 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !2457, metadata !DIExpression()), !dbg !2458
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2459, metadata !DIExpression()), !dbg !2460
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2461, metadata !DIExpression()), !dbg !2462
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2463
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !2463
  br i1 %8, label %10, label %9, !dbg !2465

; <label>:9:                                      ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8, !dbg !2466
  br label %10, !dbg !2467

; <label>:10:                                     ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2468
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0, !dbg !2469
  store i32 8, i32* %12, align 8, !dbg !2470
  %13 = load i8*, i8** %5, align 8, !dbg !2471
  %14 = icmp ne i8* %13, null, !dbg !2471
  br i1 %14, label %15, label %18, !dbg !2473

; <label>:15:                                     ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !2474
  %17 = icmp ne i8* %16, null, !dbg !2474
  br i1 %17, label %19, label %18, !dbg !2475

; <label>:18:                                     ; preds = %15, %10
  call void @abort() #13, !dbg !2476
  unreachable, !dbg !2476

; <label>:19:                                     ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !2477
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2478
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3, !dbg !2479
  store i8* %20, i8** %22, align 8, !dbg !2480
  %23 = load i8*, i8** %6, align 8, !dbg !2481
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2482
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4, !dbg !2483
  store i8* %23, i8** %25, align 8, !dbg !2484
  ret void, !dbg !2485
}

; Function Attrs: noinline nounwind uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options*) #2 !dbg !2486 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2491, metadata !DIExpression()), !dbg !2492
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2493, metadata !DIExpression()), !dbg !2494
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2495, metadata !DIExpression()), !dbg !2496
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !2497, metadata !DIExpression()), !dbg !2498
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %10, metadata !2499, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %11, metadata !2501, metadata !DIExpression()), !dbg !2502
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !2503
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !2503
  br i1 %15, label %16, label %18, !dbg !2503

; <label>:16:                                     ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !2504
  br label %19, !dbg !2503

; <label>:18:                                     ; preds = %5
  br label %19, !dbg !2503

; <label>:19:                                     ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !2503
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8, !dbg !2502
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2505, metadata !DIExpression()), !dbg !2506
  %21 = call i32* @__errno_location() #16, !dbg !2507
  %22 = load i32, i32* %21, align 4, !dbg !2507
  store i32 %22, i32* %12, align 4, !dbg !2506
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2508, metadata !DIExpression()), !dbg !2509
  %23 = load i8*, i8** %6, align 8, !dbg !2510
  %24 = load i64, i64* %7, align 8, !dbg !2511
  %25 = load i8*, i8** %8, align 8, !dbg !2512
  %26 = load i64, i64* %9, align 8, !dbg !2513
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2514
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0, !dbg !2515
  %29 = load i32, i32* %28, align 8, !dbg !2515
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2516
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1, !dbg !2517
  %32 = load i32, i32* %31, align 4, !dbg !2517
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2518
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2, !dbg !2519
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i32 0, i32 0, !dbg !2518
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2520
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3, !dbg !2521
  %38 = load i8*, i8** %37, align 8, !dbg !2521
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2522
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4, !dbg !2523
  %41 = load i8*, i8** %40, align 8, !dbg !2523
  %42 = call i64 @quotearg_buffer_restyled(i8* %23, i64 %24, i8* %25, i64 %26, i32 %29, i32 %32, i32* %35, i8* %38, i8* %41), !dbg !2524
  store i64 %42, i64* %13, align 8, !dbg !2509
  %43 = load i32, i32* %12, align 4, !dbg !2525
  %44 = call i32* @__errno_location() #16, !dbg !2526
  store i32 %43, i32* %44, align 4, !dbg !2527
  %45 = load i64, i64* %13, align 8, !dbg !2528
  ret i64 %45, !dbg !2529
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32*, i8*, i8*) #2 !dbg !2530 {
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
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2535, metadata !DIExpression()), !dbg !2536
  store i64 %1, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2537, metadata !DIExpression()), !dbg !2538
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2539, metadata !DIExpression()), !dbg !2540
  store i64 %3, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2541, metadata !DIExpression()), !dbg !2542
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !2543, metadata !DIExpression()), !dbg !2544
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2545, metadata !DIExpression()), !dbg !2546
  store i32* %6, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !2547, metadata !DIExpression()), !dbg !2548
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !2549, metadata !DIExpression()), !dbg !2550
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !2551, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.declare(metadata i64* %20, metadata !2553, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.declare(metadata i64* %21, metadata !2555, metadata !DIExpression()), !dbg !2556
  store i64 0, i64* %21, align 8, !dbg !2556
  call void @llvm.dbg.declare(metadata i8** %22, metadata !2557, metadata !DIExpression()), !dbg !2558
  store i8* null, i8** %22, align 8, !dbg !2558
  call void @llvm.dbg.declare(metadata i64* %23, metadata !2559, metadata !DIExpression()), !dbg !2560
  store i64 0, i64* %23, align 8, !dbg !2560
  call void @llvm.dbg.declare(metadata i8* %24, metadata !2561, metadata !DIExpression()), !dbg !2562
  store i8 0, i8* %24, align 1, !dbg !2562
  call void @llvm.dbg.declare(metadata i8* %25, metadata !2563, metadata !DIExpression()), !dbg !2564
  %37 = call i64 @__ctype_get_mb_cur_max() #11, !dbg !2565
  %38 = icmp eq i64 %37, 1, !dbg !2566
  %39 = zext i1 %38 to i8, !dbg !2564
  store i8 %39, i8* %25, align 1, !dbg !2564
  call void @llvm.dbg.declare(metadata i8* %26, metadata !2567, metadata !DIExpression()), !dbg !2568
  %40 = load i32, i32* %16, align 4, !dbg !2569
  %41 = and i32 %40, 2, !dbg !2570
  %42 = icmp ne i32 %41, 0, !dbg !2571
  %43 = zext i1 %42 to i8, !dbg !2568
  store i8 %43, i8* %26, align 1, !dbg !2568
  %44 = load i32, i32* %15, align 4, !dbg !2572
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
  ], !dbg !2573

; <label>:45:                                     ; preds = %9
  store i32 3, i32* %15, align 4, !dbg !2574
  store i8 1, i8* %26, align 1, !dbg !2576
  br label %46, !dbg !2577

; <label>:46:                                     ; preds = %9, %45
  %47 = load i8, i8* %26, align 1, !dbg !2578
  %48 = trunc i8 %47 to i1, !dbg !2578
  br i1 %48, label %62, label %49, !dbg !2580

; <label>:49:                                     ; preds = %46
  br label %50, !dbg !2581, !llvm.loop !2582

; <label>:50:                                     ; preds = %49
  %51 = load i64, i64* %21, align 8, !dbg !2583
  %52 = load i64, i64* %12, align 8, !dbg !2583
  %53 = icmp ult i64 %51, %52, !dbg !2583
  br i1 %53, label %54, label %58, !dbg !2586

; <label>:54:                                     ; preds = %50
  %55 = load i8*, i8** %11, align 8, !dbg !2583
  %56 = load i64, i64* %21, align 8, !dbg !2583
  %57 = getelementptr inbounds i8, i8* %55, i64 %56, !dbg !2583
  store i8 34, i8* %57, align 1, !dbg !2583
  br label %58, !dbg !2583

; <label>:58:                                     ; preds = %54, %50
  %59 = load i64, i64* %21, align 8, !dbg !2586
  %60 = add i64 %59, 1, !dbg !2586
  store i64 %60, i64* %21, align 8, !dbg !2586
  br label %61, !dbg !2586

; <label>:61:                                     ; preds = %58
  br label %62, !dbg !2586

; <label>:62:                                     ; preds = %61, %46
  store i8 1, i8* %24, align 1, !dbg !2587
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.105, i32 0, i32 0), i8** %22, align 8, !dbg !2588
  store i64 1, i64* %23, align 8, !dbg !2589
  br label %124, !dbg !2590

; <label>:63:                                     ; preds = %9
  store i8 1, i8* %24, align 1, !dbg !2591
  store i8 0, i8* %26, align 1, !dbg !2592
  br label %124, !dbg !2593

; <label>:64:                                     ; preds = %9, %9, %9
  %65 = load i32, i32* %15, align 4, !dbg !2594
  %66 = icmp ne i32 %65, 8, !dbg !2597
  br i1 %66, label %67, label %72, !dbg !2598

; <label>:67:                                     ; preds = %64
  %68 = load i32, i32* %15, align 4, !dbg !2599
  %69 = call i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.106, i32 0, i32 0), i32 %68), !dbg !2601
  store i8* %69, i8** %18, align 8, !dbg !2602
  %70 = load i32, i32* %15, align 4, !dbg !2603
  %71 = call i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.107, i32 0, i32 0), i32 %70), !dbg !2604
  store i8* %71, i8** %19, align 8, !dbg !2605
  br label %72, !dbg !2606

; <label>:72:                                     ; preds = %67, %64
  %73 = load i8, i8* %26, align 1, !dbg !2607
  %74 = trunc i8 %73 to i1, !dbg !2607
  br i1 %74, label %100, label %75, !dbg !2609

; <label>:75:                                     ; preds = %72
  %76 = load i8*, i8** %18, align 8, !dbg !2610
  store i8* %76, i8** %22, align 8, !dbg !2612
  br label %77, !dbg !2613

; <label>:77:                                     ; preds = %96, %75
  %78 = load i8*, i8** %22, align 8, !dbg !2614
  %79 = load i8, i8* %78, align 1, !dbg !2616
  %80 = icmp ne i8 %79, 0, !dbg !2617
  br i1 %80, label %81, label %99, !dbg !2617

; <label>:81:                                     ; preds = %77
  br label %82, !dbg !2618, !llvm.loop !2619

; <label>:82:                                     ; preds = %81
  %83 = load i64, i64* %21, align 8, !dbg !2620
  %84 = load i64, i64* %12, align 8, !dbg !2620
  %85 = icmp ult i64 %83, %84, !dbg !2620
  br i1 %85, label %86, label %92, !dbg !2623

; <label>:86:                                     ; preds = %82
  %87 = load i8*, i8** %22, align 8, !dbg !2620
  %88 = load i8, i8* %87, align 1, !dbg !2620
  %89 = load i8*, i8** %11, align 8, !dbg !2620
  %90 = load i64, i64* %21, align 8, !dbg !2620
  %91 = getelementptr inbounds i8, i8* %89, i64 %90, !dbg !2620
  store i8 %88, i8* %91, align 1, !dbg !2620
  br label %92, !dbg !2620

; <label>:92:                                     ; preds = %86, %82
  %93 = load i64, i64* %21, align 8, !dbg !2623
  %94 = add i64 %93, 1, !dbg !2623
  store i64 %94, i64* %21, align 8, !dbg !2623
  br label %95, !dbg !2623

; <label>:95:                                     ; preds = %92
  br label %96, !dbg !2623

; <label>:96:                                     ; preds = %95
  %97 = load i8*, i8** %22, align 8, !dbg !2624
  %98 = getelementptr inbounds i8, i8* %97, i32 1, !dbg !2624
  store i8* %98, i8** %22, align 8, !dbg !2624
  br label %77, !dbg !2625, !llvm.loop !2626

; <label>:99:                                     ; preds = %77
  br label %100, !dbg !2627

; <label>:100:                                    ; preds = %99, %72
  store i8 1, i8* %24, align 1, !dbg !2628
  %101 = load i8*, i8** %19, align 8, !dbg !2629
  store i8* %101, i8** %22, align 8, !dbg !2630
  %102 = load i8*, i8** %22, align 8, !dbg !2631
  %103 = call i64 @strlen(i8* %102) #14, !dbg !2632
  store i64 %103, i64* %23, align 8, !dbg !2633
  br label %124, !dbg !2634

; <label>:104:                                    ; preds = %9
  store i32 2, i32* %15, align 4, !dbg !2635
  store i8 1, i8* %26, align 1, !dbg !2636
  br label %105, !dbg !2637

; <label>:105:                                    ; preds = %9, %104
  %106 = load i8, i8* %26, align 1, !dbg !2638
  %107 = trunc i8 %106 to i1, !dbg !2638
  br i1 %107, label %121, label %108, !dbg !2640

; <label>:108:                                    ; preds = %105
  br label %109, !dbg !2641, !llvm.loop !2642

; <label>:109:                                    ; preds = %108
  %110 = load i64, i64* %21, align 8, !dbg !2643
  %111 = load i64, i64* %12, align 8, !dbg !2643
  %112 = icmp ult i64 %110, %111, !dbg !2643
  br i1 %112, label %113, label %117, !dbg !2646

; <label>:113:                                    ; preds = %109
  %114 = load i8*, i8** %11, align 8, !dbg !2643
  %115 = load i64, i64* %21, align 8, !dbg !2643
  %116 = getelementptr inbounds i8, i8* %114, i64 %115, !dbg !2643
  store i8 39, i8* %116, align 1, !dbg !2643
  br label %117, !dbg !2643

; <label>:117:                                    ; preds = %113, %109
  %118 = load i64, i64* %21, align 8, !dbg !2646
  %119 = add i64 %118, 1, !dbg !2646
  store i64 %119, i64* %21, align 8, !dbg !2646
  br label %120, !dbg !2646

; <label>:120:                                    ; preds = %117
  br label %121, !dbg !2646

; <label>:121:                                    ; preds = %120, %105
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.107, i32 0, i32 0), i8** %22, align 8, !dbg !2647
  store i64 1, i64* %23, align 8, !dbg !2648
  br label %124, !dbg !2649

; <label>:122:                                    ; preds = %9
  store i8 0, i8* %26, align 1, !dbg !2650
  br label %124, !dbg !2651

; <label>:123:                                    ; preds = %9
  call void @abort() #13, !dbg !2652
  unreachable, !dbg !2652

; <label>:124:                                    ; preds = %122, %121, %100, %63, %62
  store i64 0, i64* %20, align 8, !dbg !2653
  br label %125, !dbg !2655

; <label>:125:                                    ; preds = %743, %124
  %126 = load i64, i64* %14, align 8, !dbg !2656
  %127 = icmp eq i64 %126, -1, !dbg !2658
  br i1 %127, label %128, label %136, !dbg !2656

; <label>:128:                                    ; preds = %125
  %129 = load i8*, i8** %13, align 8, !dbg !2659
  %130 = load i64, i64* %20, align 8, !dbg !2660
  %131 = getelementptr inbounds i8, i8* %129, i64 %130, !dbg !2659
  %132 = load i8, i8* %131, align 1, !dbg !2659
  %133 = sext i8 %132 to i32, !dbg !2659
  %134 = icmp eq i32 %133, 0, !dbg !2661
  %135 = zext i1 %134 to i32, !dbg !2661
  br label %141, !dbg !2656

; <label>:136:                                    ; preds = %125
  %137 = load i64, i64* %20, align 8, !dbg !2662
  %138 = load i64, i64* %14, align 8, !dbg !2663
  %139 = icmp eq i64 %137, %138, !dbg !2664
  %140 = zext i1 %139 to i32, !dbg !2664
  br label %141, !dbg !2656

; <label>:141:                                    ; preds = %136, %128
  %142 = phi i32 [ %135, %128 ], [ %140, %136 ], !dbg !2656
  %143 = icmp ne i32 %142, 0, !dbg !2665
  %144 = xor i1 %143, true, !dbg !2665
  br i1 %144, label %145, label %746, !dbg !2666

; <label>:145:                                    ; preds = %141
  call void @llvm.dbg.declare(metadata i8* %27, metadata !2667, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.declare(metadata i8* %28, metadata !2670, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.declare(metadata i8* %29, metadata !2672, metadata !DIExpression()), !dbg !2673
  store i8 0, i8* %29, align 1, !dbg !2673
  %146 = load i8, i8* %24, align 1, !dbg !2674
  %147 = trunc i8 %146 to i1, !dbg !2674
  br i1 %147, label %148, label %170, !dbg !2676

; <label>:148:                                    ; preds = %145
  %149 = load i64, i64* %23, align 8, !dbg !2677
  %150 = icmp ne i64 %149, 0, !dbg !2677
  br i1 %150, label %151, label %170, !dbg !2678

; <label>:151:                                    ; preds = %148
  %152 = load i64, i64* %20, align 8, !dbg !2679
  %153 = load i64, i64* %23, align 8, !dbg !2680
  %154 = add i64 %152, %153, !dbg !2681
  %155 = load i64, i64* %14, align 8, !dbg !2682
  %156 = icmp ule i64 %154, %155, !dbg !2683
  br i1 %156, label %157, label %170, !dbg !2684

; <label>:157:                                    ; preds = %151
  %158 = load i8*, i8** %13, align 8, !dbg !2685
  %159 = load i64, i64* %20, align 8, !dbg !2686
  %160 = getelementptr inbounds i8, i8* %158, i64 %159, !dbg !2687
  %161 = load i8*, i8** %22, align 8, !dbg !2688
  %162 = load i64, i64* %23, align 8, !dbg !2689
  %163 = call i32 @memcmp(i8* %160, i8* %161, i64 %162) #14, !dbg !2690
  %164 = icmp eq i32 %163, 0, !dbg !2691
  br i1 %164, label %165, label %170, !dbg !2692

; <label>:165:                                    ; preds = %157
  %166 = load i8, i8* %26, align 1, !dbg !2693
  %167 = trunc i8 %166 to i1, !dbg !2693
  br i1 %167, label %168, label %169, !dbg !2696

; <label>:168:                                    ; preds = %165
  br label %796, !dbg !2697

; <label>:169:                                    ; preds = %165
  store i8 1, i8* %29, align 1, !dbg !2698
  br label %170, !dbg !2699

; <label>:170:                                    ; preds = %169, %157, %151, %148, %145
  %171 = load i8*, i8** %13, align 8, !dbg !2700
  %172 = load i64, i64* %20, align 8, !dbg !2701
  %173 = getelementptr inbounds i8, i8* %171, i64 %172, !dbg !2700
  %174 = load i8, i8* %173, align 1, !dbg !2700
  store i8 %174, i8* %27, align 1, !dbg !2702
  %175 = load i8, i8* %27, align 1, !dbg !2703
  %176 = zext i8 %175 to i32, !dbg !2703
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
  ], !dbg !2704

; <label>:177:                                    ; preds = %170
  %178 = load i8, i8* %24, align 1, !dbg !2705
  %179 = trunc i8 %178 to i1, !dbg !2705
  br i1 %179, label %180, label %243, !dbg !2708

; <label>:180:                                    ; preds = %177
  %181 = load i8, i8* %26, align 1, !dbg !2709
  %182 = trunc i8 %181 to i1, !dbg !2709
  br i1 %182, label %183, label %184, !dbg !2712

; <label>:183:                                    ; preds = %180
  br label %796, !dbg !2713

; <label>:184:                                    ; preds = %180
  br label %185, !dbg !2714, !llvm.loop !2715

; <label>:185:                                    ; preds = %184
  %186 = load i64, i64* %21, align 8, !dbg !2716
  %187 = load i64, i64* %12, align 8, !dbg !2716
  %188 = icmp ult i64 %186, %187, !dbg !2716
  br i1 %188, label %189, label %193, !dbg !2719

; <label>:189:                                    ; preds = %185
  %190 = load i8*, i8** %11, align 8, !dbg !2716
  %191 = load i64, i64* %21, align 8, !dbg !2716
  %192 = getelementptr inbounds i8, i8* %190, i64 %191, !dbg !2716
  store i8 92, i8* %192, align 1, !dbg !2716
  br label %193, !dbg !2716

; <label>:193:                                    ; preds = %189, %185
  %194 = load i64, i64* %21, align 8, !dbg !2719
  %195 = add i64 %194, 1, !dbg !2719
  store i64 %195, i64* %21, align 8, !dbg !2719
  br label %196, !dbg !2719

; <label>:196:                                    ; preds = %193
  %197 = load i64, i64* %20, align 8, !dbg !2720
  %198 = add i64 %197, 1, !dbg !2722
  %199 = load i64, i64* %14, align 8, !dbg !2723
  %200 = icmp ult i64 %198, %199, !dbg !2724
  br i1 %200, label %201, label %242, !dbg !2725

; <label>:201:                                    ; preds = %196
  %202 = load i8*, i8** %13, align 8, !dbg !2726
  %203 = load i64, i64* %20, align 8, !dbg !2727
  %204 = add i64 %203, 1, !dbg !2728
  %205 = getelementptr inbounds i8, i8* %202, i64 %204, !dbg !2726
  %206 = load i8, i8* %205, align 1, !dbg !2726
  %207 = sext i8 %206 to i32, !dbg !2726
  %208 = icmp sle i32 48, %207, !dbg !2729
  br i1 %208, label %209, label %242, !dbg !2730

; <label>:209:                                    ; preds = %201
  %210 = load i8*, i8** %13, align 8, !dbg !2731
  %211 = load i64, i64* %20, align 8, !dbg !2732
  %212 = add i64 %211, 1, !dbg !2733
  %213 = getelementptr inbounds i8, i8* %210, i64 %212, !dbg !2731
  %214 = load i8, i8* %213, align 1, !dbg !2731
  %215 = sext i8 %214 to i32, !dbg !2731
  %216 = icmp sle i32 %215, 57, !dbg !2734
  br i1 %216, label %217, label %242, !dbg !2735

; <label>:217:                                    ; preds = %209
  br label %218, !dbg !2736, !llvm.loop !2738

; <label>:218:                                    ; preds = %217
  %219 = load i64, i64* %21, align 8, !dbg !2739
  %220 = load i64, i64* %12, align 8, !dbg !2739
  %221 = icmp ult i64 %219, %220, !dbg !2739
  br i1 %221, label %222, label %226, !dbg !2742

; <label>:222:                                    ; preds = %218
  %223 = load i8*, i8** %11, align 8, !dbg !2739
  %224 = load i64, i64* %21, align 8, !dbg !2739
  %225 = getelementptr inbounds i8, i8* %223, i64 %224, !dbg !2739
  store i8 48, i8* %225, align 1, !dbg !2739
  br label %226, !dbg !2739

; <label>:226:                                    ; preds = %222, %218
  %227 = load i64, i64* %21, align 8, !dbg !2742
  %228 = add i64 %227, 1, !dbg !2742
  store i64 %228, i64* %21, align 8, !dbg !2742
  br label %229, !dbg !2742

; <label>:229:                                    ; preds = %226
  br label %230, !dbg !2743, !llvm.loop !2744

; <label>:230:                                    ; preds = %229
  %231 = load i64, i64* %21, align 8, !dbg !2745
  %232 = load i64, i64* %12, align 8, !dbg !2745
  %233 = icmp ult i64 %231, %232, !dbg !2745
  br i1 %233, label %234, label %238, !dbg !2748

; <label>:234:                                    ; preds = %230
  %235 = load i8*, i8** %11, align 8, !dbg !2745
  %236 = load i64, i64* %21, align 8, !dbg !2745
  %237 = getelementptr inbounds i8, i8* %235, i64 %236, !dbg !2745
  store i8 48, i8* %237, align 1, !dbg !2745
  br label %238, !dbg !2745

; <label>:238:                                    ; preds = %234, %230
  %239 = load i64, i64* %21, align 8, !dbg !2748
  %240 = add i64 %239, 1, !dbg !2748
  store i64 %240, i64* %21, align 8, !dbg !2748
  br label %241, !dbg !2748

; <label>:241:                                    ; preds = %238
  br label %242, !dbg !2749

; <label>:242:                                    ; preds = %241, %209, %201, %196
  store i8 48, i8* %27, align 1, !dbg !2750
  br label %249, !dbg !2751

; <label>:243:                                    ; preds = %177
  %244 = load i32, i32* %16, align 4, !dbg !2752
  %245 = and i32 %244, 1, !dbg !2754
  %246 = icmp ne i32 %245, 0, !dbg !2754
  br i1 %246, label %247, label %248, !dbg !2755

; <label>:247:                                    ; preds = %243
  br label %743, !dbg !2756

; <label>:248:                                    ; preds = %243
  br label %249

; <label>:249:                                    ; preds = %248, %242
  br label %684, !dbg !2757

; <label>:250:                                    ; preds = %170
  %251 = load i32, i32* %15, align 4, !dbg !2758
  switch i32 %251, label %344 [
    i32 2, label %252
    i32 3, label %257
  ], !dbg !2759

; <label>:252:                                    ; preds = %250
  %253 = load i8, i8* %26, align 1, !dbg !2760
  %254 = trunc i8 %253 to i1, !dbg !2760
  br i1 %254, label %255, label %256, !dbg !2763

; <label>:255:                                    ; preds = %252
  br label %796, !dbg !2764

; <label>:256:                                    ; preds = %252
  br label %345, !dbg !2765

; <label>:257:                                    ; preds = %250
  %258 = load i32, i32* %16, align 4, !dbg !2766
  %259 = and i32 %258, 4, !dbg !2768
  %260 = icmp ne i32 %259, 0, !dbg !2768
  br i1 %260, label %261, label %343, !dbg !2769

; <label>:261:                                    ; preds = %257
  %262 = load i64, i64* %20, align 8, !dbg !2770
  %263 = add i64 %262, 2, !dbg !2771
  %264 = load i64, i64* %14, align 8, !dbg !2772
  %265 = icmp ult i64 %263, %264, !dbg !2773
  br i1 %265, label %266, label %343, !dbg !2774

; <label>:266:                                    ; preds = %261
  %267 = load i8*, i8** %13, align 8, !dbg !2775
  %268 = load i64, i64* %20, align 8, !dbg !2776
  %269 = add i64 %268, 1, !dbg !2777
  %270 = getelementptr inbounds i8, i8* %267, i64 %269, !dbg !2775
  %271 = load i8, i8* %270, align 1, !dbg !2775
  %272 = sext i8 %271 to i32, !dbg !2775
  %273 = icmp eq i32 %272, 63, !dbg !2778
  br i1 %273, label %274, label %343, !dbg !2779

; <label>:274:                                    ; preds = %266
  %275 = load i8*, i8** %13, align 8, !dbg !2780
  %276 = load i64, i64* %20, align 8, !dbg !2781
  %277 = add i64 %276, 2, !dbg !2782
  %278 = getelementptr inbounds i8, i8* %275, i64 %277, !dbg !2780
  %279 = load i8, i8* %278, align 1, !dbg !2780
  %280 = sext i8 %279 to i32, !dbg !2780
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
  ], !dbg !2783

; <label>:281:                                    ; preds = %274, %274, %274, %274, %274, %274, %274, %274, %274
  %282 = load i8, i8* %26, align 1, !dbg !2784
  %283 = trunc i8 %282 to i1, !dbg !2784
  br i1 %283, label %284, label %285, !dbg !2787

; <label>:284:                                    ; preds = %281
  br label %796, !dbg !2788

; <label>:285:                                    ; preds = %281
  %286 = load i8*, i8** %13, align 8, !dbg !2789
  %287 = load i64, i64* %20, align 8, !dbg !2790
  %288 = add i64 %287, 2, !dbg !2791
  %289 = getelementptr inbounds i8, i8* %286, i64 %288, !dbg !2789
  %290 = load i8, i8* %289, align 1, !dbg !2789
  store i8 %290, i8* %27, align 1, !dbg !2792
  %291 = load i64, i64* %20, align 8, !dbg !2793
  %292 = add i64 %291, 2, !dbg !2793
  store i64 %292, i64* %20, align 8, !dbg !2793
  br label %293, !dbg !2794, !llvm.loop !2795

; <label>:293:                                    ; preds = %285
  %294 = load i64, i64* %21, align 8, !dbg !2796
  %295 = load i64, i64* %12, align 8, !dbg !2796
  %296 = icmp ult i64 %294, %295, !dbg !2796
  br i1 %296, label %297, label %301, !dbg !2799

; <label>:297:                                    ; preds = %293
  %298 = load i8*, i8** %11, align 8, !dbg !2796
  %299 = load i64, i64* %21, align 8, !dbg !2796
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !2796
  store i8 63, i8* %300, align 1, !dbg !2796
  br label %301, !dbg !2796

; <label>:301:                                    ; preds = %297, %293
  %302 = load i64, i64* %21, align 8, !dbg !2799
  %303 = add i64 %302, 1, !dbg !2799
  store i64 %303, i64* %21, align 8, !dbg !2799
  br label %304, !dbg !2799

; <label>:304:                                    ; preds = %301
  br label %305, !dbg !2800, !llvm.loop !2801

; <label>:305:                                    ; preds = %304
  %306 = load i64, i64* %21, align 8, !dbg !2802
  %307 = load i64, i64* %12, align 8, !dbg !2802
  %308 = icmp ult i64 %306, %307, !dbg !2802
  br i1 %308, label %309, label %313, !dbg !2805

; <label>:309:                                    ; preds = %305
  %310 = load i8*, i8** %11, align 8, !dbg !2802
  %311 = load i64, i64* %21, align 8, !dbg !2802
  %312 = getelementptr inbounds i8, i8* %310, i64 %311, !dbg !2802
  store i8 34, i8* %312, align 1, !dbg !2802
  br label %313, !dbg !2802

; <label>:313:                                    ; preds = %309, %305
  %314 = load i64, i64* %21, align 8, !dbg !2805
  %315 = add i64 %314, 1, !dbg !2805
  store i64 %315, i64* %21, align 8, !dbg !2805
  br label %316, !dbg !2805

; <label>:316:                                    ; preds = %313
  br label %317, !dbg !2806, !llvm.loop !2807

; <label>:317:                                    ; preds = %316
  %318 = load i64, i64* %21, align 8, !dbg !2808
  %319 = load i64, i64* %12, align 8, !dbg !2808
  %320 = icmp ult i64 %318, %319, !dbg !2808
  br i1 %320, label %321, label %325, !dbg !2811

; <label>:321:                                    ; preds = %317
  %322 = load i8*, i8** %11, align 8, !dbg !2808
  %323 = load i64, i64* %21, align 8, !dbg !2808
  %324 = getelementptr inbounds i8, i8* %322, i64 %323, !dbg !2808
  store i8 34, i8* %324, align 1, !dbg !2808
  br label %325, !dbg !2808

; <label>:325:                                    ; preds = %321, %317
  %326 = load i64, i64* %21, align 8, !dbg !2811
  %327 = add i64 %326, 1, !dbg !2811
  store i64 %327, i64* %21, align 8, !dbg !2811
  br label %328, !dbg !2811

; <label>:328:                                    ; preds = %325
  br label %329, !dbg !2812, !llvm.loop !2813

; <label>:329:                                    ; preds = %328
  %330 = load i64, i64* %21, align 8, !dbg !2814
  %331 = load i64, i64* %12, align 8, !dbg !2814
  %332 = icmp ult i64 %330, %331, !dbg !2814
  br i1 %332, label %333, label %337, !dbg !2817

; <label>:333:                                    ; preds = %329
  %334 = load i8*, i8** %11, align 8, !dbg !2814
  %335 = load i64, i64* %21, align 8, !dbg !2814
  %336 = getelementptr inbounds i8, i8* %334, i64 %335, !dbg !2814
  store i8 63, i8* %336, align 1, !dbg !2814
  br label %337, !dbg !2814

; <label>:337:                                    ; preds = %333, %329
  %338 = load i64, i64* %21, align 8, !dbg !2817
  %339 = add i64 %338, 1, !dbg !2817
  store i64 %339, i64* %21, align 8, !dbg !2817
  br label %340, !dbg !2817

; <label>:340:                                    ; preds = %337
  br label %342, !dbg !2818

; <label>:341:                                    ; preds = %274
  br label %342, !dbg !2819

; <label>:342:                                    ; preds = %341, %340
  br label %343, !dbg !2820

; <label>:343:                                    ; preds = %342, %266, %261, %257
  br label %345, !dbg !2821

; <label>:344:                                    ; preds = %250
  br label %345, !dbg !2822

; <label>:345:                                    ; preds = %344, %343, %256
  br label %684, !dbg !2823

; <label>:346:                                    ; preds = %170
  store i8 97, i8* %28, align 1, !dbg !2824
  br label %373, !dbg !2825

; <label>:347:                                    ; preds = %170
  store i8 98, i8* %28, align 1, !dbg !2826
  br label %373, !dbg !2827

; <label>:348:                                    ; preds = %170
  store i8 102, i8* %28, align 1, !dbg !2828
  br label %373, !dbg !2829

; <label>:349:                                    ; preds = %170
  store i8 110, i8* %28, align 1, !dbg !2830
  br label %365, !dbg !2831

; <label>:350:                                    ; preds = %170
  store i8 114, i8* %28, align 1, !dbg !2832
  br label %365, !dbg !2833

; <label>:351:                                    ; preds = %170
  store i8 116, i8* %28, align 1, !dbg !2834
  br label %365, !dbg !2835

; <label>:352:                                    ; preds = %170
  store i8 118, i8* %28, align 1, !dbg !2836
  br label %373, !dbg !2837

; <label>:353:                                    ; preds = %170
  %354 = load i8, i8* %27, align 1, !dbg !2838
  store i8 %354, i8* %28, align 1, !dbg !2839
  %355 = load i8, i8* %24, align 1, !dbg !2840
  %356 = trunc i8 %355 to i1, !dbg !2840
  br i1 %356, label %357, label %364, !dbg !2842

; <label>:357:                                    ; preds = %353
  %358 = load i8, i8* %26, align 1, !dbg !2843
  %359 = trunc i8 %358 to i1, !dbg !2843
  br i1 %359, label %360, label %364, !dbg !2844

; <label>:360:                                    ; preds = %357
  %361 = load i64, i64* %23, align 8, !dbg !2845
  %362 = icmp ne i64 %361, 0, !dbg !2845
  br i1 %362, label %363, label %364, !dbg !2846

; <label>:363:                                    ; preds = %360
  br label %729, !dbg !2847

; <label>:364:                                    ; preds = %360, %357, %353
  br label %365, !dbg !2845

; <label>:365:                                    ; preds = %364, %351, %350, %349
  %366 = load i32, i32* %15, align 4, !dbg !2848
  %367 = icmp eq i32 %366, 2, !dbg !2850
  br i1 %367, label %368, label %372, !dbg !2851

; <label>:368:                                    ; preds = %365
  %369 = load i8, i8* %26, align 1, !dbg !2852
  %370 = trunc i8 %369 to i1, !dbg !2852
  br i1 %370, label %371, label %372, !dbg !2853

; <label>:371:                                    ; preds = %368
  br label %796, !dbg !2854

; <label>:372:                                    ; preds = %368, %365
  br label %373, !dbg !2852

; <label>:373:                                    ; preds = %372, %352, %348, %347, %346
  %374 = load i8, i8* %24, align 1, !dbg !2855
  %375 = trunc i8 %374 to i1, !dbg !2855
  br i1 %375, label %376, label %378, !dbg !2857

; <label>:376:                                    ; preds = %373
  %377 = load i8, i8* %28, align 1, !dbg !2858
  store i8 %377, i8* %27, align 1, !dbg !2860
  br label %712, !dbg !2861

; <label>:378:                                    ; preds = %373
  br label %684, !dbg !2862

; <label>:379:                                    ; preds = %170, %170
  %380 = load i64, i64* %14, align 8, !dbg !2863
  %381 = icmp eq i64 %380, -1, !dbg !2865
  br i1 %381, label %382, label %388, !dbg !2866

; <label>:382:                                    ; preds = %379
  %383 = load i8*, i8** %13, align 8, !dbg !2867
  %384 = getelementptr inbounds i8, i8* %383, i64 1, !dbg !2867
  %385 = load i8, i8* %384, align 1, !dbg !2867
  %386 = sext i8 %385 to i32, !dbg !2867
  %387 = icmp eq i32 %386, 0, !dbg !2868
  br i1 %387, label %392, label %391, !dbg !2863

; <label>:388:                                    ; preds = %379
  %389 = load i64, i64* %14, align 8, !dbg !2869
  %390 = icmp eq i64 %389, 1, !dbg !2870
  br i1 %390, label %392, label %391, !dbg !2866

; <label>:391:                                    ; preds = %388, %382
  br label %684, !dbg !2871

; <label>:392:                                    ; preds = %388, %382
  br label %393, !dbg !2872

; <label>:393:                                    ; preds = %170, %170, %392
  %394 = load i64, i64* %20, align 8, !dbg !2873
  %395 = icmp ne i64 %394, 0, !dbg !2875
  br i1 %395, label %396, label %397, !dbg !2876

; <label>:396:                                    ; preds = %393
  br label %684, !dbg !2877

; <label>:397:                                    ; preds = %393
  br label %398, !dbg !2878

; <label>:398:                                    ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %397
  %399 = load i32, i32* %15, align 4, !dbg !2879
  %400 = icmp eq i32 %399, 2, !dbg !2881
  br i1 %400, label %401, label %405, !dbg !2882

; <label>:401:                                    ; preds = %398
  %402 = load i8, i8* %26, align 1, !dbg !2883
  %403 = trunc i8 %402 to i1, !dbg !2883
  br i1 %403, label %404, label %405, !dbg !2884

; <label>:404:                                    ; preds = %401
  br label %796, !dbg !2885

; <label>:405:                                    ; preds = %401, %398
  br label %684, !dbg !2886

; <label>:406:                                    ; preds = %170
  %407 = load i32, i32* %15, align 4, !dbg !2887
  %408 = icmp eq i32 %407, 2, !dbg !2889
  br i1 %408, label %409, label %450, !dbg !2890

; <label>:409:                                    ; preds = %406
  %410 = load i8, i8* %26, align 1, !dbg !2891
  %411 = trunc i8 %410 to i1, !dbg !2891
  br i1 %411, label %412, label %413, !dbg !2894

; <label>:412:                                    ; preds = %409
  br label %796, !dbg !2895

; <label>:413:                                    ; preds = %409
  br label %414, !dbg !2896, !llvm.loop !2897

; <label>:414:                                    ; preds = %413
  %415 = load i64, i64* %21, align 8, !dbg !2898
  %416 = load i64, i64* %12, align 8, !dbg !2898
  %417 = icmp ult i64 %415, %416, !dbg !2898
  br i1 %417, label %418, label %422, !dbg !2901

; <label>:418:                                    ; preds = %414
  %419 = load i8*, i8** %11, align 8, !dbg !2898
  %420 = load i64, i64* %21, align 8, !dbg !2898
  %421 = getelementptr inbounds i8, i8* %419, i64 %420, !dbg !2898
  store i8 39, i8* %421, align 1, !dbg !2898
  br label %422, !dbg !2898

; <label>:422:                                    ; preds = %418, %414
  %423 = load i64, i64* %21, align 8, !dbg !2901
  %424 = add i64 %423, 1, !dbg !2901
  store i64 %424, i64* %21, align 8, !dbg !2901
  br label %425, !dbg !2901

; <label>:425:                                    ; preds = %422
  br label %426, !dbg !2902, !llvm.loop !2903

; <label>:426:                                    ; preds = %425
  %427 = load i64, i64* %21, align 8, !dbg !2904
  %428 = load i64, i64* %12, align 8, !dbg !2904
  %429 = icmp ult i64 %427, %428, !dbg !2904
  br i1 %429, label %430, label %434, !dbg !2907

; <label>:430:                                    ; preds = %426
  %431 = load i8*, i8** %11, align 8, !dbg !2904
  %432 = load i64, i64* %21, align 8, !dbg !2904
  %433 = getelementptr inbounds i8, i8* %431, i64 %432, !dbg !2904
  store i8 92, i8* %433, align 1, !dbg !2904
  br label %434, !dbg !2904

; <label>:434:                                    ; preds = %430, %426
  %435 = load i64, i64* %21, align 8, !dbg !2907
  %436 = add i64 %435, 1, !dbg !2907
  store i64 %436, i64* %21, align 8, !dbg !2907
  br label %437, !dbg !2907

; <label>:437:                                    ; preds = %434
  br label %438, !dbg !2908, !llvm.loop !2909

; <label>:438:                                    ; preds = %437
  %439 = load i64, i64* %21, align 8, !dbg !2910
  %440 = load i64, i64* %12, align 8, !dbg !2910
  %441 = icmp ult i64 %439, %440, !dbg !2910
  br i1 %441, label %442, label %446, !dbg !2913

; <label>:442:                                    ; preds = %438
  %443 = load i8*, i8** %11, align 8, !dbg !2910
  %444 = load i64, i64* %21, align 8, !dbg !2910
  %445 = getelementptr inbounds i8, i8* %443, i64 %444, !dbg !2910
  store i8 39, i8* %445, align 1, !dbg !2910
  br label %446, !dbg !2910

; <label>:446:                                    ; preds = %442, %438
  %447 = load i64, i64* %21, align 8, !dbg !2913
  %448 = add i64 %447, 1, !dbg !2913
  store i64 %448, i64* %21, align 8, !dbg !2913
  br label %449, !dbg !2913

; <label>:449:                                    ; preds = %446
  br label %450, !dbg !2914

; <label>:450:                                    ; preds = %449, %406
  br label %684, !dbg !2915

; <label>:451:                                    ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170
  br label %684, !dbg !2916

; <label>:452:                                    ; preds = %170
  call void @llvm.dbg.declare(metadata i64* %30, metadata !2917, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.declare(metadata i8* %31, metadata !2920, metadata !DIExpression()), !dbg !2921
  %453 = load i8, i8* %25, align 1, !dbg !2922
  %454 = trunc i8 %453 to i1, !dbg !2922
  br i1 %454, label %455, label %467, !dbg !2924

; <label>:455:                                    ; preds = %452
  store i64 1, i64* %30, align 8, !dbg !2925
  %456 = call i16** @__ctype_b_loc() #16, !dbg !2927
  %457 = load i16*, i16** %456, align 8, !dbg !2927
  %458 = load i8, i8* %27, align 1, !dbg !2927
  %459 = zext i8 %458 to i32, !dbg !2927
  %460 = sext i32 %459 to i64, !dbg !2927
  %461 = getelementptr inbounds i16, i16* %457, i64 %460, !dbg !2927
  %462 = load i16, i16* %461, align 2, !dbg !2927
  %463 = zext i16 %462 to i32, !dbg !2927
  %464 = and i32 %463, 16384, !dbg !2927
  %465 = icmp ne i32 %464, 0, !dbg !2928
  %466 = zext i1 %465 to i8, !dbg !2929
  store i8 %466, i8* %31, align 1, !dbg !2929
  br label %564, !dbg !2930

; <label>:467:                                    ; preds = %452
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %32, metadata !2931, metadata !DIExpression()), !dbg !2946
  %468 = bitcast %struct.__mbstate_t* %32 to i8*, !dbg !2947
  call void @llvm.memset.p0i8.i64(i8* %468, i8 0, i64 8, i32 4, i1 false), !dbg !2947
  store i64 0, i64* %30, align 8, !dbg !2948
  store i8 1, i8* %31, align 1, !dbg !2949
  %469 = load i64, i64* %14, align 8, !dbg !2950
  %470 = icmp eq i64 %469, -1, !dbg !2952
  br i1 %470, label %471, label %474, !dbg !2953

; <label>:471:                                    ; preds = %467
  %472 = load i8*, i8** %13, align 8, !dbg !2954
  %473 = call i64 @strlen(i8* %472) #14, !dbg !2955
  store i64 %473, i64* %14, align 8, !dbg !2956
  br label %474, !dbg !2957

; <label>:474:                                    ; preds = %471, %467
  br label %475, !dbg !2958, !llvm.loop !2959

; <label>:475:                                    ; preds = %559, %474
  call void @llvm.dbg.declare(metadata i32* %33, metadata !2961, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.declare(metadata i64* %34, metadata !2965, metadata !DIExpression()), !dbg !2966
  %476 = load i8*, i8** %13, align 8, !dbg !2967
  %477 = load i64, i64* %20, align 8, !dbg !2968
  %478 = load i64, i64* %30, align 8, !dbg !2969
  %479 = add i64 %477, %478, !dbg !2970
  %480 = getelementptr inbounds i8, i8* %476, i64 %479, !dbg !2967
  %481 = load i64, i64* %14, align 8, !dbg !2971
  %482 = load i64, i64* %20, align 8, !dbg !2972
  %483 = load i64, i64* %30, align 8, !dbg !2973
  %484 = add i64 %482, %483, !dbg !2974
  %485 = sub i64 %481, %484, !dbg !2975
  %486 = call i64 @mbrtowc(i32* %33, i8* %480, i64 %485, %struct.__mbstate_t* %32) #11, !dbg !2976
  store i64 %486, i64* %34, align 8, !dbg !2966
  %487 = load i64, i64* %34, align 8, !dbg !2977
  %488 = icmp eq i64 %487, 0, !dbg !2979
  br i1 %488, label %489, label %490, !dbg !2980

; <label>:489:                                    ; preds = %475
  br label %563, !dbg !2981

; <label>:490:                                    ; preds = %475
  %491 = load i64, i64* %34, align 8, !dbg !2982
  %492 = icmp eq i64 %491, -1, !dbg !2984
  br i1 %492, label %493, label %494, !dbg !2985

; <label>:493:                                    ; preds = %490
  store i8 0, i8* %31, align 1, !dbg !2986
  br label %563, !dbg !2988

; <label>:494:                                    ; preds = %490
  %495 = load i64, i64* %34, align 8, !dbg !2989
  %496 = icmp eq i64 %495, -2, !dbg !2991
  br i1 %496, label %497, label %519, !dbg !2992

; <label>:497:                                    ; preds = %494
  store i8 0, i8* %31, align 1, !dbg !2993
  br label %498, !dbg !2995

; <label>:498:                                    ; preds = %515, %497
  %499 = load i64, i64* %20, align 8, !dbg !2996
  %500 = load i64, i64* %30, align 8, !dbg !2997
  %501 = add i64 %499, %500, !dbg !2998
  %502 = load i64, i64* %14, align 8, !dbg !2999
  %503 = icmp ult i64 %501, %502, !dbg !3000
  br i1 %503, label %504, label %513, !dbg !3001

; <label>:504:                                    ; preds = %498
  %505 = load i8*, i8** %13, align 8, !dbg !3002
  %506 = load i64, i64* %20, align 8, !dbg !3003
  %507 = load i64, i64* %30, align 8, !dbg !3004
  %508 = add i64 %506, %507, !dbg !3005
  %509 = getelementptr inbounds i8, i8* %505, i64 %508, !dbg !3002
  %510 = load i8, i8* %509, align 1, !dbg !3002
  %511 = sext i8 %510 to i32, !dbg !3002
  %512 = icmp ne i32 %511, 0, !dbg !3001
  br label %513

; <label>:513:                                    ; preds = %504, %498
  %514 = phi i1 [ false, %498 ], [ %512, %504 ]
  br i1 %514, label %515, label %518, !dbg !2995

; <label>:515:                                    ; preds = %513
  %516 = load i64, i64* %30, align 8, !dbg !3006
  %517 = add i64 %516, 1, !dbg !3006
  store i64 %517, i64* %30, align 8, !dbg !3006
  br label %498, !dbg !2995, !llvm.loop !3007

; <label>:518:                                    ; preds = %513
  br label %563, !dbg !3008

; <label>:519:                                    ; preds = %494
  %520 = load i8, i8* %26, align 1, !dbg !3009
  %521 = trunc i8 %520 to i1, !dbg !3009
  br i1 %521, label %522, label %547, !dbg !3012

; <label>:522:                                    ; preds = %519
  %523 = load i32, i32* %15, align 4, !dbg !3013
  %524 = icmp eq i32 %523, 2, !dbg !3014
  br i1 %524, label %525, label %547, !dbg !3015

; <label>:525:                                    ; preds = %522
  call void @llvm.dbg.declare(metadata i64* %35, metadata !3016, metadata !DIExpression()), !dbg !3018
  store i64 1, i64* %35, align 8, !dbg !3019
  br label %526, !dbg !3021

; <label>:526:                                    ; preds = %543, %525
  %527 = load i64, i64* %35, align 8, !dbg !3022
  %528 = load i64, i64* %34, align 8, !dbg !3024
  %529 = icmp ult i64 %527, %528, !dbg !3025
  br i1 %529, label %530, label %546, !dbg !3026

; <label>:530:                                    ; preds = %526
  %531 = load i8*, i8** %13, align 8, !dbg !3027
  %532 = load i64, i64* %20, align 8, !dbg !3028
  %533 = load i64, i64* %30, align 8, !dbg !3029
  %534 = add i64 %532, %533, !dbg !3030
  %535 = load i64, i64* %35, align 8, !dbg !3031
  %536 = add i64 %534, %535, !dbg !3032
  %537 = getelementptr inbounds i8, i8* %531, i64 %536, !dbg !3027
  %538 = load i8, i8* %537, align 1, !dbg !3027
  %539 = sext i8 %538 to i32, !dbg !3027
  switch i32 %539, label %541 [
    i32 91, label %540
    i32 92, label %540
    i32 94, label %540
    i32 96, label %540
    i32 124, label %540
  ], !dbg !3033

; <label>:540:                                    ; preds = %530, %530, %530, %530, %530
  br label %796, !dbg !3034

; <label>:541:                                    ; preds = %530
  br label %542, !dbg !3036

; <label>:542:                                    ; preds = %541
  br label %543, !dbg !3037

; <label>:543:                                    ; preds = %542
  %544 = load i64, i64* %35, align 8, !dbg !3038
  %545 = add i64 %544, 1, !dbg !3038
  store i64 %545, i64* %35, align 8, !dbg !3038
  br label %526, !dbg !3039, !llvm.loop !3040

; <label>:546:                                    ; preds = %526
  br label %547, !dbg !3042

; <label>:547:                                    ; preds = %546, %522, %519
  %548 = load i32, i32* %33, align 4, !dbg !3043
  %549 = call i32 @iswprint(i32 %548) #11, !dbg !3045
  %550 = icmp ne i32 %549, 0, !dbg !3045
  br i1 %550, label %552, label %551, !dbg !3046

; <label>:551:                                    ; preds = %547
  store i8 0, i8* %31, align 1, !dbg !3047
  br label %552, !dbg !3048

; <label>:552:                                    ; preds = %551, %547
  %553 = load i64, i64* %34, align 8, !dbg !3049
  %554 = load i64, i64* %30, align 8, !dbg !3050
  %555 = add i64 %554, %553, !dbg !3050
  store i64 %555, i64* %30, align 8, !dbg !3050
  br label %556

; <label>:556:                                    ; preds = %552
  br label %557

; <label>:557:                                    ; preds = %556
  br label %558

; <label>:558:                                    ; preds = %557
  br label %559, !dbg !3051

; <label>:559:                                    ; preds = %558
  %560 = call i32 @mbsinit(%struct.__mbstate_t* %32) #14, !dbg !3052
  %561 = icmp ne i32 %560, 0, !dbg !3053
  %562 = xor i1 %561, true, !dbg !3053
  br i1 %562, label %475, label %563, !dbg !3051, !llvm.loop !2959

; <label>:563:                                    ; preds = %559, %518, %493, %489
  br label %564

; <label>:564:                                    ; preds = %563, %455
  %565 = load i64, i64* %30, align 8, !dbg !3054
  %566 = icmp ult i64 1, %565, !dbg !3056
  br i1 %566, label %573, label %567, !dbg !3057

; <label>:567:                                    ; preds = %564
  %568 = load i8, i8* %24, align 1, !dbg !3058
  %569 = trunc i8 %568 to i1, !dbg !3058
  br i1 %569, label %570, label %683, !dbg !3059

; <label>:570:                                    ; preds = %567
  %571 = load i8, i8* %31, align 1, !dbg !3060
  %572 = trunc i8 %571 to i1, !dbg !3060
  br i1 %572, label %683, label %573, !dbg !3061

; <label>:573:                                    ; preds = %570, %564
  call void @llvm.dbg.declare(metadata i64* %36, metadata !3062, metadata !DIExpression()), !dbg !3064
  %574 = load i64, i64* %20, align 8, !dbg !3065
  %575 = load i64, i64* %30, align 8, !dbg !3066
  %576 = add i64 %574, %575, !dbg !3067
  store i64 %576, i64* %36, align 8, !dbg !3064
  br label %577, !dbg !3068

; <label>:577:                                    ; preds = %676, %573
  %578 = load i8, i8* %24, align 1, !dbg !3069
  %579 = trunc i8 %578 to i1, !dbg !3069
  br i1 %579, label %580, label %640, !dbg !3074

; <label>:580:                                    ; preds = %577
  %581 = load i8, i8* %31, align 1, !dbg !3075
  %582 = trunc i8 %581 to i1, !dbg !3075
  br i1 %582, label %640, label %583, !dbg !3076

; <label>:583:                                    ; preds = %580
  %584 = load i8, i8* %26, align 1, !dbg !3077
  %585 = trunc i8 %584 to i1, !dbg !3077
  br i1 %585, label %586, label %587, !dbg !3080

; <label>:586:                                    ; preds = %583
  br label %796, !dbg !3081

; <label>:587:                                    ; preds = %583
  br label %588, !dbg !3082, !llvm.loop !3083

; <label>:588:                                    ; preds = %587
  %589 = load i64, i64* %21, align 8, !dbg !3084
  %590 = load i64, i64* %12, align 8, !dbg !3084
  %591 = icmp ult i64 %589, %590, !dbg !3084
  br i1 %591, label %592, label %596, !dbg !3087

; <label>:592:                                    ; preds = %588
  %593 = load i8*, i8** %11, align 8, !dbg !3084
  %594 = load i64, i64* %21, align 8, !dbg !3084
  %595 = getelementptr inbounds i8, i8* %593, i64 %594, !dbg !3084
  store i8 92, i8* %595, align 1, !dbg !3084
  br label %596, !dbg !3084

; <label>:596:                                    ; preds = %592, %588
  %597 = load i64, i64* %21, align 8, !dbg !3087
  %598 = add i64 %597, 1, !dbg !3087
  store i64 %598, i64* %21, align 8, !dbg !3087
  br label %599, !dbg !3087

; <label>:599:                                    ; preds = %596
  br label %600, !dbg !3088, !llvm.loop !3089

; <label>:600:                                    ; preds = %599
  %601 = load i64, i64* %21, align 8, !dbg !3090
  %602 = load i64, i64* %12, align 8, !dbg !3090
  %603 = icmp ult i64 %601, %602, !dbg !3090
  br i1 %603, label %604, label %613, !dbg !3093

; <label>:604:                                    ; preds = %600
  %605 = load i8, i8* %27, align 1, !dbg !3090
  %606 = zext i8 %605 to i32, !dbg !3090
  %607 = ashr i32 %606, 6, !dbg !3090
  %608 = add nsw i32 48, %607, !dbg !3090
  %609 = trunc i32 %608 to i8, !dbg !3090
  %610 = load i8*, i8** %11, align 8, !dbg !3090
  %611 = load i64, i64* %21, align 8, !dbg !3090
  %612 = getelementptr inbounds i8, i8* %610, i64 %611, !dbg !3090
  store i8 %609, i8* %612, align 1, !dbg !3090
  br label %613, !dbg !3090

; <label>:613:                                    ; preds = %604, %600
  %614 = load i64, i64* %21, align 8, !dbg !3093
  %615 = add i64 %614, 1, !dbg !3093
  store i64 %615, i64* %21, align 8, !dbg !3093
  br label %616, !dbg !3093

; <label>:616:                                    ; preds = %613
  br label %617, !dbg !3094, !llvm.loop !3095

; <label>:617:                                    ; preds = %616
  %618 = load i64, i64* %21, align 8, !dbg !3096
  %619 = load i64, i64* %12, align 8, !dbg !3096
  %620 = icmp ult i64 %618, %619, !dbg !3096
  br i1 %620, label %621, label %631, !dbg !3099

; <label>:621:                                    ; preds = %617
  %622 = load i8, i8* %27, align 1, !dbg !3096
  %623 = zext i8 %622 to i32, !dbg !3096
  %624 = ashr i32 %623, 3, !dbg !3096
  %625 = and i32 %624, 7, !dbg !3096
  %626 = add nsw i32 48, %625, !dbg !3096
  %627 = trunc i32 %626 to i8, !dbg !3096
  %628 = load i8*, i8** %11, align 8, !dbg !3096
  %629 = load i64, i64* %21, align 8, !dbg !3096
  %630 = getelementptr inbounds i8, i8* %628, i64 %629, !dbg !3096
  store i8 %627, i8* %630, align 1, !dbg !3096
  br label %631, !dbg !3096

; <label>:631:                                    ; preds = %621, %617
  %632 = load i64, i64* %21, align 8, !dbg !3099
  %633 = add i64 %632, 1, !dbg !3099
  store i64 %633, i64* %21, align 8, !dbg !3099
  br label %634, !dbg !3099

; <label>:634:                                    ; preds = %631
  %635 = load i8, i8* %27, align 1, !dbg !3100
  %636 = zext i8 %635 to i32, !dbg !3100
  %637 = and i32 %636, 7, !dbg !3101
  %638 = add nsw i32 48, %637, !dbg !3102
  %639 = trunc i32 %638 to i8, !dbg !3103
  store i8 %639, i8* %27, align 1, !dbg !3104
  br label %657, !dbg !3105

; <label>:640:                                    ; preds = %580, %577
  %641 = load i8, i8* %29, align 1, !dbg !3106
  %642 = trunc i8 %641 to i1, !dbg !3106
  br i1 %642, label %643, label %656, !dbg !3108

; <label>:643:                                    ; preds = %640
  br label %644, !dbg !3109, !llvm.loop !3111

; <label>:644:                                    ; preds = %643
  %645 = load i64, i64* %21, align 8, !dbg !3112
  %646 = load i64, i64* %12, align 8, !dbg !3112
  %647 = icmp ult i64 %645, %646, !dbg !3112
  br i1 %647, label %648, label %652, !dbg !3115

; <label>:648:                                    ; preds = %644
  %649 = load i8*, i8** %11, align 8, !dbg !3112
  %650 = load i64, i64* %21, align 8, !dbg !3112
  %651 = getelementptr inbounds i8, i8* %649, i64 %650, !dbg !3112
  store i8 92, i8* %651, align 1, !dbg !3112
  br label %652, !dbg !3112

; <label>:652:                                    ; preds = %648, %644
  %653 = load i64, i64* %21, align 8, !dbg !3115
  %654 = add i64 %653, 1, !dbg !3115
  store i64 %654, i64* %21, align 8, !dbg !3115
  br label %655, !dbg !3115

; <label>:655:                                    ; preds = %652
  store i8 0, i8* %29, align 1, !dbg !3116
  br label %656, !dbg !3117

; <label>:656:                                    ; preds = %655, %640
  br label %657

; <label>:657:                                    ; preds = %656, %634
  %658 = load i64, i64* %36, align 8, !dbg !3118
  %659 = load i64, i64* %20, align 8, !dbg !3120
  %660 = add i64 %659, 1, !dbg !3121
  %661 = icmp ule i64 %658, %660, !dbg !3122
  br i1 %661, label %662, label %663, !dbg !3123

; <label>:662:                                    ; preds = %657
  br label %682, !dbg !3124

; <label>:663:                                    ; preds = %657
  br label %664, !dbg !3125, !llvm.loop !3126

; <label>:664:                                    ; preds = %663
  %665 = load i64, i64* %21, align 8, !dbg !3127
  %666 = load i64, i64* %12, align 8, !dbg !3127
  %667 = icmp ult i64 %665, %666, !dbg !3127
  br i1 %667, label %668, label %673, !dbg !3130

; <label>:668:                                    ; preds = %664
  %669 = load i8, i8* %27, align 1, !dbg !3127
  %670 = load i8*, i8** %11, align 8, !dbg !3127
  %671 = load i64, i64* %21, align 8, !dbg !3127
  %672 = getelementptr inbounds i8, i8* %670, i64 %671, !dbg !3127
  store i8 %669, i8* %672, align 1, !dbg !3127
  br label %673, !dbg !3127

; <label>:673:                                    ; preds = %668, %664
  %674 = load i64, i64* %21, align 8, !dbg !3130
  %675 = add i64 %674, 1, !dbg !3130
  store i64 %675, i64* %21, align 8, !dbg !3130
  br label %676, !dbg !3130

; <label>:676:                                    ; preds = %673
  %677 = load i8*, i8** %13, align 8, !dbg !3131
  %678 = load i64, i64* %20, align 8, !dbg !3132
  %679 = add i64 %678, 1, !dbg !3132
  store i64 %679, i64* %20, align 8, !dbg !3132
  %680 = getelementptr inbounds i8, i8* %677, i64 %679, !dbg !3131
  %681 = load i8, i8* %680, align 1, !dbg !3131
  store i8 %681, i8* %27, align 1, !dbg !3133
  br label %577, !dbg !3134, !llvm.loop !3135

; <label>:682:                                    ; preds = %662
  br label %729, !dbg !3138

; <label>:683:                                    ; preds = %570, %567
  br label %684, !dbg !3139

; <label>:684:                                    ; preds = %683, %451, %450, %405, %396, %391, %378, %345, %249
  %685 = load i8, i8* %24, align 1, !dbg !3140
  %686 = trunc i8 %685 to i1, !dbg !3140
  br i1 %686, label %690, label %687, !dbg !3142

; <label>:687:                                    ; preds = %684
  %688 = load i8, i8* %26, align 1, !dbg !3143
  %689 = trunc i8 %688 to i1, !dbg !3143
  br i1 %689, label %690, label %707, !dbg !3144

; <label>:690:                                    ; preds = %687, %684
  %691 = load i32*, i32** %17, align 8, !dbg !3145
  %692 = icmp ne i32* %691, null, !dbg !3145
  br i1 %692, label %693, label %707, !dbg !3146

; <label>:693:                                    ; preds = %690
  %694 = load i32*, i32** %17, align 8, !dbg !3147
  %695 = load i8, i8* %27, align 1, !dbg !3148
  %696 = zext i8 %695 to i64, !dbg !3148
  %697 = udiv i64 %696, 32, !dbg !3149
  %698 = getelementptr inbounds i32, i32* %694, i64 %697, !dbg !3147
  %699 = load i32, i32* %698, align 4, !dbg !3147
  %700 = load i8, i8* %27, align 1, !dbg !3150
  %701 = zext i8 %700 to i64, !dbg !3150
  %702 = urem i64 %701, 32, !dbg !3151
  %703 = trunc i64 %702 to i32, !dbg !3152
  %704 = shl i32 1, %703, !dbg !3152
  %705 = and i32 %699, %704, !dbg !3153
  %706 = icmp ne i32 %705, 0, !dbg !3153
  br i1 %706, label %711, label %707, !dbg !3154

; <label>:707:                                    ; preds = %693, %690, %687
  %708 = load i8, i8* %29, align 1, !dbg !3155
  %709 = trunc i8 %708 to i1, !dbg !3155
  br i1 %709, label %711, label %710, !dbg !3156

; <label>:710:                                    ; preds = %707
  br label %729, !dbg !3157

; <label>:711:                                    ; preds = %707, %693
  br label %712, !dbg !3155

; <label>:712:                                    ; preds = %711, %376
  %713 = load i8, i8* %26, align 1, !dbg !3158
  %714 = trunc i8 %713 to i1, !dbg !3158
  br i1 %714, label %715, label %716, !dbg !3160

; <label>:715:                                    ; preds = %712
  br label %796, !dbg !3161

; <label>:716:                                    ; preds = %712
  br label %717, !dbg !3162, !llvm.loop !3163

; <label>:717:                                    ; preds = %716
  %718 = load i64, i64* %21, align 8, !dbg !3164
  %719 = load i64, i64* %12, align 8, !dbg !3164
  %720 = icmp ult i64 %718, %719, !dbg !3164
  br i1 %720, label %721, label %725, !dbg !3167

; <label>:721:                                    ; preds = %717
  %722 = load i8*, i8** %11, align 8, !dbg !3164
  %723 = load i64, i64* %21, align 8, !dbg !3164
  %724 = getelementptr inbounds i8, i8* %722, i64 %723, !dbg !3164
  store i8 92, i8* %724, align 1, !dbg !3164
  br label %725, !dbg !3164

; <label>:725:                                    ; preds = %721, %717
  %726 = load i64, i64* %21, align 8, !dbg !3167
  %727 = add i64 %726, 1, !dbg !3167
  store i64 %727, i64* %21, align 8, !dbg !3167
  br label %728, !dbg !3167

; <label>:728:                                    ; preds = %725
  br label %729, !dbg !3167

; <label>:729:                                    ; preds = %728, %710, %682, %363
  br label %730, !dbg !3168, !llvm.loop !3169

; <label>:730:                                    ; preds = %729
  %731 = load i64, i64* %21, align 8, !dbg !3170
  %732 = load i64, i64* %12, align 8, !dbg !3170
  %733 = icmp ult i64 %731, %732, !dbg !3170
  br i1 %733, label %734, label %739, !dbg !3173

; <label>:734:                                    ; preds = %730
  %735 = load i8, i8* %27, align 1, !dbg !3170
  %736 = load i8*, i8** %11, align 8, !dbg !3170
  %737 = load i64, i64* %21, align 8, !dbg !3170
  %738 = getelementptr inbounds i8, i8* %736, i64 %737, !dbg !3170
  store i8 %735, i8* %738, align 1, !dbg !3170
  br label %739, !dbg !3170

; <label>:739:                                    ; preds = %734, %730
  %740 = load i64, i64* %21, align 8, !dbg !3173
  %741 = add i64 %740, 1, !dbg !3173
  store i64 %741, i64* %21, align 8, !dbg !3173
  br label %742, !dbg !3173

; <label>:742:                                    ; preds = %739
  br label %743, !dbg !3174

; <label>:743:                                    ; preds = %742, %247
  %744 = load i64, i64* %20, align 8, !dbg !3175
  %745 = add i64 %744, 1, !dbg !3175
  store i64 %745, i64* %20, align 8, !dbg !3175
  br label %125, !dbg !3176, !llvm.loop !3177

; <label>:746:                                    ; preds = %141
  %747 = load i64, i64* %21, align 8, !dbg !3179
  %748 = icmp eq i64 %747, 0, !dbg !3181
  br i1 %748, label %749, label %756, !dbg !3182

; <label>:749:                                    ; preds = %746
  %750 = load i32, i32* %15, align 4, !dbg !3183
  %751 = icmp eq i32 %750, 2, !dbg !3184
  br i1 %751, label %752, label %756, !dbg !3185

; <label>:752:                                    ; preds = %749
  %753 = load i8, i8* %26, align 1, !dbg !3186
  %754 = trunc i8 %753 to i1, !dbg !3186
  br i1 %754, label %755, label %756, !dbg !3187

; <label>:755:                                    ; preds = %752
  br label %796, !dbg !3188

; <label>:756:                                    ; preds = %752, %749, %746
  %757 = load i8*, i8** %22, align 8, !dbg !3189
  %758 = icmp ne i8* %757, null, !dbg !3189
  br i1 %758, label %759, label %786, !dbg !3191

; <label>:759:                                    ; preds = %756
  %760 = load i8, i8* %26, align 1, !dbg !3192
  %761 = trunc i8 %760 to i1, !dbg !3192
  br i1 %761, label %786, label %762, !dbg !3193

; <label>:762:                                    ; preds = %759
  br label %763, !dbg !3194

; <label>:763:                                    ; preds = %782, %762
  %764 = load i8*, i8** %22, align 8, !dbg !3195
  %765 = load i8, i8* %764, align 1, !dbg !3198
  %766 = icmp ne i8 %765, 0, !dbg !3199
  br i1 %766, label %767, label %785, !dbg !3199

; <label>:767:                                    ; preds = %763
  br label %768, !dbg !3200, !llvm.loop !3201

; <label>:768:                                    ; preds = %767
  %769 = load i64, i64* %21, align 8, !dbg !3202
  %770 = load i64, i64* %12, align 8, !dbg !3202
  %771 = icmp ult i64 %769, %770, !dbg !3202
  br i1 %771, label %772, label %778, !dbg !3205

; <label>:772:                                    ; preds = %768
  %773 = load i8*, i8** %22, align 8, !dbg !3202
  %774 = load i8, i8* %773, align 1, !dbg !3202
  %775 = load i8*, i8** %11, align 8, !dbg !3202
  %776 = load i64, i64* %21, align 8, !dbg !3202
  %777 = getelementptr inbounds i8, i8* %775, i64 %776, !dbg !3202
  store i8 %774, i8* %777, align 1, !dbg !3202
  br label %778, !dbg !3202

; <label>:778:                                    ; preds = %772, %768
  %779 = load i64, i64* %21, align 8, !dbg !3205
  %780 = add i64 %779, 1, !dbg !3205
  store i64 %780, i64* %21, align 8, !dbg !3205
  br label %781, !dbg !3205

; <label>:781:                                    ; preds = %778
  br label %782, !dbg !3205

; <label>:782:                                    ; preds = %781
  %783 = load i8*, i8** %22, align 8, !dbg !3206
  %784 = getelementptr inbounds i8, i8* %783, i32 1, !dbg !3206
  store i8* %784, i8** %22, align 8, !dbg !3206
  br label %763, !dbg !3207, !llvm.loop !3208

; <label>:785:                                    ; preds = %763
  br label %786, !dbg !3209

; <label>:786:                                    ; preds = %785, %759, %756
  %787 = load i64, i64* %21, align 8, !dbg !3210
  %788 = load i64, i64* %12, align 8, !dbg !3212
  %789 = icmp ult i64 %787, %788, !dbg !3213
  br i1 %789, label %790, label %794, !dbg !3214

; <label>:790:                                    ; preds = %786
  %791 = load i8*, i8** %11, align 8, !dbg !3215
  %792 = load i64, i64* %21, align 8, !dbg !3216
  %793 = getelementptr inbounds i8, i8* %791, i64 %792, !dbg !3215
  store i8 0, i8* %793, align 1, !dbg !3217
  br label %794, !dbg !3215

; <label>:794:                                    ; preds = %790, %786
  %795 = load i64, i64* %21, align 8, !dbg !3218
  store i64 %795, i64* %10, align 8, !dbg !3219
  br label %807, !dbg !3219

; <label>:796:                                    ; preds = %755, %715, %586, %540, %412, %404, %371, %284, %255, %183, %168
  %797 = load i8*, i8** %11, align 8, !dbg !3220
  %798 = load i64, i64* %12, align 8, !dbg !3221
  %799 = load i8*, i8** %13, align 8, !dbg !3222
  %800 = load i64, i64* %14, align 8, !dbg !3223
  %801 = load i32, i32* %15, align 4, !dbg !3224
  %802 = load i32, i32* %16, align 4, !dbg !3225
  %803 = and i32 %802, -3, !dbg !3226
  %804 = load i8*, i8** %18, align 8, !dbg !3227
  %805 = load i8*, i8** %19, align 8, !dbg !3228
  %806 = call i64 @quotearg_buffer_restyled(i8* %797, i64 %798, i8* %799, i64 %800, i32 %801, i32 %803, i32* null, i8* %804, i8* %805), !dbg !3229
  store i64 %806, i64* %10, align 8, !dbg !3230
  br label %807, !dbg !3230

; <label>:807:                                    ; preds = %796, %794
  %808 = load i64, i64* %10, align 8, !dbg !3231
  ret i64 %808, !dbg !3231
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #5

; Function Attrs: noinline nounwind uwtable
define internal i8* @gettext_quote(i8*, i32) #2 !dbg !3232 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3235, metadata !DIExpression()), !dbg !3236
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3237, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3239, metadata !DIExpression()), !dbg !3240
  %8 = load i8*, i8** %4, align 8, !dbg !3241
  store i8* %8, i8** %6, align 8, !dbg !3240
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3242, metadata !DIExpression()), !dbg !3243
  %9 = load i8*, i8** %6, align 8, !dbg !3244
  %10 = load i8*, i8** %4, align 8, !dbg !3246
  %11 = icmp ne i8* %9, %10, !dbg !3247
  br i1 %11, label %12, label %14, !dbg !3248

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %6, align 8, !dbg !3249
  store i8* %13, i8** %3, align 8, !dbg !3250
  br label %44, !dbg !3250

; <label>:14:                                     ; preds = %2
  %15 = call i8* @locale_charset(), !dbg !3251
  store i8* %15, i8** %7, align 8, !dbg !3252
  %16 = load i8*, i8** %7, align 8, !dbg !3253
  %17 = call i32 @c_strcasecmp(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11.108, i32 0, i32 0)) #14, !dbg !3253
  %18 = icmp eq i32 %17, 0, !dbg !3253
  br i1 %18, label %19, label %27, !dbg !3255

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %4, align 8, !dbg !3256
  %21 = getelementptr inbounds i8, i8* %20, i64 0, !dbg !3256
  %22 = load i8, i8* %21, align 1, !dbg !3256
  %23 = sext i8 %22 to i32, !dbg !3256
  %24 = icmp eq i32 %23, 96, !dbg !3257
  %25 = zext i1 %24 to i64, !dbg !3256
  %26 = select i1 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12.109, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13.110, i32 0, i32 0), !dbg !3256
  store i8* %26, i8** %3, align 8, !dbg !3258
  br label %44, !dbg !3258

; <label>:27:                                     ; preds = %14
  %28 = load i8*, i8** %7, align 8, !dbg !3259
  %29 = call i32 @c_strcasecmp(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14.111, i32 0, i32 0)) #14, !dbg !3259
  %30 = icmp eq i32 %29, 0, !dbg !3259
  br i1 %30, label %31, label %39, !dbg !3261

; <label>:31:                                     ; preds = %27
  %32 = load i8*, i8** %4, align 8, !dbg !3262
  %33 = getelementptr inbounds i8, i8* %32, i64 0, !dbg !3262
  %34 = load i8, i8* %33, align 1, !dbg !3262
  %35 = sext i8 %34 to i32, !dbg !3262
  %36 = icmp eq i32 %35, 96, !dbg !3263
  %37 = zext i1 %36 to i64, !dbg !3262
  %38 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.112, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16.113, i32 0, i32 0), !dbg !3262
  store i8* %38, i8** %3, align 8, !dbg !3264
  br label %44, !dbg !3264

; <label>:39:                                     ; preds = %27
  %40 = load i32, i32* %5, align 4, !dbg !3265
  %41 = icmp eq i32 %40, 7, !dbg !3266
  %42 = zext i1 %41 to i64, !dbg !3265
  %43 = select i1 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.105, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.107, i32 0, i32 0), !dbg !3265
  store i8* %43, i8** %3, align 8, !dbg !3267
  br label %44, !dbg !3267

; <label>:44:                                     ; preds = %39, %31, %19, %12
  %45 = load i8*, i8** %3, align 8, !dbg !3268
  ret i8* %45, !dbg !3268
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) #5

; Function Attrs: nounwind
declare i32 @iswprint(i32) #5

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) #6

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) #2 !dbg !3269 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3272, metadata !DIExpression()), !dbg !3273
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3274, metadata !DIExpression()), !dbg !3275
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %6, metadata !3276, metadata !DIExpression()), !dbg !3277
  %7 = load i8*, i8** %4, align 8, !dbg !3278
  %8 = load i64, i64* %5, align 8, !dbg !3279
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8, !dbg !3280
  %10 = call i8* @quotearg_alloc_mem(i8* %7, i64 %8, i64* null, %struct.quoting_options* %9), !dbg !3281
  ret i8* %10, !dbg !3282
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) #2 !dbg !3283 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3286, metadata !DIExpression()), !dbg !3287
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3288, metadata !DIExpression()), !dbg !3289
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !3290, metadata !DIExpression()), !dbg !3291
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !3292, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %9, metadata !3294, metadata !DIExpression()), !dbg !3295
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3296
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !3296
  br i1 %15, label %16, label %18, !dbg !3296

; <label>:16:                                     ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3297
  br label %19, !dbg !3296

; <label>:18:                                     ; preds = %4
  br label %19, !dbg !3296

; <label>:19:                                     ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !3296
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8, !dbg !3295
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3298, metadata !DIExpression()), !dbg !3299
  %21 = call i32* @__errno_location() #16, !dbg !3300
  %22 = load i32, i32* %21, align 4, !dbg !3300
  store i32 %22, i32* %10, align 4, !dbg !3299
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3301, metadata !DIExpression()), !dbg !3302
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3303
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1, !dbg !3304
  %25 = load i32, i32* %24, align 4, !dbg !3304
  %26 = load i64*, i64** %7, align 8, !dbg !3305
  %27 = icmp ne i64* %26, null, !dbg !3305
  %28 = zext i1 %27 to i64, !dbg !3305
  %29 = select i1 %27, i32 0, i32 1, !dbg !3305
  %30 = or i32 %25, %29, !dbg !3306
  store i32 %30, i32* %11, align 4, !dbg !3302
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3307, metadata !DIExpression()), !dbg !3308
  %31 = load i8*, i8** %5, align 8, !dbg !3309
  %32 = load i64, i64* %6, align 8, !dbg !3310
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3311
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0, !dbg !3312
  %35 = load i32, i32* %34, align 8, !dbg !3312
  %36 = load i32, i32* %11, align 4, !dbg !3313
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3314
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2, !dbg !3315
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i32 0, i32 0, !dbg !3314
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3316
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3, !dbg !3317
  %42 = load i8*, i8** %41, align 8, !dbg !3317
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3318
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4, !dbg !3319
  %45 = load i8*, i8** %44, align 8, !dbg !3319
  %46 = call i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %31, i64 %32, i32 %35, i32 %36, i32* %39, i8* %42, i8* %45), !dbg !3320
  %47 = add i64 %46, 1, !dbg !3321
  store i64 %47, i64* %12, align 8, !dbg !3308
  call void @llvm.dbg.declare(metadata i8** %13, metadata !3322, metadata !DIExpression()), !dbg !3323
  %48 = load i64, i64* %12, align 8, !dbg !3324
  %49 = call noalias i8* @xcharalloc(i64 %48), !dbg !3325
  store i8* %49, i8** %13, align 8, !dbg !3323
  %50 = load i8*, i8** %13, align 8, !dbg !3326
  %51 = load i64, i64* %12, align 8, !dbg !3327
  %52 = load i8*, i8** %5, align 8, !dbg !3328
  %53 = load i64, i64* %6, align 8, !dbg !3329
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3330
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0, !dbg !3331
  %56 = load i32, i32* %55, align 8, !dbg !3331
  %57 = load i32, i32* %11, align 4, !dbg !3332
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3333
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2, !dbg !3334
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i32 0, i32 0, !dbg !3333
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3335
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !3336
  %63 = load i8*, i8** %62, align 8, !dbg !3336
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3337
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4, !dbg !3338
  %66 = load i8*, i8** %65, align 8, !dbg !3338
  %67 = call i64 @quotearg_buffer_restyled(i8* %50, i64 %51, i8* %52, i64 %53, i32 %56, i32 %57, i32* %60, i8* %63, i8* %66), !dbg !3339
  %68 = load i32, i32* %10, align 4, !dbg !3340
  %69 = call i32* @__errno_location() #16, !dbg !3341
  store i32 %68, i32* %69, align 4, !dbg !3342
  %70 = load i64*, i64** %7, align 8, !dbg !3343
  %71 = icmp ne i64* %70, null, !dbg !3343
  br i1 %71, label %72, label %76, !dbg !3345

; <label>:72:                                     ; preds = %19
  %73 = load i64, i64* %12, align 8, !dbg !3346
  %74 = sub i64 %73, 1, !dbg !3347
  %75 = load i64*, i64** %7, align 8, !dbg !3348
  store i64 %74, i64* %75, align 8, !dbg !3349
  br label %76, !dbg !3350

; <label>:76:                                     ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8, !dbg !3351
  ret i8* %77, !dbg !3352
}

; Function Attrs: noinline nounwind uwtable
define void @quotearg_free() #2 !dbg !3353 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %1, metadata !3354, metadata !DIExpression()), !dbg !3355
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3356
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8, !dbg !3355
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3357, metadata !DIExpression()), !dbg !3358
  store i32 1, i32* %2, align 4, !dbg !3359
  br label %4, !dbg !3361

; <label>:4:                                      ; preds = %15, %0
  %5 = load i32, i32* %2, align 4, !dbg !3362
  %6 = load i32, i32* @nslots, align 4, !dbg !3364
  %7 = icmp ult i32 %5, %6, !dbg !3365
  br i1 %7, label %8, label %18, !dbg !3366

; <label>:8:                                      ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3367
  %10 = load i32, i32* %2, align 4, !dbg !3368
  %11 = zext i32 %10 to i64, !dbg !3367
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11, !dbg !3367
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1, !dbg !3369
  %14 = load i8*, i8** %13, align 8, !dbg !3369
  call void @free(i8* %14) #11, !dbg !3370
  br label %15, !dbg !3370

; <label>:15:                                     ; preds = %8
  %16 = load i32, i32* %2, align 4, !dbg !3371
  %17 = add i32 %16, 1, !dbg !3371
  store i32 %17, i32* %2, align 4, !dbg !3371
  br label %4, !dbg !3372, !llvm.loop !3373

; <label>:18:                                     ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3375
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0, !dbg !3375
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1, !dbg !3377
  %22 = load i8*, i8** %21, align 8, !dbg !3377
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0), !dbg !3378
  br i1 %23, label %24, label %29, !dbg !3379

; <label>:24:                                     ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3380
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0, !dbg !3380
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1, !dbg !3382
  %28 = load i8*, i8** %27, align 8, !dbg !3382
  call void @free(i8* %28) #11, !dbg !3383
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !3384
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !3385
  br label %29, !dbg !3386

; <label>:29:                                     ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3387
  %31 = icmp ne %struct.slotvec* %30, @slotvec0, !dbg !3389
  br i1 %31, label %32, label %35, !dbg !3390

; <label>:32:                                     ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3391
  %34 = bitcast %struct.slotvec* %33 to i8*, !dbg !3391
  call void @free(i8* %34) #11, !dbg !3393
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3394
  br label %35, !dbg !3395

; <label>:35:                                     ; preds = %32, %29
  store i32 1, i32* @nslots, align 4, !dbg !3396
  ret void, !dbg !3397
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_n(i32, i8*) #2 !dbg !3398 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3401, metadata !DIExpression()), !dbg !3402
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3403, metadata !DIExpression()), !dbg !3404
  %5 = load i32, i32* %3, align 4, !dbg !3405
  %6 = load i8*, i8** %4, align 8, !dbg !3406
  %7 = call i8* @quotearg_n_options(i32 %5, i8* %6, i64 -1, %struct.quoting_options* @default_quoting_options), !dbg !3407
  ret i8* %7, !dbg !3408
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) #2 !dbg !3409 {
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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3412, metadata !DIExpression()), !dbg !3413
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3414, metadata !DIExpression()), !dbg !3415
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3416, metadata !DIExpression()), !dbg !3417
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !3418, metadata !DIExpression()), !dbg !3419
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3420, metadata !DIExpression()), !dbg !3421
  %18 = call i32* @__errno_location() #16, !dbg !3422
  %19 = load i32, i32* %18, align 4, !dbg !3422
  store i32 %19, i32* %9, align 4, !dbg !3421
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3423, metadata !DIExpression()), !dbg !3424
  %20 = load i32, i32* %5, align 4, !dbg !3425
  store i32 %20, i32* %10, align 4, !dbg !3424
  call void @llvm.dbg.declare(metadata %struct.slotvec** %11, metadata !3426, metadata !DIExpression()), !dbg !3427
  %21 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3428
  store %struct.slotvec* %21, %struct.slotvec** %11, align 8, !dbg !3427
  %22 = load i32, i32* %5, align 4, !dbg !3429
  %23 = icmp slt i32 %22, 0, !dbg !3431
  br i1 %23, label %24, label %25, !dbg !3432

; <label>:24:                                     ; preds = %4
  call void @abort() #13, !dbg !3433
  unreachable, !dbg !3433

; <label>:25:                                     ; preds = %4
  %26 = load i32, i32* @nslots, align 4, !dbg !3434
  %27 = load i32, i32* %10, align 4, !dbg !3436
  %28 = icmp ule i32 %26, %27, !dbg !3437
  br i1 %28, label %29, label %70, !dbg !3438

; <label>:29:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3439, metadata !DIExpression()), !dbg !3441
  %30 = load i32, i32* %10, align 4, !dbg !3442
  %31 = add i32 %30, 1, !dbg !3443
  %32 = zext i32 %31 to i64, !dbg !3442
  store i64 %32, i64* %12, align 8, !dbg !3441
  call void @llvm.dbg.declare(metadata i8* %13, metadata !3444, metadata !DIExpression()), !dbg !3445
  %33 = load %struct.slotvec*, %struct.slotvec** %11, align 8, !dbg !3446
  %34 = icmp eq %struct.slotvec* %33, @slotvec0, !dbg !3447
  %35 = zext i1 %34 to i8, !dbg !3445
  store i8 %35, i8* %13, align 1, !dbg !3445
  %36 = load i64, i64* %12, align 8, !dbg !3448
  %37 = icmp ult i64 1152921504606846975, %36, !dbg !3448
  br i1 %37, label %38, label %39, !dbg !3450

; <label>:38:                                     ; preds = %29
  call void @xalloc_die() #15, !dbg !3451
  unreachable, !dbg !3451

; <label>:39:                                     ; preds = %29
  %40 = load i8, i8* %13, align 1, !dbg !3452
  %41 = trunc i8 %40 to i1, !dbg !3452
  br i1 %41, label %42, label %43, !dbg !3452

; <label>:42:                                     ; preds = %39
  br label %45, !dbg !3452

; <label>:43:                                     ; preds = %39
  %44 = load %struct.slotvec*, %struct.slotvec** %11, align 8, !dbg !3453
  br label %45, !dbg !3452

; <label>:45:                                     ; preds = %43, %42
  %46 = phi %struct.slotvec* [ null, %42 ], [ %44, %43 ], !dbg !3452
  %47 = bitcast %struct.slotvec* %46 to i8*, !dbg !3452
  %48 = load i64, i64* %12, align 8, !dbg !3454
  %49 = mul i64 %48, 16, !dbg !3455
  %50 = call i8* @xrealloc(i8* %47, i64 %49), !dbg !3456
  %51 = bitcast i8* %50 to %struct.slotvec*, !dbg !3456
  store %struct.slotvec* %51, %struct.slotvec** %11, align 8, !dbg !3457
  store %struct.slotvec* %51, %struct.slotvec** @slotvec, align 8, !dbg !3458
  %52 = load i8, i8* %13, align 1, !dbg !3459
  %53 = trunc i8 %52 to i1, !dbg !3459
  br i1 %53, label %54, label %57, !dbg !3461

; <label>:54:                                     ; preds = %45
  %55 = load %struct.slotvec*, %struct.slotvec** %11, align 8, !dbg !3462
  %56 = bitcast %struct.slotvec* %55 to i8*, !dbg !3463
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !3463
  br label %57, !dbg !3464

; <label>:57:                                     ; preds = %54, %45
  %58 = load %struct.slotvec*, %struct.slotvec** %11, align 8, !dbg !3465
  %59 = load i32, i32* @nslots, align 4, !dbg !3466
  %60 = zext i32 %59 to i64, !dbg !3467
  %61 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %58, i64 %60, !dbg !3467
  %62 = bitcast %struct.slotvec* %61 to i8*, !dbg !3468
  %63 = load i64, i64* %12, align 8, !dbg !3469
  %64 = load i32, i32* @nslots, align 4, !dbg !3470
  %65 = zext i32 %64 to i64, !dbg !3470
  %66 = sub i64 %63, %65, !dbg !3471
  %67 = mul i64 %66, 16, !dbg !3472
  call void @llvm.memset.p0i8.i64(i8* %62, i8 0, i64 %67, i32 8, i1 false), !dbg !3468
  %68 = load i64, i64* %12, align 8, !dbg !3473
  %69 = trunc i64 %68 to i32, !dbg !3473
  store i32 %69, i32* @nslots, align 4, !dbg !3474
  br label %70, !dbg !3475

; <label>:70:                                     ; preds = %57, %25
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3476, metadata !DIExpression()), !dbg !3478
  %71 = load %struct.slotvec*, %struct.slotvec** %11, align 8, !dbg !3479
  %72 = load i32, i32* %5, align 4, !dbg !3480
  %73 = sext i32 %72 to i64, !dbg !3479
  %74 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %71, i64 %73, !dbg !3479
  %75 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %74, i32 0, i32 0, !dbg !3481
  %76 = load i64, i64* %75, align 8, !dbg !3481
  store i64 %76, i64* %14, align 8, !dbg !3478
  call void @llvm.dbg.declare(metadata i8** %15, metadata !3482, metadata !DIExpression()), !dbg !3483
  %77 = load %struct.slotvec*, %struct.slotvec** %11, align 8, !dbg !3484
  %78 = load i32, i32* %5, align 4, !dbg !3485
  %79 = sext i32 %78 to i64, !dbg !3484
  %80 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %77, i64 %79, !dbg !3484
  %81 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %80, i32 0, i32 1, !dbg !3486
  %82 = load i8*, i8** %81, align 8, !dbg !3486
  store i8* %82, i8** %15, align 8, !dbg !3483
  call void @llvm.dbg.declare(metadata i32* %16, metadata !3487, metadata !DIExpression()), !dbg !3488
  %83 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3489
  %84 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %83, i32 0, i32 1, !dbg !3490
  %85 = load i32, i32* %84, align 4, !dbg !3490
  %86 = or i32 %85, 1, !dbg !3491
  store i32 %86, i32* %16, align 4, !dbg !3488
  call void @llvm.dbg.declare(metadata i64* %17, metadata !3492, metadata !DIExpression()), !dbg !3493
  %87 = load i8*, i8** %15, align 8, !dbg !3494
  %88 = load i64, i64* %14, align 8, !dbg !3495
  %89 = load i8*, i8** %6, align 8, !dbg !3496
  %90 = load i64, i64* %7, align 8, !dbg !3497
  %91 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3498
  %92 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %91, i32 0, i32 0, !dbg !3499
  %93 = load i32, i32* %92, align 8, !dbg !3499
  %94 = load i32, i32* %16, align 4, !dbg !3500
  %95 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3501
  %96 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %95, i32 0, i32 2, !dbg !3502
  %97 = getelementptr inbounds [8 x i32], [8 x i32]* %96, i32 0, i32 0, !dbg !3501
  %98 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3503
  %99 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %98, i32 0, i32 3, !dbg !3504
  %100 = load i8*, i8** %99, align 8, !dbg !3504
  %101 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3505
  %102 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %101, i32 0, i32 4, !dbg !3506
  %103 = load i8*, i8** %102, align 8, !dbg !3506
  %104 = call i64 @quotearg_buffer_restyled(i8* %87, i64 %88, i8* %89, i64 %90, i32 %93, i32 %94, i32* %97, i8* %100, i8* %103), !dbg !3507
  store i64 %104, i64* %17, align 8, !dbg !3493
  %105 = load i64, i64* %14, align 8, !dbg !3508
  %106 = load i64, i64* %17, align 8, !dbg !3510
  %107 = icmp ule i64 %105, %106, !dbg !3511
  br i1 %107, label %108, label %146, !dbg !3512

; <label>:108:                                    ; preds = %70
  %109 = load i64, i64* %17, align 8, !dbg !3513
  %110 = add i64 %109, 1, !dbg !3515
  store i64 %110, i64* %14, align 8, !dbg !3516
  %111 = load %struct.slotvec*, %struct.slotvec** %11, align 8, !dbg !3517
  %112 = load i32, i32* %5, align 4, !dbg !3518
  %113 = sext i32 %112 to i64, !dbg !3517
  %114 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %111, i64 %113, !dbg !3517
  %115 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %114, i32 0, i32 0, !dbg !3519
  store i64 %110, i64* %115, align 8, !dbg !3520
  %116 = load i8*, i8** %15, align 8, !dbg !3521
  %117 = icmp ne i8* %116, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0), !dbg !3523
  br i1 %117, label %118, label %120, !dbg !3524

; <label>:118:                                    ; preds = %108
  %119 = load i8*, i8** %15, align 8, !dbg !3525
  call void @free(i8* %119) #11, !dbg !3526
  br label %120, !dbg !3526

; <label>:120:                                    ; preds = %118, %108
  %121 = load i64, i64* %14, align 8, !dbg !3527
  %122 = call noalias i8* @xcharalloc(i64 %121), !dbg !3528
  store i8* %122, i8** %15, align 8, !dbg !3529
  %123 = load %struct.slotvec*, %struct.slotvec** %11, align 8, !dbg !3530
  %124 = load i32, i32* %5, align 4, !dbg !3531
  %125 = sext i32 %124 to i64, !dbg !3530
  %126 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %123, i64 %125, !dbg !3530
  %127 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %126, i32 0, i32 1, !dbg !3532
  store i8* %122, i8** %127, align 8, !dbg !3533
  %128 = load i8*, i8** %15, align 8, !dbg !3534
  %129 = load i64, i64* %14, align 8, !dbg !3535
  %130 = load i8*, i8** %6, align 8, !dbg !3536
  %131 = load i64, i64* %7, align 8, !dbg !3537
  %132 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3538
  %133 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %132, i32 0, i32 0, !dbg !3539
  %134 = load i32, i32* %133, align 8, !dbg !3539
  %135 = load i32, i32* %16, align 4, !dbg !3540
  %136 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3541
  %137 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %136, i32 0, i32 2, !dbg !3542
  %138 = getelementptr inbounds [8 x i32], [8 x i32]* %137, i32 0, i32 0, !dbg !3541
  %139 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3543
  %140 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %139, i32 0, i32 3, !dbg !3544
  %141 = load i8*, i8** %140, align 8, !dbg !3544
  %142 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3545
  %143 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %142, i32 0, i32 4, !dbg !3546
  %144 = load i8*, i8** %143, align 8, !dbg !3546
  %145 = call i64 @quotearg_buffer_restyled(i8* %128, i64 %129, i8* %130, i64 %131, i32 %134, i32 %135, i32* %138, i8* %141, i8* %144), !dbg !3547
  br label %146, !dbg !3548

; <label>:146:                                    ; preds = %120, %70
  %147 = load i32, i32* %9, align 4, !dbg !3549
  %148 = call i32* @__errno_location() #16, !dbg !3550
  store i32 %147, i32* %148, align 4, !dbg !3551
  %149 = load i8*, i8** %15, align 8, !dbg !3552
  ret i8* %149, !dbg !3553
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #10

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) #2 !dbg !3554 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3557, metadata !DIExpression()), !dbg !3558
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3559, metadata !DIExpression()), !dbg !3560
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3561, metadata !DIExpression()), !dbg !3562
  %7 = load i32, i32* %4, align 4, !dbg !3563
  %8 = load i8*, i8** %5, align 8, !dbg !3564
  %9 = load i64, i64* %6, align 8, !dbg !3565
  %10 = call i8* @quotearg_n_options(i32 %7, i8* %8, i64 %9, %struct.quoting_options* @default_quoting_options), !dbg !3566
  ret i8* %10, !dbg !3567
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg(i8*) #2 !dbg !3568 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3569, metadata !DIExpression()), !dbg !3570
  %3 = load i8*, i8** %2, align 8, !dbg !3571
  %4 = call i8* @quotearg_n(i32 0, i8* %3), !dbg !3572
  ret i8* %4, !dbg !3573
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_mem(i8*, i64) #2 !dbg !3574 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3577, metadata !DIExpression()), !dbg !3578
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3579, metadata !DIExpression()), !dbg !3580
  %5 = load i8*, i8** %3, align 8, !dbg !3581
  %6 = load i64, i64* %4, align 8, !dbg !3582
  %7 = call i8* @quotearg_n_mem(i32 0, i8* %5, i64 %6), !dbg !3583
  ret i8* %7, !dbg !3584
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_n_style(i32, i32, i8*) #2 !dbg !3585 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3588, metadata !DIExpression()), !dbg !3589
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3590, metadata !DIExpression()), !dbg !3591
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3592, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3594, metadata !DIExpression()), !dbg !3595
  %8 = load i32, i32* %5, align 4, !dbg !3596
  call void @quoting_options_from_style(%struct.quoting_options* sret %7, i32 %8), !dbg !3597
  %9 = load i32, i32* %4, align 4, !dbg !3598
  %10 = load i8*, i8** %6, align 8, !dbg !3599
  %11 = call i8* @quotearg_n_options(i32 %9, i8* %10, i64 -1, %struct.quoting_options* %7), !dbg !3600
  ret i8* %11, !dbg !3601
}

; Function Attrs: noinline nounwind uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret, i32) #2 !dbg !3602 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options, align 8
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3605, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3607, metadata !DIExpression()), !dbg !3608
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3608
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 56, i32 8, i1 false), !dbg !3608
  %6 = load i32, i32* %3, align 4, !dbg !3609
  %7 = icmp eq i32 %6, 8, !dbg !3611
  br i1 %7, label %8, label %9, !dbg !3612

; <label>:8:                                      ; preds = %2
  call void @abort() #13, !dbg !3613
  unreachable, !dbg !3613

; <label>:9:                                      ; preds = %2
  %10 = load i32, i32* %3, align 4, !dbg !3614
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i32 0, i32 0, !dbg !3615
  store i32 %10, i32* %11, align 8, !dbg !3616
  %12 = bitcast %struct.quoting_options* %0 to i8*, !dbg !3617
  %13 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3617
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 56, i32 8, i1 false), !dbg !3617
  ret void, !dbg !3618
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) #2 !dbg !3619 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3622, metadata !DIExpression()), !dbg !3623
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3624, metadata !DIExpression()), !dbg !3625
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3626, metadata !DIExpression()), !dbg !3627
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3628, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %9, metadata !3630, metadata !DIExpression()), !dbg !3631
  %10 = load i32, i32* %6, align 4, !dbg !3632
  call void @quoting_options_from_style(%struct.quoting_options* sret %9, i32 %10), !dbg !3633
  %11 = load i32, i32* %5, align 4, !dbg !3634
  %12 = load i8*, i8** %7, align 8, !dbg !3635
  %13 = load i64, i64* %8, align 8, !dbg !3636
  %14 = call i8* @quotearg_n_options(i32 %11, i8* %12, i64 %13, %struct.quoting_options* %9), !dbg !3637
  ret i8* %14, !dbg !3638
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_style(i32, i8*) #2 !dbg !3639 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3642, metadata !DIExpression()), !dbg !3643
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3644, metadata !DIExpression()), !dbg !3645
  %5 = load i32, i32* %3, align 4, !dbg !3646
  %6 = load i8*, i8** %4, align 8, !dbg !3647
  %7 = call i8* @quotearg_n_style(i32 0, i32 %5, i8* %6), !dbg !3648
  ret i8* %7, !dbg !3649
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) #2 !dbg !3650 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3653, metadata !DIExpression()), !dbg !3654
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3655, metadata !DIExpression()), !dbg !3656
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3657, metadata !DIExpression()), !dbg !3658
  %7 = load i32, i32* %4, align 4, !dbg !3659
  %8 = load i8*, i8** %5, align 8, !dbg !3660
  %9 = load i64, i64* %6, align 8, !dbg !3661
  %10 = call i8* @quotearg_n_style_mem(i32 0, i32 %7, i8* %8, i64 %9), !dbg !3662
  ret i8* %10, !dbg !3663
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) #2 !dbg !3664 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3667, metadata !DIExpression()), !dbg !3668
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3669, metadata !DIExpression()), !dbg !3670
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3671, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3673, metadata !DIExpression()), !dbg !3674
  %8 = bitcast %struct.quoting_options* %7 to i8*, !dbg !3675
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3675
  %9 = load i8, i8* %6, align 1, !dbg !3676
  %10 = call i32 @set_char_quoting(%struct.quoting_options* %7, i8 signext %9, i32 1), !dbg !3677
  %11 = load i8*, i8** %4, align 8, !dbg !3678
  %12 = load i64, i64* %5, align 8, !dbg !3679
  %13 = call i8* @quotearg_n_options(i32 0, i8* %11, i64 %12, %struct.quoting_options* %7), !dbg !3680
  ret i8* %13, !dbg !3681
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_char(i8*, i8 signext) #2 !dbg !3682 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3685, metadata !DIExpression()), !dbg !3686
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3687, metadata !DIExpression()), !dbg !3688
  %5 = load i8*, i8** %3, align 8, !dbg !3689
  %6 = load i8, i8* %4, align 1, !dbg !3690
  %7 = call i8* @quotearg_char_mem(i8* %5, i64 -1, i8 signext %6), !dbg !3691
  ret i8* %7, !dbg !3692
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_colon(i8*) #2 !dbg !3693 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3694, metadata !DIExpression()), !dbg !3695
  %3 = load i8*, i8** %2, align 8, !dbg !3696
  %4 = call i8* @quotearg_char(i8* %3, i8 signext 58), !dbg !3697
  ret i8* %4, !dbg !3698
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_colon_mem(i8*, i64) #2 !dbg !3699 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3700, metadata !DIExpression()), !dbg !3701
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3702, metadata !DIExpression()), !dbg !3703
  %5 = load i8*, i8** %3, align 8, !dbg !3704
  %6 = load i64, i64* %4, align 8, !dbg !3705
  %7 = call i8* @quotearg_char_mem(i8* %5, i64 %6, i8 signext 58), !dbg !3706
  ret i8* %7, !dbg !3707
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) #2 !dbg !3708 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3711, metadata !DIExpression()), !dbg !3712
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3713, metadata !DIExpression()), !dbg !3714
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3715, metadata !DIExpression()), !dbg !3716
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3717, metadata !DIExpression()), !dbg !3718
  %9 = load i32, i32* %5, align 4, !dbg !3719
  %10 = load i8*, i8** %6, align 8, !dbg !3720
  %11 = load i8*, i8** %7, align 8, !dbg !3721
  %12 = load i8*, i8** %8, align 8, !dbg !3722
  %13 = call i8* @quotearg_n_custom_mem(i32 %9, i8* %10, i8* %11, i8* %12, i64 -1), !dbg !3723
  ret i8* %13, !dbg !3724
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) #2 !dbg !3725 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3728, metadata !DIExpression()), !dbg !3729
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3730, metadata !DIExpression()), !dbg !3731
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3732, metadata !DIExpression()), !dbg !3733
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3734, metadata !DIExpression()), !dbg !3735
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3736, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %11, metadata !3738, metadata !DIExpression()), !dbg !3739
  %12 = bitcast %struct.quoting_options* %11 to i8*, !dbg !3740
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3740
  %13 = load i8*, i8** %7, align 8, !dbg !3741
  %14 = load i8*, i8** %8, align 8, !dbg !3742
  call void @set_custom_quoting(%struct.quoting_options* %11, i8* %13, i8* %14), !dbg !3743
  %15 = load i32, i32* %6, align 4, !dbg !3744
  %16 = load i8*, i8** %9, align 8, !dbg !3745
  %17 = load i64, i64* %10, align 8, !dbg !3746
  %18 = call i8* @quotearg_n_options(i32 %15, i8* %16, i64 %17, %struct.quoting_options* %11), !dbg !3747
  ret i8* %18, !dbg !3748
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) #2 !dbg !3749 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3752, metadata !DIExpression()), !dbg !3753
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3754, metadata !DIExpression()), !dbg !3755
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3756, metadata !DIExpression()), !dbg !3757
  %7 = load i8*, i8** %4, align 8, !dbg !3758
  %8 = load i8*, i8** %5, align 8, !dbg !3759
  %9 = load i8*, i8** %6, align 8, !dbg !3760
  %10 = call i8* @quotearg_n_custom(i32 0, i8* %7, i8* %8, i8* %9), !dbg !3761
  ret i8* %10, !dbg !3762
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) #2 !dbg !3763 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3766, metadata !DIExpression()), !dbg !3767
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3768, metadata !DIExpression()), !dbg !3769
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3770, metadata !DIExpression()), !dbg !3771
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3772, metadata !DIExpression()), !dbg !3773
  %9 = load i8*, i8** %5, align 8, !dbg !3774
  %10 = load i8*, i8** %6, align 8, !dbg !3775
  %11 = load i8*, i8** %7, align 8, !dbg !3776
  %12 = load i64, i64* %8, align 8, !dbg !3777
  %13 = call i8* @quotearg_n_custom_mem(i32 0, i8* %9, i8* %10, i8* %11, i64 %12), !dbg !3778
  ret i8* %13, !dbg !3779
}

; Function Attrs: noinline nounwind uwtable
define i8* @quote_n(i32, i8*) #2 !dbg !3780 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3783, metadata !DIExpression()), !dbg !3784
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3785, metadata !DIExpression()), !dbg !3786
  %5 = load i32, i32* %3, align 4, !dbg !3787
  %6 = load i8*, i8** %4, align 8, !dbg !3788
  %7 = call i8* @quotearg_n_options(i32 %5, i8* %6, i64 -1, %struct.quoting_options* @quote_quoting_options), !dbg !3789
  ret i8* %7, !dbg !3790
}

; Function Attrs: noinline nounwind uwtable
define i8* @quote(i8*) #2 !dbg !3791 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3794, metadata !DIExpression()), !dbg !3795
  %3 = load i8*, i8** %2, align 8, !dbg !3796
  %4 = call i8* @quote_n(i32 0, i8* %3), !dbg !3797
  ret i8* %4, !dbg !3798
}

; Function Attrs: noinline nounwind uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8**, i64) #2 !dbg !3799 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !3842, metadata !DIExpression()), !dbg !3843
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3844, metadata !DIExpression()), !dbg !3845
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3846, metadata !DIExpression()), !dbg !3847
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3848, metadata !DIExpression()), !dbg !3849
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !3850, metadata !DIExpression()), !dbg !3851
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3852, metadata !DIExpression()), !dbg !3853
  %13 = load i8*, i8** %8, align 8, !dbg !3854
  %14 = icmp ne i8* %13, null, !dbg !3854
  br i1 %14, label %15, label %21, !dbg !3856

; <label>:15:                                     ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3857
  %17 = load i8*, i8** %8, align 8, !dbg !3858
  %18 = load i8*, i8** %9, align 8, !dbg !3859
  %19 = load i8*, i8** %10, align 8, !dbg !3860
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.122, i32 0, i32 0), i8* %17, i8* %18, i8* %19), !dbg !3861
  br label %26, !dbg !3861

; <label>:21:                                     ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3862
  %23 = load i8*, i8** %9, align 8, !dbg !3863
  %24 = load i8*, i8** %10, align 8, !dbg !3864
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.123, i32 0, i32 0), i8* %23, i8* %24), !dbg !3865
  br label %26

; <label>:26:                                     ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3866
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.124, i32 0, i32 0), i32 2012), !dbg !3867
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3868
  %30 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.125, i32 0, i32 0), %struct._IO_FILE* %29), !dbg !3868
  %31 = load i64, i64* %12, align 8, !dbg !3869
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
  ], !dbg !3870

; <label>:32:                                     ; preds = %26
  call void @abort() #13, !dbg !3871
  unreachable, !dbg !3871

; <label>:33:                                     ; preds = %26
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3873
  %35 = load i8**, i8*** %11, align 8, !dbg !3874
  %36 = getelementptr inbounds i8*, i8** %35, i64 0, !dbg !3874
  %37 = load i8*, i8** %36, align 8, !dbg !3874
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.126, i32 0, i32 0), i8* %37), !dbg !3875
  br label %225, !dbg !3876

; <label>:39:                                     ; preds = %26
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3877
  %41 = load i8**, i8*** %11, align 8, !dbg !3878
  %42 = getelementptr inbounds i8*, i8** %41, i64 0, !dbg !3878
  %43 = load i8*, i8** %42, align 8, !dbg !3878
  %44 = load i8**, i8*** %11, align 8, !dbg !3879
  %45 = getelementptr inbounds i8*, i8** %44, i64 1, !dbg !3879
  %46 = load i8*, i8** %45, align 8, !dbg !3879
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.127, i32 0, i32 0), i8* %43, i8* %46), !dbg !3880
  br label %225, !dbg !3881

; <label>:48:                                     ; preds = %26
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3882
  %50 = load i8**, i8*** %11, align 8, !dbg !3883
  %51 = getelementptr inbounds i8*, i8** %50, i64 0, !dbg !3883
  %52 = load i8*, i8** %51, align 8, !dbg !3883
  %53 = load i8**, i8*** %11, align 8, !dbg !3884
  %54 = getelementptr inbounds i8*, i8** %53, i64 1, !dbg !3884
  %55 = load i8*, i8** %54, align 8, !dbg !3884
  %56 = load i8**, i8*** %11, align 8, !dbg !3885
  %57 = getelementptr inbounds i8*, i8** %56, i64 2, !dbg !3885
  %58 = load i8*, i8** %57, align 8, !dbg !3885
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.128, i32 0, i32 0), i8* %52, i8* %55, i8* %58), !dbg !3886
  br label %225, !dbg !3887

; <label>:60:                                     ; preds = %26
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3888
  %62 = load i8**, i8*** %11, align 8, !dbg !3889
  %63 = getelementptr inbounds i8*, i8** %62, i64 0, !dbg !3889
  %64 = load i8*, i8** %63, align 8, !dbg !3889
  %65 = load i8**, i8*** %11, align 8, !dbg !3890
  %66 = getelementptr inbounds i8*, i8** %65, i64 1, !dbg !3890
  %67 = load i8*, i8** %66, align 8, !dbg !3890
  %68 = load i8**, i8*** %11, align 8, !dbg !3891
  %69 = getelementptr inbounds i8*, i8** %68, i64 2, !dbg !3891
  %70 = load i8*, i8** %69, align 8, !dbg !3891
  %71 = load i8**, i8*** %11, align 8, !dbg !3892
  %72 = getelementptr inbounds i8*, i8** %71, i64 3, !dbg !3892
  %73 = load i8*, i8** %72, align 8, !dbg !3892
  %74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.129, i32 0, i32 0), i8* %64, i8* %67, i8* %70, i8* %73), !dbg !3893
  br label %225, !dbg !3894

; <label>:75:                                     ; preds = %26
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3895
  %77 = load i8**, i8*** %11, align 8, !dbg !3896
  %78 = getelementptr inbounds i8*, i8** %77, i64 0, !dbg !3896
  %79 = load i8*, i8** %78, align 8, !dbg !3896
  %80 = load i8**, i8*** %11, align 8, !dbg !3897
  %81 = getelementptr inbounds i8*, i8** %80, i64 1, !dbg !3897
  %82 = load i8*, i8** %81, align 8, !dbg !3897
  %83 = load i8**, i8*** %11, align 8, !dbg !3898
  %84 = getelementptr inbounds i8*, i8** %83, i64 2, !dbg !3898
  %85 = load i8*, i8** %84, align 8, !dbg !3898
  %86 = load i8**, i8*** %11, align 8, !dbg !3899
  %87 = getelementptr inbounds i8*, i8** %86, i64 3, !dbg !3899
  %88 = load i8*, i8** %87, align 8, !dbg !3899
  %89 = load i8**, i8*** %11, align 8, !dbg !3900
  %90 = getelementptr inbounds i8*, i8** %89, i64 4, !dbg !3900
  %91 = load i8*, i8** %90, align 8, !dbg !3900
  %92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.130, i32 0, i32 0), i8* %79, i8* %82, i8* %85, i8* %88, i8* %91), !dbg !3901
  br label %225, !dbg !3902

; <label>:93:                                     ; preds = %26
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3903
  %95 = load i8**, i8*** %11, align 8, !dbg !3904
  %96 = getelementptr inbounds i8*, i8** %95, i64 0, !dbg !3904
  %97 = load i8*, i8** %96, align 8, !dbg !3904
  %98 = load i8**, i8*** %11, align 8, !dbg !3905
  %99 = getelementptr inbounds i8*, i8** %98, i64 1, !dbg !3905
  %100 = load i8*, i8** %99, align 8, !dbg !3905
  %101 = load i8**, i8*** %11, align 8, !dbg !3906
  %102 = getelementptr inbounds i8*, i8** %101, i64 2, !dbg !3906
  %103 = load i8*, i8** %102, align 8, !dbg !3906
  %104 = load i8**, i8*** %11, align 8, !dbg !3907
  %105 = getelementptr inbounds i8*, i8** %104, i64 3, !dbg !3907
  %106 = load i8*, i8** %105, align 8, !dbg !3907
  %107 = load i8**, i8*** %11, align 8, !dbg !3908
  %108 = getelementptr inbounds i8*, i8** %107, i64 4, !dbg !3908
  %109 = load i8*, i8** %108, align 8, !dbg !3908
  %110 = load i8**, i8*** %11, align 8, !dbg !3909
  %111 = getelementptr inbounds i8*, i8** %110, i64 5, !dbg !3909
  %112 = load i8*, i8** %111, align 8, !dbg !3909
  %113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %94, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.131, i32 0, i32 0), i8* %97, i8* %100, i8* %103, i8* %106, i8* %109, i8* %112), !dbg !3910
  br label %225, !dbg !3911

; <label>:114:                                    ; preds = %26
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3912
  %116 = load i8**, i8*** %11, align 8, !dbg !3913
  %117 = getelementptr inbounds i8*, i8** %116, i64 0, !dbg !3913
  %118 = load i8*, i8** %117, align 8, !dbg !3913
  %119 = load i8**, i8*** %11, align 8, !dbg !3914
  %120 = getelementptr inbounds i8*, i8** %119, i64 1, !dbg !3914
  %121 = load i8*, i8** %120, align 8, !dbg !3914
  %122 = load i8**, i8*** %11, align 8, !dbg !3915
  %123 = getelementptr inbounds i8*, i8** %122, i64 2, !dbg !3915
  %124 = load i8*, i8** %123, align 8, !dbg !3915
  %125 = load i8**, i8*** %11, align 8, !dbg !3916
  %126 = getelementptr inbounds i8*, i8** %125, i64 3, !dbg !3916
  %127 = load i8*, i8** %126, align 8, !dbg !3916
  %128 = load i8**, i8*** %11, align 8, !dbg !3917
  %129 = getelementptr inbounds i8*, i8** %128, i64 4, !dbg !3917
  %130 = load i8*, i8** %129, align 8, !dbg !3917
  %131 = load i8**, i8*** %11, align 8, !dbg !3918
  %132 = getelementptr inbounds i8*, i8** %131, i64 5, !dbg !3918
  %133 = load i8*, i8** %132, align 8, !dbg !3918
  %134 = load i8**, i8*** %11, align 8, !dbg !3919
  %135 = getelementptr inbounds i8*, i8** %134, i64 6, !dbg !3919
  %136 = load i8*, i8** %135, align 8, !dbg !3919
  %137 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %115, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.132, i32 0, i32 0), i8* %118, i8* %121, i8* %124, i8* %127, i8* %130, i8* %133, i8* %136), !dbg !3920
  br label %225, !dbg !3921

; <label>:138:                                    ; preds = %26
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3922
  %140 = load i8**, i8*** %11, align 8, !dbg !3923
  %141 = getelementptr inbounds i8*, i8** %140, i64 0, !dbg !3923
  %142 = load i8*, i8** %141, align 8, !dbg !3923
  %143 = load i8**, i8*** %11, align 8, !dbg !3924
  %144 = getelementptr inbounds i8*, i8** %143, i64 1, !dbg !3924
  %145 = load i8*, i8** %144, align 8, !dbg !3924
  %146 = load i8**, i8*** %11, align 8, !dbg !3925
  %147 = getelementptr inbounds i8*, i8** %146, i64 2, !dbg !3925
  %148 = load i8*, i8** %147, align 8, !dbg !3925
  %149 = load i8**, i8*** %11, align 8, !dbg !3926
  %150 = getelementptr inbounds i8*, i8** %149, i64 3, !dbg !3926
  %151 = load i8*, i8** %150, align 8, !dbg !3926
  %152 = load i8**, i8*** %11, align 8, !dbg !3927
  %153 = getelementptr inbounds i8*, i8** %152, i64 4, !dbg !3927
  %154 = load i8*, i8** %153, align 8, !dbg !3927
  %155 = load i8**, i8*** %11, align 8, !dbg !3928
  %156 = getelementptr inbounds i8*, i8** %155, i64 5, !dbg !3928
  %157 = load i8*, i8** %156, align 8, !dbg !3928
  %158 = load i8**, i8*** %11, align 8, !dbg !3929
  %159 = getelementptr inbounds i8*, i8** %158, i64 6, !dbg !3929
  %160 = load i8*, i8** %159, align 8, !dbg !3929
  %161 = load i8**, i8*** %11, align 8, !dbg !3930
  %162 = getelementptr inbounds i8*, i8** %161, i64 7, !dbg !3930
  %163 = load i8*, i8** %162, align 8, !dbg !3930
  %164 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %139, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.133, i32 0, i32 0), i8* %142, i8* %145, i8* %148, i8* %151, i8* %154, i8* %157, i8* %160, i8* %163), !dbg !3931
  br label %225, !dbg !3932

; <label>:165:                                    ; preds = %26
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3933
  %167 = load i8**, i8*** %11, align 8, !dbg !3934
  %168 = getelementptr inbounds i8*, i8** %167, i64 0, !dbg !3934
  %169 = load i8*, i8** %168, align 8, !dbg !3934
  %170 = load i8**, i8*** %11, align 8, !dbg !3935
  %171 = getelementptr inbounds i8*, i8** %170, i64 1, !dbg !3935
  %172 = load i8*, i8** %171, align 8, !dbg !3935
  %173 = load i8**, i8*** %11, align 8, !dbg !3936
  %174 = getelementptr inbounds i8*, i8** %173, i64 2, !dbg !3936
  %175 = load i8*, i8** %174, align 8, !dbg !3936
  %176 = load i8**, i8*** %11, align 8, !dbg !3937
  %177 = getelementptr inbounds i8*, i8** %176, i64 3, !dbg !3937
  %178 = load i8*, i8** %177, align 8, !dbg !3937
  %179 = load i8**, i8*** %11, align 8, !dbg !3938
  %180 = getelementptr inbounds i8*, i8** %179, i64 4, !dbg !3938
  %181 = load i8*, i8** %180, align 8, !dbg !3938
  %182 = load i8**, i8*** %11, align 8, !dbg !3939
  %183 = getelementptr inbounds i8*, i8** %182, i64 5, !dbg !3939
  %184 = load i8*, i8** %183, align 8, !dbg !3939
  %185 = load i8**, i8*** %11, align 8, !dbg !3940
  %186 = getelementptr inbounds i8*, i8** %185, i64 6, !dbg !3940
  %187 = load i8*, i8** %186, align 8, !dbg !3940
  %188 = load i8**, i8*** %11, align 8, !dbg !3941
  %189 = getelementptr inbounds i8*, i8** %188, i64 7, !dbg !3941
  %190 = load i8*, i8** %189, align 8, !dbg !3941
  %191 = load i8**, i8*** %11, align 8, !dbg !3942
  %192 = getelementptr inbounds i8*, i8** %191, i64 8, !dbg !3942
  %193 = load i8*, i8** %192, align 8, !dbg !3942
  %194 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %166, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.134, i32 0, i32 0), i8* %169, i8* %172, i8* %175, i8* %178, i8* %181, i8* %184, i8* %187, i8* %190, i8* %193), !dbg !3943
  br label %225, !dbg !3944

; <label>:195:                                    ; preds = %26
  %196 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3945
  %197 = load i8**, i8*** %11, align 8, !dbg !3946
  %198 = getelementptr inbounds i8*, i8** %197, i64 0, !dbg !3946
  %199 = load i8*, i8** %198, align 8, !dbg !3946
  %200 = load i8**, i8*** %11, align 8, !dbg !3947
  %201 = getelementptr inbounds i8*, i8** %200, i64 1, !dbg !3947
  %202 = load i8*, i8** %201, align 8, !dbg !3947
  %203 = load i8**, i8*** %11, align 8, !dbg !3948
  %204 = getelementptr inbounds i8*, i8** %203, i64 2, !dbg !3948
  %205 = load i8*, i8** %204, align 8, !dbg !3948
  %206 = load i8**, i8*** %11, align 8, !dbg !3949
  %207 = getelementptr inbounds i8*, i8** %206, i64 3, !dbg !3949
  %208 = load i8*, i8** %207, align 8, !dbg !3949
  %209 = load i8**, i8*** %11, align 8, !dbg !3950
  %210 = getelementptr inbounds i8*, i8** %209, i64 4, !dbg !3950
  %211 = load i8*, i8** %210, align 8, !dbg !3950
  %212 = load i8**, i8*** %11, align 8, !dbg !3951
  %213 = getelementptr inbounds i8*, i8** %212, i64 5, !dbg !3951
  %214 = load i8*, i8** %213, align 8, !dbg !3951
  %215 = load i8**, i8*** %11, align 8, !dbg !3952
  %216 = getelementptr inbounds i8*, i8** %215, i64 6, !dbg !3952
  %217 = load i8*, i8** %216, align 8, !dbg !3952
  %218 = load i8**, i8*** %11, align 8, !dbg !3953
  %219 = getelementptr inbounds i8*, i8** %218, i64 7, !dbg !3953
  %220 = load i8*, i8** %219, align 8, !dbg !3953
  %221 = load i8**, i8*** %11, align 8, !dbg !3954
  %222 = getelementptr inbounds i8*, i8** %221, i64 8, !dbg !3954
  %223 = load i8*, i8** %222, align 8, !dbg !3954
  %224 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %196, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.135, i32 0, i32 0), i8* %199, i8* %202, i8* %205, i8* %208, i8* %211, i8* %214, i8* %217, i8* %220, i8* %223), !dbg !3955
  br label %225, !dbg !3956

; <label>:225:                                    ; preds = %195, %165, %138, %114, %93, %75, %60, %48, %39, %33
  ret void, !dbg !3957
}

; Function Attrs: noinline nounwind uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8**) #2 !dbg !3958 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3961, metadata !DIExpression()), !dbg !3962
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3963, metadata !DIExpression()), !dbg !3964
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3965, metadata !DIExpression()), !dbg !3966
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3967, metadata !DIExpression()), !dbg !3968
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !3969, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3971, metadata !DIExpression()), !dbg !3972
  store i64 0, i64* %11, align 8, !dbg !3973
  br label %12, !dbg !3975

; <label>:12:                                     ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8, !dbg !3976
  %14 = load i64, i64* %11, align 8, !dbg !3978
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14, !dbg !3976
  %16 = load i8*, i8** %15, align 8, !dbg !3976
  %17 = icmp ne i8* %16, null, !dbg !3979
  br i1 %17, label %18, label %22, !dbg !3979

; <label>:18:                                     ; preds = %12
  br label %19, !dbg !3979

; <label>:19:                                     ; preds = %18
  %20 = load i64, i64* %11, align 8, !dbg !3980
  %21 = add i64 %20, 1, !dbg !3980
  store i64 %21, i64* %11, align 8, !dbg !3980
  br label %12, !dbg !3981, !llvm.loop !3982

; <label>:22:                                     ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3984
  %24 = load i8*, i8** %7, align 8, !dbg !3985
  %25 = load i8*, i8** %8, align 8, !dbg !3986
  %26 = load i8*, i8** %9, align 8, !dbg !3987
  %27 = load i8**, i8*** %10, align 8, !dbg !3988
  %28 = load i64, i64* %11, align 8, !dbg !3989
  call void @version_etc_arn(%struct._IO_FILE* %23, i8* %24, i8* %25, i8* %26, i8** %27, i64 %28), !dbg !3990
  ret void, !dbg !3991
}

; Function Attrs: noinline nounwind uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag*) #2 !dbg !3992 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.__va_list_tag*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [10 x i8*], align 16
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !4002, metadata !DIExpression()), !dbg !4003
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4004, metadata !DIExpression()), !dbg !4005
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4006, metadata !DIExpression()), !dbg !4007
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4008, metadata !DIExpression()), !dbg !4009
  store %struct.__va_list_tag* %4, %struct.__va_list_tag** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %10, metadata !4010, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.declare(metadata i64* %11, metadata !4012, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.declare(metadata [10 x i8*]* %12, metadata !4014, metadata !DIExpression()), !dbg !4018
  store i64 0, i64* %11, align 8, !dbg !4019
  br label %13, !dbg !4021

; <label>:13:                                     ; preds = %41, %5
  %14 = load i64, i64* %11, align 8, !dbg !4022
  %15 = icmp ult i64 %14, 10, !dbg !4024
  br i1 %15, label %16, label %38, !dbg !4025

; <label>:16:                                     ; preds = %13
  %17 = load %struct.__va_list_tag*, %struct.__va_list_tag** %10, align 8, !dbg !4026
  %18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %17, i32 0, i32 0, !dbg !4026
  %19 = load i32, i32* %18, align 8, !dbg !4026
  %20 = icmp ule i32 %19, 40, !dbg !4026
  br i1 %20, label %21, label %27, !dbg !4026

; <label>:21:                                     ; preds = %16
  %22 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %17, i32 0, i32 3, !dbg !4026
  %23 = load i8*, i8** %22, align 8, !dbg !4026
  %24 = getelementptr i8, i8* %23, i32 %19, !dbg !4026
  %25 = bitcast i8* %24 to i8**, !dbg !4026
  %26 = add i32 %19, 8, !dbg !4026
  store i32 %26, i32* %18, align 8, !dbg !4026
  br label %32, !dbg !4026

; <label>:27:                                     ; preds = %16
  %28 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %17, i32 0, i32 2, !dbg !4026
  %29 = load i8*, i8** %28, align 8, !dbg !4026
  %30 = bitcast i8* %29 to i8**, !dbg !4026
  %31 = getelementptr i8, i8* %29, i32 8, !dbg !4026
  store i8* %31, i8** %28, align 8, !dbg !4026
  br label %32, !dbg !4026

; <label>:32:                                     ; preds = %27, %21
  %33 = phi i8** [ %25, %21 ], [ %30, %27 ], !dbg !4026
  %34 = load i8*, i8** %33, align 8, !dbg !4026
  %35 = load i64, i64* %11, align 8, !dbg !4027
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %12, i64 0, i64 %35, !dbg !4028
  store i8* %34, i8** %36, align 8, !dbg !4029
  %37 = icmp ne i8* %34, null, !dbg !4030
  br label %38

; <label>:38:                                     ; preds = %32, %13
  %39 = phi i1 [ false, %13 ], [ %37, %32 ]
  br i1 %39, label %40, label %44, !dbg !4031

; <label>:40:                                     ; preds = %38
  br label %41, !dbg !4031

; <label>:41:                                     ; preds = %40
  %42 = load i64, i64* %11, align 8, !dbg !4032
  %43 = add i64 %42, 1, !dbg !4032
  store i64 %43, i64* %11, align 8, !dbg !4032
  br label %13, !dbg !4033, !llvm.loop !4034

; <label>:44:                                     ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !4036
  %46 = load i8*, i8** %7, align 8, !dbg !4037
  %47 = load i8*, i8** %8, align 8, !dbg !4038
  %48 = load i8*, i8** %9, align 8, !dbg !4039
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %12, i32 0, i32 0, !dbg !4040
  %50 = load i64, i64* %11, align 8, !dbg !4041
  call void @version_etc_arn(%struct._IO_FILE* %45, i8* %46, i8* %47, i8* %48, i8** %49, i64 %50), !dbg !4042
  ret void, !dbg !4043
}

; Function Attrs: noinline nounwind uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) #2 !dbg !4044 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !4047, metadata !DIExpression()), !dbg !4048
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4049, metadata !DIExpression()), !dbg !4050
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4051, metadata !DIExpression()), !dbg !4052
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4053, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %9, metadata !4055, metadata !DIExpression()), !dbg !4061
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i32 0, i32 0, !dbg !4062
  %11 = bitcast %struct.__va_list_tag* %10 to i8*, !dbg !4062
  call void @llvm.va_start(i8* %11), !dbg !4062
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4063
  %13 = load i8*, i8** %6, align 8, !dbg !4064
  %14 = load i8*, i8** %7, align 8, !dbg !4065
  %15 = load i8*, i8** %8, align 8, !dbg !4066
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i32 0, i32 0, !dbg !4067
  call void @version_etc_va(%struct._IO_FILE* %12, i8* %13, i8* %14, i8* %15, %struct.__va_list_tag* %16), !dbg !4068
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i32 0, i32 0, !dbg !4069
  %18 = bitcast %struct.__va_list_tag* %17 to i8*, !dbg !4069
  call void @llvm.va_end(i8* %18), !dbg !4069
  ret void, !dbg !4070
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: noinline nounwind uwtable
define void @emit_bug_reporting_address() #2 !dbg !4071 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.138, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.139, i32 0, i32 0)), !dbg !4072
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.140, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.141, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.142, i32 0, i32 0)), !dbg !4073
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4074
  %4 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.143, i32 0, i32 0), %struct._IO_FILE* %3), !dbg !4074
  ret void, !dbg !4075
}

; Function Attrs: noinline nounwind uwtable
define noalias i8* @xnmalloc(i64, i64) #2 !dbg !4076 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4079, metadata !DIExpression()), !dbg !4080
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4081, metadata !DIExpression()), !dbg !4082
  %5 = load i64, i64* %4, align 8, !dbg !4083
  %6 = udiv i64 -1, %5, !dbg !4083
  %7 = load i64, i64* %3, align 8, !dbg !4083
  %8 = icmp ult i64 %6, %7, !dbg !4083
  br i1 %8, label %9, label %10, !dbg !4085

; <label>:9:                                      ; preds = %2
  call void @xalloc_die() #15, !dbg !4086
  unreachable, !dbg !4086

; <label>:10:                                     ; preds = %2
  %11 = load i64, i64* %3, align 8, !dbg !4087
  %12 = load i64, i64* %4, align 8, !dbg !4088
  %13 = mul i64 %11, %12, !dbg !4089
  %14 = call noalias i8* @xmalloc(i64 %13), !dbg !4090
  ret i8* %14, !dbg !4091
}

; Function Attrs: noinline nounwind uwtable
define noalias i8* @xmalloc(i64) #2 !dbg !4092 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4095, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4097, metadata !DIExpression()), !dbg !4098
  %4 = load i64, i64* %2, align 8, !dbg !4099
  %5 = call noalias i8* @malloc(i64 %4) #11, !dbg !4100
  store i8* %5, i8** %3, align 8, !dbg !4098
  %6 = load i8*, i8** %3, align 8, !dbg !4101
  %7 = icmp ne i8* %6, null, !dbg !4101
  br i1 %7, label %12, label %8, !dbg !4103

; <label>:8:                                      ; preds = %1
  %9 = load i64, i64* %2, align 8, !dbg !4104
  %10 = icmp ne i64 %9, 0, !dbg !4105
  br i1 %10, label %11, label %12, !dbg !4106

; <label>:11:                                     ; preds = %8
  call void @xalloc_die() #15, !dbg !4107
  unreachable, !dbg !4107

; <label>:12:                                     ; preds = %8, %1
  %13 = load i8*, i8** %3, align 8, !dbg !4108
  ret i8* %13, !dbg !4109
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #5

; Function Attrs: noinline nounwind uwtable
define i8* @xnrealloc(i8*, i64, i64) #2 !dbg !4110 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4113, metadata !DIExpression()), !dbg !4114
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4115, metadata !DIExpression()), !dbg !4116
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4117, metadata !DIExpression()), !dbg !4118
  %7 = load i64, i64* %6, align 8, !dbg !4119
  %8 = udiv i64 -1, %7, !dbg !4119
  %9 = load i64, i64* %5, align 8, !dbg !4119
  %10 = icmp ult i64 %8, %9, !dbg !4119
  br i1 %10, label %11, label %12, !dbg !4121

; <label>:11:                                     ; preds = %3
  call void @xalloc_die() #15, !dbg !4122
  unreachable, !dbg !4122

; <label>:12:                                     ; preds = %3
  %13 = load i8*, i8** %4, align 8, !dbg !4123
  %14 = load i64, i64* %5, align 8, !dbg !4124
  %15 = load i64, i64* %6, align 8, !dbg !4125
  %16 = mul i64 %14, %15, !dbg !4126
  %17 = call i8* @xrealloc(i8* %13, i64 %16), !dbg !4127
  ret i8* %17, !dbg !4128
}

; Function Attrs: noinline nounwind uwtable
define i8* @xrealloc(i8*, i64) #2 !dbg !4129 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4132, metadata !DIExpression()), !dbg !4133
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4134, metadata !DIExpression()), !dbg !4135
  %6 = load i64, i64* %5, align 8, !dbg !4136
  %7 = icmp ne i64 %6, 0, !dbg !4136
  br i1 %7, label %13, label %8, !dbg !4138

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %4, align 8, !dbg !4139
  %10 = icmp ne i8* %9, null, !dbg !4139
  br i1 %10, label %11, label %13, !dbg !4140

; <label>:11:                                     ; preds = %8
  %12 = load i8*, i8** %4, align 8, !dbg !4141
  call void @free(i8* %12) #11, !dbg !4143
  store i8* null, i8** %3, align 8, !dbg !4144
  br label %25, !dbg !4144

; <label>:13:                                     ; preds = %8, %2
  %14 = load i8*, i8** %4, align 8, !dbg !4145
  %15 = load i64, i64* %5, align 8, !dbg !4146
  %16 = call i8* @realloc(i8* %14, i64 %15) #11, !dbg !4147
  store i8* %16, i8** %4, align 8, !dbg !4148
  %17 = load i8*, i8** %4, align 8, !dbg !4149
  %18 = icmp ne i8* %17, null, !dbg !4149
  br i1 %18, label %23, label %19, !dbg !4151

; <label>:19:                                     ; preds = %13
  %20 = load i64, i64* %5, align 8, !dbg !4152
  %21 = icmp ne i64 %20, 0, !dbg !4152
  br i1 %21, label %22, label %23, !dbg !4153

; <label>:22:                                     ; preds = %19
  call void @xalloc_die() #15, !dbg !4154
  unreachable, !dbg !4154

; <label>:23:                                     ; preds = %19, %13
  %24 = load i8*, i8** %4, align 8, !dbg !4155
  store i8* %24, i8** %3, align 8, !dbg !4156
  br label %25, !dbg !4156

; <label>:25:                                     ; preds = %23, %11
  %26 = load i8*, i8** %3, align 8, !dbg !4157
  ret i8* %26, !dbg !4157
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
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4158, metadata !DIExpression()), !dbg !4159
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !4160, metadata !DIExpression()), !dbg !4161
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4162, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4164, metadata !DIExpression()), !dbg !4165
  %8 = load i64*, i64** %5, align 8, !dbg !4166
  %9 = load i64, i64* %8, align 8, !dbg !4167
  store i64 %9, i64* %7, align 8, !dbg !4165
  %10 = load i8*, i8** %4, align 8, !dbg !4168
  %11 = icmp ne i8* %10, null, !dbg !4168
  br i1 %11, label %26, label %12, !dbg !4170

; <label>:12:                                     ; preds = %3
  %13 = load i64, i64* %7, align 8, !dbg !4171
  %14 = icmp ne i64 %13, 0, !dbg !4171
  br i1 %14, label %25, label %15, !dbg !4174

; <label>:15:                                     ; preds = %12
  %16 = load i64, i64* %6, align 8, !dbg !4175
  %17 = udiv i64 128, %16, !dbg !4177
  store i64 %17, i64* %7, align 8, !dbg !4178
  %18 = load i64, i64* %7, align 8, !dbg !4179
  %19 = icmp ne i64 %18, 0, !dbg !4180
  %20 = xor i1 %19, true, !dbg !4180
  %21 = zext i1 %20 to i32, !dbg !4180
  %22 = sext i32 %21 to i64, !dbg !4180
  %23 = load i64, i64* %7, align 8, !dbg !4181
  %24 = add i64 %23, %22, !dbg !4181
  store i64 %24, i64* %7, align 8, !dbg !4181
  br label %25, !dbg !4182

; <label>:25:                                     ; preds = %15, %12
  br label %38, !dbg !4183

; <label>:26:                                     ; preds = %3
  %27 = load i64, i64* %6, align 8, !dbg !4184
  %28 = udiv i64 -6148914691236517206, %27, !dbg !4187
  %29 = load i64, i64* %7, align 8, !dbg !4188
  %30 = icmp ule i64 %28, %29, !dbg !4189
  br i1 %30, label %31, label %32, !dbg !4190

; <label>:31:                                     ; preds = %26
  call void @xalloc_die() #15, !dbg !4191
  unreachable, !dbg !4191

; <label>:32:                                     ; preds = %26
  %33 = load i64, i64* %7, align 8, !dbg !4192
  %34 = add i64 %33, 1, !dbg !4193
  %35 = udiv i64 %34, 2, !dbg !4194
  %36 = load i64, i64* %7, align 8, !dbg !4195
  %37 = add i64 %36, %35, !dbg !4195
  store i64 %37, i64* %7, align 8, !dbg !4195
  br label %38

; <label>:38:                                     ; preds = %32, %25
  %39 = load i64, i64* %7, align 8, !dbg !4196
  %40 = load i64*, i64** %5, align 8, !dbg !4197
  store i64 %39, i64* %40, align 8, !dbg !4198
  %41 = load i8*, i8** %4, align 8, !dbg !4199
  %42 = load i64, i64* %7, align 8, !dbg !4200
  %43 = load i64, i64* %6, align 8, !dbg !4201
  %44 = mul i64 %42, %43, !dbg !4202
  %45 = call i8* @xrealloc(i8* %41, i64 %44), !dbg !4203
  ret i8* %45, !dbg !4204
}

; Function Attrs: noinline nounwind uwtable
define noalias i8* @xcharalloc(i64) #2 !dbg !4205 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4208, metadata !DIExpression()), !dbg !4209
  %3 = load i64, i64* %2, align 8, !dbg !4210
  %4 = call noalias i8* @xmalloc(i64 %3), !dbg !4210
  ret i8* %4, !dbg !4211
}

; Function Attrs: noinline nounwind uwtable
define i8* @x2realloc(i8*, i64*) #2 !dbg !4212 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4215, metadata !DIExpression()), !dbg !4216
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !4217, metadata !DIExpression()), !dbg !4218
  %5 = load i8*, i8** %3, align 8, !dbg !4219
  %6 = load i64*, i64** %4, align 8, !dbg !4220
  %7 = call i8* @x2nrealloc(i8* %5, i64* %6, i64 1), !dbg !4221
  ret i8* %7, !dbg !4222
}

; Function Attrs: noinline nounwind uwtable
define noalias i8* @xzalloc(i64) #2 !dbg !4223 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4224, metadata !DIExpression()), !dbg !4225
  %3 = load i64, i64* %2, align 8, !dbg !4226
  %4 = call noalias i8* @xmalloc(i64 %3), !dbg !4227
  %5 = load i64, i64* %2, align 8, !dbg !4228
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 %5, i32 1, i1 false), !dbg !4229
  ret i8* %4, !dbg !4230
}

; Function Attrs: noinline nounwind uwtable
define noalias i8* @xcalloc(i64, i64) #2 !dbg !4231 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4232, metadata !DIExpression()), !dbg !4233
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4234, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4236, metadata !DIExpression()), !dbg !4237
  %6 = load i64, i64* %3, align 8, !dbg !4238
  %7 = load i64, i64* %4, align 8, !dbg !4240
  %8 = call noalias i8* @calloc(i64 %6, i64 %7) #11, !dbg !4241
  store i8* %8, i8** %5, align 8, !dbg !4242
  %9 = icmp ne i8* %8, null, !dbg !4242
  br i1 %9, label %11, label %10, !dbg !4243

; <label>:10:                                     ; preds = %2
  call void @xalloc_die() #15, !dbg !4244
  unreachable, !dbg !4244

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %5, align 8, !dbg !4245
  ret i8* %12, !dbg !4246
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #5

; Function Attrs: noinline nounwind uwtable
define noalias i8* @xmemdup(i8*, i64) #2 !dbg !4247 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4250, metadata !DIExpression()), !dbg !4251
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4252, metadata !DIExpression()), !dbg !4253
  %5 = load i64, i64* %4, align 8, !dbg !4254
  %6 = call noalias i8* @xmalloc(i64 %5), !dbg !4255
  %7 = load i8*, i8** %3, align 8, !dbg !4256
  %8 = load i64, i64* %4, align 8, !dbg !4257
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 %8, i32 1, i1 false), !dbg !4258
  ret i8* %6, !dbg !4259
}

; Function Attrs: noinline nounwind uwtable
define noalias i8* @xstrdup(i8*) #2 !dbg !4260 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4261, metadata !DIExpression()), !dbg !4262
  %3 = load i8*, i8** %2, align 8, !dbg !4263
  %4 = load i8*, i8** %2, align 8, !dbg !4264
  %5 = call i64 @strlen(i8* %4) #14, !dbg !4265
  %6 = add i64 %5, 1, !dbg !4266
  %7 = call noalias i8* @xmemdup(i8* %3, i64 %6), !dbg !4267
  ret i8* %7, !dbg !4268
}

; Function Attrs: noinline noreturn nounwind uwtable
define void @xalloc_die() #0 !dbg !4269 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4270
  call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.157, i32 0, i32 0)), !dbg !4271
  call void @abort() #13, !dbg !4272
  unreachable, !dbg !4272
                                                  ; No predecessors!
  unreachable, !dbg !4273
}

; Function Attrs: noinline nounwind uwtable
define i32 @xmemcoll(i8*, i64, i8*, i64) #2 !dbg !4274 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4277, metadata !DIExpression()), !dbg !4278
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4279, metadata !DIExpression()), !dbg !4280
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4281, metadata !DIExpression()), !dbg !4282
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4283, metadata !DIExpression()), !dbg !4284
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4285, metadata !DIExpression()), !dbg !4286
  %11 = load i8*, i8** %5, align 8, !dbg !4287
  %12 = load i64, i64* %6, align 8, !dbg !4288
  %13 = load i8*, i8** %7, align 8, !dbg !4289
  %14 = load i64, i64* %8, align 8, !dbg !4290
  %15 = call i32 @memcoll(i8* %11, i64 %12, i8* %13, i64 %14), !dbg !4291
  store i32 %15, i32* %9, align 4, !dbg !4286
  call void @llvm.dbg.declare(metadata i32* %10, metadata !4292, metadata !DIExpression()), !dbg !4293
  %16 = call i32* @__errno_location() #16, !dbg !4294
  %17 = load i32, i32* %16, align 4, !dbg !4294
  store i32 %17, i32* %10, align 4, !dbg !4293
  %18 = load i32, i32* %10, align 4, !dbg !4295
  %19 = icmp ne i32 %18, 0, !dbg !4295
  br i1 %19, label %20, label %26, !dbg !4297

; <label>:20:                                     ; preds = %4
  %21 = load i32, i32* %10, align 4, !dbg !4298
  %22 = load i8*, i8** %5, align 8, !dbg !4299
  %23 = load i64, i64* %6, align 8, !dbg !4300
  %24 = load i8*, i8** %7, align 8, !dbg !4301
  %25 = load i64, i64* %8, align 8, !dbg !4302
  call void @collate_error(i32 %21, i8* %22, i64 %23, i8* %24, i64 %25), !dbg !4303
  br label %26, !dbg !4303

; <label>:26:                                     ; preds = %20, %4
  %27 = load i32, i32* %9, align 4, !dbg !4304
  ret i32 %27, !dbg !4305
}

; Function Attrs: noinline nounwind uwtable
define internal void @collate_error(i32, i8*, i64, i8*, i64) #2 !dbg !4306 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4309, metadata !DIExpression()), !dbg !4310
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4311, metadata !DIExpression()), !dbg !4312
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4313, metadata !DIExpression()), !dbg !4314
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4315, metadata !DIExpression()), !dbg !4316
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4317, metadata !DIExpression()), !dbg !4318
  %11 = load i32, i32* %6, align 4, !dbg !4319
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.160, i32 0, i32 0)), !dbg !4320
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1.161, i32 0, i32 0)), !dbg !4321
  %12 = load volatile i32, i32* @exit_failure, align 4, !dbg !4322
  %13 = load i8*, i8** %7, align 8, !dbg !4323
  %14 = load i64, i64* %8, align 8, !dbg !4324
  %15 = call i8* @quotearg_n_style_mem(i32 0, i32 6, i8* %13, i64 %14), !dbg !4325
  %16 = load i8*, i8** %9, align 8, !dbg !4326
  %17 = load i64, i64* %10, align 8, !dbg !4327
  %18 = call i8* @quotearg_n_style_mem(i32 1, i32 6, i8* %16, i64 %17), !dbg !4328
  call void (i32, i32, i8*, ...) @error(i32 %12, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.162, i32 0, i32 0), i8* %15, i8* %18), !dbg !4329
  ret void, !dbg !4330
}

; Function Attrs: noinline nounwind uwtable
define i32 @xmemcoll0(i8*, i64, i8*, i64) #2 !dbg !4331 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4334, metadata !DIExpression()), !dbg !4335
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4336, metadata !DIExpression()), !dbg !4337
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4338, metadata !DIExpression()), !dbg !4339
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4340, metadata !DIExpression()), !dbg !4341
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4342, metadata !DIExpression()), !dbg !4343
  %11 = load i8*, i8** %5, align 8, !dbg !4344
  %12 = load i64, i64* %6, align 8, !dbg !4345
  %13 = load i8*, i8** %7, align 8, !dbg !4346
  %14 = load i64, i64* %8, align 8, !dbg !4347
  %15 = call i32 @memcoll0(i8* %11, i64 %12, i8* %13, i64 %14), !dbg !4348
  store i32 %15, i32* %9, align 4, !dbg !4343
  call void @llvm.dbg.declare(metadata i32* %10, metadata !4349, metadata !DIExpression()), !dbg !4350
  %16 = call i32* @__errno_location() #16, !dbg !4351
  %17 = load i32, i32* %16, align 4, !dbg !4351
  store i32 %17, i32* %10, align 4, !dbg !4350
  %18 = load i32, i32* %10, align 4, !dbg !4352
  %19 = icmp ne i32 %18, 0, !dbg !4352
  br i1 %19, label %20, label %28, !dbg !4354

; <label>:20:                                     ; preds = %4
  %21 = load i32, i32* %10, align 4, !dbg !4355
  %22 = load i8*, i8** %5, align 8, !dbg !4356
  %23 = load i64, i64* %6, align 8, !dbg !4357
  %24 = sub i64 %23, 1, !dbg !4358
  %25 = load i8*, i8** %7, align 8, !dbg !4359
  %26 = load i64, i64* %8, align 8, !dbg !4360
  %27 = sub i64 %26, 1, !dbg !4361
  call void @collate_error(i32 %21, i8* %22, i64 %24, i8* %25, i64 %27), !dbg !4362
  br label %28, !dbg !4362

; <label>:28:                                     ; preds = %20, %4
  %29 = load i32, i32* %9, align 4, !dbg !4363
  ret i32 %29, !dbg !4364
}

; Function Attrs: noinline nounwind uwtable
define i32 @xstrtoul(i8*, i8**, i32, i64*, i8*) #2 !dbg !4365 {
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
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4371, metadata !DIExpression()), !dbg !4372
  store i8** %1, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !4373, metadata !DIExpression()), !dbg !4374
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4375, metadata !DIExpression()), !dbg !4376
  store i64* %3, i64** %10, align 8
  call void @llvm.dbg.declare(metadata i64** %10, metadata !4377, metadata !DIExpression()), !dbg !4378
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !4379, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.declare(metadata i8** %12, metadata !4381, metadata !DIExpression()), !dbg !4382
  call void @llvm.dbg.declare(metadata i8*** %13, metadata !4383, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.declare(metadata i64* %14, metadata !4385, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.declare(metadata i32* %15, metadata !4387, metadata !DIExpression()), !dbg !4388
  store i32 0, i32* %15, align 4, !dbg !4388
  %21 = load i32, i32* %9, align 4, !dbg !4389
  %22 = icmp sle i32 0, %21, !dbg !4389
  br i1 %22, label %23, label %27, !dbg !4389

; <label>:23:                                     ; preds = %5
  %24 = load i32, i32* %9, align 4, !dbg !4389
  %25 = icmp sle i32 %24, 36, !dbg !4389
  br i1 %25, label %26, label %27, !dbg !4392

; <label>:26:                                     ; preds = %23
  br label %28, !dbg !4392

; <label>:27:                                     ; preds = %23, %5
  call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.166, i32 0, i32 0), i32 96, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__.xstrtoul, i32 0, i32 0)) #13, !dbg !4389
  unreachable, !dbg !4389

; <label>:28:                                     ; preds = %26
  %29 = load i8**, i8*** %8, align 8, !dbg !4393
  %30 = icmp ne i8** %29, null, !dbg !4393
  br i1 %30, label %31, label %33, !dbg !4393

; <label>:31:                                     ; preds = %28
  %32 = load i8**, i8*** %8, align 8, !dbg !4394
  br label %34, !dbg !4393

; <label>:33:                                     ; preds = %28
  br label %34, !dbg !4393

; <label>:34:                                     ; preds = %33, %31
  %35 = phi i8** [ %32, %31 ], [ %12, %33 ], !dbg !4393
  store i8** %35, i8*** %13, align 8, !dbg !4395
  call void @llvm.dbg.declare(metadata i8** %16, metadata !4396, metadata !DIExpression()), !dbg !4399
  %36 = load i8*, i8** %7, align 8, !dbg !4400
  store i8* %36, i8** %16, align 8, !dbg !4399
  call void @llvm.dbg.declare(metadata i8* %17, metadata !4401, metadata !DIExpression()), !dbg !4402
  %37 = load i8*, i8** %16, align 8, !dbg !4403
  %38 = load i8, i8* %37, align 1, !dbg !4404
  store i8 %38, i8* %17, align 1, !dbg !4402
  br label %39, !dbg !4405

; <label>:39:                                     ; preds = %50, %34
  %40 = call i16** @__ctype_b_loc() #16, !dbg !4406
  %41 = load i16*, i16** %40, align 8, !dbg !4406
  %42 = load i8, i8* %17, align 1, !dbg !4406
  %43 = zext i8 %42 to i32, !dbg !4406
  %44 = sext i32 %43 to i64, !dbg !4406
  %45 = getelementptr inbounds i16, i16* %41, i64 %44, !dbg !4406
  %46 = load i16, i16* %45, align 2, !dbg !4406
  %47 = zext i16 %46 to i32, !dbg !4406
  %48 = and i32 %47, 8192, !dbg !4406
  %49 = icmp ne i32 %48, 0, !dbg !4405
  br i1 %49, label %50, label %54, !dbg !4405

; <label>:50:                                     ; preds = %39
  %51 = load i8*, i8** %16, align 8, !dbg !4407
  %52 = getelementptr inbounds i8, i8* %51, i32 1, !dbg !4407
  store i8* %52, i8** %16, align 8, !dbg !4407
  %53 = load i8, i8* %52, align 1, !dbg !4408
  store i8 %53, i8* %17, align 1, !dbg !4409
  br label %39, !dbg !4405, !llvm.loop !4410

; <label>:54:                                     ; preds = %39
  %55 = load i8, i8* %17, align 1, !dbg !4412
  %56 = zext i8 %55 to i32, !dbg !4412
  %57 = icmp eq i32 %56, 45, !dbg !4414
  br i1 %57, label %58, label %59, !dbg !4415

; <label>:58:                                     ; preds = %54
  store i32 4, i32* %6, align 4, !dbg !4416
  br label %215, !dbg !4416

; <label>:59:                                     ; preds = %54
  %60 = call i32* @__errno_location() #16, !dbg !4417
  store i32 0, i32* %60, align 4, !dbg !4418
  %61 = load i8*, i8** %7, align 8, !dbg !4419
  %62 = load i8**, i8*** %13, align 8, !dbg !4420
  %63 = load i32, i32* %9, align 4, !dbg !4421
  %64 = call i64 @strtoul(i8* %61, i8** %62, i32 %63) #11, !dbg !4422
  store i64 %64, i64* %14, align 8, !dbg !4423
  %65 = load i8**, i8*** %13, align 8, !dbg !4424
  %66 = load i8*, i8** %65, align 8, !dbg !4426
  %67 = load i8*, i8** %7, align 8, !dbg !4427
  %68 = icmp eq i8* %66, %67, !dbg !4428
  br i1 %68, label %69, label %89, !dbg !4429

; <label>:69:                                     ; preds = %59
  %70 = load i8*, i8** %11, align 8, !dbg !4430
  %71 = icmp ne i8* %70, null, !dbg !4430
  br i1 %71, label %72, label %87, !dbg !4433

; <label>:72:                                     ; preds = %69
  %73 = load i8**, i8*** %13, align 8, !dbg !4434
  %74 = load i8*, i8** %73, align 8, !dbg !4435
  %75 = load i8, i8* %74, align 1, !dbg !4436
  %76 = sext i8 %75 to i32, !dbg !4436
  %77 = icmp ne i32 %76, 0, !dbg !4436
  br i1 %77, label %78, label %87, !dbg !4437

; <label>:78:                                     ; preds = %72
  %79 = load i8*, i8** %11, align 8, !dbg !4438
  %80 = load i8**, i8*** %13, align 8, !dbg !4439
  %81 = load i8*, i8** %80, align 8, !dbg !4440
  %82 = load i8, i8* %81, align 1, !dbg !4441
  %83 = sext i8 %82 to i32, !dbg !4441
  %84 = call i8* @strchr(i8* %79, i32 %83) #14, !dbg !4442
  %85 = icmp ne i8* %84, null, !dbg !4442
  br i1 %85, label %86, label %87, !dbg !4443

; <label>:86:                                     ; preds = %78
  store i64 1, i64* %14, align 8, !dbg !4444
  br label %88, !dbg !4445

; <label>:87:                                     ; preds = %78, %72, %69
  store i32 4, i32* %6, align 4, !dbg !4446
  br label %215, !dbg !4446

; <label>:88:                                     ; preds = %86
  br label %100, !dbg !4447

; <label>:89:                                     ; preds = %59
  %90 = call i32* @__errno_location() #16, !dbg !4448
  %91 = load i32, i32* %90, align 4, !dbg !4448
  %92 = icmp ne i32 %91, 0, !dbg !4450
  br i1 %92, label %93, label %99, !dbg !4451

; <label>:93:                                     ; preds = %89
  %94 = call i32* @__errno_location() #16, !dbg !4452
  %95 = load i32, i32* %94, align 4, !dbg !4452
  %96 = icmp ne i32 %95, 34, !dbg !4455
  br i1 %96, label %97, label %98, !dbg !4456

; <label>:97:                                     ; preds = %93
  store i32 4, i32* %6, align 4, !dbg !4457
  br label %215, !dbg !4457

; <label>:98:                                     ; preds = %93
  store i32 1, i32* %15, align 4, !dbg !4458
  br label %99, !dbg !4459

; <label>:99:                                     ; preds = %98, %89
  br label %100

; <label>:100:                                    ; preds = %99, %88
  %101 = load i8*, i8** %11, align 8, !dbg !4460
  %102 = icmp ne i8* %101, null, !dbg !4460
  br i1 %102, label %107, label %103, !dbg !4462

; <label>:103:                                    ; preds = %100
  %104 = load i64, i64* %14, align 8, !dbg !4463
  %105 = load i64*, i64** %10, align 8, !dbg !4465
  store i64 %104, i64* %105, align 8, !dbg !4466
  %106 = load i32, i32* %15, align 4, !dbg !4467
  store i32 %106, i32* %6, align 4, !dbg !4468
  br label %215, !dbg !4468

; <label>:107:                                    ; preds = %100
  %108 = load i8**, i8*** %13, align 8, !dbg !4469
  %109 = load i8*, i8** %108, align 8, !dbg !4471
  %110 = load i8, i8* %109, align 1, !dbg !4472
  %111 = sext i8 %110 to i32, !dbg !4472
  %112 = icmp ne i32 %111, 0, !dbg !4473
  br i1 %112, label %113, label %211, !dbg !4474

; <label>:113:                                    ; preds = %107
  call void @llvm.dbg.declare(metadata i32* %18, metadata !4475, metadata !DIExpression()), !dbg !4477
  store i32 1024, i32* %18, align 4, !dbg !4477
  call void @llvm.dbg.declare(metadata i32* %19, metadata !4478, metadata !DIExpression()), !dbg !4479
  store i32 1, i32* %19, align 4, !dbg !4479
  call void @llvm.dbg.declare(metadata i32* %20, metadata !4480, metadata !DIExpression()), !dbg !4481
  %114 = load i8*, i8** %11, align 8, !dbg !4482
  %115 = load i8**, i8*** %13, align 8, !dbg !4484
  %116 = load i8*, i8** %115, align 8, !dbg !4485
  %117 = load i8, i8* %116, align 1, !dbg !4486
  %118 = sext i8 %117 to i32, !dbg !4486
  %119 = call i8* @strchr(i8* %114, i32 %118) #14, !dbg !4487
  %120 = icmp ne i8* %119, null, !dbg !4487
  br i1 %120, label %126, label %121, !dbg !4488

; <label>:121:                                    ; preds = %113
  %122 = load i64, i64* %14, align 8, !dbg !4489
  %123 = load i64*, i64** %10, align 8, !dbg !4491
  store i64 %122, i64* %123, align 8, !dbg !4492
  %124 = load i32, i32* %15, align 4, !dbg !4493
  %125 = or i32 %124, 2, !dbg !4494
  store i32 %125, i32* %6, align 4, !dbg !4495
  br label %215, !dbg !4495

; <label>:126:                                    ; preds = %113
  %127 = load i8*, i8** %11, align 8, !dbg !4496
  %128 = call i8* @strchr(i8* %127, i32 48) #14, !dbg !4498
  %129 = icmp ne i8* %128, null, !dbg !4498
  br i1 %129, label %130, label %153, !dbg !4499

; <label>:130:                                    ; preds = %126
  %131 = load i8**, i8*** %13, align 8, !dbg !4500
  %132 = getelementptr inbounds i8*, i8** %131, i64 0, !dbg !4500
  %133 = load i8*, i8** %132, align 8, !dbg !4500
  %134 = getelementptr inbounds i8, i8* %133, i64 1, !dbg !4500
  %135 = load i8, i8* %134, align 1, !dbg !4500
  %136 = sext i8 %135 to i32, !dbg !4500
  switch i32 %136, label %152 [
    i32 105, label %137
    i32 66, label %149
    i32 68, label %149
  ], !dbg !4502

; <label>:137:                                    ; preds = %130
  %138 = load i8**, i8*** %13, align 8, !dbg !4503
  %139 = getelementptr inbounds i8*, i8** %138, i64 0, !dbg !4503
  %140 = load i8*, i8** %139, align 8, !dbg !4503
  %141 = getelementptr inbounds i8, i8* %140, i64 2, !dbg !4503
  %142 = load i8, i8* %141, align 1, !dbg !4503
  %143 = sext i8 %142 to i32, !dbg !4503
  %144 = icmp eq i32 %143, 66, !dbg !4506
  br i1 %144, label %145, label %148, !dbg !4507

; <label>:145:                                    ; preds = %137
  %146 = load i32, i32* %19, align 4, !dbg !4508
  %147 = add nsw i32 %146, 2, !dbg !4508
  store i32 %147, i32* %19, align 4, !dbg !4508
  br label %148, !dbg !4509

; <label>:148:                                    ; preds = %145, %137
  br label %152, !dbg !4510

; <label>:149:                                    ; preds = %130, %130
  store i32 1000, i32* %18, align 4, !dbg !4511
  %150 = load i32, i32* %19, align 4, !dbg !4512
  %151 = add nsw i32 %150, 1, !dbg !4512
  store i32 %151, i32* %19, align 4, !dbg !4512
  br label %152, !dbg !4513

; <label>:152:                                    ; preds = %130, %149, %148
  br label %153, !dbg !4514

; <label>:153:                                    ; preds = %152, %126
  %154 = load i8**, i8*** %13, align 8, !dbg !4515
  %155 = load i8*, i8** %154, align 8, !dbg !4516
  %156 = load i8, i8* %155, align 1, !dbg !4517
  %157 = sext i8 %156 to i32, !dbg !4517
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
  ], !dbg !4518

; <label>:158:                                    ; preds = %153
  %159 = call i32 @bkm_scale(i64* %14, i32 512), !dbg !4519
  store i32 %159, i32* %20, align 4, !dbg !4521
  br label %194, !dbg !4522

; <label>:160:                                    ; preds = %153
  %161 = call i32 @bkm_scale(i64* %14, i32 1024), !dbg !4523
  store i32 %161, i32* %20, align 4, !dbg !4524
  br label %194, !dbg !4525

; <label>:162:                                    ; preds = %153
  store i32 0, i32* %20, align 4, !dbg !4526
  br label %194, !dbg !4527

; <label>:163:                                    ; preds = %153
  %164 = load i32, i32* %18, align 4, !dbg !4528
  %165 = call i32 @bkm_scale_by_power(i64* %14, i32 %164, i32 6), !dbg !4529
  store i32 %165, i32* %20, align 4, !dbg !4530
  br label %194, !dbg !4531

; <label>:166:                                    ; preds = %153, %153
  %167 = load i32, i32* %18, align 4, !dbg !4532
  %168 = call i32 @bkm_scale_by_power(i64* %14, i32 %167, i32 3), !dbg !4533
  store i32 %168, i32* %20, align 4, !dbg !4534
  br label %194, !dbg !4535

; <label>:169:                                    ; preds = %153, %153
  %170 = load i32, i32* %18, align 4, !dbg !4536
  %171 = call i32 @bkm_scale_by_power(i64* %14, i32 %170, i32 1), !dbg !4537
  store i32 %171, i32* %20, align 4, !dbg !4538
  br label %194, !dbg !4539

; <label>:172:                                    ; preds = %153, %153
  %173 = load i32, i32* %18, align 4, !dbg !4540
  %174 = call i32 @bkm_scale_by_power(i64* %14, i32 %173, i32 2), !dbg !4541
  store i32 %174, i32* %20, align 4, !dbg !4542
  br label %194, !dbg !4543

; <label>:175:                                    ; preds = %153
  %176 = load i32, i32* %18, align 4, !dbg !4544
  %177 = call i32 @bkm_scale_by_power(i64* %14, i32 %176, i32 5), !dbg !4545
  store i32 %177, i32* %20, align 4, !dbg !4546
  br label %194, !dbg !4547

; <label>:178:                                    ; preds = %153, %153
  %179 = load i32, i32* %18, align 4, !dbg !4548
  %180 = call i32 @bkm_scale_by_power(i64* %14, i32 %179, i32 4), !dbg !4549
  store i32 %180, i32* %20, align 4, !dbg !4550
  br label %194, !dbg !4551

; <label>:181:                                    ; preds = %153
  %182 = call i32 @bkm_scale(i64* %14, i32 2), !dbg !4552
  store i32 %182, i32* %20, align 4, !dbg !4553
  br label %194, !dbg !4554

; <label>:183:                                    ; preds = %153
  %184 = load i32, i32* %18, align 4, !dbg !4555
  %185 = call i32 @bkm_scale_by_power(i64* %14, i32 %184, i32 8), !dbg !4556
  store i32 %185, i32* %20, align 4, !dbg !4557
  br label %194, !dbg !4558

; <label>:186:                                    ; preds = %153
  %187 = load i32, i32* %18, align 4, !dbg !4559
  %188 = call i32 @bkm_scale_by_power(i64* %14, i32 %187, i32 7), !dbg !4560
  store i32 %188, i32* %20, align 4, !dbg !4561
  br label %194, !dbg !4562

; <label>:189:                                    ; preds = %153
  %190 = load i64, i64* %14, align 8, !dbg !4563
  %191 = load i64*, i64** %10, align 8, !dbg !4564
  store i64 %190, i64* %191, align 8, !dbg !4565
  %192 = load i32, i32* %15, align 4, !dbg !4566
  %193 = or i32 %192, 2, !dbg !4567
  store i32 %193, i32* %6, align 4, !dbg !4568
  br label %215, !dbg !4568

; <label>:194:                                    ; preds = %186, %183, %181, %178, %175, %172, %169, %166, %163, %162, %160, %158
  %195 = load i32, i32* %20, align 4, !dbg !4569
  %196 = load i32, i32* %15, align 4, !dbg !4570
  %197 = or i32 %196, %195, !dbg !4570
  store i32 %197, i32* %15, align 4, !dbg !4570
  %198 = load i32, i32* %19, align 4, !dbg !4571
  %199 = load i8**, i8*** %13, align 8, !dbg !4572
  %200 = load i8*, i8** %199, align 8, !dbg !4573
  %201 = sext i32 %198 to i64, !dbg !4573
  %202 = getelementptr inbounds i8, i8* %200, i64 %201, !dbg !4573
  store i8* %202, i8** %199, align 8, !dbg !4573
  %203 = load i8**, i8*** %13, align 8, !dbg !4574
  %204 = load i8*, i8** %203, align 8, !dbg !4576
  %205 = load i8, i8* %204, align 1, !dbg !4577
  %206 = icmp ne i8 %205, 0, !dbg !4577
  br i1 %206, label %207, label %210, !dbg !4578

; <label>:207:                                    ; preds = %194
  %208 = load i32, i32* %15, align 4, !dbg !4579
  %209 = or i32 %208, 2, !dbg !4579
  store i32 %209, i32* %15, align 4, !dbg !4579
  br label %210, !dbg !4580

; <label>:210:                                    ; preds = %207, %194
  br label %211, !dbg !4581

; <label>:211:                                    ; preds = %210, %107
  %212 = load i64, i64* %14, align 8, !dbg !4582
  %213 = load i64*, i64** %10, align 8, !dbg !4583
  store i64 %212, i64* %213, align 8, !dbg !4584
  %214 = load i32, i32* %15, align 4, !dbg !4585
  store i32 %214, i32* %6, align 4, !dbg !4586
  br label %215, !dbg !4586

; <label>:215:                                    ; preds = %211, %189, %121, %103, %97, %87, %58
  %216 = load i32, i32* %6, align 4, !dbg !4587
  ret i32 %216, !dbg !4587
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #5

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #6

; Function Attrs: noinline nounwind uwtable
define internal i32 @bkm_scale(i64*, i32) #2 !dbg !4588 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !4591, metadata !DIExpression()), !dbg !4592
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4593, metadata !DIExpression()), !dbg !4594
  %6 = load i32, i32* %5, align 4, !dbg !4595
  %7 = sext i32 %6 to i64, !dbg !4595
  %8 = udiv i64 -1, %7, !dbg !4597
  %9 = load i64*, i64** %4, align 8, !dbg !4598
  %10 = load i64, i64* %9, align 8, !dbg !4599
  %11 = icmp ult i64 %8, %10, !dbg !4600
  br i1 %11, label %12, label %14, !dbg !4601

; <label>:12:                                     ; preds = %2
  %13 = load i64*, i64** %4, align 8, !dbg !4602
  store i64 -1, i64* %13, align 8, !dbg !4604
  store i32 1, i32* %3, align 4, !dbg !4605
  br label %20, !dbg !4605

; <label>:14:                                     ; preds = %2
  %15 = load i32, i32* %5, align 4, !dbg !4606
  %16 = sext i32 %15 to i64, !dbg !4606
  %17 = load i64*, i64** %4, align 8, !dbg !4607
  %18 = load i64, i64* %17, align 8, !dbg !4608
  %19 = mul i64 %18, %16, !dbg !4608
  store i64 %19, i64* %17, align 8, !dbg !4608
  store i32 0, i32* %3, align 4, !dbg !4609
  br label %20, !dbg !4609

; <label>:20:                                     ; preds = %14, %12
  %21 = load i32, i32* %3, align 4, !dbg !4610
  ret i32 %21, !dbg !4610
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @bkm_scale_by_power(i64*, i32, i32) #2 !dbg !4611 {
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !4614, metadata !DIExpression()), !dbg !4615
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4616, metadata !DIExpression()), !dbg !4617
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4618, metadata !DIExpression()), !dbg !4619
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4620, metadata !DIExpression()), !dbg !4621
  store i32 0, i32* %7, align 4, !dbg !4621
  br label %8, !dbg !4622

; <label>:8:                                      ; preds = %12, %3
  %9 = load i32, i32* %6, align 4, !dbg !4623
  %10 = add nsw i32 %9, -1, !dbg !4623
  store i32 %10, i32* %6, align 4, !dbg !4623
  %11 = icmp ne i32 %9, 0, !dbg !4622
  br i1 %11, label %12, label %18, !dbg !4622

; <label>:12:                                     ; preds = %8
  %13 = load i64*, i64** %4, align 8, !dbg !4624
  %14 = load i32, i32* %5, align 4, !dbg !4625
  %15 = call i32 @bkm_scale(i64* %13, i32 %14), !dbg !4626
  %16 = load i32, i32* %7, align 4, !dbg !4627
  %17 = or i32 %16, %15, !dbg !4627
  store i32 %17, i32* %7, align 4, !dbg !4627
  br label %8, !dbg !4622, !llvm.loop !4628

; <label>:18:                                     ; preds = %8
  %19 = load i32, i32* %7, align 4, !dbg !4630
  ret i32 %19, !dbg !4631
}

; Function Attrs: noinline nounwind uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) #2 !dbg !4632 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !4675, metadata !DIExpression()), !dbg !4676
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4677, metadata !DIExpression()), !dbg !4678
  store i32 0, i32* %4, align 4, !dbg !4678
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4679, metadata !DIExpression()), !dbg !4680
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4681, metadata !DIExpression()), !dbg !4682
  store i32 0, i32* %6, align 4, !dbg !4682
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4683
  %8 = call i32 @fileno(%struct._IO_FILE* %7) #11, !dbg !4684
  store i32 %8, i32* %5, align 4, !dbg !4685
  %9 = load i32, i32* %5, align 4, !dbg !4686
  %10 = icmp slt i32 %9, 0, !dbg !4688
  br i1 %10, label %11, label %14, !dbg !4689

; <label>:11:                                     ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4690
  %13 = call i32 @fclose(%struct._IO_FILE* %12), !dbg !4691
  store i32 %13, i32* %2, align 4, !dbg !4692
  br label %40, !dbg !4692

; <label>:14:                                     ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4693
  %16 = call i32 @__freading(%struct._IO_FILE* %15) #11, !dbg !4693
  %17 = icmp ne i32 %16, 0, !dbg !4693
  br i1 %17, label %18, label %23, !dbg !4695

; <label>:18:                                     ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4696
  %20 = call i32 @fileno(%struct._IO_FILE* %19) #11, !dbg !4697
  %21 = call i64 @lseek(i32 %20, i64 0, i32 1) #11, !dbg !4698
  %22 = icmp ne i64 %21, -1, !dbg !4699
  br i1 %22, label %23, label %30, !dbg !4700

; <label>:23:                                     ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4701
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* %24), !dbg !4702
  %26 = icmp ne i32 %25, 0, !dbg !4702
  br i1 %26, label %27, label %30, !dbg !4703

; <label>:27:                                     ; preds = %23
  %28 = call i32* @__errno_location() #16, !dbg !4704
  %29 = load i32, i32* %28, align 4, !dbg !4704
  store i32 %29, i32* %4, align 4, !dbg !4705
  br label %30, !dbg !4706

; <label>:30:                                     ; preds = %27, %23, %18
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4707
  %32 = call i32 @fclose(%struct._IO_FILE* %31), !dbg !4708
  store i32 %32, i32* %6, align 4, !dbg !4709
  %33 = load i32, i32* %4, align 4, !dbg !4710
  %34 = icmp ne i32 %33, 0, !dbg !4712
  br i1 %34, label %35, label %38, !dbg !4713

; <label>:35:                                     ; preds = %30
  %36 = load i32, i32* %4, align 4, !dbg !4714
  %37 = call i32* @__errno_location() #16, !dbg !4716
  store i32 %36, i32* %37, align 4, !dbg !4717
  store i32 -1, i32* %6, align 4, !dbg !4718
  br label %38, !dbg !4719

; <label>:38:                                     ; preds = %35, %30
  %39 = load i32, i32* %6, align 4, !dbg !4720
  store i32 %39, i32* %2, align 4, !dbg !4721
  br label %40, !dbg !4721

; <label>:40:                                     ; preds = %38, %11
  %41 = load i32, i32* %2, align 4, !dbg !4722
  ret i32 %41, !dbg !4722
}

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) #5

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #5

; Function Attrs: noinline nounwind uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) #2 !dbg !4723 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !4766, metadata !DIExpression()), !dbg !4767
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4768
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !4770
  br i1 %5, label %10, label %6, !dbg !4771

; <label>:6:                                      ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4772
  %8 = call i32 @__freading(%struct._IO_FILE* %7) #11, !dbg !4772
  %9 = icmp ne i32 %8, 0, !dbg !4772
  br i1 %9, label %13, label %10, !dbg !4773

; <label>:10:                                     ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4774
  %12 = call i32 @fflush(%struct._IO_FILE* %11), !dbg !4775
  store i32 %12, i32* %2, align 4, !dbg !4776
  br label %17, !dbg !4776

; <label>:13:                                     ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4777
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* %14), !dbg !4778
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4779
  %16 = call i32 @fflush(%struct._IO_FILE* %15), !dbg !4780
  store i32 %16, i32* %2, align 4, !dbg !4781
  br label %17, !dbg !4781

; <label>:17:                                     ; preds = %13, %10
  %18 = load i32, i32* %2, align 4, !dbg !4782
  ret i32 %18, !dbg !4782
}

declare i32 @fflush(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE*) #2 !dbg !4783 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !4786, metadata !DIExpression()), !dbg !4787
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !4788
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0, !dbg !4790
  %5 = load i32, i32* %4, align 8, !dbg !4790
  %6 = and i32 %5, 256, !dbg !4791
  %7 = icmp ne i32 %6, 0, !dbg !4791
  br i1 %7, label %8, label %11, !dbg !4792

; <label>:8:                                      ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !4793
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* %9, i64 0, i32 1), !dbg !4794
  br label %11, !dbg !4794

; <label>:11:                                     ; preds = %8, %1
  ret void, !dbg !4795
}

; Function Attrs: noinline nounwind uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nonnull, i64, i32) #2 !dbg !4796 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !4839, metadata !DIExpression()), !dbg !4840
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4841, metadata !DIExpression()), !dbg !4842
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4843, metadata !DIExpression()), !dbg !4844
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4845
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2, !dbg !4847
  %11 = load i8*, i8** %10, align 8, !dbg !4847
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4848
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1, !dbg !4849
  %14 = load i8*, i8** %13, align 8, !dbg !4849
  %15 = icmp eq i8* %11, %14, !dbg !4850
  br i1 %15, label %16, label %46, !dbg !4851

; <label>:16:                                     ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4852
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5, !dbg !4853
  %19 = load i8*, i8** %18, align 8, !dbg !4853
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4854
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4, !dbg !4855
  %22 = load i8*, i8** %21, align 8, !dbg !4855
  %23 = icmp eq i8* %19, %22, !dbg !4856
  br i1 %23, label %24, label %46, !dbg !4857

; <label>:24:                                     ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4858
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9, !dbg !4859
  %27 = load i8*, i8** %26, align 8, !dbg !4859
  %28 = icmp eq i8* %27, null, !dbg !4860
  br i1 %28, label %29, label %46, !dbg !4861

; <label>:29:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4862, metadata !DIExpression()), !dbg !4864
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4865
  %31 = call i32 @fileno(%struct._IO_FILE* %30) #11, !dbg !4866
  %32 = load i64, i64* %6, align 8, !dbg !4867
  %33 = load i32, i32* %7, align 4, !dbg !4868
  %34 = call i64 @lseek(i32 %31, i64 %32, i32 %33) #11, !dbg !4869
  store i64 %34, i64* %8, align 8, !dbg !4864
  %35 = load i64, i64* %8, align 8, !dbg !4870
  %36 = icmp eq i64 %35, -1, !dbg !4872
  br i1 %36, label %37, label %38, !dbg !4873

; <label>:37:                                     ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !4874
  br label %51, !dbg !4874

; <label>:38:                                     ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4876
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0, !dbg !4877
  %41 = load i32, i32* %40, align 8, !dbg !4878
  %42 = and i32 %41, -17, !dbg !4878
  store i32 %42, i32* %40, align 8, !dbg !4878
  %43 = load i64, i64* %8, align 8, !dbg !4879
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4880
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21, !dbg !4881
  store i64 %43, i64* %45, align 8, !dbg !4882
  store i32 0, i32* %4, align 4, !dbg !4883
  br label %51, !dbg !4883

; <label>:46:                                     ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4884
  %48 = load i64, i64* %6, align 8, !dbg !4885
  %49 = load i32, i32* %7, align 4, !dbg !4886
  %50 = call i32 @fseeko(%struct._IO_FILE* %47, i64 %48, i32 %49), !dbg !4887
  store i32 %50, i32* %4, align 4, !dbg !4888
  br label %51, !dbg !4888

; <label>:51:                                     ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4, !dbg !4889
  ret i32 %52, !dbg !4889
}

declare i32 @fseeko(%struct._IO_FILE*, i64, i32) #3

; Function Attrs: noinline nounwind readonly uwtable
define i32 @c_strcasecmp(i8*, i8*) #8 !dbg !4890 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4893, metadata !DIExpression()), !dbg !4894
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4895, metadata !DIExpression()), !dbg !4896
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4897, metadata !DIExpression()), !dbg !4898
  %10 = load i8*, i8** %4, align 8, !dbg !4899
  store i8* %10, i8** %6, align 8, !dbg !4898
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4900, metadata !DIExpression()), !dbg !4901
  %11 = load i8*, i8** %5, align 8, !dbg !4902
  store i8* %11, i8** %7, align 8, !dbg !4901
  call void @llvm.dbg.declare(metadata i8* %8, metadata !4903, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.declare(metadata i8* %9, metadata !4905, metadata !DIExpression()), !dbg !4906
  %12 = load i8*, i8** %6, align 8, !dbg !4907
  %13 = load i8*, i8** %7, align 8, !dbg !4909
  %14 = icmp eq i8* %12, %13, !dbg !4910
  br i1 %14, label %15, label %16, !dbg !4911

; <label>:15:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !4912
  br label %49, !dbg !4912

; <label>:16:                                     ; preds = %2
  br label %17, !dbg !4913, !llvm.loop !4914

; <label>:17:                                     ; preds = %37, %16
  %18 = load i8*, i8** %6, align 8, !dbg !4916
  %19 = load i8, i8* %18, align 1, !dbg !4918
  %20 = zext i8 %19 to i32, !dbg !4918
  %21 = call i32 @c_tolower(i32 %20) #16, !dbg !4919
  %22 = trunc i32 %21 to i8, !dbg !4919
  store i8 %22, i8* %8, align 1, !dbg !4920
  %23 = load i8*, i8** %7, align 8, !dbg !4921
  %24 = load i8, i8* %23, align 1, !dbg !4922
  %25 = zext i8 %24 to i32, !dbg !4922
  %26 = call i32 @c_tolower(i32 %25) #16, !dbg !4923
  %27 = trunc i32 %26 to i8, !dbg !4923
  store i8 %27, i8* %9, align 1, !dbg !4924
  %28 = load i8, i8* %8, align 1, !dbg !4925
  %29 = zext i8 %28 to i32, !dbg !4925
  %30 = icmp eq i32 %29, 0, !dbg !4927
  br i1 %30, label %31, label %32, !dbg !4928

; <label>:31:                                     ; preds = %17
  br label %43, !dbg !4929

; <label>:32:                                     ; preds = %17
  %33 = load i8*, i8** %6, align 8, !dbg !4930
  %34 = getelementptr inbounds i8, i8* %33, i32 1, !dbg !4930
  store i8* %34, i8** %6, align 8, !dbg !4930
  %35 = load i8*, i8** %7, align 8, !dbg !4931
  %36 = getelementptr inbounds i8, i8* %35, i32 1, !dbg !4931
  store i8* %36, i8** %7, align 8, !dbg !4931
  br label %37, !dbg !4932

; <label>:37:                                     ; preds = %32
  %38 = load i8, i8* %8, align 1, !dbg !4933
  %39 = zext i8 %38 to i32, !dbg !4933
  %40 = load i8, i8* %9, align 1, !dbg !4934
  %41 = zext i8 %40 to i32, !dbg !4934
  %42 = icmp eq i32 %39, %41, !dbg !4935
  br i1 %42, label %17, label %43, !dbg !4932, !llvm.loop !4914

; <label>:43:                                     ; preds = %37, %31
  %44 = load i8, i8* %8, align 1, !dbg !4936
  %45 = zext i8 %44 to i32, !dbg !4936
  %46 = load i8, i8* %9, align 1, !dbg !4938
  %47 = zext i8 %46 to i32, !dbg !4938
  %48 = sub nsw i32 %45, %47, !dbg !4939
  store i32 %48, i32* %3, align 4, !dbg !4940
  br label %49, !dbg !4940

; <label>:49:                                     ; preds = %43, %15
  %50 = load i32, i32* %3, align 4, !dbg !4941
  ret i32 %50, !dbg !4941
}

; Function Attrs: noinline nounwind uwtable
define i32 @close_stream(%struct._IO_FILE*) #2 !dbg !4942 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !4985, metadata !DIExpression()), !dbg !4986
  call void @llvm.dbg.declare(metadata i8* %4, metadata !4987, metadata !DIExpression()), !dbg !4989
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4990
  %8 = call i64 @__fpending(%struct._IO_FILE* %7) #11, !dbg !4991
  %9 = icmp ne i64 %8, 0, !dbg !4992
  %10 = zext i1 %9 to i8, !dbg !4989
  store i8 %10, i8* %4, align 1, !dbg !4989
  call void @llvm.dbg.declare(metadata i8* %5, metadata !4993, metadata !DIExpression()), !dbg !4994
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4995
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* %11) #11, !dbg !4995
  %13 = icmp ne i32 %12, 0, !dbg !4996
  %14 = zext i1 %13 to i8, !dbg !4994
  store i8 %14, i8* %5, align 1, !dbg !4994
  call void @llvm.dbg.declare(metadata i8* %6, metadata !4997, metadata !DIExpression()), !dbg !4998
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4999
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* %15), !dbg !5000
  %17 = icmp ne i32 %16, 0, !dbg !5001
  %18 = zext i1 %17 to i8, !dbg !4998
  store i8 %18, i8* %6, align 1, !dbg !4998
  %19 = load i8, i8* %5, align 1, !dbg !5002
  %20 = trunc i8 %19 to i1, !dbg !5002
  br i1 %20, label %31, label %21, !dbg !5004

; <label>:21:                                     ; preds = %1
  %22 = load i8, i8* %6, align 1, !dbg !5005
  %23 = trunc i8 %22 to i1, !dbg !5005
  br i1 %23, label %24, label %37, !dbg !5006

; <label>:24:                                     ; preds = %21
  %25 = load i8, i8* %4, align 1, !dbg !5007
  %26 = trunc i8 %25 to i1, !dbg !5007
  br i1 %26, label %31, label %27, !dbg !5008

; <label>:27:                                     ; preds = %24
  %28 = call i32* @__errno_location() #16, !dbg !5009
  %29 = load i32, i32* %28, align 4, !dbg !5009
  %30 = icmp ne i32 %29, 9, !dbg !5010
  br i1 %30, label %31, label %37, !dbg !5011

; <label>:31:                                     ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1, !dbg !5012
  %33 = trunc i8 %32 to i1, !dbg !5012
  br i1 %33, label %36, label %34, !dbg !5015

; <label>:34:                                     ; preds = %31
  %35 = call i32* @__errno_location() #16, !dbg !5016
  store i32 0, i32* %35, align 4, !dbg !5017
  br label %36, !dbg !5016

; <label>:36:                                     ; preds = %34, %31
  store i32 -1, i32* %2, align 4, !dbg !5018
  br label %38, !dbg !5018

; <label>:37:                                     ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !5019
  br label %38, !dbg !5019

; <label>:38:                                     ; preds = %37, %36
  %39 = load i32, i32* %2, align 4, !dbg !5020
  ret i32 %39, !dbg !5020
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) #5

; Function Attrs: noinline nounwind uwtable
define i8* @locale_charset() #2 !dbg !5021 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !5023, metadata !DIExpression()), !dbg !5024
  call void @llvm.dbg.declare(metadata i8** %2, metadata !5025, metadata !DIExpression()), !dbg !5026
  %3 = call i8* @nl_langinfo(i32 14) #11, !dbg !5027
  store i8* %3, i8** %1, align 8, !dbg !5028
  %4 = load i8*, i8** %1, align 8, !dbg !5029
  %5 = icmp eq i8* %4, null, !dbg !5031
  br i1 %5, label %6, label %7, !dbg !5032

; <label>:6:                                      ; preds = %0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.179, i32 0, i32 0), i8** %1, align 8, !dbg !5033
  br label %7, !dbg !5034

; <label>:7:                                      ; preds = %6, %0
  %8 = call i8* @get_charset_aliases(), !dbg !5035
  store i8* %8, i8** %2, align 8, !dbg !5037
  br label %9, !dbg !5038

; <label>:9:                                      ; preds = %38, %7
  %10 = load i8*, i8** %2, align 8, !dbg !5039
  %11 = load i8, i8* %10, align 1, !dbg !5041
  %12 = sext i8 %11 to i32, !dbg !5041
  %13 = icmp ne i32 %12, 0, !dbg !5042
  br i1 %13, label %14, label %49, !dbg !5043

; <label>:14:                                     ; preds = %9
  %15 = load i8*, i8** %1, align 8, !dbg !5044
  %16 = load i8*, i8** %2, align 8, !dbg !5046
  %17 = call i32 @strcmp(i8* %15, i8* %16) #14, !dbg !5047
  %18 = icmp eq i32 %17, 0, !dbg !5048
  br i1 %18, label %31, label %19, !dbg !5049

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %2, align 8, !dbg !5050
  %21 = getelementptr inbounds i8, i8* %20, i64 0, !dbg !5050
  %22 = load i8, i8* %21, align 1, !dbg !5050
  %23 = sext i8 %22 to i32, !dbg !5050
  %24 = icmp eq i32 %23, 42, !dbg !5051
  br i1 %24, label %25, label %37, !dbg !5052

; <label>:25:                                     ; preds = %19
  %26 = load i8*, i8** %2, align 8, !dbg !5053
  %27 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !5053
  %28 = load i8, i8* %27, align 1, !dbg !5053
  %29 = sext i8 %28 to i32, !dbg !5053
  %30 = icmp eq i32 %29, 0, !dbg !5054
  br i1 %30, label %31, label %37, !dbg !5055

; <label>:31:                                     ; preds = %25, %14
  %32 = load i8*, i8** %2, align 8, !dbg !5056
  %33 = load i8*, i8** %2, align 8, !dbg !5058
  %34 = call i64 @strlen(i8* %33) #14, !dbg !5059
  %35 = getelementptr inbounds i8, i8* %32, i64 %34, !dbg !5060
  %36 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !5061
  store i8* %36, i8** %1, align 8, !dbg !5062
  br label %49, !dbg !5063

; <label>:37:                                     ; preds = %25, %19
  br label %38, !dbg !5064

; <label>:38:                                     ; preds = %37
  %39 = load i8*, i8** %2, align 8, !dbg !5065
  %40 = call i64 @strlen(i8* %39) #14, !dbg !5066
  %41 = add i64 %40, 1, !dbg !5067
  %42 = load i8*, i8** %2, align 8, !dbg !5068
  %43 = getelementptr inbounds i8, i8* %42, i64 %41, !dbg !5068
  store i8* %43, i8** %2, align 8, !dbg !5068
  %44 = load i8*, i8** %2, align 8, !dbg !5069
  %45 = call i64 @strlen(i8* %44) #14, !dbg !5070
  %46 = add i64 %45, 1, !dbg !5071
  %47 = load i8*, i8** %2, align 8, !dbg !5072
  %48 = getelementptr inbounds i8, i8* %47, i64 %46, !dbg !5072
  store i8* %48, i8** %2, align 8, !dbg !5072
  br label %9, !dbg !5073, !llvm.loop !5074

; <label>:49:                                     ; preds = %31, %9
  %50 = load i8*, i8** %1, align 8, !dbg !5076
  %51 = getelementptr inbounds i8, i8* %50, i64 0, !dbg !5076
  %52 = load i8, i8* %51, align 1, !dbg !5076
  %53 = sext i8 %52 to i32, !dbg !5076
  %54 = icmp eq i32 %53, 0, !dbg !5078
  br i1 %54, label %55, label %56, !dbg !5079

; <label>:55:                                     ; preds = %49
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.180, i32 0, i32 0), i8** %1, align 8, !dbg !5080
  br label %56, !dbg !5081

; <label>:56:                                     ; preds = %55, %49
  %57 = load i8*, i8** %1, align 8, !dbg !5082
  ret i8* %57, !dbg !5083
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) #5

; Function Attrs: noinline nounwind uwtable
define internal i8* @get_charset_aliases() #2 !dbg !5084 {
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
  call void @llvm.dbg.declare(metadata i8** %1, metadata !5085, metadata !DIExpression()), !dbg !5086
  %18 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !5087
  store i8* %18, i8** %1, align 8, !dbg !5088
  %19 = load i8*, i8** %1, align 8, !dbg !5089
  %20 = icmp eq i8* %19, null, !dbg !5091
  br i1 %20, label %21, label %221, !dbg !5092

; <label>:21:                                     ; preds = %0
  call void @llvm.dbg.declare(metadata i8** %2, metadata !5093, metadata !DIExpression()), !dbg !5095
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5096, metadata !DIExpression()), !dbg !5097
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.181, i32 0, i32 0), i8** %3, align 8, !dbg !5097
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5098, metadata !DIExpression()), !dbg !5099
  %22 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.182, i32 0, i32 0)) #11, !dbg !5100
  store i8* %22, i8** %2, align 8, !dbg !5101
  %23 = load i8*, i8** %2, align 8, !dbg !5102
  %24 = icmp eq i8* %23, null, !dbg !5104
  br i1 %24, label %31, label %25, !dbg !5105

; <label>:25:                                     ; preds = %21
  %26 = load i8*, i8** %2, align 8, !dbg !5106
  %27 = getelementptr inbounds i8, i8* %26, i64 0, !dbg !5106
  %28 = load i8, i8* %27, align 1, !dbg !5106
  %29 = sext i8 %28 to i32, !dbg !5106
  %30 = icmp eq i32 %29, 0, !dbg !5107
  br i1 %30, label %31, label %32, !dbg !5108

; <label>:31:                                     ; preds = %25, %21
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.183, i32 0, i32 0), i8** %2, align 8, !dbg !5109
  br label %32, !dbg !5110

; <label>:32:                                     ; preds = %31, %25
  call void @llvm.dbg.declare(metadata i64* %5, metadata !5111, metadata !DIExpression()), !dbg !5113
  %33 = load i8*, i8** %2, align 8, !dbg !5114
  %34 = call i64 @strlen(i8* %33) #14, !dbg !5115
  store i64 %34, i64* %5, align 8, !dbg !5113
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5116, metadata !DIExpression()), !dbg !5117
  %35 = load i8*, i8** %3, align 8, !dbg !5118
  %36 = call i64 @strlen(i8* %35) #14, !dbg !5119
  store i64 %36, i64* %6, align 8, !dbg !5117
  call void @llvm.dbg.declare(metadata i32* %7, metadata !5120, metadata !DIExpression()), !dbg !5121
  %37 = load i64, i64* %5, align 8, !dbg !5122
  %38 = icmp ugt i64 %37, 0, !dbg !5123
  br i1 %38, label %39, label %48, !dbg !5124

; <label>:39:                                     ; preds = %32
  %40 = load i8*, i8** %2, align 8, !dbg !5125
  %41 = load i64, i64* %5, align 8, !dbg !5125
  %42 = sub i64 %41, 1, !dbg !5125
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !5125
  %44 = load i8, i8* %43, align 1, !dbg !5125
  %45 = sext i8 %44 to i32, !dbg !5125
  %46 = icmp eq i32 %45, 47, !dbg !5125
  %47 = xor i1 %46, true, !dbg !5126
  br label %48

; <label>:48:                                     ; preds = %39, %32
  %49 = phi i1 [ false, %32 ], [ %47, %39 ]
  %50 = zext i1 %49 to i32, !dbg !5124
  store i32 %50, i32* %7, align 4, !dbg !5121
  %51 = load i64, i64* %5, align 8, !dbg !5127
  %52 = load i32, i32* %7, align 4, !dbg !5128
  %53 = sext i32 %52 to i64, !dbg !5128
  %54 = add i64 %51, %53, !dbg !5129
  %55 = load i64, i64* %6, align 8, !dbg !5130
  %56 = add i64 %54, %55, !dbg !5131
  %57 = add i64 %56, 1, !dbg !5132
  %58 = call noalias i8* @malloc(i64 %57) #11, !dbg !5133
  store i8* %58, i8** %4, align 8, !dbg !5134
  %59 = load i8*, i8** %4, align 8, !dbg !5135
  %60 = icmp ne i8* %59, null, !dbg !5137
  br i1 %60, label %61, label %81, !dbg !5138

; <label>:61:                                     ; preds = %48
  %62 = load i8*, i8** %4, align 8, !dbg !5139
  %63 = load i8*, i8** %2, align 8, !dbg !5141
  %64 = load i64, i64* %5, align 8, !dbg !5142
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 %64, i32 1, i1 false), !dbg !5143
  %65 = load i32, i32* %7, align 4, !dbg !5144
  %66 = icmp ne i32 %65, 0, !dbg !5144
  br i1 %66, label %67, label %71, !dbg !5146

; <label>:67:                                     ; preds = %61
  %68 = load i8*, i8** %4, align 8, !dbg !5147
  %69 = load i64, i64* %5, align 8, !dbg !5148
  %70 = getelementptr inbounds i8, i8* %68, i64 %69, !dbg !5147
  store i8 47, i8* %70, align 1, !dbg !5149
  br label %71, !dbg !5147

; <label>:71:                                     ; preds = %67, %61
  %72 = load i8*, i8** %4, align 8, !dbg !5150
  %73 = load i64, i64* %5, align 8, !dbg !5151
  %74 = getelementptr inbounds i8, i8* %72, i64 %73, !dbg !5152
  %75 = load i32, i32* %7, align 4, !dbg !5153
  %76 = sext i32 %75 to i64, !dbg !5154
  %77 = getelementptr inbounds i8, i8* %74, i64 %76, !dbg !5154
  %78 = load i8*, i8** %3, align 8, !dbg !5155
  %79 = load i64, i64* %6, align 8, !dbg !5156
  %80 = add i64 %79, 1, !dbg !5157
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %77, i8* %78, i64 %80, i32 1, i1 false), !dbg !5158
  br label %81, !dbg !5159

; <label>:81:                                     ; preds = %71, %48
  %82 = load i8*, i8** %4, align 8, !dbg !5160
  %83 = icmp eq i8* %82, null, !dbg !5162
  br i1 %83, label %84, label %85, !dbg !5163

; <label>:84:                                     ; preds = %81
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.179, i32 0, i32 0), i8** %1, align 8, !dbg !5164
  br label %219, !dbg !5165

; <label>:85:                                     ; preds = %81
  call void @llvm.dbg.declare(metadata i32* %8, metadata !5166, metadata !DIExpression()), !dbg !5168
  %86 = load i8*, i8** %4, align 8, !dbg !5169
  %87 = call i32 (i8*, i32, ...) @open(i8* %86, i32 131072), !dbg !5170
  store i32 %87, i32* %8, align 4, !dbg !5171
  %88 = load i32, i32* %8, align 4, !dbg !5172
  %89 = icmp slt i32 %88, 0, !dbg !5174
  br i1 %89, label %90, label %91, !dbg !5175

; <label>:90:                                     ; preds = %85
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.179, i32 0, i32 0), i8** %1, align 8, !dbg !5176
  br label %217, !dbg !5177

; <label>:91:                                     ; preds = %85
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %9, metadata !5178, metadata !DIExpression()), !dbg !5220
  %92 = load i32, i32* %8, align 4, !dbg !5221
  %93 = call %struct._IO_FILE* @fdopen(i32 %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.184, i32 0, i32 0)) #11, !dbg !5222
  store %struct._IO_FILE* %93, %struct._IO_FILE** %9, align 8, !dbg !5223
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !5224
  %95 = icmp eq %struct._IO_FILE* %94, null, !dbg !5226
  br i1 %95, label %96, label %99, !dbg !5227

; <label>:96:                                     ; preds = %91
  %97 = load i32, i32* %8, align 4, !dbg !5228
  %98 = call i32 @close(i32 %97), !dbg !5230
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.179, i32 0, i32 0), i8** %1, align 8, !dbg !5231
  br label %216, !dbg !5232

; <label>:99:                                     ; preds = %91
  call void @llvm.dbg.declare(metadata i8** %10, metadata !5233, metadata !DIExpression()), !dbg !5235
  store i8* null, i8** %10, align 8, !dbg !5235
  call void @llvm.dbg.declare(metadata i64* %11, metadata !5236, metadata !DIExpression()), !dbg !5237
  store i64 0, i64* %11, align 8, !dbg !5237
  br label %100, !dbg !5238

; <label>:100:                                    ; preds = %181, %136, %115, %99
  call void @llvm.dbg.declare(metadata i32* %12, metadata !5239, metadata !DIExpression()), !dbg !5243
  call void @llvm.dbg.declare(metadata [51 x i8]* %13, metadata !5244, metadata !DIExpression()), !dbg !5248
  call void @llvm.dbg.declare(metadata [51 x i8]* %14, metadata !5249, metadata !DIExpression()), !dbg !5250
  call void @llvm.dbg.declare(metadata i64* %15, metadata !5251, metadata !DIExpression()), !dbg !5252
  call void @llvm.dbg.declare(metadata i64* %16, metadata !5253, metadata !DIExpression()), !dbg !5254
  call void @llvm.dbg.declare(metadata i8** %17, metadata !5255, metadata !DIExpression()), !dbg !5256
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !5257
  %102 = call i32 @getc_unlocked(%struct._IO_FILE* %101), !dbg !5258
  store i32 %102, i32* %12, align 4, !dbg !5259
  %103 = load i32, i32* %12, align 4, !dbg !5260
  %104 = icmp eq i32 %103, -1, !dbg !5262
  br i1 %104, label %105, label %106, !dbg !5263

; <label>:105:                                    ; preds = %100
  br label %204, !dbg !5264

; <label>:106:                                    ; preds = %100
  %107 = load i32, i32* %12, align 4, !dbg !5265
  %108 = icmp eq i32 %107, 10, !dbg !5267
  br i1 %108, label %115, label %109, !dbg !5268

; <label>:109:                                    ; preds = %106
  %110 = load i32, i32* %12, align 4, !dbg !5269
  %111 = icmp eq i32 %110, 32, !dbg !5270
  br i1 %111, label %115, label %112, !dbg !5271

; <label>:112:                                    ; preds = %109
  %113 = load i32, i32* %12, align 4, !dbg !5272
  %114 = icmp eq i32 %113, 9, !dbg !5273
  br i1 %114, label %115, label %116, !dbg !5274

; <label>:115:                                    ; preds = %112, %109, %106
  br label %100, !dbg !5275, !llvm.loop !5276

; <label>:116:                                    ; preds = %112
  %117 = load i32, i32* %12, align 4, !dbg !5279
  %118 = icmp eq i32 %117, 35, !dbg !5281
  br i1 %118, label %119, label %137, !dbg !5282

; <label>:119:                                    ; preds = %116
  br label %120, !dbg !5283, !llvm.loop !5285

; <label>:120:                                    ; preds = %129, %119
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !5287
  %122 = call i32 @getc_unlocked(%struct._IO_FILE* %121), !dbg !5288
  store i32 %122, i32* %12, align 4, !dbg !5289
  br label %123, !dbg !5290

; <label>:123:                                    ; preds = %120
  %124 = load i32, i32* %12, align 4, !dbg !5291
  %125 = icmp eq i32 %124, -1, !dbg !5292
  br i1 %125, label %129, label %126, !dbg !5293

; <label>:126:                                    ; preds = %123
  %127 = load i32, i32* %12, align 4, !dbg !5294
  %128 = icmp eq i32 %127, 10, !dbg !5295
  br label %129, !dbg !5293

; <label>:129:                                    ; preds = %126, %123
  %130 = phi i1 [ true, %123 ], [ %128, %126 ]
  %131 = xor i1 %130, true, !dbg !5296
  br i1 %131, label %120, label %132, !dbg !5290, !llvm.loop !5285

; <label>:132:                                    ; preds = %129
  %133 = load i32, i32* %12, align 4, !dbg !5297
  %134 = icmp eq i32 %133, -1, !dbg !5299
  br i1 %134, label %135, label %136, !dbg !5300

; <label>:135:                                    ; preds = %132
  br label %204, !dbg !5301

; <label>:136:                                    ; preds = %132
  br label %100, !dbg !5302, !llvm.loop !5276

; <label>:137:                                    ; preds = %116
  %138 = load i32, i32* %12, align 4, !dbg !5303
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !5304
  %140 = call i32 @ungetc(i32 %138, %struct._IO_FILE* %139), !dbg !5305
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !5306
  %142 = getelementptr inbounds [51 x i8], [51 x i8]* %13, i32 0, i32 0, !dbg !5308
  %143 = getelementptr inbounds [51 x i8], [51 x i8]* %14, i32 0, i32 0, !dbg !5309
  %144 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %141, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.185, i32 0, i32 0), i8* %142, i8* %143), !dbg !5310
  %145 = icmp slt i32 %144, 2, !dbg !5311
  br i1 %145, label %146, label %147, !dbg !5312

; <label>:146:                                    ; preds = %137
  br label %204, !dbg !5313

; <label>:147:                                    ; preds = %137
  %148 = getelementptr inbounds [51 x i8], [51 x i8]* %13, i32 0, i32 0, !dbg !5314
  %149 = call i64 @strlen(i8* %148) #14, !dbg !5315
  store i64 %149, i64* %15, align 8, !dbg !5316
  %150 = getelementptr inbounds [51 x i8], [51 x i8]* %14, i32 0, i32 0, !dbg !5317
  %151 = call i64 @strlen(i8* %150) #14, !dbg !5318
  store i64 %151, i64* %16, align 8, !dbg !5319
  %152 = load i8*, i8** %10, align 8, !dbg !5320
  store i8* %152, i8** %17, align 8, !dbg !5321
  %153 = load i64, i64* %11, align 8, !dbg !5322
  %154 = icmp eq i64 %153, 0, !dbg !5324
  br i1 %154, label %155, label %164, !dbg !5325

; <label>:155:                                    ; preds = %147
  %156 = load i64, i64* %15, align 8, !dbg !5326
  %157 = add i64 %156, 1, !dbg !5328
  %158 = load i64, i64* %16, align 8, !dbg !5329
  %159 = add i64 %157, %158, !dbg !5330
  %160 = add i64 %159, 1, !dbg !5331
  store i64 %160, i64* %11, align 8, !dbg !5332
  %161 = load i64, i64* %11, align 8, !dbg !5333
  %162 = add i64 %161, 1, !dbg !5334
  %163 = call noalias i8* @malloc(i64 %162) #11, !dbg !5335
  store i8* %163, i8** %10, align 8, !dbg !5336
  br label %176, !dbg !5337

; <label>:164:                                    ; preds = %147
  %165 = load i64, i64* %15, align 8, !dbg !5338
  %166 = add i64 %165, 1, !dbg !5340
  %167 = load i64, i64* %16, align 8, !dbg !5341
  %168 = add i64 %166, %167, !dbg !5342
  %169 = add i64 %168, 1, !dbg !5343
  %170 = load i64, i64* %11, align 8, !dbg !5344
  %171 = add i64 %170, %169, !dbg !5344
  store i64 %171, i64* %11, align 8, !dbg !5344
  %172 = load i8*, i8** %10, align 8, !dbg !5345
  %173 = load i64, i64* %11, align 8, !dbg !5346
  %174 = add i64 %173, 1, !dbg !5347
  %175 = call i8* @realloc(i8* %172, i64 %174) #11, !dbg !5348
  store i8* %175, i8** %10, align 8, !dbg !5349
  br label %176

; <label>:176:                                    ; preds = %164, %155
  %177 = load i8*, i8** %10, align 8, !dbg !5350
  %178 = icmp eq i8* %177, null, !dbg !5352
  br i1 %178, label %179, label %181, !dbg !5353

; <label>:179:                                    ; preds = %176
  store i64 0, i64* %11, align 8, !dbg !5354
  %180 = load i8*, i8** %17, align 8, !dbg !5356
  call void @free(i8* %180) #11, !dbg !5357
  br label %204, !dbg !5358

; <label>:181:                                    ; preds = %176
  %182 = load i8*, i8** %10, align 8, !dbg !5359
  %183 = load i64, i64* %11, align 8, !dbg !5360
  %184 = getelementptr inbounds i8, i8* %182, i64 %183, !dbg !5361
  %185 = load i64, i64* %16, align 8, !dbg !5362
  %186 = add i64 %185, 1, !dbg !5363
  %187 = sub i64 0, %186, !dbg !5364
  %188 = getelementptr inbounds i8, i8* %184, i64 %187, !dbg !5364
  %189 = load i64, i64* %15, align 8, !dbg !5365
  %190 = add i64 %189, 1, !dbg !5366
  %191 = sub i64 0, %190, !dbg !5367
  %192 = getelementptr inbounds i8, i8* %188, i64 %191, !dbg !5367
  %193 = getelementptr inbounds [51 x i8], [51 x i8]* %13, i32 0, i32 0, !dbg !5368
  %194 = call i8* @strcpy(i8* %192, i8* %193) #11, !dbg !5369
  %195 = load i8*, i8** %10, align 8, !dbg !5370
  %196 = load i64, i64* %11, align 8, !dbg !5371
  %197 = getelementptr inbounds i8, i8* %195, i64 %196, !dbg !5372
  %198 = load i64, i64* %16, align 8, !dbg !5373
  %199 = add i64 %198, 1, !dbg !5374
  %200 = sub i64 0, %199, !dbg !5375
  %201 = getelementptr inbounds i8, i8* %197, i64 %200, !dbg !5375
  %202 = getelementptr inbounds [51 x i8], [51 x i8]* %14, i32 0, i32 0, !dbg !5376
  %203 = call i8* @strcpy(i8* %201, i8* %202) #11, !dbg !5377
  br label %100, !dbg !5378, !llvm.loop !5276

; <label>:204:                                    ; preds = %179, %146, %135, %105
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !5379
  %206 = call i32 @rpl_fclose(%struct._IO_FILE* %205), !dbg !5380
  %207 = load i64, i64* %11, align 8, !dbg !5381
  %208 = icmp eq i64 %207, 0, !dbg !5383
  br i1 %208, label %209, label %210, !dbg !5384

; <label>:209:                                    ; preds = %204
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.179, i32 0, i32 0), i8** %1, align 8, !dbg !5385
  br label %215, !dbg !5386

; <label>:210:                                    ; preds = %204
  %211 = load i8*, i8** %10, align 8, !dbg !5387
  %212 = load i64, i64* %11, align 8, !dbg !5389
  %213 = getelementptr inbounds i8, i8* %211, i64 %212, !dbg !5390
  store i8 0, i8* %213, align 1, !dbg !5391
  %214 = load i8*, i8** %10, align 8, !dbg !5392
  store i8* %214, i8** %1, align 8, !dbg !5393
  br label %215

; <label>:215:                                    ; preds = %210, %209
  br label %216

; <label>:216:                                    ; preds = %215, %96
  br label %217

; <label>:217:                                    ; preds = %216, %90
  %218 = load i8*, i8** %4, align 8, !dbg !5394
  call void @free(i8* %218) #11, !dbg !5395
  br label %219

; <label>:219:                                    ; preds = %217, %84
  %220 = load i8*, i8** %1, align 8, !dbg !5396
  store volatile i8* %220, i8** @charset_aliases, align 8, !dbg !5397
  br label %221, !dbg !5398

; <label>:221:                                    ; preds = %219, %0
  %222 = load i8*, i8** %1, align 8, !dbg !5399
  ret i8* %222, !dbg !5400
}

; Function Attrs: nounwind
declare %struct._IO_FILE* @fdopen(i32, i8*) #5

declare i32 @ungetc(i32, %struct._IO_FILE*) #3

declare i32 @fscanf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind uwtable
define i32 @memcoll(i8*, i64, i8*, i64) #2 !dbg !5401 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !5402, metadata !DIExpression()), !dbg !5403
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5404, metadata !DIExpression()), !dbg !5405
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !5406, metadata !DIExpression()), !dbg !5407
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !5408, metadata !DIExpression()), !dbg !5409
  call void @llvm.dbg.declare(metadata i32* %9, metadata !5410, metadata !DIExpression()), !dbg !5411
  %12 = load i64, i64* %6, align 8, !dbg !5412
  %13 = load i64, i64* %8, align 8, !dbg !5414
  %14 = icmp eq i64 %12, %13, !dbg !5415
  br i1 %14, label %15, label %23, !dbg !5416

; <label>:15:                                     ; preds = %4
  %16 = load i8*, i8** %5, align 8, !dbg !5417
  %17 = load i8*, i8** %7, align 8, !dbg !5418
  %18 = load i64, i64* %6, align 8, !dbg !5419
  %19 = call i32 @memcmp(i8* %16, i8* %17, i64 %18) #14, !dbg !5420
  %20 = icmp eq i32 %19, 0, !dbg !5421
  br i1 %20, label %21, label %23, !dbg !5422

; <label>:21:                                     ; preds = %15
  %22 = call i32* @__errno_location() #16, !dbg !5423
  store i32 0, i32* %22, align 4, !dbg !5425
  store i32 0, i32* %9, align 4, !dbg !5426
  br label %53, !dbg !5427

; <label>:23:                                     ; preds = %15, %4
  call void @llvm.dbg.declare(metadata i8* %10, metadata !5428, metadata !DIExpression()), !dbg !5430
  %24 = load i8*, i8** %5, align 8, !dbg !5431
  %25 = load i64, i64* %6, align 8, !dbg !5432
  %26 = getelementptr inbounds i8, i8* %24, i64 %25, !dbg !5431
  %27 = load i8, i8* %26, align 1, !dbg !5431
  store i8 %27, i8* %10, align 1, !dbg !5430
  call void @llvm.dbg.declare(metadata i8* %11, metadata !5433, metadata !DIExpression()), !dbg !5434
  %28 = load i8*, i8** %7, align 8, !dbg !5435
  %29 = load i64, i64* %8, align 8, !dbg !5436
  %30 = getelementptr inbounds i8, i8* %28, i64 %29, !dbg !5435
  %31 = load i8, i8* %30, align 1, !dbg !5435
  store i8 %31, i8* %11, align 1, !dbg !5434
  %32 = load i8*, i8** %5, align 8, !dbg !5437
  %33 = load i64, i64* %6, align 8, !dbg !5438
  %34 = getelementptr inbounds i8, i8* %32, i64 %33, !dbg !5437
  store i8 0, i8* %34, align 1, !dbg !5439
  %35 = load i8*, i8** %7, align 8, !dbg !5440
  %36 = load i64, i64* %8, align 8, !dbg !5441
  %37 = getelementptr inbounds i8, i8* %35, i64 %36, !dbg !5440
  store i8 0, i8* %37, align 1, !dbg !5442
  %38 = load i8*, i8** %5, align 8, !dbg !5443
  %39 = load i64, i64* %6, align 8, !dbg !5444
  %40 = add i64 %39, 1, !dbg !5445
  %41 = load i8*, i8** %7, align 8, !dbg !5446
  %42 = load i64, i64* %8, align 8, !dbg !5447
  %43 = add i64 %42, 1, !dbg !5448
  %44 = call i32 @strcoll_loop(i8* %38, i64 %40, i8* %41, i64 %43), !dbg !5449
  store i32 %44, i32* %9, align 4, !dbg !5450
  %45 = load i8, i8* %10, align 1, !dbg !5451
  %46 = load i8*, i8** %5, align 8, !dbg !5452
  %47 = load i64, i64* %6, align 8, !dbg !5453
  %48 = getelementptr inbounds i8, i8* %46, i64 %47, !dbg !5452
  store i8 %45, i8* %48, align 1, !dbg !5454
  %49 = load i8, i8* %11, align 1, !dbg !5455
  %50 = load i8*, i8** %7, align 8, !dbg !5456
  %51 = load i64, i64* %8, align 8, !dbg !5457
  %52 = getelementptr inbounds i8, i8* %50, i64 %51, !dbg !5456
  store i8 %49, i8* %52, align 1, !dbg !5458
  br label %53

; <label>:53:                                     ; preds = %23, %21
  %54 = load i32, i32* %9, align 4, !dbg !5459
  ret i32 %54, !dbg !5460
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @strcoll_loop(i8*, i64, i8*, i64) #2 !dbg !5461 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !5462, metadata !DIExpression()), !dbg !5463
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !5464, metadata !DIExpression()), !dbg !5465
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !5466, metadata !DIExpression()), !dbg !5467
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !5468, metadata !DIExpression()), !dbg !5469
  call void @llvm.dbg.declare(metadata i32* %10, metadata !5470, metadata !DIExpression()), !dbg !5471
  br label %13, !dbg !5472

; <label>:13:                                     ; preds = %56, %4
  %14 = call i32* @__errno_location() #16, !dbg !5473
  store i32 0, i32* %14, align 4, !dbg !5474
  %15 = load i8*, i8** %6, align 8, !dbg !5475
  %16 = load i8*, i8** %8, align 8, !dbg !5476
  %17 = call i32 @strcoll(i8* %15, i8* %16) #14, !dbg !5477
  store i32 %17, i32* %10, align 4, !dbg !5478
  %18 = icmp ne i32 %17, 0, !dbg !5478
  br i1 %18, label %23, label %19, !dbg !5479

; <label>:19:                                     ; preds = %13
  %20 = call i32* @__errno_location() #16, !dbg !5480
  %21 = load i32, i32* %20, align 4, !dbg !5480
  %22 = icmp ne i32 %21, 0, !dbg !5479
  br label %23, !dbg !5479

; <label>:23:                                     ; preds = %19, %13
  %24 = phi i1 [ true, %13 ], [ %22, %19 ]
  %25 = xor i1 %24, true, !dbg !5481
  br i1 %25, label %26, label %57, !dbg !5472

; <label>:26:                                     ; preds = %23
  call void @llvm.dbg.declare(metadata i64* %11, metadata !5482, metadata !DIExpression()), !dbg !5484
  %27 = load i8*, i8** %6, align 8, !dbg !5485
  %28 = call i64 @strlen(i8* %27) #14, !dbg !5486
  %29 = add i64 %28, 1, !dbg !5487
  store i64 %29, i64* %11, align 8, !dbg !5484
  call void @llvm.dbg.declare(metadata i64* %12, metadata !5488, metadata !DIExpression()), !dbg !5489
  %30 = load i8*, i8** %8, align 8, !dbg !5490
  %31 = call i64 @strlen(i8* %30) #14, !dbg !5491
  %32 = add i64 %31, 1, !dbg !5492
  store i64 %32, i64* %12, align 8, !dbg !5489
  %33 = load i64, i64* %11, align 8, !dbg !5493
  %34 = load i8*, i8** %6, align 8, !dbg !5494
  %35 = getelementptr inbounds i8, i8* %34, i64 %33, !dbg !5494
  store i8* %35, i8** %6, align 8, !dbg !5494
  %36 = load i64, i64* %12, align 8, !dbg !5495
  %37 = load i8*, i8** %8, align 8, !dbg !5496
  %38 = getelementptr inbounds i8, i8* %37, i64 %36, !dbg !5496
  store i8* %38, i8** %8, align 8, !dbg !5496
  %39 = load i64, i64* %11, align 8, !dbg !5497
  %40 = load i64, i64* %7, align 8, !dbg !5498
  %41 = sub i64 %40, %39, !dbg !5498
  store i64 %41, i64* %7, align 8, !dbg !5498
  %42 = load i64, i64* %12, align 8, !dbg !5499
  %43 = load i64, i64* %9, align 8, !dbg !5500
  %44 = sub i64 %43, %42, !dbg !5500
  store i64 %44, i64* %9, align 8, !dbg !5500
  %45 = load i64, i64* %7, align 8, !dbg !5501
  %46 = icmp eq i64 %45, 0, !dbg !5503
  br i1 %46, label %47, label %52, !dbg !5504

; <label>:47:                                     ; preds = %26
  %48 = load i64, i64* %9, align 8, !dbg !5505
  %49 = icmp ne i64 %48, 0, !dbg !5506
  %50 = zext i1 %49 to i32, !dbg !5506
  %51 = sub nsw i32 0, %50, !dbg !5507
  store i32 %51, i32* %5, align 4, !dbg !5508
  br label %59, !dbg !5508

; <label>:52:                                     ; preds = %26
  %53 = load i64, i64* %9, align 8, !dbg !5509
  %54 = icmp eq i64 %53, 0, !dbg !5511
  br i1 %54, label %55, label %56, !dbg !5512

; <label>:55:                                     ; preds = %52
  store i32 1, i32* %5, align 4, !dbg !5513
  br label %59, !dbg !5513

; <label>:56:                                     ; preds = %52
  br label %13, !dbg !5472, !llvm.loop !5514

; <label>:57:                                     ; preds = %23
  %58 = load i32, i32* %10, align 4, !dbg !5516
  store i32 %58, i32* %5, align 4, !dbg !5517
  br label %59, !dbg !5517

; <label>:59:                                     ; preds = %57, %55, %47
  %60 = load i32, i32* %5, align 4, !dbg !5518
  ret i32 %60, !dbg !5518
}

; Function Attrs: nounwind readonly
declare i32 @strcoll(i8*, i8*) #6

; Function Attrs: noinline nounwind uwtable
define i32 @memcoll0(i8*, i64, i8*, i64) #2 !dbg !5519 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !5520, metadata !DIExpression()), !dbg !5521
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !5522, metadata !DIExpression()), !dbg !5523
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !5524, metadata !DIExpression()), !dbg !5525
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !5526, metadata !DIExpression()), !dbg !5527
  %10 = load i64, i64* %7, align 8, !dbg !5528
  %11 = load i64, i64* %9, align 8, !dbg !5530
  %12 = icmp eq i64 %10, %11, !dbg !5531
  br i1 %12, label %13, label %21, !dbg !5532

; <label>:13:                                     ; preds = %4
  %14 = load i8*, i8** %6, align 8, !dbg !5533
  %15 = load i8*, i8** %8, align 8, !dbg !5534
  %16 = load i64, i64* %7, align 8, !dbg !5535
  %17 = call i32 @memcmp(i8* %14, i8* %15, i64 %16) #14, !dbg !5536
  %18 = icmp eq i32 %17, 0, !dbg !5537
  br i1 %18, label %19, label %21, !dbg !5538

; <label>:19:                                     ; preds = %13
  %20 = call i32* @__errno_location() #16, !dbg !5539
  store i32 0, i32* %20, align 4, !dbg !5541
  store i32 0, i32* %5, align 4, !dbg !5542
  br label %27, !dbg !5542

; <label>:21:                                     ; preds = %13, %4
  %22 = load i8*, i8** %6, align 8, !dbg !5543
  %23 = load i64, i64* %7, align 8, !dbg !5544
  %24 = load i8*, i8** %8, align 8, !dbg !5545
  %25 = load i64, i64* %9, align 8, !dbg !5546
  %26 = call i32 @strcoll_loop(i8* %22, i64 %23, i8* %24, i64 %25), !dbg !5547
  store i32 %26, i32* %5, align 4, !dbg !5548
  br label %27, !dbg !5548

; <label>:27:                                     ; preds = %21, %19
  %28 = load i32, i32* %5, align 4, !dbg !5549
  ret i32 %28, !dbg !5549
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isascii(i32) #12 !dbg !5550 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5551, metadata !DIExpression()), !dbg !5552
  %3 = load i32, i32* %2, align 4, !dbg !5553
  %4 = icmp sge i32 %3, 0, !dbg !5554
  br i1 %4, label %5, label %8, !dbg !5555

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5556
  %7 = icmp sle i32 %6, 127, !dbg !5557
  br label %8

; <label>:8:                                      ; preds = %5, %1
  %9 = phi i1 [ false, %1 ], [ %7, %5 ]
  ret i1 %9, !dbg !5558
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isalnum(i32) #12 !dbg !5559 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5560, metadata !DIExpression()), !dbg !5561
  %3 = load i32, i32* %2, align 4, !dbg !5562
  %4 = icmp sge i32 %3, 48, !dbg !5563
  br i1 %4, label %5, label %8, !dbg !5564

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5565
  %7 = icmp sle i32 %6, 57, !dbg !5566
  br i1 %7, label %18, label %8, !dbg !5567

; <label>:8:                                      ; preds = %5, %1
  %9 = load i32, i32* %2, align 4, !dbg !5568
  %10 = and i32 %9, -33, !dbg !5569
  %11 = icmp sge i32 %10, 65, !dbg !5570
  br i1 %11, label %12, label %16, !dbg !5571

; <label>:12:                                     ; preds = %8
  %13 = load i32, i32* %2, align 4, !dbg !5572
  %14 = and i32 %13, -33, !dbg !5573
  %15 = icmp sle i32 %14, 90, !dbg !5574
  br label %16

; <label>:16:                                     ; preds = %12, %8
  %17 = phi i1 [ false, %8 ], [ %15, %12 ]
  br label %18, !dbg !5567

; <label>:18:                                     ; preds = %16, %5
  %19 = phi i1 [ true, %5 ], [ %17, %16 ]
  ret i1 %19, !dbg !5575
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isalpha(i32) #12 !dbg !5576 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5577, metadata !DIExpression()), !dbg !5578
  %3 = load i32, i32* %2, align 4, !dbg !5579
  %4 = and i32 %3, -33, !dbg !5580
  %5 = icmp sge i32 %4, 65, !dbg !5581
  br i1 %5, label %6, label %10, !dbg !5582

; <label>:6:                                      ; preds = %1
  %7 = load i32, i32* %2, align 4, !dbg !5583
  %8 = and i32 %7, -33, !dbg !5584
  %9 = icmp sle i32 %8, 90, !dbg !5585
  br label %10

; <label>:10:                                     ; preds = %6, %1
  %11 = phi i1 [ false, %1 ], [ %9, %6 ]
  ret i1 %11, !dbg !5586
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isblank(i32) #12 !dbg !5587 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5588, metadata !DIExpression()), !dbg !5589
  %3 = load i32, i32* %2, align 4, !dbg !5590
  %4 = icmp eq i32 %3, 32, !dbg !5591
  br i1 %4, label %8, label %5, !dbg !5592

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5593
  %7 = icmp eq i32 %6, 9, !dbg !5594
  br label %8, !dbg !5592

; <label>:8:                                      ; preds = %5, %1
  %9 = phi i1 [ true, %1 ], [ %7, %5 ]
  ret i1 %9, !dbg !5595
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_iscntrl(i32) #12 !dbg !5596 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5597, metadata !DIExpression()), !dbg !5598
  %3 = load i32, i32* %2, align 4, !dbg !5599
  %4 = and i32 %3, -32, !dbg !5600
  %5 = icmp eq i32 %4, 0, !dbg !5601
  br i1 %5, label %9, label %6, !dbg !5602

; <label>:6:                                      ; preds = %1
  %7 = load i32, i32* %2, align 4, !dbg !5603
  %8 = icmp eq i32 %7, 127, !dbg !5604
  br label %9, !dbg !5602

; <label>:9:                                      ; preds = %6, %1
  %10 = phi i1 [ true, %1 ], [ %8, %6 ]
  ret i1 %10, !dbg !5605
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isdigit(i32) #12 !dbg !5606 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5607, metadata !DIExpression()), !dbg !5608
  %3 = load i32, i32* %2, align 4, !dbg !5609
  %4 = icmp sge i32 %3, 48, !dbg !5610
  br i1 %4, label %5, label %8, !dbg !5611

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5612
  %7 = icmp sle i32 %6, 57, !dbg !5613
  br label %8

; <label>:8:                                      ; preds = %5, %1
  %9 = phi i1 [ false, %1 ], [ %7, %5 ]
  ret i1 %9, !dbg !5614
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_islower(i32) #12 !dbg !5615 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5616, metadata !DIExpression()), !dbg !5617
  %3 = load i32, i32* %2, align 4, !dbg !5618
  %4 = icmp sge i32 %3, 97, !dbg !5619
  br i1 %4, label %5, label %8, !dbg !5620

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5621
  %7 = icmp sle i32 %6, 122, !dbg !5622
  br label %8

; <label>:8:                                      ; preds = %5, %1
  %9 = phi i1 [ false, %1 ], [ %7, %5 ]
  ret i1 %9, !dbg !5623
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isgraph(i32) #12 !dbg !5624 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5625, metadata !DIExpression()), !dbg !5626
  %3 = load i32, i32* %2, align 4, !dbg !5627
  %4 = icmp sge i32 %3, 33, !dbg !5628
  br i1 %4, label %5, label %8, !dbg !5629

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5630
  %7 = icmp sle i32 %6, 126, !dbg !5631
  br label %8

; <label>:8:                                      ; preds = %5, %1
  %9 = phi i1 [ false, %1 ], [ %7, %5 ]
  ret i1 %9, !dbg !5632
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isprint(i32) #12 !dbg !5633 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5634, metadata !DIExpression()), !dbg !5635
  %3 = load i32, i32* %2, align 4, !dbg !5636
  %4 = icmp sge i32 %3, 32, !dbg !5637
  br i1 %4, label %5, label %8, !dbg !5638

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5639
  %7 = icmp sle i32 %6, 126, !dbg !5640
  br label %8

; <label>:8:                                      ; preds = %5, %1
  %9 = phi i1 [ false, %1 ], [ %7, %5 ]
  ret i1 %9, !dbg !5641
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_ispunct(i32) #12 !dbg !5642 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5643, metadata !DIExpression()), !dbg !5644
  %3 = load i32, i32* %2, align 4, !dbg !5645
  %4 = icmp sge i32 %3, 33, !dbg !5646
  br i1 %4, label %5, label %27, !dbg !5647

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5648
  %7 = icmp sle i32 %6, 126, !dbg !5649
  br i1 %7, label %8, label %27, !dbg !5650

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* %2, align 4, !dbg !5651
  %10 = icmp sge i32 %9, 48, !dbg !5652
  br i1 %10, label %11, label %14, !dbg !5653

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %2, align 4, !dbg !5654
  %13 = icmp sle i32 %12, 57, !dbg !5655
  br i1 %13, label %24, label %14, !dbg !5656

; <label>:14:                                     ; preds = %11, %8
  %15 = load i32, i32* %2, align 4, !dbg !5657
  %16 = and i32 %15, -33, !dbg !5658
  %17 = icmp sge i32 %16, 65, !dbg !5659
  br i1 %17, label %18, label %22, !dbg !5660

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* %2, align 4, !dbg !5661
  %20 = and i32 %19, -33, !dbg !5662
  %21 = icmp sle i32 %20, 90, !dbg !5663
  br label %22

; <label>:22:                                     ; preds = %18, %14
  %23 = phi i1 [ false, %14 ], [ %21, %18 ]
  br label %24, !dbg !5656

; <label>:24:                                     ; preds = %22, %11
  %25 = phi i1 [ true, %11 ], [ %23, %22 ]
  %26 = xor i1 %25, true, !dbg !5664
  br label %27

; <label>:27:                                     ; preds = %24, %5, %1
  %28 = phi i1 [ false, %5 ], [ false, %1 ], [ %26, %24 ]
  ret i1 %28, !dbg !5665
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isspace(i32) #12 !dbg !5666 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5667, metadata !DIExpression()), !dbg !5668
  %3 = load i32, i32* %2, align 4, !dbg !5669
  %4 = icmp eq i32 %3, 32, !dbg !5670
  br i1 %4, label %20, label %5, !dbg !5671

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5672
  %7 = icmp eq i32 %6, 9, !dbg !5673
  br i1 %7, label %20, label %8, !dbg !5674

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* %2, align 4, !dbg !5675
  %10 = icmp eq i32 %9, 10, !dbg !5676
  br i1 %10, label %20, label %11, !dbg !5677

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %2, align 4, !dbg !5678
  %13 = icmp eq i32 %12, 11, !dbg !5679
  br i1 %13, label %20, label %14, !dbg !5680

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %2, align 4, !dbg !5681
  %16 = icmp eq i32 %15, 12, !dbg !5682
  br i1 %16, label %20, label %17, !dbg !5683

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* %2, align 4, !dbg !5684
  %19 = icmp eq i32 %18, 13, !dbg !5685
  br label %20, !dbg !5683

; <label>:20:                                     ; preds = %17, %14, %11, %8, %5, %1
  %21 = phi i1 [ true, %14 ], [ true, %11 ], [ true, %8 ], [ true, %5 ], [ true, %1 ], [ %19, %17 ]
  ret i1 %21, !dbg !5686
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isupper(i32) #12 !dbg !5687 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5688, metadata !DIExpression()), !dbg !5689
  %3 = load i32, i32* %2, align 4, !dbg !5690
  %4 = icmp sge i32 %3, 65, !dbg !5691
  br i1 %4, label %5, label %8, !dbg !5692

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5693
  %7 = icmp sle i32 %6, 90, !dbg !5694
  br label %8

; <label>:8:                                      ; preds = %5, %1
  %9 = phi i1 [ false, %1 ], [ %7, %5 ]
  ret i1 %9, !dbg !5695
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isxdigit(i32) #12 !dbg !5696 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5697, metadata !DIExpression()), !dbg !5698
  %3 = load i32, i32* %2, align 4, !dbg !5699
  %4 = icmp sge i32 %3, 48, !dbg !5700
  br i1 %4, label %5, label %8, !dbg !5701

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5702
  %7 = icmp sle i32 %6, 57, !dbg !5703
  br i1 %7, label %18, label %8, !dbg !5704

; <label>:8:                                      ; preds = %5, %1
  %9 = load i32, i32* %2, align 4, !dbg !5705
  %10 = and i32 %9, -33, !dbg !5706
  %11 = icmp sge i32 %10, 65, !dbg !5707
  br i1 %11, label %12, label %16, !dbg !5708

; <label>:12:                                     ; preds = %8
  %13 = load i32, i32* %2, align 4, !dbg !5709
  %14 = and i32 %13, -33, !dbg !5710
  %15 = icmp sle i32 %14, 70, !dbg !5711
  br label %16

; <label>:16:                                     ; preds = %12, %8
  %17 = phi i1 [ false, %8 ], [ %15, %12 ]
  br label %18, !dbg !5704

; <label>:18:                                     ; preds = %16, %5
  %19 = phi i1 [ true, %5 ], [ %17, %16 ]
  ret i1 %19, !dbg !5712
}

; Function Attrs: noinline nounwind readnone uwtable
define i32 @c_tolower(i32) #12 !dbg !5713 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5716, metadata !DIExpression()), !dbg !5717
  %3 = load i32, i32* %2, align 4, !dbg !5718
  %4 = icmp sge i32 %3, 65, !dbg !5719
  br i1 %4, label %5, label %12, !dbg !5720

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5721
  %7 = icmp sle i32 %6, 90, !dbg !5722
  br i1 %7, label %8, label %12, !dbg !5718

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* %2, align 4, !dbg !5723
  %10 = sub nsw i32 %9, 65, !dbg !5724
  %11 = add nsw i32 %10, 97, !dbg !5725
  br label %14, !dbg !5718

; <label>:12:                                     ; preds = %5, %1
  %13 = load i32, i32* %2, align 4, !dbg !5726
  br label %14, !dbg !5718

; <label>:14:                                     ; preds = %12, %8
  %15 = phi i32 [ %11, %8 ], [ %13, %12 ], !dbg !5718
  ret i32 %15, !dbg !5727
}

; Function Attrs: noinline nounwind readnone uwtable
define i32 @c_toupper(i32) #12 !dbg !5728 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5729, metadata !DIExpression()), !dbg !5730
  %3 = load i32, i32* %2, align 4, !dbg !5731
  %4 = icmp sge i32 %3, 97, !dbg !5732
  br i1 %4, label %5, label %12, !dbg !5733

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5734
  %7 = icmp sle i32 %6, 122, !dbg !5735
  br i1 %7, label %8, label %12, !dbg !5731

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* %2, align 4, !dbg !5736
  %10 = sub nsw i32 %9, 97, !dbg !5737
  %11 = add nsw i32 %10, 65, !dbg !5738
  br label %14, !dbg !5731

; <label>:12:                                     ; preds = %5, %1
  %13 = load i32, i32* %2, align 4, !dbg !5739
  br label %14, !dbg !5731

; <label>:14:                                     ; preds = %12, %8
  %15 = phi i32 [ %11, %8 ], [ %13, %12 ], !dbg !5731
  ret i32 %15, !dbg !5740
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
!785 = !DILocation(line: 448, column: 16, scope: !786)
!786 = distinct !DILexicalBlock(scope: !787, file: !3, line: 448, column: 11)
!787 = distinct !DILexicalBlock(scope: !741, file: !3, line: 443, column: 5)
!788 = !DILocation(line: 449, column: 11, scope: !786)
!789 = !DILocation(line: 449, column: 15, scope: !786)
!790 = !DILocation(line: 449, column: 31, scope: !786)
!791 = !DILocation(line: 449, column: 41, scope: !786)
!792 = !DILocation(line: 450, column: 11, scope: !786)
!793 = !DILocation(line: 450, column: 36, scope: !786)
!794 = !DILocation(line: 450, column: 42, scope: !786)
!795 = !DILocation(line: 450, column: 23, scope: !786)
!796 = !DILocation(line: 450, column: 21, scope: !786)
!797 = !DILocation(line: 452, column: 15, scope: !786)
!798 = !DILocation(line: 448, column: 11, scope: !787)
!799 = !DILocation(line: 454, column: 15, scope: !800)
!800 = distinct !DILexicalBlock(scope: !801, file: !3, line: 454, column: 15)
!801 = distinct !DILexicalBlock(scope: !786, file: !3, line: 453, column: 9)
!802 = !DILocation(line: 454, column: 23, scope: !800)
!803 = !DILocation(line: 454, column: 20, scope: !800)
!804 = !DILocation(line: 454, column: 15, scope: !801)
!805 = !DILocation(line: 455, column: 13, scope: !800)
!806 = !DILocation(line: 456, column: 22, scope: !807)
!807 = distinct !DILexicalBlock(scope: !801, file: !3, line: 456, column: 15)
!808 = !DILocation(line: 456, column: 15, scope: !801)
!809 = !DILocation(line: 458, column: 58, scope: !810)
!810 = distinct !DILexicalBlock(scope: !807, file: !3, line: 457, column: 13)
!811 = !DILocation(line: 458, column: 63, scope: !810)
!812 = !DILocation(line: 458, column: 51, scope: !810)
!813 = !DILocation(line: 458, column: 15, scope: !810)
!814 = !DILocation(line: 459, column: 15, scope: !810)
!815 = !DILocation(line: 461, column: 28, scope: !801)
!816 = !DILocation(line: 461, column: 39, scope: !801)
!817 = !DILocation(line: 461, column: 22, scope: !801)
!818 = !DILocation(line: 461, column: 11, scope: !801)
!819 = !DILocation(line: 461, column: 26, scope: !801)
!820 = !DILocation(line: 462, column: 9, scope: !801)
!821 = !DILocation(line: 463, column: 12, scope: !786)
!822 = !DILocalVariable(name: "size", scope: !823, file: !3, line: 467, type: !59)
!823 = distinct !DILexicalBlock(scope: !824, file: !3, line: 466, column: 11)
!824 = distinct !DILexicalBlock(scope: !786, file: !3, line: 464, column: 9)
!825 = !DILocation(line: 467, column: 31, scope: !823)
!826 = !DILocation(line: 468, column: 17, scope: !827)
!827 = distinct !DILexicalBlock(scope: !823, file: !3, line: 468, column: 17)
!828 = !DILocation(line: 468, column: 27, scope: !827)
!829 = !DILocation(line: 469, column: 17, scope: !827)
!830 = !DILocation(line: 469, column: 20, scope: !827)
!831 = !DILocation(line: 469, column: 38, scope: !827)
!832 = !DILocation(line: 470, column: 17, scope: !827)
!833 = !DILocation(line: 470, column: 30, scope: !827)
!834 = !DILocation(line: 470, column: 20, scope: !827)
!835 = !DILocation(line: 470, column: 59, scope: !827)
!836 = !DILocation(line: 471, column: 17, scope: !827)
!837 = !DILocation(line: 471, column: 25, scope: !827)
!838 = !DILocation(line: 468, column: 17, scope: !823)
!839 = !DILocation(line: 472, column: 26, scope: !827)
!840 = !DILocation(line: 472, column: 15, scope: !827)
!841 = !DILocation(line: 473, column: 29, scope: !842)
!842 = distinct !DILexicalBlock(scope: !827, file: !3, line: 473, column: 22)
!843 = !DILocation(line: 473, column: 22, scope: !827)
!844 = !DILocation(line: 475, column: 60, scope: !845)
!845 = distinct !DILexicalBlock(scope: !842, file: !3, line: 474, column: 15)
!846 = !DILocation(line: 475, column: 53, scope: !845)
!847 = !DILocation(line: 475, column: 17, scope: !845)
!848 = !DILocation(line: 476, column: 17, scope: !845)
!849 = !DILocation(line: 479, column: 32, scope: !842)
!850 = !DILocation(line: 479, column: 26, scope: !842)
!851 = !DILocation(line: 479, column: 15, scope: !842)
!852 = !DILocation(line: 479, column: 30, scope: !842)
!853 = !DILocation(line: 481, column: 11, scope: !824)
!854 = !DILocation(line: 494, column: 40, scope: !855)
!855 = distinct !DILexicalBlock(scope: !856, file: !3, line: 494, column: 17)
!856 = distinct !DILexicalBlock(scope: !824, file: !3, line: 493, column: 11)
!857 = !DILocation(line: 494, column: 17, scope: !856)
!858 = !DILocation(line: 495, column: 27, scope: !855)
!859 = !DILocation(line: 495, column: 15, scope: !855)
!860 = !DILocation(line: 497, column: 18, scope: !861)
!861 = distinct !DILexicalBlock(scope: !856, file: !3, line: 497, column: 17)
!862 = !DILocation(line: 497, column: 17, scope: !856)
!863 = !DILocation(line: 498, column: 27, scope: !861)
!864 = !DILocation(line: 498, column: 15, scope: !861)
!865 = !DILocation(line: 500, column: 36, scope: !856)
!866 = !DILocation(line: 502, column: 11, scope: !824)
!867 = !DILocation(line: 505, column: 21, scope: !824)
!868 = !DILocation(line: 506, column: 11, scope: !824)
!869 = !DILocation(line: 509, column: 25, scope: !824)
!870 = !DILocation(line: 510, column: 11, scope: !824)
!871 = !DILocation(line: 513, column: 25, scope: !824)
!872 = !DILocation(line: 514, column: 33, scope: !824)
!873 = !DILocation(line: 515, column: 15, scope: !874)
!874 = distinct !DILexicalBlock(scope: !824, file: !3, line: 515, column: 15)
!875 = !DILocation(line: 515, column: 22, scope: !874)
!876 = !DILocation(line: 515, column: 15, scope: !824)
!877 = !DILocation(line: 516, column: 28, scope: !874)
!878 = !DILocation(line: 516, column: 13, scope: !874)
!879 = !DILocation(line: 518, column: 30, scope: !874)
!880 = !DILocation(line: 518, column: 28, scope: !874)
!881 = !DILocation(line: 521, column: 11, scope: !824)
!882 = !DILocation(line: 524, column: 34, scope: !824)
!883 = !DILocation(line: 525, column: 35, scope: !824)
!884 = !DILocation(line: 525, column: 25, scope: !824)
!885 = !DILocation(line: 525, column: 23, scope: !824)
!886 = !DILocation(line: 527, column: 11, scope: !824)
!887 = !DILocation(line: 530, column: 23, scope: !824)
!888 = !DILocation(line: 531, column: 11, scope: !824)
!889 = !DILocation(line: 534, column: 34, scope: !824)
!890 = !DILocation(line: 534, column: 24, scope: !824)
!891 = !DILocation(line: 534, column: 22, scope: !824)
!892 = !DILocation(line: 536, column: 11, scope: !824)
!893 = !DILocation(line: 539, column: 33, scope: !824)
!894 = !DILocation(line: 540, column: 11, scope: !824)
!895 = !DILocation(line: 543, column: 35, scope: !824)
!896 = !DILocation(line: 543, column: 25, scope: !824)
!897 = !DILocation(line: 543, column: 23, scope: !824)
!898 = !DILocation(line: 545, column: 11, scope: !824)
!899 = !DILocation(line: 548, column: 21, scope: !824)
!900 = !DILocation(line: 549, column: 11, scope: !824)
!901 = !DILocation(line: 551, column: 9, scope: !824)
!902 = !DILocation(line: 553, column: 9, scope: !824)
!903 = !DILocation(line: 556, column: 11, scope: !824)
!904 = distinct !{!904, !784, !905}
!905 = !DILocation(line: 558, column: 5, scope: !741)
!906 = !DILocation(line: 559, column: 1, scope: !741)
!907 = !DILocation(line: 560, column: 17, scope: !908)
!908 = distinct !DILexicalBlock(scope: !741, file: !3, line: 560, column: 7)
!909 = !DILocation(line: 560, column: 38, scope: !908)
!910 = !DILocation(line: 560, column: 41, scope: !908)
!911 = !DILocation(line: 560, column: 7, scope: !741)
!912 = !DILocation(line: 562, column: 7, scope: !913)
!913 = distinct !DILexicalBlock(scope: !908, file: !3, line: 561, column: 5)
!914 = !DILocation(line: 564, column: 7, scope: !913)
!915 = !DILocation(line: 567, column: 15, scope: !741)
!916 = !DILocation(line: 567, column: 24, scope: !741)
!917 = !DILocation(line: 567, column: 33, scope: !741)
!918 = !DILocation(line: 567, column: 3, scope: !741)
!919 = !DILocation(line: 569, column: 3, scope: !741)
!920 = !DILocation(line: 570, column: 1, scope: !741)
!921 = distinct !DISubprogram(name: "size_opt", scope: !3, file: !3, line: 187, type: !922, isLocal: true, isDefinition: true, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !113)
!922 = !DISubroutineType(types: !923)
!923 = !{!57, !52, !52}
!924 = !DILocalVariable(name: "opt", arg: 1, scope: !921, file: !3, line: 187, type: !52)
!925 = !DILocation(line: 187, column: 23, scope: !921)
!926 = !DILocalVariable(name: "msgid", arg: 2, scope: !921, file: !3, line: 187, type: !52)
!927 = !DILocation(line: 187, column: 40, scope: !921)
!928 = !DILocalVariable(name: "size", scope: !921, file: !3, line: 189, type: !59)
!929 = !DILocation(line: 189, column: 21, scope: !921)
!930 = !DILocation(line: 192, column: 21, scope: !921)
!931 = !DILocation(line: 192, column: 11, scope: !921)
!932 = !DILocation(line: 192, column: 3, scope: !921)
!933 = !DILocation(line: 196, column: 7, scope: !934)
!934 = distinct !DILexicalBlock(scope: !921, file: !3, line: 193, column: 5)
!935 = !DILocation(line: 199, column: 41, scope: !934)
!936 = !DILocation(line: 199, column: 46, scope: !934)
!937 = !DILocation(line: 199, column: 7, scope: !934)
!938 = !DILocation(line: 200, column: 5, scope: !934)
!939 = !DILocation(line: 202, column: 10, scope: !921)
!940 = !DILocation(line: 202, column: 3, scope: !921)
!941 = distinct !DISubprogram(name: "check_file", scope: !3, file: !3, line: 278, type: !942, isLocal: true, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !113)
!942 = !DISubroutineType(types: !943)
!943 = !{null, !52, !52, !54}
!944 = !DILocalVariable(name: "infile", arg: 1, scope: !941, file: !3, line: 278, type: !52)
!945 = !DILocation(line: 278, column: 25, scope: !941)
!946 = !DILocalVariable(name: "outfile", arg: 2, scope: !941, file: !3, line: 278, type: !52)
!947 = !DILocation(line: 278, column: 45, scope: !941)
!948 = !DILocalVariable(name: "delimiter", arg: 3, scope: !941, file: !3, line: 278, type: !54)
!949 = !DILocation(line: 278, column: 59, scope: !941)
!950 = !DILocalVariable(name: "lb1", scope: !941, file: !3, line: 280, type: !951)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !952, line: 26, size: 192, elements: !953)
!952 = !DIFile(filename: "../../lib/linebuffer.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/src")
!953 = !{!954, !955, !956}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !951, file: !952, line: 28, baseType: !57, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !951, file: !952, line: 29, baseType: !57, size: 64, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !951, file: !952, line: 30, baseType: !60, size: 64, offset: 128)
!957 = !DILocation(line: 280, column: 21, scope: !941)
!958 = !DILocalVariable(name: "lb2", scope: !941, file: !3, line: 280, type: !951)
!959 = !DILocation(line: 280, column: 26, scope: !941)
!960 = !DILocalVariable(name: "thisline", scope: !941, file: !3, line: 281, type: !961)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!962 = !DILocation(line: 281, column: 22, scope: !941)
!963 = !DILocalVariable(name: "prevline", scope: !941, file: !3, line: 281, type: !961)
!964 = !DILocation(line: 281, column: 33, scope: !941)
!965 = !DILocation(line: 283, column: 10, scope: !966)
!966 = distinct !DILexicalBlock(scope: !941, file: !3, line: 283, column: 7)
!967 = !DILocation(line: 283, column: 30, scope: !966)
!968 = !DILocation(line: 283, column: 42, scope: !966)
!969 = !DILocation(line: 283, column: 55, scope: !966)
!970 = !DILocation(line: 283, column: 33, scope: !966)
!971 = !DILocation(line: 283, column: 7, scope: !941)
!972 = !DILocation(line: 284, column: 26, scope: !966)
!973 = !DILocation(line: 284, column: 39, scope: !966)
!974 = !DILocation(line: 284, column: 5, scope: !966)
!975 = !DILocation(line: 285, column: 10, scope: !976)
!976 = distinct !DILexicalBlock(scope: !941, file: !3, line: 285, column: 7)
!977 = !DILocation(line: 285, column: 31, scope: !976)
!978 = !DILocation(line: 285, column: 43, scope: !976)
!979 = !DILocation(line: 285, column: 57, scope: !976)
!980 = !DILocation(line: 285, column: 34, scope: !976)
!981 = !DILocation(line: 285, column: 7, scope: !941)
!982 = !DILocation(line: 286, column: 26, scope: !976)
!983 = !DILocation(line: 286, column: 39, scope: !976)
!984 = !DILocation(line: 286, column: 5, scope: !976)
!985 = !DILocation(line: 288, column: 12, scope: !941)
!986 = !DILocation(line: 288, column: 3, scope: !941)
!987 = !DILocation(line: 290, column: 12, scope: !941)
!988 = !DILocation(line: 291, column: 12, scope: !941)
!989 = !DILocation(line: 293, column: 15, scope: !941)
!990 = !DILocation(line: 293, column: 3, scope: !941)
!991 = !DILocation(line: 294, column: 15, scope: !941)
!992 = !DILocation(line: 294, column: 3, scope: !941)
!993 = !DILocation(line: 303, column: 7, scope: !994)
!994 = distinct !DILexicalBlock(scope: !941, file: !3, line: 303, column: 7)
!995 = !DILocation(line: 303, column: 21, scope: !994)
!996 = !DILocation(line: 303, column: 24, scope: !994)
!997 = !DILocation(line: 303, column: 46, scope: !994)
!998 = !DILocation(line: 303, column: 59, scope: !994)
!999 = !DILocation(line: 303, column: 7, scope: !941)
!1000 = !DILocalVariable(name: "prevfield", scope: !1001, file: !3, line: 305, type: !60)
!1001 = distinct !DILexicalBlock(scope: !994, file: !3, line: 304, column: 5)
!1002 = !DILocation(line: 305, column: 13, scope: !1001)
!1003 = !DILocalVariable(name: "prevlen", scope: !1001, file: !3, line: 306, type: !57)
!1004 = !DILocation(line: 306, column: 14, scope: !1001)
!1005 = !DILocation(line: 308, column: 7, scope: !1001)
!1006 = !DILocation(line: 308, column: 15, scope: !1001)
!1007 = !DILocation(line: 308, column: 14, scope: !1001)
!1008 = !DILocalVariable(name: "thisfield", scope: !1009, file: !3, line: 310, type: !60)
!1009 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 309, column: 9)
!1010 = !DILocation(line: 310, column: 17, scope: !1009)
!1011 = !DILocalVariable(name: "thislen", scope: !1009, file: !3, line: 311, type: !57)
!1012 = !DILocation(line: 311, column: 18, scope: !1009)
!1013 = !DILocation(line: 312, column: 37, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 312, column: 15)
!1015 = !DILocation(line: 312, column: 47, scope: !1014)
!1016 = !DILocation(line: 312, column: 54, scope: !1014)
!1017 = !DILocation(line: 312, column: 15, scope: !1014)
!1018 = !DILocation(line: 312, column: 65, scope: !1014)
!1019 = !DILocation(line: 312, column: 15, scope: !1009)
!1020 = !DILocation(line: 313, column: 13, scope: !1014)
!1021 = !DILocation(line: 314, column: 35, scope: !1009)
!1022 = !DILocation(line: 314, column: 23, scope: !1009)
!1023 = !DILocation(line: 314, column: 21, scope: !1009)
!1024 = !DILocation(line: 315, column: 21, scope: !1009)
!1025 = !DILocation(line: 315, column: 31, scope: !1009)
!1026 = !DILocation(line: 315, column: 38, scope: !1009)
!1027 = !DILocation(line: 315, column: 45, scope: !1009)
!1028 = !DILocation(line: 315, column: 57, scope: !1009)
!1029 = !DILocation(line: 315, column: 67, scope: !1009)
!1030 = !DILocation(line: 315, column: 55, scope: !1009)
!1031 = !DILocation(line: 315, column: 42, scope: !1009)
!1032 = !DILocation(line: 315, column: 19, scope: !1009)
!1033 = !DILocation(line: 316, column: 15, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 316, column: 15)
!1035 = !DILocation(line: 316, column: 25, scope: !1034)
!1036 = !DILocation(line: 316, column: 32, scope: !1034)
!1037 = !DILocation(line: 317, column: 15, scope: !1034)
!1038 = !DILocation(line: 317, column: 29, scope: !1034)
!1039 = !DILocation(line: 317, column: 40, scope: !1034)
!1040 = !DILocation(line: 317, column: 51, scope: !1034)
!1041 = !DILocation(line: 317, column: 60, scope: !1034)
!1042 = !DILocation(line: 317, column: 18, scope: !1034)
!1043 = !DILocation(line: 316, column: 15, scope: !1009)
!1044 = !DILocation(line: 319, column: 15, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 318, column: 13)
!1046 = !DILocation(line: 322, column: 15, scope: !1045)
!1047 = distinct !{!1047, !1046, !1046}
!1048 = !DILocalVariable(name: "_tmp", scope: !1049, file: !3, line: 322, type: !961)
!1049 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 322, column: 15)
!1050 = !DILocation(line: 322, column: 15, scope: !1049)
!1051 = !DILocation(line: 323, column: 27, scope: !1045)
!1052 = !DILocation(line: 323, column: 25, scope: !1045)
!1053 = !DILocation(line: 324, column: 25, scope: !1045)
!1054 = !DILocation(line: 324, column: 23, scope: !1045)
!1055 = !DILocation(line: 325, column: 13, scope: !1045)
!1056 = distinct !{!1056, !1005, !1057}
!1057 = !DILocation(line: 326, column: 9, scope: !1001)
!1058 = !DILocation(line: 327, column: 5, scope: !1001)
!1059 = !DILocalVariable(name: "prevfield", scope: !1060, file: !3, line: 330, type: !60)
!1060 = distinct !DILexicalBlock(scope: !994, file: !3, line: 329, column: 5)
!1061 = !DILocation(line: 330, column: 13, scope: !1060)
!1062 = !DILocalVariable(name: "prevlen", scope: !1060, file: !3, line: 331, type: !57)
!1063 = !DILocation(line: 331, column: 14, scope: !1060)
!1064 = !DILocalVariable(name: "match_count", scope: !1060, file: !3, line: 332, type: !1065)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1066, line: 112, baseType: !1067)
!1066 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/src")
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1068, line: 62, baseType: !59)
!1068 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/src")
!1069 = !DILocation(line: 332, column: 17, scope: !1060)
!1070 = !DILocalVariable(name: "first_delimiter", scope: !1060, file: !3, line: 333, type: !74)
!1071 = !DILocation(line: 333, column: 12, scope: !1060)
!1072 = !DILocation(line: 335, column: 33, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 335, column: 11)
!1074 = !DILocation(line: 335, column: 43, scope: !1073)
!1075 = !DILocation(line: 335, column: 50, scope: !1073)
!1076 = !DILocation(line: 335, column: 11, scope: !1073)
!1077 = !DILocation(line: 335, column: 61, scope: !1073)
!1078 = !DILocation(line: 335, column: 11, scope: !1060)
!1079 = !DILocation(line: 336, column: 9, scope: !1073)
!1080 = !DILocation(line: 337, column: 31, scope: !1060)
!1081 = !DILocation(line: 337, column: 19, scope: !1060)
!1082 = !DILocation(line: 337, column: 17, scope: !1060)
!1083 = !DILocation(line: 338, column: 17, scope: !1060)
!1084 = !DILocation(line: 338, column: 27, scope: !1060)
!1085 = !DILocation(line: 338, column: 34, scope: !1060)
!1086 = !DILocation(line: 338, column: 41, scope: !1060)
!1087 = !DILocation(line: 338, column: 53, scope: !1060)
!1088 = !DILocation(line: 338, column: 63, scope: !1060)
!1089 = !DILocation(line: 338, column: 51, scope: !1060)
!1090 = !DILocation(line: 338, column: 38, scope: !1060)
!1091 = !DILocation(line: 338, column: 15, scope: !1060)
!1092 = !DILocation(line: 340, column: 7, scope: !1060)
!1093 = !DILocation(line: 340, column: 15, scope: !1060)
!1094 = !DILocation(line: 340, column: 14, scope: !1060)
!1095 = !DILocalVariable(name: "match", scope: !1096, file: !3, line: 342, type: !74)
!1096 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 341, column: 9)
!1097 = !DILocation(line: 342, column: 16, scope: !1096)
!1098 = !DILocalVariable(name: "thisfield", scope: !1096, file: !3, line: 343, type: !60)
!1099 = !DILocation(line: 343, column: 17, scope: !1096)
!1100 = !DILocalVariable(name: "thislen", scope: !1096, file: !3, line: 344, type: !57)
!1101 = !DILocation(line: 344, column: 18, scope: !1096)
!1102 = !DILocation(line: 345, column: 37, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 345, column: 15)
!1104 = !DILocation(line: 345, column: 47, scope: !1103)
!1105 = !DILocation(line: 345, column: 54, scope: !1103)
!1106 = !DILocation(line: 345, column: 15, scope: !1103)
!1107 = !DILocation(line: 345, column: 65, scope: !1103)
!1108 = !DILocation(line: 345, column: 15, scope: !1096)
!1109 = !DILocation(line: 347, column: 19, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 347, column: 19)
!1111 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 346, column: 13)
!1112 = !DILocation(line: 347, column: 19, scope: !1111)
!1113 = !DILocation(line: 348, column: 17, scope: !1110)
!1114 = !DILocation(line: 349, column: 15, scope: !1111)
!1115 = !DILocation(line: 351, column: 35, scope: !1096)
!1116 = !DILocation(line: 351, column: 23, scope: !1096)
!1117 = !DILocation(line: 351, column: 21, scope: !1096)
!1118 = !DILocation(line: 352, column: 21, scope: !1096)
!1119 = !DILocation(line: 352, column: 31, scope: !1096)
!1120 = !DILocation(line: 352, column: 38, scope: !1096)
!1121 = !DILocation(line: 352, column: 45, scope: !1096)
!1122 = !DILocation(line: 352, column: 57, scope: !1096)
!1123 = !DILocation(line: 352, column: 67, scope: !1096)
!1124 = !DILocation(line: 352, column: 55, scope: !1096)
!1125 = !DILocation(line: 352, column: 42, scope: !1096)
!1126 = !DILocation(line: 352, column: 19, scope: !1096)
!1127 = !DILocation(line: 353, column: 31, scope: !1096)
!1128 = !DILocation(line: 353, column: 42, scope: !1096)
!1129 = !DILocation(line: 353, column: 53, scope: !1096)
!1130 = !DILocation(line: 353, column: 62, scope: !1096)
!1131 = !DILocation(line: 353, column: 20, scope: !1096)
!1132 = !DILocation(line: 353, column: 19, scope: !1096)
!1133 = !DILocation(line: 353, column: 17, scope: !1096)
!1134 = !DILocation(line: 354, column: 26, scope: !1096)
!1135 = !DILocation(line: 354, column: 23, scope: !1096)
!1136 = !DILocation(line: 356, column: 15, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 356, column: 15)
!1138 = !DILocation(line: 356, column: 27, scope: !1137)
!1139 = !DILocation(line: 356, column: 15, scope: !1096)
!1140 = !DILocation(line: 360, column: 26, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 357, column: 13)
!1142 = !DILocation(line: 361, column: 13, scope: !1141)
!1143 = !DILocation(line: 363, column: 30, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 363, column: 15)
!1145 = !DILocation(line: 363, column: 15, scope: !1096)
!1146 = !DILocation(line: 365, column: 20, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 365, column: 19)
!1148 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 364, column: 13)
!1149 = !DILocation(line: 365, column: 19, scope: !1148)
!1150 = !DILocation(line: 367, column: 23, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 367, column: 23)
!1152 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 366, column: 17)
!1153 = !DILocation(line: 367, column: 23, scope: !1152)
!1154 = !DILocation(line: 368, column: 37, scope: !1151)
!1155 = !DILocation(line: 368, column: 21, scope: !1151)
!1156 = !DILocation(line: 369, column: 17, scope: !1152)
!1157 = !DILocation(line: 370, column: 24, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 370, column: 24)
!1159 = !DILocation(line: 370, column: 36, scope: !1158)
!1160 = !DILocation(line: 370, column: 24, scope: !1147)
!1161 = !DILocation(line: 372, column: 39, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 372, column: 23)
!1163 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 371, column: 17)
!1164 = !DILocation(line: 373, column: 23, scope: !1162)
!1165 = !DILocation(line: 373, column: 42, scope: !1162)
!1166 = !DILocation(line: 374, column: 27, scope: !1162)
!1167 = !DILocation(line: 374, column: 31, scope: !1162)
!1168 = !DILocation(line: 372, column: 23, scope: !1163)
!1169 = !DILocation(line: 375, column: 21, scope: !1162)
!1170 = !DILocation(line: 376, column: 17, scope: !1163)
!1171 = !DILocation(line: 377, column: 13, scope: !1148)
!1172 = !DILocation(line: 379, column: 16, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 379, column: 15)
!1174 = !DILocation(line: 379, column: 22, scope: !1173)
!1175 = !DILocation(line: 379, column: 25, scope: !1173)
!1176 = !DILocation(line: 379, column: 15, scope: !1096)
!1177 = !DILocation(line: 381, column: 26, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 380, column: 13)
!1179 = !DILocation(line: 381, column: 36, scope: !1178)
!1180 = !DILocation(line: 381, column: 43, scope: !1178)
!1181 = !DILocation(line: 381, column: 15, scope: !1178)
!1182 = !DILocation(line: 382, column: 15, scope: !1178)
!1183 = distinct !{!1183, !1182, !1182}
!1184 = !DILocalVariable(name: "_tmp", scope: !1185, file: !3, line: 382, type: !961)
!1185 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 382, column: 15)
!1186 = !DILocation(line: 382, column: 15, scope: !1185)
!1187 = !DILocation(line: 383, column: 27, scope: !1178)
!1188 = !DILocation(line: 383, column: 25, scope: !1178)
!1189 = !DILocation(line: 384, column: 25, scope: !1178)
!1190 = !DILocation(line: 384, column: 23, scope: !1178)
!1191 = !DILocation(line: 385, column: 20, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 385, column: 19)
!1193 = !DILocation(line: 385, column: 19, scope: !1178)
!1194 = !DILocation(line: 386, column: 29, scope: !1192)
!1195 = !DILocation(line: 386, column: 17, scope: !1192)
!1196 = !DILocation(line: 387, column: 13, scope: !1178)
!1197 = distinct !{!1197, !1092, !1198}
!1198 = !DILocation(line: 388, column: 9, scope: !1060)
!1199 = !DILocation(line: 390, column: 18, scope: !1060)
!1200 = !DILocation(line: 390, column: 35, scope: !1060)
!1201 = !DILocation(line: 390, column: 7, scope: !1060)
!1202 = !DILocation(line: 303, column: 62, scope: !994)
!1203 = !DILocation(line: 394, column: 7, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !941, file: !3, line: 394, column: 7)
!1205 = !DILocation(line: 394, column: 22, scope: !1204)
!1206 = !DILocation(line: 394, column: 33, scope: !1204)
!1207 = !DILocation(line: 394, column: 25, scope: !1204)
!1208 = !DILocation(line: 394, column: 40, scope: !1204)
!1209 = !DILocation(line: 394, column: 7, scope: !941)
!1210 = !DILocation(line: 395, column: 52, scope: !1204)
!1211 = !DILocation(line: 395, column: 5, scope: !1204)
!1212 = !DILocation(line: 399, column: 13, scope: !941)
!1213 = !DILocation(line: 399, column: 3, scope: !941)
!1214 = !DILocation(line: 400, column: 13, scope: !941)
!1215 = !DILocation(line: 400, column: 3, scope: !941)
!1216 = !DILocation(line: 401, column: 1, scope: !941)
!1217 = distinct !DISubprogram(name: "find_field", scope: !3, file: !3, line: 209, type: !1218, isLocal: true, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !113)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!60, !1220}
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !951)
!1222 = !DILocalVariable(name: "line", arg: 1, scope: !1217, file: !3, line: 209, type: !1220)
!1223 = !DILocation(line: 209, column: 38, scope: !1217)
!1224 = !DILocalVariable(name: "count", scope: !1217, file: !3, line: 211, type: !57)
!1225 = !DILocation(line: 211, column: 10, scope: !1217)
!1226 = !DILocalVariable(name: "lp", scope: !1217, file: !3, line: 212, type: !52)
!1227 = !DILocation(line: 212, column: 15, scope: !1217)
!1228 = !DILocation(line: 212, column: 20, scope: !1217)
!1229 = !DILocation(line: 212, column: 26, scope: !1217)
!1230 = !DILocalVariable(name: "size", scope: !1217, file: !3, line: 213, type: !57)
!1231 = !DILocation(line: 213, column: 10, scope: !1217)
!1232 = !DILocation(line: 213, column: 17, scope: !1217)
!1233 = !DILocation(line: 213, column: 23, scope: !1217)
!1234 = !DILocation(line: 213, column: 30, scope: !1217)
!1235 = !DILocalVariable(name: "i", scope: !1217, file: !3, line: 214, type: !57)
!1236 = !DILocation(line: 214, column: 10, scope: !1217)
!1237 = !DILocation(line: 216, column: 14, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 216, column: 3)
!1239 = !DILocation(line: 216, column: 8, scope: !1238)
!1240 = !DILocation(line: 216, column: 19, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 216, column: 3)
!1242 = !DILocation(line: 216, column: 25, scope: !1241)
!1243 = !DILocation(line: 216, column: 39, scope: !1241)
!1244 = !DILocation(line: 216, column: 42, scope: !1241)
!1245 = !DILocation(line: 216, column: 46, scope: !1241)
!1246 = !DILocation(line: 216, column: 44, scope: !1241)
!1247 = !DILocation(line: 216, column: 3, scope: !1238)
!1248 = !DILocation(line: 218, column: 7, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 217, column: 5)
!1250 = !DILocation(line: 218, column: 14, scope: !1249)
!1251 = !DILocation(line: 218, column: 18, scope: !1249)
!1252 = !DILocation(line: 218, column: 16, scope: !1249)
!1253 = !DILocation(line: 218, column: 23, scope: !1249)
!1254 = !DILocation(line: 218, column: 26, scope: !1249)
!1255 = !DILocation(line: 219, column: 10, scope: !1249)
!1256 = distinct !{!1256, !1248, !1255}
!1257 = !DILocation(line: 220, column: 7, scope: !1249)
!1258 = !DILocation(line: 220, column: 14, scope: !1249)
!1259 = !DILocation(line: 220, column: 18, scope: !1249)
!1260 = !DILocation(line: 220, column: 16, scope: !1249)
!1261 = !DILocation(line: 220, column: 23, scope: !1249)
!1262 = !DILocation(line: 220, column: 27, scope: !1249)
!1263 = !DILocation(line: 220, column: 26, scope: !1249)
!1264 = !DILocation(line: 221, column: 10, scope: !1249)
!1265 = distinct !{!1265, !1257, !1264}
!1266 = !DILocation(line: 222, column: 5, scope: !1249)
!1267 = !DILocation(line: 216, column: 57, scope: !1241)
!1268 = !DILocation(line: 216, column: 3, scope: !1241)
!1269 = distinct !{!1269, !1247, !1270}
!1270 = !DILocation(line: 222, column: 5, scope: !1238)
!1271 = !DILocation(line: 224, column: 8, scope: !1217)
!1272 = !DILocation(line: 224, column: 5, scope: !1217)
!1273 = !DILocation(line: 226, column: 10, scope: !1217)
!1274 = !DILocation(line: 226, column: 16, scope: !1217)
!1275 = !DILocation(line: 226, column: 25, scope: !1217)
!1276 = !DILocation(line: 226, column: 23, scope: !1217)
!1277 = !DILocation(line: 226, column: 3, scope: !1217)
!1278 = distinct !DISubprogram(name: "different", scope: !3, file: !3, line: 235, type: !1279, isLocal: true, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !113)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!74, !60, !60, !57, !57}
!1281 = !DILocalVariable(name: "old", arg: 1, scope: !1278, file: !3, line: 235, type: !60)
!1282 = !DILocation(line: 235, column: 18, scope: !1278)
!1283 = !DILocalVariable(name: "new", arg: 2, scope: !1278, file: !3, line: 235, type: !60)
!1284 = !DILocation(line: 235, column: 29, scope: !1278)
!1285 = !DILocalVariable(name: "oldlen", arg: 3, scope: !1278, file: !3, line: 235, type: !57)
!1286 = !DILocation(line: 235, column: 41, scope: !1278)
!1287 = !DILocalVariable(name: "newlen", arg: 4, scope: !1278, file: !3, line: 235, type: !57)
!1288 = !DILocation(line: 235, column: 56, scope: !1278)
!1289 = !DILocation(line: 237, column: 21, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 237, column: 7)
!1291 = !DILocation(line: 237, column: 19, scope: !1290)
!1292 = !DILocation(line: 237, column: 7, scope: !1278)
!1293 = !DILocation(line: 238, column: 12, scope: !1290)
!1294 = !DILocation(line: 238, column: 5, scope: !1290)
!1295 = !DILocation(line: 239, column: 21, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 239, column: 7)
!1297 = !DILocation(line: 239, column: 19, scope: !1296)
!1298 = !DILocation(line: 239, column: 7, scope: !1278)
!1299 = !DILocation(line: 240, column: 12, scope: !1296)
!1300 = !DILocation(line: 240, column: 5, scope: !1296)
!1301 = !DILocation(line: 242, column: 7, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 242, column: 7)
!1303 = !DILocation(line: 242, column: 7, scope: !1278)
!1304 = !DILocation(line: 245, column: 14, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 243, column: 5)
!1306 = !DILocation(line: 245, column: 24, scope: !1305)
!1307 = !DILocation(line: 245, column: 21, scope: !1305)
!1308 = !DILocation(line: 245, column: 31, scope: !1305)
!1309 = !DILocation(line: 245, column: 46, scope: !1305)
!1310 = !DILocation(line: 245, column: 51, scope: !1305)
!1311 = !DILocation(line: 245, column: 56, scope: !1305)
!1312 = !DILocation(line: 245, column: 34, scope: !1305)
!1313 = !DILocation(line: 245, column: 7, scope: !1305)
!1314 = !DILocation(line: 247, column: 12, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 247, column: 12)
!1316 = !DILocation(line: 247, column: 12, scope: !1302)
!1317 = !DILocation(line: 248, column: 22, scope: !1315)
!1318 = !DILocation(line: 248, column: 27, scope: !1315)
!1319 = !DILocation(line: 248, column: 35, scope: !1315)
!1320 = !DILocation(line: 248, column: 40, scope: !1315)
!1321 = !DILocation(line: 248, column: 12, scope: !1315)
!1322 = !DILocation(line: 248, column: 48, scope: !1315)
!1323 = !DILocation(line: 248, column: 5, scope: !1315)
!1324 = !DILocation(line: 250, column: 12, scope: !1315)
!1325 = !DILocation(line: 250, column: 22, scope: !1315)
!1326 = !DILocation(line: 250, column: 19, scope: !1315)
!1327 = !DILocation(line: 250, column: 29, scope: !1315)
!1328 = !DILocation(line: 250, column: 40, scope: !1315)
!1329 = !DILocation(line: 250, column: 45, scope: !1315)
!1330 = !DILocation(line: 250, column: 50, scope: !1315)
!1331 = !DILocation(line: 250, column: 32, scope: !1315)
!1332 = !DILocation(line: 250, column: 5, scope: !1315)
!1333 = !DILocation(line: 251, column: 1, scope: !1278)
!1334 = distinct !DISubprogram(name: "writeline", scope: !3, file: !3, line: 260, type: !1335, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !113)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{null, !1220, !74, !1065}
!1337 = !DILocalVariable(name: "line", arg: 1, scope: !1334, file: !3, line: 260, type: !1220)
!1338 = !DILocation(line: 260, column: 37, scope: !1334)
!1339 = !DILocalVariable(name: "match", arg: 2, scope: !1334, file: !3, line: 261, type: !74)
!1340 = !DILocation(line: 261, column: 17, scope: !1334)
!1341 = !DILocalVariable(name: "linecount", arg: 3, scope: !1334, file: !3, line: 261, type: !1065)
!1342 = !DILocation(line: 261, column: 34, scope: !1334)
!1343 = !DILocation(line: 263, column: 10, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 263, column: 7)
!1345 = !DILocation(line: 263, column: 20, scope: !1344)
!1346 = !DILocation(line: 263, column: 7, scope: !1334)
!1347 = !DILocation(line: 263, column: 27, scope: !1344)
!1348 = !DILocation(line: 264, column: 13, scope: !1344)
!1349 = !DILocation(line: 264, column: 21, scope: !1344)
!1350 = !DILocation(line: 264, column: 12, scope: !1344)
!1351 = !DILocation(line: 265, column: 12, scope: !1344)
!1352 = !DILocation(line: 266, column: 5, scope: !1344)
!1353 = !DILocation(line: 268, column: 17, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 268, column: 7)
!1355 = !DILocation(line: 268, column: 7, scope: !1334)
!1356 = !DILocation(line: 269, column: 31, scope: !1354)
!1357 = !DILocation(line: 269, column: 41, scope: !1354)
!1358 = !DILocation(line: 269, column: 5, scope: !1354)
!1359 = !DILocation(line: 271, column: 3, scope: !1334)
!1360 = !DILocation(line: 272, column: 1, scope: !1334)
!1361 = distinct !DISubprogram(name: "to_uchar", scope: !711, file: !711, line: 158, type: !1362, isLocal: true, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !113)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!673, !54}
!1364 = !DILocalVariable(name: "ch", arg: 1, scope: !1361, file: !711, line: 158, type: !54)
!1365 = !DILocation(line: 158, column: 44, scope: !1361)
!1366 = !DILocation(line: 158, column: 57, scope: !1361)
!1367 = !DILocation(line: 158, column: 50, scope: !1361)
!1368 = distinct !DISubprogram(name: "__argmatch_die", scope: !118, file: !118, line: 61, type: !137, isLocal: true, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: false, unit: !117, variables: !113)
!1369 = !DILocation(line: 63, column: 3, scope: !1368)
!1370 = !DILocation(line: 64, column: 1, scope: !1368)
!1371 = distinct !DISubprogram(name: "argmatch", scope: !118, file: !118, line: 83, type: !1372, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false, unit: !117, variables: !113)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!1374, !52, !1376, !52, !172}
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !173, line: 51, baseType: !1375)
!1375 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!1377 = !DILocalVariable(name: "arg", arg: 1, scope: !1371, file: !118, line: 83, type: !52)
!1378 = !DILocation(line: 83, column: 23, scope: !1371)
!1379 = !DILocalVariable(name: "arglist", arg: 2, scope: !1371, file: !118, line: 83, type: !1376)
!1380 = !DILocation(line: 83, column: 47, scope: !1371)
!1381 = !DILocalVariable(name: "vallist", arg: 3, scope: !1371, file: !118, line: 84, type: !52)
!1382 = !DILocation(line: 84, column: 23, scope: !1371)
!1383 = !DILocalVariable(name: "valsize", arg: 4, scope: !1371, file: !118, line: 84, type: !172)
!1384 = !DILocation(line: 84, column: 39, scope: !1371)
!1385 = !DILocalVariable(name: "i", scope: !1371, file: !118, line: 86, type: !172)
!1386 = !DILocation(line: 86, column: 10, scope: !1371)
!1387 = !DILocalVariable(name: "arglen", scope: !1371, file: !118, line: 87, type: !172)
!1388 = !DILocation(line: 87, column: 10, scope: !1371)
!1389 = !DILocalVariable(name: "matchind", scope: !1371, file: !118, line: 88, type: !1374)
!1390 = !DILocation(line: 88, column: 13, scope: !1371)
!1391 = !DILocalVariable(name: "ambiguous", scope: !1371, file: !118, line: 89, type: !74)
!1392 = !DILocation(line: 89, column: 8, scope: !1371)
!1393 = !DILocation(line: 91, column: 20, scope: !1371)
!1394 = !DILocation(line: 91, column: 12, scope: !1371)
!1395 = !DILocation(line: 91, column: 10, scope: !1371)
!1396 = !DILocation(line: 94, column: 10, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1371, file: !118, line: 94, column: 3)
!1398 = !DILocation(line: 94, column: 8, scope: !1397)
!1399 = !DILocation(line: 94, column: 15, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1397, file: !118, line: 94, column: 3)
!1401 = !DILocation(line: 94, column: 23, scope: !1400)
!1402 = !DILocation(line: 94, column: 3, scope: !1397)
!1403 = !DILocation(line: 96, column: 21, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !118, line: 96, column: 11)
!1405 = distinct !DILexicalBlock(scope: !1400, file: !118, line: 95, column: 5)
!1406 = !DILocation(line: 96, column: 29, scope: !1404)
!1407 = !DILocation(line: 96, column: 33, scope: !1404)
!1408 = !DILocation(line: 96, column: 38, scope: !1404)
!1409 = !DILocation(line: 96, column: 12, scope: !1404)
!1410 = !DILocation(line: 96, column: 11, scope: !1405)
!1411 = !DILocation(line: 98, column: 23, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !118, line: 98, column: 15)
!1413 = distinct !DILexicalBlock(scope: !1404, file: !118, line: 97, column: 9)
!1414 = !DILocation(line: 98, column: 31, scope: !1412)
!1415 = !DILocation(line: 98, column: 15, scope: !1412)
!1416 = !DILocation(line: 98, column: 38, scope: !1412)
!1417 = !DILocation(line: 98, column: 35, scope: !1412)
!1418 = !DILocation(line: 98, column: 15, scope: !1413)
!1419 = !DILocation(line: 100, column: 20, scope: !1412)
!1420 = !DILocation(line: 100, column: 13, scope: !1412)
!1421 = !DILocation(line: 101, column: 20, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1412, file: !118, line: 101, column: 20)
!1423 = !DILocation(line: 101, column: 29, scope: !1422)
!1424 = !DILocation(line: 101, column: 20, scope: !1412)
!1425 = !DILocation(line: 103, column: 24, scope: !1422)
!1426 = !DILocation(line: 103, column: 22, scope: !1422)
!1427 = !DILocation(line: 103, column: 13, scope: !1422)
!1428 = !DILocation(line: 107, column: 19, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !118, line: 107, column: 19)
!1430 = distinct !DILexicalBlock(scope: !1422, file: !118, line: 105, column: 13)
!1431 = !DILocation(line: 107, column: 27, scope: !1429)
!1432 = !DILocation(line: 108, column: 19, scope: !1429)
!1433 = !DILocation(line: 108, column: 30, scope: !1429)
!1434 = !DILocation(line: 108, column: 40, scope: !1429)
!1435 = !DILocation(line: 108, column: 50, scope: !1429)
!1436 = !DILocation(line: 108, column: 48, scope: !1429)
!1437 = !DILocation(line: 108, column: 38, scope: !1429)
!1438 = !DILocation(line: 109, column: 30, scope: !1429)
!1439 = !DILocation(line: 109, column: 40, scope: !1429)
!1440 = !DILocation(line: 109, column: 50, scope: !1429)
!1441 = !DILocation(line: 109, column: 48, scope: !1429)
!1442 = !DILocation(line: 109, column: 38, scope: !1429)
!1443 = !DILocation(line: 109, column: 53, scope: !1429)
!1444 = !DILocation(line: 108, column: 22, scope: !1429)
!1445 = !DILocation(line: 107, column: 19, scope: !1430)
!1446 = !DILocation(line: 113, column: 29, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1429, file: !118, line: 110, column: 17)
!1448 = !DILocation(line: 114, column: 17, scope: !1447)
!1449 = !DILocation(line: 116, column: 9, scope: !1413)
!1450 = !DILocation(line: 117, column: 5, scope: !1405)
!1451 = !DILocation(line: 94, column: 28, scope: !1400)
!1452 = !DILocation(line: 94, column: 3, scope: !1400)
!1453 = distinct !{!1453, !1402, !1454}
!1454 = !DILocation(line: 117, column: 5, scope: !1397)
!1455 = !DILocation(line: 118, column: 7, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1371, file: !118, line: 118, column: 7)
!1457 = !DILocation(line: 118, column: 7, scope: !1371)
!1458 = !DILocation(line: 119, column: 5, scope: !1456)
!1459 = !DILocation(line: 121, column: 12, scope: !1456)
!1460 = !DILocation(line: 121, column: 5, scope: !1456)
!1461 = !DILocation(line: 122, column: 1, scope: !1371)
!1462 = distinct !DISubprogram(name: "argmatch_invalid", scope: !118, file: !118, line: 130, type: !1463, isLocal: false, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false, unit: !117, variables: !113)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{null, !52, !52, !1374}
!1465 = !DILocalVariable(name: "context", arg: 1, scope: !1462, file: !118, line: 130, type: !52)
!1466 = !DILocation(line: 130, column: 31, scope: !1462)
!1467 = !DILocalVariable(name: "value", arg: 2, scope: !1462, file: !118, line: 130, type: !52)
!1468 = !DILocation(line: 130, column: 52, scope: !1462)
!1469 = !DILocalVariable(name: "problem", arg: 3, scope: !1462, file: !118, line: 130, type: !1374)
!1470 = !DILocation(line: 130, column: 69, scope: !1462)
!1471 = !DILocalVariable(name: "format", scope: !1462, file: !118, line: 132, type: !52)
!1472 = !DILocation(line: 132, column: 15, scope: !1462)
!1473 = !DILocation(line: 132, column: 25, scope: !1462)
!1474 = !DILocation(line: 132, column: 33, scope: !1462)
!1475 = !DILocation(line: 136, column: 16, scope: !1462)
!1476 = !DILocation(line: 136, column: 69, scope: !1462)
!1477 = !DILocation(line: 136, column: 24, scope: !1462)
!1478 = !DILocation(line: 137, column: 22, scope: !1462)
!1479 = !DILocation(line: 137, column: 10, scope: !1462)
!1480 = !DILocation(line: 136, column: 3, scope: !1462)
!1481 = !DILocation(line: 138, column: 1, scope: !1462)
!1482 = distinct !DISubprogram(name: "argmatch_valid", scope: !118, file: !118, line: 145, type: !1483, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false, unit: !117, variables: !113)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{null, !1376, !52, !172}
!1485 = !DILocalVariable(name: "arglist", arg: 1, scope: !1482, file: !118, line: 145, type: !1376)
!1486 = !DILocation(line: 145, column: 36, scope: !1482)
!1487 = !DILocalVariable(name: "vallist", arg: 2, scope: !1482, file: !118, line: 146, type: !52)
!1488 = !DILocation(line: 146, column: 29, scope: !1482)
!1489 = !DILocalVariable(name: "valsize", arg: 3, scope: !1482, file: !118, line: 146, type: !172)
!1490 = !DILocation(line: 146, column: 45, scope: !1482)
!1491 = !DILocalVariable(name: "i", scope: !1482, file: !118, line: 148, type: !172)
!1492 = !DILocation(line: 148, column: 10, scope: !1482)
!1493 = !DILocalVariable(name: "last_val", scope: !1482, file: !118, line: 149, type: !52)
!1494 = !DILocation(line: 149, column: 15, scope: !1482)
!1495 = !DILocation(line: 153, column: 3, scope: !1482)
!1496 = !DILocation(line: 154, column: 10, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1482, file: !118, line: 154, column: 3)
!1498 = !DILocation(line: 154, column: 8, scope: !1497)
!1499 = !DILocation(line: 154, column: 15, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1497, file: !118, line: 154, column: 3)
!1501 = !DILocation(line: 154, column: 23, scope: !1500)
!1502 = !DILocation(line: 154, column: 3, scope: !1497)
!1503 = !DILocation(line: 155, column: 10, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1500, file: !118, line: 155, column: 9)
!1505 = !DILocation(line: 155, column: 12, scope: !1504)
!1506 = !DILocation(line: 156, column: 9, scope: !1504)
!1507 = !DILocation(line: 156, column: 20, scope: !1504)
!1508 = !DILocation(line: 156, column: 30, scope: !1504)
!1509 = !DILocation(line: 156, column: 40, scope: !1504)
!1510 = !DILocation(line: 156, column: 50, scope: !1504)
!1511 = !DILocation(line: 156, column: 48, scope: !1504)
!1512 = !DILocation(line: 156, column: 38, scope: !1504)
!1513 = !DILocation(line: 156, column: 53, scope: !1504)
!1514 = !DILocation(line: 156, column: 12, scope: !1504)
!1515 = !DILocation(line: 155, column: 9, scope: !1500)
!1516 = !DILocation(line: 158, column: 18, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1504, file: !118, line: 157, column: 7)
!1518 = !DILocation(line: 158, column: 45, scope: !1517)
!1519 = !DILocation(line: 158, column: 53, scope: !1517)
!1520 = !DILocation(line: 158, column: 38, scope: !1517)
!1521 = !DILocation(line: 158, column: 9, scope: !1517)
!1522 = !DILocation(line: 159, column: 20, scope: !1517)
!1523 = !DILocation(line: 159, column: 30, scope: !1517)
!1524 = !DILocation(line: 159, column: 40, scope: !1517)
!1525 = !DILocation(line: 159, column: 38, scope: !1517)
!1526 = !DILocation(line: 159, column: 28, scope: !1517)
!1527 = !DILocation(line: 159, column: 18, scope: !1517)
!1528 = !DILocation(line: 160, column: 7, scope: !1517)
!1529 = !DILocation(line: 163, column: 18, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1504, file: !118, line: 162, column: 7)
!1531 = !DILocation(line: 163, column: 41, scope: !1530)
!1532 = !DILocation(line: 163, column: 49, scope: !1530)
!1533 = !DILocation(line: 163, column: 34, scope: !1530)
!1534 = !DILocation(line: 163, column: 9, scope: !1530)
!1535 = !DILocation(line: 156, column: 60, scope: !1504)
!1536 = !DILocation(line: 154, column: 28, scope: !1500)
!1537 = !DILocation(line: 154, column: 3, scope: !1500)
!1538 = distinct !{!1538, !1502, !1539}
!1539 = !DILocation(line: 164, column: 7, scope: !1497)
!1540 = !DILocation(line: 165, column: 3, scope: !1482)
!1541 = !DILocation(line: 166, column: 1, scope: !1482)
!1542 = distinct !DISubprogram(name: "__xargmatch_internal", scope: !118, file: !118, line: 175, type: !1543, isLocal: false, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: false, unit: !117, variables: !113)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!1374, !52, !52, !1376, !52, !172, !134}
!1545 = !DILocalVariable(name: "context", arg: 1, scope: !1542, file: !118, line: 175, type: !52)
!1546 = !DILocation(line: 175, column: 35, scope: !1542)
!1547 = !DILocalVariable(name: "arg", arg: 2, scope: !1542, file: !118, line: 176, type: !52)
!1548 = !DILocation(line: 176, column: 35, scope: !1542)
!1549 = !DILocalVariable(name: "arglist", arg: 3, scope: !1542, file: !118, line: 176, type: !1376)
!1550 = !DILocation(line: 176, column: 59, scope: !1542)
!1551 = !DILocalVariable(name: "vallist", arg: 4, scope: !1542, file: !118, line: 177, type: !52)
!1552 = !DILocation(line: 177, column: 35, scope: !1542)
!1553 = !DILocalVariable(name: "valsize", arg: 5, scope: !1542, file: !118, line: 177, type: !172)
!1554 = !DILocation(line: 177, column: 51, scope: !1542)
!1555 = !DILocalVariable(name: "exit_fn", arg: 6, scope: !1542, file: !118, line: 178, type: !134)
!1556 = !DILocation(line: 178, column: 40, scope: !1542)
!1557 = !DILocalVariable(name: "res", scope: !1542, file: !118, line: 180, type: !1374)
!1558 = !DILocation(line: 180, column: 13, scope: !1542)
!1559 = !DILocation(line: 180, column: 29, scope: !1542)
!1560 = !DILocation(line: 180, column: 34, scope: !1542)
!1561 = !DILocation(line: 180, column: 43, scope: !1542)
!1562 = !DILocation(line: 180, column: 52, scope: !1542)
!1563 = !DILocation(line: 180, column: 19, scope: !1542)
!1564 = !DILocation(line: 181, column: 7, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1542, file: !118, line: 181, column: 7)
!1566 = !DILocation(line: 181, column: 11, scope: !1565)
!1567 = !DILocation(line: 181, column: 7, scope: !1542)
!1568 = !DILocation(line: 183, column: 12, scope: !1565)
!1569 = !DILocation(line: 183, column: 5, scope: !1565)
!1570 = !DILocation(line: 186, column: 21, scope: !1542)
!1571 = !DILocation(line: 186, column: 30, scope: !1542)
!1572 = !DILocation(line: 186, column: 35, scope: !1542)
!1573 = !DILocation(line: 186, column: 3, scope: !1542)
!1574 = !DILocation(line: 187, column: 19, scope: !1542)
!1575 = !DILocation(line: 187, column: 28, scope: !1542)
!1576 = !DILocation(line: 187, column: 37, scope: !1542)
!1577 = !DILocation(line: 187, column: 3, scope: !1542)
!1578 = !DILocation(line: 188, column: 5, scope: !1542)
!1579 = !DILocation(line: 188, column: 3, scope: !1542)
!1580 = !DILocation(line: 190, column: 3, scope: !1542)
!1581 = !DILocation(line: 191, column: 1, scope: !1542)
!1582 = distinct !DISubprogram(name: "argmatch_to_argument", scope: !118, file: !118, line: 196, type: !1583, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: false, unit: !117, variables: !113)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!52, !52, !1376, !52, !172}
!1585 = !DILocalVariable(name: "value", arg: 1, scope: !1582, file: !118, line: 196, type: !52)
!1586 = !DILocation(line: 196, column: 35, scope: !1582)
!1587 = !DILocalVariable(name: "arglist", arg: 2, scope: !1582, file: !118, line: 197, type: !1376)
!1588 = !DILocation(line: 197, column: 42, scope: !1582)
!1589 = !DILocalVariable(name: "vallist", arg: 3, scope: !1582, file: !118, line: 198, type: !52)
!1590 = !DILocation(line: 198, column: 35, scope: !1582)
!1591 = !DILocalVariable(name: "valsize", arg: 4, scope: !1582, file: !118, line: 198, type: !172)
!1592 = !DILocation(line: 198, column: 51, scope: !1582)
!1593 = !DILocalVariable(name: "i", scope: !1582, file: !118, line: 200, type: !172)
!1594 = !DILocation(line: 200, column: 10, scope: !1582)
!1595 = !DILocation(line: 202, column: 10, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1582, file: !118, line: 202, column: 3)
!1597 = !DILocation(line: 202, column: 8, scope: !1596)
!1598 = !DILocation(line: 202, column: 15, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1596, file: !118, line: 202, column: 3)
!1600 = !DILocation(line: 202, column: 23, scope: !1599)
!1601 = !DILocation(line: 202, column: 3, scope: !1596)
!1602 = !DILocation(line: 203, column: 18, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1599, file: !118, line: 203, column: 9)
!1604 = !DILocation(line: 203, column: 25, scope: !1603)
!1605 = !DILocation(line: 203, column: 35, scope: !1603)
!1606 = !DILocation(line: 203, column: 45, scope: !1603)
!1607 = !DILocation(line: 203, column: 43, scope: !1603)
!1608 = !DILocation(line: 203, column: 33, scope: !1603)
!1609 = !DILocation(line: 203, column: 48, scope: !1603)
!1610 = !DILocation(line: 203, column: 10, scope: !1603)
!1611 = !DILocation(line: 203, column: 9, scope: !1599)
!1612 = !DILocation(line: 204, column: 14, scope: !1603)
!1613 = !DILocation(line: 204, column: 22, scope: !1603)
!1614 = !DILocation(line: 204, column: 7, scope: !1603)
!1615 = !DILocation(line: 203, column: 55, scope: !1603)
!1616 = !DILocation(line: 202, column: 28, scope: !1599)
!1617 = !DILocation(line: 202, column: 3, scope: !1599)
!1618 = distinct !{!1618, !1601, !1619}
!1619 = !DILocation(line: 204, column: 23, scope: !1596)
!1620 = !DILocation(line: 205, column: 3, scope: !1582)
!1621 = !DILocation(line: 206, column: 1, scope: !1582)
!1622 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !142, file: !142, line: 41, type: !1623, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: false, unit: !141, variables: !113)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{null, !52}
!1625 = !DILocalVariable(name: "file", arg: 1, scope: !1622, file: !142, line: 41, type: !52)
!1626 = !DILocation(line: 41, column: 41, scope: !1622)
!1627 = !DILocation(line: 43, column: 15, scope: !1622)
!1628 = !DILocation(line: 43, column: 13, scope: !1622)
!1629 = !DILocation(line: 44, column: 1, scope: !1622)
!1630 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !142, file: !142, line: 78, type: !1631, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !141, variables: !113)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{null, !74}
!1633 = !DILocalVariable(name: "ignore", arg: 1, scope: !1630, file: !142, line: 78, type: !74)
!1634 = !DILocation(line: 78, column: 37, scope: !1630)
!1635 = !DILocation(line: 80, column: 18, scope: !1630)
!1636 = !DILocation(line: 80, column: 16, scope: !1630)
!1637 = !DILocation(line: 81, column: 1, scope: !1630)
!1638 = distinct !DISubprogram(name: "close_stdout", scope: !142, file: !142, line: 107, type: !137, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: false, unit: !141, variables: !113)
!1639 = !DILocation(line: 109, column: 21, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1638, file: !142, line: 109, column: 7)
!1641 = !DILocation(line: 109, column: 7, scope: !1640)
!1642 = !DILocation(line: 109, column: 29, scope: !1640)
!1643 = !DILocation(line: 110, column: 7, scope: !1640)
!1644 = !DILocation(line: 110, column: 12, scope: !1640)
!1645 = !DILocation(line: 110, column: 25, scope: !1640)
!1646 = !DILocation(line: 110, column: 28, scope: !1640)
!1647 = !DILocation(line: 110, column: 34, scope: !1640)
!1648 = !DILocation(line: 109, column: 7, scope: !1638)
!1649 = !DILocalVariable(name: "write_error", scope: !1650, file: !142, line: 112, type: !52)
!1650 = distinct !DILexicalBlock(scope: !1640, file: !142, line: 111, column: 5)
!1651 = !DILocation(line: 112, column: 19, scope: !1650)
!1652 = !DILocation(line: 113, column: 11, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1650, file: !142, line: 113, column: 11)
!1654 = !DILocation(line: 113, column: 11, scope: !1650)
!1655 = !DILocation(line: 114, column: 19, scope: !1653)
!1656 = !DILocation(line: 114, column: 52, scope: !1653)
!1657 = !DILocation(line: 114, column: 36, scope: !1653)
!1658 = !DILocation(line: 115, column: 16, scope: !1653)
!1659 = !DILocation(line: 114, column: 9, scope: !1653)
!1660 = !DILocation(line: 117, column: 19, scope: !1653)
!1661 = !DILocation(line: 117, column: 32, scope: !1653)
!1662 = !DILocation(line: 117, column: 9, scope: !1653)
!1663 = !DILocation(line: 119, column: 14, scope: !1650)
!1664 = !DILocation(line: 119, column: 7, scope: !1650)
!1665 = !DILocation(line: 122, column: 22, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1638, file: !142, line: 122, column: 8)
!1667 = !DILocation(line: 122, column: 8, scope: !1666)
!1668 = !DILocation(line: 122, column: 30, scope: !1666)
!1669 = !DILocation(line: 122, column: 8, scope: !1638)
!1670 = !DILocation(line: 123, column: 13, scope: !1666)
!1671 = !DILocation(line: 123, column: 6, scope: !1666)
!1672 = !DILocation(line: 124, column: 1, scope: !1638)
!1673 = distinct !DISubprogram(name: "last_component", scope: !615, file: !615, line: 30, type: !1674, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: false, unit: !614, variables: !113)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!60, !52}
!1676 = !DILocalVariable(name: "name", arg: 1, scope: !1673, file: !615, line: 30, type: !52)
!1677 = !DILocation(line: 30, column: 29, scope: !1673)
!1678 = !DILocalVariable(name: "base", scope: !1673, file: !615, line: 32, type: !52)
!1679 = !DILocation(line: 32, column: 15, scope: !1673)
!1680 = !DILocation(line: 32, column: 22, scope: !1673)
!1681 = !DILocation(line: 32, column: 27, scope: !1673)
!1682 = !DILocalVariable(name: "p", scope: !1673, file: !615, line: 33, type: !52)
!1683 = !DILocation(line: 33, column: 15, scope: !1673)
!1684 = !DILocalVariable(name: "saw_slash", scope: !1673, file: !615, line: 34, type: !74)
!1685 = !DILocation(line: 34, column: 8, scope: !1673)
!1686 = !DILocation(line: 36, column: 3, scope: !1673)
!1687 = !DILocation(line: 36, column: 10, scope: !1673)
!1688 = !DILocation(line: 37, column: 9, scope: !1673)
!1689 = distinct !{!1689, !1686, !1688}
!1690 = !DILocation(line: 39, column: 12, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1673, file: !615, line: 39, column: 3)
!1692 = !DILocation(line: 39, column: 10, scope: !1691)
!1693 = !DILocation(line: 39, column: 8, scope: !1691)
!1694 = !DILocation(line: 39, column: 19, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1691, file: !615, line: 39, column: 3)
!1696 = !DILocation(line: 39, column: 18, scope: !1695)
!1697 = !DILocation(line: 39, column: 3, scope: !1691)
!1698 = !DILocation(line: 41, column: 11, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !615, line: 41, column: 11)
!1700 = distinct !DILexicalBlock(scope: !1695, file: !615, line: 40, column: 5)
!1701 = !DILocation(line: 41, column: 11, scope: !1700)
!1702 = !DILocation(line: 42, column: 19, scope: !1699)
!1703 = !DILocation(line: 42, column: 9, scope: !1699)
!1704 = !DILocation(line: 43, column: 16, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1699, file: !615, line: 43, column: 16)
!1706 = !DILocation(line: 43, column: 16, scope: !1699)
!1707 = !DILocation(line: 45, column: 18, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1705, file: !615, line: 44, column: 9)
!1709 = !DILocation(line: 45, column: 16, scope: !1708)
!1710 = !DILocation(line: 46, column: 21, scope: !1708)
!1711 = !DILocation(line: 47, column: 9, scope: !1708)
!1712 = !DILocation(line: 48, column: 5, scope: !1700)
!1713 = !DILocation(line: 39, column: 23, scope: !1695)
!1714 = !DILocation(line: 39, column: 3, scope: !1695)
!1715 = distinct !{!1715, !1697, !1716}
!1716 = !DILocation(line: 48, column: 5, scope: !1691)
!1717 = !DILocation(line: 50, column: 19, scope: !1673)
!1718 = !DILocation(line: 50, column: 3, scope: !1673)
!1719 = distinct !DISubprogram(name: "base_len", scope: !615, file: !615, line: 58, type: !1720, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, unit: !614, variables: !113)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!172, !52}
!1722 = !DILocalVariable(name: "name", arg: 1, scope: !1719, file: !615, line: 58, type: !52)
!1723 = !DILocation(line: 58, column: 23, scope: !1719)
!1724 = !DILocalVariable(name: "len", scope: !1719, file: !615, line: 60, type: !172)
!1725 = !DILocation(line: 60, column: 10, scope: !1719)
!1726 = !DILocalVariable(name: "prefix_len", scope: !1719, file: !615, line: 61, type: !172)
!1727 = !DILocation(line: 61, column: 10, scope: !1719)
!1728 = !DILocation(line: 63, column: 22, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1719, file: !615, line: 63, column: 3)
!1730 = !DILocation(line: 63, column: 14, scope: !1729)
!1731 = !DILocation(line: 63, column: 12, scope: !1729)
!1732 = !DILocation(line: 63, column: 8, scope: !1729)
!1733 = !DILocation(line: 63, column: 34, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1729, file: !615, line: 63, column: 3)
!1735 = !DILocation(line: 63, column: 32, scope: !1734)
!1736 = !DILocation(line: 63, column: 38, scope: !1734)
!1737 = !DILocation(line: 63, column: 41, scope: !1734)
!1738 = !DILocation(line: 63, column: 3, scope: !1729)
!1739 = !DILocation(line: 64, column: 5, scope: !1734)
!1740 = !DILocation(line: 63, column: 70, scope: !1734)
!1741 = !DILocation(line: 63, column: 3, scope: !1734)
!1742 = distinct !{!1742, !1738, !1743}
!1743 = !DILocation(line: 64, column: 5, scope: !1729)
!1744 = !DILocation(line: 74, column: 10, scope: !1719)
!1745 = !DILocation(line: 74, column: 3, scope: !1719)
!1746 = distinct !DISubprogram(name: "fdadvise", scope: !618, file: !618, line: 25, type: !1747, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: false, unit: !617, variables: !113)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{null, !61, !1749, !1749, !1753}
!1749 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1750, line: 57, baseType: !1751)
!1750 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!1751 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1752, line: 140, baseType: !1375)
!1752 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!1753 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !621, line: 52, baseType: !620)
!1754 = !DILocalVariable(name: "fd", arg: 1, scope: !1746, file: !618, line: 25, type: !61)
!1755 = !DILocation(line: 25, column: 15, scope: !1746)
!1756 = !DILocalVariable(name: "offset", arg: 2, scope: !1746, file: !618, line: 25, type: !1749)
!1757 = !DILocation(line: 25, column: 25, scope: !1746)
!1758 = !DILocalVariable(name: "len", arg: 3, scope: !1746, file: !618, line: 25, type: !1749)
!1759 = !DILocation(line: 25, column: 39, scope: !1746)
!1760 = !DILocalVariable(name: "advice", arg: 4, scope: !1746, file: !618, line: 25, type: !1753)
!1761 = !DILocation(line: 25, column: 54, scope: !1746)
!1762 = !DILocalVariable(name: "__x", scope: !1763, file: !618, line: 28, type: !61)
!1763 = distinct !DILexicalBlock(scope: !1746, file: !618, line: 28, column: 3)
!1764 = !DILocation(line: 28, column: 3, scope: !1763)
!1765 = !DILocation(line: 30, column: 1, scope: !1746)
!1766 = distinct !DISubprogram(name: "fadvise", scope: !618, file: !618, line: 33, type: !1767, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: false, unit: !617, variables: !113)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{null, !1769, !1753}
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1771, line: 7, baseType: !1772)
!1771 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1773, line: 245, size: 1728, elements: !1774)
!1773 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/libio.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!1774 = !{!1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1795, !1796, !1797, !1798, !1799, !1800, !1802, !1806, !1809, !1811, !1812, !1813, !1814, !1815, !1816, !1817}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1772, file: !1773, line: 246, baseType: !61, size: 32)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1772, file: !1773, line: 251, baseType: !60, size: 64, offset: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1772, file: !1773, line: 252, baseType: !60, size: 64, offset: 128)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1772, file: !1773, line: 253, baseType: !60, size: 64, offset: 192)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1772, file: !1773, line: 254, baseType: !60, size: 64, offset: 256)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1772, file: !1773, line: 255, baseType: !60, size: 64, offset: 320)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1772, file: !1773, line: 256, baseType: !60, size: 64, offset: 384)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1772, file: !1773, line: 257, baseType: !60, size: 64, offset: 448)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1772, file: !1773, line: 258, baseType: !60, size: 64, offset: 512)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1772, file: !1773, line: 260, baseType: !60, size: 64, offset: 576)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1772, file: !1773, line: 261, baseType: !60, size: 64, offset: 640)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1772, file: !1773, line: 262, baseType: !60, size: 64, offset: 704)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1772, file: !1773, line: 264, baseType: !1788, size: 64, offset: 768)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1773, line: 160, size: 192, elements: !1790)
!1790 = !{!1791, !1792, !1794}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1789, file: !1773, line: 161, baseType: !1788, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1789, file: !1773, line: 162, baseType: !1793, size: 64, offset: 64)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1789, file: !1773, line: 166, baseType: !61, size: 32, offset: 128)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1772, file: !1773, line: 266, baseType: !1793, size: 64, offset: 832)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1772, file: !1773, line: 268, baseType: !61, size: 32, offset: 896)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1772, file: !1773, line: 272, baseType: !61, size: 32, offset: 928)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1772, file: !1773, line: 274, baseType: !1751, size: 64, offset: 960)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1772, file: !1773, line: 278, baseType: !62, size: 16, offset: 1024)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1772, file: !1773, line: 279, baseType: !1801, size: 8, offset: 1040)
!1801 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1772, file: !1773, line: 280, baseType: !1803, size: 8, offset: 1048)
!1803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 8, elements: !1804)
!1804 = !{!1805}
!1805 = !DISubrange(count: 1)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1772, file: !1773, line: 284, baseType: !1807, size: 64, offset: 1088)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1773, line: 154, baseType: null)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1772, file: !1773, line: 293, baseType: !1810, size: 64, offset: 1152)
!1810 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1752, line: 141, baseType: !1375)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1772, file: !1773, line: 301, baseType: !55, size: 64, offset: 1216)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1772, file: !1773, line: 302, baseType: !55, size: 64, offset: 1280)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1772, file: !1773, line: 303, baseType: !55, size: 64, offset: 1344)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1772, file: !1773, line: 304, baseType: !55, size: 64, offset: 1408)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1772, file: !1773, line: 306, baseType: !172, size: 64, offset: 1472)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1772, file: !1773, line: 307, baseType: !61, size: 32, offset: 1536)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1772, file: !1773, line: 309, baseType: !1818, size: 160, offset: 1568)
!1818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 160, elements: !1819)
!1819 = !{!1820}
!1820 = !DISubrange(count: 20)
!1821 = !DILocalVariable(name: "fp", arg: 1, scope: !1766, file: !618, line: 33, type: !1769)
!1822 = !DILocation(line: 33, column: 16, scope: !1766)
!1823 = !DILocalVariable(name: "advice", arg: 2, scope: !1766, file: !618, line: 33, type: !1753)
!1824 = !DILocation(line: 33, column: 30, scope: !1766)
!1825 = !DILocation(line: 35, column: 7, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1766, file: !618, line: 35, column: 7)
!1827 = !DILocation(line: 35, column: 7, scope: !1766)
!1828 = !DILocation(line: 36, column: 23, scope: !1826)
!1829 = !DILocation(line: 36, column: 15, scope: !1826)
!1830 = !DILocation(line: 36, column: 34, scope: !1826)
!1831 = !DILocation(line: 36, column: 5, scope: !1826)
!1832 = !DILocation(line: 37, column: 1, scope: !1766)
!1833 = distinct !DISubprogram(name: "freopen_safer", scope: !623, file: !623, line: 54, type: !1834, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: false, unit: !622, variables: !113)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!1836, !52, !52, !1836}
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1771, line: 7, baseType: !1838)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1773, line: 245, size: 1728, elements: !1839)
!1839 = !{!1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1838, file: !1773, line: 246, baseType: !61, size: 32)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1838, file: !1773, line: 251, baseType: !60, size: 64, offset: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1838, file: !1773, line: 252, baseType: !60, size: 64, offset: 128)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1838, file: !1773, line: 253, baseType: !60, size: 64, offset: 192)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1838, file: !1773, line: 254, baseType: !60, size: 64, offset: 256)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1838, file: !1773, line: 255, baseType: !60, size: 64, offset: 320)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1838, file: !1773, line: 256, baseType: !60, size: 64, offset: 384)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1838, file: !1773, line: 257, baseType: !60, size: 64, offset: 448)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1838, file: !1773, line: 258, baseType: !60, size: 64, offset: 512)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1838, file: !1773, line: 260, baseType: !60, size: 64, offset: 576)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1838, file: !1773, line: 261, baseType: !60, size: 64, offset: 640)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1838, file: !1773, line: 262, baseType: !60, size: 64, offset: 704)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1838, file: !1773, line: 264, baseType: !1853, size: 64, offset: 768)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1773, line: 160, size: 192, elements: !1855)
!1855 = !{!1856, !1857, !1859}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1854, file: !1773, line: 161, baseType: !1853, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1854, file: !1773, line: 162, baseType: !1858, size: 64, offset: 64)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1854, file: !1773, line: 166, baseType: !61, size: 32, offset: 128)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1838, file: !1773, line: 266, baseType: !1858, size: 64, offset: 832)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1838, file: !1773, line: 268, baseType: !61, size: 32, offset: 896)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1838, file: !1773, line: 272, baseType: !61, size: 32, offset: 928)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1838, file: !1773, line: 274, baseType: !1751, size: 64, offset: 960)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1838, file: !1773, line: 278, baseType: !62, size: 16, offset: 1024)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1838, file: !1773, line: 279, baseType: !1801, size: 8, offset: 1040)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1838, file: !1773, line: 280, baseType: !1803, size: 8, offset: 1048)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1838, file: !1773, line: 284, baseType: !1807, size: 64, offset: 1088)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1838, file: !1773, line: 293, baseType: !1810, size: 64, offset: 1152)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1838, file: !1773, line: 301, baseType: !55, size: 64, offset: 1216)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1838, file: !1773, line: 302, baseType: !55, size: 64, offset: 1280)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1838, file: !1773, line: 303, baseType: !55, size: 64, offset: 1344)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1838, file: !1773, line: 304, baseType: !55, size: 64, offset: 1408)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1838, file: !1773, line: 306, baseType: !172, size: 64, offset: 1472)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1838, file: !1773, line: 307, baseType: !61, size: 32, offset: 1536)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1838, file: !1773, line: 309, baseType: !1818, size: 160, offset: 1568)
!1876 = !DILocalVariable(name: "name", arg: 1, scope: !1833, file: !623, line: 54, type: !52)
!1877 = !DILocation(line: 54, column: 28, scope: !1833)
!1878 = !DILocalVariable(name: "mode", arg: 2, scope: !1833, file: !623, line: 54, type: !52)
!1879 = !DILocation(line: 54, column: 46, scope: !1833)
!1880 = !DILocalVariable(name: "f", arg: 3, scope: !1833, file: !623, line: 54, type: !1836)
!1881 = !DILocation(line: 54, column: 58, scope: !1833)
!1882 = !DILocalVariable(name: "protect_in", scope: !1833, file: !623, line: 62, type: !74)
!1883 = !DILocation(line: 62, column: 8, scope: !1833)
!1884 = !DILocalVariable(name: "protect_out", scope: !1833, file: !623, line: 63, type: !74)
!1885 = !DILocation(line: 63, column: 8, scope: !1833)
!1886 = !DILocalVariable(name: "protect_err", scope: !1833, file: !623, line: 64, type: !74)
!1887 = !DILocation(line: 64, column: 8, scope: !1833)
!1888 = !DILocalVariable(name: "saved_errno", scope: !1833, file: !623, line: 65, type: !61)
!1889 = !DILocation(line: 65, column: 7, scope: !1833)
!1890 = !DILocation(line: 67, column: 19, scope: !1833)
!1891 = !DILocation(line: 67, column: 11, scope: !1833)
!1892 = !DILocation(line: 67, column: 3, scope: !1833)
!1893 = !DILocation(line: 70, column: 11, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !623, line: 70, column: 11)
!1895 = distinct !DILexicalBlock(scope: !1833, file: !623, line: 68, column: 5)
!1896 = !DILocation(line: 70, column: 47, scope: !1894)
!1897 = !DILocation(line: 70, column: 11, scope: !1895)
!1898 = !DILocation(line: 71, column: 21, scope: !1894)
!1899 = !DILocation(line: 71, column: 9, scope: !1894)
!1900 = !DILocation(line: 70, column: 50, scope: !1894)
!1901 = !DILocation(line: 74, column: 11, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1895, file: !623, line: 74, column: 11)
!1903 = !DILocation(line: 74, column: 47, scope: !1902)
!1904 = !DILocation(line: 74, column: 11, scope: !1895)
!1905 = !DILocation(line: 75, column: 21, scope: !1902)
!1906 = !DILocation(line: 75, column: 9, scope: !1902)
!1907 = !DILocation(line: 74, column: 50, scope: !1902)
!1908 = !DILocation(line: 78, column: 11, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1895, file: !623, line: 78, column: 11)
!1910 = !DILocation(line: 78, column: 45, scope: !1909)
!1911 = !DILocation(line: 78, column: 11, scope: !1895)
!1912 = !DILocation(line: 79, column: 20, scope: !1909)
!1913 = !DILocation(line: 79, column: 9, scope: !1909)
!1914 = !DILocation(line: 78, column: 48, scope: !1909)
!1915 = !DILocation(line: 83, column: 7, scope: !1895)
!1916 = !DILocation(line: 85, column: 7, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1833, file: !623, line: 85, column: 7)
!1918 = !DILocation(line: 85, column: 18, scope: !1917)
!1919 = !DILocation(line: 85, column: 22, scope: !1917)
!1920 = !DILocation(line: 85, column: 7, scope: !1833)
!1921 = !DILocation(line: 86, column: 7, scope: !1917)
!1922 = !DILocation(line: 86, column: 5, scope: !1917)
!1923 = !DILocation(line: 87, column: 12, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1917, file: !623, line: 87, column: 12)
!1925 = !DILocation(line: 87, column: 24, scope: !1924)
!1926 = !DILocation(line: 87, column: 28, scope: !1924)
!1927 = !DILocation(line: 87, column: 12, scope: !1917)
!1928 = !DILocation(line: 88, column: 7, scope: !1924)
!1929 = !DILocation(line: 88, column: 5, scope: !1924)
!1930 = !DILocation(line: 89, column: 12, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1924, file: !623, line: 89, column: 12)
!1932 = !DILocation(line: 89, column: 24, scope: !1931)
!1933 = !DILocation(line: 89, column: 28, scope: !1931)
!1934 = !DILocation(line: 89, column: 12, scope: !1924)
!1935 = !DILocation(line: 90, column: 7, scope: !1931)
!1936 = !DILocation(line: 90, column: 5, scope: !1931)
!1937 = !DILocation(line: 92, column: 18, scope: !1931)
!1938 = !DILocation(line: 92, column: 24, scope: !1931)
!1939 = !DILocation(line: 92, column: 30, scope: !1931)
!1940 = !DILocation(line: 92, column: 9, scope: !1931)
!1941 = !DILocation(line: 92, column: 7, scope: !1931)
!1942 = !DILocation(line: 93, column: 17, scope: !1833)
!1943 = !DILocation(line: 93, column: 15, scope: !1833)
!1944 = !DILocation(line: 94, column: 7, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1833, file: !623, line: 94, column: 7)
!1946 = !DILocation(line: 94, column: 7, scope: !1833)
!1947 = !DILocation(line: 95, column: 5, scope: !1945)
!1948 = !DILocation(line: 96, column: 7, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1833, file: !623, line: 96, column: 7)
!1950 = !DILocation(line: 96, column: 7, scope: !1833)
!1951 = !DILocation(line: 97, column: 5, scope: !1949)
!1952 = !DILocation(line: 98, column: 7, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1833, file: !623, line: 98, column: 7)
!1954 = !DILocation(line: 98, column: 7, scope: !1833)
!1955 = !DILocation(line: 99, column: 5, scope: !1953)
!1956 = !DILocation(line: 100, column: 8, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1833, file: !623, line: 100, column: 7)
!1958 = !DILocation(line: 100, column: 7, scope: !1833)
!1959 = !DILocation(line: 101, column: 13, scope: !1957)
!1960 = !DILocation(line: 101, column: 5, scope: !1957)
!1961 = !DILocation(line: 101, column: 11, scope: !1957)
!1962 = !DILocation(line: 102, column: 10, scope: !1833)
!1963 = !DILocation(line: 102, column: 3, scope: !1833)
!1964 = distinct !DISubprogram(name: "protect_fd", scope: !623, file: !623, line: 32, type: !1965, isLocal: true, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: false, unit: !622, variables: !113)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!74, !61}
!1967 = !DILocalVariable(name: "fd", arg: 1, scope: !1964, file: !623, line: 32, type: !61)
!1968 = !DILocation(line: 32, column: 17, scope: !1964)
!1969 = !DILocalVariable(name: "value", scope: !1964, file: !623, line: 34, type: !61)
!1970 = !DILocation(line: 34, column: 7, scope: !1964)
!1971 = !DILocation(line: 34, column: 15, scope: !1964)
!1972 = !DILocation(line: 35, column: 7, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1964, file: !623, line: 35, column: 7)
!1974 = !DILocation(line: 35, column: 16, scope: !1973)
!1975 = !DILocation(line: 35, column: 13, scope: !1973)
!1976 = !DILocation(line: 35, column: 7, scope: !1964)
!1977 = !DILocation(line: 37, column: 16, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !623, line: 37, column: 11)
!1979 = distinct !DILexicalBlock(scope: !1973, file: !623, line: 36, column: 5)
!1980 = !DILocation(line: 37, column: 13, scope: !1978)
!1981 = !DILocation(line: 37, column: 11, scope: !1979)
!1982 = !DILocation(line: 39, column: 18, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1978, file: !623, line: 38, column: 9)
!1984 = !DILocation(line: 39, column: 11, scope: !1983)
!1985 = !DILocation(line: 40, column: 11, scope: !1983)
!1986 = !DILocation(line: 40, column: 17, scope: !1983)
!1987 = !DILocation(line: 41, column: 9, scope: !1983)
!1988 = !DILocation(line: 42, column: 7, scope: !1979)
!1989 = !DILocation(line: 44, column: 3, scope: !1964)
!1990 = !DILocation(line: 45, column: 1, scope: !1964)
!1991 = distinct !DISubprogram(name: "hard_locale", scope: !625, file: !625, line: 38, type: !1965, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: false, unit: !624, variables: !113)
!1992 = !DILocalVariable(name: "category", arg: 1, scope: !1991, file: !625, line: 38, type: !61)
!1993 = !DILocation(line: 38, column: 18, scope: !1991)
!1994 = !DILocalVariable(name: "hard", scope: !1991, file: !625, line: 40, type: !74)
!1995 = !DILocation(line: 40, column: 8, scope: !1991)
!1996 = !DILocalVariable(name: "p", scope: !1991, file: !625, line: 41, type: !52)
!1997 = !DILocation(line: 41, column: 15, scope: !1991)
!1998 = !DILocation(line: 41, column: 30, scope: !1991)
!1999 = !DILocation(line: 41, column: 19, scope: !1991)
!2000 = !DILocation(line: 43, column: 7, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1991, file: !625, line: 43, column: 7)
!2002 = !DILocation(line: 43, column: 7, scope: !1991)
!2003 = !DILocation(line: 47, column: 23, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !625, line: 47, column: 15)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !625, line: 46, column: 9)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !625, line: 45, column: 11)
!2007 = distinct !DILexicalBlock(scope: !2001, file: !625, line: 44, column: 5)
!2008 = !DILocation(line: 47, column: 15, scope: !2004)
!2009 = !DILocation(line: 47, column: 31, scope: !2004)
!2010 = !DILocation(line: 47, column: 36, scope: !2004)
!2011 = !DILocation(line: 47, column: 47, scope: !2004)
!2012 = !DILocation(line: 47, column: 39, scope: !2004)
!2013 = !DILocation(line: 47, column: 59, scope: !2004)
!2014 = !DILocation(line: 47, column: 15, scope: !2005)
!2015 = !DILocation(line: 48, column: 18, scope: !2004)
!2016 = !DILocation(line: 48, column: 13, scope: !2004)
!2017 = !DILocation(line: 69, column: 5, scope: !2007)
!2018 = !DILocation(line: 71, column: 10, scope: !1991)
!2019 = !DILocation(line: 71, column: 3, scope: !1991)
!2020 = distinct !DISubprogram(name: "initbuffer", scope: !627, file: !627, line: 37, type: !2021, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: false, unit: !626, variables: !113)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{null, !2023}
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !2025, line: 26, size: 192, elements: !2026)
!2025 = !DIFile(filename: "../../lib/linebuffer.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!2026 = !{!2027, !2028, !2029}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2024, file: !2025, line: 28, baseType: !172, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2024, file: !2025, line: 29, baseType: !172, size: 64, offset: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2024, file: !2025, line: 30, baseType: !60, size: 64, offset: 128)
!2030 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2020, file: !627, line: 37, type: !2023)
!2031 = !DILocation(line: 37, column: 32, scope: !2020)
!2032 = !DILocation(line: 39, column: 11, scope: !2020)
!2033 = !DILocation(line: 39, column: 3, scope: !2020)
!2034 = !DILocation(line: 40, column: 1, scope: !2020)
!2035 = distinct !DISubprogram(name: "readlinebuffer", scope: !627, file: !627, line: 43, type: !2036, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: false, unit: !626, variables: !113)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!2023, !2023, !2038}
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1771, line: 7, baseType: !2040)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1773, line: 245, size: 1728, elements: !2041)
!2041 = !{!2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2040, file: !1773, line: 246, baseType: !61, size: 32)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2040, file: !1773, line: 251, baseType: !60, size: 64, offset: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2040, file: !1773, line: 252, baseType: !60, size: 64, offset: 128)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2040, file: !1773, line: 253, baseType: !60, size: 64, offset: 192)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2040, file: !1773, line: 254, baseType: !60, size: 64, offset: 256)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2040, file: !1773, line: 255, baseType: !60, size: 64, offset: 320)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2040, file: !1773, line: 256, baseType: !60, size: 64, offset: 384)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2040, file: !1773, line: 257, baseType: !60, size: 64, offset: 448)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2040, file: !1773, line: 258, baseType: !60, size: 64, offset: 512)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2040, file: !1773, line: 260, baseType: !60, size: 64, offset: 576)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2040, file: !1773, line: 261, baseType: !60, size: 64, offset: 640)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2040, file: !1773, line: 262, baseType: !60, size: 64, offset: 704)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2040, file: !1773, line: 264, baseType: !2055, size: 64, offset: 768)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1773, line: 160, size: 192, elements: !2057)
!2057 = !{!2058, !2059, !2061}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2056, file: !1773, line: 161, baseType: !2055, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2056, file: !1773, line: 162, baseType: !2060, size: 64, offset: 64)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2056, file: !1773, line: 166, baseType: !61, size: 32, offset: 128)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2040, file: !1773, line: 266, baseType: !2060, size: 64, offset: 832)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2040, file: !1773, line: 268, baseType: !61, size: 32, offset: 896)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2040, file: !1773, line: 272, baseType: !61, size: 32, offset: 928)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2040, file: !1773, line: 274, baseType: !1751, size: 64, offset: 960)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2040, file: !1773, line: 278, baseType: !62, size: 16, offset: 1024)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2040, file: !1773, line: 279, baseType: !1801, size: 8, offset: 1040)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2040, file: !1773, line: 280, baseType: !1803, size: 8, offset: 1048)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2040, file: !1773, line: 284, baseType: !1807, size: 64, offset: 1088)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2040, file: !1773, line: 293, baseType: !1810, size: 64, offset: 1152)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2040, file: !1773, line: 301, baseType: !55, size: 64, offset: 1216)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2040, file: !1773, line: 302, baseType: !55, size: 64, offset: 1280)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2040, file: !1773, line: 303, baseType: !55, size: 64, offset: 1344)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2040, file: !1773, line: 304, baseType: !55, size: 64, offset: 1408)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2040, file: !1773, line: 306, baseType: !172, size: 64, offset: 1472)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2040, file: !1773, line: 307, baseType: !61, size: 32, offset: 1536)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2040, file: !1773, line: 309, baseType: !1818, size: 160, offset: 1568)
!2078 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2035, file: !627, line: 43, type: !2023)
!2079 = !DILocation(line: 43, column: 36, scope: !2035)
!2080 = !DILocalVariable(name: "stream", arg: 2, scope: !2035, file: !627, line: 43, type: !2038)
!2081 = !DILocation(line: 43, column: 54, scope: !2035)
!2082 = !DILocation(line: 45, column: 32, scope: !2035)
!2083 = !DILocation(line: 45, column: 44, scope: !2035)
!2084 = !DILocation(line: 45, column: 10, scope: !2035)
!2085 = !DILocation(line: 45, column: 3, scope: !2035)
!2086 = distinct !DISubprogram(name: "readlinebuffer_delim", scope: !627, file: !627, line: 59, type: !2087, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: false, unit: !626, variables: !113)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!2023, !2023, !2038, !54}
!2089 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2086, file: !627, line: 59, type: !2023)
!2090 = !DILocation(line: 59, column: 42, scope: !2086)
!2091 = !DILocalVariable(name: "stream", arg: 2, scope: !2086, file: !627, line: 59, type: !2038)
!2092 = !DILocation(line: 59, column: 60, scope: !2086)
!2093 = !DILocalVariable(name: "delimiter", arg: 3, scope: !2086, file: !627, line: 60, type: !54)
!2094 = !DILocation(line: 60, column: 28, scope: !2086)
!2095 = !DILocalVariable(name: "c", scope: !2086, file: !627, line: 62, type: !61)
!2096 = !DILocation(line: 62, column: 7, scope: !2086)
!2097 = !DILocalVariable(name: "buffer", scope: !2086, file: !627, line: 63, type: !60)
!2098 = !DILocation(line: 63, column: 9, scope: !2086)
!2099 = !DILocation(line: 63, column: 18, scope: !2086)
!2100 = !DILocation(line: 63, column: 30, scope: !2086)
!2101 = !DILocalVariable(name: "p", scope: !2086, file: !627, line: 64, type: !60)
!2102 = !DILocation(line: 64, column: 9, scope: !2086)
!2103 = !DILocation(line: 64, column: 13, scope: !2086)
!2104 = !DILocation(line: 64, column: 25, scope: !2086)
!2105 = !DILocalVariable(name: "end", scope: !2086, file: !627, line: 65, type: !60)
!2106 = !DILocation(line: 65, column: 9, scope: !2086)
!2107 = !DILocation(line: 65, column: 15, scope: !2086)
!2108 = !DILocation(line: 65, column: 24, scope: !2086)
!2109 = !DILocation(line: 65, column: 36, scope: !2086)
!2110 = !DILocation(line: 65, column: 22, scope: !2086)
!2111 = !DILocation(line: 67, column: 7, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2086, file: !627, line: 67, column: 7)
!2113 = !DILocation(line: 67, column: 7, scope: !2086)
!2114 = !DILocation(line: 68, column: 5, scope: !2112)
!2115 = !DILocation(line: 70, column: 3, scope: !2086)
!2116 = distinct !{!2116, !2115, !2117}
!2117 = !DILocation(line: 91, column: 24, scope: !2086)
!2118 = !DILocation(line: 72, column: 11, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2086, file: !627, line: 71, column: 5)
!2120 = !DILocation(line: 72, column: 9, scope: !2119)
!2121 = !DILocation(line: 73, column: 11, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2119, file: !627, line: 73, column: 11)
!2123 = !DILocation(line: 73, column: 13, scope: !2122)
!2124 = !DILocation(line: 73, column: 11, scope: !2119)
!2125 = !DILocation(line: 75, column: 15, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !627, line: 75, column: 15)
!2127 = distinct !DILexicalBlock(scope: !2122, file: !627, line: 74, column: 9)
!2128 = !DILocation(line: 75, column: 20, scope: !2126)
!2129 = !DILocation(line: 75, column: 17, scope: !2126)
!2130 = !DILocation(line: 75, column: 27, scope: !2126)
!2131 = !DILocation(line: 75, column: 30, scope: !2126)
!2132 = !DILocation(line: 75, column: 15, scope: !2127)
!2133 = !DILocation(line: 76, column: 13, scope: !2126)
!2134 = !DILocation(line: 77, column: 15, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2127, file: !627, line: 77, column: 15)
!2136 = !DILocation(line: 77, column: 24, scope: !2135)
!2137 = !DILocation(line: 77, column: 21, scope: !2135)
!2138 = !DILocation(line: 77, column: 15, scope: !2127)
!2139 = !DILocation(line: 78, column: 13, scope: !2135)
!2140 = !DILocation(line: 79, column: 15, scope: !2127)
!2141 = !DILocation(line: 79, column: 13, scope: !2127)
!2142 = !DILocation(line: 80, column: 9, scope: !2127)
!2143 = !DILocation(line: 81, column: 11, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2119, file: !627, line: 81, column: 11)
!2145 = !DILocation(line: 81, column: 16, scope: !2144)
!2146 = !DILocation(line: 81, column: 13, scope: !2144)
!2147 = !DILocation(line: 81, column: 11, scope: !2119)
!2148 = !DILocalVariable(name: "oldsize", scope: !2149, file: !627, line: 83, type: !172)
!2149 = distinct !DILexicalBlock(scope: !2144, file: !627, line: 82, column: 9)
!2150 = !DILocation(line: 83, column: 18, scope: !2149)
!2151 = !DILocation(line: 83, column: 28, scope: !2149)
!2152 = !DILocation(line: 83, column: 40, scope: !2149)
!2153 = !DILocation(line: 84, column: 31, scope: !2149)
!2154 = !DILocation(line: 84, column: 40, scope: !2149)
!2155 = !DILocation(line: 84, column: 52, scope: !2149)
!2156 = !DILocation(line: 84, column: 20, scope: !2149)
!2157 = !DILocation(line: 84, column: 18, scope: !2149)
!2158 = !DILocation(line: 85, column: 15, scope: !2149)
!2159 = !DILocation(line: 85, column: 24, scope: !2149)
!2160 = !DILocation(line: 85, column: 22, scope: !2149)
!2161 = !DILocation(line: 85, column: 13, scope: !2149)
!2162 = !DILocation(line: 86, column: 32, scope: !2149)
!2163 = !DILocation(line: 86, column: 11, scope: !2149)
!2164 = !DILocation(line: 86, column: 23, scope: !2149)
!2165 = !DILocation(line: 86, column: 30, scope: !2149)
!2166 = !DILocation(line: 87, column: 17, scope: !2149)
!2167 = !DILocation(line: 87, column: 26, scope: !2149)
!2168 = !DILocation(line: 87, column: 38, scope: !2149)
!2169 = !DILocation(line: 87, column: 24, scope: !2149)
!2170 = !DILocation(line: 87, column: 15, scope: !2149)
!2171 = !DILocation(line: 88, column: 9, scope: !2149)
!2172 = !DILocation(line: 89, column: 14, scope: !2119)
!2173 = !DILocation(line: 89, column: 9, scope: !2119)
!2174 = !DILocation(line: 89, column: 12, scope: !2119)
!2175 = !DILocation(line: 90, column: 5, scope: !2119)
!2176 = !DILocation(line: 91, column: 10, scope: !2086)
!2177 = !DILocation(line: 91, column: 15, scope: !2086)
!2178 = !DILocation(line: 91, column: 12, scope: !2086)
!2179 = !DILocation(line: 93, column: 24, scope: !2086)
!2180 = !DILocation(line: 93, column: 28, scope: !2086)
!2181 = !DILocation(line: 93, column: 26, scope: !2086)
!2182 = !DILocation(line: 93, column: 3, scope: !2086)
!2183 = !DILocation(line: 93, column: 15, scope: !2086)
!2184 = !DILocation(line: 93, column: 22, scope: !2086)
!2185 = !DILocation(line: 94, column: 10, scope: !2086)
!2186 = !DILocation(line: 94, column: 3, scope: !2086)
!2187 = !DILocation(line: 95, column: 1, scope: !2086)
!2188 = distinct !DISubprogram(name: "freebuffer", scope: !627, file: !627, line: 100, type: !2021, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: false, unit: !626, variables: !113)
!2189 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2188, file: !627, line: 100, type: !2023)
!2190 = !DILocation(line: 100, column: 32, scope: !2188)
!2191 = !DILocation(line: 102, column: 9, scope: !2188)
!2192 = !DILocation(line: 102, column: 21, scope: !2188)
!2193 = !DILocation(line: 102, column: 3, scope: !2188)
!2194 = !DILocation(line: 103, column: 1, scope: !2188)
!2195 = distinct !DISubprogram(name: "memcasecmp", scope: !629, file: !629, line: 32, type: !2196, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: false, unit: !628, variables: !113)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!61, !2198, !2198, !172}
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2200 = !DILocalVariable(name: "vs1", arg: 1, scope: !2195, file: !629, line: 32, type: !2198)
!2201 = !DILocation(line: 32, column: 25, scope: !2195)
!2202 = !DILocalVariable(name: "vs2", arg: 2, scope: !2195, file: !629, line: 32, type: !2198)
!2203 = !DILocation(line: 32, column: 42, scope: !2195)
!2204 = !DILocalVariable(name: "n", arg: 3, scope: !2195, file: !629, line: 32, type: !172)
!2205 = !DILocation(line: 32, column: 54, scope: !2195)
!2206 = !DILocalVariable(name: "i", scope: !2195, file: !629, line: 34, type: !172)
!2207 = !DILocation(line: 34, column: 10, scope: !2195)
!2208 = !DILocalVariable(name: "s1", scope: !2195, file: !629, line: 35, type: !52)
!2209 = !DILocation(line: 35, column: 15, scope: !2195)
!2210 = !DILocation(line: 35, column: 20, scope: !2195)
!2211 = !DILocalVariable(name: "s2", scope: !2195, file: !629, line: 36, type: !52)
!2212 = !DILocation(line: 36, column: 15, scope: !2195)
!2213 = !DILocation(line: 36, column: 20, scope: !2195)
!2214 = !DILocation(line: 37, column: 10, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2195, file: !629, line: 37, column: 3)
!2216 = !DILocation(line: 37, column: 8, scope: !2215)
!2217 = !DILocation(line: 37, column: 15, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2215, file: !629, line: 37, column: 3)
!2219 = !DILocation(line: 37, column: 19, scope: !2218)
!2220 = !DILocation(line: 37, column: 17, scope: !2218)
!2221 = !DILocation(line: 37, column: 3, scope: !2215)
!2222 = !DILocalVariable(name: "u1", scope: !2223, file: !629, line: 39, type: !673)
!2223 = distinct !DILexicalBlock(scope: !2218, file: !629, line: 38, column: 5)
!2224 = !DILocation(line: 39, column: 21, scope: !2223)
!2225 = !DILocation(line: 39, column: 26, scope: !2223)
!2226 = !DILocation(line: 39, column: 29, scope: !2223)
!2227 = !DILocalVariable(name: "u2", scope: !2223, file: !629, line: 40, type: !673)
!2228 = !DILocation(line: 40, column: 21, scope: !2223)
!2229 = !DILocation(line: 40, column: 26, scope: !2223)
!2230 = !DILocation(line: 40, column: 29, scope: !2223)
!2231 = !DILocalVariable(name: "U1", scope: !2223, file: !629, line: 41, type: !61)
!2232 = !DILocation(line: 41, column: 11, scope: !2223)
!2233 = !DILocation(line: 41, column: 25, scope: !2223)
!2234 = !DILocation(line: 41, column: 16, scope: !2223)
!2235 = !DILocalVariable(name: "U2", scope: !2223, file: !629, line: 42, type: !61)
!2236 = !DILocation(line: 42, column: 11, scope: !2223)
!2237 = !DILocation(line: 42, column: 25, scope: !2223)
!2238 = !DILocation(line: 42, column: 16, scope: !2223)
!2239 = !DILocalVariable(name: "diff", scope: !2223, file: !629, line: 43, type: !61)
!2240 = !DILocation(line: 43, column: 11, scope: !2223)
!2241 = !DILocation(line: 43, column: 42, scope: !2223)
!2242 = !DILocation(line: 43, column: 47, scope: !2223)
!2243 = !DILocation(line: 43, column: 45, scope: !2223)
!2244 = !DILocation(line: 45, column: 11, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2223, file: !629, line: 45, column: 11)
!2246 = !DILocation(line: 45, column: 11, scope: !2223)
!2247 = !DILocation(line: 46, column: 16, scope: !2245)
!2248 = !DILocation(line: 46, column: 9, scope: !2245)
!2249 = !DILocation(line: 47, column: 5, scope: !2223)
!2250 = !DILocation(line: 37, column: 23, scope: !2218)
!2251 = !DILocation(line: 37, column: 3, scope: !2218)
!2252 = distinct !{!2252, !2221, !2253}
!2253 = !DILocation(line: 47, column: 5, scope: !2215)
!2254 = !DILocation(line: 48, column: 3, scope: !2195)
!2255 = !DILocation(line: 49, column: 1, scope: !2195)
!2256 = distinct !DISubprogram(name: "posix2_version", scope: !631, file: !631, line: 40, type: !2257, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: false, unit: !630, variables: !113)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!61}
!2259 = !DILocalVariable(name: "v", scope: !2256, file: !631, line: 42, type: !1375)
!2260 = !DILocation(line: 42, column: 12, scope: !2256)
!2261 = !DILocalVariable(name: "s", scope: !2256, file: !631, line: 43, type: !52)
!2262 = !DILocation(line: 43, column: 15, scope: !2256)
!2263 = !DILocation(line: 43, column: 19, scope: !2256)
!2264 = !DILocation(line: 45, column: 7, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2256, file: !631, line: 45, column: 7)
!2266 = !DILocation(line: 45, column: 9, scope: !2265)
!2267 = !DILocation(line: 45, column: 13, scope: !2265)
!2268 = !DILocation(line: 45, column: 12, scope: !2265)
!2269 = !DILocation(line: 45, column: 7, scope: !2256)
!2270 = !DILocalVariable(name: "e", scope: !2271, file: !631, line: 47, type: !60)
!2271 = distinct !DILexicalBlock(scope: !2265, file: !631, line: 46, column: 5)
!2272 = !DILocation(line: 47, column: 13, scope: !2271)
!2273 = !DILocalVariable(name: "i", scope: !2271, file: !631, line: 48, type: !1375)
!2274 = !DILocation(line: 48, column: 16, scope: !2271)
!2275 = !DILocation(line: 48, column: 28, scope: !2271)
!2276 = !DILocation(line: 48, column: 20, scope: !2271)
!2277 = !DILocation(line: 49, column: 14, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2271, file: !631, line: 49, column: 11)
!2279 = !DILocation(line: 49, column: 13, scope: !2278)
!2280 = !DILocation(line: 49, column: 11, scope: !2271)
!2281 = !DILocation(line: 50, column: 13, scope: !2278)
!2282 = !DILocation(line: 50, column: 11, scope: !2278)
!2283 = !DILocation(line: 50, column: 9, scope: !2278)
!2284 = !DILocation(line: 51, column: 5, scope: !2271)
!2285 = !DILocation(line: 53, column: 10, scope: !2256)
!2286 = !DILocation(line: 53, column: 12, scope: !2256)
!2287 = !DILocation(line: 53, column: 34, scope: !2256)
!2288 = !DILocation(line: 53, column: 36, scope: !2256)
!2289 = !DILocation(line: 53, column: 48, scope: !2256)
!2290 = !DILocation(line: 53, column: 3, scope: !2256)
!2291 = distinct !DISubprogram(name: "set_program_name", scope: !156, file: !156, line: 39, type: !1623, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: false, unit: !155, variables: !113)
!2292 = !DILocalVariable(name: "argv0", arg: 1, scope: !2291, file: !156, line: 39, type: !52)
!2293 = !DILocation(line: 39, column: 31, scope: !2291)
!2294 = !DILocalVariable(name: "slash", scope: !2291, file: !156, line: 46, type: !52)
!2295 = !DILocation(line: 46, column: 15, scope: !2291)
!2296 = !DILocalVariable(name: "base", scope: !2291, file: !156, line: 47, type: !52)
!2297 = !DILocation(line: 47, column: 15, scope: !2291)
!2298 = !DILocation(line: 51, column: 7, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2291, file: !156, line: 51, column: 7)
!2300 = !DILocation(line: 51, column: 13, scope: !2299)
!2301 = !DILocation(line: 51, column: 7, scope: !2291)
!2302 = !DILocation(line: 55, column: 14, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2299, file: !156, line: 52, column: 5)
!2304 = !DILocation(line: 54, column: 7, scope: !2303)
!2305 = !DILocation(line: 56, column: 7, scope: !2303)
!2306 = !DILocation(line: 59, column: 20, scope: !2291)
!2307 = !DILocation(line: 59, column: 11, scope: !2291)
!2308 = !DILocation(line: 59, column: 9, scope: !2291)
!2309 = !DILocation(line: 60, column: 11, scope: !2291)
!2310 = !DILocation(line: 60, column: 17, scope: !2291)
!2311 = !DILocation(line: 60, column: 27, scope: !2291)
!2312 = !DILocation(line: 60, column: 33, scope: !2291)
!2313 = !DILocation(line: 60, column: 39, scope: !2291)
!2314 = !DILocation(line: 60, column: 8, scope: !2291)
!2315 = !DILocation(line: 61, column: 7, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2291, file: !156, line: 61, column: 7)
!2317 = !DILocation(line: 61, column: 14, scope: !2316)
!2318 = !DILocation(line: 61, column: 12, scope: !2316)
!2319 = !DILocation(line: 61, column: 20, scope: !2316)
!2320 = !DILocation(line: 61, column: 25, scope: !2316)
!2321 = !DILocation(line: 61, column: 37, scope: !2316)
!2322 = !DILocation(line: 61, column: 42, scope: !2316)
!2323 = !DILocation(line: 61, column: 28, scope: !2316)
!2324 = !DILocation(line: 61, column: 61, scope: !2316)
!2325 = !DILocation(line: 61, column: 7, scope: !2291)
!2326 = !DILocation(line: 63, column: 15, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2316, file: !156, line: 62, column: 5)
!2328 = !DILocation(line: 63, column: 13, scope: !2327)
!2329 = !DILocation(line: 64, column: 20, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2327, file: !156, line: 64, column: 11)
!2331 = !DILocation(line: 64, column: 11, scope: !2330)
!2332 = !DILocation(line: 64, column: 36, scope: !2330)
!2333 = !DILocation(line: 64, column: 11, scope: !2327)
!2334 = !DILocation(line: 66, column: 19, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2330, file: !156, line: 65, column: 9)
!2336 = !DILocation(line: 66, column: 24, scope: !2335)
!2337 = !DILocation(line: 66, column: 17, scope: !2335)
!2338 = !DILocation(line: 70, column: 52, scope: !2335)
!2339 = !DILocation(line: 70, column: 41, scope: !2335)
!2340 = !DILocation(line: 72, column: 9, scope: !2335)
!2341 = !DILocation(line: 73, column: 5, scope: !2327)
!2342 = !DILocation(line: 84, column: 18, scope: !2291)
!2343 = !DILocation(line: 84, column: 16, scope: !2291)
!2344 = !DILocation(line: 90, column: 38, scope: !2291)
!2345 = !DILocation(line: 90, column: 27, scope: !2291)
!2346 = !DILocation(line: 92, column: 1, scope: !2291)
!2347 = distinct !DISubprogram(name: "clone_quoting_options", scope: !162, file: !162, line: 108, type: !2348, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!2350, !2350}
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!2351 = !DILocalVariable(name: "o", arg: 1, scope: !2347, file: !162, line: 108, type: !2350)
!2352 = !DILocation(line: 108, column: 48, scope: !2347)
!2353 = !DILocalVariable(name: "e", scope: !2347, file: !162, line: 110, type: !61)
!2354 = !DILocation(line: 110, column: 7, scope: !2347)
!2355 = !DILocation(line: 110, column: 11, scope: !2347)
!2356 = !DILocalVariable(name: "p", scope: !2347, file: !162, line: 111, type: !2350)
!2357 = !DILocation(line: 111, column: 27, scope: !2347)
!2358 = !DILocation(line: 111, column: 40, scope: !2347)
!2359 = !DILocation(line: 111, column: 44, scope: !2347)
!2360 = !DILocation(line: 111, column: 31, scope: !2347)
!2361 = !DILocation(line: 113, column: 11, scope: !2347)
!2362 = !DILocation(line: 113, column: 3, scope: !2347)
!2363 = !DILocation(line: 113, column: 9, scope: !2347)
!2364 = !DILocation(line: 114, column: 10, scope: !2347)
!2365 = !DILocation(line: 114, column: 3, scope: !2347)
!2366 = distinct !DISubprogram(name: "get_quoting_style", scope: !162, file: !162, line: 119, type: !2367, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!120, !2350}
!2369 = !DILocalVariable(name: "o", arg: 1, scope: !2366, file: !162, line: 119, type: !2350)
!2370 = !DILocation(line: 119, column: 44, scope: !2366)
!2371 = !DILocation(line: 121, column: 11, scope: !2366)
!2372 = !DILocation(line: 121, column: 15, scope: !2366)
!2373 = !DILocation(line: 121, column: 46, scope: !2366)
!2374 = !DILocation(line: 121, column: 3, scope: !2366)
!2375 = distinct !DISubprogram(name: "set_quoting_style", scope: !162, file: !162, line: 127, type: !2376, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{null, !2350, !120}
!2378 = !DILocalVariable(name: "o", arg: 1, scope: !2375, file: !162, line: 127, type: !2350)
!2379 = !DILocation(line: 127, column: 44, scope: !2375)
!2380 = !DILocalVariable(name: "s", arg: 2, scope: !2375, file: !162, line: 127, type: !120)
!2381 = !DILocation(line: 127, column: 66, scope: !2375)
!2382 = !DILocation(line: 129, column: 47, scope: !2375)
!2383 = !DILocation(line: 129, column: 4, scope: !2375)
!2384 = !DILocation(line: 129, column: 8, scope: !2375)
!2385 = !DILocation(line: 129, column: 39, scope: !2375)
!2386 = !DILocation(line: 129, column: 45, scope: !2375)
!2387 = !DILocation(line: 130, column: 1, scope: !2375)
!2388 = distinct !DISubprogram(name: "set_char_quoting", scope: !162, file: !162, line: 138, type: !2389, isLocal: false, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!61, !2350, !54, !61}
!2391 = !DILocalVariable(name: "o", arg: 1, scope: !2388, file: !162, line: 138, type: !2350)
!2392 = !DILocation(line: 138, column: 43, scope: !2388)
!2393 = !DILocalVariable(name: "c", arg: 2, scope: !2388, file: !162, line: 138, type: !54)
!2394 = !DILocation(line: 138, column: 51, scope: !2388)
!2395 = !DILocalVariable(name: "i", arg: 3, scope: !2388, file: !162, line: 138, type: !61)
!2396 = !DILocation(line: 138, column: 58, scope: !2388)
!2397 = !DILocalVariable(name: "uc", scope: !2388, file: !162, line: 140, type: !673)
!2398 = !DILocation(line: 140, column: 17, scope: !2388)
!2399 = !DILocation(line: 140, column: 22, scope: !2388)
!2400 = !DILocalVariable(name: "p", scope: !2388, file: !162, line: 141, type: !2401)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!2402 = !DILocation(line: 141, column: 17, scope: !2388)
!2403 = !DILocation(line: 142, column: 6, scope: !2388)
!2404 = !DILocation(line: 142, column: 10, scope: !2388)
!2405 = !DILocation(line: 142, column: 41, scope: !2388)
!2406 = !DILocation(line: 142, column: 5, scope: !2388)
!2407 = !DILocation(line: 142, column: 59, scope: !2388)
!2408 = !DILocation(line: 142, column: 62, scope: !2388)
!2409 = !DILocation(line: 142, column: 57, scope: !2388)
!2410 = !DILocalVariable(name: "shift", scope: !2388, file: !162, line: 143, type: !61)
!2411 = !DILocation(line: 143, column: 7, scope: !2388)
!2412 = !DILocation(line: 143, column: 15, scope: !2388)
!2413 = !DILocation(line: 143, column: 18, scope: !2388)
!2414 = !DILocalVariable(name: "r", scope: !2388, file: !162, line: 144, type: !61)
!2415 = !DILocation(line: 144, column: 7, scope: !2388)
!2416 = !DILocation(line: 144, column: 13, scope: !2388)
!2417 = !DILocation(line: 144, column: 12, scope: !2388)
!2418 = !DILocation(line: 144, column: 18, scope: !2388)
!2419 = !DILocation(line: 144, column: 15, scope: !2388)
!2420 = !DILocation(line: 144, column: 25, scope: !2388)
!2421 = !DILocation(line: 145, column: 11, scope: !2388)
!2422 = !DILocation(line: 145, column: 13, scope: !2388)
!2423 = !DILocation(line: 145, column: 20, scope: !2388)
!2424 = !DILocation(line: 145, column: 18, scope: !2388)
!2425 = !DILocation(line: 145, column: 26, scope: !2388)
!2426 = !DILocation(line: 145, column: 23, scope: !2388)
!2427 = !DILocation(line: 145, column: 4, scope: !2388)
!2428 = !DILocation(line: 145, column: 6, scope: !2388)
!2429 = !DILocation(line: 146, column: 10, scope: !2388)
!2430 = !DILocation(line: 146, column: 3, scope: !2388)
!2431 = distinct !DISubprogram(name: "set_quoting_flags", scope: !162, file: !162, line: 154, type: !2432, isLocal: false, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!61, !2350, !61}
!2434 = !DILocalVariable(name: "o", arg: 1, scope: !2431, file: !162, line: 154, type: !2350)
!2435 = !DILocation(line: 154, column: 44, scope: !2431)
!2436 = !DILocalVariable(name: "i", arg: 2, scope: !2431, file: !162, line: 154, type: !61)
!2437 = !DILocation(line: 154, column: 51, scope: !2431)
!2438 = !DILocalVariable(name: "r", scope: !2431, file: !162, line: 156, type: !61)
!2439 = !DILocation(line: 156, column: 7, scope: !2431)
!2440 = !DILocation(line: 157, column: 8, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2431, file: !162, line: 157, column: 7)
!2442 = !DILocation(line: 157, column: 7, scope: !2431)
!2443 = !DILocation(line: 158, column: 7, scope: !2441)
!2444 = !DILocation(line: 158, column: 5, scope: !2441)
!2445 = !DILocation(line: 159, column: 7, scope: !2431)
!2446 = !DILocation(line: 159, column: 10, scope: !2431)
!2447 = !DILocation(line: 159, column: 5, scope: !2431)
!2448 = !DILocation(line: 160, column: 14, scope: !2431)
!2449 = !DILocation(line: 160, column: 3, scope: !2431)
!2450 = !DILocation(line: 160, column: 6, scope: !2431)
!2451 = !DILocation(line: 160, column: 12, scope: !2431)
!2452 = !DILocation(line: 161, column: 10, scope: !2431)
!2453 = !DILocation(line: 161, column: 3, scope: !2431)
!2454 = distinct !DISubprogram(name: "set_custom_quoting", scope: !162, file: !162, line: 165, type: !2455, isLocal: false, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{null, !2350, !52, !52}
!2457 = !DILocalVariable(name: "o", arg: 1, scope: !2454, file: !162, line: 165, type: !2350)
!2458 = !DILocation(line: 165, column: 45, scope: !2454)
!2459 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2454, file: !162, line: 166, type: !52)
!2460 = !DILocation(line: 166, column: 33, scope: !2454)
!2461 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2454, file: !162, line: 166, type: !52)
!2462 = !DILocation(line: 166, column: 57, scope: !2454)
!2463 = !DILocation(line: 168, column: 8, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2454, file: !162, line: 168, column: 7)
!2465 = !DILocation(line: 168, column: 7, scope: !2454)
!2466 = !DILocation(line: 169, column: 7, scope: !2464)
!2467 = !DILocation(line: 169, column: 5, scope: !2464)
!2468 = !DILocation(line: 170, column: 3, scope: !2454)
!2469 = !DILocation(line: 170, column: 6, scope: !2454)
!2470 = !DILocation(line: 170, column: 12, scope: !2454)
!2471 = !DILocation(line: 171, column: 8, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2454, file: !162, line: 171, column: 7)
!2473 = !DILocation(line: 171, column: 19, scope: !2472)
!2474 = !DILocation(line: 171, column: 23, scope: !2472)
!2475 = !DILocation(line: 171, column: 7, scope: !2454)
!2476 = !DILocation(line: 172, column: 5, scope: !2472)
!2477 = !DILocation(line: 173, column: 19, scope: !2454)
!2478 = !DILocation(line: 173, column: 3, scope: !2454)
!2479 = !DILocation(line: 173, column: 6, scope: !2454)
!2480 = !DILocation(line: 173, column: 17, scope: !2454)
!2481 = !DILocation(line: 174, column: 20, scope: !2454)
!2482 = !DILocation(line: 174, column: 3, scope: !2454)
!2483 = !DILocation(line: 174, column: 6, scope: !2454)
!2484 = !DILocation(line: 174, column: 18, scope: !2454)
!2485 = !DILocation(line: 175, column: 1, scope: !2454)
!2486 = distinct !DISubprogram(name: "quotearg_buffer", scope: !162, file: !162, line: 668, type: !2487, isLocal: false, isDefinition: true, scopeLine: 671, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!172, !60, !172, !52, !172, !2489}
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!2491 = !DILocalVariable(name: "buffer", arg: 1, scope: !2486, file: !162, line: 668, type: !60)
!2492 = !DILocation(line: 668, column: 24, scope: !2486)
!2493 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2486, file: !162, line: 668, type: !172)
!2494 = !DILocation(line: 668, column: 39, scope: !2486)
!2495 = !DILocalVariable(name: "arg", arg: 3, scope: !2486, file: !162, line: 669, type: !52)
!2496 = !DILocation(line: 669, column: 30, scope: !2486)
!2497 = !DILocalVariable(name: "argsize", arg: 4, scope: !2486, file: !162, line: 669, type: !172)
!2498 = !DILocation(line: 669, column: 42, scope: !2486)
!2499 = !DILocalVariable(name: "o", arg: 5, scope: !2486, file: !162, line: 670, type: !2489)
!2500 = !DILocation(line: 670, column: 48, scope: !2486)
!2501 = !DILocalVariable(name: "p", scope: !2486, file: !162, line: 672, type: !2489)
!2502 = !DILocation(line: 672, column: 33, scope: !2486)
!2503 = !DILocation(line: 672, column: 37, scope: !2486)
!2504 = !DILocation(line: 672, column: 41, scope: !2486)
!2505 = !DILocalVariable(name: "e", scope: !2486, file: !162, line: 673, type: !61)
!2506 = !DILocation(line: 673, column: 7, scope: !2486)
!2507 = !DILocation(line: 673, column: 11, scope: !2486)
!2508 = !DILocalVariable(name: "r", scope: !2486, file: !162, line: 674, type: !172)
!2509 = !DILocation(line: 674, column: 10, scope: !2486)
!2510 = !DILocation(line: 674, column: 40, scope: !2486)
!2511 = !DILocation(line: 674, column: 48, scope: !2486)
!2512 = !DILocation(line: 674, column: 60, scope: !2486)
!2513 = !DILocation(line: 674, column: 65, scope: !2486)
!2514 = !DILocation(line: 675, column: 40, scope: !2486)
!2515 = !DILocation(line: 675, column: 43, scope: !2486)
!2516 = !DILocation(line: 675, column: 50, scope: !2486)
!2517 = !DILocation(line: 675, column: 53, scope: !2486)
!2518 = !DILocation(line: 675, column: 60, scope: !2486)
!2519 = !DILocation(line: 675, column: 63, scope: !2486)
!2520 = !DILocation(line: 676, column: 40, scope: !2486)
!2521 = !DILocation(line: 676, column: 43, scope: !2486)
!2522 = !DILocation(line: 676, column: 55, scope: !2486)
!2523 = !DILocation(line: 676, column: 58, scope: !2486)
!2524 = !DILocation(line: 674, column: 14, scope: !2486)
!2525 = !DILocation(line: 677, column: 11, scope: !2486)
!2526 = !DILocation(line: 677, column: 3, scope: !2486)
!2527 = !DILocation(line: 677, column: 9, scope: !2486)
!2528 = !DILocation(line: 678, column: 10, scope: !2486)
!2529 = !DILocation(line: 678, column: 3, scope: !2486)
!2530 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !162, file: !162, line: 242, type: !2531, isLocal: true, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!172, !60, !172, !52, !172, !120, !61, !2533, !52, !52}
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!2535 = !DILocalVariable(name: "buffer", arg: 1, scope: !2530, file: !162, line: 242, type: !60)
!2536 = !DILocation(line: 242, column: 33, scope: !2530)
!2537 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2530, file: !162, line: 242, type: !172)
!2538 = !DILocation(line: 242, column: 48, scope: !2530)
!2539 = !DILocalVariable(name: "arg", arg: 3, scope: !2530, file: !162, line: 243, type: !52)
!2540 = !DILocation(line: 243, column: 39, scope: !2530)
!2541 = !DILocalVariable(name: "argsize", arg: 4, scope: !2530, file: !162, line: 243, type: !172)
!2542 = !DILocation(line: 243, column: 51, scope: !2530)
!2543 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2530, file: !162, line: 244, type: !120)
!2544 = !DILocation(line: 244, column: 46, scope: !2530)
!2545 = !DILocalVariable(name: "flags", arg: 6, scope: !2530, file: !162, line: 244, type: !61)
!2546 = !DILocation(line: 244, column: 65, scope: !2530)
!2547 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2530, file: !162, line: 245, type: !2533)
!2548 = !DILocation(line: 245, column: 47, scope: !2530)
!2549 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2530, file: !162, line: 246, type: !52)
!2550 = !DILocation(line: 246, column: 39, scope: !2530)
!2551 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2530, file: !162, line: 247, type: !52)
!2552 = !DILocation(line: 247, column: 39, scope: !2530)
!2553 = !DILocalVariable(name: "i", scope: !2530, file: !162, line: 249, type: !172)
!2554 = !DILocation(line: 249, column: 10, scope: !2530)
!2555 = !DILocalVariable(name: "len", scope: !2530, file: !162, line: 250, type: !172)
!2556 = !DILocation(line: 250, column: 10, scope: !2530)
!2557 = !DILocalVariable(name: "quote_string", scope: !2530, file: !162, line: 251, type: !52)
!2558 = !DILocation(line: 251, column: 15, scope: !2530)
!2559 = !DILocalVariable(name: "quote_string_len", scope: !2530, file: !162, line: 252, type: !172)
!2560 = !DILocation(line: 252, column: 10, scope: !2530)
!2561 = !DILocalVariable(name: "backslash_escapes", scope: !2530, file: !162, line: 253, type: !74)
!2562 = !DILocation(line: 253, column: 8, scope: !2530)
!2563 = !DILocalVariable(name: "unibyte_locale", scope: !2530, file: !162, line: 254, type: !74)
!2564 = !DILocation(line: 254, column: 8, scope: !2530)
!2565 = !DILocation(line: 254, column: 25, scope: !2530)
!2566 = !DILocation(line: 254, column: 36, scope: !2530)
!2567 = !DILocalVariable(name: "elide_outer_quotes", scope: !2530, file: !162, line: 255, type: !74)
!2568 = !DILocation(line: 255, column: 8, scope: !2530)
!2569 = !DILocation(line: 255, column: 30, scope: !2530)
!2570 = !DILocation(line: 255, column: 36, scope: !2530)
!2571 = !DILocation(line: 255, column: 61, scope: !2530)
!2572 = !DILocation(line: 266, column: 11, scope: !2530)
!2573 = !DILocation(line: 266, column: 3, scope: !2530)
!2574 = !DILocation(line: 269, column: 21, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2530, file: !162, line: 267, column: 5)
!2576 = !DILocation(line: 270, column: 26, scope: !2575)
!2577 = !DILocation(line: 270, column: 7, scope: !2575)
!2578 = !DILocation(line: 273, column: 12, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2575, file: !162, line: 273, column: 11)
!2580 = !DILocation(line: 273, column: 11, scope: !2575)
!2581 = !DILocation(line: 274, column: 9, scope: !2579)
!2582 = distinct !{!2582, !2581, !2581}
!2583 = !DILocation(line: 274, column: 9, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2585, file: !162, line: 274, column: 9)
!2585 = distinct !DILexicalBlock(scope: !2579, file: !162, line: 274, column: 9)
!2586 = !DILocation(line: 274, column: 9, scope: !2585)
!2587 = !DILocation(line: 275, column: 25, scope: !2575)
!2588 = !DILocation(line: 276, column: 20, scope: !2575)
!2589 = !DILocation(line: 277, column: 24, scope: !2575)
!2590 = !DILocation(line: 278, column: 7, scope: !2575)
!2591 = !DILocation(line: 281, column: 25, scope: !2575)
!2592 = !DILocation(line: 282, column: 26, scope: !2575)
!2593 = !DILocation(line: 283, column: 7, scope: !2575)
!2594 = !DILocation(line: 289, column: 13, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !162, line: 289, column: 13)
!2596 = distinct !DILexicalBlock(scope: !2575, file: !162, line: 288, column: 7)
!2597 = !DILocation(line: 289, column: 27, scope: !2595)
!2598 = !DILocation(line: 289, column: 13, scope: !2596)
!2599 = !DILocation(line: 312, column: 50, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2595, file: !162, line: 290, column: 11)
!2601 = !DILocation(line: 312, column: 26, scope: !2600)
!2602 = !DILocation(line: 312, column: 24, scope: !2600)
!2603 = !DILocation(line: 313, column: 51, scope: !2600)
!2604 = !DILocation(line: 313, column: 27, scope: !2600)
!2605 = !DILocation(line: 313, column: 25, scope: !2600)
!2606 = !DILocation(line: 314, column: 11, scope: !2600)
!2607 = !DILocation(line: 315, column: 14, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2596, file: !162, line: 315, column: 13)
!2609 = !DILocation(line: 315, column: 13, scope: !2596)
!2610 = !DILocation(line: 316, column: 31, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2608, file: !162, line: 316, column: 11)
!2612 = !DILocation(line: 316, column: 29, scope: !2611)
!2613 = !DILocation(line: 316, column: 16, scope: !2611)
!2614 = !DILocation(line: 316, column: 44, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2611, file: !162, line: 316, column: 11)
!2616 = !DILocation(line: 316, column: 43, scope: !2615)
!2617 = !DILocation(line: 316, column: 11, scope: !2611)
!2618 = !DILocation(line: 317, column: 13, scope: !2615)
!2619 = distinct !{!2619, !2618, !2618}
!2620 = !DILocation(line: 317, column: 13, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !162, line: 317, column: 13)
!2622 = distinct !DILexicalBlock(scope: !2615, file: !162, line: 317, column: 13)
!2623 = !DILocation(line: 317, column: 13, scope: !2622)
!2624 = !DILocation(line: 316, column: 70, scope: !2615)
!2625 = !DILocation(line: 316, column: 11, scope: !2615)
!2626 = distinct !{!2626, !2617, !2627}
!2627 = !DILocation(line: 317, column: 13, scope: !2611)
!2628 = !DILocation(line: 318, column: 27, scope: !2596)
!2629 = !DILocation(line: 319, column: 24, scope: !2596)
!2630 = !DILocation(line: 319, column: 22, scope: !2596)
!2631 = !DILocation(line: 320, column: 36, scope: !2596)
!2632 = !DILocation(line: 320, column: 28, scope: !2596)
!2633 = !DILocation(line: 320, column: 26, scope: !2596)
!2634 = !DILocation(line: 322, column: 7, scope: !2575)
!2635 = !DILocation(line: 325, column: 21, scope: !2575)
!2636 = !DILocation(line: 326, column: 26, scope: !2575)
!2637 = !DILocation(line: 326, column: 7, scope: !2575)
!2638 = !DILocation(line: 329, column: 12, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2575, file: !162, line: 329, column: 11)
!2640 = !DILocation(line: 329, column: 11, scope: !2575)
!2641 = !DILocation(line: 330, column: 9, scope: !2639)
!2642 = distinct !{!2642, !2641, !2641}
!2643 = !DILocation(line: 330, column: 9, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2645, file: !162, line: 330, column: 9)
!2645 = distinct !DILexicalBlock(scope: !2639, file: !162, line: 330, column: 9)
!2646 = !DILocation(line: 330, column: 9, scope: !2645)
!2647 = !DILocation(line: 331, column: 20, scope: !2575)
!2648 = !DILocation(line: 332, column: 24, scope: !2575)
!2649 = !DILocation(line: 333, column: 7, scope: !2575)
!2650 = !DILocation(line: 336, column: 26, scope: !2575)
!2651 = !DILocation(line: 337, column: 7, scope: !2575)
!2652 = !DILocation(line: 340, column: 7, scope: !2575)
!2653 = !DILocation(line: 343, column: 10, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2530, file: !162, line: 343, column: 3)
!2655 = !DILocation(line: 343, column: 8, scope: !2654)
!2656 = !DILocation(line: 343, column: 19, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2654, file: !162, line: 343, column: 3)
!2658 = !DILocation(line: 343, column: 27, scope: !2657)
!2659 = !DILocation(line: 343, column: 41, scope: !2657)
!2660 = !DILocation(line: 343, column: 45, scope: !2657)
!2661 = !DILocation(line: 343, column: 48, scope: !2657)
!2662 = !DILocation(line: 343, column: 58, scope: !2657)
!2663 = !DILocation(line: 343, column: 63, scope: !2657)
!2664 = !DILocation(line: 343, column: 60, scope: !2657)
!2665 = !DILocation(line: 343, column: 16, scope: !2657)
!2666 = !DILocation(line: 343, column: 3, scope: !2654)
!2667 = !DILocalVariable(name: "c", scope: !2668, file: !162, line: 345, type: !673)
!2668 = distinct !DILexicalBlock(scope: !2657, file: !162, line: 344, column: 5)
!2669 = !DILocation(line: 345, column: 21, scope: !2668)
!2670 = !DILocalVariable(name: "esc", scope: !2668, file: !162, line: 346, type: !673)
!2671 = !DILocation(line: 346, column: 21, scope: !2668)
!2672 = !DILocalVariable(name: "is_right_quote", scope: !2668, file: !162, line: 347, type: !74)
!2673 = !DILocation(line: 347, column: 12, scope: !2668)
!2674 = !DILocation(line: 349, column: 11, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2668, file: !162, line: 349, column: 11)
!2676 = !DILocation(line: 350, column: 11, scope: !2675)
!2677 = !DILocation(line: 350, column: 14, scope: !2675)
!2678 = !DILocation(line: 351, column: 11, scope: !2675)
!2679 = !DILocation(line: 351, column: 14, scope: !2675)
!2680 = !DILocation(line: 351, column: 18, scope: !2675)
!2681 = !DILocation(line: 351, column: 16, scope: !2675)
!2682 = !DILocation(line: 351, column: 38, scope: !2675)
!2683 = !DILocation(line: 351, column: 35, scope: !2675)
!2684 = !DILocation(line: 352, column: 11, scope: !2675)
!2685 = !DILocation(line: 352, column: 22, scope: !2675)
!2686 = !DILocation(line: 352, column: 28, scope: !2675)
!2687 = !DILocation(line: 352, column: 26, scope: !2675)
!2688 = !DILocation(line: 352, column: 31, scope: !2675)
!2689 = !DILocation(line: 352, column: 45, scope: !2675)
!2690 = !DILocation(line: 352, column: 14, scope: !2675)
!2691 = !DILocation(line: 352, column: 63, scope: !2675)
!2692 = !DILocation(line: 349, column: 11, scope: !2668)
!2693 = !DILocation(line: 354, column: 15, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2695, file: !162, line: 354, column: 15)
!2695 = distinct !DILexicalBlock(scope: !2675, file: !162, line: 353, column: 9)
!2696 = !DILocation(line: 354, column: 15, scope: !2695)
!2697 = !DILocation(line: 355, column: 13, scope: !2694)
!2698 = !DILocation(line: 356, column: 26, scope: !2695)
!2699 = !DILocation(line: 357, column: 9, scope: !2695)
!2700 = !DILocation(line: 359, column: 11, scope: !2668)
!2701 = !DILocation(line: 359, column: 15, scope: !2668)
!2702 = !DILocation(line: 359, column: 9, scope: !2668)
!2703 = !DILocation(line: 360, column: 15, scope: !2668)
!2704 = !DILocation(line: 360, column: 7, scope: !2668)
!2705 = !DILocation(line: 363, column: 15, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2707, file: !162, line: 363, column: 15)
!2707 = distinct !DILexicalBlock(scope: !2668, file: !162, line: 361, column: 9)
!2708 = !DILocation(line: 363, column: 15, scope: !2707)
!2709 = !DILocation(line: 365, column: 19, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !162, line: 365, column: 19)
!2711 = distinct !DILexicalBlock(scope: !2706, file: !162, line: 364, column: 13)
!2712 = !DILocation(line: 365, column: 19, scope: !2711)
!2713 = !DILocation(line: 366, column: 17, scope: !2710)
!2714 = !DILocation(line: 367, column: 15, scope: !2711)
!2715 = distinct !{!2715, !2714, !2714}
!2716 = !DILocation(line: 367, column: 15, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2718, file: !162, line: 367, column: 15)
!2718 = distinct !DILexicalBlock(scope: !2711, file: !162, line: 367, column: 15)
!2719 = !DILocation(line: 367, column: 15, scope: !2718)
!2720 = !DILocation(line: 373, column: 19, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2711, file: !162, line: 373, column: 19)
!2722 = !DILocation(line: 373, column: 21, scope: !2721)
!2723 = !DILocation(line: 373, column: 27, scope: !2721)
!2724 = !DILocation(line: 373, column: 25, scope: !2721)
!2725 = !DILocation(line: 373, column: 35, scope: !2721)
!2726 = !DILocation(line: 373, column: 45, scope: !2721)
!2727 = !DILocation(line: 373, column: 49, scope: !2721)
!2728 = !DILocation(line: 373, column: 51, scope: !2721)
!2729 = !DILocation(line: 373, column: 42, scope: !2721)
!2730 = !DILocation(line: 373, column: 56, scope: !2721)
!2731 = !DILocation(line: 373, column: 59, scope: !2721)
!2732 = !DILocation(line: 373, column: 63, scope: !2721)
!2733 = !DILocation(line: 373, column: 65, scope: !2721)
!2734 = !DILocation(line: 373, column: 70, scope: !2721)
!2735 = !DILocation(line: 373, column: 19, scope: !2711)
!2736 = !DILocation(line: 375, column: 19, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2721, file: !162, line: 374, column: 17)
!2738 = distinct !{!2738, !2736, !2736}
!2739 = !DILocation(line: 375, column: 19, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2741, file: !162, line: 375, column: 19)
!2741 = distinct !DILexicalBlock(scope: !2737, file: !162, line: 375, column: 19)
!2742 = !DILocation(line: 375, column: 19, scope: !2741)
!2743 = !DILocation(line: 376, column: 19, scope: !2737)
!2744 = distinct !{!2744, !2743, !2743}
!2745 = !DILocation(line: 376, column: 19, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !162, line: 376, column: 19)
!2747 = distinct !DILexicalBlock(scope: !2737, file: !162, line: 376, column: 19)
!2748 = !DILocation(line: 376, column: 19, scope: !2747)
!2749 = !DILocation(line: 377, column: 17, scope: !2737)
!2750 = !DILocation(line: 378, column: 17, scope: !2711)
!2751 = !DILocation(line: 383, column: 13, scope: !2711)
!2752 = !DILocation(line: 384, column: 20, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2706, file: !162, line: 384, column: 20)
!2754 = !DILocation(line: 384, column: 26, scope: !2753)
!2755 = !DILocation(line: 384, column: 20, scope: !2706)
!2756 = !DILocation(line: 385, column: 13, scope: !2753)
!2757 = !DILocation(line: 386, column: 11, scope: !2707)
!2758 = !DILocation(line: 389, column: 19, scope: !2707)
!2759 = !DILocation(line: 389, column: 11, scope: !2707)
!2760 = !DILocation(line: 392, column: 19, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2762, file: !162, line: 392, column: 19)
!2762 = distinct !DILexicalBlock(scope: !2707, file: !162, line: 390, column: 13)
!2763 = !DILocation(line: 392, column: 19, scope: !2762)
!2764 = !DILocation(line: 393, column: 17, scope: !2761)
!2765 = !DILocation(line: 394, column: 15, scope: !2762)
!2766 = !DILocation(line: 397, column: 20, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2762, file: !162, line: 397, column: 19)
!2768 = !DILocation(line: 397, column: 26, scope: !2767)
!2769 = !DILocation(line: 398, column: 19, scope: !2767)
!2770 = !DILocation(line: 398, column: 22, scope: !2767)
!2771 = !DILocation(line: 398, column: 24, scope: !2767)
!2772 = !DILocation(line: 398, column: 30, scope: !2767)
!2773 = !DILocation(line: 398, column: 28, scope: !2767)
!2774 = !DILocation(line: 398, column: 38, scope: !2767)
!2775 = !DILocation(line: 398, column: 41, scope: !2767)
!2776 = !DILocation(line: 398, column: 45, scope: !2767)
!2777 = !DILocation(line: 398, column: 47, scope: !2767)
!2778 = !DILocation(line: 398, column: 52, scope: !2767)
!2779 = !DILocation(line: 397, column: 19, scope: !2762)
!2780 = !DILocation(line: 399, column: 25, scope: !2767)
!2781 = !DILocation(line: 399, column: 29, scope: !2767)
!2782 = !DILocation(line: 399, column: 31, scope: !2767)
!2783 = !DILocation(line: 399, column: 17, scope: !2767)
!2784 = !DILocation(line: 406, column: 25, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2786, file: !162, line: 406, column: 25)
!2786 = distinct !DILexicalBlock(scope: !2767, file: !162, line: 400, column: 19)
!2787 = !DILocation(line: 406, column: 25, scope: !2786)
!2788 = !DILocation(line: 407, column: 23, scope: !2785)
!2789 = !DILocation(line: 408, column: 25, scope: !2786)
!2790 = !DILocation(line: 408, column: 29, scope: !2786)
!2791 = !DILocation(line: 408, column: 31, scope: !2786)
!2792 = !DILocation(line: 408, column: 23, scope: !2786)
!2793 = !DILocation(line: 409, column: 23, scope: !2786)
!2794 = !DILocation(line: 410, column: 21, scope: !2786)
!2795 = distinct !{!2795, !2794, !2794}
!2796 = !DILocation(line: 410, column: 21, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2798, file: !162, line: 410, column: 21)
!2798 = distinct !DILexicalBlock(scope: !2786, file: !162, line: 410, column: 21)
!2799 = !DILocation(line: 410, column: 21, scope: !2798)
!2800 = !DILocation(line: 411, column: 21, scope: !2786)
!2801 = distinct !{!2801, !2800, !2800}
!2802 = !DILocation(line: 411, column: 21, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !162, line: 411, column: 21)
!2804 = distinct !DILexicalBlock(scope: !2786, file: !162, line: 411, column: 21)
!2805 = !DILocation(line: 411, column: 21, scope: !2804)
!2806 = !DILocation(line: 412, column: 21, scope: !2786)
!2807 = distinct !{!2807, !2806, !2806}
!2808 = !DILocation(line: 412, column: 21, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2810, file: !162, line: 412, column: 21)
!2810 = distinct !DILexicalBlock(scope: !2786, file: !162, line: 412, column: 21)
!2811 = !DILocation(line: 412, column: 21, scope: !2810)
!2812 = !DILocation(line: 413, column: 21, scope: !2786)
!2813 = distinct !{!2813, !2812, !2812}
!2814 = !DILocation(line: 413, column: 21, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2816, file: !162, line: 413, column: 21)
!2816 = distinct !DILexicalBlock(scope: !2786, file: !162, line: 413, column: 21)
!2817 = !DILocation(line: 413, column: 21, scope: !2816)
!2818 = !DILocation(line: 414, column: 21, scope: !2786)
!2819 = !DILocation(line: 417, column: 21, scope: !2786)
!2820 = !DILocation(line: 418, column: 19, scope: !2786)
!2821 = !DILocation(line: 419, column: 15, scope: !2762)
!2822 = !DILocation(line: 422, column: 15, scope: !2762)
!2823 = !DILocation(line: 424, column: 11, scope: !2707)
!2824 = !DILocation(line: 426, column: 24, scope: !2707)
!2825 = !DILocation(line: 426, column: 31, scope: !2707)
!2826 = !DILocation(line: 427, column: 24, scope: !2707)
!2827 = !DILocation(line: 427, column: 31, scope: !2707)
!2828 = !DILocation(line: 428, column: 24, scope: !2707)
!2829 = !DILocation(line: 428, column: 31, scope: !2707)
!2830 = !DILocation(line: 429, column: 24, scope: !2707)
!2831 = !DILocation(line: 429, column: 31, scope: !2707)
!2832 = !DILocation(line: 430, column: 24, scope: !2707)
!2833 = !DILocation(line: 430, column: 31, scope: !2707)
!2834 = !DILocation(line: 431, column: 24, scope: !2707)
!2835 = !DILocation(line: 431, column: 31, scope: !2707)
!2836 = !DILocation(line: 432, column: 24, scope: !2707)
!2837 = !DILocation(line: 432, column: 31, scope: !2707)
!2838 = !DILocation(line: 433, column: 26, scope: !2707)
!2839 = !DILocation(line: 433, column: 24, scope: !2707)
!2840 = !DILocation(line: 436, column: 15, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2707, file: !162, line: 436, column: 15)
!2842 = !DILocation(line: 436, column: 33, scope: !2841)
!2843 = !DILocation(line: 436, column: 36, scope: !2841)
!2844 = !DILocation(line: 436, column: 55, scope: !2841)
!2845 = !DILocation(line: 436, column: 58, scope: !2841)
!2846 = !DILocation(line: 436, column: 15, scope: !2707)
!2847 = !DILocation(line: 437, column: 13, scope: !2841)
!2848 = !DILocation(line: 440, column: 15, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2707, file: !162, line: 440, column: 15)
!2850 = !DILocation(line: 440, column: 29, scope: !2849)
!2851 = !DILocation(line: 441, column: 15, scope: !2849)
!2852 = !DILocation(line: 441, column: 18, scope: !2849)
!2853 = !DILocation(line: 440, column: 15, scope: !2707)
!2854 = !DILocation(line: 442, column: 13, scope: !2849)
!2855 = !DILocation(line: 445, column: 15, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2707, file: !162, line: 445, column: 15)
!2857 = !DILocation(line: 445, column: 15, scope: !2707)
!2858 = !DILocation(line: 447, column: 19, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2856, file: !162, line: 446, column: 13)
!2860 = !DILocation(line: 447, column: 17, scope: !2859)
!2861 = !DILocation(line: 448, column: 15, scope: !2859)
!2862 = !DILocation(line: 450, column: 11, scope: !2707)
!2863 = !DILocation(line: 453, column: 18, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2707, file: !162, line: 453, column: 15)
!2865 = !DILocation(line: 453, column: 26, scope: !2864)
!2866 = !DILocation(line: 453, column: 15, scope: !2707)
!2867 = !DILocation(line: 453, column: 40, scope: !2864)
!2868 = !DILocation(line: 453, column: 47, scope: !2864)
!2869 = !DILocation(line: 453, column: 57, scope: !2864)
!2870 = !DILocation(line: 453, column: 65, scope: !2864)
!2871 = !DILocation(line: 454, column: 13, scope: !2864)
!2872 = !DILocation(line: 453, column: 69, scope: !2864)
!2873 = !DILocation(line: 457, column: 15, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2707, file: !162, line: 457, column: 15)
!2875 = !DILocation(line: 457, column: 17, scope: !2874)
!2876 = !DILocation(line: 457, column: 15, scope: !2707)
!2877 = !DILocation(line: 458, column: 13, scope: !2874)
!2878 = !DILocation(line: 457, column: 20, scope: !2874)
!2879 = !DILocation(line: 473, column: 15, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2707, file: !162, line: 473, column: 15)
!2881 = !DILocation(line: 473, column: 29, scope: !2880)
!2882 = !DILocation(line: 474, column: 15, scope: !2880)
!2883 = !DILocation(line: 474, column: 18, scope: !2880)
!2884 = !DILocation(line: 473, column: 15, scope: !2707)
!2885 = !DILocation(line: 475, column: 13, scope: !2880)
!2886 = !DILocation(line: 476, column: 11, scope: !2707)
!2887 = !DILocation(line: 479, column: 15, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2707, file: !162, line: 479, column: 15)
!2889 = !DILocation(line: 479, column: 29, scope: !2888)
!2890 = !DILocation(line: 479, column: 15, scope: !2707)
!2891 = !DILocation(line: 481, column: 19, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2893, file: !162, line: 481, column: 19)
!2893 = distinct !DILexicalBlock(scope: !2888, file: !162, line: 480, column: 13)
!2894 = !DILocation(line: 481, column: 19, scope: !2893)
!2895 = !DILocation(line: 482, column: 17, scope: !2892)
!2896 = !DILocation(line: 483, column: 15, scope: !2893)
!2897 = distinct !{!2897, !2896, !2896}
!2898 = !DILocation(line: 483, column: 15, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2900, file: !162, line: 483, column: 15)
!2900 = distinct !DILexicalBlock(scope: !2893, file: !162, line: 483, column: 15)
!2901 = !DILocation(line: 483, column: 15, scope: !2900)
!2902 = !DILocation(line: 484, column: 15, scope: !2893)
!2903 = distinct !{!2903, !2902, !2902}
!2904 = !DILocation(line: 484, column: 15, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2906, file: !162, line: 484, column: 15)
!2906 = distinct !DILexicalBlock(scope: !2893, file: !162, line: 484, column: 15)
!2907 = !DILocation(line: 484, column: 15, scope: !2906)
!2908 = !DILocation(line: 485, column: 15, scope: !2893)
!2909 = distinct !{!2909, !2908, !2908}
!2910 = !DILocation(line: 485, column: 15, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2912, file: !162, line: 485, column: 15)
!2912 = distinct !DILexicalBlock(scope: !2893, file: !162, line: 485, column: 15)
!2913 = !DILocation(line: 485, column: 15, scope: !2912)
!2914 = !DILocation(line: 486, column: 13, scope: !2893)
!2915 = !DILocation(line: 487, column: 11, scope: !2707)
!2916 = !DILocation(line: 511, column: 11, scope: !2707)
!2917 = !DILocalVariable(name: "m", scope: !2918, file: !162, line: 521, type: !172)
!2918 = distinct !DILexicalBlock(scope: !2707, file: !162, line: 519, column: 11)
!2919 = !DILocation(line: 521, column: 20, scope: !2918)
!2920 = !DILocalVariable(name: "printable", scope: !2918, file: !162, line: 523, type: !74)
!2921 = !DILocation(line: 523, column: 18, scope: !2918)
!2922 = !DILocation(line: 525, column: 17, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2918, file: !162, line: 525, column: 17)
!2924 = !DILocation(line: 525, column: 17, scope: !2918)
!2925 = !DILocation(line: 527, column: 19, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2923, file: !162, line: 526, column: 15)
!2927 = !DILocation(line: 528, column: 29, scope: !2926)
!2928 = !DILocation(line: 528, column: 41, scope: !2926)
!2929 = !DILocation(line: 528, column: 27, scope: !2926)
!2930 = !DILocation(line: 529, column: 15, scope: !2926)
!2931 = !DILocalVariable(name: "mbstate", scope: !2932, file: !162, line: 532, type: !2933)
!2932 = distinct !DILexicalBlock(scope: !2923, file: !162, line: 531, column: 15)
!2933 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2934, line: 6, baseType: !2935)
!2934 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!2935 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2936, line: 21, baseType: !2937)
!2936 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2936, line: 13, size: 64, elements: !2938)
!2938 = !{!2939, !2940}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2937, file: !2936, line: 15, baseType: !61, size: 32)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2937, file: !2936, line: 20, baseType: !2941, size: 32, offset: 32)
!2941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2937, file: !2936, line: 16, size: 32, elements: !2942)
!2942 = !{!2943, !2944}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2941, file: !2936, line: 18, baseType: !189, size: 32)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2941, file: !2936, line: 19, baseType: !2945, size: 32)
!2945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 32, elements: !107)
!2946 = !DILocation(line: 532, column: 27, scope: !2932)
!2947 = !DILocation(line: 533, column: 17, scope: !2932)
!2948 = !DILocation(line: 535, column: 19, scope: !2932)
!2949 = !DILocation(line: 536, column: 27, scope: !2932)
!2950 = !DILocation(line: 537, column: 21, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2932, file: !162, line: 537, column: 21)
!2952 = !DILocation(line: 537, column: 29, scope: !2951)
!2953 = !DILocation(line: 537, column: 21, scope: !2932)
!2954 = !DILocation(line: 538, column: 37, scope: !2951)
!2955 = !DILocation(line: 538, column: 29, scope: !2951)
!2956 = !DILocation(line: 538, column: 27, scope: !2951)
!2957 = !DILocation(line: 538, column: 19, scope: !2951)
!2958 = !DILocation(line: 540, column: 17, scope: !2932)
!2959 = distinct !{!2959, !2958, !2960}
!2960 = !DILocation(line: 586, column: 44, scope: !2932)
!2961 = !DILocalVariable(name: "w", scope: !2962, file: !162, line: 542, type: !2963)
!2962 = distinct !DILexicalBlock(scope: !2932, file: !162, line: 541, column: 19)
!2963 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !173, line: 90, baseType: !61)
!2964 = !DILocation(line: 542, column: 29, scope: !2962)
!2965 = !DILocalVariable(name: "bytes", scope: !2962, file: !162, line: 543, type: !172)
!2966 = !DILocation(line: 543, column: 28, scope: !2962)
!2967 = !DILocation(line: 543, column: 50, scope: !2962)
!2968 = !DILocation(line: 543, column: 54, scope: !2962)
!2969 = !DILocation(line: 543, column: 58, scope: !2962)
!2970 = !DILocation(line: 543, column: 56, scope: !2962)
!2971 = !DILocation(line: 544, column: 45, scope: !2962)
!2972 = !DILocation(line: 544, column: 56, scope: !2962)
!2973 = !DILocation(line: 544, column: 60, scope: !2962)
!2974 = !DILocation(line: 544, column: 58, scope: !2962)
!2975 = !DILocation(line: 544, column: 53, scope: !2962)
!2976 = !DILocation(line: 543, column: 36, scope: !2962)
!2977 = !DILocation(line: 545, column: 25, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2962, file: !162, line: 545, column: 25)
!2979 = !DILocation(line: 545, column: 31, scope: !2978)
!2980 = !DILocation(line: 545, column: 25, scope: !2962)
!2981 = !DILocation(line: 546, column: 23, scope: !2978)
!2982 = !DILocation(line: 547, column: 30, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2978, file: !162, line: 547, column: 30)
!2984 = !DILocation(line: 547, column: 36, scope: !2983)
!2985 = !DILocation(line: 547, column: 30, scope: !2978)
!2986 = !DILocation(line: 549, column: 35, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2983, file: !162, line: 548, column: 23)
!2988 = !DILocation(line: 550, column: 25, scope: !2987)
!2989 = !DILocation(line: 552, column: 30, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2983, file: !162, line: 552, column: 30)
!2991 = !DILocation(line: 552, column: 36, scope: !2990)
!2992 = !DILocation(line: 552, column: 30, scope: !2983)
!2993 = !DILocation(line: 554, column: 35, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2990, file: !162, line: 553, column: 23)
!2995 = !DILocation(line: 555, column: 25, scope: !2994)
!2996 = !DILocation(line: 555, column: 32, scope: !2994)
!2997 = !DILocation(line: 555, column: 36, scope: !2994)
!2998 = !DILocation(line: 555, column: 34, scope: !2994)
!2999 = !DILocation(line: 555, column: 40, scope: !2994)
!3000 = !DILocation(line: 555, column: 38, scope: !2994)
!3001 = !DILocation(line: 555, column: 48, scope: !2994)
!3002 = !DILocation(line: 555, column: 51, scope: !2994)
!3003 = !DILocation(line: 555, column: 55, scope: !2994)
!3004 = !DILocation(line: 555, column: 59, scope: !2994)
!3005 = !DILocation(line: 555, column: 57, scope: !2994)
!3006 = !DILocation(line: 556, column: 28, scope: !2994)
!3007 = distinct !{!3007, !2995, !3006}
!3008 = !DILocation(line: 557, column: 25, scope: !2994)
!3009 = !DILocation(line: 565, column: 44, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !3011, file: !162, line: 565, column: 29)
!3011 = distinct !DILexicalBlock(scope: !2990, file: !162, line: 560, column: 23)
!3012 = !DILocation(line: 566, column: 29, scope: !3010)
!3013 = !DILocation(line: 566, column: 32, scope: !3010)
!3014 = !DILocation(line: 566, column: 46, scope: !3010)
!3015 = !DILocation(line: 565, column: 29, scope: !3011)
!3016 = !DILocalVariable(name: "j", scope: !3017, file: !162, line: 568, type: !172)
!3017 = distinct !DILexicalBlock(scope: !3010, file: !162, line: 567, column: 27)
!3018 = !DILocation(line: 568, column: 36, scope: !3017)
!3019 = !DILocation(line: 569, column: 36, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3017, file: !162, line: 569, column: 29)
!3021 = !DILocation(line: 569, column: 34, scope: !3020)
!3022 = !DILocation(line: 569, column: 41, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3020, file: !162, line: 569, column: 29)
!3024 = !DILocation(line: 569, column: 45, scope: !3023)
!3025 = !DILocation(line: 569, column: 43, scope: !3023)
!3026 = !DILocation(line: 569, column: 29, scope: !3020)
!3027 = !DILocation(line: 570, column: 39, scope: !3023)
!3028 = !DILocation(line: 570, column: 43, scope: !3023)
!3029 = !DILocation(line: 570, column: 47, scope: !3023)
!3030 = !DILocation(line: 570, column: 45, scope: !3023)
!3031 = !DILocation(line: 570, column: 51, scope: !3023)
!3032 = !DILocation(line: 570, column: 49, scope: !3023)
!3033 = !DILocation(line: 570, column: 31, scope: !3023)
!3034 = !DILocation(line: 574, column: 35, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3023, file: !162, line: 571, column: 33)
!3036 = !DILocation(line: 577, column: 35, scope: !3035)
!3037 = !DILocation(line: 578, column: 33, scope: !3035)
!3038 = !DILocation(line: 569, column: 53, scope: !3023)
!3039 = !DILocation(line: 569, column: 29, scope: !3023)
!3040 = distinct !{!3040, !3026, !3041}
!3041 = !DILocation(line: 578, column: 33, scope: !3020)
!3042 = !DILocation(line: 579, column: 27, scope: !3017)
!3043 = !DILocation(line: 581, column: 41, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3011, file: !162, line: 581, column: 29)
!3045 = !DILocation(line: 581, column: 31, scope: !3044)
!3046 = !DILocation(line: 581, column: 29, scope: !3011)
!3047 = !DILocation(line: 582, column: 37, scope: !3044)
!3048 = !DILocation(line: 582, column: 27, scope: !3044)
!3049 = !DILocation(line: 583, column: 30, scope: !3011)
!3050 = !DILocation(line: 583, column: 27, scope: !3011)
!3051 = !DILocation(line: 585, column: 19, scope: !2962)
!3052 = !DILocation(line: 586, column: 26, scope: !2932)
!3053 = !DILocation(line: 586, column: 24, scope: !2932)
!3054 = !DILocation(line: 589, column: 21, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !2918, file: !162, line: 589, column: 17)
!3056 = !DILocation(line: 589, column: 19, scope: !3055)
!3057 = !DILocation(line: 589, column: 23, scope: !3055)
!3058 = !DILocation(line: 589, column: 27, scope: !3055)
!3059 = !DILocation(line: 589, column: 45, scope: !3055)
!3060 = !DILocation(line: 589, column: 50, scope: !3055)
!3061 = !DILocation(line: 589, column: 17, scope: !2918)
!3062 = !DILocalVariable(name: "ilim", scope: !3063, file: !162, line: 593, type: !172)
!3063 = distinct !DILexicalBlock(scope: !3055, file: !162, line: 590, column: 15)
!3064 = !DILocation(line: 593, column: 24, scope: !3063)
!3065 = !DILocation(line: 593, column: 31, scope: !3063)
!3066 = !DILocation(line: 593, column: 35, scope: !3063)
!3067 = !DILocation(line: 593, column: 33, scope: !3063)
!3068 = !DILocation(line: 595, column: 17, scope: !3063)
!3069 = !DILocation(line: 597, column: 25, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3071, file: !162, line: 597, column: 25)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !162, line: 596, column: 19)
!3072 = distinct !DILexicalBlock(scope: !3073, file: !162, line: 595, column: 17)
!3073 = distinct !DILexicalBlock(scope: !3063, file: !162, line: 595, column: 17)
!3074 = !DILocation(line: 597, column: 43, scope: !3070)
!3075 = !DILocation(line: 597, column: 48, scope: !3070)
!3076 = !DILocation(line: 597, column: 25, scope: !3071)
!3077 = !DILocation(line: 599, column: 29, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3079, file: !162, line: 599, column: 29)
!3079 = distinct !DILexicalBlock(scope: !3070, file: !162, line: 598, column: 23)
!3080 = !DILocation(line: 599, column: 29, scope: !3079)
!3081 = !DILocation(line: 600, column: 27, scope: !3078)
!3082 = !DILocation(line: 601, column: 25, scope: !3079)
!3083 = distinct !{!3083, !3082, !3082}
!3084 = !DILocation(line: 601, column: 25, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3086, file: !162, line: 601, column: 25)
!3086 = distinct !DILexicalBlock(scope: !3079, file: !162, line: 601, column: 25)
!3087 = !DILocation(line: 601, column: 25, scope: !3086)
!3088 = !DILocation(line: 602, column: 25, scope: !3079)
!3089 = distinct !{!3089, !3088, !3088}
!3090 = !DILocation(line: 602, column: 25, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3092, file: !162, line: 602, column: 25)
!3092 = distinct !DILexicalBlock(scope: !3079, file: !162, line: 602, column: 25)
!3093 = !DILocation(line: 602, column: 25, scope: !3092)
!3094 = !DILocation(line: 603, column: 25, scope: !3079)
!3095 = distinct !{!3095, !3094, !3094}
!3096 = !DILocation(line: 603, column: 25, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3098, file: !162, line: 603, column: 25)
!3098 = distinct !DILexicalBlock(scope: !3079, file: !162, line: 603, column: 25)
!3099 = !DILocation(line: 603, column: 25, scope: !3098)
!3100 = !DILocation(line: 604, column: 36, scope: !3079)
!3101 = !DILocation(line: 604, column: 38, scope: !3079)
!3102 = !DILocation(line: 604, column: 33, scope: !3079)
!3103 = !DILocation(line: 604, column: 29, scope: !3079)
!3104 = !DILocation(line: 604, column: 27, scope: !3079)
!3105 = !DILocation(line: 605, column: 23, scope: !3079)
!3106 = !DILocation(line: 606, column: 30, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3070, file: !162, line: 606, column: 30)
!3108 = !DILocation(line: 606, column: 30, scope: !3070)
!3109 = !DILocation(line: 608, column: 25, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3107, file: !162, line: 607, column: 23)
!3111 = distinct !{!3111, !3109, !3109}
!3112 = !DILocation(line: 608, column: 25, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !162, line: 608, column: 25)
!3114 = distinct !DILexicalBlock(scope: !3110, file: !162, line: 608, column: 25)
!3115 = !DILocation(line: 608, column: 25, scope: !3114)
!3116 = !DILocation(line: 609, column: 40, scope: !3110)
!3117 = !DILocation(line: 610, column: 23, scope: !3110)
!3118 = !DILocation(line: 611, column: 25, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3071, file: !162, line: 611, column: 25)
!3120 = !DILocation(line: 611, column: 33, scope: !3119)
!3121 = !DILocation(line: 611, column: 35, scope: !3119)
!3122 = !DILocation(line: 611, column: 30, scope: !3119)
!3123 = !DILocation(line: 611, column: 25, scope: !3071)
!3124 = !DILocation(line: 612, column: 23, scope: !3119)
!3125 = !DILocation(line: 613, column: 21, scope: !3071)
!3126 = distinct !{!3126, !3125, !3125}
!3127 = !DILocation(line: 613, column: 21, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3129, file: !162, line: 613, column: 21)
!3129 = distinct !DILexicalBlock(scope: !3071, file: !162, line: 613, column: 21)
!3130 = !DILocation(line: 613, column: 21, scope: !3129)
!3131 = !DILocation(line: 614, column: 25, scope: !3071)
!3132 = !DILocation(line: 614, column: 29, scope: !3071)
!3133 = !DILocation(line: 614, column: 23, scope: !3071)
!3134 = !DILocation(line: 595, column: 17, scope: !3072)
!3135 = distinct !{!3135, !3136, !3137}
!3136 = !DILocation(line: 595, column: 17, scope: !3073)
!3137 = !DILocation(line: 615, column: 19, scope: !3073)
!3138 = !DILocation(line: 617, column: 17, scope: !3063)
!3139 = !DILocation(line: 620, column: 9, scope: !2707)
!3140 = !DILocation(line: 622, column: 15, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !2668, file: !162, line: 622, column: 11)
!3142 = !DILocation(line: 622, column: 33, scope: !3141)
!3143 = !DILocation(line: 622, column: 36, scope: !3141)
!3144 = !DILocation(line: 623, column: 14, scope: !3141)
!3145 = !DILocation(line: 623, column: 17, scope: !3141)
!3146 = !DILocation(line: 624, column: 14, scope: !3141)
!3147 = !DILocation(line: 624, column: 17, scope: !3141)
!3148 = !DILocation(line: 624, column: 33, scope: !3141)
!3149 = !DILocation(line: 624, column: 35, scope: !3141)
!3150 = !DILocation(line: 624, column: 56, scope: !3141)
!3151 = !DILocation(line: 624, column: 58, scope: !3141)
!3152 = !DILocation(line: 624, column: 52, scope: !3141)
!3153 = !DILocation(line: 624, column: 47, scope: !3141)
!3154 = !DILocation(line: 625, column: 11, scope: !3141)
!3155 = !DILocation(line: 625, column: 15, scope: !3141)
!3156 = !DILocation(line: 622, column: 11, scope: !2668)
!3157 = !DILocation(line: 626, column: 9, scope: !3141)
!3158 = !DILocation(line: 629, column: 11, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !2668, file: !162, line: 629, column: 11)
!3160 = !DILocation(line: 629, column: 11, scope: !2668)
!3161 = !DILocation(line: 630, column: 9, scope: !3159)
!3162 = !DILocation(line: 631, column: 7, scope: !2668)
!3163 = distinct !{!3163, !3162, !3162}
!3164 = !DILocation(line: 631, column: 7, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3166, file: !162, line: 631, column: 7)
!3166 = distinct !DILexicalBlock(scope: !2668, file: !162, line: 631, column: 7)
!3167 = !DILocation(line: 631, column: 7, scope: !3166)
!3168 = !DILocation(line: 634, column: 7, scope: !2668)
!3169 = distinct !{!3169, !3168, !3168}
!3170 = !DILocation(line: 634, column: 7, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3172, file: !162, line: 634, column: 7)
!3172 = distinct !DILexicalBlock(scope: !2668, file: !162, line: 634, column: 7)
!3173 = !DILocation(line: 634, column: 7, scope: !3172)
!3174 = !DILocation(line: 635, column: 5, scope: !2668)
!3175 = !DILocation(line: 343, column: 75, scope: !2657)
!3176 = !DILocation(line: 343, column: 3, scope: !2657)
!3177 = distinct !{!3177, !2666, !3178}
!3178 = !DILocation(line: 635, column: 5, scope: !2654)
!3179 = !DILocation(line: 637, column: 7, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !2530, file: !162, line: 637, column: 7)
!3181 = !DILocation(line: 637, column: 11, scope: !3180)
!3182 = !DILocation(line: 637, column: 16, scope: !3180)
!3183 = !DILocation(line: 637, column: 19, scope: !3180)
!3184 = !DILocation(line: 637, column: 33, scope: !3180)
!3185 = !DILocation(line: 638, column: 7, scope: !3180)
!3186 = !DILocation(line: 638, column: 10, scope: !3180)
!3187 = !DILocation(line: 637, column: 7, scope: !2530)
!3188 = !DILocation(line: 639, column: 5, scope: !3180)
!3189 = !DILocation(line: 641, column: 7, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !2530, file: !162, line: 641, column: 7)
!3191 = !DILocation(line: 641, column: 20, scope: !3190)
!3192 = !DILocation(line: 641, column: 24, scope: !3190)
!3193 = !DILocation(line: 641, column: 7, scope: !2530)
!3194 = !DILocation(line: 642, column: 5, scope: !3190)
!3195 = !DILocation(line: 642, column: 13, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3197, file: !162, line: 642, column: 5)
!3197 = distinct !DILexicalBlock(scope: !3190, file: !162, line: 642, column: 5)
!3198 = !DILocation(line: 642, column: 12, scope: !3196)
!3199 = !DILocation(line: 642, column: 5, scope: !3197)
!3200 = !DILocation(line: 643, column: 7, scope: !3196)
!3201 = distinct !{!3201, !3200, !3200}
!3202 = !DILocation(line: 643, column: 7, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3204, file: !162, line: 643, column: 7)
!3204 = distinct !DILexicalBlock(scope: !3196, file: !162, line: 643, column: 7)
!3205 = !DILocation(line: 643, column: 7, scope: !3204)
!3206 = !DILocation(line: 642, column: 39, scope: !3196)
!3207 = !DILocation(line: 642, column: 5, scope: !3196)
!3208 = distinct !{!3208, !3199, !3209}
!3209 = !DILocation(line: 643, column: 7, scope: !3197)
!3210 = !DILocation(line: 645, column: 7, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !2530, file: !162, line: 645, column: 7)
!3212 = !DILocation(line: 645, column: 13, scope: !3211)
!3213 = !DILocation(line: 645, column: 11, scope: !3211)
!3214 = !DILocation(line: 645, column: 7, scope: !2530)
!3215 = !DILocation(line: 646, column: 5, scope: !3211)
!3216 = !DILocation(line: 646, column: 12, scope: !3211)
!3217 = !DILocation(line: 646, column: 17, scope: !3211)
!3218 = !DILocation(line: 647, column: 10, scope: !2530)
!3219 = !DILocation(line: 647, column: 3, scope: !2530)
!3220 = !DILocation(line: 652, column: 36, scope: !2530)
!3221 = !DILocation(line: 652, column: 44, scope: !2530)
!3222 = !DILocation(line: 652, column: 56, scope: !2530)
!3223 = !DILocation(line: 652, column: 61, scope: !2530)
!3224 = !DILocation(line: 653, column: 36, scope: !2530)
!3225 = !DILocation(line: 654, column: 36, scope: !2530)
!3226 = !DILocation(line: 654, column: 42, scope: !2530)
!3227 = !DILocation(line: 655, column: 36, scope: !2530)
!3228 = !DILocation(line: 655, column: 48, scope: !2530)
!3229 = !DILocation(line: 652, column: 10, scope: !2530)
!3230 = !DILocation(line: 652, column: 3, scope: !2530)
!3231 = !DILocation(line: 656, column: 1, scope: !2530)
!3232 = distinct !DISubprogram(name: "gettext_quote", scope: !162, file: !162, line: 193, type: !3233, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!52, !52, !120}
!3235 = !DILocalVariable(name: "msgid", arg: 1, scope: !3232, file: !162, line: 193, type: !52)
!3236 = !DILocation(line: 193, column: 28, scope: !3232)
!3237 = !DILocalVariable(name: "s", arg: 2, scope: !3232, file: !162, line: 193, type: !120)
!3238 = !DILocation(line: 193, column: 54, scope: !3232)
!3239 = !DILocalVariable(name: "translation", scope: !3232, file: !162, line: 195, type: !52)
!3240 = !DILocation(line: 195, column: 15, scope: !3232)
!3241 = !DILocation(line: 195, column: 29, scope: !3232)
!3242 = !DILocalVariable(name: "locale_code", scope: !3232, file: !162, line: 196, type: !52)
!3243 = !DILocation(line: 196, column: 15, scope: !3232)
!3244 = !DILocation(line: 198, column: 7, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3232, file: !162, line: 198, column: 7)
!3246 = !DILocation(line: 198, column: 22, scope: !3245)
!3247 = !DILocation(line: 198, column: 19, scope: !3245)
!3248 = !DILocation(line: 198, column: 7, scope: !3232)
!3249 = !DILocation(line: 199, column: 12, scope: !3245)
!3250 = !DILocation(line: 199, column: 5, scope: !3245)
!3251 = !DILocation(line: 219, column: 17, scope: !3232)
!3252 = !DILocation(line: 219, column: 15, scope: !3232)
!3253 = !DILocation(line: 220, column: 7, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3232, file: !162, line: 220, column: 7)
!3255 = !DILocation(line: 220, column: 7, scope: !3232)
!3256 = !DILocation(line: 221, column: 12, scope: !3254)
!3257 = !DILocation(line: 221, column: 21, scope: !3254)
!3258 = !DILocation(line: 221, column: 5, scope: !3254)
!3259 = !DILocation(line: 222, column: 7, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3232, file: !162, line: 222, column: 7)
!3261 = !DILocation(line: 222, column: 7, scope: !3232)
!3262 = !DILocation(line: 223, column: 12, scope: !3260)
!3263 = !DILocation(line: 223, column: 21, scope: !3260)
!3264 = !DILocation(line: 223, column: 5, scope: !3260)
!3265 = !DILocation(line: 225, column: 11, scope: !3232)
!3266 = !DILocation(line: 225, column: 13, scope: !3232)
!3267 = !DILocation(line: 225, column: 3, scope: !3232)
!3268 = !DILocation(line: 226, column: 1, scope: !3232)
!3269 = distinct !DISubprogram(name: "quotearg_alloc", scope: !162, file: !162, line: 683, type: !3270, isLocal: false, isDefinition: true, scopeLine: 685, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!60, !52, !172, !2489}
!3272 = !DILocalVariable(name: "arg", arg: 1, scope: !3269, file: !162, line: 683, type: !52)
!3273 = !DILocation(line: 683, column: 29, scope: !3269)
!3274 = !DILocalVariable(name: "argsize", arg: 2, scope: !3269, file: !162, line: 683, type: !172)
!3275 = !DILocation(line: 683, column: 41, scope: !3269)
!3276 = !DILocalVariable(name: "o", arg: 3, scope: !3269, file: !162, line: 684, type: !2489)
!3277 = !DILocation(line: 684, column: 47, scope: !3269)
!3278 = !DILocation(line: 686, column: 30, scope: !3269)
!3279 = !DILocation(line: 686, column: 35, scope: !3269)
!3280 = !DILocation(line: 686, column: 50, scope: !3269)
!3281 = !DILocation(line: 686, column: 10, scope: !3269)
!3282 = !DILocation(line: 686, column: 3, scope: !3269)
!3283 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !162, file: !162, line: 696, type: !3284, isLocal: false, isDefinition: true, scopeLine: 698, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!60, !52, !172, !647, !2489}
!3286 = !DILocalVariable(name: "arg", arg: 1, scope: !3283, file: !162, line: 696, type: !52)
!3287 = !DILocation(line: 696, column: 33, scope: !3283)
!3288 = !DILocalVariable(name: "argsize", arg: 2, scope: !3283, file: !162, line: 696, type: !172)
!3289 = !DILocation(line: 696, column: 45, scope: !3283)
!3290 = !DILocalVariable(name: "size", arg: 3, scope: !3283, file: !162, line: 696, type: !647)
!3291 = !DILocation(line: 696, column: 62, scope: !3283)
!3292 = !DILocalVariable(name: "o", arg: 4, scope: !3283, file: !162, line: 697, type: !2489)
!3293 = !DILocation(line: 697, column: 51, scope: !3283)
!3294 = !DILocalVariable(name: "p", scope: !3283, file: !162, line: 699, type: !2489)
!3295 = !DILocation(line: 699, column: 33, scope: !3283)
!3296 = !DILocation(line: 699, column: 37, scope: !3283)
!3297 = !DILocation(line: 699, column: 41, scope: !3283)
!3298 = !DILocalVariable(name: "e", scope: !3283, file: !162, line: 700, type: !61)
!3299 = !DILocation(line: 700, column: 7, scope: !3283)
!3300 = !DILocation(line: 700, column: 11, scope: !3283)
!3301 = !DILocalVariable(name: "flags", scope: !3283, file: !162, line: 702, type: !61)
!3302 = !DILocation(line: 702, column: 7, scope: !3283)
!3303 = !DILocation(line: 702, column: 15, scope: !3283)
!3304 = !DILocation(line: 702, column: 18, scope: !3283)
!3305 = !DILocation(line: 702, column: 27, scope: !3283)
!3306 = !DILocation(line: 702, column: 24, scope: !3283)
!3307 = !DILocalVariable(name: "bufsize", scope: !3283, file: !162, line: 703, type: !172)
!3308 = !DILocation(line: 703, column: 10, scope: !3283)
!3309 = !DILocation(line: 703, column: 52, scope: !3283)
!3310 = !DILocation(line: 703, column: 57, scope: !3283)
!3311 = !DILocation(line: 703, column: 66, scope: !3283)
!3312 = !DILocation(line: 703, column: 69, scope: !3283)
!3313 = !DILocation(line: 704, column: 46, scope: !3283)
!3314 = !DILocation(line: 704, column: 53, scope: !3283)
!3315 = !DILocation(line: 704, column: 56, scope: !3283)
!3316 = !DILocation(line: 705, column: 46, scope: !3283)
!3317 = !DILocation(line: 705, column: 49, scope: !3283)
!3318 = !DILocation(line: 706, column: 46, scope: !3283)
!3319 = !DILocation(line: 706, column: 49, scope: !3283)
!3320 = !DILocation(line: 703, column: 20, scope: !3283)
!3321 = !DILocation(line: 706, column: 62, scope: !3283)
!3322 = !DILocalVariable(name: "buf", scope: !3283, file: !162, line: 707, type: !60)
!3323 = !DILocation(line: 707, column: 9, scope: !3283)
!3324 = !DILocation(line: 707, column: 27, scope: !3283)
!3325 = !DILocation(line: 707, column: 15, scope: !3283)
!3326 = !DILocation(line: 708, column: 29, scope: !3283)
!3327 = !DILocation(line: 708, column: 34, scope: !3283)
!3328 = !DILocation(line: 708, column: 43, scope: !3283)
!3329 = !DILocation(line: 708, column: 48, scope: !3283)
!3330 = !DILocation(line: 708, column: 57, scope: !3283)
!3331 = !DILocation(line: 708, column: 60, scope: !3283)
!3332 = !DILocation(line: 708, column: 67, scope: !3283)
!3333 = !DILocation(line: 709, column: 29, scope: !3283)
!3334 = !DILocation(line: 709, column: 32, scope: !3283)
!3335 = !DILocation(line: 710, column: 29, scope: !3283)
!3336 = !DILocation(line: 710, column: 32, scope: !3283)
!3337 = !DILocation(line: 710, column: 44, scope: !3283)
!3338 = !DILocation(line: 710, column: 47, scope: !3283)
!3339 = !DILocation(line: 708, column: 3, scope: !3283)
!3340 = !DILocation(line: 711, column: 11, scope: !3283)
!3341 = !DILocation(line: 711, column: 3, scope: !3283)
!3342 = !DILocation(line: 711, column: 9, scope: !3283)
!3343 = !DILocation(line: 712, column: 7, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3283, file: !162, line: 712, column: 7)
!3345 = !DILocation(line: 712, column: 7, scope: !3283)
!3346 = !DILocation(line: 713, column: 13, scope: !3344)
!3347 = !DILocation(line: 713, column: 21, scope: !3344)
!3348 = !DILocation(line: 713, column: 6, scope: !3344)
!3349 = !DILocation(line: 713, column: 11, scope: !3344)
!3350 = !DILocation(line: 713, column: 5, scope: !3344)
!3351 = !DILocation(line: 714, column: 10, scope: !3283)
!3352 = !DILocation(line: 714, column: 3, scope: !3283)
!3353 = distinct !DISubprogram(name: "quotearg_free", scope: !162, file: !162, line: 732, type: !137, isLocal: false, isDefinition: true, scopeLine: 733, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3354 = !DILocalVariable(name: "sv", scope: !3353, file: !162, line: 734, type: !201)
!3355 = !DILocation(line: 734, column: 19, scope: !3353)
!3356 = !DILocation(line: 734, column: 24, scope: !3353)
!3357 = !DILocalVariable(name: "i", scope: !3353, file: !162, line: 735, type: !189)
!3358 = !DILocation(line: 735, column: 16, scope: !3353)
!3359 = !DILocation(line: 736, column: 10, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3353, file: !162, line: 736, column: 3)
!3361 = !DILocation(line: 736, column: 8, scope: !3360)
!3362 = !DILocation(line: 736, column: 15, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3360, file: !162, line: 736, column: 3)
!3364 = !DILocation(line: 736, column: 19, scope: !3363)
!3365 = !DILocation(line: 736, column: 17, scope: !3363)
!3366 = !DILocation(line: 736, column: 3, scope: !3360)
!3367 = !DILocation(line: 737, column: 11, scope: !3363)
!3368 = !DILocation(line: 737, column: 14, scope: !3363)
!3369 = !DILocation(line: 737, column: 17, scope: !3363)
!3370 = !DILocation(line: 737, column: 5, scope: !3363)
!3371 = !DILocation(line: 736, column: 28, scope: !3363)
!3372 = !DILocation(line: 736, column: 3, scope: !3363)
!3373 = distinct !{!3373, !3366, !3374}
!3374 = !DILocation(line: 737, column: 20, scope: !3360)
!3375 = !DILocation(line: 738, column: 7, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3353, file: !162, line: 738, column: 7)
!3377 = !DILocation(line: 738, column: 13, scope: !3376)
!3378 = !DILocation(line: 738, column: 17, scope: !3376)
!3379 = !DILocation(line: 738, column: 7, scope: !3353)
!3380 = !DILocation(line: 740, column: 13, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3376, file: !162, line: 739, column: 5)
!3382 = !DILocation(line: 740, column: 19, scope: !3381)
!3383 = !DILocation(line: 740, column: 7, scope: !3381)
!3384 = !DILocation(line: 741, column: 21, scope: !3381)
!3385 = !DILocation(line: 742, column: 20, scope: !3381)
!3386 = !DILocation(line: 743, column: 5, scope: !3381)
!3387 = !DILocation(line: 744, column: 7, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3353, file: !162, line: 744, column: 7)
!3389 = !DILocation(line: 744, column: 10, scope: !3388)
!3390 = !DILocation(line: 744, column: 7, scope: !3353)
!3391 = !DILocation(line: 746, column: 13, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3388, file: !162, line: 745, column: 5)
!3393 = !DILocation(line: 746, column: 7, scope: !3392)
!3394 = !DILocation(line: 747, column: 15, scope: !3392)
!3395 = !DILocation(line: 748, column: 5, scope: !3392)
!3396 = !DILocation(line: 749, column: 10, scope: !3353)
!3397 = !DILocation(line: 750, column: 1, scope: !3353)
!3398 = distinct !DISubprogram(name: "quotearg_n", scope: !162, file: !162, line: 821, type: !3399, isLocal: false, isDefinition: true, scopeLine: 822, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!60, !61, !52}
!3401 = !DILocalVariable(name: "n", arg: 1, scope: !3398, file: !162, line: 821, type: !61)
!3402 = !DILocation(line: 821, column: 17, scope: !3398)
!3403 = !DILocalVariable(name: "arg", arg: 2, scope: !3398, file: !162, line: 821, type: !52)
!3404 = !DILocation(line: 821, column: 32, scope: !3398)
!3405 = !DILocation(line: 823, column: 30, scope: !3398)
!3406 = !DILocation(line: 823, column: 33, scope: !3398)
!3407 = !DILocation(line: 823, column: 10, scope: !3398)
!3408 = !DILocation(line: 823, column: 3, scope: !3398)
!3409 = distinct !DISubprogram(name: "quotearg_n_options", scope: !162, file: !162, line: 761, type: !3410, isLocal: true, isDefinition: true, scopeLine: 763, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{!60, !61, !52, !172, !2489}
!3412 = !DILocalVariable(name: "n", arg: 1, scope: !3409, file: !162, line: 761, type: !61)
!3413 = !DILocation(line: 761, column: 25, scope: !3409)
!3414 = !DILocalVariable(name: "arg", arg: 2, scope: !3409, file: !162, line: 761, type: !52)
!3415 = !DILocation(line: 761, column: 40, scope: !3409)
!3416 = !DILocalVariable(name: "argsize", arg: 3, scope: !3409, file: !162, line: 761, type: !172)
!3417 = !DILocation(line: 761, column: 52, scope: !3409)
!3418 = !DILocalVariable(name: "options", arg: 4, scope: !3409, file: !162, line: 762, type: !2489)
!3419 = !DILocation(line: 762, column: 51, scope: !3409)
!3420 = !DILocalVariable(name: "e", scope: !3409, file: !162, line: 764, type: !61)
!3421 = !DILocation(line: 764, column: 7, scope: !3409)
!3422 = !DILocation(line: 764, column: 11, scope: !3409)
!3423 = !DILocalVariable(name: "n0", scope: !3409, file: !162, line: 766, type: !189)
!3424 = !DILocation(line: 766, column: 16, scope: !3409)
!3425 = !DILocation(line: 766, column: 21, scope: !3409)
!3426 = !DILocalVariable(name: "sv", scope: !3409, file: !162, line: 767, type: !201)
!3427 = !DILocation(line: 767, column: 19, scope: !3409)
!3428 = !DILocation(line: 767, column: 24, scope: !3409)
!3429 = !DILocation(line: 769, column: 7, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3409, file: !162, line: 769, column: 7)
!3431 = !DILocation(line: 769, column: 9, scope: !3430)
!3432 = !DILocation(line: 769, column: 7, scope: !3409)
!3433 = !DILocation(line: 770, column: 5, scope: !3430)
!3434 = !DILocation(line: 772, column: 7, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3409, file: !162, line: 772, column: 7)
!3436 = !DILocation(line: 772, column: 17, scope: !3435)
!3437 = !DILocation(line: 772, column: 14, scope: !3435)
!3438 = !DILocation(line: 772, column: 7, scope: !3409)
!3439 = !DILocalVariable(name: "n1", scope: !3440, file: !162, line: 779, type: !172)
!3440 = distinct !DILexicalBlock(scope: !3435, file: !162, line: 773, column: 5)
!3441 = !DILocation(line: 779, column: 14, scope: !3440)
!3442 = !DILocation(line: 779, column: 19, scope: !3440)
!3443 = !DILocation(line: 779, column: 22, scope: !3440)
!3444 = !DILocalVariable(name: "preallocated", scope: !3440, file: !162, line: 780, type: !74)
!3445 = !DILocation(line: 780, column: 12, scope: !3440)
!3446 = !DILocation(line: 780, column: 28, scope: !3440)
!3447 = !DILocation(line: 780, column: 31, scope: !3440)
!3448 = !DILocation(line: 782, column: 11, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3440, file: !162, line: 782, column: 11)
!3450 = !DILocation(line: 782, column: 11, scope: !3440)
!3451 = !DILocation(line: 783, column: 9, scope: !3449)
!3452 = !DILocation(line: 785, column: 32, scope: !3440)
!3453 = !DILocation(line: 785, column: 54, scope: !3440)
!3454 = !DILocation(line: 785, column: 58, scope: !3440)
!3455 = !DILocation(line: 785, column: 61, scope: !3440)
!3456 = !DILocation(line: 785, column: 22, scope: !3440)
!3457 = !DILocation(line: 785, column: 20, scope: !3440)
!3458 = !DILocation(line: 785, column: 15, scope: !3440)
!3459 = !DILocation(line: 786, column: 11, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3440, file: !162, line: 786, column: 11)
!3461 = !DILocation(line: 786, column: 11, scope: !3440)
!3462 = !DILocation(line: 787, column: 10, scope: !3460)
!3463 = !DILocation(line: 787, column: 15, scope: !3460)
!3464 = !DILocation(line: 787, column: 9, scope: !3460)
!3465 = !DILocation(line: 788, column: 15, scope: !3440)
!3466 = !DILocation(line: 788, column: 20, scope: !3440)
!3467 = !DILocation(line: 788, column: 18, scope: !3440)
!3468 = !DILocation(line: 788, column: 7, scope: !3440)
!3469 = !DILocation(line: 788, column: 32, scope: !3440)
!3470 = !DILocation(line: 788, column: 37, scope: !3440)
!3471 = !DILocation(line: 788, column: 35, scope: !3440)
!3472 = !DILocation(line: 788, column: 45, scope: !3440)
!3473 = !DILocation(line: 789, column: 16, scope: !3440)
!3474 = !DILocation(line: 789, column: 14, scope: !3440)
!3475 = !DILocation(line: 790, column: 5, scope: !3440)
!3476 = !DILocalVariable(name: "size", scope: !3477, file: !162, line: 793, type: !172)
!3477 = distinct !DILexicalBlock(scope: !3409, file: !162, line: 792, column: 3)
!3478 = !DILocation(line: 793, column: 12, scope: !3477)
!3479 = !DILocation(line: 793, column: 19, scope: !3477)
!3480 = !DILocation(line: 793, column: 22, scope: !3477)
!3481 = !DILocation(line: 793, column: 25, scope: !3477)
!3482 = !DILocalVariable(name: "val", scope: !3477, file: !162, line: 794, type: !60)
!3483 = !DILocation(line: 794, column: 11, scope: !3477)
!3484 = !DILocation(line: 794, column: 17, scope: !3477)
!3485 = !DILocation(line: 794, column: 20, scope: !3477)
!3486 = !DILocation(line: 794, column: 23, scope: !3477)
!3487 = !DILocalVariable(name: "flags", scope: !3477, file: !162, line: 796, type: !61)
!3488 = !DILocation(line: 796, column: 9, scope: !3477)
!3489 = !DILocation(line: 796, column: 17, scope: !3477)
!3490 = !DILocation(line: 796, column: 26, scope: !3477)
!3491 = !DILocation(line: 796, column: 32, scope: !3477)
!3492 = !DILocalVariable(name: "qsize", scope: !3477, file: !162, line: 797, type: !172)
!3493 = !DILocation(line: 797, column: 12, scope: !3477)
!3494 = !DILocation(line: 797, column: 46, scope: !3477)
!3495 = !DILocation(line: 797, column: 51, scope: !3477)
!3496 = !DILocation(line: 797, column: 57, scope: !3477)
!3497 = !DILocation(line: 797, column: 62, scope: !3477)
!3498 = !DILocation(line: 798, column: 46, scope: !3477)
!3499 = !DILocation(line: 798, column: 55, scope: !3477)
!3500 = !DILocation(line: 798, column: 62, scope: !3477)
!3501 = !DILocation(line: 799, column: 46, scope: !3477)
!3502 = !DILocation(line: 799, column: 55, scope: !3477)
!3503 = !DILocation(line: 800, column: 46, scope: !3477)
!3504 = !DILocation(line: 800, column: 55, scope: !3477)
!3505 = !DILocation(line: 801, column: 46, scope: !3477)
!3506 = !DILocation(line: 801, column: 55, scope: !3477)
!3507 = !DILocation(line: 797, column: 20, scope: !3477)
!3508 = !DILocation(line: 803, column: 9, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3477, file: !162, line: 803, column: 9)
!3510 = !DILocation(line: 803, column: 17, scope: !3509)
!3511 = !DILocation(line: 803, column: 14, scope: !3509)
!3512 = !DILocation(line: 803, column: 9, scope: !3477)
!3513 = !DILocation(line: 805, column: 29, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !3509, file: !162, line: 804, column: 7)
!3515 = !DILocation(line: 805, column: 35, scope: !3514)
!3516 = !DILocation(line: 805, column: 27, scope: !3514)
!3517 = !DILocation(line: 805, column: 9, scope: !3514)
!3518 = !DILocation(line: 805, column: 12, scope: !3514)
!3519 = !DILocation(line: 805, column: 15, scope: !3514)
!3520 = !DILocation(line: 805, column: 20, scope: !3514)
!3521 = !DILocation(line: 806, column: 13, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3514, file: !162, line: 806, column: 13)
!3523 = !DILocation(line: 806, column: 17, scope: !3522)
!3524 = !DILocation(line: 806, column: 13, scope: !3514)
!3525 = !DILocation(line: 807, column: 17, scope: !3522)
!3526 = !DILocation(line: 807, column: 11, scope: !3522)
!3527 = !DILocation(line: 808, column: 39, scope: !3514)
!3528 = !DILocation(line: 808, column: 27, scope: !3514)
!3529 = !DILocation(line: 808, column: 25, scope: !3514)
!3530 = !DILocation(line: 808, column: 9, scope: !3514)
!3531 = !DILocation(line: 808, column: 12, scope: !3514)
!3532 = !DILocation(line: 808, column: 15, scope: !3514)
!3533 = !DILocation(line: 808, column: 19, scope: !3514)
!3534 = !DILocation(line: 809, column: 35, scope: !3514)
!3535 = !DILocation(line: 809, column: 40, scope: !3514)
!3536 = !DILocation(line: 809, column: 46, scope: !3514)
!3537 = !DILocation(line: 809, column: 51, scope: !3514)
!3538 = !DILocation(line: 809, column: 60, scope: !3514)
!3539 = !DILocation(line: 809, column: 69, scope: !3514)
!3540 = !DILocation(line: 810, column: 35, scope: !3514)
!3541 = !DILocation(line: 810, column: 42, scope: !3514)
!3542 = !DILocation(line: 810, column: 51, scope: !3514)
!3543 = !DILocation(line: 811, column: 35, scope: !3514)
!3544 = !DILocation(line: 811, column: 44, scope: !3514)
!3545 = !DILocation(line: 812, column: 35, scope: !3514)
!3546 = !DILocation(line: 812, column: 44, scope: !3514)
!3547 = !DILocation(line: 809, column: 9, scope: !3514)
!3548 = !DILocation(line: 813, column: 7, scope: !3514)
!3549 = !DILocation(line: 815, column: 13, scope: !3477)
!3550 = !DILocation(line: 815, column: 5, scope: !3477)
!3551 = !DILocation(line: 815, column: 11, scope: !3477)
!3552 = !DILocation(line: 816, column: 12, scope: !3477)
!3553 = !DILocation(line: 816, column: 5, scope: !3477)
!3554 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !162, file: !162, line: 827, type: !3555, isLocal: false, isDefinition: true, scopeLine: 828, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{!60, !61, !52, !172}
!3557 = !DILocalVariable(name: "n", arg: 1, scope: !3554, file: !162, line: 827, type: !61)
!3558 = !DILocation(line: 827, column: 21, scope: !3554)
!3559 = !DILocalVariable(name: "arg", arg: 2, scope: !3554, file: !162, line: 827, type: !52)
!3560 = !DILocation(line: 827, column: 36, scope: !3554)
!3561 = !DILocalVariable(name: "argsize", arg: 3, scope: !3554, file: !162, line: 827, type: !172)
!3562 = !DILocation(line: 827, column: 48, scope: !3554)
!3563 = !DILocation(line: 829, column: 30, scope: !3554)
!3564 = !DILocation(line: 829, column: 33, scope: !3554)
!3565 = !DILocation(line: 829, column: 38, scope: !3554)
!3566 = !DILocation(line: 829, column: 10, scope: !3554)
!3567 = !DILocation(line: 829, column: 3, scope: !3554)
!3568 = distinct !DISubprogram(name: "quotearg", scope: !162, file: !162, line: 833, type: !1674, isLocal: false, isDefinition: true, scopeLine: 834, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3569 = !DILocalVariable(name: "arg", arg: 1, scope: !3568, file: !162, line: 833, type: !52)
!3570 = !DILocation(line: 833, column: 23, scope: !3568)
!3571 = !DILocation(line: 835, column: 25, scope: !3568)
!3572 = !DILocation(line: 835, column: 10, scope: !3568)
!3573 = !DILocation(line: 835, column: 3, scope: !3568)
!3574 = distinct !DISubprogram(name: "quotearg_mem", scope: !162, file: !162, line: 839, type: !3575, isLocal: false, isDefinition: true, scopeLine: 840, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!60, !52, !172}
!3577 = !DILocalVariable(name: "arg", arg: 1, scope: !3574, file: !162, line: 839, type: !52)
!3578 = !DILocation(line: 839, column: 27, scope: !3574)
!3579 = !DILocalVariable(name: "argsize", arg: 2, scope: !3574, file: !162, line: 839, type: !172)
!3580 = !DILocation(line: 839, column: 39, scope: !3574)
!3581 = !DILocation(line: 841, column: 29, scope: !3574)
!3582 = !DILocation(line: 841, column: 34, scope: !3574)
!3583 = !DILocation(line: 841, column: 10, scope: !3574)
!3584 = !DILocation(line: 841, column: 3, scope: !3574)
!3585 = distinct !DISubprogram(name: "quotearg_n_style", scope: !162, file: !162, line: 845, type: !3586, isLocal: false, isDefinition: true, scopeLine: 846, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3586 = !DISubroutineType(types: !3587)
!3587 = !{!60, !61, !120, !52}
!3588 = !DILocalVariable(name: "n", arg: 1, scope: !3585, file: !162, line: 845, type: !61)
!3589 = !DILocation(line: 845, column: 23, scope: !3585)
!3590 = !DILocalVariable(name: "s", arg: 2, scope: !3585, file: !162, line: 845, type: !120)
!3591 = !DILocation(line: 845, column: 45, scope: !3585)
!3592 = !DILocalVariable(name: "arg", arg: 3, scope: !3585, file: !162, line: 845, type: !52)
!3593 = !DILocation(line: 845, column: 60, scope: !3585)
!3594 = !DILocalVariable(name: "o", scope: !3585, file: !162, line: 847, type: !2490)
!3595 = !DILocation(line: 847, column: 32, scope: !3585)
!3596 = !DILocation(line: 847, column: 64, scope: !3585)
!3597 = !DILocation(line: 847, column: 36, scope: !3585)
!3598 = !DILocation(line: 848, column: 30, scope: !3585)
!3599 = !DILocation(line: 848, column: 33, scope: !3585)
!3600 = !DILocation(line: 848, column: 10, scope: !3585)
!3601 = !DILocation(line: 848, column: 3, scope: !3585)
!3602 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !162, file: !162, line: 179, type: !3603, isLocal: true, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{!183, !120}
!3605 = !DILocalVariable(name: "style", arg: 1, scope: !3602, file: !162, line: 179, type: !120)
!3606 = !DILocation(line: 179, column: 48, scope: !3602)
!3607 = !DILocalVariable(name: "o", scope: !3602, file: !162, line: 181, type: !183)
!3608 = !DILocation(line: 181, column: 26, scope: !3602)
!3609 = !DILocation(line: 182, column: 7, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3602, file: !162, line: 182, column: 7)
!3611 = !DILocation(line: 182, column: 13, scope: !3610)
!3612 = !DILocation(line: 182, column: 7, scope: !3602)
!3613 = !DILocation(line: 183, column: 5, scope: !3610)
!3614 = !DILocation(line: 184, column: 13, scope: !3602)
!3615 = !DILocation(line: 184, column: 5, scope: !3602)
!3616 = !DILocation(line: 184, column: 11, scope: !3602)
!3617 = !DILocation(line: 185, column: 10, scope: !3602)
!3618 = !DILocation(line: 185, column: 3, scope: !3602)
!3619 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !162, file: !162, line: 852, type: !3620, isLocal: false, isDefinition: true, scopeLine: 854, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{!60, !61, !120, !52, !172}
!3622 = !DILocalVariable(name: "n", arg: 1, scope: !3619, file: !162, line: 852, type: !61)
!3623 = !DILocation(line: 852, column: 27, scope: !3619)
!3624 = !DILocalVariable(name: "s", arg: 2, scope: !3619, file: !162, line: 852, type: !120)
!3625 = !DILocation(line: 852, column: 49, scope: !3619)
!3626 = !DILocalVariable(name: "arg", arg: 3, scope: !3619, file: !162, line: 853, type: !52)
!3627 = !DILocation(line: 853, column: 35, scope: !3619)
!3628 = !DILocalVariable(name: "argsize", arg: 4, scope: !3619, file: !162, line: 853, type: !172)
!3629 = !DILocation(line: 853, column: 47, scope: !3619)
!3630 = !DILocalVariable(name: "o", scope: !3619, file: !162, line: 855, type: !2490)
!3631 = !DILocation(line: 855, column: 32, scope: !3619)
!3632 = !DILocation(line: 855, column: 64, scope: !3619)
!3633 = !DILocation(line: 855, column: 36, scope: !3619)
!3634 = !DILocation(line: 856, column: 30, scope: !3619)
!3635 = !DILocation(line: 856, column: 33, scope: !3619)
!3636 = !DILocation(line: 856, column: 38, scope: !3619)
!3637 = !DILocation(line: 856, column: 10, scope: !3619)
!3638 = !DILocation(line: 856, column: 3, scope: !3619)
!3639 = distinct !DISubprogram(name: "quotearg_style", scope: !162, file: !162, line: 860, type: !3640, isLocal: false, isDefinition: true, scopeLine: 861, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!60, !120, !52}
!3642 = !DILocalVariable(name: "s", arg: 1, scope: !3639, file: !162, line: 860, type: !120)
!3643 = !DILocation(line: 860, column: 36, scope: !3639)
!3644 = !DILocalVariable(name: "arg", arg: 2, scope: !3639, file: !162, line: 860, type: !52)
!3645 = !DILocation(line: 860, column: 51, scope: !3639)
!3646 = !DILocation(line: 862, column: 31, scope: !3639)
!3647 = !DILocation(line: 862, column: 34, scope: !3639)
!3648 = !DILocation(line: 862, column: 10, scope: !3639)
!3649 = !DILocation(line: 862, column: 3, scope: !3639)
!3650 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !162, file: !162, line: 866, type: !3651, isLocal: false, isDefinition: true, scopeLine: 867, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{!60, !120, !52, !172}
!3653 = !DILocalVariable(name: "s", arg: 1, scope: !3650, file: !162, line: 866, type: !120)
!3654 = !DILocation(line: 866, column: 40, scope: !3650)
!3655 = !DILocalVariable(name: "arg", arg: 2, scope: !3650, file: !162, line: 866, type: !52)
!3656 = !DILocation(line: 866, column: 55, scope: !3650)
!3657 = !DILocalVariable(name: "argsize", arg: 3, scope: !3650, file: !162, line: 866, type: !172)
!3658 = !DILocation(line: 866, column: 67, scope: !3650)
!3659 = !DILocation(line: 868, column: 35, scope: !3650)
!3660 = !DILocation(line: 868, column: 38, scope: !3650)
!3661 = !DILocation(line: 868, column: 43, scope: !3650)
!3662 = !DILocation(line: 868, column: 10, scope: !3650)
!3663 = !DILocation(line: 868, column: 3, scope: !3650)
!3664 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !162, file: !162, line: 872, type: !3665, isLocal: false, isDefinition: true, scopeLine: 873, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!60, !52, !172, !54}
!3667 = !DILocalVariable(name: "arg", arg: 1, scope: !3664, file: !162, line: 872, type: !52)
!3668 = !DILocation(line: 872, column: 32, scope: !3664)
!3669 = !DILocalVariable(name: "argsize", arg: 2, scope: !3664, file: !162, line: 872, type: !172)
!3670 = !DILocation(line: 872, column: 44, scope: !3664)
!3671 = !DILocalVariable(name: "ch", arg: 3, scope: !3664, file: !162, line: 872, type: !54)
!3672 = !DILocation(line: 872, column: 58, scope: !3664)
!3673 = !DILocalVariable(name: "options", scope: !3664, file: !162, line: 874, type: !183)
!3674 = !DILocation(line: 874, column: 26, scope: !3664)
!3675 = !DILocation(line: 875, column: 13, scope: !3664)
!3676 = !DILocation(line: 876, column: 31, scope: !3664)
!3677 = !DILocation(line: 876, column: 3, scope: !3664)
!3678 = !DILocation(line: 877, column: 33, scope: !3664)
!3679 = !DILocation(line: 877, column: 38, scope: !3664)
!3680 = !DILocation(line: 877, column: 10, scope: !3664)
!3681 = !DILocation(line: 877, column: 3, scope: !3664)
!3682 = distinct !DISubprogram(name: "quotearg_char", scope: !162, file: !162, line: 881, type: !3683, isLocal: false, isDefinition: true, scopeLine: 882, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!60, !52, !54}
!3685 = !DILocalVariable(name: "arg", arg: 1, scope: !3682, file: !162, line: 881, type: !52)
!3686 = !DILocation(line: 881, column: 28, scope: !3682)
!3687 = !DILocalVariable(name: "ch", arg: 2, scope: !3682, file: !162, line: 881, type: !54)
!3688 = !DILocation(line: 881, column: 38, scope: !3682)
!3689 = !DILocation(line: 883, column: 29, scope: !3682)
!3690 = !DILocation(line: 883, column: 44, scope: !3682)
!3691 = !DILocation(line: 883, column: 10, scope: !3682)
!3692 = !DILocation(line: 883, column: 3, scope: !3682)
!3693 = distinct !DISubprogram(name: "quotearg_colon", scope: !162, file: !162, line: 887, type: !1674, isLocal: false, isDefinition: true, scopeLine: 888, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3694 = !DILocalVariable(name: "arg", arg: 1, scope: !3693, file: !162, line: 887, type: !52)
!3695 = !DILocation(line: 887, column: 29, scope: !3693)
!3696 = !DILocation(line: 889, column: 25, scope: !3693)
!3697 = !DILocation(line: 889, column: 10, scope: !3693)
!3698 = !DILocation(line: 889, column: 3, scope: !3693)
!3699 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !162, file: !162, line: 893, type: !3575, isLocal: false, isDefinition: true, scopeLine: 894, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3700 = !DILocalVariable(name: "arg", arg: 1, scope: !3699, file: !162, line: 893, type: !52)
!3701 = !DILocation(line: 893, column: 33, scope: !3699)
!3702 = !DILocalVariable(name: "argsize", arg: 2, scope: !3699, file: !162, line: 893, type: !172)
!3703 = !DILocation(line: 893, column: 45, scope: !3699)
!3704 = !DILocation(line: 895, column: 29, scope: !3699)
!3705 = !DILocation(line: 895, column: 34, scope: !3699)
!3706 = !DILocation(line: 895, column: 10, scope: !3699)
!3707 = !DILocation(line: 895, column: 3, scope: !3699)
!3708 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !162, file: !162, line: 899, type: !3709, isLocal: false, isDefinition: true, scopeLine: 901, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!60, !61, !52, !52, !52}
!3711 = !DILocalVariable(name: "n", arg: 1, scope: !3708, file: !162, line: 899, type: !61)
!3712 = !DILocation(line: 899, column: 24, scope: !3708)
!3713 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3708, file: !162, line: 899, type: !52)
!3714 = !DILocation(line: 899, column: 39, scope: !3708)
!3715 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3708, file: !162, line: 900, type: !52)
!3716 = !DILocation(line: 900, column: 32, scope: !3708)
!3717 = !DILocalVariable(name: "arg", arg: 4, scope: !3708, file: !162, line: 900, type: !52)
!3718 = !DILocation(line: 900, column: 57, scope: !3708)
!3719 = !DILocation(line: 902, column: 33, scope: !3708)
!3720 = !DILocation(line: 902, column: 36, scope: !3708)
!3721 = !DILocation(line: 902, column: 48, scope: !3708)
!3722 = !DILocation(line: 902, column: 61, scope: !3708)
!3723 = !DILocation(line: 902, column: 10, scope: !3708)
!3724 = !DILocation(line: 902, column: 3, scope: !3708)
!3725 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !162, file: !162, line: 907, type: !3726, isLocal: false, isDefinition: true, scopeLine: 910, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!60, !61, !52, !52, !52, !172}
!3728 = !DILocalVariable(name: "n", arg: 1, scope: !3725, file: !162, line: 907, type: !61)
!3729 = !DILocation(line: 907, column: 28, scope: !3725)
!3730 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3725, file: !162, line: 907, type: !52)
!3731 = !DILocation(line: 907, column: 43, scope: !3725)
!3732 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3725, file: !162, line: 908, type: !52)
!3733 = !DILocation(line: 908, column: 36, scope: !3725)
!3734 = !DILocalVariable(name: "arg", arg: 4, scope: !3725, file: !162, line: 909, type: !52)
!3735 = !DILocation(line: 909, column: 36, scope: !3725)
!3736 = !DILocalVariable(name: "argsize", arg: 5, scope: !3725, file: !162, line: 909, type: !172)
!3737 = !DILocation(line: 909, column: 48, scope: !3725)
!3738 = !DILocalVariable(name: "o", scope: !3725, file: !162, line: 911, type: !183)
!3739 = !DILocation(line: 911, column: 26, scope: !3725)
!3740 = !DILocation(line: 911, column: 30, scope: !3725)
!3741 = !DILocation(line: 912, column: 27, scope: !3725)
!3742 = !DILocation(line: 912, column: 39, scope: !3725)
!3743 = !DILocation(line: 912, column: 3, scope: !3725)
!3744 = !DILocation(line: 913, column: 30, scope: !3725)
!3745 = !DILocation(line: 913, column: 33, scope: !3725)
!3746 = !DILocation(line: 913, column: 38, scope: !3725)
!3747 = !DILocation(line: 913, column: 10, scope: !3725)
!3748 = !DILocation(line: 913, column: 3, scope: !3725)
!3749 = distinct !DISubprogram(name: "quotearg_custom", scope: !162, file: !162, line: 917, type: !3750, isLocal: false, isDefinition: true, scopeLine: 919, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!60, !52, !52, !52}
!3752 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3749, file: !162, line: 917, type: !52)
!3753 = !DILocation(line: 917, column: 30, scope: !3749)
!3754 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3749, file: !162, line: 917, type: !52)
!3755 = !DILocation(line: 917, column: 54, scope: !3749)
!3756 = !DILocalVariable(name: "arg", arg: 3, scope: !3749, file: !162, line: 918, type: !52)
!3757 = !DILocation(line: 918, column: 30, scope: !3749)
!3758 = !DILocation(line: 920, column: 32, scope: !3749)
!3759 = !DILocation(line: 920, column: 44, scope: !3749)
!3760 = !DILocation(line: 920, column: 57, scope: !3749)
!3761 = !DILocation(line: 920, column: 10, scope: !3749)
!3762 = !DILocation(line: 920, column: 3, scope: !3749)
!3763 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !162, file: !162, line: 924, type: !3764, isLocal: false, isDefinition: true, scopeLine: 926, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!60, !52, !52, !52, !172}
!3766 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3763, file: !162, line: 924, type: !52)
!3767 = !DILocation(line: 924, column: 34, scope: !3763)
!3768 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3763, file: !162, line: 924, type: !52)
!3769 = !DILocation(line: 924, column: 58, scope: !3763)
!3770 = !DILocalVariable(name: "arg", arg: 3, scope: !3763, file: !162, line: 925, type: !52)
!3771 = !DILocation(line: 925, column: 34, scope: !3763)
!3772 = !DILocalVariable(name: "argsize", arg: 4, scope: !3763, file: !162, line: 925, type: !172)
!3773 = !DILocation(line: 925, column: 46, scope: !3763)
!3774 = !DILocation(line: 927, column: 36, scope: !3763)
!3775 = !DILocation(line: 927, column: 48, scope: !3763)
!3776 = !DILocation(line: 927, column: 61, scope: !3763)
!3777 = !DILocation(line: 928, column: 33, scope: !3763)
!3778 = !DILocation(line: 927, column: 10, scope: !3763)
!3779 = !DILocation(line: 927, column: 3, scope: !3763)
!3780 = distinct !DISubprogram(name: "quote_n", scope: !162, file: !162, line: 942, type: !3781, isLocal: false, isDefinition: true, scopeLine: 943, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!52, !61, !52}
!3783 = !DILocalVariable(name: "n", arg: 1, scope: !3780, file: !162, line: 942, type: !61)
!3784 = !DILocation(line: 942, column: 14, scope: !3780)
!3785 = !DILocalVariable(name: "name", arg: 2, scope: !3780, file: !162, line: 942, type: !52)
!3786 = !DILocation(line: 942, column: 29, scope: !3780)
!3787 = !DILocation(line: 944, column: 30, scope: !3780)
!3788 = !DILocation(line: 944, column: 33, scope: !3780)
!3789 = !DILocation(line: 944, column: 10, scope: !3780)
!3790 = !DILocation(line: 944, column: 3, scope: !3780)
!3791 = distinct !DISubprogram(name: "quote", scope: !162, file: !162, line: 948, type: !3792, isLocal: false, isDefinition: true, scopeLine: 949, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!52, !52}
!3794 = !DILocalVariable(name: "name", arg: 1, scope: !3791, file: !162, line: 948, type: !52)
!3795 = !DILocation(line: 948, column: 20, scope: !3791)
!3796 = !DILocation(line: 950, column: 22, scope: !3791)
!3797 = !DILocation(line: 950, column: 10, scope: !3791)
!3798 = !DILocation(line: 950, column: 3, scope: !3791)
!3799 = distinct !DISubprogram(name: "version_etc_arn", scope: !633, file: !633, line: 62, type: !3800, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: false, unit: !632, variables: !113)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{null, !3802, !52, !52, !52, !1376, !172}
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1771, line: 7, baseType: !3804)
!3804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1773, line: 245, size: 1728, elements: !3805)
!3805 = !{!3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3804, file: !1773, line: 246, baseType: !61, size: 32)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3804, file: !1773, line: 251, baseType: !60, size: 64, offset: 64)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3804, file: !1773, line: 252, baseType: !60, size: 64, offset: 128)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3804, file: !1773, line: 253, baseType: !60, size: 64, offset: 192)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3804, file: !1773, line: 254, baseType: !60, size: 64, offset: 256)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3804, file: !1773, line: 255, baseType: !60, size: 64, offset: 320)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3804, file: !1773, line: 256, baseType: !60, size: 64, offset: 384)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3804, file: !1773, line: 257, baseType: !60, size: 64, offset: 448)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3804, file: !1773, line: 258, baseType: !60, size: 64, offset: 512)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3804, file: !1773, line: 260, baseType: !60, size: 64, offset: 576)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3804, file: !1773, line: 261, baseType: !60, size: 64, offset: 640)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3804, file: !1773, line: 262, baseType: !60, size: 64, offset: 704)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3804, file: !1773, line: 264, baseType: !3819, size: 64, offset: 768)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1773, line: 160, size: 192, elements: !3821)
!3821 = !{!3822, !3823, !3825}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3820, file: !1773, line: 161, baseType: !3819, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3820, file: !1773, line: 162, baseType: !3824, size: 64, offset: 64)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3820, file: !1773, line: 166, baseType: !61, size: 32, offset: 128)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3804, file: !1773, line: 266, baseType: !3824, size: 64, offset: 832)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3804, file: !1773, line: 268, baseType: !61, size: 32, offset: 896)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3804, file: !1773, line: 272, baseType: !61, size: 32, offset: 928)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3804, file: !1773, line: 274, baseType: !1751, size: 64, offset: 960)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3804, file: !1773, line: 278, baseType: !62, size: 16, offset: 1024)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3804, file: !1773, line: 279, baseType: !1801, size: 8, offset: 1040)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3804, file: !1773, line: 280, baseType: !1803, size: 8, offset: 1048)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3804, file: !1773, line: 284, baseType: !1807, size: 64, offset: 1088)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3804, file: !1773, line: 293, baseType: !1810, size: 64, offset: 1152)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3804, file: !1773, line: 301, baseType: !55, size: 64, offset: 1216)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3804, file: !1773, line: 302, baseType: !55, size: 64, offset: 1280)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3804, file: !1773, line: 303, baseType: !55, size: 64, offset: 1344)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3804, file: !1773, line: 304, baseType: !55, size: 64, offset: 1408)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3804, file: !1773, line: 306, baseType: !172, size: 64, offset: 1472)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3804, file: !1773, line: 307, baseType: !61, size: 32, offset: 1536)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3804, file: !1773, line: 309, baseType: !1818, size: 160, offset: 1568)
!3842 = !DILocalVariable(name: "stream", arg: 1, scope: !3799, file: !633, line: 62, type: !3802)
!3843 = !DILocation(line: 62, column: 24, scope: !3799)
!3844 = !DILocalVariable(name: "command_name", arg: 2, scope: !3799, file: !633, line: 63, type: !52)
!3845 = !DILocation(line: 63, column: 30, scope: !3799)
!3846 = !DILocalVariable(name: "package", arg: 3, scope: !3799, file: !633, line: 63, type: !52)
!3847 = !DILocation(line: 63, column: 56, scope: !3799)
!3848 = !DILocalVariable(name: "version", arg: 4, scope: !3799, file: !633, line: 64, type: !52)
!3849 = !DILocation(line: 64, column: 30, scope: !3799)
!3850 = !DILocalVariable(name: "authors", arg: 5, scope: !3799, file: !633, line: 65, type: !1376)
!3851 = !DILocation(line: 65, column: 39, scope: !3799)
!3852 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3799, file: !633, line: 65, type: !172)
!3853 = !DILocation(line: 65, column: 55, scope: !3799)
!3854 = !DILocation(line: 67, column: 7, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3799, file: !633, line: 67, column: 7)
!3856 = !DILocation(line: 67, column: 7, scope: !3799)
!3857 = !DILocation(line: 68, column: 14, scope: !3855)
!3858 = !DILocation(line: 68, column: 38, scope: !3855)
!3859 = !DILocation(line: 68, column: 52, scope: !3855)
!3860 = !DILocation(line: 68, column: 61, scope: !3855)
!3861 = !DILocation(line: 68, column: 5, scope: !3855)
!3862 = !DILocation(line: 70, column: 14, scope: !3855)
!3863 = !DILocation(line: 70, column: 33, scope: !3855)
!3864 = !DILocation(line: 70, column: 42, scope: !3855)
!3865 = !DILocation(line: 70, column: 5, scope: !3855)
!3866 = !DILocation(line: 84, column: 12, scope: !3799)
!3867 = !DILocation(line: 84, column: 3, scope: !3799)
!3868 = !DILocation(line: 86, column: 3, scope: !3799)
!3869 = !DILocation(line: 95, column: 11, scope: !3799)
!3870 = !DILocation(line: 95, column: 3, scope: !3799)
!3871 = !DILocation(line: 99, column: 7, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3799, file: !633, line: 96, column: 5)
!3873 = !DILocation(line: 102, column: 16, scope: !3872)
!3874 = !DILocation(line: 102, column: 47, scope: !3872)
!3875 = !DILocation(line: 102, column: 7, scope: !3872)
!3876 = !DILocation(line: 103, column: 7, scope: !3872)
!3877 = !DILocation(line: 106, column: 16, scope: !3872)
!3878 = !DILocation(line: 106, column: 54, scope: !3872)
!3879 = !DILocation(line: 106, column: 66, scope: !3872)
!3880 = !DILocation(line: 106, column: 7, scope: !3872)
!3881 = !DILocation(line: 107, column: 7, scope: !3872)
!3882 = !DILocation(line: 110, column: 16, scope: !3872)
!3883 = !DILocation(line: 111, column: 16, scope: !3872)
!3884 = !DILocation(line: 111, column: 28, scope: !3872)
!3885 = !DILocation(line: 111, column: 40, scope: !3872)
!3886 = !DILocation(line: 110, column: 7, scope: !3872)
!3887 = !DILocation(line: 112, column: 7, scope: !3872)
!3888 = !DILocation(line: 117, column: 16, scope: !3872)
!3889 = !DILocation(line: 118, column: 16, scope: !3872)
!3890 = !DILocation(line: 118, column: 28, scope: !3872)
!3891 = !DILocation(line: 118, column: 40, scope: !3872)
!3892 = !DILocation(line: 118, column: 52, scope: !3872)
!3893 = !DILocation(line: 117, column: 7, scope: !3872)
!3894 = !DILocation(line: 119, column: 7, scope: !3872)
!3895 = !DILocation(line: 124, column: 16, scope: !3872)
!3896 = !DILocation(line: 125, column: 16, scope: !3872)
!3897 = !DILocation(line: 125, column: 28, scope: !3872)
!3898 = !DILocation(line: 125, column: 40, scope: !3872)
!3899 = !DILocation(line: 125, column: 52, scope: !3872)
!3900 = !DILocation(line: 125, column: 64, scope: !3872)
!3901 = !DILocation(line: 124, column: 7, scope: !3872)
!3902 = !DILocation(line: 126, column: 7, scope: !3872)
!3903 = !DILocation(line: 131, column: 16, scope: !3872)
!3904 = !DILocation(line: 132, column: 16, scope: !3872)
!3905 = !DILocation(line: 132, column: 28, scope: !3872)
!3906 = !DILocation(line: 132, column: 40, scope: !3872)
!3907 = !DILocation(line: 132, column: 52, scope: !3872)
!3908 = !DILocation(line: 132, column: 64, scope: !3872)
!3909 = !DILocation(line: 133, column: 16, scope: !3872)
!3910 = !DILocation(line: 131, column: 7, scope: !3872)
!3911 = !DILocation(line: 134, column: 7, scope: !3872)
!3912 = !DILocation(line: 139, column: 16, scope: !3872)
!3913 = !DILocation(line: 140, column: 16, scope: !3872)
!3914 = !DILocation(line: 140, column: 28, scope: !3872)
!3915 = !DILocation(line: 140, column: 40, scope: !3872)
!3916 = !DILocation(line: 140, column: 52, scope: !3872)
!3917 = !DILocation(line: 140, column: 64, scope: !3872)
!3918 = !DILocation(line: 141, column: 16, scope: !3872)
!3919 = !DILocation(line: 141, column: 28, scope: !3872)
!3920 = !DILocation(line: 139, column: 7, scope: !3872)
!3921 = !DILocation(line: 142, column: 7, scope: !3872)
!3922 = !DILocation(line: 147, column: 16, scope: !3872)
!3923 = !DILocation(line: 149, column: 17, scope: !3872)
!3924 = !DILocation(line: 149, column: 29, scope: !3872)
!3925 = !DILocation(line: 149, column: 41, scope: !3872)
!3926 = !DILocation(line: 149, column: 53, scope: !3872)
!3927 = !DILocation(line: 149, column: 65, scope: !3872)
!3928 = !DILocation(line: 150, column: 17, scope: !3872)
!3929 = !DILocation(line: 150, column: 29, scope: !3872)
!3930 = !DILocation(line: 150, column: 41, scope: !3872)
!3931 = !DILocation(line: 147, column: 7, scope: !3872)
!3932 = !DILocation(line: 151, column: 7, scope: !3872)
!3933 = !DILocation(line: 156, column: 16, scope: !3872)
!3934 = !DILocation(line: 158, column: 16, scope: !3872)
!3935 = !DILocation(line: 158, column: 28, scope: !3872)
!3936 = !DILocation(line: 158, column: 40, scope: !3872)
!3937 = !DILocation(line: 158, column: 52, scope: !3872)
!3938 = !DILocation(line: 158, column: 64, scope: !3872)
!3939 = !DILocation(line: 159, column: 16, scope: !3872)
!3940 = !DILocation(line: 159, column: 28, scope: !3872)
!3941 = !DILocation(line: 159, column: 40, scope: !3872)
!3942 = !DILocation(line: 159, column: 52, scope: !3872)
!3943 = !DILocation(line: 156, column: 7, scope: !3872)
!3944 = !DILocation(line: 160, column: 7, scope: !3872)
!3945 = !DILocation(line: 167, column: 16, scope: !3872)
!3946 = !DILocation(line: 169, column: 17, scope: !3872)
!3947 = !DILocation(line: 169, column: 29, scope: !3872)
!3948 = !DILocation(line: 169, column: 41, scope: !3872)
!3949 = !DILocation(line: 169, column: 53, scope: !3872)
!3950 = !DILocation(line: 169, column: 65, scope: !3872)
!3951 = !DILocation(line: 170, column: 17, scope: !3872)
!3952 = !DILocation(line: 170, column: 29, scope: !3872)
!3953 = !DILocation(line: 170, column: 41, scope: !3872)
!3954 = !DILocation(line: 170, column: 53, scope: !3872)
!3955 = !DILocation(line: 167, column: 7, scope: !3872)
!3956 = !DILocation(line: 171, column: 7, scope: !3872)
!3957 = !DILocation(line: 173, column: 1, scope: !3799)
!3958 = distinct !DISubprogram(name: "version_etc_ar", scope: !633, file: !633, line: 180, type: !3959, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: false, unit: !632, variables: !113)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{null, !3802, !52, !52, !52, !1376}
!3961 = !DILocalVariable(name: "stream", arg: 1, scope: !3958, file: !633, line: 180, type: !3802)
!3962 = !DILocation(line: 180, column: 23, scope: !3958)
!3963 = !DILocalVariable(name: "command_name", arg: 2, scope: !3958, file: !633, line: 181, type: !52)
!3964 = !DILocation(line: 181, column: 29, scope: !3958)
!3965 = !DILocalVariable(name: "package", arg: 3, scope: !3958, file: !633, line: 181, type: !52)
!3966 = !DILocation(line: 181, column: 55, scope: !3958)
!3967 = !DILocalVariable(name: "version", arg: 4, scope: !3958, file: !633, line: 182, type: !52)
!3968 = !DILocation(line: 182, column: 29, scope: !3958)
!3969 = !DILocalVariable(name: "authors", arg: 5, scope: !3958, file: !633, line: 182, type: !1376)
!3970 = !DILocation(line: 182, column: 59, scope: !3958)
!3971 = !DILocalVariable(name: "n_authors", scope: !3958, file: !633, line: 184, type: !172)
!3972 = !DILocation(line: 184, column: 10, scope: !3958)
!3973 = !DILocation(line: 186, column: 18, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3958, file: !633, line: 186, column: 3)
!3975 = !DILocation(line: 186, column: 8, scope: !3974)
!3976 = !DILocation(line: 186, column: 23, scope: !3977)
!3977 = distinct !DILexicalBlock(scope: !3974, file: !633, line: 186, column: 3)
!3978 = !DILocation(line: 186, column: 31, scope: !3977)
!3979 = !DILocation(line: 186, column: 3, scope: !3974)
!3980 = !DILocation(line: 186, column: 52, scope: !3977)
!3981 = !DILocation(line: 186, column: 3, scope: !3977)
!3982 = distinct !{!3982, !3979, !3983}
!3983 = !DILocation(line: 187, column: 5, scope: !3974)
!3984 = !DILocation(line: 188, column: 20, scope: !3958)
!3985 = !DILocation(line: 188, column: 28, scope: !3958)
!3986 = !DILocation(line: 188, column: 42, scope: !3958)
!3987 = !DILocation(line: 188, column: 51, scope: !3958)
!3988 = !DILocation(line: 188, column: 60, scope: !3958)
!3989 = !DILocation(line: 188, column: 69, scope: !3958)
!3990 = !DILocation(line: 188, column: 3, scope: !3958)
!3991 = !DILocation(line: 189, column: 1, scope: !3958)
!3992 = distinct !DISubprogram(name: "version_etc_va", scope: !633, file: !633, line: 196, type: !3993, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: false, unit: !632, variables: !113)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{null, !3802, !52, !52, !52, !3995}
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !633, line: 189, size: 192, elements: !3997)
!3997 = !{!3998, !3999, !4000, !4001}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3996, file: !633, line: 189, baseType: !189, size: 32)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3996, file: !633, line: 189, baseType: !189, size: 32, offset: 32)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3996, file: !633, line: 189, baseType: !55, size: 64, offset: 64)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3996, file: !633, line: 189, baseType: !55, size: 64, offset: 128)
!4002 = !DILocalVariable(name: "stream", arg: 1, scope: !3992, file: !633, line: 196, type: !3802)
!4003 = !DILocation(line: 196, column: 23, scope: !3992)
!4004 = !DILocalVariable(name: "command_name", arg: 2, scope: !3992, file: !633, line: 197, type: !52)
!4005 = !DILocation(line: 197, column: 29, scope: !3992)
!4006 = !DILocalVariable(name: "package", arg: 3, scope: !3992, file: !633, line: 197, type: !52)
!4007 = !DILocation(line: 197, column: 55, scope: !3992)
!4008 = !DILocalVariable(name: "version", arg: 4, scope: !3992, file: !633, line: 198, type: !52)
!4009 = !DILocation(line: 198, column: 29, scope: !3992)
!4010 = !DILocalVariable(name: "authors", arg: 5, scope: !3992, file: !633, line: 198, type: !3995)
!4011 = !DILocation(line: 198, column: 46, scope: !3992)
!4012 = !DILocalVariable(name: "n_authors", scope: !3992, file: !633, line: 200, type: !172)
!4013 = !DILocation(line: 200, column: 10, scope: !3992)
!4014 = !DILocalVariable(name: "authtab", scope: !3992, file: !633, line: 201, type: !4015)
!4015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 640, elements: !4016)
!4016 = !{!4017}
!4017 = !DISubrange(count: 10)
!4018 = !DILocation(line: 201, column: 15, scope: !3992)
!4019 = !DILocation(line: 203, column: 18, scope: !4020)
!4020 = distinct !DILexicalBlock(scope: !3992, file: !633, line: 203, column: 3)
!4021 = !DILocation(line: 203, column: 8, scope: !4020)
!4022 = !DILocation(line: 204, column: 8, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !4020, file: !633, line: 203, column: 3)
!4024 = !DILocation(line: 204, column: 18, scope: !4023)
!4025 = !DILocation(line: 205, column: 10, scope: !4023)
!4026 = !DILocation(line: 205, column: 35, scope: !4023)
!4027 = !DILocation(line: 205, column: 22, scope: !4023)
!4028 = !DILocation(line: 205, column: 14, scope: !4023)
!4029 = !DILocation(line: 205, column: 33, scope: !4023)
!4030 = !DILocation(line: 205, column: 67, scope: !4023)
!4031 = !DILocation(line: 203, column: 3, scope: !4020)
!4032 = !DILocation(line: 206, column: 17, scope: !4023)
!4033 = !DILocation(line: 203, column: 3, scope: !4023)
!4034 = distinct !{!4034, !4031, !4035}
!4035 = !DILocation(line: 207, column: 5, scope: !4020)
!4036 = !DILocation(line: 208, column: 20, scope: !3992)
!4037 = !DILocation(line: 208, column: 28, scope: !3992)
!4038 = !DILocation(line: 208, column: 42, scope: !3992)
!4039 = !DILocation(line: 208, column: 51, scope: !3992)
!4040 = !DILocation(line: 209, column: 20, scope: !3992)
!4041 = !DILocation(line: 209, column: 29, scope: !3992)
!4042 = !DILocation(line: 208, column: 3, scope: !3992)
!4043 = !DILocation(line: 210, column: 1, scope: !3992)
!4044 = distinct !DISubprogram(name: "version_etc", scope: !633, file: !633, line: 227, type: !4045, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: false, unit: !632, variables: !113)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{null, !3802, !52, !52, !52, null}
!4047 = !DILocalVariable(name: "stream", arg: 1, scope: !4044, file: !633, line: 227, type: !3802)
!4048 = !DILocation(line: 227, column: 20, scope: !4044)
!4049 = !DILocalVariable(name: "command_name", arg: 2, scope: !4044, file: !633, line: 228, type: !52)
!4050 = !DILocation(line: 228, column: 26, scope: !4044)
!4051 = !DILocalVariable(name: "package", arg: 3, scope: !4044, file: !633, line: 228, type: !52)
!4052 = !DILocation(line: 228, column: 52, scope: !4044)
!4053 = !DILocalVariable(name: "version", arg: 4, scope: !4044, file: !633, line: 229, type: !52)
!4054 = !DILocation(line: 229, column: 26, scope: !4044)
!4055 = !DILocalVariable(name: "authors", scope: !4044, file: !633, line: 231, type: !4056)
!4056 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1750, line: 46, baseType: !4057)
!4057 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4058, line: 48, baseType: !4059)
!4058 = !DIFile(filename: "/home/ma481/Downloads/LLVM_6.0/lib/clang/6.0.0/include/stdarg.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!4059 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !633, line: 231, baseType: !4060)
!4060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3996, size: 192, elements: !1804)
!4061 = !DILocation(line: 231, column: 11, scope: !4044)
!4062 = !DILocation(line: 233, column: 3, scope: !4044)
!4063 = !DILocation(line: 234, column: 19, scope: !4044)
!4064 = !DILocation(line: 234, column: 27, scope: !4044)
!4065 = !DILocation(line: 234, column: 41, scope: !4044)
!4066 = !DILocation(line: 234, column: 50, scope: !4044)
!4067 = !DILocation(line: 234, column: 59, scope: !4044)
!4068 = !DILocation(line: 234, column: 3, scope: !4044)
!4069 = !DILocation(line: 235, column: 3, scope: !4044)
!4070 = !DILocation(line: 236, column: 1, scope: !4044)
!4071 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !633, file: !633, line: 239, type: !137, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: false, unit: !632, variables: !113)
!4072 = !DILocation(line: 245, column: 3, scope: !4071)
!4073 = !DILocation(line: 251, column: 3, scope: !4071)
!4074 = !DILocation(line: 256, column: 3, scope: !4071)
!4075 = !DILocation(line: 258, column: 1, scope: !4071)
!4076 = distinct !DISubprogram(name: "xnmalloc", scope: !643, file: !643, line: 109, type: !4077, isLocal: false, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: false, unit: !639, variables: !113)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{!55, !172, !172}
!4079 = !DILocalVariable(name: "n", arg: 1, scope: !4076, file: !643, line: 109, type: !172)
!4080 = !DILocation(line: 109, column: 18, scope: !4076)
!4081 = !DILocalVariable(name: "s", arg: 2, scope: !4076, file: !643, line: 109, type: !172)
!4082 = !DILocation(line: 109, column: 28, scope: !4076)
!4083 = !DILocation(line: 111, column: 7, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !4076, file: !643, line: 111, column: 7)
!4085 = !DILocation(line: 111, column: 7, scope: !4076)
!4086 = !DILocation(line: 112, column: 5, scope: !4084)
!4087 = !DILocation(line: 113, column: 19, scope: !4076)
!4088 = !DILocation(line: 113, column: 23, scope: !4076)
!4089 = !DILocation(line: 113, column: 21, scope: !4076)
!4090 = !DILocation(line: 113, column: 10, scope: !4076)
!4091 = !DILocation(line: 113, column: 3, scope: !4076)
!4092 = distinct !DISubprogram(name: "xmalloc", scope: !640, file: !640, line: 41, type: !4093, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: false, unit: !639, variables: !113)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!55, !172}
!4095 = !DILocalVariable(name: "n", arg: 1, scope: !4092, file: !640, line: 41, type: !172)
!4096 = !DILocation(line: 41, column: 17, scope: !4092)
!4097 = !DILocalVariable(name: "p", scope: !4092, file: !640, line: 43, type: !55)
!4098 = !DILocation(line: 43, column: 9, scope: !4092)
!4099 = !DILocation(line: 43, column: 21, scope: !4092)
!4100 = !DILocation(line: 43, column: 13, scope: !4092)
!4101 = !DILocation(line: 44, column: 8, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !4092, file: !640, line: 44, column: 7)
!4103 = !DILocation(line: 44, column: 10, scope: !4102)
!4104 = !DILocation(line: 44, column: 13, scope: !4102)
!4105 = !DILocation(line: 44, column: 15, scope: !4102)
!4106 = !DILocation(line: 44, column: 7, scope: !4092)
!4107 = !DILocation(line: 45, column: 5, scope: !4102)
!4108 = !DILocation(line: 46, column: 10, scope: !4092)
!4109 = !DILocation(line: 46, column: 3, scope: !4092)
!4110 = distinct !DISubprogram(name: "xnrealloc", scope: !643, file: !643, line: 122, type: !4111, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: false, unit: !639, variables: !113)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{!55, !55, !172, !172}
!4113 = !DILocalVariable(name: "p", arg: 1, scope: !4110, file: !643, line: 122, type: !55)
!4114 = !DILocation(line: 122, column: 18, scope: !4110)
!4115 = !DILocalVariable(name: "n", arg: 2, scope: !4110, file: !643, line: 122, type: !172)
!4116 = !DILocation(line: 122, column: 28, scope: !4110)
!4117 = !DILocalVariable(name: "s", arg: 3, scope: !4110, file: !643, line: 122, type: !172)
!4118 = !DILocation(line: 122, column: 38, scope: !4110)
!4119 = !DILocation(line: 124, column: 7, scope: !4120)
!4120 = distinct !DILexicalBlock(scope: !4110, file: !643, line: 124, column: 7)
!4121 = !DILocation(line: 124, column: 7, scope: !4110)
!4122 = !DILocation(line: 125, column: 5, scope: !4120)
!4123 = !DILocation(line: 126, column: 20, scope: !4110)
!4124 = !DILocation(line: 126, column: 23, scope: !4110)
!4125 = !DILocation(line: 126, column: 27, scope: !4110)
!4126 = !DILocation(line: 126, column: 25, scope: !4110)
!4127 = !DILocation(line: 126, column: 10, scope: !4110)
!4128 = !DILocation(line: 126, column: 3, scope: !4110)
!4129 = distinct !DISubprogram(name: "xrealloc", scope: !640, file: !640, line: 53, type: !4130, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: false, unit: !639, variables: !113)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{!55, !55, !172}
!4132 = !DILocalVariable(name: "p", arg: 1, scope: !4129, file: !640, line: 53, type: !55)
!4133 = !DILocation(line: 53, column: 17, scope: !4129)
!4134 = !DILocalVariable(name: "n", arg: 2, scope: !4129, file: !640, line: 53, type: !172)
!4135 = !DILocation(line: 53, column: 27, scope: !4129)
!4136 = !DILocation(line: 55, column: 8, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4129, file: !640, line: 55, column: 7)
!4138 = !DILocation(line: 55, column: 10, scope: !4137)
!4139 = !DILocation(line: 55, column: 13, scope: !4137)
!4140 = !DILocation(line: 55, column: 7, scope: !4129)
!4141 = !DILocation(line: 59, column: 13, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4137, file: !640, line: 56, column: 5)
!4143 = !DILocation(line: 59, column: 7, scope: !4142)
!4144 = !DILocation(line: 60, column: 7, scope: !4142)
!4145 = !DILocation(line: 63, column: 16, scope: !4129)
!4146 = !DILocation(line: 63, column: 19, scope: !4129)
!4147 = !DILocation(line: 63, column: 7, scope: !4129)
!4148 = !DILocation(line: 63, column: 5, scope: !4129)
!4149 = !DILocation(line: 64, column: 8, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4129, file: !640, line: 64, column: 7)
!4151 = !DILocation(line: 64, column: 10, scope: !4150)
!4152 = !DILocation(line: 64, column: 13, scope: !4150)
!4153 = !DILocation(line: 64, column: 7, scope: !4129)
!4154 = !DILocation(line: 65, column: 5, scope: !4150)
!4155 = !DILocation(line: 66, column: 10, scope: !4129)
!4156 = !DILocation(line: 66, column: 3, scope: !4129)
!4157 = !DILocation(line: 67, column: 1, scope: !4129)
!4158 = !DILocalVariable(name: "p", arg: 1, scope: !644, file: !643, line: 185, type: !55)
!4159 = !DILocation(line: 185, column: 19, scope: !644)
!4160 = !DILocalVariable(name: "pn", arg: 2, scope: !644, file: !643, line: 185, type: !647)
!4161 = !DILocation(line: 185, column: 30, scope: !644)
!4162 = !DILocalVariable(name: "s", arg: 3, scope: !644, file: !643, line: 185, type: !172)
!4163 = !DILocation(line: 185, column: 41, scope: !644)
!4164 = !DILocalVariable(name: "n", scope: !644, file: !643, line: 187, type: !172)
!4165 = !DILocation(line: 187, column: 10, scope: !644)
!4166 = !DILocation(line: 187, column: 15, scope: !644)
!4167 = !DILocation(line: 187, column: 14, scope: !644)
!4168 = !DILocation(line: 189, column: 9, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !644, file: !643, line: 189, column: 7)
!4170 = !DILocation(line: 189, column: 7, scope: !644)
!4171 = !DILocation(line: 191, column: 13, scope: !4172)
!4172 = distinct !DILexicalBlock(scope: !4173, file: !643, line: 191, column: 11)
!4173 = distinct !DILexicalBlock(scope: !4169, file: !643, line: 190, column: 5)
!4174 = !DILocation(line: 191, column: 11, scope: !4173)
!4175 = !DILocation(line: 199, column: 32, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4172, file: !643, line: 192, column: 9)
!4177 = !DILocation(line: 199, column: 30, scope: !4176)
!4178 = !DILocation(line: 199, column: 13, scope: !4176)
!4179 = !DILocation(line: 200, column: 17, scope: !4176)
!4180 = !DILocation(line: 200, column: 16, scope: !4176)
!4181 = !DILocation(line: 200, column: 13, scope: !4176)
!4182 = !DILocation(line: 201, column: 9, scope: !4176)
!4183 = !DILocation(line: 202, column: 5, scope: !4173)
!4184 = !DILocation(line: 209, column: 33, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4186, file: !643, line: 209, column: 11)
!4186 = distinct !DILexicalBlock(scope: !4169, file: !643, line: 204, column: 5)
!4187 = !DILocation(line: 209, column: 31, scope: !4185)
!4188 = !DILocation(line: 209, column: 38, scope: !4185)
!4189 = !DILocation(line: 209, column: 35, scope: !4185)
!4190 = !DILocation(line: 209, column: 11, scope: !4186)
!4191 = !DILocation(line: 210, column: 9, scope: !4185)
!4192 = !DILocation(line: 211, column: 13, scope: !4186)
!4193 = !DILocation(line: 211, column: 15, scope: !4186)
!4194 = !DILocation(line: 211, column: 20, scope: !4186)
!4195 = !DILocation(line: 211, column: 9, scope: !4186)
!4196 = !DILocation(line: 214, column: 9, scope: !644)
!4197 = !DILocation(line: 214, column: 4, scope: !644)
!4198 = !DILocation(line: 214, column: 7, scope: !644)
!4199 = !DILocation(line: 215, column: 20, scope: !644)
!4200 = !DILocation(line: 215, column: 23, scope: !644)
!4201 = !DILocation(line: 215, column: 27, scope: !644)
!4202 = !DILocation(line: 215, column: 25, scope: !644)
!4203 = !DILocation(line: 215, column: 10, scope: !644)
!4204 = !DILocation(line: 215, column: 3, scope: !644)
!4205 = distinct !DISubprogram(name: "xcharalloc", scope: !643, file: !643, line: 224, type: !4206, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: false, unit: !639, variables: !113)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{!60, !172}
!4208 = !DILocalVariable(name: "n", arg: 1, scope: !4205, file: !643, line: 224, type: !172)
!4209 = !DILocation(line: 224, column: 20, scope: !4205)
!4210 = !DILocation(line: 226, column: 10, scope: !4205)
!4211 = !DILocation(line: 226, column: 3, scope: !4205)
!4212 = distinct !DISubprogram(name: "x2realloc", scope: !640, file: !640, line: 76, type: !4213, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: false, unit: !639, variables: !113)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!55, !55, !647}
!4215 = !DILocalVariable(name: "p", arg: 1, scope: !4212, file: !640, line: 76, type: !55)
!4216 = !DILocation(line: 76, column: 18, scope: !4212)
!4217 = !DILocalVariable(name: "pn", arg: 2, scope: !4212, file: !640, line: 76, type: !647)
!4218 = !DILocation(line: 76, column: 29, scope: !4212)
!4219 = !DILocation(line: 78, column: 22, scope: !4212)
!4220 = !DILocation(line: 78, column: 25, scope: !4212)
!4221 = !DILocation(line: 78, column: 10, scope: !4212)
!4222 = !DILocation(line: 78, column: 3, scope: !4212)
!4223 = distinct !DISubprogram(name: "xzalloc", scope: !640, file: !640, line: 86, type: !4093, isLocal: false, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: false, unit: !639, variables: !113)
!4224 = !DILocalVariable(name: "s", arg: 1, scope: !4223, file: !640, line: 86, type: !172)
!4225 = !DILocation(line: 86, column: 17, scope: !4223)
!4226 = !DILocation(line: 88, column: 27, scope: !4223)
!4227 = !DILocation(line: 88, column: 18, scope: !4223)
!4228 = !DILocation(line: 88, column: 34, scope: !4223)
!4229 = !DILocation(line: 88, column: 10, scope: !4223)
!4230 = !DILocation(line: 88, column: 3, scope: !4223)
!4231 = distinct !DISubprogram(name: "xcalloc", scope: !640, file: !640, line: 95, type: !4077, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: false, unit: !639, variables: !113)
!4232 = !DILocalVariable(name: "n", arg: 1, scope: !4231, file: !640, line: 95, type: !172)
!4233 = !DILocation(line: 95, column: 17, scope: !4231)
!4234 = !DILocalVariable(name: "s", arg: 2, scope: !4231, file: !640, line: 95, type: !172)
!4235 = !DILocation(line: 95, column: 27, scope: !4231)
!4236 = !DILocalVariable(name: "p", scope: !4231, file: !640, line: 97, type: !55)
!4237 = !DILocation(line: 97, column: 9, scope: !4231)
!4238 = !DILocation(line: 103, column: 26, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !4231, file: !640, line: 102, column: 7)
!4240 = !DILocation(line: 103, column: 29, scope: !4239)
!4241 = !DILocation(line: 103, column: 18, scope: !4239)
!4242 = !DILocation(line: 103, column: 16, scope: !4239)
!4243 = !DILocation(line: 102, column: 7, scope: !4231)
!4244 = !DILocation(line: 104, column: 5, scope: !4239)
!4245 = !DILocation(line: 105, column: 10, scope: !4231)
!4246 = !DILocation(line: 105, column: 3, scope: !4231)
!4247 = distinct !DISubprogram(name: "xmemdup", scope: !640, file: !640, line: 113, type: !4248, isLocal: false, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: false, unit: !639, variables: !113)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{!55, !2198, !172}
!4250 = !DILocalVariable(name: "p", arg: 1, scope: !4247, file: !640, line: 113, type: !2198)
!4251 = !DILocation(line: 113, column: 22, scope: !4247)
!4252 = !DILocalVariable(name: "s", arg: 2, scope: !4247, file: !640, line: 113, type: !172)
!4253 = !DILocation(line: 113, column: 32, scope: !4247)
!4254 = !DILocation(line: 115, column: 27, scope: !4247)
!4255 = !DILocation(line: 115, column: 18, scope: !4247)
!4256 = !DILocation(line: 115, column: 31, scope: !4247)
!4257 = !DILocation(line: 115, column: 34, scope: !4247)
!4258 = !DILocation(line: 115, column: 10, scope: !4247)
!4259 = !DILocation(line: 115, column: 3, scope: !4247)
!4260 = distinct !DISubprogram(name: "xstrdup", scope: !640, file: !640, line: 121, type: !1674, isLocal: false, isDefinition: true, scopeLine: 122, flags: DIFlagPrototyped, isOptimized: false, unit: !639, variables: !113)
!4261 = !DILocalVariable(name: "string", arg: 1, scope: !4260, file: !640, line: 121, type: !52)
!4262 = !DILocation(line: 121, column: 22, scope: !4260)
!4263 = !DILocation(line: 123, column: 19, scope: !4260)
!4264 = !DILocation(line: 123, column: 35, scope: !4260)
!4265 = !DILocation(line: 123, column: 27, scope: !4260)
!4266 = !DILocation(line: 123, column: 43, scope: !4260)
!4267 = !DILocation(line: 123, column: 10, scope: !4260)
!4268 = !DILocation(line: 123, column: 3, scope: !4260)
!4269 = distinct !DISubprogram(name: "xalloc_die", scope: !652, file: !652, line: 32, type: !137, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false, unit: !651, variables: !113)
!4270 = !DILocation(line: 34, column: 10, scope: !4269)
!4271 = !DILocation(line: 34, column: 3, scope: !4269)
!4272 = !DILocation(line: 40, column: 3, scope: !4269)
!4273 = !DILocation(line: 41, column: 1, scope: !4269)
!4274 = distinct !DISubprogram(name: "xmemcoll", scope: !654, file: !654, line: 54, type: !4275, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: false, unit: !653, variables: !113)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{!61, !60, !172, !60, !172}
!4277 = !DILocalVariable(name: "s1", arg: 1, scope: !4274, file: !654, line: 54, type: !60)
!4278 = !DILocation(line: 54, column: 17, scope: !4274)
!4279 = !DILocalVariable(name: "s1len", arg: 2, scope: !4274, file: !654, line: 54, type: !172)
!4280 = !DILocation(line: 54, column: 28, scope: !4274)
!4281 = !DILocalVariable(name: "s2", arg: 3, scope: !4274, file: !654, line: 54, type: !60)
!4282 = !DILocation(line: 54, column: 41, scope: !4274)
!4283 = !DILocalVariable(name: "s2len", arg: 4, scope: !4274, file: !654, line: 54, type: !172)
!4284 = !DILocation(line: 54, column: 52, scope: !4274)
!4285 = !DILocalVariable(name: "diff", scope: !4274, file: !654, line: 56, type: !61)
!4286 = !DILocation(line: 56, column: 7, scope: !4274)
!4287 = !DILocation(line: 56, column: 23, scope: !4274)
!4288 = !DILocation(line: 56, column: 27, scope: !4274)
!4289 = !DILocation(line: 56, column: 34, scope: !4274)
!4290 = !DILocation(line: 56, column: 38, scope: !4274)
!4291 = !DILocation(line: 56, column: 14, scope: !4274)
!4292 = !DILocalVariable(name: "collation_errno", scope: !4274, file: !654, line: 57, type: !61)
!4293 = !DILocation(line: 57, column: 7, scope: !4274)
!4294 = !DILocation(line: 57, column: 25, scope: !4274)
!4295 = !DILocation(line: 58, column: 7, scope: !4296)
!4296 = distinct !DILexicalBlock(scope: !4274, file: !654, line: 58, column: 7)
!4297 = !DILocation(line: 58, column: 7, scope: !4274)
!4298 = !DILocation(line: 59, column: 20, scope: !4296)
!4299 = !DILocation(line: 59, column: 37, scope: !4296)
!4300 = !DILocation(line: 59, column: 41, scope: !4296)
!4301 = !DILocation(line: 59, column: 48, scope: !4296)
!4302 = !DILocation(line: 59, column: 52, scope: !4296)
!4303 = !DILocation(line: 59, column: 5, scope: !4296)
!4304 = !DILocation(line: 60, column: 10, scope: !4274)
!4305 = !DILocation(line: 60, column: 3, scope: !4274)
!4306 = distinct !DISubprogram(name: "collate_error", scope: !654, file: !654, line: 35, type: !4307, isLocal: true, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: false, unit: !653, variables: !113)
!4307 = !DISubroutineType(types: !4308)
!4308 = !{null, !61, !52, !172, !52, !172}
!4309 = !DILocalVariable(name: "collation_errno", arg: 1, scope: !4306, file: !654, line: 35, type: !61)
!4310 = !DILocation(line: 35, column: 20, scope: !4306)
!4311 = !DILocalVariable(name: "s1", arg: 2, scope: !4306, file: !654, line: 36, type: !52)
!4312 = !DILocation(line: 36, column: 28, scope: !4306)
!4313 = !DILocalVariable(name: "s1len", arg: 3, scope: !4306, file: !654, line: 36, type: !172)
!4314 = !DILocation(line: 36, column: 39, scope: !4306)
!4315 = !DILocalVariable(name: "s2", arg: 4, scope: !4306, file: !654, line: 37, type: !52)
!4316 = !DILocation(line: 37, column: 28, scope: !4306)
!4317 = !DILocalVariable(name: "s2len", arg: 5, scope: !4306, file: !654, line: 37, type: !172)
!4318 = !DILocation(line: 37, column: 39, scope: !4306)
!4319 = !DILocation(line: 39, column: 13, scope: !4306)
!4320 = !DILocation(line: 39, column: 3, scope: !4306)
!4321 = !DILocation(line: 40, column: 3, scope: !4306)
!4322 = !DILocation(line: 41, column: 10, scope: !4306)
!4323 = !DILocation(line: 43, column: 57, scope: !4306)
!4324 = !DILocation(line: 43, column: 61, scope: !4306)
!4325 = !DILocation(line: 43, column: 10, scope: !4306)
!4326 = !DILocation(line: 44, column: 57, scope: !4306)
!4327 = !DILocation(line: 44, column: 61, scope: !4306)
!4328 = !DILocation(line: 44, column: 10, scope: !4306)
!4329 = !DILocation(line: 41, column: 3, scope: !4306)
!4330 = !DILocation(line: 45, column: 1, scope: !4306)
!4331 = distinct !DISubprogram(name: "xmemcoll0", scope: !654, file: !654, line: 69, type: !4332, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: false, unit: !653, variables: !113)
!4332 = !DISubroutineType(types: !4333)
!4333 = !{!61, !52, !172, !52, !172}
!4334 = !DILocalVariable(name: "s1", arg: 1, scope: !4331, file: !654, line: 69, type: !52)
!4335 = !DILocation(line: 69, column: 24, scope: !4331)
!4336 = !DILocalVariable(name: "s1size", arg: 2, scope: !4331, file: !654, line: 69, type: !172)
!4337 = !DILocation(line: 69, column: 35, scope: !4331)
!4338 = !DILocalVariable(name: "s2", arg: 3, scope: !4331, file: !654, line: 69, type: !52)
!4339 = !DILocation(line: 69, column: 55, scope: !4331)
!4340 = !DILocalVariable(name: "s2size", arg: 4, scope: !4331, file: !654, line: 69, type: !172)
!4341 = !DILocation(line: 69, column: 66, scope: !4331)
!4342 = !DILocalVariable(name: "diff", scope: !4331, file: !654, line: 71, type: !61)
!4343 = !DILocation(line: 71, column: 7, scope: !4331)
!4344 = !DILocation(line: 71, column: 24, scope: !4331)
!4345 = !DILocation(line: 71, column: 28, scope: !4331)
!4346 = !DILocation(line: 71, column: 36, scope: !4331)
!4347 = !DILocation(line: 71, column: 40, scope: !4331)
!4348 = !DILocation(line: 71, column: 14, scope: !4331)
!4349 = !DILocalVariable(name: "collation_errno", scope: !4331, file: !654, line: 72, type: !61)
!4350 = !DILocation(line: 72, column: 7, scope: !4331)
!4351 = !DILocation(line: 72, column: 25, scope: !4331)
!4352 = !DILocation(line: 73, column: 7, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !4331, file: !654, line: 73, column: 7)
!4354 = !DILocation(line: 73, column: 7, scope: !4331)
!4355 = !DILocation(line: 74, column: 20, scope: !4353)
!4356 = !DILocation(line: 74, column: 37, scope: !4353)
!4357 = !DILocation(line: 74, column: 41, scope: !4353)
!4358 = !DILocation(line: 74, column: 48, scope: !4353)
!4359 = !DILocation(line: 74, column: 53, scope: !4353)
!4360 = !DILocation(line: 74, column: 57, scope: !4353)
!4361 = !DILocation(line: 74, column: 64, scope: !4353)
!4362 = !DILocation(line: 74, column: 5, scope: !4353)
!4363 = !DILocation(line: 75, column: 10, scope: !4331)
!4364 = !DILocation(line: 75, column: 3, scope: !4331)
!4365 = distinct !DISubprogram(name: "xstrtoul", scope: !4366, file: !4366, line: 88, type: !4367, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: false, unit: !655, variables: !113)
!4366 = !DIFile(filename: "../../lib/xstrtol.c", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!4367 = !DISubroutineType(types: !4368)
!4368 = !{!4369, !52, !744, !61, !4370, !52}
!4369 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !659, line: 39, baseType: !658)
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!4371 = !DILocalVariable(name: "s", arg: 1, scope: !4365, file: !4366, line: 88, type: !52)
!4372 = !DILocation(line: 88, column: 24, scope: !4365)
!4373 = !DILocalVariable(name: "ptr", arg: 2, scope: !4365, file: !4366, line: 88, type: !744)
!4374 = !DILocation(line: 88, column: 34, scope: !4365)
!4375 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !4365, file: !4366, line: 88, type: !61)
!4376 = !DILocation(line: 88, column: 43, scope: !4365)
!4377 = !DILocalVariable(name: "val", arg: 4, scope: !4365, file: !4366, line: 89, type: !4370)
!4378 = !DILocation(line: 89, column: 24, scope: !4365)
!4379 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4365, file: !4366, line: 89, type: !52)
!4380 = !DILocation(line: 89, column: 41, scope: !4365)
!4381 = !DILocalVariable(name: "t_ptr", scope: !4365, file: !4366, line: 91, type: !60)
!4382 = !DILocation(line: 91, column: 9, scope: !4365)
!4383 = !DILocalVariable(name: "p", scope: !4365, file: !4366, line: 92, type: !744)
!4384 = !DILocation(line: 92, column: 10, scope: !4365)
!4385 = !DILocalVariable(name: "tmp", scope: !4365, file: !4366, line: 93, type: !59)
!4386 = !DILocation(line: 93, column: 14, scope: !4365)
!4387 = !DILocalVariable(name: "err", scope: !4365, file: !4366, line: 94, type: !4369)
!4388 = !DILocation(line: 94, column: 16, scope: !4365)
!4389 = !DILocation(line: 96, column: 3, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !4391, file: !4366, line: 96, column: 3)
!4391 = distinct !DILexicalBlock(scope: !4365, file: !4366, line: 96, column: 3)
!4392 = !DILocation(line: 96, column: 3, scope: !4391)
!4393 = !DILocation(line: 98, column: 8, scope: !4365)
!4394 = !DILocation(line: 98, column: 14, scope: !4365)
!4395 = !DILocation(line: 98, column: 5, scope: !4365)
!4396 = !DILocalVariable(name: "q", scope: !4397, file: !4366, line: 102, type: !52)
!4397 = distinct !DILexicalBlock(scope: !4398, file: !4366, line: 101, column: 5)
!4398 = distinct !DILexicalBlock(scope: !4365, file: !4366, line: 100, column: 7)
!4399 = !DILocation(line: 102, column: 19, scope: !4397)
!4400 = !DILocation(line: 102, column: 23, scope: !4397)
!4401 = !DILocalVariable(name: "ch", scope: !4397, file: !4366, line: 103, type: !673)
!4402 = !DILocation(line: 103, column: 21, scope: !4397)
!4403 = !DILocation(line: 103, column: 27, scope: !4397)
!4404 = !DILocation(line: 103, column: 26, scope: !4397)
!4405 = !DILocation(line: 104, column: 7, scope: !4397)
!4406 = !DILocation(line: 104, column: 14, scope: !4397)
!4407 = !DILocation(line: 105, column: 15, scope: !4397)
!4408 = !DILocation(line: 105, column: 14, scope: !4397)
!4409 = !DILocation(line: 105, column: 12, scope: !4397)
!4410 = distinct !{!4410, !4405, !4411}
!4411 = !DILocation(line: 105, column: 17, scope: !4397)
!4412 = !DILocation(line: 106, column: 11, scope: !4413)
!4413 = distinct !DILexicalBlock(scope: !4397, file: !4366, line: 106, column: 11)
!4414 = !DILocation(line: 106, column: 14, scope: !4413)
!4415 = !DILocation(line: 106, column: 11, scope: !4397)
!4416 = !DILocation(line: 107, column: 9, scope: !4413)
!4417 = !DILocation(line: 110, column: 3, scope: !4365)
!4418 = !DILocation(line: 110, column: 9, scope: !4365)
!4419 = !DILocation(line: 111, column: 19, scope: !4365)
!4420 = !DILocation(line: 111, column: 22, scope: !4365)
!4421 = !DILocation(line: 111, column: 25, scope: !4365)
!4422 = !DILocation(line: 111, column: 9, scope: !4365)
!4423 = !DILocation(line: 111, column: 7, scope: !4365)
!4424 = !DILocation(line: 113, column: 8, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4365, file: !4366, line: 113, column: 7)
!4426 = !DILocation(line: 113, column: 7, scope: !4425)
!4427 = !DILocation(line: 113, column: 13, scope: !4425)
!4428 = !DILocation(line: 113, column: 10, scope: !4425)
!4429 = !DILocation(line: 113, column: 7, scope: !4365)
!4430 = !DILocation(line: 117, column: 11, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !4432, file: !4366, line: 117, column: 11)
!4432 = distinct !DILexicalBlock(scope: !4425, file: !4366, line: 114, column: 5)
!4433 = !DILocation(line: 117, column: 26, scope: !4431)
!4434 = !DILocation(line: 117, column: 31, scope: !4431)
!4435 = !DILocation(line: 117, column: 30, scope: !4431)
!4436 = !DILocation(line: 117, column: 29, scope: !4431)
!4437 = !DILocation(line: 117, column: 33, scope: !4431)
!4438 = !DILocation(line: 117, column: 44, scope: !4431)
!4439 = !DILocation(line: 117, column: 62, scope: !4431)
!4440 = !DILocation(line: 117, column: 61, scope: !4431)
!4441 = !DILocation(line: 117, column: 60, scope: !4431)
!4442 = !DILocation(line: 117, column: 36, scope: !4431)
!4443 = !DILocation(line: 117, column: 11, scope: !4432)
!4444 = !DILocation(line: 118, column: 13, scope: !4431)
!4445 = !DILocation(line: 118, column: 9, scope: !4431)
!4446 = !DILocation(line: 120, column: 9, scope: !4431)
!4447 = !DILocation(line: 121, column: 5, scope: !4432)
!4448 = !DILocation(line: 122, column: 12, scope: !4449)
!4449 = distinct !DILexicalBlock(scope: !4425, file: !4366, line: 122, column: 12)
!4450 = !DILocation(line: 122, column: 18, scope: !4449)
!4451 = !DILocation(line: 122, column: 12, scope: !4425)
!4452 = !DILocation(line: 124, column: 11, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4454, file: !4366, line: 124, column: 11)
!4454 = distinct !DILexicalBlock(scope: !4449, file: !4366, line: 123, column: 5)
!4455 = !DILocation(line: 124, column: 17, scope: !4453)
!4456 = !DILocation(line: 124, column: 11, scope: !4454)
!4457 = !DILocation(line: 125, column: 9, scope: !4453)
!4458 = !DILocation(line: 126, column: 11, scope: !4454)
!4459 = !DILocation(line: 127, column: 5, scope: !4454)
!4460 = !DILocation(line: 132, column: 8, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4365, file: !4366, line: 132, column: 7)
!4462 = !DILocation(line: 132, column: 7, scope: !4365)
!4463 = !DILocation(line: 134, column: 14, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4461, file: !4366, line: 133, column: 5)
!4465 = !DILocation(line: 134, column: 8, scope: !4464)
!4466 = !DILocation(line: 134, column: 12, scope: !4464)
!4467 = !DILocation(line: 135, column: 14, scope: !4464)
!4468 = !DILocation(line: 135, column: 7, scope: !4464)
!4469 = !DILocation(line: 138, column: 9, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4365, file: !4366, line: 138, column: 7)
!4471 = !DILocation(line: 138, column: 8, scope: !4470)
!4472 = !DILocation(line: 138, column: 7, scope: !4470)
!4473 = !DILocation(line: 138, column: 11, scope: !4470)
!4474 = !DILocation(line: 138, column: 7, scope: !4365)
!4475 = !DILocalVariable(name: "base", scope: !4476, file: !4366, line: 140, type: !61)
!4476 = distinct !DILexicalBlock(scope: !4470, file: !4366, line: 139, column: 5)
!4477 = !DILocation(line: 140, column: 11, scope: !4476)
!4478 = !DILocalVariable(name: "suffixes", scope: !4476, file: !4366, line: 141, type: !61)
!4479 = !DILocation(line: 141, column: 11, scope: !4476)
!4480 = !DILocalVariable(name: "overflow", scope: !4476, file: !4366, line: 142, type: !4369)
!4481 = !DILocation(line: 142, column: 20, scope: !4476)
!4482 = !DILocation(line: 144, column: 20, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4476, file: !4366, line: 144, column: 11)
!4484 = !DILocation(line: 144, column: 38, scope: !4483)
!4485 = !DILocation(line: 144, column: 37, scope: !4483)
!4486 = !DILocation(line: 144, column: 36, scope: !4483)
!4487 = !DILocation(line: 144, column: 12, scope: !4483)
!4488 = !DILocation(line: 144, column: 11, scope: !4476)
!4489 = !DILocation(line: 146, column: 18, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4483, file: !4366, line: 145, column: 9)
!4491 = !DILocation(line: 146, column: 12, scope: !4490)
!4492 = !DILocation(line: 146, column: 16, scope: !4490)
!4493 = !DILocation(line: 147, column: 18, scope: !4490)
!4494 = !DILocation(line: 147, column: 22, scope: !4490)
!4495 = !DILocation(line: 147, column: 11, scope: !4490)
!4496 = !DILocation(line: 150, column: 19, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4476, file: !4366, line: 150, column: 11)
!4498 = !DILocation(line: 150, column: 11, scope: !4497)
!4499 = !DILocation(line: 150, column: 11, scope: !4476)
!4500 = !DILocation(line: 159, column: 19, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !4497, file: !4366, line: 151, column: 9)
!4502 = !DILocation(line: 159, column: 11, scope: !4501)
!4503 = !DILocation(line: 162, column: 19, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4505, file: !4366, line: 162, column: 19)
!4505 = distinct !DILexicalBlock(scope: !4501, file: !4366, line: 160, column: 13)
!4506 = !DILocation(line: 162, column: 27, scope: !4504)
!4507 = !DILocation(line: 162, column: 19, scope: !4505)
!4508 = !DILocation(line: 163, column: 26, scope: !4504)
!4509 = !DILocation(line: 163, column: 17, scope: !4504)
!4510 = !DILocation(line: 164, column: 15, scope: !4505)
!4511 = !DILocation(line: 168, column: 20, scope: !4505)
!4512 = !DILocation(line: 169, column: 23, scope: !4505)
!4513 = !DILocation(line: 170, column: 15, scope: !4505)
!4514 = !DILocation(line: 172, column: 9, scope: !4501)
!4515 = !DILocation(line: 174, column: 17, scope: !4476)
!4516 = !DILocation(line: 174, column: 16, scope: !4476)
!4517 = !DILocation(line: 174, column: 15, scope: !4476)
!4518 = !DILocation(line: 174, column: 7, scope: !4476)
!4519 = !DILocation(line: 177, column: 22, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4476, file: !4366, line: 175, column: 9)
!4521 = !DILocation(line: 177, column: 20, scope: !4520)
!4522 = !DILocation(line: 178, column: 11, scope: !4520)
!4523 = !DILocation(line: 181, column: 22, scope: !4520)
!4524 = !DILocation(line: 181, column: 20, scope: !4520)
!4525 = !DILocation(line: 182, column: 11, scope: !4520)
!4526 = !DILocation(line: 185, column: 20, scope: !4520)
!4527 = !DILocation(line: 186, column: 11, scope: !4520)
!4528 = !DILocation(line: 189, column: 48, scope: !4520)
!4529 = !DILocation(line: 189, column: 22, scope: !4520)
!4530 = !DILocation(line: 189, column: 20, scope: !4520)
!4531 = !DILocation(line: 190, column: 11, scope: !4520)
!4532 = !DILocation(line: 194, column: 48, scope: !4520)
!4533 = !DILocation(line: 194, column: 22, scope: !4520)
!4534 = !DILocation(line: 194, column: 20, scope: !4520)
!4535 = !DILocation(line: 195, column: 11, scope: !4520)
!4536 = !DILocation(line: 199, column: 48, scope: !4520)
!4537 = !DILocation(line: 199, column: 22, scope: !4520)
!4538 = !DILocation(line: 199, column: 20, scope: !4520)
!4539 = !DILocation(line: 200, column: 11, scope: !4520)
!4540 = !DILocation(line: 204, column: 48, scope: !4520)
!4541 = !DILocation(line: 204, column: 22, scope: !4520)
!4542 = !DILocation(line: 204, column: 20, scope: !4520)
!4543 = !DILocation(line: 205, column: 11, scope: !4520)
!4544 = !DILocation(line: 208, column: 48, scope: !4520)
!4545 = !DILocation(line: 208, column: 22, scope: !4520)
!4546 = !DILocation(line: 208, column: 20, scope: !4520)
!4547 = !DILocation(line: 209, column: 11, scope: !4520)
!4548 = !DILocation(line: 213, column: 48, scope: !4520)
!4549 = !DILocation(line: 213, column: 22, scope: !4520)
!4550 = !DILocation(line: 213, column: 20, scope: !4520)
!4551 = !DILocation(line: 214, column: 11, scope: !4520)
!4552 = !DILocation(line: 217, column: 22, scope: !4520)
!4553 = !DILocation(line: 217, column: 20, scope: !4520)
!4554 = !DILocation(line: 218, column: 11, scope: !4520)
!4555 = !DILocation(line: 221, column: 48, scope: !4520)
!4556 = !DILocation(line: 221, column: 22, scope: !4520)
!4557 = !DILocation(line: 221, column: 20, scope: !4520)
!4558 = !DILocation(line: 222, column: 11, scope: !4520)
!4559 = !DILocation(line: 225, column: 48, scope: !4520)
!4560 = !DILocation(line: 225, column: 22, scope: !4520)
!4561 = !DILocation(line: 225, column: 20, scope: !4520)
!4562 = !DILocation(line: 226, column: 11, scope: !4520)
!4563 = !DILocation(line: 229, column: 18, scope: !4520)
!4564 = !DILocation(line: 229, column: 12, scope: !4520)
!4565 = !DILocation(line: 229, column: 16, scope: !4520)
!4566 = !DILocation(line: 230, column: 18, scope: !4520)
!4567 = !DILocation(line: 230, column: 22, scope: !4520)
!4568 = !DILocation(line: 230, column: 11, scope: !4520)
!4569 = !DILocation(line: 233, column: 14, scope: !4476)
!4570 = !DILocation(line: 233, column: 11, scope: !4476)
!4571 = !DILocation(line: 234, column: 13, scope: !4476)
!4572 = !DILocation(line: 234, column: 8, scope: !4476)
!4573 = !DILocation(line: 234, column: 10, scope: !4476)
!4574 = !DILocation(line: 235, column: 13, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4476, file: !4366, line: 235, column: 11)
!4576 = !DILocation(line: 235, column: 12, scope: !4575)
!4577 = !DILocation(line: 235, column: 11, scope: !4575)
!4578 = !DILocation(line: 235, column: 11, scope: !4476)
!4579 = !DILocation(line: 236, column: 13, scope: !4575)
!4580 = !DILocation(line: 236, column: 9, scope: !4575)
!4581 = !DILocation(line: 237, column: 5, scope: !4476)
!4582 = !DILocation(line: 239, column: 10, scope: !4365)
!4583 = !DILocation(line: 239, column: 4, scope: !4365)
!4584 = !DILocation(line: 239, column: 8, scope: !4365)
!4585 = !DILocation(line: 240, column: 10, scope: !4365)
!4586 = !DILocation(line: 240, column: 3, scope: !4365)
!4587 = !DILocation(line: 241, column: 1, scope: !4365)
!4588 = distinct !DISubprogram(name: "bkm_scale", scope: !4366, file: !4366, line: 60, type: !4589, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: false, unit: !655, variables: !113)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!4369, !4370, !61}
!4591 = !DILocalVariable(name: "x", arg: 1, scope: !4588, file: !4366, line: 60, type: !4370)
!4592 = !DILocation(line: 60, column: 24, scope: !4588)
!4593 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4588, file: !4366, line: 60, type: !61)
!4594 = !DILocation(line: 60, column: 31, scope: !4588)
!4595 = !DILocation(line: 67, column: 26, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !4588, file: !4366, line: 67, column: 7)
!4597 = !DILocation(line: 67, column: 24, scope: !4596)
!4598 = !DILocation(line: 67, column: 42, scope: !4596)
!4599 = !DILocation(line: 67, column: 41, scope: !4596)
!4600 = !DILocation(line: 67, column: 39, scope: !4596)
!4601 = !DILocation(line: 67, column: 7, scope: !4588)
!4602 = !DILocation(line: 69, column: 8, scope: !4603)
!4603 = distinct !DILexicalBlock(scope: !4596, file: !4366, line: 68, column: 5)
!4604 = !DILocation(line: 69, column: 10, scope: !4603)
!4605 = !DILocation(line: 70, column: 7, scope: !4603)
!4606 = !DILocation(line: 72, column: 9, scope: !4588)
!4607 = !DILocation(line: 72, column: 4, scope: !4588)
!4608 = !DILocation(line: 72, column: 6, scope: !4588)
!4609 = !DILocation(line: 73, column: 3, scope: !4588)
!4610 = !DILocation(line: 74, column: 1, scope: !4588)
!4611 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4366, file: !4366, line: 77, type: !4612, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: false, unit: !655, variables: !113)
!4612 = !DISubroutineType(types: !4613)
!4613 = !{!4369, !4370, !61, !61}
!4614 = !DILocalVariable(name: "x", arg: 1, scope: !4611, file: !4366, line: 77, type: !4370)
!4615 = !DILocation(line: 77, column: 33, scope: !4611)
!4616 = !DILocalVariable(name: "base", arg: 2, scope: !4611, file: !4366, line: 77, type: !61)
!4617 = !DILocation(line: 77, column: 40, scope: !4611)
!4618 = !DILocalVariable(name: "power", arg: 3, scope: !4611, file: !4366, line: 77, type: !61)
!4619 = !DILocation(line: 77, column: 50, scope: !4611)
!4620 = !DILocalVariable(name: "err", scope: !4611, file: !4366, line: 79, type: !4369)
!4621 = !DILocation(line: 79, column: 16, scope: !4611)
!4622 = !DILocation(line: 80, column: 3, scope: !4611)
!4623 = !DILocation(line: 80, column: 15, scope: !4611)
!4624 = !DILocation(line: 81, column: 23, scope: !4611)
!4625 = !DILocation(line: 81, column: 26, scope: !4611)
!4626 = !DILocation(line: 81, column: 12, scope: !4611)
!4627 = !DILocation(line: 81, column: 9, scope: !4611)
!4628 = distinct !{!4628, !4622, !4629}
!4629 = !DILocation(line: 81, column: 30, scope: !4611)
!4630 = !DILocation(line: 82, column: 10, scope: !4611)
!4631 = !DILocation(line: 82, column: 3, scope: !4611)
!4632 = distinct !DISubprogram(name: "rpl_fclose", scope: !662, file: !662, line: 56, type: !4633, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, unit: !661, variables: !113)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{!61, !4635}
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1771, line: 7, baseType: !4637)
!4637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1773, line: 245, size: 1728, elements: !4638)
!4638 = !{!4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4637, file: !1773, line: 246, baseType: !61, size: 32)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4637, file: !1773, line: 251, baseType: !60, size: 64, offset: 64)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4637, file: !1773, line: 252, baseType: !60, size: 64, offset: 128)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4637, file: !1773, line: 253, baseType: !60, size: 64, offset: 192)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4637, file: !1773, line: 254, baseType: !60, size: 64, offset: 256)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4637, file: !1773, line: 255, baseType: !60, size: 64, offset: 320)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4637, file: !1773, line: 256, baseType: !60, size: 64, offset: 384)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4637, file: !1773, line: 257, baseType: !60, size: 64, offset: 448)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4637, file: !1773, line: 258, baseType: !60, size: 64, offset: 512)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4637, file: !1773, line: 260, baseType: !60, size: 64, offset: 576)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4637, file: !1773, line: 261, baseType: !60, size: 64, offset: 640)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4637, file: !1773, line: 262, baseType: !60, size: 64, offset: 704)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4637, file: !1773, line: 264, baseType: !4652, size: 64, offset: 768)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1773, line: 160, size: 192, elements: !4654)
!4654 = !{!4655, !4656, !4658}
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4653, file: !1773, line: 161, baseType: !4652, size: 64)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4653, file: !1773, line: 162, baseType: !4657, size: 64, offset: 64)
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4653, file: !1773, line: 166, baseType: !61, size: 32, offset: 128)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4637, file: !1773, line: 266, baseType: !4657, size: 64, offset: 832)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4637, file: !1773, line: 268, baseType: !61, size: 32, offset: 896)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4637, file: !1773, line: 272, baseType: !61, size: 32, offset: 928)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4637, file: !1773, line: 274, baseType: !1751, size: 64, offset: 960)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4637, file: !1773, line: 278, baseType: !62, size: 16, offset: 1024)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4637, file: !1773, line: 279, baseType: !1801, size: 8, offset: 1040)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4637, file: !1773, line: 280, baseType: !1803, size: 8, offset: 1048)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4637, file: !1773, line: 284, baseType: !1807, size: 64, offset: 1088)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4637, file: !1773, line: 293, baseType: !1810, size: 64, offset: 1152)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4637, file: !1773, line: 301, baseType: !55, size: 64, offset: 1216)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4637, file: !1773, line: 302, baseType: !55, size: 64, offset: 1280)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4637, file: !1773, line: 303, baseType: !55, size: 64, offset: 1344)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4637, file: !1773, line: 304, baseType: !55, size: 64, offset: 1408)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4637, file: !1773, line: 306, baseType: !172, size: 64, offset: 1472)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4637, file: !1773, line: 307, baseType: !61, size: 32, offset: 1536)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4637, file: !1773, line: 309, baseType: !1818, size: 160, offset: 1568)
!4675 = !DILocalVariable(name: "fp", arg: 1, scope: !4632, file: !662, line: 56, type: !4635)
!4676 = !DILocation(line: 56, column: 19, scope: !4632)
!4677 = !DILocalVariable(name: "saved_errno", scope: !4632, file: !662, line: 58, type: !61)
!4678 = !DILocation(line: 58, column: 7, scope: !4632)
!4679 = !DILocalVariable(name: "fd", scope: !4632, file: !662, line: 59, type: !61)
!4680 = !DILocation(line: 59, column: 7, scope: !4632)
!4681 = !DILocalVariable(name: "result", scope: !4632, file: !662, line: 60, type: !61)
!4682 = !DILocation(line: 60, column: 7, scope: !4632)
!4683 = !DILocation(line: 63, column: 16, scope: !4632)
!4684 = !DILocation(line: 63, column: 8, scope: !4632)
!4685 = !DILocation(line: 63, column: 6, scope: !4632)
!4686 = !DILocation(line: 64, column: 7, scope: !4687)
!4687 = distinct !DILexicalBlock(scope: !4632, file: !662, line: 64, column: 7)
!4688 = !DILocation(line: 64, column: 10, scope: !4687)
!4689 = !DILocation(line: 64, column: 7, scope: !4632)
!4690 = !DILocation(line: 65, column: 28, scope: !4687)
!4691 = !DILocation(line: 65, column: 12, scope: !4687)
!4692 = !DILocation(line: 65, column: 5, scope: !4687)
!4693 = !DILocation(line: 70, column: 9, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4632, file: !662, line: 70, column: 7)
!4695 = !DILocation(line: 70, column: 23, scope: !4694)
!4696 = !DILocation(line: 70, column: 41, scope: !4694)
!4697 = !DILocation(line: 70, column: 33, scope: !4694)
!4698 = !DILocation(line: 70, column: 26, scope: !4694)
!4699 = !DILocation(line: 70, column: 59, scope: !4694)
!4700 = !DILocation(line: 71, column: 7, scope: !4694)
!4701 = !DILocation(line: 71, column: 18, scope: !4694)
!4702 = !DILocation(line: 71, column: 10, scope: !4694)
!4703 = !DILocation(line: 70, column: 7, scope: !4632)
!4704 = !DILocation(line: 72, column: 19, scope: !4694)
!4705 = !DILocation(line: 72, column: 17, scope: !4694)
!4706 = !DILocation(line: 72, column: 5, scope: !4694)
!4707 = !DILocation(line: 98, column: 28, scope: !4632)
!4708 = !DILocation(line: 98, column: 12, scope: !4632)
!4709 = !DILocation(line: 98, column: 10, scope: !4632)
!4710 = !DILocation(line: 103, column: 7, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4632, file: !662, line: 103, column: 7)
!4712 = !DILocation(line: 103, column: 19, scope: !4711)
!4713 = !DILocation(line: 103, column: 7, scope: !4632)
!4714 = !DILocation(line: 105, column: 15, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4711, file: !662, line: 104, column: 5)
!4716 = !DILocation(line: 105, column: 7, scope: !4715)
!4717 = !DILocation(line: 105, column: 13, scope: !4715)
!4718 = !DILocation(line: 106, column: 14, scope: !4715)
!4719 = !DILocation(line: 107, column: 5, scope: !4715)
!4720 = !DILocation(line: 109, column: 10, scope: !4632)
!4721 = !DILocation(line: 109, column: 3, scope: !4632)
!4722 = !DILocation(line: 110, column: 1, scope: !4632)
!4723 = distinct !DISubprogram(name: "rpl_fflush", scope: !664, file: !664, line: 117, type: !4724, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: false, unit: !663, variables: !113)
!4724 = !DISubroutineType(types: !4725)
!4725 = !{!61, !4726}
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1771, line: 7, baseType: !4728)
!4728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1773, line: 245, size: 1728, elements: !4729)
!4729 = !{!4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765}
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4728, file: !1773, line: 246, baseType: !61, size: 32)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4728, file: !1773, line: 251, baseType: !60, size: 64, offset: 64)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4728, file: !1773, line: 252, baseType: !60, size: 64, offset: 128)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4728, file: !1773, line: 253, baseType: !60, size: 64, offset: 192)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4728, file: !1773, line: 254, baseType: !60, size: 64, offset: 256)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4728, file: !1773, line: 255, baseType: !60, size: 64, offset: 320)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4728, file: !1773, line: 256, baseType: !60, size: 64, offset: 384)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4728, file: !1773, line: 257, baseType: !60, size: 64, offset: 448)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4728, file: !1773, line: 258, baseType: !60, size: 64, offset: 512)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4728, file: !1773, line: 260, baseType: !60, size: 64, offset: 576)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4728, file: !1773, line: 261, baseType: !60, size: 64, offset: 640)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4728, file: !1773, line: 262, baseType: !60, size: 64, offset: 704)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4728, file: !1773, line: 264, baseType: !4743, size: 64, offset: 768)
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1773, line: 160, size: 192, elements: !4745)
!4745 = !{!4746, !4747, !4749}
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4744, file: !1773, line: 161, baseType: !4743, size: 64)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4744, file: !1773, line: 162, baseType: !4748, size: 64, offset: 64)
!4748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4728, size: 64)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4744, file: !1773, line: 166, baseType: !61, size: 32, offset: 128)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4728, file: !1773, line: 266, baseType: !4748, size: 64, offset: 832)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4728, file: !1773, line: 268, baseType: !61, size: 32, offset: 896)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4728, file: !1773, line: 272, baseType: !61, size: 32, offset: 928)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4728, file: !1773, line: 274, baseType: !1751, size: 64, offset: 960)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4728, file: !1773, line: 278, baseType: !62, size: 16, offset: 1024)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4728, file: !1773, line: 279, baseType: !1801, size: 8, offset: 1040)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4728, file: !1773, line: 280, baseType: !1803, size: 8, offset: 1048)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4728, file: !1773, line: 284, baseType: !1807, size: 64, offset: 1088)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4728, file: !1773, line: 293, baseType: !1810, size: 64, offset: 1152)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4728, file: !1773, line: 301, baseType: !55, size: 64, offset: 1216)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4728, file: !1773, line: 302, baseType: !55, size: 64, offset: 1280)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4728, file: !1773, line: 303, baseType: !55, size: 64, offset: 1344)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4728, file: !1773, line: 304, baseType: !55, size: 64, offset: 1408)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4728, file: !1773, line: 306, baseType: !172, size: 64, offset: 1472)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4728, file: !1773, line: 307, baseType: !61, size: 32, offset: 1536)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4728, file: !1773, line: 309, baseType: !1818, size: 160, offset: 1568)
!4766 = !DILocalVariable(name: "stream", arg: 1, scope: !4723, file: !664, line: 117, type: !4726)
!4767 = !DILocation(line: 117, column: 19, scope: !4723)
!4768 = !DILocation(line: 138, column: 7, scope: !4769)
!4769 = distinct !DILexicalBlock(scope: !4723, file: !664, line: 138, column: 7)
!4770 = !DILocation(line: 138, column: 14, scope: !4769)
!4771 = !DILocation(line: 138, column: 22, scope: !4769)
!4772 = !DILocation(line: 138, column: 27, scope: !4769)
!4773 = !DILocation(line: 138, column: 7, scope: !4723)
!4774 = !DILocation(line: 139, column: 20, scope: !4769)
!4775 = !DILocation(line: 139, column: 12, scope: !4769)
!4776 = !DILocation(line: 139, column: 5, scope: !4769)
!4777 = !DILocation(line: 143, column: 44, scope: !4723)
!4778 = !DILocation(line: 143, column: 3, scope: !4723)
!4779 = !DILocation(line: 145, column: 18, scope: !4723)
!4780 = !DILocation(line: 145, column: 10, scope: !4723)
!4781 = !DILocation(line: 145, column: 3, scope: !4723)
!4782 = !DILocation(line: 218, column: 1, scope: !4723)
!4783 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !664, file: !664, line: 38, type: !4784, isLocal: true, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: false, unit: !663, variables: !113)
!4784 = !DISubroutineType(types: !4785)
!4785 = !{null, !4726}
!4786 = !DILocalVariable(name: "fp", arg: 1, scope: !4783, file: !664, line: 38, type: !4726)
!4787 = !DILocation(line: 38, column: 48, scope: !4783)
!4788 = !DILocation(line: 40, column: 7, scope: !4789)
!4789 = distinct !DILexicalBlock(scope: !4783, file: !664, line: 40, column: 7)
!4790 = !DILocation(line: 40, column: 11, scope: !4789)
!4791 = !DILocation(line: 40, column: 18, scope: !4789)
!4792 = !DILocation(line: 40, column: 7, scope: !4783)
!4793 = !DILocation(line: 42, column: 13, scope: !4789)
!4794 = !DILocation(line: 42, column: 5, scope: !4789)
!4795 = !DILocation(line: 43, column: 1, scope: !4783)
!4796 = distinct !DISubprogram(name: "rpl_fseeko", scope: !667, file: !667, line: 28, type: !4797, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: false, unit: !666, variables: !113)
!4797 = !DISubroutineType(types: !4798)
!4798 = !{!61, !4799, !1749, !61}
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 64)
!4800 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1771, line: 7, baseType: !4801)
!4801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1773, line: 245, size: 1728, elements: !4802)
!4802 = !{!4803, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838}
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4801, file: !1773, line: 246, baseType: !61, size: 32)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4801, file: !1773, line: 251, baseType: !60, size: 64, offset: 64)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4801, file: !1773, line: 252, baseType: !60, size: 64, offset: 128)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4801, file: !1773, line: 253, baseType: !60, size: 64, offset: 192)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4801, file: !1773, line: 254, baseType: !60, size: 64, offset: 256)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4801, file: !1773, line: 255, baseType: !60, size: 64, offset: 320)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4801, file: !1773, line: 256, baseType: !60, size: 64, offset: 384)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4801, file: !1773, line: 257, baseType: !60, size: 64, offset: 448)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4801, file: !1773, line: 258, baseType: !60, size: 64, offset: 512)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4801, file: !1773, line: 260, baseType: !60, size: 64, offset: 576)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4801, file: !1773, line: 261, baseType: !60, size: 64, offset: 640)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4801, file: !1773, line: 262, baseType: !60, size: 64, offset: 704)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4801, file: !1773, line: 264, baseType: !4816, size: 64, offset: 768)
!4816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4817, size: 64)
!4817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1773, line: 160, size: 192, elements: !4818)
!4818 = !{!4819, !4820, !4822}
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4817, file: !1773, line: 161, baseType: !4816, size: 64)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4817, file: !1773, line: 162, baseType: !4821, size: 64, offset: 64)
!4821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4801, size: 64)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4817, file: !1773, line: 166, baseType: !61, size: 32, offset: 128)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4801, file: !1773, line: 266, baseType: !4821, size: 64, offset: 832)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4801, file: !1773, line: 268, baseType: !61, size: 32, offset: 896)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4801, file: !1773, line: 272, baseType: !61, size: 32, offset: 928)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4801, file: !1773, line: 274, baseType: !1751, size: 64, offset: 960)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4801, file: !1773, line: 278, baseType: !62, size: 16, offset: 1024)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4801, file: !1773, line: 279, baseType: !1801, size: 8, offset: 1040)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4801, file: !1773, line: 280, baseType: !1803, size: 8, offset: 1048)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4801, file: !1773, line: 284, baseType: !1807, size: 64, offset: 1088)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4801, file: !1773, line: 293, baseType: !1810, size: 64, offset: 1152)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4801, file: !1773, line: 301, baseType: !55, size: 64, offset: 1216)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4801, file: !1773, line: 302, baseType: !55, size: 64, offset: 1280)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4801, file: !1773, line: 303, baseType: !55, size: 64, offset: 1344)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4801, file: !1773, line: 304, baseType: !55, size: 64, offset: 1408)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4801, file: !1773, line: 306, baseType: !172, size: 64, offset: 1472)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4801, file: !1773, line: 307, baseType: !61, size: 32, offset: 1536)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4801, file: !1773, line: 309, baseType: !1818, size: 160, offset: 1568)
!4839 = !DILocalVariable(name: "fp", arg: 1, scope: !4796, file: !667, line: 28, type: !4799)
!4840 = !DILocation(line: 28, column: 15, scope: !4796)
!4841 = !DILocalVariable(name: "offset", arg: 2, scope: !4796, file: !667, line: 28, type: !1749)
!4842 = !DILocation(line: 28, column: 25, scope: !4796)
!4843 = !DILocalVariable(name: "whence", arg: 3, scope: !4796, file: !667, line: 28, type: !61)
!4844 = !DILocation(line: 28, column: 37, scope: !4796)
!4845 = !DILocation(line: 43, column: 7, scope: !4846)
!4846 = distinct !DILexicalBlock(scope: !4796, file: !667, line: 43, column: 7)
!4847 = !DILocation(line: 43, column: 11, scope: !4846)
!4848 = !DILocation(line: 43, column: 27, scope: !4846)
!4849 = !DILocation(line: 43, column: 31, scope: !4846)
!4850 = !DILocation(line: 43, column: 24, scope: !4846)
!4851 = !DILocation(line: 44, column: 7, scope: !4846)
!4852 = !DILocation(line: 44, column: 10, scope: !4846)
!4853 = !DILocation(line: 44, column: 14, scope: !4846)
!4854 = !DILocation(line: 44, column: 31, scope: !4846)
!4855 = !DILocation(line: 44, column: 35, scope: !4846)
!4856 = !DILocation(line: 44, column: 28, scope: !4846)
!4857 = !DILocation(line: 45, column: 7, scope: !4846)
!4858 = !DILocation(line: 45, column: 10, scope: !4846)
!4859 = !DILocation(line: 45, column: 14, scope: !4846)
!4860 = !DILocation(line: 45, column: 28, scope: !4846)
!4861 = !DILocation(line: 43, column: 7, scope: !4796)
!4862 = !DILocalVariable(name: "pos", scope: !4863, file: !667, line: 101, type: !1749)
!4863 = distinct !DILexicalBlock(scope: !4846, file: !667, line: 97, column: 5)
!4864 = !DILocation(line: 101, column: 13, scope: !4863)
!4865 = !DILocation(line: 101, column: 34, scope: !4863)
!4866 = !DILocation(line: 101, column: 26, scope: !4863)
!4867 = !DILocation(line: 101, column: 39, scope: !4863)
!4868 = !DILocation(line: 101, column: 47, scope: !4863)
!4869 = !DILocation(line: 101, column: 19, scope: !4863)
!4870 = !DILocation(line: 102, column: 11, scope: !4871)
!4871 = distinct !DILexicalBlock(scope: !4863, file: !667, line: 102, column: 11)
!4872 = !DILocation(line: 102, column: 15, scope: !4871)
!4873 = !DILocation(line: 102, column: 11, scope: !4863)
!4874 = !DILocation(line: 107, column: 11, scope: !4875)
!4875 = distinct !DILexicalBlock(scope: !4871, file: !667, line: 103, column: 9)
!4876 = !DILocation(line: 111, column: 7, scope: !4863)
!4877 = !DILocation(line: 111, column: 11, scope: !4863)
!4878 = !DILocation(line: 111, column: 18, scope: !4863)
!4879 = !DILocation(line: 112, column: 21, scope: !4863)
!4880 = !DILocation(line: 112, column: 7, scope: !4863)
!4881 = !DILocation(line: 112, column: 11, scope: !4863)
!4882 = !DILocation(line: 112, column: 19, scope: !4863)
!4883 = !DILocation(line: 142, column: 7, scope: !4863)
!4884 = !DILocation(line: 144, column: 18, scope: !4796)
!4885 = !DILocation(line: 144, column: 22, scope: !4796)
!4886 = !DILocation(line: 144, column: 30, scope: !4796)
!4887 = !DILocation(line: 144, column: 10, scope: !4796)
!4888 = !DILocation(line: 144, column: 3, scope: !4796)
!4889 = !DILocation(line: 145, column: 1, scope: !4796)
!4890 = distinct !DISubprogram(name: "c_strcasecmp", scope: !669, file: !669, line: 27, type: !4891, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: false, unit: !668, variables: !113)
!4891 = !DISubroutineType(types: !4892)
!4892 = !{!61, !52, !52}
!4893 = !DILocalVariable(name: "s1", arg: 1, scope: !4890, file: !669, line: 27, type: !52)
!4894 = !DILocation(line: 27, column: 27, scope: !4890)
!4895 = !DILocalVariable(name: "s2", arg: 2, scope: !4890, file: !669, line: 27, type: !52)
!4896 = !DILocation(line: 27, column: 43, scope: !4890)
!4897 = !DILocalVariable(name: "p1", scope: !4890, file: !669, line: 29, type: !671)
!4898 = !DILocation(line: 29, column: 33, scope: !4890)
!4899 = !DILocation(line: 29, column: 62, scope: !4890)
!4900 = !DILocalVariable(name: "p2", scope: !4890, file: !669, line: 30, type: !671)
!4901 = !DILocation(line: 30, column: 33, scope: !4890)
!4902 = !DILocation(line: 30, column: 62, scope: !4890)
!4903 = !DILocalVariable(name: "c1", scope: !4890, file: !669, line: 31, type: !673)
!4904 = !DILocation(line: 31, column: 17, scope: !4890)
!4905 = !DILocalVariable(name: "c2", scope: !4890, file: !669, line: 31, type: !673)
!4906 = !DILocation(line: 31, column: 21, scope: !4890)
!4907 = !DILocation(line: 33, column: 7, scope: !4908)
!4908 = distinct !DILexicalBlock(scope: !4890, file: !669, line: 33, column: 7)
!4909 = !DILocation(line: 33, column: 13, scope: !4908)
!4910 = !DILocation(line: 33, column: 10, scope: !4908)
!4911 = !DILocation(line: 33, column: 7, scope: !4890)
!4912 = !DILocation(line: 34, column: 5, scope: !4908)
!4913 = !DILocation(line: 36, column: 3, scope: !4890)
!4914 = distinct !{!4914, !4913, !4915}
!4915 = !DILocation(line: 47, column: 18, scope: !4890)
!4916 = !DILocation(line: 38, column: 24, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4890, file: !669, line: 37, column: 5)
!4918 = !DILocation(line: 38, column: 23, scope: !4917)
!4919 = !DILocation(line: 38, column: 12, scope: !4917)
!4920 = !DILocation(line: 38, column: 10, scope: !4917)
!4921 = !DILocation(line: 39, column: 24, scope: !4917)
!4922 = !DILocation(line: 39, column: 23, scope: !4917)
!4923 = !DILocation(line: 39, column: 12, scope: !4917)
!4924 = !DILocation(line: 39, column: 10, scope: !4917)
!4925 = !DILocation(line: 41, column: 11, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4917, file: !669, line: 41, column: 11)
!4927 = !DILocation(line: 41, column: 14, scope: !4926)
!4928 = !DILocation(line: 41, column: 11, scope: !4917)
!4929 = !DILocation(line: 42, column: 9, scope: !4926)
!4930 = !DILocation(line: 44, column: 7, scope: !4917)
!4931 = !DILocation(line: 45, column: 7, scope: !4917)
!4932 = !DILocation(line: 46, column: 5, scope: !4917)
!4933 = !DILocation(line: 47, column: 10, scope: !4890)
!4934 = !DILocation(line: 47, column: 16, scope: !4890)
!4935 = !DILocation(line: 47, column: 13, scope: !4890)
!4936 = !DILocation(line: 50, column: 12, scope: !4937)
!4937 = distinct !DILexicalBlock(scope: !4890, file: !669, line: 49, column: 7)
!4938 = !DILocation(line: 50, column: 17, scope: !4937)
!4939 = !DILocation(line: 50, column: 15, scope: !4937)
!4940 = !DILocation(line: 50, column: 5, scope: !4937)
!4941 = !DILocation(line: 56, column: 1, scope: !4890)
!4942 = distinct !DISubprogram(name: "close_stream", scope: !675, file: !675, line: 56, type: !4943, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, unit: !674, variables: !113)
!4943 = !DISubroutineType(types: !4944)
!4944 = !{!61, !4945}
!4945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4946, size: 64)
!4946 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1771, line: 7, baseType: !4947)
!4947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1773, line: 245, size: 1728, elements: !4948)
!4948 = !{!4949, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980, !4981, !4982, !4983, !4984}
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4947, file: !1773, line: 246, baseType: !61, size: 32)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4947, file: !1773, line: 251, baseType: !60, size: 64, offset: 64)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4947, file: !1773, line: 252, baseType: !60, size: 64, offset: 128)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4947, file: !1773, line: 253, baseType: !60, size: 64, offset: 192)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4947, file: !1773, line: 254, baseType: !60, size: 64, offset: 256)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4947, file: !1773, line: 255, baseType: !60, size: 64, offset: 320)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4947, file: !1773, line: 256, baseType: !60, size: 64, offset: 384)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4947, file: !1773, line: 257, baseType: !60, size: 64, offset: 448)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4947, file: !1773, line: 258, baseType: !60, size: 64, offset: 512)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4947, file: !1773, line: 260, baseType: !60, size: 64, offset: 576)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4947, file: !1773, line: 261, baseType: !60, size: 64, offset: 640)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4947, file: !1773, line: 262, baseType: !60, size: 64, offset: 704)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4947, file: !1773, line: 264, baseType: !4962, size: 64, offset: 768)
!4962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4963, size: 64)
!4963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1773, line: 160, size: 192, elements: !4964)
!4964 = !{!4965, !4966, !4968}
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4963, file: !1773, line: 161, baseType: !4962, size: 64)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4963, file: !1773, line: 162, baseType: !4967, size: 64, offset: 64)
!4967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4947, size: 64)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4963, file: !1773, line: 166, baseType: !61, size: 32, offset: 128)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4947, file: !1773, line: 266, baseType: !4967, size: 64, offset: 832)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4947, file: !1773, line: 268, baseType: !61, size: 32, offset: 896)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4947, file: !1773, line: 272, baseType: !61, size: 32, offset: 928)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4947, file: !1773, line: 274, baseType: !1751, size: 64, offset: 960)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4947, file: !1773, line: 278, baseType: !62, size: 16, offset: 1024)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4947, file: !1773, line: 279, baseType: !1801, size: 8, offset: 1040)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4947, file: !1773, line: 280, baseType: !1803, size: 8, offset: 1048)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4947, file: !1773, line: 284, baseType: !1807, size: 64, offset: 1088)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4947, file: !1773, line: 293, baseType: !1810, size: 64, offset: 1152)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4947, file: !1773, line: 301, baseType: !55, size: 64, offset: 1216)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4947, file: !1773, line: 302, baseType: !55, size: 64, offset: 1280)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4947, file: !1773, line: 303, baseType: !55, size: 64, offset: 1344)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4947, file: !1773, line: 304, baseType: !55, size: 64, offset: 1408)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4947, file: !1773, line: 306, baseType: !172, size: 64, offset: 1472)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4947, file: !1773, line: 307, baseType: !61, size: 32, offset: 1536)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4947, file: !1773, line: 309, baseType: !1818, size: 160, offset: 1568)
!4985 = !DILocalVariable(name: "stream", arg: 1, scope: !4942, file: !675, line: 56, type: !4945)
!4986 = !DILocation(line: 56, column: 21, scope: !4942)
!4987 = !DILocalVariable(name: "some_pending", scope: !4942, file: !675, line: 58, type: !4988)
!4988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!4989 = !DILocation(line: 58, column: 14, scope: !4942)
!4990 = !DILocation(line: 58, column: 42, scope: !4942)
!4991 = !DILocation(line: 58, column: 30, scope: !4942)
!4992 = !DILocation(line: 58, column: 50, scope: !4942)
!4993 = !DILocalVariable(name: "prev_fail", scope: !4942, file: !675, line: 59, type: !4988)
!4994 = !DILocation(line: 59, column: 14, scope: !4942)
!4995 = !DILocation(line: 59, column: 27, scope: !4942)
!4996 = !DILocation(line: 59, column: 43, scope: !4942)
!4997 = !DILocalVariable(name: "fclose_fail", scope: !4942, file: !675, line: 60, type: !4988)
!4998 = !DILocation(line: 60, column: 14, scope: !4942)
!4999 = !DILocation(line: 60, column: 37, scope: !4942)
!5000 = !DILocation(line: 60, column: 29, scope: !4942)
!5001 = !DILocation(line: 60, column: 45, scope: !4942)
!5002 = !DILocation(line: 70, column: 7, scope: !5003)
!5003 = distinct !DILexicalBlock(scope: !4942, file: !675, line: 70, column: 7)
!5004 = !DILocation(line: 70, column: 17, scope: !5003)
!5005 = !DILocation(line: 70, column: 21, scope: !5003)
!5006 = !DILocation(line: 70, column: 33, scope: !5003)
!5007 = !DILocation(line: 70, column: 37, scope: !5003)
!5008 = !DILocation(line: 70, column: 50, scope: !5003)
!5009 = !DILocation(line: 70, column: 53, scope: !5003)
!5010 = !DILocation(line: 70, column: 59, scope: !5003)
!5011 = !DILocation(line: 70, column: 7, scope: !4942)
!5012 = !DILocation(line: 72, column: 13, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !5014, file: !675, line: 72, column: 11)
!5014 = distinct !DILexicalBlock(scope: !5003, file: !675, line: 71, column: 5)
!5015 = !DILocation(line: 72, column: 11, scope: !5014)
!5016 = !DILocation(line: 73, column: 9, scope: !5013)
!5017 = !DILocation(line: 73, column: 15, scope: !5013)
!5018 = !DILocation(line: 74, column: 7, scope: !5014)
!5019 = !DILocation(line: 77, column: 3, scope: !4942)
!5020 = !DILocation(line: 78, column: 1, scope: !4942)
!5021 = distinct !DISubprogram(name: "locale_charset", scope: !224, file: !224, line: 357, type: !5022, isLocal: false, isDefinition: true, scopeLine: 358, flags: DIFlagPrototyped, isOptimized: false, unit: !223, variables: !113)
!5022 = !DISubroutineType(types: !143)
!5023 = !DILocalVariable(name: "codeset", scope: !5021, file: !224, line: 359, type: !52)
!5024 = !DILocation(line: 359, column: 15, scope: !5021)
!5025 = !DILocalVariable(name: "aliases", scope: !5021, file: !224, line: 360, type: !52)
!5026 = !DILocation(line: 360, column: 15, scope: !5021)
!5027 = !DILocation(line: 367, column: 13, scope: !5021)
!5028 = !DILocation(line: 367, column: 11, scope: !5021)
!5029 = !DILocation(line: 524, column: 7, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !5021, file: !224, line: 524, column: 7)
!5031 = !DILocation(line: 524, column: 15, scope: !5030)
!5032 = !DILocation(line: 524, column: 7, scope: !5021)
!5033 = !DILocation(line: 526, column: 13, scope: !5030)
!5034 = !DILocation(line: 526, column: 5, scope: !5030)
!5035 = !DILocation(line: 529, column: 18, scope: !5036)
!5036 = distinct !DILexicalBlock(scope: !5021, file: !224, line: 529, column: 3)
!5037 = !DILocation(line: 529, column: 16, scope: !5036)
!5038 = !DILocation(line: 529, column: 8, scope: !5036)
!5039 = !DILocation(line: 530, column: 9, scope: !5040)
!5040 = distinct !DILexicalBlock(scope: !5036, file: !224, line: 529, column: 3)
!5041 = !DILocation(line: 530, column: 8, scope: !5040)
!5042 = !DILocation(line: 530, column: 17, scope: !5040)
!5043 = !DILocation(line: 529, column: 3, scope: !5036)
!5044 = !DILocation(line: 532, column: 17, scope: !5045)
!5045 = distinct !DILexicalBlock(scope: !5040, file: !224, line: 532, column: 9)
!5046 = !DILocation(line: 532, column: 26, scope: !5045)
!5047 = !DILocation(line: 532, column: 9, scope: !5045)
!5048 = !DILocation(line: 532, column: 35, scope: !5045)
!5049 = !DILocation(line: 533, column: 9, scope: !5045)
!5050 = !DILocation(line: 533, column: 13, scope: !5045)
!5051 = !DILocation(line: 533, column: 24, scope: !5045)
!5052 = !DILocation(line: 533, column: 31, scope: !5045)
!5053 = !DILocation(line: 533, column: 34, scope: !5045)
!5054 = !DILocation(line: 533, column: 45, scope: !5045)
!5055 = !DILocation(line: 532, column: 9, scope: !5040)
!5056 = !DILocation(line: 535, column: 19, scope: !5057)
!5057 = distinct !DILexicalBlock(scope: !5045, file: !224, line: 534, column: 7)
!5058 = !DILocation(line: 535, column: 37, scope: !5057)
!5059 = !DILocation(line: 535, column: 29, scope: !5057)
!5060 = !DILocation(line: 535, column: 27, scope: !5057)
!5061 = !DILocation(line: 535, column: 46, scope: !5057)
!5062 = !DILocation(line: 535, column: 17, scope: !5057)
!5063 = !DILocation(line: 536, column: 9, scope: !5057)
!5064 = !DILocation(line: 533, column: 52, scope: !5045)
!5065 = !DILocation(line: 531, column: 27, scope: !5040)
!5066 = !DILocation(line: 531, column: 19, scope: !5040)
!5067 = !DILocation(line: 531, column: 36, scope: !5040)
!5068 = !DILocation(line: 531, column: 16, scope: !5040)
!5069 = !DILocation(line: 531, column: 60, scope: !5040)
!5070 = !DILocation(line: 531, column: 52, scope: !5040)
!5071 = !DILocation(line: 531, column: 69, scope: !5040)
!5072 = !DILocation(line: 531, column: 49, scope: !5040)
!5073 = !DILocation(line: 529, column: 3, scope: !5040)
!5074 = distinct !{!5074, !5043, !5075}
!5075 = !DILocation(line: 537, column: 7, scope: !5036)
!5076 = !DILocation(line: 542, column: 7, scope: !5077)
!5077 = distinct !DILexicalBlock(scope: !5021, file: !224, line: 542, column: 7)
!5078 = !DILocation(line: 542, column: 18, scope: !5077)
!5079 = !DILocation(line: 542, column: 7, scope: !5021)
!5080 = !DILocation(line: 543, column: 13, scope: !5077)
!5081 = !DILocation(line: 543, column: 5, scope: !5077)
!5082 = !DILocation(line: 545, column: 10, scope: !5021)
!5083 = !DILocation(line: 545, column: 3, scope: !5021)
!5084 = distinct !DISubprogram(name: "get_charset_aliases", scope: !224, file: !224, line: 118, type: !5022, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: false, unit: !223, variables: !113)
!5085 = !DILocalVariable(name: "cp", scope: !5084, file: !224, line: 120, type: !52)
!5086 = !DILocation(line: 120, column: 15, scope: !5084)
!5087 = !DILocation(line: 122, column: 8, scope: !5084)
!5088 = !DILocation(line: 122, column: 6, scope: !5084)
!5089 = !DILocation(line: 123, column: 7, scope: !5090)
!5090 = distinct !DILexicalBlock(scope: !5084, file: !224, line: 123, column: 7)
!5091 = !DILocation(line: 123, column: 10, scope: !5090)
!5092 = !DILocation(line: 123, column: 7, scope: !5084)
!5093 = !DILocalVariable(name: "dir", scope: !5094, file: !224, line: 126, type: !52)
!5094 = distinct !DILexicalBlock(scope: !5090, file: !224, line: 124, column: 5)
!5095 = !DILocation(line: 126, column: 19, scope: !5094)
!5096 = !DILocalVariable(name: "base", scope: !5094, file: !224, line: 127, type: !52)
!5097 = !DILocation(line: 127, column: 19, scope: !5094)
!5098 = !DILocalVariable(name: "file_name", scope: !5094, file: !224, line: 128, type: !60)
!5099 = !DILocation(line: 128, column: 13, scope: !5094)
!5100 = !DILocation(line: 132, column: 13, scope: !5094)
!5101 = !DILocation(line: 132, column: 11, scope: !5094)
!5102 = !DILocation(line: 133, column: 11, scope: !5103)
!5103 = distinct !DILexicalBlock(scope: !5094, file: !224, line: 133, column: 11)
!5104 = !DILocation(line: 133, column: 15, scope: !5103)
!5105 = !DILocation(line: 133, column: 23, scope: !5103)
!5106 = !DILocation(line: 133, column: 26, scope: !5103)
!5107 = !DILocation(line: 133, column: 33, scope: !5103)
!5108 = !DILocation(line: 133, column: 11, scope: !5094)
!5109 = !DILocation(line: 134, column: 13, scope: !5103)
!5110 = !DILocation(line: 134, column: 9, scope: !5103)
!5111 = !DILocalVariable(name: "dir_len", scope: !5112, file: !224, line: 138, type: !172)
!5112 = distinct !DILexicalBlock(scope: !5094, file: !224, line: 137, column: 7)
!5113 = !DILocation(line: 138, column: 16, scope: !5112)
!5114 = !DILocation(line: 138, column: 34, scope: !5112)
!5115 = !DILocation(line: 138, column: 26, scope: !5112)
!5116 = !DILocalVariable(name: "base_len", scope: !5112, file: !224, line: 139, type: !172)
!5117 = !DILocation(line: 139, column: 16, scope: !5112)
!5118 = !DILocation(line: 139, column: 35, scope: !5112)
!5119 = !DILocation(line: 139, column: 27, scope: !5112)
!5120 = !DILocalVariable(name: "add_slash", scope: !5112, file: !224, line: 140, type: !61)
!5121 = !DILocation(line: 140, column: 13, scope: !5112)
!5122 = !DILocation(line: 140, column: 26, scope: !5112)
!5123 = !DILocation(line: 140, column: 34, scope: !5112)
!5124 = !DILocation(line: 140, column: 38, scope: !5112)
!5125 = !DILocation(line: 140, column: 42, scope: !5112)
!5126 = !DILocation(line: 140, column: 41, scope: !5112)
!5127 = !DILocation(line: 141, column: 38, scope: !5112)
!5128 = !DILocation(line: 141, column: 48, scope: !5112)
!5129 = !DILocation(line: 141, column: 46, scope: !5112)
!5130 = !DILocation(line: 141, column: 60, scope: !5112)
!5131 = !DILocation(line: 141, column: 58, scope: !5112)
!5132 = !DILocation(line: 141, column: 69, scope: !5112)
!5133 = !DILocation(line: 141, column: 30, scope: !5112)
!5134 = !DILocation(line: 141, column: 19, scope: !5112)
!5135 = !DILocation(line: 142, column: 13, scope: !5136)
!5136 = distinct !DILexicalBlock(scope: !5112, file: !224, line: 142, column: 13)
!5137 = !DILocation(line: 142, column: 23, scope: !5136)
!5138 = !DILocation(line: 142, column: 13, scope: !5112)
!5139 = !DILocation(line: 144, column: 21, scope: !5140)
!5140 = distinct !DILexicalBlock(scope: !5136, file: !224, line: 143, column: 11)
!5141 = !DILocation(line: 144, column: 32, scope: !5140)
!5142 = !DILocation(line: 144, column: 37, scope: !5140)
!5143 = !DILocation(line: 144, column: 13, scope: !5140)
!5144 = !DILocation(line: 145, column: 17, scope: !5145)
!5145 = distinct !DILexicalBlock(scope: !5140, file: !224, line: 145, column: 17)
!5146 = !DILocation(line: 145, column: 17, scope: !5140)
!5147 = !DILocation(line: 146, column: 15, scope: !5145)
!5148 = !DILocation(line: 146, column: 25, scope: !5145)
!5149 = !DILocation(line: 146, column: 34, scope: !5145)
!5150 = !DILocation(line: 147, column: 21, scope: !5140)
!5151 = !DILocation(line: 147, column: 33, scope: !5140)
!5152 = !DILocation(line: 147, column: 31, scope: !5140)
!5153 = !DILocation(line: 147, column: 43, scope: !5140)
!5154 = !DILocation(line: 147, column: 41, scope: !5140)
!5155 = !DILocation(line: 147, column: 54, scope: !5140)
!5156 = !DILocation(line: 147, column: 60, scope: !5140)
!5157 = !DILocation(line: 147, column: 69, scope: !5140)
!5158 = !DILocation(line: 147, column: 13, scope: !5140)
!5159 = !DILocation(line: 148, column: 11, scope: !5140)
!5160 = !DILocation(line: 151, column: 11, scope: !5161)
!5161 = distinct !DILexicalBlock(scope: !5094, file: !224, line: 151, column: 11)
!5162 = !DILocation(line: 151, column: 21, scope: !5161)
!5163 = !DILocation(line: 151, column: 11, scope: !5094)
!5164 = !DILocation(line: 153, column: 12, scope: !5161)
!5165 = !DILocation(line: 153, column: 9, scope: !5161)
!5166 = !DILocalVariable(name: "fd", scope: !5167, file: !224, line: 156, type: !61)
!5167 = distinct !DILexicalBlock(scope: !5161, file: !224, line: 155, column: 9)
!5168 = !DILocation(line: 156, column: 15, scope: !5167)
!5169 = !DILocation(line: 165, column: 22, scope: !5167)
!5170 = !DILocation(line: 165, column: 16, scope: !5167)
!5171 = !DILocation(line: 165, column: 14, scope: !5167)
!5172 = !DILocation(line: 167, column: 15, scope: !5173)
!5173 = distinct !DILexicalBlock(scope: !5167, file: !224, line: 167, column: 15)
!5174 = !DILocation(line: 167, column: 18, scope: !5173)
!5175 = !DILocation(line: 167, column: 15, scope: !5167)
!5176 = !DILocation(line: 169, column: 16, scope: !5173)
!5177 = !DILocation(line: 169, column: 13, scope: !5173)
!5178 = !DILocalVariable(name: "fp", scope: !5179, file: !224, line: 172, type: !5180)
!5179 = distinct !DILexicalBlock(scope: !5173, file: !224, line: 171, column: 13)
!5180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5181, size: 64)
!5181 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1771, line: 7, baseType: !5182)
!5182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1773, line: 245, size: 1728, elements: !5183)
!5183 = !{!5184, !5185, !5186, !5187, !5188, !5189, !5190, !5191, !5192, !5193, !5194, !5195, !5196, !5204, !5205, !5206, !5207, !5208, !5209, !5210, !5211, !5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219}
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5182, file: !1773, line: 246, baseType: !61, size: 32)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5182, file: !1773, line: 251, baseType: !60, size: 64, offset: 64)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5182, file: !1773, line: 252, baseType: !60, size: 64, offset: 128)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5182, file: !1773, line: 253, baseType: !60, size: 64, offset: 192)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5182, file: !1773, line: 254, baseType: !60, size: 64, offset: 256)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5182, file: !1773, line: 255, baseType: !60, size: 64, offset: 320)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5182, file: !1773, line: 256, baseType: !60, size: 64, offset: 384)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5182, file: !1773, line: 257, baseType: !60, size: 64, offset: 448)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5182, file: !1773, line: 258, baseType: !60, size: 64, offset: 512)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5182, file: !1773, line: 260, baseType: !60, size: 64, offset: 576)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5182, file: !1773, line: 261, baseType: !60, size: 64, offset: 640)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5182, file: !1773, line: 262, baseType: !60, size: 64, offset: 704)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5182, file: !1773, line: 264, baseType: !5197, size: 64, offset: 768)
!5197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5198, size: 64)
!5198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1773, line: 160, size: 192, elements: !5199)
!5199 = !{!5200, !5201, !5203}
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5198, file: !1773, line: 161, baseType: !5197, size: 64)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5198, file: !1773, line: 162, baseType: !5202, size: 64, offset: 64)
!5202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5182, size: 64)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5198, file: !1773, line: 166, baseType: !61, size: 32, offset: 128)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5182, file: !1773, line: 266, baseType: !5202, size: 64, offset: 832)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5182, file: !1773, line: 268, baseType: !61, size: 32, offset: 896)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5182, file: !1773, line: 272, baseType: !61, size: 32, offset: 928)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5182, file: !1773, line: 274, baseType: !1751, size: 64, offset: 960)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5182, file: !1773, line: 278, baseType: !62, size: 16, offset: 1024)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5182, file: !1773, line: 279, baseType: !1801, size: 8, offset: 1040)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5182, file: !1773, line: 280, baseType: !1803, size: 8, offset: 1048)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5182, file: !1773, line: 284, baseType: !1807, size: 64, offset: 1088)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5182, file: !1773, line: 293, baseType: !1810, size: 64, offset: 1152)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5182, file: !1773, line: 301, baseType: !55, size: 64, offset: 1216)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5182, file: !1773, line: 302, baseType: !55, size: 64, offset: 1280)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5182, file: !1773, line: 303, baseType: !55, size: 64, offset: 1344)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5182, file: !1773, line: 304, baseType: !55, size: 64, offset: 1408)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5182, file: !1773, line: 306, baseType: !172, size: 64, offset: 1472)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5182, file: !1773, line: 307, baseType: !61, size: 32, offset: 1536)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5182, file: !1773, line: 309, baseType: !1818, size: 160, offset: 1568)
!5220 = !DILocation(line: 172, column: 21, scope: !5179)
!5221 = !DILocation(line: 174, column: 28, scope: !5179)
!5222 = !DILocation(line: 174, column: 20, scope: !5179)
!5223 = !DILocation(line: 174, column: 18, scope: !5179)
!5224 = !DILocation(line: 175, column: 19, scope: !5225)
!5225 = distinct !DILexicalBlock(scope: !5179, file: !224, line: 175, column: 19)
!5226 = !DILocation(line: 175, column: 22, scope: !5225)
!5227 = !DILocation(line: 175, column: 19, scope: !5179)
!5228 = !DILocation(line: 178, column: 26, scope: !5229)
!5229 = distinct !DILexicalBlock(scope: !5225, file: !224, line: 176, column: 17)
!5230 = !DILocation(line: 178, column: 19, scope: !5229)
!5231 = !DILocation(line: 179, column: 22, scope: !5229)
!5232 = !DILocation(line: 180, column: 17, scope: !5229)
!5233 = !DILocalVariable(name: "res_ptr", scope: !5234, file: !224, line: 184, type: !60)
!5234 = distinct !DILexicalBlock(scope: !5225, file: !224, line: 182, column: 17)
!5235 = !DILocation(line: 184, column: 25, scope: !5234)
!5236 = !DILocalVariable(name: "res_size", scope: !5234, file: !224, line: 185, type: !172)
!5237 = !DILocation(line: 185, column: 26, scope: !5234)
!5238 = !DILocation(line: 187, column: 19, scope: !5234)
!5239 = !DILocalVariable(name: "c", scope: !5240, file: !224, line: 189, type: !61)
!5240 = distinct !DILexicalBlock(scope: !5241, file: !224, line: 188, column: 21)
!5241 = distinct !DILexicalBlock(scope: !5242, file: !224, line: 187, column: 19)
!5242 = distinct !DILexicalBlock(scope: !5234, file: !224, line: 187, column: 19)
!5243 = !DILocation(line: 189, column: 27, scope: !5240)
!5244 = !DILocalVariable(name: "buf1", scope: !5240, file: !224, line: 190, type: !5245)
!5245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 408, elements: !5246)
!5246 = !{!5247}
!5247 = !DISubrange(count: 51)
!5248 = !DILocation(line: 190, column: 28, scope: !5240)
!5249 = !DILocalVariable(name: "buf2", scope: !5240, file: !224, line: 191, type: !5245)
!5250 = !DILocation(line: 191, column: 28, scope: !5240)
!5251 = !DILocalVariable(name: "l1", scope: !5240, file: !224, line: 192, type: !172)
!5252 = !DILocation(line: 192, column: 30, scope: !5240)
!5253 = !DILocalVariable(name: "l2", scope: !5240, file: !224, line: 192, type: !172)
!5254 = !DILocation(line: 192, column: 34, scope: !5240)
!5255 = !DILocalVariable(name: "old_res_ptr", scope: !5240, file: !224, line: 193, type: !60)
!5256 = !DILocation(line: 193, column: 29, scope: !5240)
!5257 = !DILocation(line: 195, column: 33, scope: !5240)
!5258 = !DILocation(line: 195, column: 27, scope: !5240)
!5259 = !DILocation(line: 195, column: 25, scope: !5240)
!5260 = !DILocation(line: 196, column: 27, scope: !5261)
!5261 = distinct !DILexicalBlock(scope: !5240, file: !224, line: 196, column: 27)
!5262 = !DILocation(line: 196, column: 29, scope: !5261)
!5263 = !DILocation(line: 196, column: 27, scope: !5240)
!5264 = !DILocation(line: 197, column: 25, scope: !5261)
!5265 = !DILocation(line: 198, column: 27, scope: !5266)
!5266 = distinct !DILexicalBlock(scope: !5240, file: !224, line: 198, column: 27)
!5267 = !DILocation(line: 198, column: 29, scope: !5266)
!5268 = !DILocation(line: 198, column: 37, scope: !5266)
!5269 = !DILocation(line: 198, column: 40, scope: !5266)
!5270 = !DILocation(line: 198, column: 42, scope: !5266)
!5271 = !DILocation(line: 198, column: 49, scope: !5266)
!5272 = !DILocation(line: 198, column: 52, scope: !5266)
!5273 = !DILocation(line: 198, column: 54, scope: !5266)
!5274 = !DILocation(line: 198, column: 27, scope: !5240)
!5275 = !DILocation(line: 199, column: 25, scope: !5266)
!5276 = distinct !{!5276, !5277, !5278}
!5277 = !DILocation(line: 187, column: 19, scope: !5242)
!5278 = !DILocation(line: 235, column: 21, scope: !5242)
!5279 = !DILocation(line: 200, column: 27, scope: !5280)
!5280 = distinct !DILexicalBlock(scope: !5240, file: !224, line: 200, column: 27)
!5281 = !DILocation(line: 200, column: 29, scope: !5280)
!5282 = !DILocation(line: 200, column: 27, scope: !5240)
!5283 = !DILocation(line: 203, column: 27, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5280, file: !224, line: 201, column: 25)
!5285 = distinct !{!5285, !5283, !5286}
!5286 = !DILocation(line: 205, column: 58, scope: !5284)
!5287 = !DILocation(line: 204, column: 39, scope: !5284)
!5288 = !DILocation(line: 204, column: 33, scope: !5284)
!5289 = !DILocation(line: 204, column: 31, scope: !5284)
!5290 = !DILocation(line: 204, column: 29, scope: !5284)
!5291 = !DILocation(line: 205, column: 36, scope: !5284)
!5292 = !DILocation(line: 205, column: 38, scope: !5284)
!5293 = !DILocation(line: 205, column: 45, scope: !5284)
!5294 = !DILocation(line: 205, column: 48, scope: !5284)
!5295 = !DILocation(line: 205, column: 50, scope: !5284)
!5296 = !DILocation(line: 205, column: 34, scope: !5284)
!5297 = !DILocation(line: 206, column: 31, scope: !5298)
!5298 = distinct !DILexicalBlock(scope: !5284, file: !224, line: 206, column: 31)
!5299 = !DILocation(line: 206, column: 33, scope: !5298)
!5300 = !DILocation(line: 206, column: 31, scope: !5284)
!5301 = !DILocation(line: 207, column: 29, scope: !5298)
!5302 = !DILocation(line: 208, column: 27, scope: !5284)
!5303 = !DILocation(line: 210, column: 31, scope: !5240)
!5304 = !DILocation(line: 210, column: 34, scope: !5240)
!5305 = !DILocation(line: 210, column: 23, scope: !5240)
!5306 = !DILocation(line: 211, column: 35, scope: !5307)
!5307 = distinct !DILexicalBlock(scope: !5240, file: !224, line: 211, column: 27)
!5308 = !DILocation(line: 211, column: 52, scope: !5307)
!5309 = !DILocation(line: 211, column: 58, scope: !5307)
!5310 = !DILocation(line: 211, column: 27, scope: !5307)
!5311 = !DILocation(line: 211, column: 64, scope: !5307)
!5312 = !DILocation(line: 211, column: 27, scope: !5240)
!5313 = !DILocation(line: 212, column: 25, scope: !5307)
!5314 = !DILocation(line: 213, column: 36, scope: !5240)
!5315 = !DILocation(line: 213, column: 28, scope: !5240)
!5316 = !DILocation(line: 213, column: 26, scope: !5240)
!5317 = !DILocation(line: 214, column: 36, scope: !5240)
!5318 = !DILocation(line: 214, column: 28, scope: !5240)
!5319 = !DILocation(line: 214, column: 26, scope: !5240)
!5320 = !DILocation(line: 215, column: 37, scope: !5240)
!5321 = !DILocation(line: 215, column: 35, scope: !5240)
!5322 = !DILocation(line: 216, column: 27, scope: !5323)
!5323 = distinct !DILexicalBlock(scope: !5240, file: !224, line: 216, column: 27)
!5324 = !DILocation(line: 216, column: 36, scope: !5323)
!5325 = !DILocation(line: 216, column: 27, scope: !5240)
!5326 = !DILocation(line: 218, column: 38, scope: !5327)
!5327 = distinct !DILexicalBlock(scope: !5323, file: !224, line: 217, column: 25)
!5328 = !DILocation(line: 218, column: 41, scope: !5327)
!5329 = !DILocation(line: 218, column: 47, scope: !5327)
!5330 = !DILocation(line: 218, column: 45, scope: !5327)
!5331 = !DILocation(line: 218, column: 50, scope: !5327)
!5332 = !DILocation(line: 218, column: 36, scope: !5327)
!5333 = !DILocation(line: 219, column: 54, scope: !5327)
!5334 = !DILocation(line: 219, column: 63, scope: !5327)
!5335 = !DILocation(line: 219, column: 46, scope: !5327)
!5336 = !DILocation(line: 219, column: 35, scope: !5327)
!5337 = !DILocation(line: 220, column: 25, scope: !5327)
!5338 = !DILocation(line: 223, column: 39, scope: !5339)
!5339 = distinct !DILexicalBlock(scope: !5323, file: !224, line: 222, column: 25)
!5340 = !DILocation(line: 223, column: 42, scope: !5339)
!5341 = !DILocation(line: 223, column: 48, scope: !5339)
!5342 = !DILocation(line: 223, column: 46, scope: !5339)
!5343 = !DILocation(line: 223, column: 51, scope: !5339)
!5344 = !DILocation(line: 223, column: 36, scope: !5339)
!5345 = !DILocation(line: 224, column: 55, scope: !5339)
!5346 = !DILocation(line: 224, column: 64, scope: !5339)
!5347 = !DILocation(line: 224, column: 73, scope: !5339)
!5348 = !DILocation(line: 224, column: 46, scope: !5339)
!5349 = !DILocation(line: 224, column: 35, scope: !5339)
!5350 = !DILocation(line: 226, column: 27, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5240, file: !224, line: 226, column: 27)
!5352 = !DILocation(line: 226, column: 35, scope: !5351)
!5353 = !DILocation(line: 226, column: 27, scope: !5240)
!5354 = !DILocation(line: 229, column: 36, scope: !5355)
!5355 = distinct !DILexicalBlock(scope: !5351, file: !224, line: 227, column: 25)
!5356 = !DILocation(line: 230, column: 33, scope: !5355)
!5357 = !DILocation(line: 230, column: 27, scope: !5355)
!5358 = !DILocation(line: 231, column: 27, scope: !5355)
!5359 = !DILocation(line: 233, column: 31, scope: !5240)
!5360 = !DILocation(line: 233, column: 41, scope: !5240)
!5361 = !DILocation(line: 233, column: 39, scope: !5240)
!5362 = !DILocation(line: 233, column: 53, scope: !5240)
!5363 = !DILocation(line: 233, column: 56, scope: !5240)
!5364 = !DILocation(line: 233, column: 50, scope: !5240)
!5365 = !DILocation(line: 233, column: 64, scope: !5240)
!5366 = !DILocation(line: 233, column: 67, scope: !5240)
!5367 = !DILocation(line: 233, column: 61, scope: !5240)
!5368 = !DILocation(line: 233, column: 73, scope: !5240)
!5369 = !DILocation(line: 233, column: 23, scope: !5240)
!5370 = !DILocation(line: 234, column: 31, scope: !5240)
!5371 = !DILocation(line: 234, column: 41, scope: !5240)
!5372 = !DILocation(line: 234, column: 39, scope: !5240)
!5373 = !DILocation(line: 234, column: 53, scope: !5240)
!5374 = !DILocation(line: 234, column: 56, scope: !5240)
!5375 = !DILocation(line: 234, column: 50, scope: !5240)
!5376 = !DILocation(line: 234, column: 62, scope: !5240)
!5377 = !DILocation(line: 234, column: 23, scope: !5240)
!5378 = !DILocation(line: 187, column: 19, scope: !5241)
!5379 = !DILocation(line: 236, column: 27, scope: !5234)
!5380 = !DILocation(line: 236, column: 19, scope: !5234)
!5381 = !DILocation(line: 237, column: 23, scope: !5382)
!5382 = distinct !DILexicalBlock(scope: !5234, file: !224, line: 237, column: 23)
!5383 = !DILocation(line: 237, column: 32, scope: !5382)
!5384 = !DILocation(line: 237, column: 23, scope: !5234)
!5385 = !DILocation(line: 238, column: 24, scope: !5382)
!5386 = !DILocation(line: 238, column: 21, scope: !5382)
!5387 = !DILocation(line: 241, column: 25, scope: !5388)
!5388 = distinct !DILexicalBlock(scope: !5382, file: !224, line: 240, column: 21)
!5389 = !DILocation(line: 241, column: 35, scope: !5388)
!5390 = !DILocation(line: 241, column: 33, scope: !5388)
!5391 = !DILocation(line: 241, column: 45, scope: !5388)
!5392 = !DILocation(line: 242, column: 28, scope: !5388)
!5393 = !DILocation(line: 242, column: 26, scope: !5388)
!5394 = !DILocation(line: 247, column: 17, scope: !5167)
!5395 = !DILocation(line: 247, column: 11, scope: !5167)
!5396 = !DILocation(line: 341, column: 25, scope: !5094)
!5397 = !DILocation(line: 341, column: 23, scope: !5094)
!5398 = !DILocation(line: 342, column: 5, scope: !5094)
!5399 = !DILocation(line: 344, column: 10, scope: !5084)
!5400 = !DILocation(line: 344, column: 3, scope: !5084)
!5401 = distinct !DISubprogram(name: "memcoll", scope: !677, file: !677, line: 66, type: !4275, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, unit: !676, variables: !113)
!5402 = !DILocalVariable(name: "s1", arg: 1, scope: !5401, file: !677, line: 66, type: !60)
!5403 = !DILocation(line: 66, column: 16, scope: !5401)
!5404 = !DILocalVariable(name: "s1len", arg: 2, scope: !5401, file: !677, line: 66, type: !172)
!5405 = !DILocation(line: 66, column: 27, scope: !5401)
!5406 = !DILocalVariable(name: "s2", arg: 3, scope: !5401, file: !677, line: 66, type: !60)
!5407 = !DILocation(line: 66, column: 40, scope: !5401)
!5408 = !DILocalVariable(name: "s2len", arg: 4, scope: !5401, file: !677, line: 66, type: !172)
!5409 = !DILocation(line: 66, column: 51, scope: !5401)
!5410 = !DILocalVariable(name: "diff", scope: !5401, file: !677, line: 68, type: !61)
!5411 = !DILocation(line: 68, column: 7, scope: !5401)
!5412 = !DILocation(line: 74, column: 7, scope: !5413)
!5413 = distinct !DILexicalBlock(scope: !5401, file: !677, line: 74, column: 7)
!5414 = !DILocation(line: 74, column: 16, scope: !5413)
!5415 = !DILocation(line: 74, column: 13, scope: !5413)
!5416 = !DILocation(line: 74, column: 22, scope: !5413)
!5417 = !DILocation(line: 74, column: 33, scope: !5413)
!5418 = !DILocation(line: 74, column: 37, scope: !5413)
!5419 = !DILocation(line: 74, column: 41, scope: !5413)
!5420 = !DILocation(line: 74, column: 25, scope: !5413)
!5421 = !DILocation(line: 74, column: 48, scope: !5413)
!5422 = !DILocation(line: 74, column: 7, scope: !5401)
!5423 = !DILocation(line: 76, column: 7, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5413, file: !677, line: 75, column: 5)
!5425 = !DILocation(line: 76, column: 13, scope: !5424)
!5426 = !DILocation(line: 77, column: 12, scope: !5424)
!5427 = !DILocation(line: 78, column: 5, scope: !5424)
!5428 = !DILocalVariable(name: "n1", scope: !5429, file: !677, line: 81, type: !54)
!5429 = distinct !DILexicalBlock(scope: !5413, file: !677, line: 80, column: 5)
!5430 = !DILocation(line: 81, column: 12, scope: !5429)
!5431 = !DILocation(line: 81, column: 17, scope: !5429)
!5432 = !DILocation(line: 81, column: 20, scope: !5429)
!5433 = !DILocalVariable(name: "n2", scope: !5429, file: !677, line: 82, type: !54)
!5434 = !DILocation(line: 82, column: 12, scope: !5429)
!5435 = !DILocation(line: 82, column: 17, scope: !5429)
!5436 = !DILocation(line: 82, column: 20, scope: !5429)
!5437 = !DILocation(line: 84, column: 7, scope: !5429)
!5438 = !DILocation(line: 84, column: 10, scope: !5429)
!5439 = !DILocation(line: 84, column: 17, scope: !5429)
!5440 = !DILocation(line: 85, column: 7, scope: !5429)
!5441 = !DILocation(line: 85, column: 10, scope: !5429)
!5442 = !DILocation(line: 85, column: 17, scope: !5429)
!5443 = !DILocation(line: 87, column: 28, scope: !5429)
!5444 = !DILocation(line: 87, column: 32, scope: !5429)
!5445 = !DILocation(line: 87, column: 38, scope: !5429)
!5446 = !DILocation(line: 87, column: 43, scope: !5429)
!5447 = !DILocation(line: 87, column: 47, scope: !5429)
!5448 = !DILocation(line: 87, column: 53, scope: !5429)
!5449 = !DILocation(line: 87, column: 14, scope: !5429)
!5450 = !DILocation(line: 87, column: 12, scope: !5429)
!5451 = !DILocation(line: 89, column: 19, scope: !5429)
!5452 = !DILocation(line: 89, column: 7, scope: !5429)
!5453 = !DILocation(line: 89, column: 10, scope: !5429)
!5454 = !DILocation(line: 89, column: 17, scope: !5429)
!5455 = !DILocation(line: 90, column: 19, scope: !5429)
!5456 = !DILocation(line: 90, column: 7, scope: !5429)
!5457 = !DILocation(line: 90, column: 10, scope: !5429)
!5458 = !DILocation(line: 90, column: 17, scope: !5429)
!5459 = !DILocation(line: 93, column: 10, scope: !5401)
!5460 = !DILocation(line: 93, column: 3, scope: !5401)
!5461 = distinct !DISubprogram(name: "strcoll_loop", scope: !677, file: !677, line: 35, type: !4332, isLocal: true, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false, unit: !676, variables: !113)
!5462 = !DILocalVariable(name: "s1", arg: 1, scope: !5461, file: !677, line: 35, type: !52)
!5463 = !DILocation(line: 35, column: 27, scope: !5461)
!5464 = !DILocalVariable(name: "s1size", arg: 2, scope: !5461, file: !677, line: 35, type: !172)
!5465 = !DILocation(line: 35, column: 38, scope: !5461)
!5466 = !DILocalVariable(name: "s2", arg: 3, scope: !5461, file: !677, line: 35, type: !52)
!5467 = !DILocation(line: 35, column: 58, scope: !5461)
!5468 = !DILocalVariable(name: "s2size", arg: 4, scope: !5461, file: !677, line: 35, type: !172)
!5469 = !DILocation(line: 35, column: 69, scope: !5461)
!5470 = !DILocalVariable(name: "diff", scope: !5461, file: !677, line: 37, type: !61)
!5471 = !DILocation(line: 37, column: 7, scope: !5461)
!5472 = !DILocation(line: 39, column: 3, scope: !5461)
!5473 = !DILocation(line: 39, column: 13, scope: !5461)
!5474 = !DILocation(line: 39, column: 19, scope: !5461)
!5475 = !DILocation(line: 39, column: 41, scope: !5461)
!5476 = !DILocation(line: 39, column: 45, scope: !5461)
!5477 = !DILocation(line: 39, column: 32, scope: !5461)
!5478 = !DILocation(line: 39, column: 30, scope: !5461)
!5479 = !DILocation(line: 39, column: 50, scope: !5461)
!5480 = !DILocation(line: 39, column: 53, scope: !5461)
!5481 = !DILocation(line: 39, column: 10, scope: !5461)
!5482 = !DILocalVariable(name: "size1", scope: !5483, file: !677, line: 44, type: !172)
!5483 = distinct !DILexicalBlock(scope: !5461, file: !677, line: 40, column: 5)
!5484 = !DILocation(line: 44, column: 14, scope: !5483)
!5485 = !DILocation(line: 44, column: 30, scope: !5483)
!5486 = !DILocation(line: 44, column: 22, scope: !5483)
!5487 = !DILocation(line: 44, column: 34, scope: !5483)
!5488 = !DILocalVariable(name: "size2", scope: !5483, file: !677, line: 45, type: !172)
!5489 = !DILocation(line: 45, column: 14, scope: !5483)
!5490 = !DILocation(line: 45, column: 30, scope: !5483)
!5491 = !DILocation(line: 45, column: 22, scope: !5483)
!5492 = !DILocation(line: 45, column: 34, scope: !5483)
!5493 = !DILocation(line: 46, column: 13, scope: !5483)
!5494 = !DILocation(line: 46, column: 10, scope: !5483)
!5495 = !DILocation(line: 47, column: 13, scope: !5483)
!5496 = !DILocation(line: 47, column: 10, scope: !5483)
!5497 = !DILocation(line: 48, column: 17, scope: !5483)
!5498 = !DILocation(line: 48, column: 14, scope: !5483)
!5499 = !DILocation(line: 49, column: 17, scope: !5483)
!5500 = !DILocation(line: 49, column: 14, scope: !5483)
!5501 = !DILocation(line: 51, column: 11, scope: !5502)
!5502 = distinct !DILexicalBlock(scope: !5483, file: !677, line: 51, column: 11)
!5503 = !DILocation(line: 51, column: 18, scope: !5502)
!5504 = !DILocation(line: 51, column: 11, scope: !5483)
!5505 = !DILocation(line: 52, column: 19, scope: !5502)
!5506 = !DILocation(line: 52, column: 26, scope: !5502)
!5507 = !DILocation(line: 52, column: 16, scope: !5502)
!5508 = !DILocation(line: 52, column: 9, scope: !5502)
!5509 = !DILocation(line: 53, column: 11, scope: !5510)
!5510 = distinct !DILexicalBlock(scope: !5483, file: !677, line: 53, column: 11)
!5511 = !DILocation(line: 53, column: 18, scope: !5510)
!5512 = !DILocation(line: 53, column: 11, scope: !5483)
!5513 = !DILocation(line: 54, column: 9, scope: !5510)
!5514 = distinct !{!5514, !5472, !5515}
!5515 = !DILocation(line: 55, column: 5, scope: !5461)
!5516 = !DILocation(line: 57, column: 10, scope: !5461)
!5517 = !DILocation(line: 57, column: 3, scope: !5461)
!5518 = !DILocation(line: 58, column: 1, scope: !5461)
!5519 = distinct !DISubprogram(name: "memcoll0", scope: !677, file: !677, line: 102, type: !4332, isLocal: false, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: false, unit: !676, variables: !113)
!5520 = !DILocalVariable(name: "s1", arg: 1, scope: !5519, file: !677, line: 102, type: !52)
!5521 = !DILocation(line: 102, column: 23, scope: !5519)
!5522 = !DILocalVariable(name: "s1size", arg: 2, scope: !5519, file: !677, line: 102, type: !172)
!5523 = !DILocation(line: 102, column: 34, scope: !5519)
!5524 = !DILocalVariable(name: "s2", arg: 3, scope: !5519, file: !677, line: 102, type: !52)
!5525 = !DILocation(line: 102, column: 54, scope: !5519)
!5526 = !DILocalVariable(name: "s2size", arg: 4, scope: !5519, file: !677, line: 102, type: !172)
!5527 = !DILocation(line: 102, column: 65, scope: !5519)
!5528 = !DILocation(line: 104, column: 7, scope: !5529)
!5529 = distinct !DILexicalBlock(scope: !5519, file: !677, line: 104, column: 7)
!5530 = !DILocation(line: 104, column: 17, scope: !5529)
!5531 = !DILocation(line: 104, column: 14, scope: !5529)
!5532 = !DILocation(line: 104, column: 24, scope: !5529)
!5533 = !DILocation(line: 104, column: 35, scope: !5529)
!5534 = !DILocation(line: 104, column: 39, scope: !5529)
!5535 = !DILocation(line: 104, column: 43, scope: !5529)
!5536 = !DILocation(line: 104, column: 27, scope: !5529)
!5537 = !DILocation(line: 104, column: 51, scope: !5529)
!5538 = !DILocation(line: 104, column: 7, scope: !5519)
!5539 = !DILocation(line: 106, column: 7, scope: !5540)
!5540 = distinct !DILexicalBlock(scope: !5529, file: !677, line: 105, column: 5)
!5541 = !DILocation(line: 106, column: 13, scope: !5540)
!5542 = !DILocation(line: 107, column: 7, scope: !5540)
!5543 = !DILocation(line: 110, column: 26, scope: !5529)
!5544 = !DILocation(line: 110, column: 30, scope: !5529)
!5545 = !DILocation(line: 110, column: 38, scope: !5529)
!5546 = !DILocation(line: 110, column: 42, scope: !5529)
!5547 = !DILocation(line: 110, column: 12, scope: !5529)
!5548 = !DILocation(line: 110, column: 5, scope: !5529)
!5549 = !DILocation(line: 111, column: 1, scope: !5519)
!5550 = distinct !DISubprogram(name: "c_isascii", scope: !679, file: !679, line: 27, type: !1965, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5551 = !DILocalVariable(name: "c", arg: 1, scope: !5550, file: !679, line: 27, type: !61)
!5552 = !DILocation(line: 27, column: 16, scope: !5550)
!5553 = !DILocation(line: 29, column: 11, scope: !5550)
!5554 = !DILocation(line: 29, column: 13, scope: !5550)
!5555 = !DILocation(line: 29, column: 21, scope: !5550)
!5556 = !DILocation(line: 29, column: 24, scope: !5550)
!5557 = !DILocation(line: 29, column: 26, scope: !5550)
!5558 = !DILocation(line: 29, column: 3, scope: !5550)
!5559 = distinct !DISubprogram(name: "c_isalnum", scope: !679, file: !679, line: 33, type: !1965, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5560 = !DILocalVariable(name: "c", arg: 1, scope: !5559, file: !679, line: 33, type: !61)
!5561 = !DILocation(line: 33, column: 16, scope: !5559)
!5562 = !DILocation(line: 38, column: 12, scope: !5559)
!5563 = !DILocation(line: 38, column: 14, scope: !5559)
!5564 = !DILocation(line: 38, column: 21, scope: !5559)
!5565 = !DILocation(line: 38, column: 24, scope: !5559)
!5566 = !DILocation(line: 38, column: 26, scope: !5559)
!5567 = !DILocation(line: 39, column: 11, scope: !5559)
!5568 = !DILocation(line: 39, column: 16, scope: !5559)
!5569 = !DILocation(line: 39, column: 18, scope: !5559)
!5570 = !DILocation(line: 39, column: 27, scope: !5559)
!5571 = !DILocation(line: 39, column: 34, scope: !5559)
!5572 = !DILocation(line: 39, column: 38, scope: !5559)
!5573 = !DILocation(line: 39, column: 40, scope: !5559)
!5574 = !DILocation(line: 39, column: 49, scope: !5559)
!5575 = !DILocation(line: 38, column: 3, scope: !5559)
!5576 = distinct !DISubprogram(name: "c_isalpha", scope: !679, file: !679, line: 68, type: !1965, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5577 = !DILocalVariable(name: "c", arg: 1, scope: !5576, file: !679, line: 68, type: !61)
!5578 = !DILocation(line: 68, column: 16, scope: !5576)
!5579 = !DILocation(line: 72, column: 12, scope: !5576)
!5580 = !DILocation(line: 72, column: 14, scope: !5576)
!5581 = !DILocation(line: 72, column: 23, scope: !5576)
!5582 = !DILocation(line: 72, column: 30, scope: !5576)
!5583 = !DILocation(line: 72, column: 34, scope: !5576)
!5584 = !DILocation(line: 72, column: 36, scope: !5576)
!5585 = !DILocation(line: 72, column: 45, scope: !5576)
!5586 = !DILocation(line: 72, column: 3, scope: !5576)
!5587 = distinct !DISubprogram(name: "c_isblank", scope: !679, file: !679, line: 97, type: !1965, isLocal: false, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5588 = !DILocalVariable(name: "c", arg: 1, scope: !5587, file: !679, line: 97, type: !61)
!5589 = !DILocation(line: 97, column: 16, scope: !5587)
!5590 = !DILocation(line: 99, column: 11, scope: !5587)
!5591 = !DILocation(line: 99, column: 13, scope: !5587)
!5592 = !DILocation(line: 99, column: 20, scope: !5587)
!5593 = !DILocation(line: 99, column: 23, scope: !5587)
!5594 = !DILocation(line: 99, column: 25, scope: !5587)
!5595 = !DILocation(line: 99, column: 3, scope: !5587)
!5596 = distinct !DISubprogram(name: "c_iscntrl", scope: !679, file: !679, line: 103, type: !1965, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5597 = !DILocalVariable(name: "c", arg: 1, scope: !5596, file: !679, line: 103, type: !61)
!5598 = !DILocation(line: 103, column: 16, scope: !5596)
!5599 = !DILocation(line: 106, column: 12, scope: !5596)
!5600 = !DILocation(line: 106, column: 14, scope: !5596)
!5601 = !DILocation(line: 106, column: 23, scope: !5596)
!5602 = !DILocation(line: 106, column: 28, scope: !5596)
!5603 = !DILocation(line: 106, column: 31, scope: !5596)
!5604 = !DILocation(line: 106, column: 33, scope: !5596)
!5605 = !DILocation(line: 106, column: 3, scope: !5596)
!5606 = distinct !DISubprogram(name: "c_isdigit", scope: !679, file: !679, line: 137, type: !1965, isLocal: false, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5607 = !DILocalVariable(name: "c", arg: 1, scope: !5606, file: !679, line: 137, type: !61)
!5608 = !DILocation(line: 137, column: 16, scope: !5606)
!5609 = !DILocation(line: 140, column: 11, scope: !5606)
!5610 = !DILocation(line: 140, column: 13, scope: !5606)
!5611 = !DILocation(line: 140, column: 20, scope: !5606)
!5612 = !DILocation(line: 140, column: 23, scope: !5606)
!5613 = !DILocation(line: 140, column: 25, scope: !5606)
!5614 = !DILocation(line: 140, column: 3, scope: !5606)
!5615 = distinct !DISubprogram(name: "c_islower", scope: !679, file: !679, line: 154, type: !1965, isLocal: false, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5616 = !DILocalVariable(name: "c", arg: 1, scope: !5615, file: !679, line: 154, type: !61)
!5617 = !DILocation(line: 154, column: 16, scope: !5615)
!5618 = !DILocation(line: 157, column: 11, scope: !5615)
!5619 = !DILocation(line: 157, column: 13, scope: !5615)
!5620 = !DILocation(line: 157, column: 20, scope: !5615)
!5621 = !DILocation(line: 157, column: 23, scope: !5615)
!5622 = !DILocation(line: 157, column: 25, scope: !5615)
!5623 = !DILocation(line: 157, column: 3, scope: !5615)
!5624 = distinct !DISubprogram(name: "c_isgraph", scope: !679, file: !679, line: 174, type: !1965, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5625 = !DILocalVariable(name: "c", arg: 1, scope: !5624, file: !679, line: 174, type: !61)
!5626 = !DILocation(line: 174, column: 16, scope: !5624)
!5627 = !DILocation(line: 177, column: 11, scope: !5624)
!5628 = !DILocation(line: 177, column: 13, scope: !5624)
!5629 = !DILocation(line: 177, column: 20, scope: !5624)
!5630 = !DILocation(line: 177, column: 23, scope: !5624)
!5631 = !DILocation(line: 177, column: 25, scope: !5624)
!5632 = !DILocation(line: 177, column: 3, scope: !5624)
!5633 = distinct !DISubprogram(name: "c_isprint", scope: !679, file: !679, line: 208, type: !1965, isLocal: false, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5634 = !DILocalVariable(name: "c", arg: 1, scope: !5633, file: !679, line: 208, type: !61)
!5635 = !DILocation(line: 208, column: 16, scope: !5633)
!5636 = !DILocation(line: 211, column: 11, scope: !5633)
!5637 = !DILocation(line: 211, column: 13, scope: !5633)
!5638 = !DILocation(line: 211, column: 20, scope: !5633)
!5639 = !DILocation(line: 211, column: 23, scope: !5633)
!5640 = !DILocation(line: 211, column: 25, scope: !5633)
!5641 = !DILocation(line: 211, column: 3, scope: !5633)
!5642 = distinct !DISubprogram(name: "c_ispunct", scope: !679, file: !679, line: 242, type: !1965, isLocal: false, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5643 = !DILocalVariable(name: "c", arg: 1, scope: !5642, file: !679, line: 242, type: !61)
!5644 = !DILocation(line: 242, column: 16, scope: !5642)
!5645 = !DILocation(line: 245, column: 12, scope: !5642)
!5646 = !DILocation(line: 245, column: 14, scope: !5642)
!5647 = !DILocation(line: 245, column: 21, scope: !5642)
!5648 = !DILocation(line: 245, column: 24, scope: !5642)
!5649 = !DILocation(line: 245, column: 26, scope: !5642)
!5650 = !DILocation(line: 246, column: 11, scope: !5642)
!5651 = !DILocation(line: 246, column: 17, scope: !5642)
!5652 = !DILocation(line: 246, column: 19, scope: !5642)
!5653 = !DILocation(line: 246, column: 26, scope: !5642)
!5654 = !DILocation(line: 246, column: 29, scope: !5642)
!5655 = !DILocation(line: 246, column: 31, scope: !5642)
!5656 = !DILocation(line: 247, column: 16, scope: !5642)
!5657 = !DILocation(line: 247, column: 21, scope: !5642)
!5658 = !DILocation(line: 247, column: 23, scope: !5642)
!5659 = !DILocation(line: 247, column: 32, scope: !5642)
!5660 = !DILocation(line: 247, column: 39, scope: !5642)
!5661 = !DILocation(line: 247, column: 43, scope: !5642)
!5662 = !DILocation(line: 247, column: 45, scope: !5642)
!5663 = !DILocation(line: 247, column: 54, scope: !5642)
!5664 = !DILocation(line: 246, column: 14, scope: !5642)
!5665 = !DILocation(line: 245, column: 3, scope: !5642)
!5666 = distinct !DISubprogram(name: "c_isspace", scope: !679, file: !679, line: 266, type: !1965, isLocal: false, isDefinition: true, scopeLine: 267, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5667 = !DILocalVariable(name: "c", arg: 1, scope: !5666, file: !679, line: 266, type: !61)
!5668 = !DILocation(line: 266, column: 16, scope: !5666)
!5669 = !DILocation(line: 268, column: 11, scope: !5666)
!5670 = !DILocation(line: 268, column: 13, scope: !5666)
!5671 = !DILocation(line: 268, column: 20, scope: !5666)
!5672 = !DILocation(line: 268, column: 23, scope: !5666)
!5673 = !DILocation(line: 268, column: 25, scope: !5666)
!5674 = !DILocation(line: 269, column: 11, scope: !5666)
!5675 = !DILocation(line: 269, column: 14, scope: !5666)
!5676 = !DILocation(line: 269, column: 16, scope: !5666)
!5677 = !DILocation(line: 269, column: 24, scope: !5666)
!5678 = !DILocation(line: 269, column: 27, scope: !5666)
!5679 = !DILocation(line: 269, column: 29, scope: !5666)
!5680 = !DILocation(line: 269, column: 37, scope: !5666)
!5681 = !DILocation(line: 269, column: 40, scope: !5666)
!5682 = !DILocation(line: 269, column: 42, scope: !5666)
!5683 = !DILocation(line: 269, column: 50, scope: !5666)
!5684 = !DILocation(line: 269, column: 53, scope: !5666)
!5685 = !DILocation(line: 269, column: 55, scope: !5666)
!5686 = !DILocation(line: 268, column: 3, scope: !5666)
!5687 = distinct !DISubprogram(name: "c_isupper", scope: !679, file: !679, line: 273, type: !1965, isLocal: false, isDefinition: true, scopeLine: 274, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5688 = !DILocalVariable(name: "c", arg: 1, scope: !5687, file: !679, line: 273, type: !61)
!5689 = !DILocation(line: 273, column: 16, scope: !5687)
!5690 = !DILocation(line: 276, column: 11, scope: !5687)
!5691 = !DILocation(line: 276, column: 13, scope: !5687)
!5692 = !DILocation(line: 276, column: 20, scope: !5687)
!5693 = !DILocation(line: 276, column: 23, scope: !5687)
!5694 = !DILocation(line: 276, column: 25, scope: !5687)
!5695 = !DILocation(line: 276, column: 3, scope: !5687)
!5696 = distinct !DISubprogram(name: "c_isxdigit", scope: !679, file: !679, line: 293, type: !1965, isLocal: false, isDefinition: true, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5697 = !DILocalVariable(name: "c", arg: 1, scope: !5696, file: !679, line: 293, type: !61)
!5698 = !DILocation(line: 293, column: 17, scope: !5696)
!5699 = !DILocation(line: 298, column: 12, scope: !5696)
!5700 = !DILocation(line: 298, column: 14, scope: !5696)
!5701 = !DILocation(line: 298, column: 21, scope: !5696)
!5702 = !DILocation(line: 298, column: 24, scope: !5696)
!5703 = !DILocation(line: 298, column: 26, scope: !5696)
!5704 = !DILocation(line: 299, column: 11, scope: !5696)
!5705 = !DILocation(line: 299, column: 16, scope: !5696)
!5706 = !DILocation(line: 299, column: 18, scope: !5696)
!5707 = !DILocation(line: 299, column: 27, scope: !5696)
!5708 = !DILocation(line: 299, column: 34, scope: !5696)
!5709 = !DILocation(line: 299, column: 38, scope: !5696)
!5710 = !DILocation(line: 299, column: 40, scope: !5696)
!5711 = !DILocation(line: 299, column: 49, scope: !5696)
!5712 = !DILocation(line: 298, column: 3, scope: !5696)
!5713 = distinct !DISubprogram(name: "c_tolower", scope: !679, file: !679, line: 320, type: !5714, isLocal: false, isDefinition: true, scopeLine: 321, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5714 = !DISubroutineType(types: !5715)
!5715 = !{!61, !61}
!5716 = !DILocalVariable(name: "c", arg: 1, scope: !5713, file: !679, line: 320, type: !61)
!5717 = !DILocation(line: 320, column: 16, scope: !5713)
!5718 = !DILocation(line: 323, column: 11, scope: !5713)
!5719 = !DILocation(line: 323, column: 13, scope: !5713)
!5720 = !DILocation(line: 323, column: 20, scope: !5713)
!5721 = !DILocation(line: 323, column: 23, scope: !5713)
!5722 = !DILocation(line: 323, column: 25, scope: !5713)
!5723 = !DILocation(line: 323, column: 34, scope: !5713)
!5724 = !DILocation(line: 323, column: 36, scope: !5713)
!5725 = !DILocation(line: 323, column: 42, scope: !5713)
!5726 = !DILocation(line: 323, column: 50, scope: !5713)
!5727 = !DILocation(line: 323, column: 3, scope: !5713)
!5728 = distinct !DISubprogram(name: "c_toupper", scope: !679, file: !679, line: 359, type: !5714, isLocal: false, isDefinition: true, scopeLine: 360, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5729 = !DILocalVariable(name: "c", arg: 1, scope: !5728, file: !679, line: 359, type: !61)
!5730 = !DILocation(line: 359, column: 16, scope: !5728)
!5731 = !DILocation(line: 362, column: 11, scope: !5728)
!5732 = !DILocation(line: 362, column: 13, scope: !5728)
!5733 = !DILocation(line: 362, column: 20, scope: !5728)
!5734 = !DILocation(line: 362, column: 23, scope: !5728)
!5735 = !DILocation(line: 362, column: 25, scope: !5728)
!5736 = !DILocation(line: 362, column: 34, scope: !5728)
!5737 = !DILocation(line: 362, column: 36, scope: !5728)
!5738 = !DILocation(line: 362, column: 42, scope: !5728)
!5739 = !DILocation(line: 362, column: 50, scope: !5728)
!5740 = !DILocation(line: 362, column: 3, scope: !5728)
