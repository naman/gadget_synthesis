; ModuleID = 'uniq.bc_orig.bc'
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
  store i32 0, i32* %6, align 4, !dbg !750
  call void @llvm.dbg.declare(metadata i8* %7, metadata !751, metadata !DIExpression()), !dbg !752
  %13 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0)) #11, !dbg !753
  %14 = icmp ne i8* %13, null, !dbg !754
  %15 = zext i1 %14 to i8, !dbg !752
  store i8 %15, i8* %7, align 1, !dbg !752
  call void @llvm.dbg.declare(metadata i32* %8, metadata !755, metadata !DIExpression()), !dbg !756
  store i32 0, i32* %8, align 4, !dbg !756
  call void @llvm.dbg.declare(metadata i32* %9, metadata !757, metadata !DIExpression()), !dbg !758
  store i32 0, i32* %9, align 4, !dbg !758
  call void @llvm.dbg.declare(metadata [2 x i8*]* %10, metadata !759, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.declare(metadata i8* %11, metadata !764, metadata !DIExpression()), !dbg !765
  store i8 10, i8* %11, align 1, !dbg !765
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

; <label>:25:                                     ; preds = %2, %159
  %26 = load i32, i32* %6, align 4, !dbg !785
  %27 = icmp eq i32 %26, -1, !dbg !788
  br i1 %27, label %39, label %28, !dbg !789

; <label>:28:                                     ; preds = %25
  %29 = load i8, i8* %7, align 1, !dbg !790
  %30 = trunc i8 %29 to i1, !dbg !790
  br i1 %30, label %31, label %34, !dbg !791

; <label>:31:                                     ; preds = %28
  %32 = load i32, i32* %9, align 4, !dbg !792
  %33 = icmp ne i32 %32, 0, !dbg !793
  br i1 %33, label %39, label %34, !dbg !794

; <label>:34:                                     ; preds = %31, %28
  %35 = load i32, i32* %4, align 4, !dbg !795
  %36 = load i8**, i8*** %5, align 8, !dbg !796
  %37 = call i32 @getopt_long(i32 %35, i8** %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0), %struct.option* getelementptr inbounds ([12 x %struct.option], [12 x %struct.option]* @longopts, i32 0, i32 0), i32* null) #11, !dbg !797
  store i32 %37, i32* %6, align 4, !dbg !798
  %38 = icmp eq i32 %37, -1, !dbg !799
  br i1 %38, label %39, label %65, !dbg !800

; <label>:39:                                     ; preds = %34, %31, %25
  %40 = load i32, i32* %4, align 4, !dbg !801
  %41 = load i32, i32* @optind, align 4, !dbg !804
  %42 = icmp sle i32 %40, %41, !dbg !805
  br i1 %42, label %43, label %44, !dbg !806

; <label>:43:                                     ; preds = %39
  br label %160, !dbg !807

; <label>:44:                                     ; preds = %39
  %45 = load i32, i32* %9, align 4, !dbg !808
  %46 = icmp eq i32 %45, 2, !dbg !810
  br i1 %46, label %47, label %54, !dbg !811

; <label>:47:                                     ; preds = %44
  %48 = load i8**, i8*** %5, align 8, !dbg !812
  %49 = load i32, i32* @optind, align 4, !dbg !814
  %50 = sext i32 %49 to i64, !dbg !812
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50, !dbg !812
  %52 = load i8*, i8** %51, align 8, !dbg !812
  %53 = call i8* @quote(i8* %52), !dbg !815
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i8* %53), !dbg !816
  call void @usage(i32 1) #15, !dbg !817
  unreachable, !dbg !817

; <label>:54:                                     ; preds = %44
  %55 = load i8**, i8*** %5, align 8, !dbg !818
  %56 = load i32, i32* @optind, align 4, !dbg !819
  %57 = add nsw i32 %56, 1, !dbg !819
  store i32 %57, i32* @optind, align 4, !dbg !819
  %58 = sext i32 %56 to i64, !dbg !818
  %59 = getelementptr inbounds i8*, i8** %55, i64 %58, !dbg !818
  %60 = load i8*, i8** %59, align 8, !dbg !818
  %61 = load i32, i32* %9, align 4, !dbg !820
  %62 = add nsw i32 %61, 1, !dbg !820
  store i32 %62, i32* %9, align 4, !dbg !820
  %63 = sext i32 %61 to i64, !dbg !821
  %64 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 %63, !dbg !821
  store i8* %60, i8** %64, align 8, !dbg !822
  br label %159, !dbg !823

; <label>:65:                                     ; preds = %34
  %66 = load i32, i32* %6, align 4, !dbg !824
  switch i32 %66, label %157 [
    i32 1, label %67
    i32 48, label %99
    i32 49, label %99
    i32 50, label %99
    i32 51, label %99
    i32 52, label %99
    i32 53, label %99
    i32 54, label %99
    i32 55, label %99
    i32 56, label %99
    i32 57, label %99
    i32 99, label %128
    i32 100, label %129
    i32 68, label %130
    i32 102, label %141
    i32 105, label %144
    i32 115, label %145
    i32 117, label %148
    i32 119, label %149
    i32 122, label %152
    i32 -130, label %153
    i32 -131, label %154
  ], !dbg !825

; <label>:67:                                     ; preds = %65
  call void @llvm.dbg.declare(metadata i64* %12, metadata !826, metadata !DIExpression()), !dbg !829
  %68 = load i8*, i8** @optarg, align 8, !dbg !830
  %69 = getelementptr inbounds i8, i8* %68, i64 0, !dbg !830
  %70 = load i8, i8* %69, align 1, !dbg !830
  %71 = sext i8 %70 to i32, !dbg !830
  %72 = icmp eq i32 %71, 43, !dbg !832
  br i1 %72, label %73, label %85, !dbg !833

; <label>:73:                                     ; preds = %67
  %74 = call i32 @posix2_version(), !dbg !834
  %75 = icmp slt i32 %74, 200112, !dbg !835
  br i1 %75, label %76, label %85, !dbg !836

; <label>:76:                                     ; preds = %73
  %77 = load i8*, i8** @optarg, align 8, !dbg !837
  %78 = call i32 @xstrtoul(i8* %77, i8** null, i32 10, i64* %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0)), !dbg !838
  %79 = icmp eq i32 %78, 0, !dbg !839
  br i1 %79, label %80, label %85, !dbg !840

; <label>:80:                                     ; preds = %76
  %81 = load i64, i64* %12, align 8, !dbg !841
  %82 = icmp ule i64 %81, -1, !dbg !842
  br i1 %82, label %83, label %85, !dbg !843

; <label>:83:                                     ; preds = %80
  %84 = load i64, i64* %12, align 8, !dbg !844
  store i64 %84, i64* @skip_chars, align 8, !dbg !845
  br label %98, !dbg !846

; <label>:85:                                     ; preds = %80, %76, %73, %67
  %86 = load i32, i32* %9, align 4, !dbg !847
  %87 = icmp eq i32 %86, 2, !dbg !849
  br i1 %87, label %88, label %91, !dbg !850

; <label>:88:                                     ; preds = %85
  %89 = load i8*, i8** @optarg, align 8, !dbg !851
  %90 = call i8* @quote(i8* %89), !dbg !853
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i8* %90), !dbg !854
  call void @usage(i32 1) #15, !dbg !855
  unreachable, !dbg !855

; <label>:91:                                     ; preds = %85
  %92 = load i8*, i8** @optarg, align 8, !dbg !856
  %93 = load i32, i32* %9, align 4, !dbg !857
  %94 = add nsw i32 %93, 1, !dbg !857
  store i32 %94, i32* %9, align 4, !dbg !857
  %95 = sext i32 %93 to i64, !dbg !858
  %96 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 %95, !dbg !858
  store i8* %92, i8** %96, align 8, !dbg !859
  br label %97

; <label>:97:                                     ; preds = %91
  br label %98

; <label>:98:                                     ; preds = %97, %83
  br label %158, !dbg !860

; <label>:99:                                     ; preds = %65, %65, %65, %65, %65, %65, %65, %65, %65, %65
  %100 = load i32, i32* %8, align 4, !dbg !861
  %101 = icmp eq i32 %100, 2, !dbg !864
  br i1 %101, label %102, label %103, !dbg !865

; <label>:102:                                    ; preds = %99
  store i64 0, i64* @skip_fields, align 8, !dbg !866
  br label %103, !dbg !867

; <label>:103:                                    ; preds = %102, %99
  %104 = load i64, i64* @skip_fields, align 8, !dbg !868
  %105 = icmp ult i64 1844674407370955161, %104, !dbg !868
  br i1 %105, label %115, label %106, !dbg !868

; <label>:106:                                    ; preds = %103
  %107 = load i64, i64* @skip_fields, align 8, !dbg !868
  %108 = mul i64 %107, 10, !dbg !868
  %109 = load i32, i32* %6, align 4, !dbg !868
  %110 = sub nsw i32 %109, 48, !dbg !868
  %111 = sext i32 %110 to i64, !dbg !868
  %112 = add i64 %108, %111, !dbg !868
  %113 = load i64, i64* @skip_fields, align 8, !dbg !868
  %114 = icmp ult i64 %112, %113, !dbg !868
  br i1 %114, label %115, label %116, !dbg !868

; <label>:115:                                    ; preds = %106, %103
  br label %123, !dbg !868

; <label>:116:                                    ; preds = %106
  %117 = load i64, i64* @skip_fields, align 8, !dbg !868
  %118 = mul i64 %117, 10, !dbg !868
  %119 = load i32, i32* %6, align 4, !dbg !868
  %120 = sub nsw i32 %119, 48, !dbg !868
  %121 = sext i32 %120 to i64, !dbg !868
  %122 = add i64 %118, %121, !dbg !868
  store i64 %122, i64* @skip_fields, align 8, !dbg !868
  br label %123, !dbg !868

; <label>:123:                                    ; preds = %116, %115
  %124 = phi i32 [ 0, %115 ], [ 1, %116 ], !dbg !868
  %125 = icmp ne i32 %124, 0, !dbg !868
  br i1 %125, label %127, label %126, !dbg !870

; <label>:126:                                    ; preds = %123
  store i64 -1, i64* @skip_fields, align 8, !dbg !871
  br label %127, !dbg !872

; <label>:127:                                    ; preds = %126, %123
  store i32 1, i32* %8, align 4, !dbg !873
  br label %158, !dbg !874

; <label>:128:                                    ; preds = %65
  store i32 0, i32* @countmode, align 4, !dbg !875
  br label %158, !dbg !876

; <label>:129:                                    ; preds = %65
  store i8 0, i8* @output_unique, align 1, !dbg !877
  br label %158, !dbg !878

; <label>:130:                                    ; preds = %65
  store i8 0, i8* @output_unique, align 1, !dbg !879
  store i8 1, i8* @output_later_repeated, align 1, !dbg !880
  %131 = load i8*, i8** @optarg, align 8, !dbg !881
  %132 = icmp eq i8* %131, null, !dbg !883
  br i1 %132, label %133, label %134, !dbg !884

; <label>:133:                                    ; preds = %130
  store i32 0, i32* @delimit_groups, align 4, !dbg !885
  br label %140, !dbg !886

; <label>:134:                                    ; preds = %130
  %135 = load i8*, i8** @optarg, align 8, !dbg !887
  %136 = load void ()*, void ()** @argmatch_die, align 8, !dbg !887
  %137 = call i64 @__xargmatch_internal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* %135, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @delimit_method_string, i32 0, i32 0), i8* bitcast ([3 x i32]* @delimit_method_map to i8*), i64 4, void ()* %136), !dbg !887
  %138 = getelementptr inbounds [3 x i32], [3 x i32]* @delimit_method_map, i64 0, i64 %137, !dbg !887
  %139 = load i32, i32* %138, align 4, !dbg !887
  store i32 %139, i32* @delimit_groups, align 4, !dbg !888
  br label %140

; <label>:140:                                    ; preds = %134, %133
  br label %158, !dbg !889

; <label>:141:                                    ; preds = %65
  store i32 2, i32* %8, align 4, !dbg !890
  %142 = load i8*, i8** @optarg, align 8, !dbg !891
  %143 = call i64 @size_opt(i8* %142, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i32 0, i32 0)), !dbg !892
  store i64 %143, i64* @skip_fields, align 8, !dbg !893
  br label %158, !dbg !894

; <label>:144:                                    ; preds = %65
  store i8 1, i8* @ignore_case, align 1, !dbg !895
  br label %158, !dbg !896

; <label>:145:                                    ; preds = %65
  %146 = load i8*, i8** @optarg, align 8, !dbg !897
  %147 = call i64 @size_opt(i8* %146, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0)), !dbg !898
  store i64 %147, i64* @skip_chars, align 8, !dbg !899
  br label %158, !dbg !900

; <label>:148:                                    ; preds = %65
  store i8 0, i8* @output_first_repeated, align 1, !dbg !901
  br label %158, !dbg !902

; <label>:149:                                    ; preds = %65
  %150 = load i8*, i8** @optarg, align 8, !dbg !903
  %151 = call i64 @size_opt(i8* %150, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i32 0, i32 0)), !dbg !904
  store i64 %151, i64* @check_chars, align 8, !dbg !905
  br label %158, !dbg !906

; <label>:152:                                    ; preds = %65
  store i8 0, i8* %11, align 1, !dbg !907
  br label %158, !dbg !908

; <label>:153:                                    ; preds = %65
  call void @usage(i32 0) #15, !dbg !909
  unreachable, !dbg !909

; <label>:154:                                    ; preds = %65
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !910
  %156 = load i8*, i8** @Version, align 8, !dbg !910
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i8* %156, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0), i8* null), !dbg !910
  call void @exit(i32 0) #13, !dbg !910
  unreachable, !dbg !910

; <label>:157:                                    ; preds = %65
  call void @usage(i32 1) #15, !dbg !911
  unreachable, !dbg !911

; <label>:158:                                    ; preds = %152, %149, %148, %145, %144, %141, %140, %129, %128, %127, %98
  br label %159

; <label>:159:                                    ; preds = %158, %54
  br label %25, !dbg !784, !llvm.loop !912

; <label>:160:                                    ; preds = %43
  call void @klee_dump_memory(), !dbg !914
  %161 = load i32, i32* @countmode, align 4, !dbg !915
  %162 = icmp eq i32 %161, 0, !dbg !917
  br i1 %162, label %163, label %167, !dbg !918

; <label>:163:                                    ; preds = %160
  %164 = load i8, i8* @output_later_repeated, align 1, !dbg !919
  %165 = trunc i8 %164 to i1, !dbg !919
  br i1 %165, label %166, label %167, !dbg !920

; <label>:166:                                    ; preds = %163
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.23, i32 0, i32 0)), !dbg !921
  call void @usage(i32 1) #15, !dbg !923
  unreachable, !dbg !923

; <label>:167:                                    ; preds = %163, %160
  %168 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0, !dbg !924
  %169 = load i8*, i8** %168, align 16, !dbg !924
  %170 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 1, !dbg !925
  %171 = load i8*, i8** %170, align 8, !dbg !925
  %172 = load i8, i8* %11, align 1, !dbg !926
  call void @check_file(i8* %169, i8* %171, i8 signext %172), !dbg !927
  call void @exit(i32 0) #13, !dbg !928
  unreachable, !dbg !928
                                                  ; No predecessors!
  %174 = load i32, i32* %3, align 4, !dbg !929
  ret i32 %174, !dbg !929
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #5

; Function Attrs: nounwind
declare i32 @atexit(void ()*) #5

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #5

declare void @error(i32, i32, i8*, ...) #3

; Function Attrs: noinline nounwind uwtable
define internal i64 @size_opt(i8*, i8*) #2 !dbg !930 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !933, metadata !DIExpression()), !dbg !934
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !935, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.declare(metadata i64* %5, metadata !937, metadata !DIExpression()), !dbg !938
  %6 = load i8*, i8** %3, align 8, !dbg !939
  %7 = call i32 @xstrtoul(i8* %6, i8** null, i32 10, i64* %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0)), !dbg !940
  switch i32 %7, label %9 [
    i32 0, label %8
    i32 1, label %8
  ], !dbg !941

; <label>:8:                                      ; preds = %2, %2
  br label %12, !dbg !942

; <label>:9:                                      ; preds = %2
  %10 = load i8*, i8** %3, align 8, !dbg !944
  %11 = load i8*, i8** %4, align 8, !dbg !945
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i8* %10, i8* %11), !dbg !946
  br label %12, !dbg !947

; <label>:12:                                     ; preds = %9, %8
  %13 = load i64, i64* %5, align 8, !dbg !948
  %14 = icmp ult i64 %13, -1, !dbg !948
  br i1 %14, label %15, label %17, !dbg !948

; <label>:15:                                     ; preds = %12
  %16 = load i64, i64* %5, align 8, !dbg !948
  br label %18, !dbg !948

; <label>:17:                                     ; preds = %12
  br label %18, !dbg !948

; <label>:18:                                     ; preds = %17, %15
  %19 = phi i64 [ %16, %15 ], [ -1, %17 ], !dbg !948
  ret i64 %19, !dbg !949
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_file(i8*, i8*, i8 signext) #2 !dbg !950 {
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
  call void @llvm.dbg.declare(metadata i8** %4, metadata !953, metadata !DIExpression()), !dbg !954
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !955, metadata !DIExpression()), !dbg !956
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !957, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.declare(metadata %struct.linebuffer* %7, metadata !959, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.declare(metadata %struct.linebuffer* %8, metadata !967, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %9, metadata !969, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %10, metadata !972, metadata !DIExpression()), !dbg !973
  %24 = load i8*, i8** %4, align 8, !dbg !974
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #14, !dbg !974
  %26 = icmp eq i32 %25, 0, !dbg !974
  br i1 %26, label %36, label %27, !dbg !976

; <label>:27:                                     ; preds = %3
  %28 = load i8*, i8** %4, align 8, !dbg !977
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !978
  %30 = call %struct._IO_FILE* @freopen_safer(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0), %struct._IO_FILE* %29), !dbg !979
  %31 = icmp ne %struct._IO_FILE* %30, null, !dbg !979
  br i1 %31, label %36, label %32, !dbg !980

; <label>:32:                                     ; preds = %27
  %33 = call i32* @__errno_location() #16, !dbg !981
  %34 = load i32, i32* %33, align 4, !dbg !981
  %35 = load i8*, i8** %4, align 8, !dbg !982
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0), i8* %35), !dbg !983
  br label %36, !dbg !983

; <label>:36:                                     ; preds = %32, %27, %3
  %37 = load i8*, i8** %5, align 8, !dbg !984
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #14, !dbg !984
  %39 = icmp eq i32 %38, 0, !dbg !984
  br i1 %39, label %49, label %40, !dbg !986

; <label>:40:                                     ; preds = %36
  %41 = load i8*, i8** %5, align 8, !dbg !987
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !988
  %43 = call %struct._IO_FILE* @freopen_safer(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0), %struct._IO_FILE* %42), !dbg !989
  %44 = icmp ne %struct._IO_FILE* %43, null, !dbg !989
  br i1 %44, label %49, label %45, !dbg !990

; <label>:45:                                     ; preds = %40
  %46 = call i32* @__errno_location() #16, !dbg !991
  %47 = load i32, i32* %46, align 4, !dbg !991
  %48 = load i8*, i8** %5, align 8, !dbg !992
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0), i8* %48), !dbg !993
  br label %49, !dbg !993

; <label>:49:                                     ; preds = %45, %40, %36
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !994
  call void @fadvise(%struct._IO_FILE* %50, i32 2), !dbg !995
  store %struct.linebuffer* %7, %struct.linebuffer** %9, align 8, !dbg !996
  store %struct.linebuffer* %8, %struct.linebuffer** %10, align 8, !dbg !997
  %51 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !998
  call void @initbuffer(%struct.linebuffer* %51), !dbg !999
  %52 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !1000
  call void @initbuffer(%struct.linebuffer* %52), !dbg !1001
  %53 = load i8, i8* @output_unique, align 1, !dbg !1002
  %54 = trunc i8 %53 to i1, !dbg !1002
  br i1 %54, label %55, label %117, !dbg !1004

; <label>:55:                                     ; preds = %49
  %56 = load i8, i8* @output_first_repeated, align 1, !dbg !1005
  %57 = trunc i8 %56 to i1, !dbg !1005
  br i1 %57, label %58, label %117, !dbg !1006

; <label>:58:                                     ; preds = %55
  %59 = load i32, i32* @countmode, align 4, !dbg !1007
  %60 = icmp eq i32 %59, 1, !dbg !1008
  br i1 %60, label %61, label %117, !dbg !1009

; <label>:61:                                     ; preds = %58
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1010, metadata !DIExpression()), !dbg !1012
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1013, metadata !DIExpression()), !dbg !1014
  br label %62, !dbg !1015

; <label>:62:                                     ; preds = %115, %61
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1016
  %64 = call i32 @feof_unlocked(%struct._IO_FILE* %63) #11, !dbg !1016
  %65 = icmp ne i32 %64, 0, !dbg !1017
  %66 = xor i1 %65, true, !dbg !1017
  br i1 %66, label %67, label %116, !dbg !1015

; <label>:67:                                     ; preds = %62
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1018, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1021, metadata !DIExpression()), !dbg !1022
  %68 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1023
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1025
  %70 = load i8, i8* %6, align 1, !dbg !1026
  %71 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %68, %struct._IO_FILE* %69, i8 signext %70), !dbg !1027
  %72 = icmp eq %struct.linebuffer* %71, null, !dbg !1028
  br i1 %72, label %73, label %74, !dbg !1029

; <label>:73:                                     ; preds = %67
  br label %116, !dbg !1030

; <label>:74:                                     ; preds = %67
  %75 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1031
  %76 = call i8* @find_field(%struct.linebuffer* %75) #14, !dbg !1032
  store i8* %76, i8** %13, align 8, !dbg !1033
  %77 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1034
  %78 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %77, i32 0, i32 1, !dbg !1035
  %79 = load i64, i64* %78, align 8, !dbg !1035
  %80 = sub i64 %79, 1, !dbg !1036
  %81 = load i8*, i8** %13, align 8, !dbg !1037
  %82 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1038
  %83 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %82, i32 0, i32 2, !dbg !1039
  %84 = load i8*, i8** %83, align 8, !dbg !1039
  %85 = ptrtoint i8* %81 to i64, !dbg !1040
  %86 = ptrtoint i8* %84 to i64, !dbg !1040
  %87 = sub i64 %85, %86, !dbg !1040
  %88 = sub i64 %80, %87, !dbg !1041
  store i64 %88, i64* %14, align 8, !dbg !1042
  %89 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !1043
  %90 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %89, i32 0, i32 1, !dbg !1045
  %91 = load i64, i64* %90, align 8, !dbg !1045
  %92 = icmp eq i64 %91, 0, !dbg !1046
  br i1 %92, label %99, label %93, !dbg !1047

; <label>:93:                                     ; preds = %74
  %94 = load i8*, i8** %13, align 8, !dbg !1048
  %95 = load i8*, i8** %11, align 8, !dbg !1049
  %96 = load i64, i64* %14, align 8, !dbg !1050
  %97 = load i64, i64* %12, align 8, !dbg !1051
  %98 = call zeroext i1 @different(i8* %94, i8* %95, i64 %96, i64 %97), !dbg !1052
  br i1 %98, label %99, label %115, !dbg !1053

; <label>:99:                                     ; preds = %93, %74
  %100 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1054
  %101 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %100, i32 0, i32 2, !dbg !1054
  %102 = load i8*, i8** %101, align 8, !dbg !1054
  %103 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1054
  %104 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %103, i32 0, i32 1, !dbg !1054
  %105 = load i64, i64* %104, align 8, !dbg !1054
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1054
  %107 = call i64 @fwrite_unlocked(i8* %102, i64 1, i64 %105, %struct._IO_FILE* %106), !dbg !1054
  br label %108, !dbg !1056, !llvm.loop !1057

; <label>:108:                                    ; preds = %99
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %15, metadata !1058, metadata !DIExpression()), !dbg !1060
  %109 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !1060
  store %struct.linebuffer* %109, %struct.linebuffer** %15, align 8, !dbg !1060
  %110 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1060
  store %struct.linebuffer* %110, %struct.linebuffer** %10, align 8, !dbg !1060
  %111 = load %struct.linebuffer*, %struct.linebuffer** %15, align 8, !dbg !1060
  store %struct.linebuffer* %111, %struct.linebuffer** %9, align 8, !dbg !1060
  br label %112, !dbg !1060

; <label>:112:                                    ; preds = %108
  %113 = load i8*, i8** %13, align 8, !dbg !1061
  store i8* %113, i8** %11, align 8, !dbg !1062
  %114 = load i64, i64* %14, align 8, !dbg !1063
  store i64 %114, i64* %12, align 8, !dbg !1064
  br label %115, !dbg !1065

; <label>:115:                                    ; preds = %112, %93
  br label %62, !dbg !1015, !llvm.loop !1066

; <label>:116:                                    ; preds = %73, %62
  br label %244, !dbg !1068

; <label>:117:                                    ; preds = %58, %55, %49
  call void @llvm.dbg.declare(metadata i8** %16, metadata !1069, metadata !DIExpression()), !dbg !1071
  call void @llvm.dbg.declare(metadata i64* %17, metadata !1072, metadata !DIExpression()), !dbg !1073
  call void @llvm.dbg.declare(metadata i64* %18, metadata !1074, metadata !DIExpression()), !dbg !1079
  store i64 0, i64* %18, align 8, !dbg !1079
  call void @llvm.dbg.declare(metadata i8* %19, metadata !1080, metadata !DIExpression()), !dbg !1081
  store i8 1, i8* %19, align 1, !dbg !1081
  %118 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !1082
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1084
  %120 = load i8, i8* %6, align 1, !dbg !1085
  %121 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %118, %struct._IO_FILE* %119, i8 signext %120), !dbg !1086
  %122 = icmp eq %struct.linebuffer* %121, null, !dbg !1087
  br i1 %122, label %123, label %124, !dbg !1088

; <label>:123:                                    ; preds = %117
  br label %245, !dbg !1089

; <label>:124:                                    ; preds = %117
  %125 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !1090
  %126 = call i8* @find_field(%struct.linebuffer* %125) #14, !dbg !1091
  store i8* %126, i8** %16, align 8, !dbg !1092
  %127 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !1093
  %128 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %127, i32 0, i32 1, !dbg !1094
  %129 = load i64, i64* %128, align 8, !dbg !1094
  %130 = sub i64 %129, 1, !dbg !1095
  %131 = load i8*, i8** %16, align 8, !dbg !1096
  %132 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !1097
  %133 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %132, i32 0, i32 2, !dbg !1098
  %134 = load i8*, i8** %133, align 8, !dbg !1098
  %135 = ptrtoint i8* %131 to i64, !dbg !1099
  %136 = ptrtoint i8* %134 to i64, !dbg !1099
  %137 = sub i64 %135, %136, !dbg !1099
  %138 = sub i64 %130, %137, !dbg !1100
  store i64 %138, i64* %17, align 8, !dbg !1101
  br label %139, !dbg !1102

; <label>:139:                                    ; preds = %240, %124
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1103
  %141 = call i32 @feof_unlocked(%struct._IO_FILE* %140) #11, !dbg !1103
  %142 = icmp ne i32 %141, 0, !dbg !1104
  %143 = xor i1 %142, true, !dbg !1104
  br i1 %143, label %144, label %241, !dbg !1102

; <label>:144:                                    ; preds = %139
  call void @llvm.dbg.declare(metadata i8* %20, metadata !1105, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.declare(metadata i8** %21, metadata !1108, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.declare(metadata i64* %22, metadata !1110, metadata !DIExpression()), !dbg !1111
  %145 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1112
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1114
  %147 = load i8, i8* %6, align 1, !dbg !1115
  %148 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %145, %struct._IO_FILE* %146, i8 signext %147), !dbg !1116
  %149 = icmp eq %struct.linebuffer* %148, null, !dbg !1117
  br i1 %149, label %150, label %156, !dbg !1118

; <label>:150:                                    ; preds = %144
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1119
  %152 = call i32 @ferror_unlocked(%struct._IO_FILE* %151) #11, !dbg !1119
  %153 = icmp ne i32 %152, 0, !dbg !1119
  br i1 %153, label %154, label %155, !dbg !1122

; <label>:154:                                    ; preds = %150
  br label %245, !dbg !1123

; <label>:155:                                    ; preds = %150
  br label %241, !dbg !1124

; <label>:156:                                    ; preds = %144
  %157 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1125
  %158 = call i8* @find_field(%struct.linebuffer* %157) #14, !dbg !1126
  store i8* %158, i8** %21, align 8, !dbg !1127
  %159 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1128
  %160 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %159, i32 0, i32 1, !dbg !1129
  %161 = load i64, i64* %160, align 8, !dbg !1129
  %162 = sub i64 %161, 1, !dbg !1130
  %163 = load i8*, i8** %21, align 8, !dbg !1131
  %164 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1132
  %165 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %164, i32 0, i32 2, !dbg !1133
  %166 = load i8*, i8** %165, align 8, !dbg !1133
  %167 = ptrtoint i8* %163 to i64, !dbg !1134
  %168 = ptrtoint i8* %166 to i64, !dbg !1134
  %169 = sub i64 %167, %168, !dbg !1134
  %170 = sub i64 %162, %169, !dbg !1135
  store i64 %170, i64* %22, align 8, !dbg !1136
  %171 = load i8*, i8** %21, align 8, !dbg !1137
  %172 = load i8*, i8** %16, align 8, !dbg !1138
  %173 = load i64, i64* %22, align 8, !dbg !1139
  %174 = load i64, i64* %17, align 8, !dbg !1140
  %175 = call zeroext i1 @different(i8* %171, i8* %172, i64 %173, i64 %174), !dbg !1141
  %176 = xor i1 %175, true, !dbg !1142
  %177 = zext i1 %176 to i8, !dbg !1143
  store i8 %177, i8* %20, align 1, !dbg !1143
  %178 = load i8, i8* %20, align 1, !dbg !1144
  %179 = trunc i8 %178 to i1, !dbg !1144
  %180 = zext i1 %179 to i64, !dbg !1144
  %181 = load i64, i64* %18, align 8, !dbg !1145
  %182 = add i64 %181, %180, !dbg !1145
  store i64 %182, i64* %18, align 8, !dbg !1145
  %183 = load i64, i64* %18, align 8, !dbg !1146
  %184 = icmp eq i64 %183, -1, !dbg !1148
  br i1 %184, label %185, label %188, !dbg !1149

; <label>:185:                                    ; preds = %156
  %186 = load i64, i64* %18, align 8, !dbg !1150
  %187 = add i64 %186, -1, !dbg !1150
  store i64 %187, i64* %18, align 8, !dbg !1150
  br label %188, !dbg !1152

; <label>:188:                                    ; preds = %185, %156
  %189 = load i32, i32* @delimit_groups, align 4, !dbg !1153
  %190 = icmp ne i32 %189, 0, !dbg !1155
  br i1 %190, label %191, label %218, !dbg !1156

; <label>:191:                                    ; preds = %188
  %192 = load i8, i8* %20, align 1, !dbg !1157
  %193 = trunc i8 %192 to i1, !dbg !1157
  br i1 %193, label %199, label %194, !dbg !1160

; <label>:194:                                    ; preds = %191
  %195 = load i64, i64* %18, align 8, !dbg !1161
  %196 = icmp ne i64 %195, 0, !dbg !1161
  br i1 %196, label %197, label %198, !dbg !1164

; <label>:197:                                    ; preds = %194
  store i8 0, i8* %19, align 1, !dbg !1165
  br label %198, !dbg !1166

; <label>:198:                                    ; preds = %197, %194
  br label %217, !dbg !1167

; <label>:199:                                    ; preds = %191
  %200 = load i64, i64* %18, align 8, !dbg !1168
  %201 = icmp eq i64 %200, 1, !dbg !1170
  br i1 %201, label %202, label %216, !dbg !1171

; <label>:202:                                    ; preds = %199
  %203 = load i32, i32* @delimit_groups, align 4, !dbg !1172
  %204 = icmp eq i32 %203, 1, !dbg !1175
  br i1 %204, label %211, label %205, !dbg !1176

; <label>:205:                                    ; preds = %202
  %206 = load i32, i32* @delimit_groups, align 4, !dbg !1177
  %207 = icmp eq i32 %206, 2, !dbg !1178
  br i1 %207, label %208, label %215, !dbg !1179

; <label>:208:                                    ; preds = %205
  %209 = load i8, i8* %19, align 1, !dbg !1180
  %210 = trunc i8 %209 to i1, !dbg !1180
  br i1 %210, label %215, label %211, !dbg !1181

; <label>:211:                                    ; preds = %208, %202
  %212 = load i8, i8* %6, align 1, !dbg !1182
  %213 = sext i8 %212 to i32, !dbg !1182
  %214 = call i32 @putchar_unlocked(i32 %213), !dbg !1182
  br label %215, !dbg !1182

; <label>:215:                                    ; preds = %211, %208, %205
  br label %216, !dbg !1183

; <label>:216:                                    ; preds = %215, %199
  br label %217

; <label>:217:                                    ; preds = %216, %198
  br label %218, !dbg !1184

; <label>:218:                                    ; preds = %217, %188
  %219 = load i8, i8* %20, align 1, !dbg !1185
  %220 = trunc i8 %219 to i1, !dbg !1185
  br i1 %220, label %221, label %224, !dbg !1187

; <label>:221:                                    ; preds = %218
  %222 = load i8, i8* @output_later_repeated, align 1, !dbg !1188
  %223 = trunc i8 %222 to i1, !dbg !1188
  br i1 %223, label %224, label %240, !dbg !1189

; <label>:224:                                    ; preds = %221, %218
  %225 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !1190
  %226 = load i8, i8* %20, align 1, !dbg !1192
  %227 = trunc i8 %226 to i1, !dbg !1192
  %228 = load i64, i64* %18, align 8, !dbg !1193
  call void @writeline(%struct.linebuffer* %225, i1 zeroext %227, i64 %228), !dbg !1194
  br label %229, !dbg !1195, !llvm.loop !1196

; <label>:229:                                    ; preds = %224
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %23, metadata !1197, metadata !DIExpression()), !dbg !1199
  %230 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !1199
  store %struct.linebuffer* %230, %struct.linebuffer** %23, align 8, !dbg !1199
  %231 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1199
  store %struct.linebuffer* %231, %struct.linebuffer** %10, align 8, !dbg !1199
  %232 = load %struct.linebuffer*, %struct.linebuffer** %23, align 8, !dbg !1199
  store %struct.linebuffer* %232, %struct.linebuffer** %9, align 8, !dbg !1199
  br label %233, !dbg !1199

; <label>:233:                                    ; preds = %229
  %234 = load i8*, i8** %21, align 8, !dbg !1200
  store i8* %234, i8** %16, align 8, !dbg !1201
  %235 = load i64, i64* %22, align 8, !dbg !1202
  store i64 %235, i64* %17, align 8, !dbg !1203
  %236 = load i8, i8* %20, align 1, !dbg !1204
  %237 = trunc i8 %236 to i1, !dbg !1204
  br i1 %237, label %239, label %238, !dbg !1206

; <label>:238:                                    ; preds = %233
  store i64 0, i64* %18, align 8, !dbg !1207
  br label %239, !dbg !1208

; <label>:239:                                    ; preds = %238, %233
  br label %240, !dbg !1209

; <label>:240:                                    ; preds = %239, %221
  br label %139, !dbg !1102, !llvm.loop !1210

; <label>:241:                                    ; preds = %155, %139
  %242 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !1212
  %243 = load i64, i64* %18, align 8, !dbg !1213
  call void @writeline(%struct.linebuffer* %242, i1 zeroext false, i64 %243), !dbg !1214
  br label %244

; <label>:244:                                    ; preds = %241, %116
  br label %245, !dbg !1215

; <label>:245:                                    ; preds = %244, %154, %123
  %246 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1216
  %247 = call i32 @ferror_unlocked(%struct._IO_FILE* %246) #11, !dbg !1216
  %248 = icmp ne i32 %247, 0, !dbg !1216
  br i1 %248, label %253, label %249, !dbg !1218

; <label>:249:                                    ; preds = %245
  %250 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1219
  %251 = call i32 @rpl_fclose(%struct._IO_FILE* %250), !dbg !1220
  %252 = icmp ne i32 %251, 0, !dbg !1221
  br i1 %252, label %253, label %255, !dbg !1222

; <label>:253:                                    ; preds = %249, %245
  %254 = load i8*, i8** %4, align 8, !dbg !1223
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.51, i32 0, i32 0), i8* %254), !dbg !1224
  br label %255, !dbg !1224

; <label>:255:                                    ; preds = %253, %249
  %256 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %7, i32 0, i32 2, !dbg !1225
  %257 = load i8*, i8** %256, align 8, !dbg !1225
  call void @free(i8* %257) #11, !dbg !1226
  %258 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %8, i32 0, i32 2, !dbg !1227
  %259 = load i8*, i8** %258, align 8, !dbg !1227
  call void @free(i8* %259) #11, !dbg !1228
  ret void, !dbg !1229
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #6

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

; Function Attrs: nounwind
declare i32 @feof_unlocked(%struct._IO_FILE*) #5

; Function Attrs: noinline nounwind readonly uwtable
define internal i8* @find_field(%struct.linebuffer*) #8 !dbg !1230 {
  %2 = alloca %struct.linebuffer*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.linebuffer* %0, %struct.linebuffer** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %2, metadata !1235, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1237, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1239, metadata !DIExpression()), !dbg !1240
  %7 = load %struct.linebuffer*, %struct.linebuffer** %2, align 8, !dbg !1241
  %8 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %7, i32 0, i32 2, !dbg !1242
  %9 = load i8*, i8** %8, align 8, !dbg !1242
  store i8* %9, i8** %4, align 8, !dbg !1240
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1243, metadata !DIExpression()), !dbg !1244
  %10 = load %struct.linebuffer*, %struct.linebuffer** %2, align 8, !dbg !1245
  %11 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %10, i32 0, i32 1, !dbg !1246
  %12 = load i64, i64* %11, align 8, !dbg !1246
  %13 = sub i64 %12, 1, !dbg !1247
  store i64 %13, i64* %5, align 8, !dbg !1244
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1248, metadata !DIExpression()), !dbg !1249
  store i64 0, i64* %6, align 8, !dbg !1249
  store i64 0, i64* %3, align 8, !dbg !1250
  br label %14, !dbg !1252

; <label>:14:                                     ; preds = %76, %1
  %15 = load i64, i64* %3, align 8, !dbg !1253
  %16 = load i64, i64* @skip_fields, align 8, !dbg !1255
  %17 = icmp ult i64 %15, %16, !dbg !1256
  br i1 %17, label %18, label %22, !dbg !1257

; <label>:18:                                     ; preds = %14
  %19 = load i64, i64* %6, align 8, !dbg !1258
  %20 = load i64, i64* %5, align 8, !dbg !1259
  %21 = icmp ult i64 %19, %20, !dbg !1260
  br label %22

; <label>:22:                                     ; preds = %18, %14
  %23 = phi i1 [ false, %14 ], [ %21, %18 ]
  br i1 %23, label %24, label %79, !dbg !1261

; <label>:24:                                     ; preds = %22
  br label %25, !dbg !1262

; <label>:25:                                     ; preds = %46, %24
  %26 = load i64, i64* %6, align 8, !dbg !1264
  %27 = load i64, i64* %5, align 8, !dbg !1265
  %28 = icmp ult i64 %26, %27, !dbg !1266
  br i1 %28, label %29, label %44, !dbg !1267

; <label>:29:                                     ; preds = %25
  %30 = call i16** @__ctype_b_loc() #16, !dbg !1268
  %31 = load i16*, i16** %30, align 8, !dbg !1268
  %32 = load i8*, i8** %4, align 8, !dbg !1268
  %33 = load i64, i64* %6, align 8, !dbg !1268
  %34 = getelementptr inbounds i8, i8* %32, i64 %33, !dbg !1268
  %35 = load i8, i8* %34, align 1, !dbg !1268
  %36 = call zeroext i8 @to_uchar(i8 signext %35), !dbg !1268
  %37 = zext i8 %36 to i32, !dbg !1268
  %38 = sext i32 %37 to i64, !dbg !1268
  %39 = getelementptr inbounds i16, i16* %31, i64 %38, !dbg !1268
  %40 = load i16, i16* %39, align 2, !dbg !1268
  %41 = zext i16 %40 to i32, !dbg !1268
  %42 = and i32 %41, 1, !dbg !1268
  %43 = icmp ne i32 %42, 0, !dbg !1267
  br label %44

; <label>:44:                                     ; preds = %29, %25
  %45 = phi i1 [ false, %25 ], [ %43, %29 ]
  br i1 %45, label %46, label %49, !dbg !1262

; <label>:46:                                     ; preds = %44
  %47 = load i64, i64* %6, align 8, !dbg !1269
  %48 = add i64 %47, 1, !dbg !1269
  store i64 %48, i64* %6, align 8, !dbg !1269
  br label %25, !dbg !1262, !llvm.loop !1270

; <label>:49:                                     ; preds = %44
  br label %50, !dbg !1271

; <label>:50:                                     ; preds = %72, %49
  %51 = load i64, i64* %6, align 8, !dbg !1272
  %52 = load i64, i64* %5, align 8, !dbg !1273
  %53 = icmp ult i64 %51, %52, !dbg !1274
  br i1 %53, label %54, label %70, !dbg !1275

; <label>:54:                                     ; preds = %50
  %55 = call i16** @__ctype_b_loc() #16, !dbg !1276
  %56 = load i16*, i16** %55, align 8, !dbg !1276
  %57 = load i8*, i8** %4, align 8, !dbg !1276
  %58 = load i64, i64* %6, align 8, !dbg !1276
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !1276
  %60 = load i8, i8* %59, align 1, !dbg !1276
  %61 = call zeroext i8 @to_uchar(i8 signext %60), !dbg !1276
  %62 = zext i8 %61 to i32, !dbg !1276
  %63 = sext i32 %62 to i64, !dbg !1276
  %64 = getelementptr inbounds i16, i16* %56, i64 %63, !dbg !1276
  %65 = load i16, i16* %64, align 2, !dbg !1276
  %66 = zext i16 %65 to i32, !dbg !1276
  %67 = and i32 %66, 1, !dbg !1276
  %68 = icmp ne i32 %67, 0, !dbg !1277
  %69 = xor i1 %68, true, !dbg !1277
  br label %70

; <label>:70:                                     ; preds = %54, %50
  %71 = phi i1 [ false, %50 ], [ %69, %54 ]
  br i1 %71, label %72, label %75, !dbg !1271

; <label>:72:                                     ; preds = %70
  %73 = load i64, i64* %6, align 8, !dbg !1278
  %74 = add i64 %73, 1, !dbg !1278
  store i64 %74, i64* %6, align 8, !dbg !1278
  br label %50, !dbg !1271, !llvm.loop !1279

; <label>:75:                                     ; preds = %70
  br label %76, !dbg !1280

; <label>:76:                                     ; preds = %75
  %77 = load i64, i64* %3, align 8, !dbg !1281
  %78 = add i64 %77, 1, !dbg !1281
  store i64 %78, i64* %3, align 8, !dbg !1281
  br label %14, !dbg !1282, !llvm.loop !1283

; <label>:79:                                     ; preds = %22
  %80 = load i64, i64* @skip_chars, align 8, !dbg !1285
  %81 = load i64, i64* %5, align 8, !dbg !1285
  %82 = load i64, i64* %6, align 8, !dbg !1285
  %83 = sub i64 %81, %82, !dbg !1285
  %84 = icmp ult i64 %80, %83, !dbg !1285
  br i1 %84, label %85, label %87, !dbg !1285

; <label>:85:                                     ; preds = %79
  %86 = load i64, i64* @skip_chars, align 8, !dbg !1285
  br label %91, !dbg !1285

; <label>:87:                                     ; preds = %79
  %88 = load i64, i64* %5, align 8, !dbg !1285
  %89 = load i64, i64* %6, align 8, !dbg !1285
  %90 = sub i64 %88, %89, !dbg !1285
  br label %91, !dbg !1285

; <label>:91:                                     ; preds = %87, %85
  %92 = phi i64 [ %86, %85 ], [ %90, %87 ], !dbg !1285
  %93 = load i64, i64* %6, align 8, !dbg !1286
  %94 = add i64 %93, %92, !dbg !1286
  store i64 %94, i64* %6, align 8, !dbg !1286
  %95 = load %struct.linebuffer*, %struct.linebuffer** %2, align 8, !dbg !1287
  %96 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %95, i32 0, i32 2, !dbg !1288
  %97 = load i8*, i8** %96, align 8, !dbg !1288
  %98 = load i64, i64* %6, align 8, !dbg !1289
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !1290
  ret i8* %99, !dbg !1291
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @different(i8*, i8*, i64, i64) #2 !dbg !1292 {
  %5 = alloca i1, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1295, metadata !DIExpression()), !dbg !1296
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1297, metadata !DIExpression()), !dbg !1298
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1299, metadata !DIExpression()), !dbg !1300
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1301, metadata !DIExpression()), !dbg !1302
  %10 = load i64, i64* @check_chars, align 8, !dbg !1303
  %11 = load i64, i64* %8, align 8, !dbg !1305
  %12 = icmp ult i64 %10, %11, !dbg !1306
  br i1 %12, label %13, label %15, !dbg !1307

; <label>:13:                                     ; preds = %4
  %14 = load i64, i64* @check_chars, align 8, !dbg !1308
  store i64 %14, i64* %8, align 8, !dbg !1309
  br label %15, !dbg !1310

; <label>:15:                                     ; preds = %13, %4
  %16 = load i64, i64* @check_chars, align 8, !dbg !1311
  %17 = load i64, i64* %9, align 8, !dbg !1313
  %18 = icmp ult i64 %16, %17, !dbg !1314
  br i1 %18, label %19, label %21, !dbg !1315

; <label>:19:                                     ; preds = %15
  %20 = load i64, i64* @check_chars, align 8, !dbg !1316
  store i64 %20, i64* %9, align 8, !dbg !1317
  br label %21, !dbg !1318

; <label>:21:                                     ; preds = %19, %15
  %22 = load i8, i8* @ignore_case, align 1, !dbg !1319
  %23 = trunc i8 %22 to i1, !dbg !1319
  br i1 %23, label %24, label %36, !dbg !1321

; <label>:24:                                     ; preds = %21
  %25 = load i64, i64* %8, align 8, !dbg !1322
  %26 = load i64, i64* %9, align 8, !dbg !1324
  %27 = icmp ne i64 %25, %26, !dbg !1325
  br i1 %27, label %34, label %28, !dbg !1326

; <label>:28:                                     ; preds = %24
  %29 = load i8*, i8** %6, align 8, !dbg !1327
  %30 = load i8*, i8** %7, align 8, !dbg !1328
  %31 = load i64, i64* %8, align 8, !dbg !1329
  %32 = call i32 @memcasecmp(i8* %29, i8* %30, i64 %31) #14, !dbg !1330
  %33 = icmp ne i32 %32, 0, !dbg !1326
  br label %34, !dbg !1326

; <label>:34:                                     ; preds = %28, %24
  %35 = phi i1 [ true, %24 ], [ %33, %28 ]
  store i1 %35, i1* %5, align 1, !dbg !1331
  br label %58, !dbg !1331

; <label>:36:                                     ; preds = %21
  %37 = load i8, i8* @hard_LC_COLLATE, align 1, !dbg !1332
  %38 = trunc i8 %37 to i1, !dbg !1332
  br i1 %38, label %39, label %46, !dbg !1334

; <label>:39:                                     ; preds = %36
  %40 = load i8*, i8** %6, align 8, !dbg !1335
  %41 = load i64, i64* %8, align 8, !dbg !1336
  %42 = load i8*, i8** %7, align 8, !dbg !1337
  %43 = load i64, i64* %9, align 8, !dbg !1338
  %44 = call i32 @xmemcoll(i8* %40, i64 %41, i8* %42, i64 %43), !dbg !1339
  %45 = icmp ne i32 %44, 0, !dbg !1340
  store i1 %45, i1* %5, align 1, !dbg !1341
  br label %58, !dbg !1341

; <label>:46:                                     ; preds = %36
  %47 = load i64, i64* %8, align 8, !dbg !1342
  %48 = load i64, i64* %9, align 8, !dbg !1343
  %49 = icmp ne i64 %47, %48, !dbg !1344
  br i1 %49, label %56, label %50, !dbg !1345

; <label>:50:                                     ; preds = %46
  %51 = load i8*, i8** %6, align 8, !dbg !1346
  %52 = load i8*, i8** %7, align 8, !dbg !1347
  %53 = load i64, i64* %8, align 8, !dbg !1348
  %54 = call i32 @memcmp(i8* %51, i8* %52, i64 %53) #14, !dbg !1349
  %55 = icmp ne i32 %54, 0, !dbg !1345
  br label %56, !dbg !1345

; <label>:56:                                     ; preds = %50, %46
  %57 = phi i1 [ true, %46 ], [ %55, %50 ]
  store i1 %57, i1* %5, align 1, !dbg !1350
  br label %58, !dbg !1350

; <label>:58:                                     ; preds = %56, %39, %34
  %59 = load i1, i1* %5, align 1, !dbg !1351
  ret i1 %59, !dbg !1351
}

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE*) #5

declare i32 @putchar_unlocked(i32) #3

; Function Attrs: noinline nounwind uwtable
define internal void @writeline(%struct.linebuffer*, i1 zeroext, i64) #2 !dbg !1352 {
  %4 = alloca %struct.linebuffer*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  store %struct.linebuffer* %0, %struct.linebuffer** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %4, metadata !1355, metadata !DIExpression()), !dbg !1356
  %7 = zext i1 %1 to i8
  store i8 %7, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1357, metadata !DIExpression()), !dbg !1358
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1359, metadata !DIExpression()), !dbg !1360
  %8 = load i64, i64* %6, align 8, !dbg !1361
  %9 = icmp eq i64 %8, 0, !dbg !1363
  br i1 %9, label %10, label %13, !dbg !1364

; <label>:10:                                     ; preds = %3
  %11 = load i8, i8* @output_unique, align 1, !dbg !1365
  %12 = trunc i8 %11 to i1, !dbg !1365
  br i1 %12, label %23, label %22, !dbg !1361

; <label>:13:                                     ; preds = %3
  %14 = load i8, i8* %5, align 1, !dbg !1366
  %15 = trunc i8 %14 to i1, !dbg !1366
  br i1 %15, label %19, label %16, !dbg !1364

; <label>:16:                                     ; preds = %13
  %17 = load i8, i8* @output_first_repeated, align 1, !dbg !1367
  %18 = trunc i8 %17 to i1, !dbg !1367
  br i1 %18, label %23, label %22, !dbg !1368

; <label>:19:                                     ; preds = %13
  %20 = load i8, i8* @output_later_repeated, align 1, !dbg !1369
  %21 = trunc i8 %20 to i1, !dbg !1369
  br i1 %21, label %23, label %22, !dbg !1364

; <label>:22:                                     ; preds = %19, %16, %10
  br label %39, !dbg !1370

; <label>:23:                                     ; preds = %19, %16, %10
  %24 = load i32, i32* @countmode, align 4, !dbg !1371
  %25 = icmp eq i32 %24, 0, !dbg !1373
  br i1 %25, label %26, label %30, !dbg !1374

; <label>:26:                                     ; preds = %23
  %27 = load i64, i64* %6, align 8, !dbg !1375
  %28 = add i64 %27, 1, !dbg !1376
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i64 %28), !dbg !1377
  br label %30, !dbg !1377

; <label>:30:                                     ; preds = %26, %23
  %31 = load %struct.linebuffer*, %struct.linebuffer** %4, align 8, !dbg !1378
  %32 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %31, i32 0, i32 2, !dbg !1378
  %33 = load i8*, i8** %32, align 8, !dbg !1378
  %34 = load %struct.linebuffer*, %struct.linebuffer** %4, align 8, !dbg !1378
  %35 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %34, i32 0, i32 1, !dbg !1378
  %36 = load i64, i64* %35, align 8, !dbg !1378
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1378
  %38 = call i64 @fwrite_unlocked(i8* %33, i64 1, i64 %36, %struct._IO_FILE* %37), !dbg !1378
  br label %39, !dbg !1379

; <label>:39:                                     ; preds = %30, %22
  ret void, !dbg !1379
}

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #6

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #7

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @to_uchar(i8 signext) #2 !dbg !1380 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !1383, metadata !DIExpression()), !dbg !1384
  %3 = load i8, i8* %2, align 1, !dbg !1385
  ret i8 %3, !dbg !1386
}

; Function Attrs: noinline nounwind uwtable
define internal void @__argmatch_die() #2 !dbg !1387 {
  call void @usage(i32 1), !dbg !1388
  ret void, !dbg !1389
}

; Function Attrs: noinline nounwind readonly uwtable
define i64 @argmatch(i8*, i8**, i8*, i64) #8 !dbg !1390 {
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
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1396, metadata !DIExpression()), !dbg !1397
  store i8** %1, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1398, metadata !DIExpression()), !dbg !1399
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1400, metadata !DIExpression()), !dbg !1401
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1402, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1404, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1406, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1408, metadata !DIExpression()), !dbg !1409
  store i64 -1, i64* %12, align 8, !dbg !1409
  call void @llvm.dbg.declare(metadata i8* %13, metadata !1410, metadata !DIExpression()), !dbg !1411
  store i8 0, i8* %13, align 1, !dbg !1411
  %14 = load i8*, i8** %6, align 8, !dbg !1412
  %15 = call i64 @strlen(i8* %14) #14, !dbg !1413
  store i64 %15, i64* %11, align 8, !dbg !1414
  store i64 0, i64* %10, align 8, !dbg !1415
  br label %16, !dbg !1417

; <label>:16:                                     ; preds = %68, %4
  %17 = load i8**, i8*** %7, align 8, !dbg !1418
  %18 = load i64, i64* %10, align 8, !dbg !1420
  %19 = getelementptr inbounds i8*, i8** %17, i64 %18, !dbg !1418
  %20 = load i8*, i8** %19, align 8, !dbg !1418
  %21 = icmp ne i8* %20, null, !dbg !1421
  br i1 %21, label %22, label %71, !dbg !1421

; <label>:22:                                     ; preds = %16
  %23 = load i8**, i8*** %7, align 8, !dbg !1422
  %24 = load i64, i64* %10, align 8, !dbg !1425
  %25 = getelementptr inbounds i8*, i8** %23, i64 %24, !dbg !1422
  %26 = load i8*, i8** %25, align 8, !dbg !1422
  %27 = load i8*, i8** %6, align 8, !dbg !1426
  %28 = load i64, i64* %11, align 8, !dbg !1427
  %29 = call i32 @strncmp(i8* %26, i8* %27, i64 %28) #14, !dbg !1428
  %30 = icmp ne i32 %29, 0, !dbg !1428
  br i1 %30, label %67, label %31, !dbg !1429

; <label>:31:                                     ; preds = %22
  %32 = load i8**, i8*** %7, align 8, !dbg !1430
  %33 = load i64, i64* %10, align 8, !dbg !1433
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33, !dbg !1430
  %35 = load i8*, i8** %34, align 8, !dbg !1430
  %36 = call i64 @strlen(i8* %35) #14, !dbg !1434
  %37 = load i64, i64* %11, align 8, !dbg !1435
  %38 = icmp eq i64 %36, %37, !dbg !1436
  br i1 %38, label %39, label %41, !dbg !1437

; <label>:39:                                     ; preds = %31
  %40 = load i64, i64* %10, align 8, !dbg !1438
  store i64 %40, i64* %5, align 8, !dbg !1439
  br label %77, !dbg !1439

; <label>:41:                                     ; preds = %31
  %42 = load i64, i64* %12, align 8, !dbg !1440
  %43 = icmp eq i64 %42, -1, !dbg !1442
  br i1 %43, label %44, label %46, !dbg !1443

; <label>:44:                                     ; preds = %41
  %45 = load i64, i64* %10, align 8, !dbg !1444
  store i64 %45, i64* %12, align 8, !dbg !1445
  br label %65, !dbg !1446

; <label>:46:                                     ; preds = %41
  %47 = load i8*, i8** %8, align 8, !dbg !1447
  %48 = icmp eq i8* %47, null, !dbg !1450
  br i1 %48, label %63, label %49, !dbg !1451

; <label>:49:                                     ; preds = %46
  %50 = load i8*, i8** %8, align 8, !dbg !1452
  %51 = load i64, i64* %9, align 8, !dbg !1453
  %52 = load i64, i64* %12, align 8, !dbg !1454
  %53 = mul i64 %51, %52, !dbg !1455
  %54 = getelementptr inbounds i8, i8* %50, i64 %53, !dbg !1456
  %55 = load i8*, i8** %8, align 8, !dbg !1457
  %56 = load i64, i64* %9, align 8, !dbg !1458
  %57 = load i64, i64* %10, align 8, !dbg !1459
  %58 = mul i64 %56, %57, !dbg !1460
  %59 = getelementptr inbounds i8, i8* %55, i64 %58, !dbg !1461
  %60 = load i64, i64* %9, align 8, !dbg !1462
  %61 = call i32 @memcmp(i8* %54, i8* %59, i64 %60) #14, !dbg !1463
  %62 = icmp ne i32 %61, 0, !dbg !1463
  br i1 %62, label %63, label %64, !dbg !1464

; <label>:63:                                     ; preds = %49, %46
  store i8 1, i8* %13, align 1, !dbg !1465
  br label %64, !dbg !1467

; <label>:64:                                     ; preds = %63, %49
  br label %65

; <label>:65:                                     ; preds = %64, %44
  br label %66

; <label>:66:                                     ; preds = %65
  br label %67, !dbg !1468

; <label>:67:                                     ; preds = %66, %22
  br label %68, !dbg !1469

; <label>:68:                                     ; preds = %67
  %69 = load i64, i64* %10, align 8, !dbg !1470
  %70 = add i64 %69, 1, !dbg !1470
  store i64 %70, i64* %10, align 8, !dbg !1470
  br label %16, !dbg !1471, !llvm.loop !1472

; <label>:71:                                     ; preds = %16
  %72 = load i8, i8* %13, align 1, !dbg !1474
  %73 = trunc i8 %72 to i1, !dbg !1474
  br i1 %73, label %74, label %75, !dbg !1476

; <label>:74:                                     ; preds = %71
  store i64 -2, i64* %5, align 8, !dbg !1477
  br label %77, !dbg !1477

; <label>:75:                                     ; preds = %71
  %76 = load i64, i64* %12, align 8, !dbg !1478
  store i64 %76, i64* %5, align 8, !dbg !1479
  br label %77, !dbg !1479

; <label>:77:                                     ; preds = %75, %74, %39
  %78 = load i64, i64* %5, align 8, !dbg !1480
  ret i64 %78, !dbg !1480
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

; Function Attrs: noinline nounwind uwtable
define void @argmatch_invalid(i8*, i8*, i64) #2 !dbg !1481 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1484, metadata !DIExpression()), !dbg !1485
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1486, metadata !DIExpression()), !dbg !1487
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1488, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1490, metadata !DIExpression()), !dbg !1491
  %8 = load i64, i64* %6, align 8, !dbg !1492
  %9 = icmp eq i64 %8, -1, !dbg !1493
  %10 = zext i1 %9 to i64, !dbg !1492
  %11 = select i1 %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.57, i32 0, i32 0), !dbg !1492
  store i8* %11, i8** %7, align 8, !dbg !1491
  %12 = load i8*, i8** %7, align 8, !dbg !1494
  %13 = load i8*, i8** %5, align 8, !dbg !1495
  %14 = call i8* @quotearg_n_style(i32 0, i32 6, i8* %13), !dbg !1496
  %15 = load i8*, i8** %4, align 8, !dbg !1497
  %16 = call i8* @quote_n(i32 1, i8* %15), !dbg !1498
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %12, i8* %14, i8* %16), !dbg !1499
  ret void, !dbg !1500
}

; Function Attrs: noinline nounwind uwtable
define void @argmatch_valid(i8**, i8*, i64) #2 !dbg !1501 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !1504, metadata !DIExpression()), !dbg !1505
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1506, metadata !DIExpression()), !dbg !1507
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1508, metadata !DIExpression()), !dbg !1509
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1510, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1512, metadata !DIExpression()), !dbg !1513
  store i8* null, i8** %8, align 8, !dbg !1513
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1514
  %10 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.58, i32 0, i32 0), %struct._IO_FILE* %9), !dbg !1514
  store i64 0, i64* %7, align 8, !dbg !1515
  br label %11, !dbg !1517

; <label>:11:                                     ; preds = %52, %3
  %12 = load i8**, i8*** %4, align 8, !dbg !1518
  %13 = load i64, i64* %7, align 8, !dbg !1520
  %14 = getelementptr inbounds i8*, i8** %12, i64 %13, !dbg !1518
  %15 = load i8*, i8** %14, align 8, !dbg !1518
  %16 = icmp ne i8* %15, null, !dbg !1521
  br i1 %16, label %17, label %55, !dbg !1521

; <label>:17:                                     ; preds = %11
  %18 = load i64, i64* %7, align 8, !dbg !1522
  %19 = icmp eq i64 %18, 0, !dbg !1524
  br i1 %19, label %30, label %20, !dbg !1525

; <label>:20:                                     ; preds = %17
  %21 = load i8*, i8** %8, align 8, !dbg !1526
  %22 = load i8*, i8** %5, align 8, !dbg !1527
  %23 = load i64, i64* %6, align 8, !dbg !1528
  %24 = load i64, i64* %7, align 8, !dbg !1529
  %25 = mul i64 %23, %24, !dbg !1530
  %26 = getelementptr inbounds i8, i8* %22, i64 %25, !dbg !1531
  %27 = load i64, i64* %6, align 8, !dbg !1532
  %28 = call i32 @memcmp(i8* %21, i8* %26, i64 %27) #14, !dbg !1533
  %29 = icmp ne i32 %28, 0, !dbg !1533
  br i1 %29, label %30, label %43, !dbg !1534

; <label>:30:                                     ; preds = %20, %17
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1535
  %32 = load i8**, i8*** %4, align 8, !dbg !1537
  %33 = load i64, i64* %7, align 8, !dbg !1538
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33, !dbg !1537
  %35 = load i8*, i8** %34, align 8, !dbg !1537
  %36 = call i8* @quote(i8* %35), !dbg !1539
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.59, i32 0, i32 0), i8* %36), !dbg !1540
  %38 = load i8*, i8** %5, align 8, !dbg !1541
  %39 = load i64, i64* %6, align 8, !dbg !1542
  %40 = load i64, i64* %7, align 8, !dbg !1543
  %41 = mul i64 %39, %40, !dbg !1544
  %42 = getelementptr inbounds i8, i8* %38, i64 %41, !dbg !1545
  store i8* %42, i8** %8, align 8, !dbg !1546
  br label %51, !dbg !1547

; <label>:43:                                     ; preds = %20
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1548
  %45 = load i8**, i8*** %4, align 8, !dbg !1550
  %46 = load i64, i64* %7, align 8, !dbg !1551
  %47 = getelementptr inbounds i8*, i8** %45, i64 %46, !dbg !1550
  %48 = load i8*, i8** %47, align 8, !dbg !1550
  %49 = call i8* @quote(i8* %48), !dbg !1552
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.60, i32 0, i32 0), i8* %49), !dbg !1553
  br label %51

; <label>:51:                                     ; preds = %43, %30
  br label %52, !dbg !1554

; <label>:52:                                     ; preds = %51
  %53 = load i64, i64* %7, align 8, !dbg !1555
  %54 = add i64 %53, 1, !dbg !1555
  store i64 %54, i64* %7, align 8, !dbg !1555
  br label %11, !dbg !1556, !llvm.loop !1557

; <label>:55:                                     ; preds = %11
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1559
  %57 = call i32 @putc_unlocked(i32 10, %struct._IO_FILE* %56), !dbg !1559
  ret void, !dbg !1560
}

declare i32 @putc_unlocked(i32, %struct._IO_FILE*) #3

; Function Attrs: noinline nounwind uwtable
define i64 @__xargmatch_internal(i8*, i8*, i8**, i8*, i64, void ()*) #2 !dbg !1561 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca void ()*, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1564, metadata !DIExpression()), !dbg !1565
  store i8* %1, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1566, metadata !DIExpression()), !dbg !1567
  store i8** %2, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !1568, metadata !DIExpression()), !dbg !1569
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1570, metadata !DIExpression()), !dbg !1571
  store i64 %4, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1572, metadata !DIExpression()), !dbg !1573
  store void ()* %5, void ()** %13, align 8
  call void @llvm.dbg.declare(metadata void ()** %13, metadata !1574, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1576, metadata !DIExpression()), !dbg !1577
  %15 = load i8*, i8** %9, align 8, !dbg !1578
  %16 = load i8**, i8*** %10, align 8, !dbg !1579
  %17 = load i8*, i8** %11, align 8, !dbg !1580
  %18 = load i64, i64* %12, align 8, !dbg !1581
  %19 = call i64 @argmatch(i8* %15, i8** %16, i8* %17, i64 %18) #14, !dbg !1582
  store i64 %19, i64* %14, align 8, !dbg !1577
  %20 = load i64, i64* %14, align 8, !dbg !1583
  %21 = icmp sge i64 %20, 0, !dbg !1585
  br i1 %21, label %22, label %24, !dbg !1586

; <label>:22:                                     ; preds = %6
  %23 = load i64, i64* %14, align 8, !dbg !1587
  store i64 %23, i64* %7, align 8, !dbg !1588
  br label %32, !dbg !1588

; <label>:24:                                     ; preds = %6
  %25 = load i8*, i8** %8, align 8, !dbg !1589
  %26 = load i8*, i8** %9, align 8, !dbg !1590
  %27 = load i64, i64* %14, align 8, !dbg !1591
  call void @argmatch_invalid(i8* %25, i8* %26, i64 %27), !dbg !1592
  %28 = load i8**, i8*** %10, align 8, !dbg !1593
  %29 = load i8*, i8** %11, align 8, !dbg !1594
  %30 = load i64, i64* %12, align 8, !dbg !1595
  call void @argmatch_valid(i8** %28, i8* %29, i64 %30), !dbg !1596
  %31 = load void ()*, void ()** %13, align 8, !dbg !1597
  call void %31(), !dbg !1598
  store i64 -1, i64* %7, align 8, !dbg !1599
  br label %32, !dbg !1599

; <label>:32:                                     ; preds = %24, %22
  %33 = load i64, i64* %7, align 8, !dbg !1600
  ret i64 %33, !dbg !1600
}

; Function Attrs: noinline nounwind readonly uwtable
define i8* @argmatch_to_argument(i8*, i8**, i8*, i64) #8 !dbg !1601 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1604, metadata !DIExpression()), !dbg !1605
  store i8** %1, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1606, metadata !DIExpression()), !dbg !1607
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1608, metadata !DIExpression()), !dbg !1609
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1610, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1612, metadata !DIExpression()), !dbg !1613
  store i64 0, i64* %10, align 8, !dbg !1614
  br label %11, !dbg !1616

; <label>:11:                                     ; preds = %33, %4
  %12 = load i8**, i8*** %7, align 8, !dbg !1617
  %13 = load i64, i64* %10, align 8, !dbg !1619
  %14 = getelementptr inbounds i8*, i8** %12, i64 %13, !dbg !1617
  %15 = load i8*, i8** %14, align 8, !dbg !1617
  %16 = icmp ne i8* %15, null, !dbg !1620
  br i1 %16, label %17, label %36, !dbg !1620

; <label>:17:                                     ; preds = %11
  %18 = load i8*, i8** %6, align 8, !dbg !1621
  %19 = load i8*, i8** %8, align 8, !dbg !1623
  %20 = load i64, i64* %9, align 8, !dbg !1624
  %21 = load i64, i64* %10, align 8, !dbg !1625
  %22 = mul i64 %20, %21, !dbg !1626
  %23 = getelementptr inbounds i8, i8* %19, i64 %22, !dbg !1627
  %24 = load i64, i64* %9, align 8, !dbg !1628
  %25 = call i32 @memcmp(i8* %18, i8* %23, i64 %24) #14, !dbg !1629
  %26 = icmp ne i32 %25, 0, !dbg !1629
  br i1 %26, label %32, label %27, !dbg !1630

; <label>:27:                                     ; preds = %17
  %28 = load i8**, i8*** %7, align 8, !dbg !1631
  %29 = load i64, i64* %10, align 8, !dbg !1632
  %30 = getelementptr inbounds i8*, i8** %28, i64 %29, !dbg !1631
  %31 = load i8*, i8** %30, align 8, !dbg !1631
  store i8* %31, i8** %5, align 8, !dbg !1633
  br label %37, !dbg !1633

; <label>:32:                                     ; preds = %17
  br label %33, !dbg !1634

; <label>:33:                                     ; preds = %32
  %34 = load i64, i64* %10, align 8, !dbg !1635
  %35 = add i64 %34, 1, !dbg !1635
  store i64 %35, i64* %10, align 8, !dbg !1635
  br label %11, !dbg !1636, !llvm.loop !1637

; <label>:36:                                     ; preds = %11
  store i8* null, i8** %5, align 8, !dbg !1639
  br label %37, !dbg !1639

; <label>:37:                                     ; preds = %36, %27
  %38 = load i8*, i8** %5, align 8, !dbg !1640
  ret i8* %38, !dbg !1640
}

; Function Attrs: noinline nounwind uwtable
define void @close_stdout_set_file_name(i8*) #2 !dbg !1641 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1644, metadata !DIExpression()), !dbg !1645
  %3 = load i8*, i8** %2, align 8, !dbg !1646
  store i8* %3, i8** @file_name, align 8, !dbg !1647
  ret void, !dbg !1648
}

; Function Attrs: noinline nounwind uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) #2 !dbg !1649 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !1652, metadata !DIExpression()), !dbg !1653
  %4 = load i8, i8* %2, align 1, !dbg !1654
  %5 = trunc i8 %4 to i1, !dbg !1654
  %6 = zext i1 %5 to i8, !dbg !1655
  store i8 %6, i8* @ignore_EPIPE, align 1, !dbg !1655
  ret void, !dbg !1656
}

; Function Attrs: noinline nounwind uwtable
define void @close_stdout() #2 !dbg !1657 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1658
  %3 = call i32 @close_stream(%struct._IO_FILE* %2), !dbg !1660
  %4 = icmp ne i32 %3, 0, !dbg !1661
  br i1 %4, label %5, label %27, !dbg !1662

; <label>:5:                                      ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1663
  %7 = trunc i8 %6 to i1, !dbg !1663
  br i1 %7, label %8, label %12, !dbg !1664

; <label>:8:                                      ; preds = %5
  %9 = call i32* @__errno_location() #16, !dbg !1665
  %10 = load i32, i32* %9, align 4, !dbg !1665
  %11 = icmp eq i32 %10, 32, !dbg !1666
  br i1 %11, label %27, label %12, !dbg !1667

; <label>:12:                                     ; preds = %8, %5
  call void @llvm.dbg.declare(metadata i8** %1, metadata !1668, metadata !DIExpression()), !dbg !1670
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i32 0, i32 0), i8** %1, align 8, !dbg !1670
  %13 = load i8*, i8** @file_name, align 8, !dbg !1671
  %14 = icmp ne i8* %13, null, !dbg !1671
  br i1 %14, label %15, label %21, !dbg !1673

; <label>:15:                                     ; preds = %12
  %16 = call i32* @__errno_location() #16, !dbg !1674
  %17 = load i32, i32* %16, align 4, !dbg !1674
  %18 = load i8*, i8** @file_name, align 8, !dbg !1675
  %19 = call i8* @quotearg_colon(i8* %18), !dbg !1676
  %20 = load i8*, i8** %1, align 8, !dbg !1677
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.66, i32 0, i32 0), i8* %19, i8* %20), !dbg !1678
  br label %25, !dbg !1678

; <label>:21:                                     ; preds = %12
  %22 = call i32* @__errno_location() #16, !dbg !1679
  %23 = load i32, i32* %22, align 4, !dbg !1679
  %24 = load i8*, i8** %1, align 8, !dbg !1680
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.67, i32 0, i32 0), i8* %24), !dbg !1681
  br label %25

; <label>:25:                                     ; preds = %21, %15
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1682
  call void @_exit(i32 %26) #15, !dbg !1683
  unreachable, !dbg !1683

; <label>:27:                                     ; preds = %8, %0
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1684
  %29 = call i32 @close_stream(%struct._IO_FILE* %28), !dbg !1686
  %30 = icmp ne i32 %29, 0, !dbg !1687
  br i1 %30, label %31, label %33, !dbg !1688

; <label>:31:                                     ; preds = %27
  %32 = load volatile i32, i32* @exit_failure, align 4, !dbg !1689
  call void @_exit(i32 %32) #15, !dbg !1690
  unreachable, !dbg !1690

; <label>:33:                                     ; preds = %27
  ret void, !dbg !1691
}

; Function Attrs: noreturn
declare void @_exit(i32) #9

; Function Attrs: noinline nounwind readonly uwtable
define i8* @last_component(i8*) #8 !dbg !1692 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1695, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1697, metadata !DIExpression()), !dbg !1698
  %6 = load i8*, i8** %2, align 8, !dbg !1699
  %7 = getelementptr inbounds i8, i8* %6, i64 0, !dbg !1700
  store i8* %7, i8** %3, align 8, !dbg !1698
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1701, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1703, metadata !DIExpression()), !dbg !1704
  store i8 0, i8* %5, align 1, !dbg !1704
  br label %8, !dbg !1705

; <label>:8:                                      ; preds = %13, %1
  %9 = load i8*, i8** %3, align 8, !dbg !1706
  %10 = load i8, i8* %9, align 1, !dbg !1706
  %11 = sext i8 %10 to i32, !dbg !1706
  %12 = icmp eq i32 %11, 47, !dbg !1706
  br i1 %12, label %13, label %16, !dbg !1705

; <label>:13:                                     ; preds = %8
  %14 = load i8*, i8** %3, align 8, !dbg !1707
  %15 = getelementptr inbounds i8, i8* %14, i32 1, !dbg !1707
  store i8* %15, i8** %3, align 8, !dbg !1707
  br label %8, !dbg !1705, !llvm.loop !1708

; <label>:16:                                     ; preds = %8
  %17 = load i8*, i8** %3, align 8, !dbg !1709
  store i8* %17, i8** %4, align 8, !dbg !1711
  br label %18, !dbg !1712

; <label>:18:                                     ; preds = %35, %16
  %19 = load i8*, i8** %4, align 8, !dbg !1713
  %20 = load i8, i8* %19, align 1, !dbg !1715
  %21 = icmp ne i8 %20, 0, !dbg !1716
  br i1 %21, label %22, label %38, !dbg !1716

; <label>:22:                                     ; preds = %18
  %23 = load i8*, i8** %4, align 8, !dbg !1717
  %24 = load i8, i8* %23, align 1, !dbg !1717
  %25 = sext i8 %24 to i32, !dbg !1717
  %26 = icmp eq i32 %25, 47, !dbg !1717
  br i1 %26, label %27, label %28, !dbg !1720

; <label>:27:                                     ; preds = %22
  store i8 1, i8* %5, align 1, !dbg !1721
  br label %34, !dbg !1722

; <label>:28:                                     ; preds = %22
  %29 = load i8, i8* %5, align 1, !dbg !1723
  %30 = trunc i8 %29 to i1, !dbg !1723
  br i1 %30, label %31, label %33, !dbg !1725

; <label>:31:                                     ; preds = %28
  %32 = load i8*, i8** %4, align 8, !dbg !1726
  store i8* %32, i8** %3, align 8, !dbg !1728
  store i8 0, i8* %5, align 1, !dbg !1729
  br label %33, !dbg !1730

; <label>:33:                                     ; preds = %31, %28
  br label %34

; <label>:34:                                     ; preds = %33, %27
  br label %35, !dbg !1731

; <label>:35:                                     ; preds = %34
  %36 = load i8*, i8** %4, align 8, !dbg !1732
  %37 = getelementptr inbounds i8, i8* %36, i32 1, !dbg !1732
  store i8* %37, i8** %4, align 8, !dbg !1732
  br label %18, !dbg !1733, !llvm.loop !1734

; <label>:38:                                     ; preds = %18
  %39 = load i8*, i8** %3, align 8, !dbg !1736
  ret i8* %39, !dbg !1737
}

; Function Attrs: noinline nounwind readonly uwtable
define i64 @base_len(i8*) #8 !dbg !1738 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1741, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1743, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1745, metadata !DIExpression()), !dbg !1746
  store i64 0, i64* %4, align 8, !dbg !1746
  %5 = load i8*, i8** %2, align 8, !dbg !1747
  %6 = call i64 @strlen(i8* %5) #14, !dbg !1749
  store i64 %6, i64* %3, align 8, !dbg !1750
  br label %7, !dbg !1751

; <label>:7:                                      ; preds = %21, %1
  %8 = load i64, i64* %3, align 8, !dbg !1752
  %9 = icmp ult i64 1, %8, !dbg !1754
  br i1 %9, label %10, label %18, !dbg !1755

; <label>:10:                                     ; preds = %7
  %11 = load i8*, i8** %2, align 8, !dbg !1756
  %12 = load i64, i64* %3, align 8, !dbg !1756
  %13 = sub i64 %12, 1, !dbg !1756
  %14 = getelementptr inbounds i8, i8* %11, i64 %13, !dbg !1756
  %15 = load i8, i8* %14, align 1, !dbg !1756
  %16 = sext i8 %15 to i32, !dbg !1756
  %17 = icmp eq i32 %16, 47, !dbg !1756
  br label %18

; <label>:18:                                     ; preds = %10, %7
  %19 = phi i1 [ false, %7 ], [ %17, %10 ]
  br i1 %19, label %20, label %24, !dbg !1757

; <label>:20:                                     ; preds = %18
  br label %21, !dbg !1758

; <label>:21:                                     ; preds = %20
  %22 = load i64, i64* %3, align 8, !dbg !1759
  %23 = add i64 %22, -1, !dbg !1759
  store i64 %23, i64* %3, align 8, !dbg !1759
  br label %7, !dbg !1760, !llvm.loop !1761

; <label>:24:                                     ; preds = %18
  %25 = load i64, i64* %3, align 8, !dbg !1763
  ret i64 %25, !dbg !1764
}

; Function Attrs: noinline nounwind uwtable
define void @fdadvise(i32, i64, i64, i32) #2 !dbg !1765 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1773, metadata !DIExpression()), !dbg !1774
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1775, metadata !DIExpression()), !dbg !1776
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1777, metadata !DIExpression()), !dbg !1778
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1779, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1781, metadata !DIExpression()), !dbg !1783
  %10 = load i32, i32* %5, align 4, !dbg !1783
  %11 = load i64, i64* %6, align 8, !dbg !1783
  %12 = load i64, i64* %7, align 8, !dbg !1783
  %13 = load i32, i32* %8, align 4, !dbg !1783
  %14 = call i32 @posix_fadvise(i32 %10, i64 %11, i64 %12, i32 %13) #11, !dbg !1783
  store i32 %14, i32* %9, align 4, !dbg !1783
  %15 = load i32, i32* %9, align 4, !dbg !1783
  ret void, !dbg !1784
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) #5

; Function Attrs: noinline nounwind uwtable
define void @fadvise(%struct._IO_FILE*, i32) #2 !dbg !1785 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !1840, metadata !DIExpression()), !dbg !1841
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1842, metadata !DIExpression()), !dbg !1843
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1844
  %6 = icmp ne %struct._IO_FILE* %5, null, !dbg !1844
  br i1 %6, label %7, label %11, !dbg !1846

; <label>:7:                                      ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1847
  %9 = call i32 @fileno(%struct._IO_FILE* %8) #11, !dbg !1848
  %10 = load i32, i32* %4, align 4, !dbg !1849
  call void @fdadvise(i32 %9, i64 0, i64 0, i32 %10), !dbg !1850
  br label %11, !dbg !1850

; <label>:11:                                     ; preds = %7, %2
  ret void, !dbg !1851
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #5

; Function Attrs: noinline nounwind uwtable
define %struct._IO_FILE* @freopen_safer(i8*, i8*, %struct._IO_FILE*) #2 !dbg !1852 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1895, metadata !DIExpression()), !dbg !1896
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1897, metadata !DIExpression()), !dbg !1898
  store %struct._IO_FILE* %2, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !1899, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1901, metadata !DIExpression()), !dbg !1902
  store i8 0, i8* %7, align 1, !dbg !1902
  call void @llvm.dbg.declare(metadata i8* %8, metadata !1903, metadata !DIExpression()), !dbg !1904
  store i8 0, i8* %8, align 1, !dbg !1904
  call void @llvm.dbg.declare(metadata i8* %9, metadata !1905, metadata !DIExpression()), !dbg !1906
  store i8 0, i8* %9, align 1, !dbg !1906
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1907, metadata !DIExpression()), !dbg !1908
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !1909
  %12 = call i32 @fileno(%struct._IO_FILE* %11) #11, !dbg !1910
  switch i32 %12, label %13 [
    i32 2, label %18
    i32 1, label %23
    i32 0, label %28
  ], !dbg !1911

; <label>:13:                                     ; preds = %3
  %14 = call i32 @dup2(i32 2, i32 2) #11, !dbg !1912
  %15 = icmp ne i32 %14, 2, !dbg !1915
  br i1 %15, label %16, label %17, !dbg !1916

; <label>:16:                                     ; preds = %13
  store i8 1, i8* %9, align 1, !dbg !1917
  br label %17, !dbg !1918

; <label>:17:                                     ; preds = %16, %13
  br label %18, !dbg !1919

; <label>:18:                                     ; preds = %3, %17
  %19 = call i32 @dup2(i32 1, i32 1) #11, !dbg !1920
  %20 = icmp ne i32 %19, 1, !dbg !1922
  br i1 %20, label %21, label %22, !dbg !1923

; <label>:21:                                     ; preds = %18
  store i8 1, i8* %8, align 1, !dbg !1924
  br label %22, !dbg !1925

; <label>:22:                                     ; preds = %21, %18
  br label %23, !dbg !1926

; <label>:23:                                     ; preds = %3, %22
  %24 = call i32 @dup2(i32 0, i32 0) #11, !dbg !1927
  %25 = icmp ne i32 %24, 0, !dbg !1929
  br i1 %25, label %26, label %27, !dbg !1930

; <label>:26:                                     ; preds = %23
  store i8 1, i8* %7, align 1, !dbg !1931
  br label %27, !dbg !1932

; <label>:27:                                     ; preds = %26, %23
  br label %28, !dbg !1933

; <label>:28:                                     ; preds = %3, %27
  br label %29, !dbg !1934

; <label>:29:                                     ; preds = %28
  %30 = load i8, i8* %7, align 1, !dbg !1935
  %31 = trunc i8 %30 to i1, !dbg !1935
  br i1 %31, label %32, label %35, !dbg !1937

; <label>:32:                                     ; preds = %29
  %33 = call zeroext i1 @protect_fd(i32 0), !dbg !1938
  br i1 %33, label %35, label %34, !dbg !1939

; <label>:34:                                     ; preds = %32
  store %struct._IO_FILE* null, %struct._IO_FILE** %6, align 8, !dbg !1940
  br label %54, !dbg !1941

; <label>:35:                                     ; preds = %32, %29
  %36 = load i8, i8* %8, align 1, !dbg !1942
  %37 = trunc i8 %36 to i1, !dbg !1942
  br i1 %37, label %38, label %41, !dbg !1944

; <label>:38:                                     ; preds = %35
  %39 = call zeroext i1 @protect_fd(i32 1), !dbg !1945
  br i1 %39, label %41, label %40, !dbg !1946

; <label>:40:                                     ; preds = %38
  store %struct._IO_FILE* null, %struct._IO_FILE** %6, align 8, !dbg !1947
  br label %53, !dbg !1948

; <label>:41:                                     ; preds = %38, %35
  %42 = load i8, i8* %9, align 1, !dbg !1949
  %43 = trunc i8 %42 to i1, !dbg !1949
  br i1 %43, label %44, label %47, !dbg !1951

; <label>:44:                                     ; preds = %41
  %45 = call zeroext i1 @protect_fd(i32 2), !dbg !1952
  br i1 %45, label %47, label %46, !dbg !1953

; <label>:46:                                     ; preds = %44
  store %struct._IO_FILE* null, %struct._IO_FILE** %6, align 8, !dbg !1954
  br label %52, !dbg !1955

; <label>:47:                                     ; preds = %44, %41
  %48 = load i8*, i8** %4, align 8, !dbg !1956
  %49 = load i8*, i8** %5, align 8, !dbg !1957
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !1958
  %51 = call %struct._IO_FILE* @freopen(i8* %48, i8* %49, %struct._IO_FILE* %50), !dbg !1959
  store %struct._IO_FILE* %51, %struct._IO_FILE** %6, align 8, !dbg !1960
  br label %52

; <label>:52:                                     ; preds = %47, %46
  br label %53

; <label>:53:                                     ; preds = %52, %40
  br label %54

; <label>:54:                                     ; preds = %53, %34
  %55 = call i32* @__errno_location() #16, !dbg !1961
  %56 = load i32, i32* %55, align 4, !dbg !1961
  store i32 %56, i32* %10, align 4, !dbg !1962
  %57 = load i8, i8* %9, align 1, !dbg !1963
  %58 = trunc i8 %57 to i1, !dbg !1963
  br i1 %58, label %59, label %61, !dbg !1965

; <label>:59:                                     ; preds = %54
  %60 = call i32 @close(i32 2), !dbg !1966
  br label %61, !dbg !1966

; <label>:61:                                     ; preds = %59, %54
  %62 = load i8, i8* %8, align 1, !dbg !1967
  %63 = trunc i8 %62 to i1, !dbg !1967
  br i1 %63, label %64, label %66, !dbg !1969

; <label>:64:                                     ; preds = %61
  %65 = call i32 @close(i32 1), !dbg !1970
  br label %66, !dbg !1970

; <label>:66:                                     ; preds = %64, %61
  %67 = load i8, i8* %7, align 1, !dbg !1971
  %68 = trunc i8 %67 to i1, !dbg !1971
  br i1 %68, label %69, label %71, !dbg !1973

; <label>:69:                                     ; preds = %66
  %70 = call i32 @close(i32 0), !dbg !1974
  br label %71, !dbg !1974

; <label>:71:                                     ; preds = %69, %66
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !1975
  %73 = icmp ne %struct._IO_FILE* %72, null, !dbg !1975
  br i1 %73, label %77, label %74, !dbg !1977

; <label>:74:                                     ; preds = %71
  %75 = load i32, i32* %10, align 4, !dbg !1978
  %76 = call i32* @__errno_location() #16, !dbg !1979
  store i32 %75, i32* %76, align 4, !dbg !1980
  br label %77, !dbg !1979

; <label>:77:                                     ; preds = %74, %71
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !1981
  ret %struct._IO_FILE* %78, !dbg !1982
}

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) #5

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @protect_fd(i32) #2 !dbg !1983 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1986, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1988, metadata !DIExpression()), !dbg !1989
  %5 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), i32 0), !dbg !1990
  store i32 %5, i32* %4, align 4, !dbg !1989
  %6 = load i32, i32* %4, align 4, !dbg !1991
  %7 = load i32, i32* %3, align 4, !dbg !1993
  %8 = icmp ne i32 %6, %7, !dbg !1994
  br i1 %8, label %9, label %17, !dbg !1995

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* %4, align 4, !dbg !1996
  %11 = icmp sle i32 0, %10, !dbg !1999
  br i1 %11, label %12, label %16, !dbg !2000

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %4, align 4, !dbg !2001
  %14 = call i32 @close(i32 %13), !dbg !2003
  %15 = call i32* @__errno_location() #16, !dbg !2004
  store i32 9, i32* %15, align 4, !dbg !2005
  br label %16, !dbg !2006

; <label>:16:                                     ; preds = %12, %9
  store i1 false, i1* %2, align 1, !dbg !2007
  br label %18, !dbg !2007

; <label>:17:                                     ; preds = %1
  store i1 true, i1* %2, align 1, !dbg !2008
  br label %18, !dbg !2008

; <label>:18:                                     ; preds = %17, %16
  %19 = load i1, i1* %2, align 1, !dbg !2009
  ret i1 %19, !dbg !2009
}

declare %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) #3

declare i32 @close(i32) #3

declare i32 @open(i8*, i32, ...) #3

; Function Attrs: noinline nounwind uwtable
define zeroext i1 @hard_locale(i32) #2 !dbg !2010 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2011, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.declare(metadata i8* %3, metadata !2013, metadata !DIExpression()), !dbg !2014
  store i8 1, i8* %3, align 1, !dbg !2014
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2015, metadata !DIExpression()), !dbg !2016
  %5 = load i32, i32* %2, align 4, !dbg !2017
  %6 = call i8* @setlocale(i32 %5, i8* null) #11, !dbg !2018
  store i8* %6, i8** %4, align 8, !dbg !2016
  %7 = load i8*, i8** %4, align 8, !dbg !2019
  %8 = icmp ne i8* %7, null, !dbg !2019
  br i1 %8, label %9, label %19, !dbg !2021

; <label>:9:                                      ; preds = %1
  %10 = load i8*, i8** %4, align 8, !dbg !2022
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i32 0, i32 0)) #14, !dbg !2027
  %12 = icmp eq i32 %11, 0, !dbg !2028
  br i1 %12, label %17, label %13, !dbg !2029

; <label>:13:                                     ; preds = %9
  %14 = load i8*, i8** %4, align 8, !dbg !2030
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.80, i32 0, i32 0)) #14, !dbg !2031
  %16 = icmp eq i32 %15, 0, !dbg !2032
  br i1 %16, label %17, label %18, !dbg !2033

; <label>:17:                                     ; preds = %13, %9
  store i8 0, i8* %3, align 1, !dbg !2034
  br label %18, !dbg !2035

; <label>:18:                                     ; preds = %17, %13
  br label %19, !dbg !2036

; <label>:19:                                     ; preds = %18, %1
  %20 = load i8, i8* %3, align 1, !dbg !2037
  %21 = trunc i8 %20 to i1, !dbg !2037
  ret i1 %21, !dbg !2038
}

; Function Attrs: noinline nounwind uwtable
define void @initbuffer(%struct.linebuffer*) #2 !dbg !2039 {
  %2 = alloca %struct.linebuffer*, align 8
  store %struct.linebuffer* %0, %struct.linebuffer** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %2, metadata !2049, metadata !DIExpression()), !dbg !2050
  %3 = load %struct.linebuffer*, %struct.linebuffer** %2, align 8, !dbg !2051
  %4 = bitcast %struct.linebuffer* %3 to i8*, !dbg !2052
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 24, i32 8, i1 false), !dbg !2052
  ret void, !dbg !2053
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #10

; Function Attrs: noinline nounwind uwtable
define %struct.linebuffer* @readlinebuffer(%struct.linebuffer*, %struct._IO_FILE*) #2 !dbg !2054 {
  %3 = alloca %struct.linebuffer*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  store %struct.linebuffer* %0, %struct.linebuffer** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %3, metadata !2097, metadata !DIExpression()), !dbg !2098
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !2099, metadata !DIExpression()), !dbg !2100
  %5 = load %struct.linebuffer*, %struct.linebuffer** %3, align 8, !dbg !2101
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !2102
  %7 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %5, %struct._IO_FILE* %6, i8 signext 10), !dbg !2103
  ret %struct.linebuffer* %7, !dbg !2104
}

; Function Attrs: noinline nounwind uwtable
define %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer*, %struct._IO_FILE*, i8 signext) #2 !dbg !2105 {
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
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %5, metadata !2108, metadata !DIExpression()), !dbg !2109
  store %struct._IO_FILE* %1, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !2110, metadata !DIExpression()), !dbg !2111
  store i8 %2, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !2112, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2114, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2116, metadata !DIExpression()), !dbg !2117
  %13 = load %struct.linebuffer*, %struct.linebuffer** %5, align 8, !dbg !2118
  %14 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %13, i32 0, i32 2, !dbg !2119
  %15 = load i8*, i8** %14, align 8, !dbg !2119
  store i8* %15, i8** %9, align 8, !dbg !2117
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2120, metadata !DIExpression()), !dbg !2121
  %16 = load %struct.linebuffer*, %struct.linebuffer** %5, align 8, !dbg !2122
  %17 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %16, i32 0, i32 2, !dbg !2123
  %18 = load i8*, i8** %17, align 8, !dbg !2123
  store i8* %18, i8** %10, align 8, !dbg !2121
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2124, metadata !DIExpression()), !dbg !2125
  %19 = load i8*, i8** %9, align 8, !dbg !2126
  %20 = load %struct.linebuffer*, %struct.linebuffer** %5, align 8, !dbg !2127
  %21 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %20, i32 0, i32 0, !dbg !2128
  %22 = load i64, i64* %21, align 8, !dbg !2128
  %23 = getelementptr inbounds i8, i8* %19, i64 %22, !dbg !2129
  store i8* %23, i8** %11, align 8, !dbg !2125
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !2130
  %25 = call i32 @feof_unlocked(%struct._IO_FILE* %24) #11, !dbg !2130
  %26 = icmp ne i32 %25, 0, !dbg !2130
  br i1 %26, label %27, label %28, !dbg !2132

; <label>:27:                                     ; preds = %3
  store %struct.linebuffer* null, %struct.linebuffer** %4, align 8, !dbg !2133
  br label %97, !dbg !2133

; <label>:28:                                     ; preds = %3
  br label %29, !dbg !2134, !llvm.loop !2135

; <label>:29:                                     ; preds = %83, %28
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !2137
  %31 = call i32 @getc_unlocked(%struct._IO_FILE* %30), !dbg !2137
  store i32 %31, i32* %8, align 4, !dbg !2139
  %32 = load i32, i32* %8, align 4, !dbg !2140
  %33 = icmp eq i32 %32, -1, !dbg !2142
  br i1 %33, label %34, label %55, !dbg !2143

; <label>:34:                                     ; preds = %29
  %35 = load i8*, i8** %10, align 8, !dbg !2144
  %36 = load i8*, i8** %9, align 8, !dbg !2147
  %37 = icmp eq i8* %35, %36, !dbg !2148
  br i1 %37, label %42, label %38, !dbg !2149

; <label>:38:                                     ; preds = %34
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !2150
  %40 = call i32 @ferror_unlocked(%struct._IO_FILE* %39) #11, !dbg !2150
  %41 = icmp ne i32 %40, 0, !dbg !2150
  br i1 %41, label %42, label %43, !dbg !2151

; <label>:42:                                     ; preds = %38, %34
  store %struct.linebuffer* null, %struct.linebuffer** %4, align 8, !dbg !2152
  br label %97, !dbg !2152

; <label>:43:                                     ; preds = %38
  %44 = load i8*, i8** %10, align 8, !dbg !2153
  %45 = getelementptr inbounds i8, i8* %44, i64 -1, !dbg !2153
  %46 = load i8, i8* %45, align 1, !dbg !2153
  %47 = sext i8 %46 to i32, !dbg !2153
  %48 = load i8, i8* %7, align 1, !dbg !2155
  %49 = sext i8 %48 to i32, !dbg !2155
  %50 = icmp eq i32 %47, %49, !dbg !2156
  br i1 %50, label %51, label %52, !dbg !2157

; <label>:51:                                     ; preds = %43
  br label %88, !dbg !2158

; <label>:52:                                     ; preds = %43
  %53 = load i8, i8* %7, align 1, !dbg !2159
  %54 = sext i8 %53 to i32, !dbg !2159
  store i32 %54, i32* %8, align 4, !dbg !2160
  br label %55, !dbg !2161

; <label>:55:                                     ; preds = %52, %29
  %56 = load i8*, i8** %10, align 8, !dbg !2162
  %57 = load i8*, i8** %11, align 8, !dbg !2164
  %58 = icmp eq i8* %56, %57, !dbg !2165
  br i1 %58, label %59, label %78, !dbg !2166

; <label>:59:                                     ; preds = %55
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2167, metadata !DIExpression()), !dbg !2169
  %60 = load %struct.linebuffer*, %struct.linebuffer** %5, align 8, !dbg !2170
  %61 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %60, i32 0, i32 0, !dbg !2171
  %62 = load i64, i64* %61, align 8, !dbg !2171
  store i64 %62, i64* %12, align 8, !dbg !2169
  %63 = load i8*, i8** %9, align 8, !dbg !2172
  %64 = load %struct.linebuffer*, %struct.linebuffer** %5, align 8, !dbg !2173
  %65 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %64, i32 0, i32 0, !dbg !2174
  %66 = call i8* @x2realloc(i8* %63, i64* %65), !dbg !2175
  store i8* %66, i8** %9, align 8, !dbg !2176
  %67 = load i8*, i8** %9, align 8, !dbg !2177
  %68 = load i64, i64* %12, align 8, !dbg !2178
  %69 = getelementptr inbounds i8, i8* %67, i64 %68, !dbg !2179
  store i8* %69, i8** %10, align 8, !dbg !2180
  %70 = load i8*, i8** %9, align 8, !dbg !2181
  %71 = load %struct.linebuffer*, %struct.linebuffer** %5, align 8, !dbg !2182
  %72 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %71, i32 0, i32 2, !dbg !2183
  store i8* %70, i8** %72, align 8, !dbg !2184
  %73 = load i8*, i8** %9, align 8, !dbg !2185
  %74 = load %struct.linebuffer*, %struct.linebuffer** %5, align 8, !dbg !2186
  %75 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %74, i32 0, i32 0, !dbg !2187
  %76 = load i64, i64* %75, align 8, !dbg !2187
  %77 = getelementptr inbounds i8, i8* %73, i64 %76, !dbg !2188
  store i8* %77, i8** %11, align 8, !dbg !2189
  br label %78, !dbg !2190

; <label>:78:                                     ; preds = %59, %55
  %79 = load i32, i32* %8, align 4, !dbg !2191
  %80 = trunc i32 %79 to i8, !dbg !2191
  %81 = load i8*, i8** %10, align 8, !dbg !2192
  %82 = getelementptr inbounds i8, i8* %81, i32 1, !dbg !2192
  store i8* %82, i8** %10, align 8, !dbg !2192
  store i8 %80, i8* %81, align 1, !dbg !2193
  br label %83, !dbg !2194

; <label>:83:                                     ; preds = %78
  %84 = load i32, i32* %8, align 4, !dbg !2195
  %85 = load i8, i8* %7, align 1, !dbg !2196
  %86 = sext i8 %85 to i32, !dbg !2196
  %87 = icmp ne i32 %84, %86, !dbg !2197
  br i1 %87, label %29, label %88, !dbg !2194, !llvm.loop !2135

; <label>:88:                                     ; preds = %83, %51
  %89 = load i8*, i8** %10, align 8, !dbg !2198
  %90 = load i8*, i8** %9, align 8, !dbg !2199
  %91 = ptrtoint i8* %89 to i64, !dbg !2200
  %92 = ptrtoint i8* %90 to i64, !dbg !2200
  %93 = sub i64 %91, %92, !dbg !2200
  %94 = load %struct.linebuffer*, %struct.linebuffer** %5, align 8, !dbg !2201
  %95 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %94, i32 0, i32 1, !dbg !2202
  store i64 %93, i64* %95, align 8, !dbg !2203
  %96 = load %struct.linebuffer*, %struct.linebuffer** %5, align 8, !dbg !2204
  store %struct.linebuffer* %96, %struct.linebuffer** %4, align 8, !dbg !2205
  br label %97, !dbg !2205

; <label>:97:                                     ; preds = %88, %42, %27
  %98 = load %struct.linebuffer*, %struct.linebuffer** %4, align 8, !dbg !2206
  ret %struct.linebuffer* %98, !dbg !2206
}

declare i32 @getc_unlocked(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind uwtable
define void @freebuffer(%struct.linebuffer*) #2 !dbg !2207 {
  %2 = alloca %struct.linebuffer*, align 8
  store %struct.linebuffer* %0, %struct.linebuffer** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %2, metadata !2208, metadata !DIExpression()), !dbg !2209
  %3 = load %struct.linebuffer*, %struct.linebuffer** %2, align 8, !dbg !2210
  %4 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %3, i32 0, i32 2, !dbg !2211
  %5 = load i8*, i8** %4, align 8, !dbg !2211
  call void @free(i8* %5) #11, !dbg !2212
  ret void, !dbg !2213
}

; Function Attrs: noinline nounwind readonly uwtable
define i32 @memcasecmp(i8*, i8*, i64) #8 !dbg !2214 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2219, metadata !DIExpression()), !dbg !2220
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2221, metadata !DIExpression()), !dbg !2222
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2223, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2225, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2227, metadata !DIExpression()), !dbg !2228
  %16 = load i8*, i8** %5, align 8, !dbg !2229
  store i8* %16, i8** %9, align 8, !dbg !2228
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2230, metadata !DIExpression()), !dbg !2231
  %17 = load i8*, i8** %6, align 8, !dbg !2232
  store i8* %17, i8** %10, align 8, !dbg !2231
  store i64 0, i64* %8, align 8, !dbg !2233
  br label %18, !dbg !2235

; <label>:18:                                     ; preds = %45, %3
  %19 = load i64, i64* %8, align 8, !dbg !2236
  %20 = load i64, i64* %7, align 8, !dbg !2238
  %21 = icmp ult i64 %19, %20, !dbg !2239
  br i1 %21, label %22, label %48, !dbg !2240

; <label>:22:                                     ; preds = %18
  call void @llvm.dbg.declare(metadata i8* %11, metadata !2241, metadata !DIExpression()), !dbg !2243
  %23 = load i8*, i8** %9, align 8, !dbg !2244
  %24 = load i64, i64* %8, align 8, !dbg !2245
  %25 = getelementptr inbounds i8, i8* %23, i64 %24, !dbg !2244
  %26 = load i8, i8* %25, align 1, !dbg !2244
  store i8 %26, i8* %11, align 1, !dbg !2243
  call void @llvm.dbg.declare(metadata i8* %12, metadata !2246, metadata !DIExpression()), !dbg !2247
  %27 = load i8*, i8** %10, align 8, !dbg !2248
  %28 = load i64, i64* %8, align 8, !dbg !2249
  %29 = getelementptr inbounds i8, i8* %27, i64 %28, !dbg !2248
  %30 = load i8, i8* %29, align 1, !dbg !2248
  store i8 %30, i8* %12, align 1, !dbg !2247
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2250, metadata !DIExpression()), !dbg !2251
  %31 = load i8, i8* %11, align 1, !dbg !2252
  %32 = zext i8 %31 to i32, !dbg !2252
  %33 = call i32 @toupper(i32 %32) #14, !dbg !2253
  store i32 %33, i32* %13, align 4, !dbg !2251
  call void @llvm.dbg.declare(metadata i32* %14, metadata !2254, metadata !DIExpression()), !dbg !2255
  %34 = load i8, i8* %12, align 1, !dbg !2256
  %35 = zext i8 %34 to i32, !dbg !2256
  %36 = call i32 @toupper(i32 %35) #14, !dbg !2257
  store i32 %36, i32* %14, align 4, !dbg !2255
  call void @llvm.dbg.declare(metadata i32* %15, metadata !2258, metadata !DIExpression()), !dbg !2259
  %37 = load i32, i32* %13, align 4, !dbg !2260
  %38 = load i32, i32* %14, align 4, !dbg !2261
  %39 = sub nsw i32 %37, %38, !dbg !2262
  store i32 %39, i32* %15, align 4, !dbg !2259
  %40 = load i32, i32* %15, align 4, !dbg !2263
  %41 = icmp ne i32 %40, 0, !dbg !2263
  br i1 %41, label %42, label %44, !dbg !2265

; <label>:42:                                     ; preds = %22
  %43 = load i32, i32* %15, align 4, !dbg !2266
  store i32 %43, i32* %4, align 4, !dbg !2267
  br label %49, !dbg !2267

; <label>:44:                                     ; preds = %22
  br label %45, !dbg !2268

; <label>:45:                                     ; preds = %44
  %46 = load i64, i64* %8, align 8, !dbg !2269
  %47 = add i64 %46, 1, !dbg !2269
  store i64 %47, i64* %8, align 8, !dbg !2269
  br label %18, !dbg !2270, !llvm.loop !2271

; <label>:48:                                     ; preds = %18
  store i32 0, i32* %4, align 4, !dbg !2273
  br label %49, !dbg !2273

; <label>:49:                                     ; preds = %48, %42
  %50 = load i32, i32* %4, align 4, !dbg !2274
  ret i32 %50, !dbg !2274
}

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) #6

; Function Attrs: noinline nounwind uwtable
define i32 @posix2_version() #2 !dbg !2275 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %1, metadata !2278, metadata !DIExpression()), !dbg !2279
  store i64 200809, i64* %1, align 8, !dbg !2279
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2280, metadata !DIExpression()), !dbg !2281
  %5 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.89, i32 0, i32 0)) #11, !dbg !2282
  store i8* %5, i8** %2, align 8, !dbg !2281
  %6 = load i8*, i8** %2, align 8, !dbg !2283
  %7 = icmp ne i8* %6, null, !dbg !2283
  br i1 %7, label %8, label %22, !dbg !2285

; <label>:8:                                      ; preds = %0
  %9 = load i8*, i8** %2, align 8, !dbg !2286
  %10 = load i8, i8* %9, align 1, !dbg !2287
  %11 = sext i8 %10 to i32, !dbg !2287
  %12 = icmp ne i32 %11, 0, !dbg !2287
  br i1 %12, label %13, label %22, !dbg !2288

; <label>:13:                                     ; preds = %8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2289, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2292, metadata !DIExpression()), !dbg !2293
  %14 = load i8*, i8** %2, align 8, !dbg !2294
  %15 = call i64 @strtol(i8* %14, i8** %3, i32 10) #11, !dbg !2295
  store i64 %15, i64* %4, align 8, !dbg !2293
  %16 = load i8*, i8** %3, align 8, !dbg !2296
  %17 = load i8, i8* %16, align 1, !dbg !2298
  %18 = icmp ne i8 %17, 0, !dbg !2298
  br i1 %18, label %21, label %19, !dbg !2299

; <label>:19:                                     ; preds = %13
  %20 = load i64, i64* %4, align 8, !dbg !2300
  store i64 %20, i64* %1, align 8, !dbg !2301
  br label %21, !dbg !2302

; <label>:21:                                     ; preds = %19, %13
  br label %22, !dbg !2303

; <label>:22:                                     ; preds = %21, %8, %0
  %23 = load i64, i64* %1, align 8, !dbg !2304
  %24 = icmp slt i64 %23, -2147483648, !dbg !2305
  br i1 %24, label %25, label %26, !dbg !2304

; <label>:25:                                     ; preds = %22
  br label %34, !dbg !2304

; <label>:26:                                     ; preds = %22
  %27 = load i64, i64* %1, align 8, !dbg !2306
  %28 = icmp slt i64 %27, 2147483647, !dbg !2307
  br i1 %28, label %29, label %31, !dbg !2306

; <label>:29:                                     ; preds = %26
  %30 = load i64, i64* %1, align 8, !dbg !2308
  br label %32, !dbg !2306

; <label>:31:                                     ; preds = %26
  br label %32, !dbg !2306

; <label>:32:                                     ; preds = %31, %29
  %33 = phi i64 [ %30, %29 ], [ 2147483647, %31 ], !dbg !2306
  br label %34, !dbg !2304

; <label>:34:                                     ; preds = %32, %25
  %35 = phi i64 [ -2147483648, %25 ], [ %33, %32 ], !dbg !2304
  %36 = trunc i64 %35 to i32, !dbg !2304
  ret i32 %36, !dbg !2309
}

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #5

; Function Attrs: noinline nounwind uwtable
define void @set_program_name(i8*) #2 !dbg !2310 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2311, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2313, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2315, metadata !DIExpression()), !dbg !2316
  %5 = load i8*, i8** %2, align 8, !dbg !2317
  %6 = icmp eq i8* %5, null, !dbg !2319
  br i1 %6, label %7, label %10, !dbg !2320

; <label>:7:                                      ; preds = %1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2321
  %9 = call i32 @fputs(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.94, i32 0, i32 0), %struct._IO_FILE* %8), !dbg !2323
  call void @abort() #13, !dbg !2324
  unreachable, !dbg !2324

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %2, align 8, !dbg !2325
  %12 = call i8* @strrchr(i8* %11, i32 47) #14, !dbg !2326
  store i8* %12, i8** %3, align 8, !dbg !2327
  %13 = load i8*, i8** %3, align 8, !dbg !2328
  %14 = icmp ne i8* %13, null, !dbg !2329
  br i1 %14, label %15, label %18, !dbg !2328

; <label>:15:                                     ; preds = %10
  %16 = load i8*, i8** %3, align 8, !dbg !2330
  %17 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !2331
  br label %20, !dbg !2328

; <label>:18:                                     ; preds = %10
  %19 = load i8*, i8** %2, align 8, !dbg !2332
  br label %20, !dbg !2328

; <label>:20:                                     ; preds = %18, %15
  %21 = phi i8* [ %17, %15 ], [ %19, %18 ], !dbg !2328
  store i8* %21, i8** %4, align 8, !dbg !2333
  %22 = load i8*, i8** %4, align 8, !dbg !2334
  %23 = load i8*, i8** %2, align 8, !dbg !2336
  %24 = ptrtoint i8* %22 to i64, !dbg !2337
  %25 = ptrtoint i8* %23 to i64, !dbg !2337
  %26 = sub i64 %24, %25, !dbg !2337
  %27 = icmp sge i64 %26, 7, !dbg !2338
  br i1 %27, label %28, label %43, !dbg !2339

; <label>:28:                                     ; preds = %20
  %29 = load i8*, i8** %4, align 8, !dbg !2340
  %30 = getelementptr inbounds i8, i8* %29, i64 -7, !dbg !2341
  %31 = call i32 @strncmp(i8* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.95, i32 0, i32 0), i64 7) #14, !dbg !2342
  %32 = icmp eq i32 %31, 0, !dbg !2343
  br i1 %32, label %33, label %43, !dbg !2344

; <label>:33:                                     ; preds = %28
  %34 = load i8*, i8** %4, align 8, !dbg !2345
  store i8* %34, i8** %2, align 8, !dbg !2347
  %35 = load i8*, i8** %4, align 8, !dbg !2348
  %36 = call i32 @strncmp(i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.96, i32 0, i32 0), i64 3) #14, !dbg !2350
  %37 = icmp eq i32 %36, 0, !dbg !2351
  br i1 %37, label %38, label %42, !dbg !2352

; <label>:38:                                     ; preds = %33
  %39 = load i8*, i8** %4, align 8, !dbg !2353
  %40 = getelementptr inbounds i8, i8* %39, i64 3, !dbg !2355
  store i8* %40, i8** %2, align 8, !dbg !2356
  %41 = load i8*, i8** %2, align 8, !dbg !2357
  store i8* %41, i8** @program_invocation_short_name, align 8, !dbg !2358
  br label %42, !dbg !2359

; <label>:42:                                     ; preds = %38, %33
  br label %43, !dbg !2360

; <label>:43:                                     ; preds = %42, %28, %20
  %44 = load i8*, i8** %2, align 8, !dbg !2361
  store i8* %44, i8** @program_name, align 8, !dbg !2362
  %45 = load i8*, i8** %2, align 8, !dbg !2363
  store i8* %45, i8** @program_invocation_name, align 8, !dbg !2364
  ret void, !dbg !2365
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #3

; Function Attrs: noreturn nounwind
declare void @abort() #4

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #6

; Function Attrs: noinline nounwind uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) #2 !dbg !2366 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !2370, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2372, metadata !DIExpression()), !dbg !2373
  %5 = call i32* @__errno_location() #16, !dbg !2374
  %6 = load i32, i32* %5, align 4, !dbg !2374
  store i32 %6, i32* %3, align 4, !dbg !2373
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !2375, metadata !DIExpression()), !dbg !2376
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !2377
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !2377
  br i1 %8, label %9, label %11, !dbg !2377

; <label>:9:                                      ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !2378
  br label %12, !dbg !2377

; <label>:11:                                     ; preds = %1
  br label %12, !dbg !2377

; <label>:12:                                     ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ], !dbg !2377
  %14 = bitcast %struct.quoting_options* %13 to i8*, !dbg !2377
  %15 = call noalias i8* @xmemdup(i8* %14, i64 56), !dbg !2379
  %16 = bitcast i8* %15 to %struct.quoting_options*, !dbg !2379
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8, !dbg !2376
  %17 = load i32, i32* %3, align 4, !dbg !2380
  %18 = call i32* @__errno_location() #16, !dbg !2381
  store i32 %17, i32* %18, align 4, !dbg !2382
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2383
  ret %struct.quoting_options* %19, !dbg !2384
}

; Function Attrs: noinline nounwind uwtable
define i32 @get_quoting_style(%struct.quoting_options*) #2 !dbg !2385 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !2388, metadata !DIExpression()), !dbg !2389
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !2390
  %4 = icmp ne %struct.quoting_options* %3, null, !dbg !2390
  br i1 %4, label %5, label %7, !dbg !2390

; <label>:5:                                      ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !2391
  br label %8, !dbg !2390

; <label>:7:                                      ; preds = %1
  br label %8, !dbg !2390

; <label>:8:                                      ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ], !dbg !2390
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0, !dbg !2392
  %11 = load i32, i32* %10, align 8, !dbg !2392
  ret i32 %11, !dbg !2393
}

; Function Attrs: noinline nounwind uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) #2 !dbg !2394 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !2397, metadata !DIExpression()), !dbg !2398
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2399, metadata !DIExpression()), !dbg !2400
  %5 = load i32, i32* %4, align 4, !dbg !2401
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !2402
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !2402
  br i1 %7, label %8, label %10, !dbg !2402

; <label>:8:                                      ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !2403
  br label %11, !dbg !2402

; <label>:10:                                     ; preds = %2
  br label %11, !dbg !2402

; <label>:11:                                     ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ], !dbg !2402
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0, !dbg !2404
  store i32 %5, i32* %13, align 8, !dbg !2405
  ret void, !dbg !2406
}

; Function Attrs: noinline nounwind uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) #2 !dbg !2407 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !2410, metadata !DIExpression()), !dbg !2411
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !2412, metadata !DIExpression()), !dbg !2413
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2414, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.declare(metadata i8* %7, metadata !2416, metadata !DIExpression()), !dbg !2417
  %11 = load i8, i8* %5, align 1, !dbg !2418
  store i8 %11, i8* %7, align 1, !dbg !2417
  call void @llvm.dbg.declare(metadata i32** %8, metadata !2419, metadata !DIExpression()), !dbg !2421
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2422
  %13 = icmp ne %struct.quoting_options* %12, null, !dbg !2422
  br i1 %13, label %14, label %16, !dbg !2422

; <label>:14:                                     ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2423
  br label %17, !dbg !2422

; <label>:16:                                     ; preds = %3
  br label %17, !dbg !2422

; <label>:17:                                     ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ], !dbg !2422
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2, !dbg !2424
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i32 0, i32 0, !dbg !2425
  %21 = load i8, i8* %7, align 1, !dbg !2426
  %22 = zext i8 %21 to i64, !dbg !2426
  %23 = udiv i64 %22, 32, !dbg !2427
  %24 = getelementptr inbounds i32, i32* %20, i64 %23, !dbg !2428
  store i32* %24, i32** %8, align 8, !dbg !2421
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2429, metadata !DIExpression()), !dbg !2430
  %25 = load i8, i8* %7, align 1, !dbg !2431
  %26 = zext i8 %25 to i64, !dbg !2431
  %27 = urem i64 %26, 32, !dbg !2432
  %28 = trunc i64 %27 to i32, !dbg !2431
  store i32 %28, i32* %9, align 4, !dbg !2430
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2433, metadata !DIExpression()), !dbg !2434
  %29 = load i32*, i32** %8, align 8, !dbg !2435
  %30 = load i32, i32* %29, align 4, !dbg !2436
  %31 = load i32, i32* %9, align 4, !dbg !2437
  %32 = lshr i32 %30, %31, !dbg !2438
  %33 = and i32 %32, 1, !dbg !2439
  store i32 %33, i32* %10, align 4, !dbg !2434
  %34 = load i32, i32* %6, align 4, !dbg !2440
  %35 = and i32 %34, 1, !dbg !2441
  %36 = load i32, i32* %10, align 4, !dbg !2442
  %37 = xor i32 %35, %36, !dbg !2443
  %38 = load i32, i32* %9, align 4, !dbg !2444
  %39 = shl i32 %37, %38, !dbg !2445
  %40 = load i32*, i32** %8, align 8, !dbg !2446
  %41 = load i32, i32* %40, align 4, !dbg !2447
  %42 = xor i32 %41, %39, !dbg !2447
  store i32 %42, i32* %40, align 4, !dbg !2447
  %43 = load i32, i32* %10, align 4, !dbg !2448
  ret i32 %43, !dbg !2449
}

; Function Attrs: noinline nounwind uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) #2 !dbg !2450 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !2453, metadata !DIExpression()), !dbg !2454
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2455, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2457, metadata !DIExpression()), !dbg !2458
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !2459
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !2459
  br i1 %7, label %9, label %8, !dbg !2461

; <label>:8:                                      ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8, !dbg !2462
  br label %9, !dbg !2463

; <label>:9:                                      ; preds = %8, %2
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !2464
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1, !dbg !2465
  %12 = load i32, i32* %11, align 4, !dbg !2465
  store i32 %12, i32* %5, align 4, !dbg !2466
  %13 = load i32, i32* %4, align 4, !dbg !2467
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !2468
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1, !dbg !2469
  store i32 %13, i32* %15, align 4, !dbg !2470
  %16 = load i32, i32* %5, align 4, !dbg !2471
  ret i32 %16, !dbg !2472
}

; Function Attrs: noinline nounwind uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) #2 !dbg !2473 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !2476, metadata !DIExpression()), !dbg !2477
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2478, metadata !DIExpression()), !dbg !2479
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2480, metadata !DIExpression()), !dbg !2481
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2482
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !2482
  br i1 %8, label %10, label %9, !dbg !2484

; <label>:9:                                      ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8, !dbg !2485
  br label %10, !dbg !2486

; <label>:10:                                     ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2487
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0, !dbg !2488
  store i32 8, i32* %12, align 8, !dbg !2489
  %13 = load i8*, i8** %5, align 8, !dbg !2490
  %14 = icmp ne i8* %13, null, !dbg !2490
  br i1 %14, label %15, label %18, !dbg !2492

; <label>:15:                                     ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !2493
  %17 = icmp ne i8* %16, null, !dbg !2493
  br i1 %17, label %19, label %18, !dbg !2494

; <label>:18:                                     ; preds = %15, %10
  call void @abort() #13, !dbg !2495
  unreachable, !dbg !2495

; <label>:19:                                     ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !2496
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2497
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3, !dbg !2498
  store i8* %20, i8** %22, align 8, !dbg !2499
  %23 = load i8*, i8** %6, align 8, !dbg !2500
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2501
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4, !dbg !2502
  store i8* %23, i8** %25, align 8, !dbg !2503
  ret void, !dbg !2504
}

; Function Attrs: noinline nounwind uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options*) #2 !dbg !2505 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2510, metadata !DIExpression()), !dbg !2511
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2512, metadata !DIExpression()), !dbg !2513
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2514, metadata !DIExpression()), !dbg !2515
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !2516, metadata !DIExpression()), !dbg !2517
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %10, metadata !2518, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %11, metadata !2520, metadata !DIExpression()), !dbg !2521
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !2522
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !2522
  br i1 %15, label %16, label %18, !dbg !2522

; <label>:16:                                     ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !2523
  br label %19, !dbg !2522

; <label>:18:                                     ; preds = %5
  br label %19, !dbg !2522

; <label>:19:                                     ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !2522
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8, !dbg !2521
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2524, metadata !DIExpression()), !dbg !2525
  %21 = call i32* @__errno_location() #16, !dbg !2526
  %22 = load i32, i32* %21, align 4, !dbg !2526
  store i32 %22, i32* %12, align 4, !dbg !2525
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2527, metadata !DIExpression()), !dbg !2528
  %23 = load i8*, i8** %6, align 8, !dbg !2529
  %24 = load i64, i64* %7, align 8, !dbg !2530
  %25 = load i8*, i8** %8, align 8, !dbg !2531
  %26 = load i64, i64* %9, align 8, !dbg !2532
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2533
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0, !dbg !2534
  %29 = load i32, i32* %28, align 8, !dbg !2534
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2535
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1, !dbg !2536
  %32 = load i32, i32* %31, align 4, !dbg !2536
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2537
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2, !dbg !2538
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i32 0, i32 0, !dbg !2537
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2539
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3, !dbg !2540
  %38 = load i8*, i8** %37, align 8, !dbg !2540
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2541
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4, !dbg !2542
  %41 = load i8*, i8** %40, align 8, !dbg !2542
  %42 = call i64 @quotearg_buffer_restyled(i8* %23, i64 %24, i8* %25, i64 %26, i32 %29, i32 %32, i32* %35, i8* %38, i8* %41), !dbg !2543
  store i64 %42, i64* %13, align 8, !dbg !2528
  %43 = load i32, i32* %12, align 4, !dbg !2544
  %44 = call i32* @__errno_location() #16, !dbg !2545
  store i32 %43, i32* %44, align 4, !dbg !2546
  %45 = load i64, i64* %13, align 8, !dbg !2547
  ret i64 %45, !dbg !2548
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32*, i8*, i8*) #2 !dbg !2549 {
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
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2554, metadata !DIExpression()), !dbg !2555
  store i64 %1, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2556, metadata !DIExpression()), !dbg !2557
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2558, metadata !DIExpression()), !dbg !2559
  store i64 %3, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2560, metadata !DIExpression()), !dbg !2561
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !2562, metadata !DIExpression()), !dbg !2563
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2564, metadata !DIExpression()), !dbg !2565
  store i32* %6, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !2566, metadata !DIExpression()), !dbg !2567
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !2568, metadata !DIExpression()), !dbg !2569
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !2570, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.declare(metadata i64* %20, metadata !2572, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.declare(metadata i64* %21, metadata !2574, metadata !DIExpression()), !dbg !2575
  store i64 0, i64* %21, align 8, !dbg !2575
  call void @llvm.dbg.declare(metadata i8** %22, metadata !2576, metadata !DIExpression()), !dbg !2577
  store i8* null, i8** %22, align 8, !dbg !2577
  call void @llvm.dbg.declare(metadata i64* %23, metadata !2578, metadata !DIExpression()), !dbg !2579
  store i64 0, i64* %23, align 8, !dbg !2579
  call void @llvm.dbg.declare(metadata i8* %24, metadata !2580, metadata !DIExpression()), !dbg !2581
  store i8 0, i8* %24, align 1, !dbg !2581
  call void @llvm.dbg.declare(metadata i8* %25, metadata !2582, metadata !DIExpression()), !dbg !2583
  %37 = call i64 @__ctype_get_mb_cur_max() #11, !dbg !2584
  %38 = icmp eq i64 %37, 1, !dbg !2585
  %39 = zext i1 %38 to i8, !dbg !2583
  store i8 %39, i8* %25, align 1, !dbg !2583
  call void @llvm.dbg.declare(metadata i8* %26, metadata !2586, metadata !DIExpression()), !dbg !2587
  %40 = load i32, i32* %16, align 4, !dbg !2588
  %41 = and i32 %40, 2, !dbg !2589
  %42 = icmp ne i32 %41, 0, !dbg !2590
  %43 = zext i1 %42 to i8, !dbg !2587
  store i8 %43, i8* %26, align 1, !dbg !2587
  %44 = load i32, i32* %15, align 4, !dbg !2591
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
  ], !dbg !2592

; <label>:45:                                     ; preds = %9
  store i32 3, i32* %15, align 4, !dbg !2593
  store i8 1, i8* %26, align 1, !dbg !2595
  br label %46, !dbg !2596

; <label>:46:                                     ; preds = %9, %45
  %47 = load i8, i8* %26, align 1, !dbg !2597
  %48 = trunc i8 %47 to i1, !dbg !2597
  br i1 %48, label %62, label %49, !dbg !2599

; <label>:49:                                     ; preds = %46
  br label %50, !dbg !2600, !llvm.loop !2601

; <label>:50:                                     ; preds = %49
  %51 = load i64, i64* %21, align 8, !dbg !2602
  %52 = load i64, i64* %12, align 8, !dbg !2602
  %53 = icmp ult i64 %51, %52, !dbg !2602
  br i1 %53, label %54, label %58, !dbg !2605

; <label>:54:                                     ; preds = %50
  %55 = load i8*, i8** %11, align 8, !dbg !2602
  %56 = load i64, i64* %21, align 8, !dbg !2602
  %57 = getelementptr inbounds i8, i8* %55, i64 %56, !dbg !2602
  store i8 34, i8* %57, align 1, !dbg !2602
  br label %58, !dbg !2602

; <label>:58:                                     ; preds = %54, %50
  %59 = load i64, i64* %21, align 8, !dbg !2605
  %60 = add i64 %59, 1, !dbg !2605
  store i64 %60, i64* %21, align 8, !dbg !2605
  br label %61, !dbg !2605

; <label>:61:                                     ; preds = %58
  br label %62, !dbg !2605

; <label>:62:                                     ; preds = %61, %46
  store i8 1, i8* %24, align 1, !dbg !2606
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.105, i32 0, i32 0), i8** %22, align 8, !dbg !2607
  store i64 1, i64* %23, align 8, !dbg !2608
  br label %124, !dbg !2609

; <label>:63:                                     ; preds = %9
  store i8 1, i8* %24, align 1, !dbg !2610
  store i8 0, i8* %26, align 1, !dbg !2611
  br label %124, !dbg !2612

; <label>:64:                                     ; preds = %9, %9, %9
  %65 = load i32, i32* %15, align 4, !dbg !2613
  %66 = icmp ne i32 %65, 8, !dbg !2616
  br i1 %66, label %67, label %72, !dbg !2617

; <label>:67:                                     ; preds = %64
  %68 = load i32, i32* %15, align 4, !dbg !2618
  %69 = call i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.106, i32 0, i32 0), i32 %68), !dbg !2620
  store i8* %69, i8** %18, align 8, !dbg !2621
  %70 = load i32, i32* %15, align 4, !dbg !2622
  %71 = call i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.107, i32 0, i32 0), i32 %70), !dbg !2623
  store i8* %71, i8** %19, align 8, !dbg !2624
  br label %72, !dbg !2625

; <label>:72:                                     ; preds = %67, %64
  %73 = load i8, i8* %26, align 1, !dbg !2626
  %74 = trunc i8 %73 to i1, !dbg !2626
  br i1 %74, label %100, label %75, !dbg !2628

; <label>:75:                                     ; preds = %72
  %76 = load i8*, i8** %18, align 8, !dbg !2629
  store i8* %76, i8** %22, align 8, !dbg !2631
  br label %77, !dbg !2632

; <label>:77:                                     ; preds = %96, %75
  %78 = load i8*, i8** %22, align 8, !dbg !2633
  %79 = load i8, i8* %78, align 1, !dbg !2635
  %80 = icmp ne i8 %79, 0, !dbg !2636
  br i1 %80, label %81, label %99, !dbg !2636

; <label>:81:                                     ; preds = %77
  br label %82, !dbg !2637, !llvm.loop !2638

; <label>:82:                                     ; preds = %81
  %83 = load i64, i64* %21, align 8, !dbg !2639
  %84 = load i64, i64* %12, align 8, !dbg !2639
  %85 = icmp ult i64 %83, %84, !dbg !2639
  br i1 %85, label %86, label %92, !dbg !2642

; <label>:86:                                     ; preds = %82
  %87 = load i8*, i8** %22, align 8, !dbg !2639
  %88 = load i8, i8* %87, align 1, !dbg !2639
  %89 = load i8*, i8** %11, align 8, !dbg !2639
  %90 = load i64, i64* %21, align 8, !dbg !2639
  %91 = getelementptr inbounds i8, i8* %89, i64 %90, !dbg !2639
  store i8 %88, i8* %91, align 1, !dbg !2639
  br label %92, !dbg !2639

; <label>:92:                                     ; preds = %86, %82
  %93 = load i64, i64* %21, align 8, !dbg !2642
  %94 = add i64 %93, 1, !dbg !2642
  store i64 %94, i64* %21, align 8, !dbg !2642
  br label %95, !dbg !2642

; <label>:95:                                     ; preds = %92
  br label %96, !dbg !2642

; <label>:96:                                     ; preds = %95
  %97 = load i8*, i8** %22, align 8, !dbg !2643
  %98 = getelementptr inbounds i8, i8* %97, i32 1, !dbg !2643
  store i8* %98, i8** %22, align 8, !dbg !2643
  br label %77, !dbg !2644, !llvm.loop !2645

; <label>:99:                                     ; preds = %77
  br label %100, !dbg !2646

; <label>:100:                                    ; preds = %99, %72
  store i8 1, i8* %24, align 1, !dbg !2647
  %101 = load i8*, i8** %19, align 8, !dbg !2648
  store i8* %101, i8** %22, align 8, !dbg !2649
  %102 = load i8*, i8** %22, align 8, !dbg !2650
  %103 = call i64 @strlen(i8* %102) #14, !dbg !2651
  store i64 %103, i64* %23, align 8, !dbg !2652
  br label %124, !dbg !2653

; <label>:104:                                    ; preds = %9
  store i32 2, i32* %15, align 4, !dbg !2654
  store i8 1, i8* %26, align 1, !dbg !2655
  br label %105, !dbg !2656

; <label>:105:                                    ; preds = %9, %104
  %106 = load i8, i8* %26, align 1, !dbg !2657
  %107 = trunc i8 %106 to i1, !dbg !2657
  br i1 %107, label %121, label %108, !dbg !2659

; <label>:108:                                    ; preds = %105
  br label %109, !dbg !2660, !llvm.loop !2661

; <label>:109:                                    ; preds = %108
  %110 = load i64, i64* %21, align 8, !dbg !2662
  %111 = load i64, i64* %12, align 8, !dbg !2662
  %112 = icmp ult i64 %110, %111, !dbg !2662
  br i1 %112, label %113, label %117, !dbg !2665

; <label>:113:                                    ; preds = %109
  %114 = load i8*, i8** %11, align 8, !dbg !2662
  %115 = load i64, i64* %21, align 8, !dbg !2662
  %116 = getelementptr inbounds i8, i8* %114, i64 %115, !dbg !2662
  store i8 39, i8* %116, align 1, !dbg !2662
  br label %117, !dbg !2662

; <label>:117:                                    ; preds = %113, %109
  %118 = load i64, i64* %21, align 8, !dbg !2665
  %119 = add i64 %118, 1, !dbg !2665
  store i64 %119, i64* %21, align 8, !dbg !2665
  br label %120, !dbg !2665

; <label>:120:                                    ; preds = %117
  br label %121, !dbg !2665

; <label>:121:                                    ; preds = %120, %105
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.107, i32 0, i32 0), i8** %22, align 8, !dbg !2666
  store i64 1, i64* %23, align 8, !dbg !2667
  br label %124, !dbg !2668

; <label>:122:                                    ; preds = %9
  store i8 0, i8* %26, align 1, !dbg !2669
  br label %124, !dbg !2670

; <label>:123:                                    ; preds = %9
  call void @abort() #13, !dbg !2671
  unreachable, !dbg !2671

; <label>:124:                                    ; preds = %122, %121, %100, %63, %62
  store i64 0, i64* %20, align 8, !dbg !2672
  br label %125, !dbg !2674

; <label>:125:                                    ; preds = %743, %124
  %126 = load i64, i64* %14, align 8, !dbg !2675
  %127 = icmp eq i64 %126, -1, !dbg !2677
  br i1 %127, label %128, label %136, !dbg !2675

; <label>:128:                                    ; preds = %125
  %129 = load i8*, i8** %13, align 8, !dbg !2678
  %130 = load i64, i64* %20, align 8, !dbg !2679
  %131 = getelementptr inbounds i8, i8* %129, i64 %130, !dbg !2678
  %132 = load i8, i8* %131, align 1, !dbg !2678
  %133 = sext i8 %132 to i32, !dbg !2678
  %134 = icmp eq i32 %133, 0, !dbg !2680
  %135 = zext i1 %134 to i32, !dbg !2680
  br label %141, !dbg !2675

; <label>:136:                                    ; preds = %125
  %137 = load i64, i64* %20, align 8, !dbg !2681
  %138 = load i64, i64* %14, align 8, !dbg !2682
  %139 = icmp eq i64 %137, %138, !dbg !2683
  %140 = zext i1 %139 to i32, !dbg !2683
  br label %141, !dbg !2675

; <label>:141:                                    ; preds = %136, %128
  %142 = phi i32 [ %135, %128 ], [ %140, %136 ], !dbg !2675
  %143 = icmp ne i32 %142, 0, !dbg !2684
  %144 = xor i1 %143, true, !dbg !2684
  br i1 %144, label %145, label %746, !dbg !2685

; <label>:145:                                    ; preds = %141
  call void @llvm.dbg.declare(metadata i8* %27, metadata !2686, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.declare(metadata i8* %28, metadata !2689, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.declare(metadata i8* %29, metadata !2691, metadata !DIExpression()), !dbg !2692
  store i8 0, i8* %29, align 1, !dbg !2692
  %146 = load i8, i8* %24, align 1, !dbg !2693
  %147 = trunc i8 %146 to i1, !dbg !2693
  br i1 %147, label %148, label %170, !dbg !2695

; <label>:148:                                    ; preds = %145
  %149 = load i64, i64* %23, align 8, !dbg !2696
  %150 = icmp ne i64 %149, 0, !dbg !2696
  br i1 %150, label %151, label %170, !dbg !2697

; <label>:151:                                    ; preds = %148
  %152 = load i64, i64* %20, align 8, !dbg !2698
  %153 = load i64, i64* %23, align 8, !dbg !2699
  %154 = add i64 %152, %153, !dbg !2700
  %155 = load i64, i64* %14, align 8, !dbg !2701
  %156 = icmp ule i64 %154, %155, !dbg !2702
  br i1 %156, label %157, label %170, !dbg !2703

; <label>:157:                                    ; preds = %151
  %158 = load i8*, i8** %13, align 8, !dbg !2704
  %159 = load i64, i64* %20, align 8, !dbg !2705
  %160 = getelementptr inbounds i8, i8* %158, i64 %159, !dbg !2706
  %161 = load i8*, i8** %22, align 8, !dbg !2707
  %162 = load i64, i64* %23, align 8, !dbg !2708
  %163 = call i32 @memcmp(i8* %160, i8* %161, i64 %162) #14, !dbg !2709
  %164 = icmp eq i32 %163, 0, !dbg !2710
  br i1 %164, label %165, label %170, !dbg !2711

; <label>:165:                                    ; preds = %157
  %166 = load i8, i8* %26, align 1, !dbg !2712
  %167 = trunc i8 %166 to i1, !dbg !2712
  br i1 %167, label %168, label %169, !dbg !2715

; <label>:168:                                    ; preds = %165
  br label %796, !dbg !2716

; <label>:169:                                    ; preds = %165
  store i8 1, i8* %29, align 1, !dbg !2717
  br label %170, !dbg !2718

; <label>:170:                                    ; preds = %169, %157, %151, %148, %145
  %171 = load i8*, i8** %13, align 8, !dbg !2719
  %172 = load i64, i64* %20, align 8, !dbg !2720
  %173 = getelementptr inbounds i8, i8* %171, i64 %172, !dbg !2719
  %174 = load i8, i8* %173, align 1, !dbg !2719
  store i8 %174, i8* %27, align 1, !dbg !2721
  %175 = load i8, i8* %27, align 1, !dbg !2722
  %176 = zext i8 %175 to i32, !dbg !2722
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
  ], !dbg !2723

; <label>:177:                                    ; preds = %170
  %178 = load i8, i8* %24, align 1, !dbg !2724
  %179 = trunc i8 %178 to i1, !dbg !2724
  br i1 %179, label %180, label %243, !dbg !2727

; <label>:180:                                    ; preds = %177
  %181 = load i8, i8* %26, align 1, !dbg !2728
  %182 = trunc i8 %181 to i1, !dbg !2728
  br i1 %182, label %183, label %184, !dbg !2731

; <label>:183:                                    ; preds = %180
  br label %796, !dbg !2732

; <label>:184:                                    ; preds = %180
  br label %185, !dbg !2733, !llvm.loop !2734

; <label>:185:                                    ; preds = %184
  %186 = load i64, i64* %21, align 8, !dbg !2735
  %187 = load i64, i64* %12, align 8, !dbg !2735
  %188 = icmp ult i64 %186, %187, !dbg !2735
  br i1 %188, label %189, label %193, !dbg !2738

; <label>:189:                                    ; preds = %185
  %190 = load i8*, i8** %11, align 8, !dbg !2735
  %191 = load i64, i64* %21, align 8, !dbg !2735
  %192 = getelementptr inbounds i8, i8* %190, i64 %191, !dbg !2735
  store i8 92, i8* %192, align 1, !dbg !2735
  br label %193, !dbg !2735

; <label>:193:                                    ; preds = %189, %185
  %194 = load i64, i64* %21, align 8, !dbg !2738
  %195 = add i64 %194, 1, !dbg !2738
  store i64 %195, i64* %21, align 8, !dbg !2738
  br label %196, !dbg !2738

; <label>:196:                                    ; preds = %193
  %197 = load i64, i64* %20, align 8, !dbg !2739
  %198 = add i64 %197, 1, !dbg !2741
  %199 = load i64, i64* %14, align 8, !dbg !2742
  %200 = icmp ult i64 %198, %199, !dbg !2743
  br i1 %200, label %201, label %242, !dbg !2744

; <label>:201:                                    ; preds = %196
  %202 = load i8*, i8** %13, align 8, !dbg !2745
  %203 = load i64, i64* %20, align 8, !dbg !2746
  %204 = add i64 %203, 1, !dbg !2747
  %205 = getelementptr inbounds i8, i8* %202, i64 %204, !dbg !2745
  %206 = load i8, i8* %205, align 1, !dbg !2745
  %207 = sext i8 %206 to i32, !dbg !2745
  %208 = icmp sle i32 48, %207, !dbg !2748
  br i1 %208, label %209, label %242, !dbg !2749

; <label>:209:                                    ; preds = %201
  %210 = load i8*, i8** %13, align 8, !dbg !2750
  %211 = load i64, i64* %20, align 8, !dbg !2751
  %212 = add i64 %211, 1, !dbg !2752
  %213 = getelementptr inbounds i8, i8* %210, i64 %212, !dbg !2750
  %214 = load i8, i8* %213, align 1, !dbg !2750
  %215 = sext i8 %214 to i32, !dbg !2750
  %216 = icmp sle i32 %215, 57, !dbg !2753
  br i1 %216, label %217, label %242, !dbg !2754

; <label>:217:                                    ; preds = %209
  br label %218, !dbg !2755, !llvm.loop !2757

; <label>:218:                                    ; preds = %217
  %219 = load i64, i64* %21, align 8, !dbg !2758
  %220 = load i64, i64* %12, align 8, !dbg !2758
  %221 = icmp ult i64 %219, %220, !dbg !2758
  br i1 %221, label %222, label %226, !dbg !2761

; <label>:222:                                    ; preds = %218
  %223 = load i8*, i8** %11, align 8, !dbg !2758
  %224 = load i64, i64* %21, align 8, !dbg !2758
  %225 = getelementptr inbounds i8, i8* %223, i64 %224, !dbg !2758
  store i8 48, i8* %225, align 1, !dbg !2758
  br label %226, !dbg !2758

; <label>:226:                                    ; preds = %222, %218
  %227 = load i64, i64* %21, align 8, !dbg !2761
  %228 = add i64 %227, 1, !dbg !2761
  store i64 %228, i64* %21, align 8, !dbg !2761
  br label %229, !dbg !2761

; <label>:229:                                    ; preds = %226
  br label %230, !dbg !2762, !llvm.loop !2763

; <label>:230:                                    ; preds = %229
  %231 = load i64, i64* %21, align 8, !dbg !2764
  %232 = load i64, i64* %12, align 8, !dbg !2764
  %233 = icmp ult i64 %231, %232, !dbg !2764
  br i1 %233, label %234, label %238, !dbg !2767

; <label>:234:                                    ; preds = %230
  %235 = load i8*, i8** %11, align 8, !dbg !2764
  %236 = load i64, i64* %21, align 8, !dbg !2764
  %237 = getelementptr inbounds i8, i8* %235, i64 %236, !dbg !2764
  store i8 48, i8* %237, align 1, !dbg !2764
  br label %238, !dbg !2764

; <label>:238:                                    ; preds = %234, %230
  %239 = load i64, i64* %21, align 8, !dbg !2767
  %240 = add i64 %239, 1, !dbg !2767
  store i64 %240, i64* %21, align 8, !dbg !2767
  br label %241, !dbg !2767

; <label>:241:                                    ; preds = %238
  br label %242, !dbg !2768

; <label>:242:                                    ; preds = %241, %209, %201, %196
  store i8 48, i8* %27, align 1, !dbg !2769
  br label %249, !dbg !2770

; <label>:243:                                    ; preds = %177
  %244 = load i32, i32* %16, align 4, !dbg !2771
  %245 = and i32 %244, 1, !dbg !2773
  %246 = icmp ne i32 %245, 0, !dbg !2773
  br i1 %246, label %247, label %248, !dbg !2774

; <label>:247:                                    ; preds = %243
  br label %743, !dbg !2775

; <label>:248:                                    ; preds = %243
  br label %249

; <label>:249:                                    ; preds = %248, %242
  br label %684, !dbg !2776

; <label>:250:                                    ; preds = %170
  %251 = load i32, i32* %15, align 4, !dbg !2777
  switch i32 %251, label %344 [
    i32 2, label %252
    i32 3, label %257
  ], !dbg !2778

; <label>:252:                                    ; preds = %250
  %253 = load i8, i8* %26, align 1, !dbg !2779
  %254 = trunc i8 %253 to i1, !dbg !2779
  br i1 %254, label %255, label %256, !dbg !2782

; <label>:255:                                    ; preds = %252
  br label %796, !dbg !2783

; <label>:256:                                    ; preds = %252
  br label %345, !dbg !2784

; <label>:257:                                    ; preds = %250
  %258 = load i32, i32* %16, align 4, !dbg !2785
  %259 = and i32 %258, 4, !dbg !2787
  %260 = icmp ne i32 %259, 0, !dbg !2787
  br i1 %260, label %261, label %343, !dbg !2788

; <label>:261:                                    ; preds = %257
  %262 = load i64, i64* %20, align 8, !dbg !2789
  %263 = add i64 %262, 2, !dbg !2790
  %264 = load i64, i64* %14, align 8, !dbg !2791
  %265 = icmp ult i64 %263, %264, !dbg !2792
  br i1 %265, label %266, label %343, !dbg !2793

; <label>:266:                                    ; preds = %261
  %267 = load i8*, i8** %13, align 8, !dbg !2794
  %268 = load i64, i64* %20, align 8, !dbg !2795
  %269 = add i64 %268, 1, !dbg !2796
  %270 = getelementptr inbounds i8, i8* %267, i64 %269, !dbg !2794
  %271 = load i8, i8* %270, align 1, !dbg !2794
  %272 = sext i8 %271 to i32, !dbg !2794
  %273 = icmp eq i32 %272, 63, !dbg !2797
  br i1 %273, label %274, label %343, !dbg !2798

; <label>:274:                                    ; preds = %266
  %275 = load i8*, i8** %13, align 8, !dbg !2799
  %276 = load i64, i64* %20, align 8, !dbg !2800
  %277 = add i64 %276, 2, !dbg !2801
  %278 = getelementptr inbounds i8, i8* %275, i64 %277, !dbg !2799
  %279 = load i8, i8* %278, align 1, !dbg !2799
  %280 = sext i8 %279 to i32, !dbg !2799
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
  ], !dbg !2802

; <label>:281:                                    ; preds = %274, %274, %274, %274, %274, %274, %274, %274, %274
  %282 = load i8, i8* %26, align 1, !dbg !2803
  %283 = trunc i8 %282 to i1, !dbg !2803
  br i1 %283, label %284, label %285, !dbg !2806

; <label>:284:                                    ; preds = %281
  br label %796, !dbg !2807

; <label>:285:                                    ; preds = %281
  %286 = load i8*, i8** %13, align 8, !dbg !2808
  %287 = load i64, i64* %20, align 8, !dbg !2809
  %288 = add i64 %287, 2, !dbg !2810
  %289 = getelementptr inbounds i8, i8* %286, i64 %288, !dbg !2808
  %290 = load i8, i8* %289, align 1, !dbg !2808
  store i8 %290, i8* %27, align 1, !dbg !2811
  %291 = load i64, i64* %20, align 8, !dbg !2812
  %292 = add i64 %291, 2, !dbg !2812
  store i64 %292, i64* %20, align 8, !dbg !2812
  br label %293, !dbg !2813, !llvm.loop !2814

; <label>:293:                                    ; preds = %285
  %294 = load i64, i64* %21, align 8, !dbg !2815
  %295 = load i64, i64* %12, align 8, !dbg !2815
  %296 = icmp ult i64 %294, %295, !dbg !2815
  br i1 %296, label %297, label %301, !dbg !2818

; <label>:297:                                    ; preds = %293
  %298 = load i8*, i8** %11, align 8, !dbg !2815
  %299 = load i64, i64* %21, align 8, !dbg !2815
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !2815
  store i8 63, i8* %300, align 1, !dbg !2815
  br label %301, !dbg !2815

; <label>:301:                                    ; preds = %297, %293
  %302 = load i64, i64* %21, align 8, !dbg !2818
  %303 = add i64 %302, 1, !dbg !2818
  store i64 %303, i64* %21, align 8, !dbg !2818
  br label %304, !dbg !2818

; <label>:304:                                    ; preds = %301
  br label %305, !dbg !2819, !llvm.loop !2820

; <label>:305:                                    ; preds = %304
  %306 = load i64, i64* %21, align 8, !dbg !2821
  %307 = load i64, i64* %12, align 8, !dbg !2821
  %308 = icmp ult i64 %306, %307, !dbg !2821
  br i1 %308, label %309, label %313, !dbg !2824

; <label>:309:                                    ; preds = %305
  %310 = load i8*, i8** %11, align 8, !dbg !2821
  %311 = load i64, i64* %21, align 8, !dbg !2821
  %312 = getelementptr inbounds i8, i8* %310, i64 %311, !dbg !2821
  store i8 34, i8* %312, align 1, !dbg !2821
  br label %313, !dbg !2821

; <label>:313:                                    ; preds = %309, %305
  %314 = load i64, i64* %21, align 8, !dbg !2824
  %315 = add i64 %314, 1, !dbg !2824
  store i64 %315, i64* %21, align 8, !dbg !2824
  br label %316, !dbg !2824

; <label>:316:                                    ; preds = %313
  br label %317, !dbg !2825, !llvm.loop !2826

; <label>:317:                                    ; preds = %316
  %318 = load i64, i64* %21, align 8, !dbg !2827
  %319 = load i64, i64* %12, align 8, !dbg !2827
  %320 = icmp ult i64 %318, %319, !dbg !2827
  br i1 %320, label %321, label %325, !dbg !2830

; <label>:321:                                    ; preds = %317
  %322 = load i8*, i8** %11, align 8, !dbg !2827
  %323 = load i64, i64* %21, align 8, !dbg !2827
  %324 = getelementptr inbounds i8, i8* %322, i64 %323, !dbg !2827
  store i8 34, i8* %324, align 1, !dbg !2827
  br label %325, !dbg !2827

; <label>:325:                                    ; preds = %321, %317
  %326 = load i64, i64* %21, align 8, !dbg !2830
  %327 = add i64 %326, 1, !dbg !2830
  store i64 %327, i64* %21, align 8, !dbg !2830
  br label %328, !dbg !2830

; <label>:328:                                    ; preds = %325
  br label %329, !dbg !2831, !llvm.loop !2832

; <label>:329:                                    ; preds = %328
  %330 = load i64, i64* %21, align 8, !dbg !2833
  %331 = load i64, i64* %12, align 8, !dbg !2833
  %332 = icmp ult i64 %330, %331, !dbg !2833
  br i1 %332, label %333, label %337, !dbg !2836

; <label>:333:                                    ; preds = %329
  %334 = load i8*, i8** %11, align 8, !dbg !2833
  %335 = load i64, i64* %21, align 8, !dbg !2833
  %336 = getelementptr inbounds i8, i8* %334, i64 %335, !dbg !2833
  store i8 63, i8* %336, align 1, !dbg !2833
  br label %337, !dbg !2833

; <label>:337:                                    ; preds = %333, %329
  %338 = load i64, i64* %21, align 8, !dbg !2836
  %339 = add i64 %338, 1, !dbg !2836
  store i64 %339, i64* %21, align 8, !dbg !2836
  br label %340, !dbg !2836

; <label>:340:                                    ; preds = %337
  br label %342, !dbg !2837

; <label>:341:                                    ; preds = %274
  br label %342, !dbg !2838

; <label>:342:                                    ; preds = %341, %340
  br label %343, !dbg !2839

; <label>:343:                                    ; preds = %342, %266, %261, %257
  br label %345, !dbg !2840

; <label>:344:                                    ; preds = %250
  br label %345, !dbg !2841

; <label>:345:                                    ; preds = %344, %343, %256
  br label %684, !dbg !2842

; <label>:346:                                    ; preds = %170
  store i8 97, i8* %28, align 1, !dbg !2843
  br label %373, !dbg !2844

; <label>:347:                                    ; preds = %170
  store i8 98, i8* %28, align 1, !dbg !2845
  br label %373, !dbg !2846

; <label>:348:                                    ; preds = %170
  store i8 102, i8* %28, align 1, !dbg !2847
  br label %373, !dbg !2848

; <label>:349:                                    ; preds = %170
  store i8 110, i8* %28, align 1, !dbg !2849
  br label %365, !dbg !2850

; <label>:350:                                    ; preds = %170
  store i8 114, i8* %28, align 1, !dbg !2851
  br label %365, !dbg !2852

; <label>:351:                                    ; preds = %170
  store i8 116, i8* %28, align 1, !dbg !2853
  br label %365, !dbg !2854

; <label>:352:                                    ; preds = %170
  store i8 118, i8* %28, align 1, !dbg !2855
  br label %373, !dbg !2856

; <label>:353:                                    ; preds = %170
  %354 = load i8, i8* %27, align 1, !dbg !2857
  store i8 %354, i8* %28, align 1, !dbg !2858
  %355 = load i8, i8* %24, align 1, !dbg !2859
  %356 = trunc i8 %355 to i1, !dbg !2859
  br i1 %356, label %357, label %364, !dbg !2861

; <label>:357:                                    ; preds = %353
  %358 = load i8, i8* %26, align 1, !dbg !2862
  %359 = trunc i8 %358 to i1, !dbg !2862
  br i1 %359, label %360, label %364, !dbg !2863

; <label>:360:                                    ; preds = %357
  %361 = load i64, i64* %23, align 8, !dbg !2864
  %362 = icmp ne i64 %361, 0, !dbg !2864
  br i1 %362, label %363, label %364, !dbg !2865

; <label>:363:                                    ; preds = %360
  br label %729, !dbg !2866

; <label>:364:                                    ; preds = %360, %357, %353
  br label %365, !dbg !2864

; <label>:365:                                    ; preds = %364, %351, %350, %349
  %366 = load i32, i32* %15, align 4, !dbg !2867
  %367 = icmp eq i32 %366, 2, !dbg !2869
  br i1 %367, label %368, label %372, !dbg !2870

; <label>:368:                                    ; preds = %365
  %369 = load i8, i8* %26, align 1, !dbg !2871
  %370 = trunc i8 %369 to i1, !dbg !2871
  br i1 %370, label %371, label %372, !dbg !2872

; <label>:371:                                    ; preds = %368
  br label %796, !dbg !2873

; <label>:372:                                    ; preds = %368, %365
  br label %373, !dbg !2871

; <label>:373:                                    ; preds = %372, %352, %348, %347, %346
  %374 = load i8, i8* %24, align 1, !dbg !2874
  %375 = trunc i8 %374 to i1, !dbg !2874
  br i1 %375, label %376, label %378, !dbg !2876

; <label>:376:                                    ; preds = %373
  %377 = load i8, i8* %28, align 1, !dbg !2877
  store i8 %377, i8* %27, align 1, !dbg !2879
  br label %712, !dbg !2880

; <label>:378:                                    ; preds = %373
  br label %684, !dbg !2881

; <label>:379:                                    ; preds = %170, %170
  %380 = load i64, i64* %14, align 8, !dbg !2882
  %381 = icmp eq i64 %380, -1, !dbg !2884
  br i1 %381, label %382, label %388, !dbg !2885

; <label>:382:                                    ; preds = %379
  %383 = load i8*, i8** %13, align 8, !dbg !2886
  %384 = getelementptr inbounds i8, i8* %383, i64 1, !dbg !2886
  %385 = load i8, i8* %384, align 1, !dbg !2886
  %386 = sext i8 %385 to i32, !dbg !2886
  %387 = icmp eq i32 %386, 0, !dbg !2887
  br i1 %387, label %392, label %391, !dbg !2882

; <label>:388:                                    ; preds = %379
  %389 = load i64, i64* %14, align 8, !dbg !2888
  %390 = icmp eq i64 %389, 1, !dbg !2889
  br i1 %390, label %392, label %391, !dbg !2885

; <label>:391:                                    ; preds = %388, %382
  br label %684, !dbg !2890

; <label>:392:                                    ; preds = %388, %382
  br label %393, !dbg !2891

; <label>:393:                                    ; preds = %170, %170, %392
  %394 = load i64, i64* %20, align 8, !dbg !2892
  %395 = icmp ne i64 %394, 0, !dbg !2894
  br i1 %395, label %396, label %397, !dbg !2895

; <label>:396:                                    ; preds = %393
  br label %684, !dbg !2896

; <label>:397:                                    ; preds = %393
  br label %398, !dbg !2897

; <label>:398:                                    ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %397
  %399 = load i32, i32* %15, align 4, !dbg !2898
  %400 = icmp eq i32 %399, 2, !dbg !2900
  br i1 %400, label %401, label %405, !dbg !2901

; <label>:401:                                    ; preds = %398
  %402 = load i8, i8* %26, align 1, !dbg !2902
  %403 = trunc i8 %402 to i1, !dbg !2902
  br i1 %403, label %404, label %405, !dbg !2903

; <label>:404:                                    ; preds = %401
  br label %796, !dbg !2904

; <label>:405:                                    ; preds = %401, %398
  br label %684, !dbg !2905

; <label>:406:                                    ; preds = %170
  %407 = load i32, i32* %15, align 4, !dbg !2906
  %408 = icmp eq i32 %407, 2, !dbg !2908
  br i1 %408, label %409, label %450, !dbg !2909

; <label>:409:                                    ; preds = %406
  %410 = load i8, i8* %26, align 1, !dbg !2910
  %411 = trunc i8 %410 to i1, !dbg !2910
  br i1 %411, label %412, label %413, !dbg !2913

; <label>:412:                                    ; preds = %409
  br label %796, !dbg !2914

; <label>:413:                                    ; preds = %409
  br label %414, !dbg !2915, !llvm.loop !2916

; <label>:414:                                    ; preds = %413
  %415 = load i64, i64* %21, align 8, !dbg !2917
  %416 = load i64, i64* %12, align 8, !dbg !2917
  %417 = icmp ult i64 %415, %416, !dbg !2917
  br i1 %417, label %418, label %422, !dbg !2920

; <label>:418:                                    ; preds = %414
  %419 = load i8*, i8** %11, align 8, !dbg !2917
  %420 = load i64, i64* %21, align 8, !dbg !2917
  %421 = getelementptr inbounds i8, i8* %419, i64 %420, !dbg !2917
  store i8 39, i8* %421, align 1, !dbg !2917
  br label %422, !dbg !2917

; <label>:422:                                    ; preds = %418, %414
  %423 = load i64, i64* %21, align 8, !dbg !2920
  %424 = add i64 %423, 1, !dbg !2920
  store i64 %424, i64* %21, align 8, !dbg !2920
  br label %425, !dbg !2920

; <label>:425:                                    ; preds = %422
  br label %426, !dbg !2921, !llvm.loop !2922

; <label>:426:                                    ; preds = %425
  %427 = load i64, i64* %21, align 8, !dbg !2923
  %428 = load i64, i64* %12, align 8, !dbg !2923
  %429 = icmp ult i64 %427, %428, !dbg !2923
  br i1 %429, label %430, label %434, !dbg !2926

; <label>:430:                                    ; preds = %426
  %431 = load i8*, i8** %11, align 8, !dbg !2923
  %432 = load i64, i64* %21, align 8, !dbg !2923
  %433 = getelementptr inbounds i8, i8* %431, i64 %432, !dbg !2923
  store i8 92, i8* %433, align 1, !dbg !2923
  br label %434, !dbg !2923

; <label>:434:                                    ; preds = %430, %426
  %435 = load i64, i64* %21, align 8, !dbg !2926
  %436 = add i64 %435, 1, !dbg !2926
  store i64 %436, i64* %21, align 8, !dbg !2926
  br label %437, !dbg !2926

; <label>:437:                                    ; preds = %434
  br label %438, !dbg !2927, !llvm.loop !2928

; <label>:438:                                    ; preds = %437
  %439 = load i64, i64* %21, align 8, !dbg !2929
  %440 = load i64, i64* %12, align 8, !dbg !2929
  %441 = icmp ult i64 %439, %440, !dbg !2929
  br i1 %441, label %442, label %446, !dbg !2932

; <label>:442:                                    ; preds = %438
  %443 = load i8*, i8** %11, align 8, !dbg !2929
  %444 = load i64, i64* %21, align 8, !dbg !2929
  %445 = getelementptr inbounds i8, i8* %443, i64 %444, !dbg !2929
  store i8 39, i8* %445, align 1, !dbg !2929
  br label %446, !dbg !2929

; <label>:446:                                    ; preds = %442, %438
  %447 = load i64, i64* %21, align 8, !dbg !2932
  %448 = add i64 %447, 1, !dbg !2932
  store i64 %448, i64* %21, align 8, !dbg !2932
  br label %449, !dbg !2932

; <label>:449:                                    ; preds = %446
  br label %450, !dbg !2933

; <label>:450:                                    ; preds = %449, %406
  br label %684, !dbg !2934

; <label>:451:                                    ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170
  br label %684, !dbg !2935

; <label>:452:                                    ; preds = %170
  call void @llvm.dbg.declare(metadata i64* %30, metadata !2936, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.declare(metadata i8* %31, metadata !2939, metadata !DIExpression()), !dbg !2940
  %453 = load i8, i8* %25, align 1, !dbg !2941
  %454 = trunc i8 %453 to i1, !dbg !2941
  br i1 %454, label %455, label %467, !dbg !2943

; <label>:455:                                    ; preds = %452
  store i64 1, i64* %30, align 8, !dbg !2944
  %456 = call i16** @__ctype_b_loc() #16, !dbg !2946
  %457 = load i16*, i16** %456, align 8, !dbg !2946
  %458 = load i8, i8* %27, align 1, !dbg !2946
  %459 = zext i8 %458 to i32, !dbg !2946
  %460 = sext i32 %459 to i64, !dbg !2946
  %461 = getelementptr inbounds i16, i16* %457, i64 %460, !dbg !2946
  %462 = load i16, i16* %461, align 2, !dbg !2946
  %463 = zext i16 %462 to i32, !dbg !2946
  %464 = and i32 %463, 16384, !dbg !2946
  %465 = icmp ne i32 %464, 0, !dbg !2947
  %466 = zext i1 %465 to i8, !dbg !2948
  store i8 %466, i8* %31, align 1, !dbg !2948
  br label %564, !dbg !2949

; <label>:467:                                    ; preds = %452
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %32, metadata !2950, metadata !DIExpression()), !dbg !2965
  %468 = bitcast %struct.__mbstate_t* %32 to i8*, !dbg !2966
  call void @llvm.memset.p0i8.i64(i8* %468, i8 0, i64 8, i32 4, i1 false), !dbg !2966
  store i64 0, i64* %30, align 8, !dbg !2967
  store i8 1, i8* %31, align 1, !dbg !2968
  %469 = load i64, i64* %14, align 8, !dbg !2969
  %470 = icmp eq i64 %469, -1, !dbg !2971
  br i1 %470, label %471, label %474, !dbg !2972

; <label>:471:                                    ; preds = %467
  %472 = load i8*, i8** %13, align 8, !dbg !2973
  %473 = call i64 @strlen(i8* %472) #14, !dbg !2974
  store i64 %473, i64* %14, align 8, !dbg !2975
  br label %474, !dbg !2976

; <label>:474:                                    ; preds = %471, %467
  br label %475, !dbg !2977, !llvm.loop !2978

; <label>:475:                                    ; preds = %559, %474
  call void @llvm.dbg.declare(metadata i32* %33, metadata !2980, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.declare(metadata i64* %34, metadata !2984, metadata !DIExpression()), !dbg !2985
  %476 = load i8*, i8** %13, align 8, !dbg !2986
  %477 = load i64, i64* %20, align 8, !dbg !2987
  %478 = load i64, i64* %30, align 8, !dbg !2988
  %479 = add i64 %477, %478, !dbg !2989
  %480 = getelementptr inbounds i8, i8* %476, i64 %479, !dbg !2986
  %481 = load i64, i64* %14, align 8, !dbg !2990
  %482 = load i64, i64* %20, align 8, !dbg !2991
  %483 = load i64, i64* %30, align 8, !dbg !2992
  %484 = add i64 %482, %483, !dbg !2993
  %485 = sub i64 %481, %484, !dbg !2994
  %486 = call i64 @mbrtowc(i32* %33, i8* %480, i64 %485, %struct.__mbstate_t* %32) #11, !dbg !2995
  store i64 %486, i64* %34, align 8, !dbg !2985
  %487 = load i64, i64* %34, align 8, !dbg !2996
  %488 = icmp eq i64 %487, 0, !dbg !2998
  br i1 %488, label %489, label %490, !dbg !2999

; <label>:489:                                    ; preds = %475
  br label %563, !dbg !3000

; <label>:490:                                    ; preds = %475
  %491 = load i64, i64* %34, align 8, !dbg !3001
  %492 = icmp eq i64 %491, -1, !dbg !3003
  br i1 %492, label %493, label %494, !dbg !3004

; <label>:493:                                    ; preds = %490
  store i8 0, i8* %31, align 1, !dbg !3005
  br label %563, !dbg !3007

; <label>:494:                                    ; preds = %490
  %495 = load i64, i64* %34, align 8, !dbg !3008
  %496 = icmp eq i64 %495, -2, !dbg !3010
  br i1 %496, label %497, label %519, !dbg !3011

; <label>:497:                                    ; preds = %494
  store i8 0, i8* %31, align 1, !dbg !3012
  br label %498, !dbg !3014

; <label>:498:                                    ; preds = %515, %497
  %499 = load i64, i64* %20, align 8, !dbg !3015
  %500 = load i64, i64* %30, align 8, !dbg !3016
  %501 = add i64 %499, %500, !dbg !3017
  %502 = load i64, i64* %14, align 8, !dbg !3018
  %503 = icmp ult i64 %501, %502, !dbg !3019
  br i1 %503, label %504, label %513, !dbg !3020

; <label>:504:                                    ; preds = %498
  %505 = load i8*, i8** %13, align 8, !dbg !3021
  %506 = load i64, i64* %20, align 8, !dbg !3022
  %507 = load i64, i64* %30, align 8, !dbg !3023
  %508 = add i64 %506, %507, !dbg !3024
  %509 = getelementptr inbounds i8, i8* %505, i64 %508, !dbg !3021
  %510 = load i8, i8* %509, align 1, !dbg !3021
  %511 = sext i8 %510 to i32, !dbg !3021
  %512 = icmp ne i32 %511, 0, !dbg !3020
  br label %513

; <label>:513:                                    ; preds = %504, %498
  %514 = phi i1 [ false, %498 ], [ %512, %504 ]
  br i1 %514, label %515, label %518, !dbg !3014

; <label>:515:                                    ; preds = %513
  %516 = load i64, i64* %30, align 8, !dbg !3025
  %517 = add i64 %516, 1, !dbg !3025
  store i64 %517, i64* %30, align 8, !dbg !3025
  br label %498, !dbg !3014, !llvm.loop !3026

; <label>:518:                                    ; preds = %513
  br label %563, !dbg !3027

; <label>:519:                                    ; preds = %494
  %520 = load i8, i8* %26, align 1, !dbg !3028
  %521 = trunc i8 %520 to i1, !dbg !3028
  br i1 %521, label %522, label %547, !dbg !3031

; <label>:522:                                    ; preds = %519
  %523 = load i32, i32* %15, align 4, !dbg !3032
  %524 = icmp eq i32 %523, 2, !dbg !3033
  br i1 %524, label %525, label %547, !dbg !3034

; <label>:525:                                    ; preds = %522
  call void @llvm.dbg.declare(metadata i64* %35, metadata !3035, metadata !DIExpression()), !dbg !3037
  store i64 1, i64* %35, align 8, !dbg !3038
  br label %526, !dbg !3040

; <label>:526:                                    ; preds = %543, %525
  %527 = load i64, i64* %35, align 8, !dbg !3041
  %528 = load i64, i64* %34, align 8, !dbg !3043
  %529 = icmp ult i64 %527, %528, !dbg !3044
  br i1 %529, label %530, label %546, !dbg !3045

; <label>:530:                                    ; preds = %526
  %531 = load i8*, i8** %13, align 8, !dbg !3046
  %532 = load i64, i64* %20, align 8, !dbg !3047
  %533 = load i64, i64* %30, align 8, !dbg !3048
  %534 = add i64 %532, %533, !dbg !3049
  %535 = load i64, i64* %35, align 8, !dbg !3050
  %536 = add i64 %534, %535, !dbg !3051
  %537 = getelementptr inbounds i8, i8* %531, i64 %536, !dbg !3046
  %538 = load i8, i8* %537, align 1, !dbg !3046
  %539 = sext i8 %538 to i32, !dbg !3046
  switch i32 %539, label %541 [
    i32 91, label %540
    i32 92, label %540
    i32 94, label %540
    i32 96, label %540
    i32 124, label %540
  ], !dbg !3052

; <label>:540:                                    ; preds = %530, %530, %530, %530, %530
  br label %796, !dbg !3053

; <label>:541:                                    ; preds = %530
  br label %542, !dbg !3055

; <label>:542:                                    ; preds = %541
  br label %543, !dbg !3056

; <label>:543:                                    ; preds = %542
  %544 = load i64, i64* %35, align 8, !dbg !3057
  %545 = add i64 %544, 1, !dbg !3057
  store i64 %545, i64* %35, align 8, !dbg !3057
  br label %526, !dbg !3058, !llvm.loop !3059

; <label>:546:                                    ; preds = %526
  br label %547, !dbg !3061

; <label>:547:                                    ; preds = %546, %522, %519
  %548 = load i32, i32* %33, align 4, !dbg !3062
  %549 = call i32 @iswprint(i32 %548) #11, !dbg !3064
  %550 = icmp ne i32 %549, 0, !dbg !3064
  br i1 %550, label %552, label %551, !dbg !3065

; <label>:551:                                    ; preds = %547
  store i8 0, i8* %31, align 1, !dbg !3066
  br label %552, !dbg !3067

; <label>:552:                                    ; preds = %551, %547
  %553 = load i64, i64* %34, align 8, !dbg !3068
  %554 = load i64, i64* %30, align 8, !dbg !3069
  %555 = add i64 %554, %553, !dbg !3069
  store i64 %555, i64* %30, align 8, !dbg !3069
  br label %556

; <label>:556:                                    ; preds = %552
  br label %557

; <label>:557:                                    ; preds = %556
  br label %558

; <label>:558:                                    ; preds = %557
  br label %559, !dbg !3070

; <label>:559:                                    ; preds = %558
  %560 = call i32 @mbsinit(%struct.__mbstate_t* %32) #14, !dbg !3071
  %561 = icmp ne i32 %560, 0, !dbg !3072
  %562 = xor i1 %561, true, !dbg !3072
  br i1 %562, label %475, label %563, !dbg !3070, !llvm.loop !2978

; <label>:563:                                    ; preds = %559, %518, %493, %489
  br label %564

; <label>:564:                                    ; preds = %563, %455
  %565 = load i64, i64* %30, align 8, !dbg !3073
  %566 = icmp ult i64 1, %565, !dbg !3075
  br i1 %566, label %573, label %567, !dbg !3076

; <label>:567:                                    ; preds = %564
  %568 = load i8, i8* %24, align 1, !dbg !3077
  %569 = trunc i8 %568 to i1, !dbg !3077
  br i1 %569, label %570, label %683, !dbg !3078

; <label>:570:                                    ; preds = %567
  %571 = load i8, i8* %31, align 1, !dbg !3079
  %572 = trunc i8 %571 to i1, !dbg !3079
  br i1 %572, label %683, label %573, !dbg !3080

; <label>:573:                                    ; preds = %570, %564
  call void @llvm.dbg.declare(metadata i64* %36, metadata !3081, metadata !DIExpression()), !dbg !3083
  %574 = load i64, i64* %20, align 8, !dbg !3084
  %575 = load i64, i64* %30, align 8, !dbg !3085
  %576 = add i64 %574, %575, !dbg !3086
  store i64 %576, i64* %36, align 8, !dbg !3083
  br label %577, !dbg !3087

; <label>:577:                                    ; preds = %676, %573
  %578 = load i8, i8* %24, align 1, !dbg !3088
  %579 = trunc i8 %578 to i1, !dbg !3088
  br i1 %579, label %580, label %640, !dbg !3093

; <label>:580:                                    ; preds = %577
  %581 = load i8, i8* %31, align 1, !dbg !3094
  %582 = trunc i8 %581 to i1, !dbg !3094
  br i1 %582, label %640, label %583, !dbg !3095

; <label>:583:                                    ; preds = %580
  %584 = load i8, i8* %26, align 1, !dbg !3096
  %585 = trunc i8 %584 to i1, !dbg !3096
  br i1 %585, label %586, label %587, !dbg !3099

; <label>:586:                                    ; preds = %583
  br label %796, !dbg !3100

; <label>:587:                                    ; preds = %583
  br label %588, !dbg !3101, !llvm.loop !3102

; <label>:588:                                    ; preds = %587
  %589 = load i64, i64* %21, align 8, !dbg !3103
  %590 = load i64, i64* %12, align 8, !dbg !3103
  %591 = icmp ult i64 %589, %590, !dbg !3103
  br i1 %591, label %592, label %596, !dbg !3106

; <label>:592:                                    ; preds = %588
  %593 = load i8*, i8** %11, align 8, !dbg !3103
  %594 = load i64, i64* %21, align 8, !dbg !3103
  %595 = getelementptr inbounds i8, i8* %593, i64 %594, !dbg !3103
  store i8 92, i8* %595, align 1, !dbg !3103
  br label %596, !dbg !3103

; <label>:596:                                    ; preds = %592, %588
  %597 = load i64, i64* %21, align 8, !dbg !3106
  %598 = add i64 %597, 1, !dbg !3106
  store i64 %598, i64* %21, align 8, !dbg !3106
  br label %599, !dbg !3106

; <label>:599:                                    ; preds = %596
  br label %600, !dbg !3107, !llvm.loop !3108

; <label>:600:                                    ; preds = %599
  %601 = load i64, i64* %21, align 8, !dbg !3109
  %602 = load i64, i64* %12, align 8, !dbg !3109
  %603 = icmp ult i64 %601, %602, !dbg !3109
  br i1 %603, label %604, label %613, !dbg !3112

; <label>:604:                                    ; preds = %600
  %605 = load i8, i8* %27, align 1, !dbg !3109
  %606 = zext i8 %605 to i32, !dbg !3109
  %607 = ashr i32 %606, 6, !dbg !3109
  %608 = add nsw i32 48, %607, !dbg !3109
  %609 = trunc i32 %608 to i8, !dbg !3109
  %610 = load i8*, i8** %11, align 8, !dbg !3109
  %611 = load i64, i64* %21, align 8, !dbg !3109
  %612 = getelementptr inbounds i8, i8* %610, i64 %611, !dbg !3109
  store i8 %609, i8* %612, align 1, !dbg !3109
  br label %613, !dbg !3109

; <label>:613:                                    ; preds = %604, %600
  %614 = load i64, i64* %21, align 8, !dbg !3112
  %615 = add i64 %614, 1, !dbg !3112
  store i64 %615, i64* %21, align 8, !dbg !3112
  br label %616, !dbg !3112

; <label>:616:                                    ; preds = %613
  br label %617, !dbg !3113, !llvm.loop !3114

; <label>:617:                                    ; preds = %616
  %618 = load i64, i64* %21, align 8, !dbg !3115
  %619 = load i64, i64* %12, align 8, !dbg !3115
  %620 = icmp ult i64 %618, %619, !dbg !3115
  br i1 %620, label %621, label %631, !dbg !3118

; <label>:621:                                    ; preds = %617
  %622 = load i8, i8* %27, align 1, !dbg !3115
  %623 = zext i8 %622 to i32, !dbg !3115
  %624 = ashr i32 %623, 3, !dbg !3115
  %625 = and i32 %624, 7, !dbg !3115
  %626 = add nsw i32 48, %625, !dbg !3115
  %627 = trunc i32 %626 to i8, !dbg !3115
  %628 = load i8*, i8** %11, align 8, !dbg !3115
  %629 = load i64, i64* %21, align 8, !dbg !3115
  %630 = getelementptr inbounds i8, i8* %628, i64 %629, !dbg !3115
  store i8 %627, i8* %630, align 1, !dbg !3115
  br label %631, !dbg !3115

; <label>:631:                                    ; preds = %621, %617
  %632 = load i64, i64* %21, align 8, !dbg !3118
  %633 = add i64 %632, 1, !dbg !3118
  store i64 %633, i64* %21, align 8, !dbg !3118
  br label %634, !dbg !3118

; <label>:634:                                    ; preds = %631
  %635 = load i8, i8* %27, align 1, !dbg !3119
  %636 = zext i8 %635 to i32, !dbg !3119
  %637 = and i32 %636, 7, !dbg !3120
  %638 = add nsw i32 48, %637, !dbg !3121
  %639 = trunc i32 %638 to i8, !dbg !3122
  store i8 %639, i8* %27, align 1, !dbg !3123
  br label %657, !dbg !3124

; <label>:640:                                    ; preds = %580, %577
  %641 = load i8, i8* %29, align 1, !dbg !3125
  %642 = trunc i8 %641 to i1, !dbg !3125
  br i1 %642, label %643, label %656, !dbg !3127

; <label>:643:                                    ; preds = %640
  br label %644, !dbg !3128, !llvm.loop !3130

; <label>:644:                                    ; preds = %643
  %645 = load i64, i64* %21, align 8, !dbg !3131
  %646 = load i64, i64* %12, align 8, !dbg !3131
  %647 = icmp ult i64 %645, %646, !dbg !3131
  br i1 %647, label %648, label %652, !dbg !3134

; <label>:648:                                    ; preds = %644
  %649 = load i8*, i8** %11, align 8, !dbg !3131
  %650 = load i64, i64* %21, align 8, !dbg !3131
  %651 = getelementptr inbounds i8, i8* %649, i64 %650, !dbg !3131
  store i8 92, i8* %651, align 1, !dbg !3131
  br label %652, !dbg !3131

; <label>:652:                                    ; preds = %648, %644
  %653 = load i64, i64* %21, align 8, !dbg !3134
  %654 = add i64 %653, 1, !dbg !3134
  store i64 %654, i64* %21, align 8, !dbg !3134
  br label %655, !dbg !3134

; <label>:655:                                    ; preds = %652
  store i8 0, i8* %29, align 1, !dbg !3135
  br label %656, !dbg !3136

; <label>:656:                                    ; preds = %655, %640
  br label %657

; <label>:657:                                    ; preds = %656, %634
  %658 = load i64, i64* %36, align 8, !dbg !3137
  %659 = load i64, i64* %20, align 8, !dbg !3139
  %660 = add i64 %659, 1, !dbg !3140
  %661 = icmp ule i64 %658, %660, !dbg !3141
  br i1 %661, label %662, label %663, !dbg !3142

; <label>:662:                                    ; preds = %657
  br label %682, !dbg !3143

; <label>:663:                                    ; preds = %657
  br label %664, !dbg !3144, !llvm.loop !3145

; <label>:664:                                    ; preds = %663
  %665 = load i64, i64* %21, align 8, !dbg !3146
  %666 = load i64, i64* %12, align 8, !dbg !3146
  %667 = icmp ult i64 %665, %666, !dbg !3146
  br i1 %667, label %668, label %673, !dbg !3149

; <label>:668:                                    ; preds = %664
  %669 = load i8, i8* %27, align 1, !dbg !3146
  %670 = load i8*, i8** %11, align 8, !dbg !3146
  %671 = load i64, i64* %21, align 8, !dbg !3146
  %672 = getelementptr inbounds i8, i8* %670, i64 %671, !dbg !3146
  store i8 %669, i8* %672, align 1, !dbg !3146
  br label %673, !dbg !3146

; <label>:673:                                    ; preds = %668, %664
  %674 = load i64, i64* %21, align 8, !dbg !3149
  %675 = add i64 %674, 1, !dbg !3149
  store i64 %675, i64* %21, align 8, !dbg !3149
  br label %676, !dbg !3149

; <label>:676:                                    ; preds = %673
  %677 = load i8*, i8** %13, align 8, !dbg !3150
  %678 = load i64, i64* %20, align 8, !dbg !3151
  %679 = add i64 %678, 1, !dbg !3151
  store i64 %679, i64* %20, align 8, !dbg !3151
  %680 = getelementptr inbounds i8, i8* %677, i64 %679, !dbg !3150
  %681 = load i8, i8* %680, align 1, !dbg !3150
  store i8 %681, i8* %27, align 1, !dbg !3152
  br label %577, !dbg !3153, !llvm.loop !3154

; <label>:682:                                    ; preds = %662
  br label %729, !dbg !3157

; <label>:683:                                    ; preds = %570, %567
  br label %684, !dbg !3158

; <label>:684:                                    ; preds = %683, %451, %450, %405, %396, %391, %378, %345, %249
  %685 = load i8, i8* %24, align 1, !dbg !3159
  %686 = trunc i8 %685 to i1, !dbg !3159
  br i1 %686, label %690, label %687, !dbg !3161

; <label>:687:                                    ; preds = %684
  %688 = load i8, i8* %26, align 1, !dbg !3162
  %689 = trunc i8 %688 to i1, !dbg !3162
  br i1 %689, label %690, label %707, !dbg !3163

; <label>:690:                                    ; preds = %687, %684
  %691 = load i32*, i32** %17, align 8, !dbg !3164
  %692 = icmp ne i32* %691, null, !dbg !3164
  br i1 %692, label %693, label %707, !dbg !3165

; <label>:693:                                    ; preds = %690
  %694 = load i32*, i32** %17, align 8, !dbg !3166
  %695 = load i8, i8* %27, align 1, !dbg !3167
  %696 = zext i8 %695 to i64, !dbg !3167
  %697 = udiv i64 %696, 32, !dbg !3168
  %698 = getelementptr inbounds i32, i32* %694, i64 %697, !dbg !3166
  %699 = load i32, i32* %698, align 4, !dbg !3166
  %700 = load i8, i8* %27, align 1, !dbg !3169
  %701 = zext i8 %700 to i64, !dbg !3169
  %702 = urem i64 %701, 32, !dbg !3170
  %703 = trunc i64 %702 to i32, !dbg !3171
  %704 = shl i32 1, %703, !dbg !3171
  %705 = and i32 %699, %704, !dbg !3172
  %706 = icmp ne i32 %705, 0, !dbg !3172
  br i1 %706, label %711, label %707, !dbg !3173

; <label>:707:                                    ; preds = %693, %690, %687
  %708 = load i8, i8* %29, align 1, !dbg !3174
  %709 = trunc i8 %708 to i1, !dbg !3174
  br i1 %709, label %711, label %710, !dbg !3175

; <label>:710:                                    ; preds = %707
  br label %729, !dbg !3176

; <label>:711:                                    ; preds = %707, %693
  br label %712, !dbg !3174

; <label>:712:                                    ; preds = %711, %376
  %713 = load i8, i8* %26, align 1, !dbg !3177
  %714 = trunc i8 %713 to i1, !dbg !3177
  br i1 %714, label %715, label %716, !dbg !3179

; <label>:715:                                    ; preds = %712
  br label %796, !dbg !3180

; <label>:716:                                    ; preds = %712
  br label %717, !dbg !3181, !llvm.loop !3182

; <label>:717:                                    ; preds = %716
  %718 = load i64, i64* %21, align 8, !dbg !3183
  %719 = load i64, i64* %12, align 8, !dbg !3183
  %720 = icmp ult i64 %718, %719, !dbg !3183
  br i1 %720, label %721, label %725, !dbg !3186

; <label>:721:                                    ; preds = %717
  %722 = load i8*, i8** %11, align 8, !dbg !3183
  %723 = load i64, i64* %21, align 8, !dbg !3183
  %724 = getelementptr inbounds i8, i8* %722, i64 %723, !dbg !3183
  store i8 92, i8* %724, align 1, !dbg !3183
  br label %725, !dbg !3183

; <label>:725:                                    ; preds = %721, %717
  %726 = load i64, i64* %21, align 8, !dbg !3186
  %727 = add i64 %726, 1, !dbg !3186
  store i64 %727, i64* %21, align 8, !dbg !3186
  br label %728, !dbg !3186

; <label>:728:                                    ; preds = %725
  br label %729, !dbg !3186

; <label>:729:                                    ; preds = %728, %710, %682, %363
  br label %730, !dbg !3187, !llvm.loop !3188

; <label>:730:                                    ; preds = %729
  %731 = load i64, i64* %21, align 8, !dbg !3189
  %732 = load i64, i64* %12, align 8, !dbg !3189
  %733 = icmp ult i64 %731, %732, !dbg !3189
  br i1 %733, label %734, label %739, !dbg !3192

; <label>:734:                                    ; preds = %730
  %735 = load i8, i8* %27, align 1, !dbg !3189
  %736 = load i8*, i8** %11, align 8, !dbg !3189
  %737 = load i64, i64* %21, align 8, !dbg !3189
  %738 = getelementptr inbounds i8, i8* %736, i64 %737, !dbg !3189
  store i8 %735, i8* %738, align 1, !dbg !3189
  br label %739, !dbg !3189

; <label>:739:                                    ; preds = %734, %730
  %740 = load i64, i64* %21, align 8, !dbg !3192
  %741 = add i64 %740, 1, !dbg !3192
  store i64 %741, i64* %21, align 8, !dbg !3192
  br label %742, !dbg !3192

; <label>:742:                                    ; preds = %739
  br label %743, !dbg !3193

; <label>:743:                                    ; preds = %742, %247
  %744 = load i64, i64* %20, align 8, !dbg !3194
  %745 = add i64 %744, 1, !dbg !3194
  store i64 %745, i64* %20, align 8, !dbg !3194
  br label %125, !dbg !3195, !llvm.loop !3196

; <label>:746:                                    ; preds = %141
  %747 = load i64, i64* %21, align 8, !dbg !3198
  %748 = icmp eq i64 %747, 0, !dbg !3200
  br i1 %748, label %749, label %756, !dbg !3201

; <label>:749:                                    ; preds = %746
  %750 = load i32, i32* %15, align 4, !dbg !3202
  %751 = icmp eq i32 %750, 2, !dbg !3203
  br i1 %751, label %752, label %756, !dbg !3204

; <label>:752:                                    ; preds = %749
  %753 = load i8, i8* %26, align 1, !dbg !3205
  %754 = trunc i8 %753 to i1, !dbg !3205
  br i1 %754, label %755, label %756, !dbg !3206

; <label>:755:                                    ; preds = %752
  br label %796, !dbg !3207

; <label>:756:                                    ; preds = %752, %749, %746
  %757 = load i8*, i8** %22, align 8, !dbg !3208
  %758 = icmp ne i8* %757, null, !dbg !3208
  br i1 %758, label %759, label %786, !dbg !3210

; <label>:759:                                    ; preds = %756
  %760 = load i8, i8* %26, align 1, !dbg !3211
  %761 = trunc i8 %760 to i1, !dbg !3211
  br i1 %761, label %786, label %762, !dbg !3212

; <label>:762:                                    ; preds = %759
  br label %763, !dbg !3213

; <label>:763:                                    ; preds = %782, %762
  %764 = load i8*, i8** %22, align 8, !dbg !3214
  %765 = load i8, i8* %764, align 1, !dbg !3217
  %766 = icmp ne i8 %765, 0, !dbg !3218
  br i1 %766, label %767, label %785, !dbg !3218

; <label>:767:                                    ; preds = %763
  br label %768, !dbg !3219, !llvm.loop !3220

; <label>:768:                                    ; preds = %767
  %769 = load i64, i64* %21, align 8, !dbg !3221
  %770 = load i64, i64* %12, align 8, !dbg !3221
  %771 = icmp ult i64 %769, %770, !dbg !3221
  br i1 %771, label %772, label %778, !dbg !3224

; <label>:772:                                    ; preds = %768
  %773 = load i8*, i8** %22, align 8, !dbg !3221
  %774 = load i8, i8* %773, align 1, !dbg !3221
  %775 = load i8*, i8** %11, align 8, !dbg !3221
  %776 = load i64, i64* %21, align 8, !dbg !3221
  %777 = getelementptr inbounds i8, i8* %775, i64 %776, !dbg !3221
  store i8 %774, i8* %777, align 1, !dbg !3221
  br label %778, !dbg !3221

; <label>:778:                                    ; preds = %772, %768
  %779 = load i64, i64* %21, align 8, !dbg !3224
  %780 = add i64 %779, 1, !dbg !3224
  store i64 %780, i64* %21, align 8, !dbg !3224
  br label %781, !dbg !3224

; <label>:781:                                    ; preds = %778
  br label %782, !dbg !3224

; <label>:782:                                    ; preds = %781
  %783 = load i8*, i8** %22, align 8, !dbg !3225
  %784 = getelementptr inbounds i8, i8* %783, i32 1, !dbg !3225
  store i8* %784, i8** %22, align 8, !dbg !3225
  br label %763, !dbg !3226, !llvm.loop !3227

; <label>:785:                                    ; preds = %763
  br label %786, !dbg !3228

; <label>:786:                                    ; preds = %785, %759, %756
  %787 = load i64, i64* %21, align 8, !dbg !3229
  %788 = load i64, i64* %12, align 8, !dbg !3231
  %789 = icmp ult i64 %787, %788, !dbg !3232
  br i1 %789, label %790, label %794, !dbg !3233

; <label>:790:                                    ; preds = %786
  %791 = load i8*, i8** %11, align 8, !dbg !3234
  %792 = load i64, i64* %21, align 8, !dbg !3235
  %793 = getelementptr inbounds i8, i8* %791, i64 %792, !dbg !3234
  store i8 0, i8* %793, align 1, !dbg !3236
  br label %794, !dbg !3234

; <label>:794:                                    ; preds = %790, %786
  %795 = load i64, i64* %21, align 8, !dbg !3237
  store i64 %795, i64* %10, align 8, !dbg !3238
  br label %807, !dbg !3238

; <label>:796:                                    ; preds = %755, %715, %586, %540, %412, %404, %371, %284, %255, %183, %168
  %797 = load i8*, i8** %11, align 8, !dbg !3239
  %798 = load i64, i64* %12, align 8, !dbg !3240
  %799 = load i8*, i8** %13, align 8, !dbg !3241
  %800 = load i64, i64* %14, align 8, !dbg !3242
  %801 = load i32, i32* %15, align 4, !dbg !3243
  %802 = load i32, i32* %16, align 4, !dbg !3244
  %803 = and i32 %802, -3, !dbg !3245
  %804 = load i8*, i8** %18, align 8, !dbg !3246
  %805 = load i8*, i8** %19, align 8, !dbg !3247
  %806 = call i64 @quotearg_buffer_restyled(i8* %797, i64 %798, i8* %799, i64 %800, i32 %801, i32 %803, i32* null, i8* %804, i8* %805), !dbg !3248
  store i64 %806, i64* %10, align 8, !dbg !3249
  br label %807, !dbg !3249

; <label>:807:                                    ; preds = %796, %794
  %808 = load i64, i64* %10, align 8, !dbg !3250
  ret i64 %808, !dbg !3250
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #5

; Function Attrs: noinline nounwind uwtable
define internal i8* @gettext_quote(i8*, i32) #2 !dbg !3251 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3254, metadata !DIExpression()), !dbg !3255
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3256, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3258, metadata !DIExpression()), !dbg !3259
  %8 = load i8*, i8** %4, align 8, !dbg !3260
  store i8* %8, i8** %6, align 8, !dbg !3259
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3261, metadata !DIExpression()), !dbg !3262
  %9 = load i8*, i8** %6, align 8, !dbg !3263
  %10 = load i8*, i8** %4, align 8, !dbg !3265
  %11 = icmp ne i8* %9, %10, !dbg !3266
  br i1 %11, label %12, label %14, !dbg !3267

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %6, align 8, !dbg !3268
  store i8* %13, i8** %3, align 8, !dbg !3269
  br label %44, !dbg !3269

; <label>:14:                                     ; preds = %2
  %15 = call i8* @locale_charset(), !dbg !3270
  store i8* %15, i8** %7, align 8, !dbg !3271
  %16 = load i8*, i8** %7, align 8, !dbg !3272
  %17 = call i32 @c_strcasecmp(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11.108, i32 0, i32 0)) #14, !dbg !3272
  %18 = icmp eq i32 %17, 0, !dbg !3272
  br i1 %18, label %19, label %27, !dbg !3274

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %4, align 8, !dbg !3275
  %21 = getelementptr inbounds i8, i8* %20, i64 0, !dbg !3275
  %22 = load i8, i8* %21, align 1, !dbg !3275
  %23 = sext i8 %22 to i32, !dbg !3275
  %24 = icmp eq i32 %23, 96, !dbg !3276
  %25 = zext i1 %24 to i64, !dbg !3275
  %26 = select i1 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12.109, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13.110, i32 0, i32 0), !dbg !3275
  store i8* %26, i8** %3, align 8, !dbg !3277
  br label %44, !dbg !3277

; <label>:27:                                     ; preds = %14
  %28 = load i8*, i8** %7, align 8, !dbg !3278
  %29 = call i32 @c_strcasecmp(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14.111, i32 0, i32 0)) #14, !dbg !3278
  %30 = icmp eq i32 %29, 0, !dbg !3278
  br i1 %30, label %31, label %39, !dbg !3280

; <label>:31:                                     ; preds = %27
  %32 = load i8*, i8** %4, align 8, !dbg !3281
  %33 = getelementptr inbounds i8, i8* %32, i64 0, !dbg !3281
  %34 = load i8, i8* %33, align 1, !dbg !3281
  %35 = sext i8 %34 to i32, !dbg !3281
  %36 = icmp eq i32 %35, 96, !dbg !3282
  %37 = zext i1 %36 to i64, !dbg !3281
  %38 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.112, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16.113, i32 0, i32 0), !dbg !3281
  store i8* %38, i8** %3, align 8, !dbg !3283
  br label %44, !dbg !3283

; <label>:39:                                     ; preds = %27
  %40 = load i32, i32* %5, align 4, !dbg !3284
  %41 = icmp eq i32 %40, 7, !dbg !3285
  %42 = zext i1 %41 to i64, !dbg !3284
  %43 = select i1 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.105, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.107, i32 0, i32 0), !dbg !3284
  store i8* %43, i8** %3, align 8, !dbg !3286
  br label %44, !dbg !3286

; <label>:44:                                     ; preds = %39, %31, %19, %12
  %45 = load i8*, i8** %3, align 8, !dbg !3287
  ret i8* %45, !dbg !3287
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) #5

; Function Attrs: nounwind
declare i32 @iswprint(i32) #5

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) #6

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) #2 !dbg !3288 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3291, metadata !DIExpression()), !dbg !3292
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3293, metadata !DIExpression()), !dbg !3294
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %6, metadata !3295, metadata !DIExpression()), !dbg !3296
  %7 = load i8*, i8** %4, align 8, !dbg !3297
  %8 = load i64, i64* %5, align 8, !dbg !3298
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8, !dbg !3299
  %10 = call i8* @quotearg_alloc_mem(i8* %7, i64 %8, i64* null, %struct.quoting_options* %9), !dbg !3300
  ret i8* %10, !dbg !3301
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) #2 !dbg !3302 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3305, metadata !DIExpression()), !dbg !3306
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3307, metadata !DIExpression()), !dbg !3308
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !3309, metadata !DIExpression()), !dbg !3310
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !3311, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %9, metadata !3313, metadata !DIExpression()), !dbg !3314
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3315
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !3315
  br i1 %15, label %16, label %18, !dbg !3315

; <label>:16:                                     ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3316
  br label %19, !dbg !3315

; <label>:18:                                     ; preds = %4
  br label %19, !dbg !3315

; <label>:19:                                     ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !3315
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8, !dbg !3314
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3317, metadata !DIExpression()), !dbg !3318
  %21 = call i32* @__errno_location() #16, !dbg !3319
  %22 = load i32, i32* %21, align 4, !dbg !3319
  store i32 %22, i32* %10, align 4, !dbg !3318
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3320, metadata !DIExpression()), !dbg !3321
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3322
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1, !dbg !3323
  %25 = load i32, i32* %24, align 4, !dbg !3323
  %26 = load i64*, i64** %7, align 8, !dbg !3324
  %27 = icmp ne i64* %26, null, !dbg !3324
  %28 = zext i1 %27 to i64, !dbg !3324
  %29 = select i1 %27, i32 0, i32 1, !dbg !3324
  %30 = or i32 %25, %29, !dbg !3325
  store i32 %30, i32* %11, align 4, !dbg !3321
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3326, metadata !DIExpression()), !dbg !3327
  %31 = load i8*, i8** %5, align 8, !dbg !3328
  %32 = load i64, i64* %6, align 8, !dbg !3329
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3330
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0, !dbg !3331
  %35 = load i32, i32* %34, align 8, !dbg !3331
  %36 = load i32, i32* %11, align 4, !dbg !3332
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3333
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2, !dbg !3334
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i32 0, i32 0, !dbg !3333
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3335
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3, !dbg !3336
  %42 = load i8*, i8** %41, align 8, !dbg !3336
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3337
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4, !dbg !3338
  %45 = load i8*, i8** %44, align 8, !dbg !3338
  %46 = call i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %31, i64 %32, i32 %35, i32 %36, i32* %39, i8* %42, i8* %45), !dbg !3339
  %47 = add i64 %46, 1, !dbg !3340
  store i64 %47, i64* %12, align 8, !dbg !3327
  call void @llvm.dbg.declare(metadata i8** %13, metadata !3341, metadata !DIExpression()), !dbg !3342
  %48 = load i64, i64* %12, align 8, !dbg !3343
  %49 = call noalias i8* @xcharalloc(i64 %48), !dbg !3344
  store i8* %49, i8** %13, align 8, !dbg !3342
  %50 = load i8*, i8** %13, align 8, !dbg !3345
  %51 = load i64, i64* %12, align 8, !dbg !3346
  %52 = load i8*, i8** %5, align 8, !dbg !3347
  %53 = load i64, i64* %6, align 8, !dbg !3348
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3349
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0, !dbg !3350
  %56 = load i32, i32* %55, align 8, !dbg !3350
  %57 = load i32, i32* %11, align 4, !dbg !3351
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3352
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2, !dbg !3353
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i32 0, i32 0, !dbg !3352
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3354
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !3355
  %63 = load i8*, i8** %62, align 8, !dbg !3355
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3356
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4, !dbg !3357
  %66 = load i8*, i8** %65, align 8, !dbg !3357
  %67 = call i64 @quotearg_buffer_restyled(i8* %50, i64 %51, i8* %52, i64 %53, i32 %56, i32 %57, i32* %60, i8* %63, i8* %66), !dbg !3358
  %68 = load i32, i32* %10, align 4, !dbg !3359
  %69 = call i32* @__errno_location() #16, !dbg !3360
  store i32 %68, i32* %69, align 4, !dbg !3361
  %70 = load i64*, i64** %7, align 8, !dbg !3362
  %71 = icmp ne i64* %70, null, !dbg !3362
  br i1 %71, label %72, label %76, !dbg !3364

; <label>:72:                                     ; preds = %19
  %73 = load i64, i64* %12, align 8, !dbg !3365
  %74 = sub i64 %73, 1, !dbg !3366
  %75 = load i64*, i64** %7, align 8, !dbg !3367
  store i64 %74, i64* %75, align 8, !dbg !3368
  br label %76, !dbg !3369

; <label>:76:                                     ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8, !dbg !3370
  ret i8* %77, !dbg !3371
}

; Function Attrs: noinline nounwind uwtable
define void @quotearg_free() #2 !dbg !3372 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %1, metadata !3373, metadata !DIExpression()), !dbg !3374
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3375
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8, !dbg !3374
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3376, metadata !DIExpression()), !dbg !3377
  store i32 1, i32* %2, align 4, !dbg !3378
  br label %4, !dbg !3380

; <label>:4:                                      ; preds = %15, %0
  %5 = load i32, i32* %2, align 4, !dbg !3381
  %6 = load i32, i32* @nslots, align 4, !dbg !3383
  %7 = icmp ult i32 %5, %6, !dbg !3384
  br i1 %7, label %8, label %18, !dbg !3385

; <label>:8:                                      ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3386
  %10 = load i32, i32* %2, align 4, !dbg !3387
  %11 = zext i32 %10 to i64, !dbg !3386
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11, !dbg !3386
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1, !dbg !3388
  %14 = load i8*, i8** %13, align 8, !dbg !3388
  call void @free(i8* %14) #11, !dbg !3389
  br label %15, !dbg !3389

; <label>:15:                                     ; preds = %8
  %16 = load i32, i32* %2, align 4, !dbg !3390
  %17 = add i32 %16, 1, !dbg !3390
  store i32 %17, i32* %2, align 4, !dbg !3390
  br label %4, !dbg !3391, !llvm.loop !3392

; <label>:18:                                     ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3394
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0, !dbg !3394
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1, !dbg !3396
  %22 = load i8*, i8** %21, align 8, !dbg !3396
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0), !dbg !3397
  br i1 %23, label %24, label %29, !dbg !3398

; <label>:24:                                     ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3399
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0, !dbg !3399
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1, !dbg !3401
  %28 = load i8*, i8** %27, align 8, !dbg !3401
  call void @free(i8* %28) #11, !dbg !3402
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !3403
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !3404
  br label %29, !dbg !3405

; <label>:29:                                     ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3406
  %31 = icmp ne %struct.slotvec* %30, @slotvec0, !dbg !3408
  br i1 %31, label %32, label %35, !dbg !3409

; <label>:32:                                     ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3410
  %34 = bitcast %struct.slotvec* %33 to i8*, !dbg !3410
  call void @free(i8* %34) #11, !dbg !3412
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3413
  br label %35, !dbg !3414

; <label>:35:                                     ; preds = %32, %29
  store i32 1, i32* @nslots, align 4, !dbg !3415
  ret void, !dbg !3416
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_n(i32, i8*) #2 !dbg !3417 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3420, metadata !DIExpression()), !dbg !3421
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3422, metadata !DIExpression()), !dbg !3423
  %5 = load i32, i32* %3, align 4, !dbg !3424
  %6 = load i8*, i8** %4, align 8, !dbg !3425
  %7 = call i8* @quotearg_n_options(i32 %5, i8* %6, i64 -1, %struct.quoting_options* @default_quoting_options), !dbg !3426
  ret i8* %7, !dbg !3427
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) #2 !dbg !3428 {
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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3431, metadata !DIExpression()), !dbg !3432
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3433, metadata !DIExpression()), !dbg !3434
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3435, metadata !DIExpression()), !dbg !3436
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !3437, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3439, metadata !DIExpression()), !dbg !3440
  %18 = call i32* @__errno_location() #16, !dbg !3441
  %19 = load i32, i32* %18, align 4, !dbg !3441
  store i32 %19, i32* %9, align 4, !dbg !3440
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3442, metadata !DIExpression()), !dbg !3443
  %20 = load i32, i32* %5, align 4, !dbg !3444
  store i32 %20, i32* %10, align 4, !dbg !3443
  call void @llvm.dbg.declare(metadata %struct.slotvec** %11, metadata !3445, metadata !DIExpression()), !dbg !3446
  %21 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3447
  store %struct.slotvec* %21, %struct.slotvec** %11, align 8, !dbg !3446
  %22 = load i32, i32* %5, align 4, !dbg !3448
  %23 = icmp slt i32 %22, 0, !dbg !3450
  br i1 %23, label %24, label %25, !dbg !3451

; <label>:24:                                     ; preds = %4
  call void @abort() #13, !dbg !3452
  unreachable, !dbg !3452

; <label>:25:                                     ; preds = %4
  %26 = load i32, i32* @nslots, align 4, !dbg !3453
  %27 = load i32, i32* %10, align 4, !dbg !3455
  %28 = icmp ule i32 %26, %27, !dbg !3456
  br i1 %28, label %29, label %70, !dbg !3457

; <label>:29:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3458, metadata !DIExpression()), !dbg !3460
  %30 = load i32, i32* %10, align 4, !dbg !3461
  %31 = add i32 %30, 1, !dbg !3462
  %32 = zext i32 %31 to i64, !dbg !3461
  store i64 %32, i64* %12, align 8, !dbg !3460
  call void @llvm.dbg.declare(metadata i8* %13, metadata !3463, metadata !DIExpression()), !dbg !3464
  %33 = load %struct.slotvec*, %struct.slotvec** %11, align 8, !dbg !3465
  %34 = icmp eq %struct.slotvec* %33, @slotvec0, !dbg !3466
  %35 = zext i1 %34 to i8, !dbg !3464
  store i8 %35, i8* %13, align 1, !dbg !3464
  %36 = load i64, i64* %12, align 8, !dbg !3467
  %37 = icmp ult i64 1152921504606846975, %36, !dbg !3467
  br i1 %37, label %38, label %39, !dbg !3469

; <label>:38:                                     ; preds = %29
  call void @xalloc_die() #15, !dbg !3470
  unreachable, !dbg !3470

; <label>:39:                                     ; preds = %29
  %40 = load i8, i8* %13, align 1, !dbg !3471
  %41 = trunc i8 %40 to i1, !dbg !3471
  br i1 %41, label %42, label %43, !dbg !3471

; <label>:42:                                     ; preds = %39
  br label %45, !dbg !3471

; <label>:43:                                     ; preds = %39
  %44 = load %struct.slotvec*, %struct.slotvec** %11, align 8, !dbg !3472
  br label %45, !dbg !3471

; <label>:45:                                     ; preds = %43, %42
  %46 = phi %struct.slotvec* [ null, %42 ], [ %44, %43 ], !dbg !3471
  %47 = bitcast %struct.slotvec* %46 to i8*, !dbg !3471
  %48 = load i64, i64* %12, align 8, !dbg !3473
  %49 = mul i64 %48, 16, !dbg !3474
  %50 = call i8* @xrealloc(i8* %47, i64 %49), !dbg !3475
  %51 = bitcast i8* %50 to %struct.slotvec*, !dbg !3475
  store %struct.slotvec* %51, %struct.slotvec** %11, align 8, !dbg !3476
  store %struct.slotvec* %51, %struct.slotvec** @slotvec, align 8, !dbg !3477
  %52 = load i8, i8* %13, align 1, !dbg !3478
  %53 = trunc i8 %52 to i1, !dbg !3478
  br i1 %53, label %54, label %57, !dbg !3480

; <label>:54:                                     ; preds = %45
  %55 = load %struct.slotvec*, %struct.slotvec** %11, align 8, !dbg !3481
  %56 = bitcast %struct.slotvec* %55 to i8*, !dbg !3482
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !3482
  br label %57, !dbg !3483

; <label>:57:                                     ; preds = %54, %45
  %58 = load %struct.slotvec*, %struct.slotvec** %11, align 8, !dbg !3484
  %59 = load i32, i32* @nslots, align 4, !dbg !3485
  %60 = zext i32 %59 to i64, !dbg !3486
  %61 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %58, i64 %60, !dbg !3486
  %62 = bitcast %struct.slotvec* %61 to i8*, !dbg !3487
  %63 = load i64, i64* %12, align 8, !dbg !3488
  %64 = load i32, i32* @nslots, align 4, !dbg !3489
  %65 = zext i32 %64 to i64, !dbg !3489
  %66 = sub i64 %63, %65, !dbg !3490
  %67 = mul i64 %66, 16, !dbg !3491
  call void @llvm.memset.p0i8.i64(i8* %62, i8 0, i64 %67, i32 8, i1 false), !dbg !3487
  %68 = load i64, i64* %12, align 8, !dbg !3492
  %69 = trunc i64 %68 to i32, !dbg !3492
  store i32 %69, i32* @nslots, align 4, !dbg !3493
  br label %70, !dbg !3494

; <label>:70:                                     ; preds = %57, %25
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3495, metadata !DIExpression()), !dbg !3497
  %71 = load %struct.slotvec*, %struct.slotvec** %11, align 8, !dbg !3498
  %72 = load i32, i32* %5, align 4, !dbg !3499
  %73 = sext i32 %72 to i64, !dbg !3498
  %74 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %71, i64 %73, !dbg !3498
  %75 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %74, i32 0, i32 0, !dbg !3500
  %76 = load i64, i64* %75, align 8, !dbg !3500
  store i64 %76, i64* %14, align 8, !dbg !3497
  call void @llvm.dbg.declare(metadata i8** %15, metadata !3501, metadata !DIExpression()), !dbg !3502
  %77 = load %struct.slotvec*, %struct.slotvec** %11, align 8, !dbg !3503
  %78 = load i32, i32* %5, align 4, !dbg !3504
  %79 = sext i32 %78 to i64, !dbg !3503
  %80 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %77, i64 %79, !dbg !3503
  %81 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %80, i32 0, i32 1, !dbg !3505
  %82 = load i8*, i8** %81, align 8, !dbg !3505
  store i8* %82, i8** %15, align 8, !dbg !3502
  call void @llvm.dbg.declare(metadata i32* %16, metadata !3506, metadata !DIExpression()), !dbg !3507
  %83 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3508
  %84 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %83, i32 0, i32 1, !dbg !3509
  %85 = load i32, i32* %84, align 4, !dbg !3509
  %86 = or i32 %85, 1, !dbg !3510
  store i32 %86, i32* %16, align 4, !dbg !3507
  call void @llvm.dbg.declare(metadata i64* %17, metadata !3511, metadata !DIExpression()), !dbg !3512
  %87 = load i8*, i8** %15, align 8, !dbg !3513
  %88 = load i64, i64* %14, align 8, !dbg !3514
  %89 = load i8*, i8** %6, align 8, !dbg !3515
  %90 = load i64, i64* %7, align 8, !dbg !3516
  %91 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3517
  %92 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %91, i32 0, i32 0, !dbg !3518
  %93 = load i32, i32* %92, align 8, !dbg !3518
  %94 = load i32, i32* %16, align 4, !dbg !3519
  %95 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3520
  %96 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %95, i32 0, i32 2, !dbg !3521
  %97 = getelementptr inbounds [8 x i32], [8 x i32]* %96, i32 0, i32 0, !dbg !3520
  %98 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3522
  %99 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %98, i32 0, i32 3, !dbg !3523
  %100 = load i8*, i8** %99, align 8, !dbg !3523
  %101 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3524
  %102 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %101, i32 0, i32 4, !dbg !3525
  %103 = load i8*, i8** %102, align 8, !dbg !3525
  %104 = call i64 @quotearg_buffer_restyled(i8* %87, i64 %88, i8* %89, i64 %90, i32 %93, i32 %94, i32* %97, i8* %100, i8* %103), !dbg !3526
  store i64 %104, i64* %17, align 8, !dbg !3512
  %105 = load i64, i64* %14, align 8, !dbg !3527
  %106 = load i64, i64* %17, align 8, !dbg !3529
  %107 = icmp ule i64 %105, %106, !dbg !3530
  br i1 %107, label %108, label %146, !dbg !3531

; <label>:108:                                    ; preds = %70
  %109 = load i64, i64* %17, align 8, !dbg !3532
  %110 = add i64 %109, 1, !dbg !3534
  store i64 %110, i64* %14, align 8, !dbg !3535
  %111 = load %struct.slotvec*, %struct.slotvec** %11, align 8, !dbg !3536
  %112 = load i32, i32* %5, align 4, !dbg !3537
  %113 = sext i32 %112 to i64, !dbg !3536
  %114 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %111, i64 %113, !dbg !3536
  %115 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %114, i32 0, i32 0, !dbg !3538
  store i64 %110, i64* %115, align 8, !dbg !3539
  %116 = load i8*, i8** %15, align 8, !dbg !3540
  %117 = icmp ne i8* %116, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0), !dbg !3542
  br i1 %117, label %118, label %120, !dbg !3543

; <label>:118:                                    ; preds = %108
  %119 = load i8*, i8** %15, align 8, !dbg !3544
  call void @free(i8* %119) #11, !dbg !3545
  br label %120, !dbg !3545

; <label>:120:                                    ; preds = %118, %108
  %121 = load i64, i64* %14, align 8, !dbg !3546
  %122 = call noalias i8* @xcharalloc(i64 %121), !dbg !3547
  store i8* %122, i8** %15, align 8, !dbg !3548
  %123 = load %struct.slotvec*, %struct.slotvec** %11, align 8, !dbg !3549
  %124 = load i32, i32* %5, align 4, !dbg !3550
  %125 = sext i32 %124 to i64, !dbg !3549
  %126 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %123, i64 %125, !dbg !3549
  %127 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %126, i32 0, i32 1, !dbg !3551
  store i8* %122, i8** %127, align 8, !dbg !3552
  %128 = load i8*, i8** %15, align 8, !dbg !3553
  %129 = load i64, i64* %14, align 8, !dbg !3554
  %130 = load i8*, i8** %6, align 8, !dbg !3555
  %131 = load i64, i64* %7, align 8, !dbg !3556
  %132 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3557
  %133 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %132, i32 0, i32 0, !dbg !3558
  %134 = load i32, i32* %133, align 8, !dbg !3558
  %135 = load i32, i32* %16, align 4, !dbg !3559
  %136 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3560
  %137 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %136, i32 0, i32 2, !dbg !3561
  %138 = getelementptr inbounds [8 x i32], [8 x i32]* %137, i32 0, i32 0, !dbg !3560
  %139 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3562
  %140 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %139, i32 0, i32 3, !dbg !3563
  %141 = load i8*, i8** %140, align 8, !dbg !3563
  %142 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3564
  %143 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %142, i32 0, i32 4, !dbg !3565
  %144 = load i8*, i8** %143, align 8, !dbg !3565
  %145 = call i64 @quotearg_buffer_restyled(i8* %128, i64 %129, i8* %130, i64 %131, i32 %134, i32 %135, i32* %138, i8* %141, i8* %144), !dbg !3566
  br label %146, !dbg !3567

; <label>:146:                                    ; preds = %120, %70
  %147 = load i32, i32* %9, align 4, !dbg !3568
  %148 = call i32* @__errno_location() #16, !dbg !3569
  store i32 %147, i32* %148, align 4, !dbg !3570
  %149 = load i8*, i8** %15, align 8, !dbg !3571
  ret i8* %149, !dbg !3572
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #10

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) #2 !dbg !3573 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3576, metadata !DIExpression()), !dbg !3577
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3578, metadata !DIExpression()), !dbg !3579
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3580, metadata !DIExpression()), !dbg !3581
  %7 = load i32, i32* %4, align 4, !dbg !3582
  %8 = load i8*, i8** %5, align 8, !dbg !3583
  %9 = load i64, i64* %6, align 8, !dbg !3584
  %10 = call i8* @quotearg_n_options(i32 %7, i8* %8, i64 %9, %struct.quoting_options* @default_quoting_options), !dbg !3585
  ret i8* %10, !dbg !3586
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg(i8*) #2 !dbg !3587 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3588, metadata !DIExpression()), !dbg !3589
  %3 = load i8*, i8** %2, align 8, !dbg !3590
  %4 = call i8* @quotearg_n(i32 0, i8* %3), !dbg !3591
  ret i8* %4, !dbg !3592
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_mem(i8*, i64) #2 !dbg !3593 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3596, metadata !DIExpression()), !dbg !3597
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3598, metadata !DIExpression()), !dbg !3599
  %5 = load i8*, i8** %3, align 8, !dbg !3600
  %6 = load i64, i64* %4, align 8, !dbg !3601
  %7 = call i8* @quotearg_n_mem(i32 0, i8* %5, i64 %6), !dbg !3602
  ret i8* %7, !dbg !3603
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_n_style(i32, i32, i8*) #2 !dbg !3604 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3607, metadata !DIExpression()), !dbg !3608
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3609, metadata !DIExpression()), !dbg !3610
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3611, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3613, metadata !DIExpression()), !dbg !3614
  %8 = load i32, i32* %5, align 4, !dbg !3615
  call void @quoting_options_from_style(%struct.quoting_options* sret %7, i32 %8), !dbg !3616
  %9 = load i32, i32* %4, align 4, !dbg !3617
  %10 = load i8*, i8** %6, align 8, !dbg !3618
  %11 = call i8* @quotearg_n_options(i32 %9, i8* %10, i64 -1, %struct.quoting_options* %7), !dbg !3619
  ret i8* %11, !dbg !3620
}

; Function Attrs: noinline nounwind uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret, i32) #2 !dbg !3621 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options, align 8
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3624, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3626, metadata !DIExpression()), !dbg !3627
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3627
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 56, i32 8, i1 false), !dbg !3627
  %6 = load i32, i32* %3, align 4, !dbg !3628
  %7 = icmp eq i32 %6, 8, !dbg !3630
  br i1 %7, label %8, label %9, !dbg !3631

; <label>:8:                                      ; preds = %2
  call void @abort() #13, !dbg !3632
  unreachable, !dbg !3632

; <label>:9:                                      ; preds = %2
  %10 = load i32, i32* %3, align 4, !dbg !3633
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i32 0, i32 0, !dbg !3634
  store i32 %10, i32* %11, align 8, !dbg !3635
  %12 = bitcast %struct.quoting_options* %0 to i8*, !dbg !3636
  %13 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3636
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 56, i32 8, i1 false), !dbg !3636
  ret void, !dbg !3637
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) #2 !dbg !3638 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3641, metadata !DIExpression()), !dbg !3642
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3643, metadata !DIExpression()), !dbg !3644
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3645, metadata !DIExpression()), !dbg !3646
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3647, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %9, metadata !3649, metadata !DIExpression()), !dbg !3650
  %10 = load i32, i32* %6, align 4, !dbg !3651
  call void @quoting_options_from_style(%struct.quoting_options* sret %9, i32 %10), !dbg !3652
  %11 = load i32, i32* %5, align 4, !dbg !3653
  %12 = load i8*, i8** %7, align 8, !dbg !3654
  %13 = load i64, i64* %8, align 8, !dbg !3655
  %14 = call i8* @quotearg_n_options(i32 %11, i8* %12, i64 %13, %struct.quoting_options* %9), !dbg !3656
  ret i8* %14, !dbg !3657
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_style(i32, i8*) #2 !dbg !3658 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3661, metadata !DIExpression()), !dbg !3662
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3663, metadata !DIExpression()), !dbg !3664
  %5 = load i32, i32* %3, align 4, !dbg !3665
  %6 = load i8*, i8** %4, align 8, !dbg !3666
  %7 = call i8* @quotearg_n_style(i32 0, i32 %5, i8* %6), !dbg !3667
  ret i8* %7, !dbg !3668
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) #2 !dbg !3669 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3672, metadata !DIExpression()), !dbg !3673
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3674, metadata !DIExpression()), !dbg !3675
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3676, metadata !DIExpression()), !dbg !3677
  %7 = load i32, i32* %4, align 4, !dbg !3678
  %8 = load i8*, i8** %5, align 8, !dbg !3679
  %9 = load i64, i64* %6, align 8, !dbg !3680
  %10 = call i8* @quotearg_n_style_mem(i32 0, i32 %7, i8* %8, i64 %9), !dbg !3681
  ret i8* %10, !dbg !3682
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) #2 !dbg !3683 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3686, metadata !DIExpression()), !dbg !3687
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3688, metadata !DIExpression()), !dbg !3689
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3690, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3692, metadata !DIExpression()), !dbg !3693
  %8 = bitcast %struct.quoting_options* %7 to i8*, !dbg !3694
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3694
  %9 = load i8, i8* %6, align 1, !dbg !3695
  %10 = call i32 @set_char_quoting(%struct.quoting_options* %7, i8 signext %9, i32 1), !dbg !3696
  %11 = load i8*, i8** %4, align 8, !dbg !3697
  %12 = load i64, i64* %5, align 8, !dbg !3698
  %13 = call i8* @quotearg_n_options(i32 0, i8* %11, i64 %12, %struct.quoting_options* %7), !dbg !3699
  ret i8* %13, !dbg !3700
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_char(i8*, i8 signext) #2 !dbg !3701 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3704, metadata !DIExpression()), !dbg !3705
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3706, metadata !DIExpression()), !dbg !3707
  %5 = load i8*, i8** %3, align 8, !dbg !3708
  %6 = load i8, i8* %4, align 1, !dbg !3709
  %7 = call i8* @quotearg_char_mem(i8* %5, i64 -1, i8 signext %6), !dbg !3710
  ret i8* %7, !dbg !3711
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_colon(i8*) #2 !dbg !3712 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3713, metadata !DIExpression()), !dbg !3714
  %3 = load i8*, i8** %2, align 8, !dbg !3715
  %4 = call i8* @quotearg_char(i8* %3, i8 signext 58), !dbg !3716
  ret i8* %4, !dbg !3717
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_colon_mem(i8*, i64) #2 !dbg !3718 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3719, metadata !DIExpression()), !dbg !3720
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3721, metadata !DIExpression()), !dbg !3722
  %5 = load i8*, i8** %3, align 8, !dbg !3723
  %6 = load i64, i64* %4, align 8, !dbg !3724
  %7 = call i8* @quotearg_char_mem(i8* %5, i64 %6, i8 signext 58), !dbg !3725
  ret i8* %7, !dbg !3726
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) #2 !dbg !3727 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3730, metadata !DIExpression()), !dbg !3731
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3732, metadata !DIExpression()), !dbg !3733
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3734, metadata !DIExpression()), !dbg !3735
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3736, metadata !DIExpression()), !dbg !3737
  %9 = load i32, i32* %5, align 4, !dbg !3738
  %10 = load i8*, i8** %6, align 8, !dbg !3739
  %11 = load i8*, i8** %7, align 8, !dbg !3740
  %12 = load i8*, i8** %8, align 8, !dbg !3741
  %13 = call i8* @quotearg_n_custom_mem(i32 %9, i8* %10, i8* %11, i8* %12, i64 -1), !dbg !3742
  ret i8* %13, !dbg !3743
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) #2 !dbg !3744 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3747, metadata !DIExpression()), !dbg !3748
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3749, metadata !DIExpression()), !dbg !3750
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3751, metadata !DIExpression()), !dbg !3752
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3753, metadata !DIExpression()), !dbg !3754
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3755, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %11, metadata !3757, metadata !DIExpression()), !dbg !3758
  %12 = bitcast %struct.quoting_options* %11 to i8*, !dbg !3759
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3759
  %13 = load i8*, i8** %7, align 8, !dbg !3760
  %14 = load i8*, i8** %8, align 8, !dbg !3761
  call void @set_custom_quoting(%struct.quoting_options* %11, i8* %13, i8* %14), !dbg !3762
  %15 = load i32, i32* %6, align 4, !dbg !3763
  %16 = load i8*, i8** %9, align 8, !dbg !3764
  %17 = load i64, i64* %10, align 8, !dbg !3765
  %18 = call i8* @quotearg_n_options(i32 %15, i8* %16, i64 %17, %struct.quoting_options* %11), !dbg !3766
  ret i8* %18, !dbg !3767
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) #2 !dbg !3768 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3771, metadata !DIExpression()), !dbg !3772
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3773, metadata !DIExpression()), !dbg !3774
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3775, metadata !DIExpression()), !dbg !3776
  %7 = load i8*, i8** %4, align 8, !dbg !3777
  %8 = load i8*, i8** %5, align 8, !dbg !3778
  %9 = load i8*, i8** %6, align 8, !dbg !3779
  %10 = call i8* @quotearg_n_custom(i32 0, i8* %7, i8* %8, i8* %9), !dbg !3780
  ret i8* %10, !dbg !3781
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) #2 !dbg !3782 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3785, metadata !DIExpression()), !dbg !3786
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3787, metadata !DIExpression()), !dbg !3788
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3789, metadata !DIExpression()), !dbg !3790
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3791, metadata !DIExpression()), !dbg !3792
  %9 = load i8*, i8** %5, align 8, !dbg !3793
  %10 = load i8*, i8** %6, align 8, !dbg !3794
  %11 = load i8*, i8** %7, align 8, !dbg !3795
  %12 = load i64, i64* %8, align 8, !dbg !3796
  %13 = call i8* @quotearg_n_custom_mem(i32 0, i8* %9, i8* %10, i8* %11, i64 %12), !dbg !3797
  ret i8* %13, !dbg !3798
}

; Function Attrs: noinline nounwind uwtable
define i8* @quote_n(i32, i8*) #2 !dbg !3799 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3802, metadata !DIExpression()), !dbg !3803
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3804, metadata !DIExpression()), !dbg !3805
  %5 = load i32, i32* %3, align 4, !dbg !3806
  %6 = load i8*, i8** %4, align 8, !dbg !3807
  %7 = call i8* @quotearg_n_options(i32 %5, i8* %6, i64 -1, %struct.quoting_options* @quote_quoting_options), !dbg !3808
  ret i8* %7, !dbg !3809
}

; Function Attrs: noinline nounwind uwtable
define i8* @quote(i8*) #2 !dbg !3810 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3813, metadata !DIExpression()), !dbg !3814
  %3 = load i8*, i8** %2, align 8, !dbg !3815
  %4 = call i8* @quote_n(i32 0, i8* %3), !dbg !3816
  ret i8* %4, !dbg !3817
}

; Function Attrs: noinline nounwind uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8**, i64) #2 !dbg !3818 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !3861, metadata !DIExpression()), !dbg !3862
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3863, metadata !DIExpression()), !dbg !3864
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3865, metadata !DIExpression()), !dbg !3866
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3867, metadata !DIExpression()), !dbg !3868
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !3869, metadata !DIExpression()), !dbg !3870
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3871, metadata !DIExpression()), !dbg !3872
  %13 = load i8*, i8** %8, align 8, !dbg !3873
  %14 = icmp ne i8* %13, null, !dbg !3873
  br i1 %14, label %15, label %21, !dbg !3875

; <label>:15:                                     ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3876
  %17 = load i8*, i8** %8, align 8, !dbg !3877
  %18 = load i8*, i8** %9, align 8, !dbg !3878
  %19 = load i8*, i8** %10, align 8, !dbg !3879
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.122, i32 0, i32 0), i8* %17, i8* %18, i8* %19), !dbg !3880
  br label %26, !dbg !3880

; <label>:21:                                     ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3881
  %23 = load i8*, i8** %9, align 8, !dbg !3882
  %24 = load i8*, i8** %10, align 8, !dbg !3883
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.123, i32 0, i32 0), i8* %23, i8* %24), !dbg !3884
  br label %26

; <label>:26:                                     ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3885
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.124, i32 0, i32 0), i32 2012), !dbg !3886
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3887
  %30 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.125, i32 0, i32 0), %struct._IO_FILE* %29), !dbg !3887
  %31 = load i64, i64* %12, align 8, !dbg !3888
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
  ], !dbg !3889

; <label>:32:                                     ; preds = %26
  call void @abort() #13, !dbg !3890
  unreachable, !dbg !3890

; <label>:33:                                     ; preds = %26
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3892
  %35 = load i8**, i8*** %11, align 8, !dbg !3893
  %36 = getelementptr inbounds i8*, i8** %35, i64 0, !dbg !3893
  %37 = load i8*, i8** %36, align 8, !dbg !3893
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.126, i32 0, i32 0), i8* %37), !dbg !3894
  br label %225, !dbg !3895

; <label>:39:                                     ; preds = %26
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3896
  %41 = load i8**, i8*** %11, align 8, !dbg !3897
  %42 = getelementptr inbounds i8*, i8** %41, i64 0, !dbg !3897
  %43 = load i8*, i8** %42, align 8, !dbg !3897
  %44 = load i8**, i8*** %11, align 8, !dbg !3898
  %45 = getelementptr inbounds i8*, i8** %44, i64 1, !dbg !3898
  %46 = load i8*, i8** %45, align 8, !dbg !3898
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.127, i32 0, i32 0), i8* %43, i8* %46), !dbg !3899
  br label %225, !dbg !3900

; <label>:48:                                     ; preds = %26
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3901
  %50 = load i8**, i8*** %11, align 8, !dbg !3902
  %51 = getelementptr inbounds i8*, i8** %50, i64 0, !dbg !3902
  %52 = load i8*, i8** %51, align 8, !dbg !3902
  %53 = load i8**, i8*** %11, align 8, !dbg !3903
  %54 = getelementptr inbounds i8*, i8** %53, i64 1, !dbg !3903
  %55 = load i8*, i8** %54, align 8, !dbg !3903
  %56 = load i8**, i8*** %11, align 8, !dbg !3904
  %57 = getelementptr inbounds i8*, i8** %56, i64 2, !dbg !3904
  %58 = load i8*, i8** %57, align 8, !dbg !3904
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.128, i32 0, i32 0), i8* %52, i8* %55, i8* %58), !dbg !3905
  br label %225, !dbg !3906

; <label>:60:                                     ; preds = %26
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3907
  %62 = load i8**, i8*** %11, align 8, !dbg !3908
  %63 = getelementptr inbounds i8*, i8** %62, i64 0, !dbg !3908
  %64 = load i8*, i8** %63, align 8, !dbg !3908
  %65 = load i8**, i8*** %11, align 8, !dbg !3909
  %66 = getelementptr inbounds i8*, i8** %65, i64 1, !dbg !3909
  %67 = load i8*, i8** %66, align 8, !dbg !3909
  %68 = load i8**, i8*** %11, align 8, !dbg !3910
  %69 = getelementptr inbounds i8*, i8** %68, i64 2, !dbg !3910
  %70 = load i8*, i8** %69, align 8, !dbg !3910
  %71 = load i8**, i8*** %11, align 8, !dbg !3911
  %72 = getelementptr inbounds i8*, i8** %71, i64 3, !dbg !3911
  %73 = load i8*, i8** %72, align 8, !dbg !3911
  %74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.129, i32 0, i32 0), i8* %64, i8* %67, i8* %70, i8* %73), !dbg !3912
  br label %225, !dbg !3913

; <label>:75:                                     ; preds = %26
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3914
  %77 = load i8**, i8*** %11, align 8, !dbg !3915
  %78 = getelementptr inbounds i8*, i8** %77, i64 0, !dbg !3915
  %79 = load i8*, i8** %78, align 8, !dbg !3915
  %80 = load i8**, i8*** %11, align 8, !dbg !3916
  %81 = getelementptr inbounds i8*, i8** %80, i64 1, !dbg !3916
  %82 = load i8*, i8** %81, align 8, !dbg !3916
  %83 = load i8**, i8*** %11, align 8, !dbg !3917
  %84 = getelementptr inbounds i8*, i8** %83, i64 2, !dbg !3917
  %85 = load i8*, i8** %84, align 8, !dbg !3917
  %86 = load i8**, i8*** %11, align 8, !dbg !3918
  %87 = getelementptr inbounds i8*, i8** %86, i64 3, !dbg !3918
  %88 = load i8*, i8** %87, align 8, !dbg !3918
  %89 = load i8**, i8*** %11, align 8, !dbg !3919
  %90 = getelementptr inbounds i8*, i8** %89, i64 4, !dbg !3919
  %91 = load i8*, i8** %90, align 8, !dbg !3919
  %92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.130, i32 0, i32 0), i8* %79, i8* %82, i8* %85, i8* %88, i8* %91), !dbg !3920
  br label %225, !dbg !3921

; <label>:93:                                     ; preds = %26
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3922
  %95 = load i8**, i8*** %11, align 8, !dbg !3923
  %96 = getelementptr inbounds i8*, i8** %95, i64 0, !dbg !3923
  %97 = load i8*, i8** %96, align 8, !dbg !3923
  %98 = load i8**, i8*** %11, align 8, !dbg !3924
  %99 = getelementptr inbounds i8*, i8** %98, i64 1, !dbg !3924
  %100 = load i8*, i8** %99, align 8, !dbg !3924
  %101 = load i8**, i8*** %11, align 8, !dbg !3925
  %102 = getelementptr inbounds i8*, i8** %101, i64 2, !dbg !3925
  %103 = load i8*, i8** %102, align 8, !dbg !3925
  %104 = load i8**, i8*** %11, align 8, !dbg !3926
  %105 = getelementptr inbounds i8*, i8** %104, i64 3, !dbg !3926
  %106 = load i8*, i8** %105, align 8, !dbg !3926
  %107 = load i8**, i8*** %11, align 8, !dbg !3927
  %108 = getelementptr inbounds i8*, i8** %107, i64 4, !dbg !3927
  %109 = load i8*, i8** %108, align 8, !dbg !3927
  %110 = load i8**, i8*** %11, align 8, !dbg !3928
  %111 = getelementptr inbounds i8*, i8** %110, i64 5, !dbg !3928
  %112 = load i8*, i8** %111, align 8, !dbg !3928
  %113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %94, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.131, i32 0, i32 0), i8* %97, i8* %100, i8* %103, i8* %106, i8* %109, i8* %112), !dbg !3929
  br label %225, !dbg !3930

; <label>:114:                                    ; preds = %26
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3931
  %116 = load i8**, i8*** %11, align 8, !dbg !3932
  %117 = getelementptr inbounds i8*, i8** %116, i64 0, !dbg !3932
  %118 = load i8*, i8** %117, align 8, !dbg !3932
  %119 = load i8**, i8*** %11, align 8, !dbg !3933
  %120 = getelementptr inbounds i8*, i8** %119, i64 1, !dbg !3933
  %121 = load i8*, i8** %120, align 8, !dbg !3933
  %122 = load i8**, i8*** %11, align 8, !dbg !3934
  %123 = getelementptr inbounds i8*, i8** %122, i64 2, !dbg !3934
  %124 = load i8*, i8** %123, align 8, !dbg !3934
  %125 = load i8**, i8*** %11, align 8, !dbg !3935
  %126 = getelementptr inbounds i8*, i8** %125, i64 3, !dbg !3935
  %127 = load i8*, i8** %126, align 8, !dbg !3935
  %128 = load i8**, i8*** %11, align 8, !dbg !3936
  %129 = getelementptr inbounds i8*, i8** %128, i64 4, !dbg !3936
  %130 = load i8*, i8** %129, align 8, !dbg !3936
  %131 = load i8**, i8*** %11, align 8, !dbg !3937
  %132 = getelementptr inbounds i8*, i8** %131, i64 5, !dbg !3937
  %133 = load i8*, i8** %132, align 8, !dbg !3937
  %134 = load i8**, i8*** %11, align 8, !dbg !3938
  %135 = getelementptr inbounds i8*, i8** %134, i64 6, !dbg !3938
  %136 = load i8*, i8** %135, align 8, !dbg !3938
  %137 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %115, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.132, i32 0, i32 0), i8* %118, i8* %121, i8* %124, i8* %127, i8* %130, i8* %133, i8* %136), !dbg !3939
  br label %225, !dbg !3940

; <label>:138:                                    ; preds = %26
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3941
  %140 = load i8**, i8*** %11, align 8, !dbg !3942
  %141 = getelementptr inbounds i8*, i8** %140, i64 0, !dbg !3942
  %142 = load i8*, i8** %141, align 8, !dbg !3942
  %143 = load i8**, i8*** %11, align 8, !dbg !3943
  %144 = getelementptr inbounds i8*, i8** %143, i64 1, !dbg !3943
  %145 = load i8*, i8** %144, align 8, !dbg !3943
  %146 = load i8**, i8*** %11, align 8, !dbg !3944
  %147 = getelementptr inbounds i8*, i8** %146, i64 2, !dbg !3944
  %148 = load i8*, i8** %147, align 8, !dbg !3944
  %149 = load i8**, i8*** %11, align 8, !dbg !3945
  %150 = getelementptr inbounds i8*, i8** %149, i64 3, !dbg !3945
  %151 = load i8*, i8** %150, align 8, !dbg !3945
  %152 = load i8**, i8*** %11, align 8, !dbg !3946
  %153 = getelementptr inbounds i8*, i8** %152, i64 4, !dbg !3946
  %154 = load i8*, i8** %153, align 8, !dbg !3946
  %155 = load i8**, i8*** %11, align 8, !dbg !3947
  %156 = getelementptr inbounds i8*, i8** %155, i64 5, !dbg !3947
  %157 = load i8*, i8** %156, align 8, !dbg !3947
  %158 = load i8**, i8*** %11, align 8, !dbg !3948
  %159 = getelementptr inbounds i8*, i8** %158, i64 6, !dbg !3948
  %160 = load i8*, i8** %159, align 8, !dbg !3948
  %161 = load i8**, i8*** %11, align 8, !dbg !3949
  %162 = getelementptr inbounds i8*, i8** %161, i64 7, !dbg !3949
  %163 = load i8*, i8** %162, align 8, !dbg !3949
  %164 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %139, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.133, i32 0, i32 0), i8* %142, i8* %145, i8* %148, i8* %151, i8* %154, i8* %157, i8* %160, i8* %163), !dbg !3950
  br label %225, !dbg !3951

; <label>:165:                                    ; preds = %26
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3952
  %167 = load i8**, i8*** %11, align 8, !dbg !3953
  %168 = getelementptr inbounds i8*, i8** %167, i64 0, !dbg !3953
  %169 = load i8*, i8** %168, align 8, !dbg !3953
  %170 = load i8**, i8*** %11, align 8, !dbg !3954
  %171 = getelementptr inbounds i8*, i8** %170, i64 1, !dbg !3954
  %172 = load i8*, i8** %171, align 8, !dbg !3954
  %173 = load i8**, i8*** %11, align 8, !dbg !3955
  %174 = getelementptr inbounds i8*, i8** %173, i64 2, !dbg !3955
  %175 = load i8*, i8** %174, align 8, !dbg !3955
  %176 = load i8**, i8*** %11, align 8, !dbg !3956
  %177 = getelementptr inbounds i8*, i8** %176, i64 3, !dbg !3956
  %178 = load i8*, i8** %177, align 8, !dbg !3956
  %179 = load i8**, i8*** %11, align 8, !dbg !3957
  %180 = getelementptr inbounds i8*, i8** %179, i64 4, !dbg !3957
  %181 = load i8*, i8** %180, align 8, !dbg !3957
  %182 = load i8**, i8*** %11, align 8, !dbg !3958
  %183 = getelementptr inbounds i8*, i8** %182, i64 5, !dbg !3958
  %184 = load i8*, i8** %183, align 8, !dbg !3958
  %185 = load i8**, i8*** %11, align 8, !dbg !3959
  %186 = getelementptr inbounds i8*, i8** %185, i64 6, !dbg !3959
  %187 = load i8*, i8** %186, align 8, !dbg !3959
  %188 = load i8**, i8*** %11, align 8, !dbg !3960
  %189 = getelementptr inbounds i8*, i8** %188, i64 7, !dbg !3960
  %190 = load i8*, i8** %189, align 8, !dbg !3960
  %191 = load i8**, i8*** %11, align 8, !dbg !3961
  %192 = getelementptr inbounds i8*, i8** %191, i64 8, !dbg !3961
  %193 = load i8*, i8** %192, align 8, !dbg !3961
  %194 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %166, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.134, i32 0, i32 0), i8* %169, i8* %172, i8* %175, i8* %178, i8* %181, i8* %184, i8* %187, i8* %190, i8* %193), !dbg !3962
  br label %225, !dbg !3963

; <label>:195:                                    ; preds = %26
  %196 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3964
  %197 = load i8**, i8*** %11, align 8, !dbg !3965
  %198 = getelementptr inbounds i8*, i8** %197, i64 0, !dbg !3965
  %199 = load i8*, i8** %198, align 8, !dbg !3965
  %200 = load i8**, i8*** %11, align 8, !dbg !3966
  %201 = getelementptr inbounds i8*, i8** %200, i64 1, !dbg !3966
  %202 = load i8*, i8** %201, align 8, !dbg !3966
  %203 = load i8**, i8*** %11, align 8, !dbg !3967
  %204 = getelementptr inbounds i8*, i8** %203, i64 2, !dbg !3967
  %205 = load i8*, i8** %204, align 8, !dbg !3967
  %206 = load i8**, i8*** %11, align 8, !dbg !3968
  %207 = getelementptr inbounds i8*, i8** %206, i64 3, !dbg !3968
  %208 = load i8*, i8** %207, align 8, !dbg !3968
  %209 = load i8**, i8*** %11, align 8, !dbg !3969
  %210 = getelementptr inbounds i8*, i8** %209, i64 4, !dbg !3969
  %211 = load i8*, i8** %210, align 8, !dbg !3969
  %212 = load i8**, i8*** %11, align 8, !dbg !3970
  %213 = getelementptr inbounds i8*, i8** %212, i64 5, !dbg !3970
  %214 = load i8*, i8** %213, align 8, !dbg !3970
  %215 = load i8**, i8*** %11, align 8, !dbg !3971
  %216 = getelementptr inbounds i8*, i8** %215, i64 6, !dbg !3971
  %217 = load i8*, i8** %216, align 8, !dbg !3971
  %218 = load i8**, i8*** %11, align 8, !dbg !3972
  %219 = getelementptr inbounds i8*, i8** %218, i64 7, !dbg !3972
  %220 = load i8*, i8** %219, align 8, !dbg !3972
  %221 = load i8**, i8*** %11, align 8, !dbg !3973
  %222 = getelementptr inbounds i8*, i8** %221, i64 8, !dbg !3973
  %223 = load i8*, i8** %222, align 8, !dbg !3973
  %224 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %196, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.135, i32 0, i32 0), i8* %199, i8* %202, i8* %205, i8* %208, i8* %211, i8* %214, i8* %217, i8* %220, i8* %223), !dbg !3974
  br label %225, !dbg !3975

; <label>:225:                                    ; preds = %195, %165, %138, %114, %93, %75, %60, %48, %39, %33
  ret void, !dbg !3976
}

; Function Attrs: noinline nounwind uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8**) #2 !dbg !3977 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3980, metadata !DIExpression()), !dbg !3981
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3982, metadata !DIExpression()), !dbg !3983
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3984, metadata !DIExpression()), !dbg !3985
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3986, metadata !DIExpression()), !dbg !3987
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !3988, metadata !DIExpression()), !dbg !3989
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3990, metadata !DIExpression()), !dbg !3991
  store i64 0, i64* %11, align 8, !dbg !3992
  br label %12, !dbg !3994

; <label>:12:                                     ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8, !dbg !3995
  %14 = load i64, i64* %11, align 8, !dbg !3997
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14, !dbg !3995
  %16 = load i8*, i8** %15, align 8, !dbg !3995
  %17 = icmp ne i8* %16, null, !dbg !3998
  br i1 %17, label %18, label %22, !dbg !3998

; <label>:18:                                     ; preds = %12
  br label %19, !dbg !3998

; <label>:19:                                     ; preds = %18
  %20 = load i64, i64* %11, align 8, !dbg !3999
  %21 = add i64 %20, 1, !dbg !3999
  store i64 %21, i64* %11, align 8, !dbg !3999
  br label %12, !dbg !4000, !llvm.loop !4001

; <label>:22:                                     ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !4003
  %24 = load i8*, i8** %7, align 8, !dbg !4004
  %25 = load i8*, i8** %8, align 8, !dbg !4005
  %26 = load i8*, i8** %9, align 8, !dbg !4006
  %27 = load i8**, i8*** %10, align 8, !dbg !4007
  %28 = load i64, i64* %11, align 8, !dbg !4008
  call void @version_etc_arn(%struct._IO_FILE* %23, i8* %24, i8* %25, i8* %26, i8** %27, i64 %28), !dbg !4009
  ret void, !dbg !4010
}

; Function Attrs: noinline nounwind uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag*) #2 !dbg !4011 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.__va_list_tag*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [10 x i8*], align 16
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !4021, metadata !DIExpression()), !dbg !4022
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4023, metadata !DIExpression()), !dbg !4024
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4025, metadata !DIExpression()), !dbg !4026
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4027, metadata !DIExpression()), !dbg !4028
  store %struct.__va_list_tag* %4, %struct.__va_list_tag** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %10, metadata !4029, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.declare(metadata i64* %11, metadata !4031, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.declare(metadata [10 x i8*]* %12, metadata !4033, metadata !DIExpression()), !dbg !4037
  store i64 0, i64* %11, align 8, !dbg !4038
  br label %13, !dbg !4040

; <label>:13:                                     ; preds = %41, %5
  %14 = load i64, i64* %11, align 8, !dbg !4041
  %15 = icmp ult i64 %14, 10, !dbg !4043
  br i1 %15, label %16, label %38, !dbg !4044

; <label>:16:                                     ; preds = %13
  %17 = load %struct.__va_list_tag*, %struct.__va_list_tag** %10, align 8, !dbg !4045
  %18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %17, i32 0, i32 0, !dbg !4045
  %19 = load i32, i32* %18, align 8, !dbg !4045
  %20 = icmp ule i32 %19, 40, !dbg !4045
  br i1 %20, label %21, label %27, !dbg !4045

; <label>:21:                                     ; preds = %16
  %22 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %17, i32 0, i32 3, !dbg !4045
  %23 = load i8*, i8** %22, align 8, !dbg !4045
  %24 = getelementptr i8, i8* %23, i32 %19, !dbg !4045
  %25 = bitcast i8* %24 to i8**, !dbg !4045
  %26 = add i32 %19, 8, !dbg !4045
  store i32 %26, i32* %18, align 8, !dbg !4045
  br label %32, !dbg !4045

; <label>:27:                                     ; preds = %16
  %28 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %17, i32 0, i32 2, !dbg !4045
  %29 = load i8*, i8** %28, align 8, !dbg !4045
  %30 = bitcast i8* %29 to i8**, !dbg !4045
  %31 = getelementptr i8, i8* %29, i32 8, !dbg !4045
  store i8* %31, i8** %28, align 8, !dbg !4045
  br label %32, !dbg !4045

; <label>:32:                                     ; preds = %27, %21
  %33 = phi i8** [ %25, %21 ], [ %30, %27 ], !dbg !4045
  %34 = load i8*, i8** %33, align 8, !dbg !4045
  %35 = load i64, i64* %11, align 8, !dbg !4046
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %12, i64 0, i64 %35, !dbg !4047
  store i8* %34, i8** %36, align 8, !dbg !4048
  %37 = icmp ne i8* %34, null, !dbg !4049
  br label %38

; <label>:38:                                     ; preds = %32, %13
  %39 = phi i1 [ false, %13 ], [ %37, %32 ]
  br i1 %39, label %40, label %44, !dbg !4050

; <label>:40:                                     ; preds = %38
  br label %41, !dbg !4050

; <label>:41:                                     ; preds = %40
  %42 = load i64, i64* %11, align 8, !dbg !4051
  %43 = add i64 %42, 1, !dbg !4051
  store i64 %43, i64* %11, align 8, !dbg !4051
  br label %13, !dbg !4052, !llvm.loop !4053

; <label>:44:                                     ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !4055
  %46 = load i8*, i8** %7, align 8, !dbg !4056
  %47 = load i8*, i8** %8, align 8, !dbg !4057
  %48 = load i8*, i8** %9, align 8, !dbg !4058
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %12, i32 0, i32 0, !dbg !4059
  %50 = load i64, i64* %11, align 8, !dbg !4060
  call void @version_etc_arn(%struct._IO_FILE* %45, i8* %46, i8* %47, i8* %48, i8** %49, i64 %50), !dbg !4061
  ret void, !dbg !4062
}

; Function Attrs: noinline nounwind uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) #2 !dbg !4063 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !4066, metadata !DIExpression()), !dbg !4067
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4068, metadata !DIExpression()), !dbg !4069
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4070, metadata !DIExpression()), !dbg !4071
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4072, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %9, metadata !4074, metadata !DIExpression()), !dbg !4080
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i32 0, i32 0, !dbg !4081
  %11 = bitcast %struct.__va_list_tag* %10 to i8*, !dbg !4081
  call void @llvm.va_start(i8* %11), !dbg !4081
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4082
  %13 = load i8*, i8** %6, align 8, !dbg !4083
  %14 = load i8*, i8** %7, align 8, !dbg !4084
  %15 = load i8*, i8** %8, align 8, !dbg !4085
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i32 0, i32 0, !dbg !4086
  call void @version_etc_va(%struct._IO_FILE* %12, i8* %13, i8* %14, i8* %15, %struct.__va_list_tag* %16), !dbg !4087
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i32 0, i32 0, !dbg !4088
  %18 = bitcast %struct.__va_list_tag* %17 to i8*, !dbg !4088
  call void @llvm.va_end(i8* %18), !dbg !4088
  ret void, !dbg !4089
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: noinline nounwind uwtable
define void @emit_bug_reporting_address() #2 !dbg !4090 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.138, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.139, i32 0, i32 0)), !dbg !4091
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.140, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.141, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.142, i32 0, i32 0)), !dbg !4092
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4093
  %4 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.143, i32 0, i32 0), %struct._IO_FILE* %3), !dbg !4093
  ret void, !dbg !4094
}

; Function Attrs: noinline nounwind uwtable
define noalias i8* @xnmalloc(i64, i64) #2 !dbg !4095 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4098, metadata !DIExpression()), !dbg !4099
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4100, metadata !DIExpression()), !dbg !4101
  %5 = load i64, i64* %4, align 8, !dbg !4102
  %6 = udiv i64 -1, %5, !dbg !4102
  %7 = load i64, i64* %3, align 8, !dbg !4102
  %8 = icmp ult i64 %6, %7, !dbg !4102
  br i1 %8, label %9, label %10, !dbg !4104

; <label>:9:                                      ; preds = %2
  call void @xalloc_die() #15, !dbg !4105
  unreachable, !dbg !4105

; <label>:10:                                     ; preds = %2
  %11 = load i64, i64* %3, align 8, !dbg !4106
  %12 = load i64, i64* %4, align 8, !dbg !4107
  %13 = mul i64 %11, %12, !dbg !4108
  %14 = call noalias i8* @xmalloc(i64 %13), !dbg !4109
  ret i8* %14, !dbg !4110
}

; Function Attrs: noinline nounwind uwtable
define noalias i8* @xmalloc(i64) #2 !dbg !4111 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4114, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4116, metadata !DIExpression()), !dbg !4117
  %4 = load i64, i64* %2, align 8, !dbg !4118
  %5 = call noalias i8* @malloc(i64 %4) #11, !dbg !4119
  store i8* %5, i8** %3, align 8, !dbg !4117
  %6 = load i8*, i8** %3, align 8, !dbg !4120
  %7 = icmp ne i8* %6, null, !dbg !4120
  br i1 %7, label %12, label %8, !dbg !4122

; <label>:8:                                      ; preds = %1
  %9 = load i64, i64* %2, align 8, !dbg !4123
  %10 = icmp ne i64 %9, 0, !dbg !4124
  br i1 %10, label %11, label %12, !dbg !4125

; <label>:11:                                     ; preds = %8
  call void @xalloc_die() #15, !dbg !4126
  unreachable, !dbg !4126

; <label>:12:                                     ; preds = %8, %1
  %13 = load i8*, i8** %3, align 8, !dbg !4127
  ret i8* %13, !dbg !4128
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #5

; Function Attrs: noinline nounwind uwtable
define i8* @xnrealloc(i8*, i64, i64) #2 !dbg !4129 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4132, metadata !DIExpression()), !dbg !4133
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4134, metadata !DIExpression()), !dbg !4135
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4136, metadata !DIExpression()), !dbg !4137
  %7 = load i64, i64* %6, align 8, !dbg !4138
  %8 = udiv i64 -1, %7, !dbg !4138
  %9 = load i64, i64* %5, align 8, !dbg !4138
  %10 = icmp ult i64 %8, %9, !dbg !4138
  br i1 %10, label %11, label %12, !dbg !4140

; <label>:11:                                     ; preds = %3
  call void @xalloc_die() #15, !dbg !4141
  unreachable, !dbg !4141

; <label>:12:                                     ; preds = %3
  %13 = load i8*, i8** %4, align 8, !dbg !4142
  %14 = load i64, i64* %5, align 8, !dbg !4143
  %15 = load i64, i64* %6, align 8, !dbg !4144
  %16 = mul i64 %14, %15, !dbg !4145
  %17 = call i8* @xrealloc(i8* %13, i64 %16), !dbg !4146
  ret i8* %17, !dbg !4147
}

; Function Attrs: noinline nounwind uwtable
define i8* @xrealloc(i8*, i64) #2 !dbg !4148 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4151, metadata !DIExpression()), !dbg !4152
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4153, metadata !DIExpression()), !dbg !4154
  %6 = load i64, i64* %5, align 8, !dbg !4155
  %7 = icmp ne i64 %6, 0, !dbg !4155
  br i1 %7, label %13, label %8, !dbg !4157

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %4, align 8, !dbg !4158
  %10 = icmp ne i8* %9, null, !dbg !4158
  br i1 %10, label %11, label %13, !dbg !4159

; <label>:11:                                     ; preds = %8
  %12 = load i8*, i8** %4, align 8, !dbg !4160
  call void @free(i8* %12) #11, !dbg !4162
  store i8* null, i8** %3, align 8, !dbg !4163
  br label %25, !dbg !4163

; <label>:13:                                     ; preds = %8, %2
  %14 = load i8*, i8** %4, align 8, !dbg !4164
  %15 = load i64, i64* %5, align 8, !dbg !4165
  %16 = call i8* @realloc(i8* %14, i64 %15) #11, !dbg !4166
  store i8* %16, i8** %4, align 8, !dbg !4167
  %17 = load i8*, i8** %4, align 8, !dbg !4168
  %18 = icmp ne i8* %17, null, !dbg !4168
  br i1 %18, label %23, label %19, !dbg !4170

; <label>:19:                                     ; preds = %13
  %20 = load i64, i64* %5, align 8, !dbg !4171
  %21 = icmp ne i64 %20, 0, !dbg !4171
  br i1 %21, label %22, label %23, !dbg !4172

; <label>:22:                                     ; preds = %19
  call void @xalloc_die() #15, !dbg !4173
  unreachable, !dbg !4173

; <label>:23:                                     ; preds = %19, %13
  %24 = load i8*, i8** %4, align 8, !dbg !4174
  store i8* %24, i8** %3, align 8, !dbg !4175
  br label %25, !dbg !4175

; <label>:25:                                     ; preds = %23, %11
  %26 = load i8*, i8** %3, align 8, !dbg !4176
  ret i8* %26, !dbg !4176
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
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4177, metadata !DIExpression()), !dbg !4178
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !4179, metadata !DIExpression()), !dbg !4180
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4181, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4183, metadata !DIExpression()), !dbg !4184
  %8 = load i64*, i64** %5, align 8, !dbg !4185
  %9 = load i64, i64* %8, align 8, !dbg !4186
  store i64 %9, i64* %7, align 8, !dbg !4184
  %10 = load i8*, i8** %4, align 8, !dbg !4187
  %11 = icmp ne i8* %10, null, !dbg !4187
  br i1 %11, label %26, label %12, !dbg !4189

; <label>:12:                                     ; preds = %3
  %13 = load i64, i64* %7, align 8, !dbg !4190
  %14 = icmp ne i64 %13, 0, !dbg !4190
  br i1 %14, label %25, label %15, !dbg !4193

; <label>:15:                                     ; preds = %12
  %16 = load i64, i64* %6, align 8, !dbg !4194
  %17 = udiv i64 128, %16, !dbg !4196
  store i64 %17, i64* %7, align 8, !dbg !4197
  %18 = load i64, i64* %7, align 8, !dbg !4198
  %19 = icmp ne i64 %18, 0, !dbg !4199
  %20 = xor i1 %19, true, !dbg !4199
  %21 = zext i1 %20 to i32, !dbg !4199
  %22 = sext i32 %21 to i64, !dbg !4199
  %23 = load i64, i64* %7, align 8, !dbg !4200
  %24 = add i64 %23, %22, !dbg !4200
  store i64 %24, i64* %7, align 8, !dbg !4200
  br label %25, !dbg !4201

; <label>:25:                                     ; preds = %15, %12
  br label %38, !dbg !4202

; <label>:26:                                     ; preds = %3
  %27 = load i64, i64* %6, align 8, !dbg !4203
  %28 = udiv i64 -6148914691236517206, %27, !dbg !4206
  %29 = load i64, i64* %7, align 8, !dbg !4207
  %30 = icmp ule i64 %28, %29, !dbg !4208
  br i1 %30, label %31, label %32, !dbg !4209

; <label>:31:                                     ; preds = %26
  call void @xalloc_die() #15, !dbg !4210
  unreachable, !dbg !4210

; <label>:32:                                     ; preds = %26
  %33 = load i64, i64* %7, align 8, !dbg !4211
  %34 = add i64 %33, 1, !dbg !4212
  %35 = udiv i64 %34, 2, !dbg !4213
  %36 = load i64, i64* %7, align 8, !dbg !4214
  %37 = add i64 %36, %35, !dbg !4214
  store i64 %37, i64* %7, align 8, !dbg !4214
  br label %38

; <label>:38:                                     ; preds = %32, %25
  %39 = load i64, i64* %7, align 8, !dbg !4215
  %40 = load i64*, i64** %5, align 8, !dbg !4216
  store i64 %39, i64* %40, align 8, !dbg !4217
  %41 = load i8*, i8** %4, align 8, !dbg !4218
  %42 = load i64, i64* %7, align 8, !dbg !4219
  %43 = load i64, i64* %6, align 8, !dbg !4220
  %44 = mul i64 %42, %43, !dbg !4221
  %45 = call i8* @xrealloc(i8* %41, i64 %44), !dbg !4222
  ret i8* %45, !dbg !4223
}

; Function Attrs: noinline nounwind uwtable
define noalias i8* @xcharalloc(i64) #2 !dbg !4224 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4227, metadata !DIExpression()), !dbg !4228
  %3 = load i64, i64* %2, align 8, !dbg !4229
  %4 = call noalias i8* @xmalloc(i64 %3), !dbg !4229
  ret i8* %4, !dbg !4230
}

; Function Attrs: noinline nounwind uwtable
define i8* @x2realloc(i8*, i64*) #2 !dbg !4231 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4234, metadata !DIExpression()), !dbg !4235
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !4236, metadata !DIExpression()), !dbg !4237
  %5 = load i8*, i8** %3, align 8, !dbg !4238
  %6 = load i64*, i64** %4, align 8, !dbg !4239
  %7 = call i8* @x2nrealloc(i8* %5, i64* %6, i64 1), !dbg !4240
  ret i8* %7, !dbg !4241
}

; Function Attrs: noinline nounwind uwtable
define noalias i8* @xzalloc(i64) #2 !dbg !4242 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4243, metadata !DIExpression()), !dbg !4244
  %3 = load i64, i64* %2, align 8, !dbg !4245
  %4 = call noalias i8* @xmalloc(i64 %3), !dbg !4246
  %5 = load i64, i64* %2, align 8, !dbg !4247
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 %5, i32 1, i1 false), !dbg !4248
  ret i8* %4, !dbg !4249
}

; Function Attrs: noinline nounwind uwtable
define noalias i8* @xcalloc(i64, i64) #2 !dbg !4250 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4251, metadata !DIExpression()), !dbg !4252
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4253, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4255, metadata !DIExpression()), !dbg !4256
  %6 = load i64, i64* %3, align 8, !dbg !4257
  %7 = load i64, i64* %4, align 8, !dbg !4259
  %8 = call noalias i8* @calloc(i64 %6, i64 %7) #11, !dbg !4260
  store i8* %8, i8** %5, align 8, !dbg !4261
  %9 = icmp ne i8* %8, null, !dbg !4261
  br i1 %9, label %11, label %10, !dbg !4262

; <label>:10:                                     ; preds = %2
  call void @xalloc_die() #15, !dbg !4263
  unreachable, !dbg !4263

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %5, align 8, !dbg !4264
  ret i8* %12, !dbg !4265
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #5

; Function Attrs: noinline nounwind uwtable
define noalias i8* @xmemdup(i8*, i64) #2 !dbg !4266 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4269, metadata !DIExpression()), !dbg !4270
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4271, metadata !DIExpression()), !dbg !4272
  %5 = load i64, i64* %4, align 8, !dbg !4273
  %6 = call noalias i8* @xmalloc(i64 %5), !dbg !4274
  %7 = load i8*, i8** %3, align 8, !dbg !4275
  %8 = load i64, i64* %4, align 8, !dbg !4276
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 %8, i32 1, i1 false), !dbg !4277
  ret i8* %6, !dbg !4278
}

; Function Attrs: noinline nounwind uwtable
define noalias i8* @xstrdup(i8*) #2 !dbg !4279 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4280, metadata !DIExpression()), !dbg !4281
  %3 = load i8*, i8** %2, align 8, !dbg !4282
  %4 = load i8*, i8** %2, align 8, !dbg !4283
  %5 = call i64 @strlen(i8* %4) #14, !dbg !4284
  %6 = add i64 %5, 1, !dbg !4285
  %7 = call noalias i8* @xmemdup(i8* %3, i64 %6), !dbg !4286
  ret i8* %7, !dbg !4287
}

; Function Attrs: noinline noreturn nounwind uwtable
define void @xalloc_die() #0 !dbg !4288 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4289
  call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.157, i32 0, i32 0)), !dbg !4290
  call void @abort() #13, !dbg !4291
  unreachable, !dbg !4291
                                                  ; No predecessors!
  unreachable, !dbg !4292
}

; Function Attrs: noinline nounwind uwtable
define i32 @xmemcoll(i8*, i64, i8*, i64) #2 !dbg !4293 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4296, metadata !DIExpression()), !dbg !4297
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4298, metadata !DIExpression()), !dbg !4299
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4300, metadata !DIExpression()), !dbg !4301
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4302, metadata !DIExpression()), !dbg !4303
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4304, metadata !DIExpression()), !dbg !4305
  %11 = load i8*, i8** %5, align 8, !dbg !4306
  %12 = load i64, i64* %6, align 8, !dbg !4307
  %13 = load i8*, i8** %7, align 8, !dbg !4308
  %14 = load i64, i64* %8, align 8, !dbg !4309
  %15 = call i32 @memcoll(i8* %11, i64 %12, i8* %13, i64 %14), !dbg !4310
  store i32 %15, i32* %9, align 4, !dbg !4305
  call void @llvm.dbg.declare(metadata i32* %10, metadata !4311, metadata !DIExpression()), !dbg !4312
  %16 = call i32* @__errno_location() #16, !dbg !4313
  %17 = load i32, i32* %16, align 4, !dbg !4313
  store i32 %17, i32* %10, align 4, !dbg !4312
  %18 = load i32, i32* %10, align 4, !dbg !4314
  %19 = icmp ne i32 %18, 0, !dbg !4314
  br i1 %19, label %20, label %26, !dbg !4316

; <label>:20:                                     ; preds = %4
  %21 = load i32, i32* %10, align 4, !dbg !4317
  %22 = load i8*, i8** %5, align 8, !dbg !4318
  %23 = load i64, i64* %6, align 8, !dbg !4319
  %24 = load i8*, i8** %7, align 8, !dbg !4320
  %25 = load i64, i64* %8, align 8, !dbg !4321
  call void @collate_error(i32 %21, i8* %22, i64 %23, i8* %24, i64 %25), !dbg !4322
  br label %26, !dbg !4322

; <label>:26:                                     ; preds = %20, %4
  %27 = load i32, i32* %9, align 4, !dbg !4323
  ret i32 %27, !dbg !4324
}

; Function Attrs: noinline nounwind uwtable
define internal void @collate_error(i32, i8*, i64, i8*, i64) #2 !dbg !4325 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4328, metadata !DIExpression()), !dbg !4329
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4330, metadata !DIExpression()), !dbg !4331
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4332, metadata !DIExpression()), !dbg !4333
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4334, metadata !DIExpression()), !dbg !4335
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4336, metadata !DIExpression()), !dbg !4337
  %11 = load i32, i32* %6, align 4, !dbg !4338
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.160, i32 0, i32 0)), !dbg !4339
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1.161, i32 0, i32 0)), !dbg !4340
  %12 = load volatile i32, i32* @exit_failure, align 4, !dbg !4341
  %13 = load i8*, i8** %7, align 8, !dbg !4342
  %14 = load i64, i64* %8, align 8, !dbg !4343
  %15 = call i8* @quotearg_n_style_mem(i32 0, i32 6, i8* %13, i64 %14), !dbg !4344
  %16 = load i8*, i8** %9, align 8, !dbg !4345
  %17 = load i64, i64* %10, align 8, !dbg !4346
  %18 = call i8* @quotearg_n_style_mem(i32 1, i32 6, i8* %16, i64 %17), !dbg !4347
  call void (i32, i32, i8*, ...) @error(i32 %12, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.162, i32 0, i32 0), i8* %15, i8* %18), !dbg !4348
  ret void, !dbg !4349
}

; Function Attrs: noinline nounwind uwtable
define i32 @xmemcoll0(i8*, i64, i8*, i64) #2 !dbg !4350 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4353, metadata !DIExpression()), !dbg !4354
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4355, metadata !DIExpression()), !dbg !4356
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4357, metadata !DIExpression()), !dbg !4358
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4359, metadata !DIExpression()), !dbg !4360
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4361, metadata !DIExpression()), !dbg !4362
  %11 = load i8*, i8** %5, align 8, !dbg !4363
  %12 = load i64, i64* %6, align 8, !dbg !4364
  %13 = load i8*, i8** %7, align 8, !dbg !4365
  %14 = load i64, i64* %8, align 8, !dbg !4366
  %15 = call i32 @memcoll0(i8* %11, i64 %12, i8* %13, i64 %14), !dbg !4367
  store i32 %15, i32* %9, align 4, !dbg !4362
  call void @llvm.dbg.declare(metadata i32* %10, metadata !4368, metadata !DIExpression()), !dbg !4369
  %16 = call i32* @__errno_location() #16, !dbg !4370
  %17 = load i32, i32* %16, align 4, !dbg !4370
  store i32 %17, i32* %10, align 4, !dbg !4369
  %18 = load i32, i32* %10, align 4, !dbg !4371
  %19 = icmp ne i32 %18, 0, !dbg !4371
  br i1 %19, label %20, label %28, !dbg !4373

; <label>:20:                                     ; preds = %4
  %21 = load i32, i32* %10, align 4, !dbg !4374
  %22 = load i8*, i8** %5, align 8, !dbg !4375
  %23 = load i64, i64* %6, align 8, !dbg !4376
  %24 = sub i64 %23, 1, !dbg !4377
  %25 = load i8*, i8** %7, align 8, !dbg !4378
  %26 = load i64, i64* %8, align 8, !dbg !4379
  %27 = sub i64 %26, 1, !dbg !4380
  call void @collate_error(i32 %21, i8* %22, i64 %24, i8* %25, i64 %27), !dbg !4381
  br label %28, !dbg !4381

; <label>:28:                                     ; preds = %20, %4
  %29 = load i32, i32* %9, align 4, !dbg !4382
  ret i32 %29, !dbg !4383
}

; Function Attrs: noinline nounwind uwtable
define i32 @xstrtoul(i8*, i8**, i32, i64*, i8*) #2 !dbg !4384 {
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
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4390, metadata !DIExpression()), !dbg !4391
  store i8** %1, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !4392, metadata !DIExpression()), !dbg !4393
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4394, metadata !DIExpression()), !dbg !4395
  store i64* %3, i64** %10, align 8
  call void @llvm.dbg.declare(metadata i64** %10, metadata !4396, metadata !DIExpression()), !dbg !4397
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !4398, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.declare(metadata i8** %12, metadata !4400, metadata !DIExpression()), !dbg !4401
  call void @llvm.dbg.declare(metadata i8*** %13, metadata !4402, metadata !DIExpression()), !dbg !4403
  call void @llvm.dbg.declare(metadata i64* %14, metadata !4404, metadata !DIExpression()), !dbg !4405
  call void @llvm.dbg.declare(metadata i32* %15, metadata !4406, metadata !DIExpression()), !dbg !4407
  store i32 0, i32* %15, align 4, !dbg !4407
  %21 = load i32, i32* %9, align 4, !dbg !4408
  %22 = icmp sle i32 0, %21, !dbg !4408
  br i1 %22, label %23, label %27, !dbg !4408

; <label>:23:                                     ; preds = %5
  %24 = load i32, i32* %9, align 4, !dbg !4408
  %25 = icmp sle i32 %24, 36, !dbg !4408
  br i1 %25, label %26, label %27, !dbg !4411

; <label>:26:                                     ; preds = %23
  br label %28, !dbg !4411

; <label>:27:                                     ; preds = %23, %5
  call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.166, i32 0, i32 0), i32 96, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__.xstrtoul, i32 0, i32 0)) #13, !dbg !4408
  unreachable, !dbg !4408

; <label>:28:                                     ; preds = %26
  %29 = load i8**, i8*** %8, align 8, !dbg !4412
  %30 = icmp ne i8** %29, null, !dbg !4412
  br i1 %30, label %31, label %33, !dbg !4412

; <label>:31:                                     ; preds = %28
  %32 = load i8**, i8*** %8, align 8, !dbg !4413
  br label %34, !dbg !4412

; <label>:33:                                     ; preds = %28
  br label %34, !dbg !4412

; <label>:34:                                     ; preds = %33, %31
  %35 = phi i8** [ %32, %31 ], [ %12, %33 ], !dbg !4412
  store i8** %35, i8*** %13, align 8, !dbg !4414
  call void @llvm.dbg.declare(metadata i8** %16, metadata !4415, metadata !DIExpression()), !dbg !4418
  %36 = load i8*, i8** %7, align 8, !dbg !4419
  store i8* %36, i8** %16, align 8, !dbg !4418
  call void @llvm.dbg.declare(metadata i8* %17, metadata !4420, metadata !DIExpression()), !dbg !4421
  %37 = load i8*, i8** %16, align 8, !dbg !4422
  %38 = load i8, i8* %37, align 1, !dbg !4423
  store i8 %38, i8* %17, align 1, !dbg !4421
  br label %39, !dbg !4424

; <label>:39:                                     ; preds = %50, %34
  %40 = call i16** @__ctype_b_loc() #16, !dbg !4425
  %41 = load i16*, i16** %40, align 8, !dbg !4425
  %42 = load i8, i8* %17, align 1, !dbg !4425
  %43 = zext i8 %42 to i32, !dbg !4425
  %44 = sext i32 %43 to i64, !dbg !4425
  %45 = getelementptr inbounds i16, i16* %41, i64 %44, !dbg !4425
  %46 = load i16, i16* %45, align 2, !dbg !4425
  %47 = zext i16 %46 to i32, !dbg !4425
  %48 = and i32 %47, 8192, !dbg !4425
  %49 = icmp ne i32 %48, 0, !dbg !4424
  br i1 %49, label %50, label %54, !dbg !4424

; <label>:50:                                     ; preds = %39
  %51 = load i8*, i8** %16, align 8, !dbg !4426
  %52 = getelementptr inbounds i8, i8* %51, i32 1, !dbg !4426
  store i8* %52, i8** %16, align 8, !dbg !4426
  %53 = load i8, i8* %52, align 1, !dbg !4427
  store i8 %53, i8* %17, align 1, !dbg !4428
  br label %39, !dbg !4424, !llvm.loop !4429

; <label>:54:                                     ; preds = %39
  %55 = load i8, i8* %17, align 1, !dbg !4431
  %56 = zext i8 %55 to i32, !dbg !4431
  %57 = icmp eq i32 %56, 45, !dbg !4433
  br i1 %57, label %58, label %59, !dbg !4434

; <label>:58:                                     ; preds = %54
  store i32 4, i32* %6, align 4, !dbg !4435
  br label %215, !dbg !4435

; <label>:59:                                     ; preds = %54
  %60 = call i32* @__errno_location() #16, !dbg !4436
  store i32 0, i32* %60, align 4, !dbg !4437
  %61 = load i8*, i8** %7, align 8, !dbg !4438
  %62 = load i8**, i8*** %13, align 8, !dbg !4439
  %63 = load i32, i32* %9, align 4, !dbg !4440
  %64 = call i64 @strtoul(i8* %61, i8** %62, i32 %63) #11, !dbg !4441
  store i64 %64, i64* %14, align 8, !dbg !4442
  %65 = load i8**, i8*** %13, align 8, !dbg !4443
  %66 = load i8*, i8** %65, align 8, !dbg !4445
  %67 = load i8*, i8** %7, align 8, !dbg !4446
  %68 = icmp eq i8* %66, %67, !dbg !4447
  br i1 %68, label %69, label %89, !dbg !4448

; <label>:69:                                     ; preds = %59
  %70 = load i8*, i8** %11, align 8, !dbg !4449
  %71 = icmp ne i8* %70, null, !dbg !4449
  br i1 %71, label %72, label %87, !dbg !4452

; <label>:72:                                     ; preds = %69
  %73 = load i8**, i8*** %13, align 8, !dbg !4453
  %74 = load i8*, i8** %73, align 8, !dbg !4454
  %75 = load i8, i8* %74, align 1, !dbg !4455
  %76 = sext i8 %75 to i32, !dbg !4455
  %77 = icmp ne i32 %76, 0, !dbg !4455
  br i1 %77, label %78, label %87, !dbg !4456

; <label>:78:                                     ; preds = %72
  %79 = load i8*, i8** %11, align 8, !dbg !4457
  %80 = load i8**, i8*** %13, align 8, !dbg !4458
  %81 = load i8*, i8** %80, align 8, !dbg !4459
  %82 = load i8, i8* %81, align 1, !dbg !4460
  %83 = sext i8 %82 to i32, !dbg !4460
  %84 = call i8* @strchr(i8* %79, i32 %83) #14, !dbg !4461
  %85 = icmp ne i8* %84, null, !dbg !4461
  br i1 %85, label %86, label %87, !dbg !4462

; <label>:86:                                     ; preds = %78
  store i64 1, i64* %14, align 8, !dbg !4463
  br label %88, !dbg !4464

; <label>:87:                                     ; preds = %78, %72, %69
  store i32 4, i32* %6, align 4, !dbg !4465
  br label %215, !dbg !4465

; <label>:88:                                     ; preds = %86
  br label %100, !dbg !4466

; <label>:89:                                     ; preds = %59
  %90 = call i32* @__errno_location() #16, !dbg !4467
  %91 = load i32, i32* %90, align 4, !dbg !4467
  %92 = icmp ne i32 %91, 0, !dbg !4469
  br i1 %92, label %93, label %99, !dbg !4470

; <label>:93:                                     ; preds = %89
  %94 = call i32* @__errno_location() #16, !dbg !4471
  %95 = load i32, i32* %94, align 4, !dbg !4471
  %96 = icmp ne i32 %95, 34, !dbg !4474
  br i1 %96, label %97, label %98, !dbg !4475

; <label>:97:                                     ; preds = %93
  store i32 4, i32* %6, align 4, !dbg !4476
  br label %215, !dbg !4476

; <label>:98:                                     ; preds = %93
  store i32 1, i32* %15, align 4, !dbg !4477
  br label %99, !dbg !4478

; <label>:99:                                     ; preds = %98, %89
  br label %100

; <label>:100:                                    ; preds = %99, %88
  %101 = load i8*, i8** %11, align 8, !dbg !4479
  %102 = icmp ne i8* %101, null, !dbg !4479
  br i1 %102, label %107, label %103, !dbg !4481

; <label>:103:                                    ; preds = %100
  %104 = load i64, i64* %14, align 8, !dbg !4482
  %105 = load i64*, i64** %10, align 8, !dbg !4484
  store i64 %104, i64* %105, align 8, !dbg !4485
  %106 = load i32, i32* %15, align 4, !dbg !4486
  store i32 %106, i32* %6, align 4, !dbg !4487
  br label %215, !dbg !4487

; <label>:107:                                    ; preds = %100
  %108 = load i8**, i8*** %13, align 8, !dbg !4488
  %109 = load i8*, i8** %108, align 8, !dbg !4490
  %110 = load i8, i8* %109, align 1, !dbg !4491
  %111 = sext i8 %110 to i32, !dbg !4491
  %112 = icmp ne i32 %111, 0, !dbg !4492
  br i1 %112, label %113, label %211, !dbg !4493

; <label>:113:                                    ; preds = %107
  call void @llvm.dbg.declare(metadata i32* %18, metadata !4494, metadata !DIExpression()), !dbg !4496
  store i32 1024, i32* %18, align 4, !dbg !4496
  call void @llvm.dbg.declare(metadata i32* %19, metadata !4497, metadata !DIExpression()), !dbg !4498
  store i32 1, i32* %19, align 4, !dbg !4498
  call void @llvm.dbg.declare(metadata i32* %20, metadata !4499, metadata !DIExpression()), !dbg !4500
  %114 = load i8*, i8** %11, align 8, !dbg !4501
  %115 = load i8**, i8*** %13, align 8, !dbg !4503
  %116 = load i8*, i8** %115, align 8, !dbg !4504
  %117 = load i8, i8* %116, align 1, !dbg !4505
  %118 = sext i8 %117 to i32, !dbg !4505
  %119 = call i8* @strchr(i8* %114, i32 %118) #14, !dbg !4506
  %120 = icmp ne i8* %119, null, !dbg !4506
  br i1 %120, label %126, label %121, !dbg !4507

; <label>:121:                                    ; preds = %113
  %122 = load i64, i64* %14, align 8, !dbg !4508
  %123 = load i64*, i64** %10, align 8, !dbg !4510
  store i64 %122, i64* %123, align 8, !dbg !4511
  %124 = load i32, i32* %15, align 4, !dbg !4512
  %125 = or i32 %124, 2, !dbg !4513
  store i32 %125, i32* %6, align 4, !dbg !4514
  br label %215, !dbg !4514

; <label>:126:                                    ; preds = %113
  %127 = load i8*, i8** %11, align 8, !dbg !4515
  %128 = call i8* @strchr(i8* %127, i32 48) #14, !dbg !4517
  %129 = icmp ne i8* %128, null, !dbg !4517
  br i1 %129, label %130, label %153, !dbg !4518

; <label>:130:                                    ; preds = %126
  %131 = load i8**, i8*** %13, align 8, !dbg !4519
  %132 = getelementptr inbounds i8*, i8** %131, i64 0, !dbg !4519
  %133 = load i8*, i8** %132, align 8, !dbg !4519
  %134 = getelementptr inbounds i8, i8* %133, i64 1, !dbg !4519
  %135 = load i8, i8* %134, align 1, !dbg !4519
  %136 = sext i8 %135 to i32, !dbg !4519
  switch i32 %136, label %152 [
    i32 105, label %137
    i32 66, label %149
    i32 68, label %149
  ], !dbg !4521

; <label>:137:                                    ; preds = %130
  %138 = load i8**, i8*** %13, align 8, !dbg !4522
  %139 = getelementptr inbounds i8*, i8** %138, i64 0, !dbg !4522
  %140 = load i8*, i8** %139, align 8, !dbg !4522
  %141 = getelementptr inbounds i8, i8* %140, i64 2, !dbg !4522
  %142 = load i8, i8* %141, align 1, !dbg !4522
  %143 = sext i8 %142 to i32, !dbg !4522
  %144 = icmp eq i32 %143, 66, !dbg !4525
  br i1 %144, label %145, label %148, !dbg !4526

; <label>:145:                                    ; preds = %137
  %146 = load i32, i32* %19, align 4, !dbg !4527
  %147 = add nsw i32 %146, 2, !dbg !4527
  store i32 %147, i32* %19, align 4, !dbg !4527
  br label %148, !dbg !4528

; <label>:148:                                    ; preds = %145, %137
  br label %152, !dbg !4529

; <label>:149:                                    ; preds = %130, %130
  store i32 1000, i32* %18, align 4, !dbg !4530
  %150 = load i32, i32* %19, align 4, !dbg !4531
  %151 = add nsw i32 %150, 1, !dbg !4531
  store i32 %151, i32* %19, align 4, !dbg !4531
  br label %152, !dbg !4532

; <label>:152:                                    ; preds = %130, %149, %148
  br label %153, !dbg !4533

; <label>:153:                                    ; preds = %152, %126
  %154 = load i8**, i8*** %13, align 8, !dbg !4534
  %155 = load i8*, i8** %154, align 8, !dbg !4535
  %156 = load i8, i8* %155, align 1, !dbg !4536
  %157 = sext i8 %156 to i32, !dbg !4536
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
  ], !dbg !4537

; <label>:158:                                    ; preds = %153
  %159 = call i32 @bkm_scale(i64* %14, i32 512), !dbg !4538
  store i32 %159, i32* %20, align 4, !dbg !4540
  br label %194, !dbg !4541

; <label>:160:                                    ; preds = %153
  %161 = call i32 @bkm_scale(i64* %14, i32 1024), !dbg !4542
  store i32 %161, i32* %20, align 4, !dbg !4543
  br label %194, !dbg !4544

; <label>:162:                                    ; preds = %153
  store i32 0, i32* %20, align 4, !dbg !4545
  br label %194, !dbg !4546

; <label>:163:                                    ; preds = %153
  %164 = load i32, i32* %18, align 4, !dbg !4547
  %165 = call i32 @bkm_scale_by_power(i64* %14, i32 %164, i32 6), !dbg !4548
  store i32 %165, i32* %20, align 4, !dbg !4549
  br label %194, !dbg !4550

; <label>:166:                                    ; preds = %153, %153
  %167 = load i32, i32* %18, align 4, !dbg !4551
  %168 = call i32 @bkm_scale_by_power(i64* %14, i32 %167, i32 3), !dbg !4552
  store i32 %168, i32* %20, align 4, !dbg !4553
  br label %194, !dbg !4554

; <label>:169:                                    ; preds = %153, %153
  %170 = load i32, i32* %18, align 4, !dbg !4555
  %171 = call i32 @bkm_scale_by_power(i64* %14, i32 %170, i32 1), !dbg !4556
  store i32 %171, i32* %20, align 4, !dbg !4557
  br label %194, !dbg !4558

; <label>:172:                                    ; preds = %153, %153
  %173 = load i32, i32* %18, align 4, !dbg !4559
  %174 = call i32 @bkm_scale_by_power(i64* %14, i32 %173, i32 2), !dbg !4560
  store i32 %174, i32* %20, align 4, !dbg !4561
  br label %194, !dbg !4562

; <label>:175:                                    ; preds = %153
  %176 = load i32, i32* %18, align 4, !dbg !4563
  %177 = call i32 @bkm_scale_by_power(i64* %14, i32 %176, i32 5), !dbg !4564
  store i32 %177, i32* %20, align 4, !dbg !4565
  br label %194, !dbg !4566

; <label>:178:                                    ; preds = %153, %153
  %179 = load i32, i32* %18, align 4, !dbg !4567
  %180 = call i32 @bkm_scale_by_power(i64* %14, i32 %179, i32 4), !dbg !4568
  store i32 %180, i32* %20, align 4, !dbg !4569
  br label %194, !dbg !4570

; <label>:181:                                    ; preds = %153
  %182 = call i32 @bkm_scale(i64* %14, i32 2), !dbg !4571
  store i32 %182, i32* %20, align 4, !dbg !4572
  br label %194, !dbg !4573

; <label>:183:                                    ; preds = %153
  %184 = load i32, i32* %18, align 4, !dbg !4574
  %185 = call i32 @bkm_scale_by_power(i64* %14, i32 %184, i32 8), !dbg !4575
  store i32 %185, i32* %20, align 4, !dbg !4576
  br label %194, !dbg !4577

; <label>:186:                                    ; preds = %153
  %187 = load i32, i32* %18, align 4, !dbg !4578
  %188 = call i32 @bkm_scale_by_power(i64* %14, i32 %187, i32 7), !dbg !4579
  store i32 %188, i32* %20, align 4, !dbg !4580
  br label %194, !dbg !4581

; <label>:189:                                    ; preds = %153
  %190 = load i64, i64* %14, align 8, !dbg !4582
  %191 = load i64*, i64** %10, align 8, !dbg !4583
  store i64 %190, i64* %191, align 8, !dbg !4584
  %192 = load i32, i32* %15, align 4, !dbg !4585
  %193 = or i32 %192, 2, !dbg !4586
  store i32 %193, i32* %6, align 4, !dbg !4587
  br label %215, !dbg !4587

; <label>:194:                                    ; preds = %186, %183, %181, %178, %175, %172, %169, %166, %163, %162, %160, %158
  %195 = load i32, i32* %20, align 4, !dbg !4588
  %196 = load i32, i32* %15, align 4, !dbg !4589
  %197 = or i32 %196, %195, !dbg !4589
  store i32 %197, i32* %15, align 4, !dbg !4589
  %198 = load i32, i32* %19, align 4, !dbg !4590
  %199 = load i8**, i8*** %13, align 8, !dbg !4591
  %200 = load i8*, i8** %199, align 8, !dbg !4592
  %201 = sext i32 %198 to i64, !dbg !4592
  %202 = getelementptr inbounds i8, i8* %200, i64 %201, !dbg !4592
  store i8* %202, i8** %199, align 8, !dbg !4592
  %203 = load i8**, i8*** %13, align 8, !dbg !4593
  %204 = load i8*, i8** %203, align 8, !dbg !4595
  %205 = load i8, i8* %204, align 1, !dbg !4596
  %206 = icmp ne i8 %205, 0, !dbg !4596
  br i1 %206, label %207, label %210, !dbg !4597

; <label>:207:                                    ; preds = %194
  %208 = load i32, i32* %15, align 4, !dbg !4598
  %209 = or i32 %208, 2, !dbg !4598
  store i32 %209, i32* %15, align 4, !dbg !4598
  br label %210, !dbg !4599

; <label>:210:                                    ; preds = %207, %194
  br label %211, !dbg !4600

; <label>:211:                                    ; preds = %210, %107
  %212 = load i64, i64* %14, align 8, !dbg !4601
  %213 = load i64*, i64** %10, align 8, !dbg !4602
  store i64 %212, i64* %213, align 8, !dbg !4603
  %214 = load i32, i32* %15, align 4, !dbg !4604
  store i32 %214, i32* %6, align 4, !dbg !4605
  br label %215, !dbg !4605

; <label>:215:                                    ; preds = %211, %189, %121, %103, %97, %87, %58
  %216 = load i32, i32* %6, align 4, !dbg !4606
  ret i32 %216, !dbg !4606
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #5

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #6

; Function Attrs: noinline nounwind uwtable
define internal i32 @bkm_scale(i64*, i32) #2 !dbg !4607 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !4610, metadata !DIExpression()), !dbg !4611
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4612, metadata !DIExpression()), !dbg !4613
  %6 = load i32, i32* %5, align 4, !dbg !4614
  %7 = sext i32 %6 to i64, !dbg !4614
  %8 = udiv i64 -1, %7, !dbg !4616
  %9 = load i64*, i64** %4, align 8, !dbg !4617
  %10 = load i64, i64* %9, align 8, !dbg !4618
  %11 = icmp ult i64 %8, %10, !dbg !4619
  br i1 %11, label %12, label %14, !dbg !4620

; <label>:12:                                     ; preds = %2
  %13 = load i64*, i64** %4, align 8, !dbg !4621
  store i64 -1, i64* %13, align 8, !dbg !4623
  store i32 1, i32* %3, align 4, !dbg !4624
  br label %20, !dbg !4624

; <label>:14:                                     ; preds = %2
  %15 = load i32, i32* %5, align 4, !dbg !4625
  %16 = sext i32 %15 to i64, !dbg !4625
  %17 = load i64*, i64** %4, align 8, !dbg !4626
  %18 = load i64, i64* %17, align 8, !dbg !4627
  %19 = mul i64 %18, %16, !dbg !4627
  store i64 %19, i64* %17, align 8, !dbg !4627
  store i32 0, i32* %3, align 4, !dbg !4628
  br label %20, !dbg !4628

; <label>:20:                                     ; preds = %14, %12
  %21 = load i32, i32* %3, align 4, !dbg !4629
  ret i32 %21, !dbg !4629
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @bkm_scale_by_power(i64*, i32, i32) #2 !dbg !4630 {
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !4633, metadata !DIExpression()), !dbg !4634
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4635, metadata !DIExpression()), !dbg !4636
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4637, metadata !DIExpression()), !dbg !4638
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4639, metadata !DIExpression()), !dbg !4640
  store i32 0, i32* %7, align 4, !dbg !4640
  br label %8, !dbg !4641

; <label>:8:                                      ; preds = %12, %3
  %9 = load i32, i32* %6, align 4, !dbg !4642
  %10 = add nsw i32 %9, -1, !dbg !4642
  store i32 %10, i32* %6, align 4, !dbg !4642
  %11 = icmp ne i32 %9, 0, !dbg !4641
  br i1 %11, label %12, label %18, !dbg !4641

; <label>:12:                                     ; preds = %8
  %13 = load i64*, i64** %4, align 8, !dbg !4643
  %14 = load i32, i32* %5, align 4, !dbg !4644
  %15 = call i32 @bkm_scale(i64* %13, i32 %14), !dbg !4645
  %16 = load i32, i32* %7, align 4, !dbg !4646
  %17 = or i32 %16, %15, !dbg !4646
  store i32 %17, i32* %7, align 4, !dbg !4646
  br label %8, !dbg !4641, !llvm.loop !4647

; <label>:18:                                     ; preds = %8
  %19 = load i32, i32* %7, align 4, !dbg !4649
  ret i32 %19, !dbg !4650
}

; Function Attrs: noinline nounwind uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) #2 !dbg !4651 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !4694, metadata !DIExpression()), !dbg !4695
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4696, metadata !DIExpression()), !dbg !4697
  store i32 0, i32* %4, align 4, !dbg !4697
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4698, metadata !DIExpression()), !dbg !4699
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4700, metadata !DIExpression()), !dbg !4701
  store i32 0, i32* %6, align 4, !dbg !4701
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4702
  %8 = call i32 @fileno(%struct._IO_FILE* %7) #11, !dbg !4703
  store i32 %8, i32* %5, align 4, !dbg !4704
  %9 = load i32, i32* %5, align 4, !dbg !4705
  %10 = icmp slt i32 %9, 0, !dbg !4707
  br i1 %10, label %11, label %14, !dbg !4708

; <label>:11:                                     ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4709
  %13 = call i32 @fclose(%struct._IO_FILE* %12), !dbg !4710
  store i32 %13, i32* %2, align 4, !dbg !4711
  br label %40, !dbg !4711

; <label>:14:                                     ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4712
  %16 = call i32 @__freading(%struct._IO_FILE* %15) #11, !dbg !4712
  %17 = icmp ne i32 %16, 0, !dbg !4712
  br i1 %17, label %18, label %23, !dbg !4714

; <label>:18:                                     ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4715
  %20 = call i32 @fileno(%struct._IO_FILE* %19) #11, !dbg !4716
  %21 = call i64 @lseek(i32 %20, i64 0, i32 1) #11, !dbg !4717
  %22 = icmp ne i64 %21, -1, !dbg !4718
  br i1 %22, label %23, label %30, !dbg !4719

; <label>:23:                                     ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4720
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* %24), !dbg !4721
  %26 = icmp ne i32 %25, 0, !dbg !4721
  br i1 %26, label %27, label %30, !dbg !4722

; <label>:27:                                     ; preds = %23
  %28 = call i32* @__errno_location() #16, !dbg !4723
  %29 = load i32, i32* %28, align 4, !dbg !4723
  store i32 %29, i32* %4, align 4, !dbg !4724
  br label %30, !dbg !4725

; <label>:30:                                     ; preds = %27, %23, %18
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4726
  %32 = call i32 @fclose(%struct._IO_FILE* %31), !dbg !4727
  store i32 %32, i32* %6, align 4, !dbg !4728
  %33 = load i32, i32* %4, align 4, !dbg !4729
  %34 = icmp ne i32 %33, 0, !dbg !4731
  br i1 %34, label %35, label %38, !dbg !4732

; <label>:35:                                     ; preds = %30
  %36 = load i32, i32* %4, align 4, !dbg !4733
  %37 = call i32* @__errno_location() #16, !dbg !4735
  store i32 %36, i32* %37, align 4, !dbg !4736
  store i32 -1, i32* %6, align 4, !dbg !4737
  br label %38, !dbg !4738

; <label>:38:                                     ; preds = %35, %30
  %39 = load i32, i32* %6, align 4, !dbg !4739
  store i32 %39, i32* %2, align 4, !dbg !4740
  br label %40, !dbg !4740

; <label>:40:                                     ; preds = %38, %11
  %41 = load i32, i32* %2, align 4, !dbg !4741
  ret i32 %41, !dbg !4741
}

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) #5

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #5

; Function Attrs: noinline nounwind uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) #2 !dbg !4742 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !4785, metadata !DIExpression()), !dbg !4786
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4787
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !4789
  br i1 %5, label %10, label %6, !dbg !4790

; <label>:6:                                      ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4791
  %8 = call i32 @__freading(%struct._IO_FILE* %7) #11, !dbg !4791
  %9 = icmp ne i32 %8, 0, !dbg !4791
  br i1 %9, label %13, label %10, !dbg !4792

; <label>:10:                                     ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4793
  %12 = call i32 @fflush(%struct._IO_FILE* %11), !dbg !4794
  store i32 %12, i32* %2, align 4, !dbg !4795
  br label %17, !dbg !4795

; <label>:13:                                     ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4796
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* %14), !dbg !4797
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4798
  %16 = call i32 @fflush(%struct._IO_FILE* %15), !dbg !4799
  store i32 %16, i32* %2, align 4, !dbg !4800
  br label %17, !dbg !4800

; <label>:17:                                     ; preds = %13, %10
  %18 = load i32, i32* %2, align 4, !dbg !4801
  ret i32 %18, !dbg !4801
}

declare i32 @fflush(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE*) #2 !dbg !4802 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !4805, metadata !DIExpression()), !dbg !4806
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !4807
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0, !dbg !4809
  %5 = load i32, i32* %4, align 8, !dbg !4809
  %6 = and i32 %5, 256, !dbg !4810
  %7 = icmp ne i32 %6, 0, !dbg !4810
  br i1 %7, label %8, label %11, !dbg !4811

; <label>:8:                                      ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !4812
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* %9, i64 0, i32 1), !dbg !4813
  br label %11, !dbg !4813

; <label>:11:                                     ; preds = %8, %1
  ret void, !dbg !4814
}

; Function Attrs: noinline nounwind uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nonnull, i64, i32) #2 !dbg !4815 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !4858, metadata !DIExpression()), !dbg !4859
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4860, metadata !DIExpression()), !dbg !4861
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4862, metadata !DIExpression()), !dbg !4863
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4864
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2, !dbg !4866
  %11 = load i8*, i8** %10, align 8, !dbg !4866
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4867
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1, !dbg !4868
  %14 = load i8*, i8** %13, align 8, !dbg !4868
  %15 = icmp eq i8* %11, %14, !dbg !4869
  br i1 %15, label %16, label %46, !dbg !4870

; <label>:16:                                     ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4871
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5, !dbg !4872
  %19 = load i8*, i8** %18, align 8, !dbg !4872
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4873
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4, !dbg !4874
  %22 = load i8*, i8** %21, align 8, !dbg !4874
  %23 = icmp eq i8* %19, %22, !dbg !4875
  br i1 %23, label %24, label %46, !dbg !4876

; <label>:24:                                     ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4877
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9, !dbg !4878
  %27 = load i8*, i8** %26, align 8, !dbg !4878
  %28 = icmp eq i8* %27, null, !dbg !4879
  br i1 %28, label %29, label %46, !dbg !4880

; <label>:29:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4881, metadata !DIExpression()), !dbg !4883
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4884
  %31 = call i32 @fileno(%struct._IO_FILE* %30) #11, !dbg !4885
  %32 = load i64, i64* %6, align 8, !dbg !4886
  %33 = load i32, i32* %7, align 4, !dbg !4887
  %34 = call i64 @lseek(i32 %31, i64 %32, i32 %33) #11, !dbg !4888
  store i64 %34, i64* %8, align 8, !dbg !4883
  %35 = load i64, i64* %8, align 8, !dbg !4889
  %36 = icmp eq i64 %35, -1, !dbg !4891
  br i1 %36, label %37, label %38, !dbg !4892

; <label>:37:                                     ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !4893
  br label %51, !dbg !4893

; <label>:38:                                     ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4895
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0, !dbg !4896
  %41 = load i32, i32* %40, align 8, !dbg !4897
  %42 = and i32 %41, -17, !dbg !4897
  store i32 %42, i32* %40, align 8, !dbg !4897
  %43 = load i64, i64* %8, align 8, !dbg !4898
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4899
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21, !dbg !4900
  store i64 %43, i64* %45, align 8, !dbg !4901
  store i32 0, i32* %4, align 4, !dbg !4902
  br label %51, !dbg !4902

; <label>:46:                                     ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4903
  %48 = load i64, i64* %6, align 8, !dbg !4904
  %49 = load i32, i32* %7, align 4, !dbg !4905
  %50 = call i32 @fseeko(%struct._IO_FILE* %47, i64 %48, i32 %49), !dbg !4906
  store i32 %50, i32* %4, align 4, !dbg !4907
  br label %51, !dbg !4907

; <label>:51:                                     ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4, !dbg !4908
  ret i32 %52, !dbg !4908
}

declare i32 @fseeko(%struct._IO_FILE*, i64, i32) #3

; Function Attrs: noinline nounwind readonly uwtable
define i32 @c_strcasecmp(i8*, i8*) #8 !dbg !4909 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4912, metadata !DIExpression()), !dbg !4913
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4914, metadata !DIExpression()), !dbg !4915
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4916, metadata !DIExpression()), !dbg !4917
  %10 = load i8*, i8** %4, align 8, !dbg !4918
  store i8* %10, i8** %6, align 8, !dbg !4917
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4919, metadata !DIExpression()), !dbg !4920
  %11 = load i8*, i8** %5, align 8, !dbg !4921
  store i8* %11, i8** %7, align 8, !dbg !4920
  call void @llvm.dbg.declare(metadata i8* %8, metadata !4922, metadata !DIExpression()), !dbg !4923
  call void @llvm.dbg.declare(metadata i8* %9, metadata !4924, metadata !DIExpression()), !dbg !4925
  %12 = load i8*, i8** %6, align 8, !dbg !4926
  %13 = load i8*, i8** %7, align 8, !dbg !4928
  %14 = icmp eq i8* %12, %13, !dbg !4929
  br i1 %14, label %15, label %16, !dbg !4930

; <label>:15:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !4931
  br label %49, !dbg !4931

; <label>:16:                                     ; preds = %2
  br label %17, !dbg !4932, !llvm.loop !4933

; <label>:17:                                     ; preds = %37, %16
  %18 = load i8*, i8** %6, align 8, !dbg !4935
  %19 = load i8, i8* %18, align 1, !dbg !4937
  %20 = zext i8 %19 to i32, !dbg !4937
  %21 = call i32 @c_tolower(i32 %20) #16, !dbg !4938
  %22 = trunc i32 %21 to i8, !dbg !4938
  store i8 %22, i8* %8, align 1, !dbg !4939
  %23 = load i8*, i8** %7, align 8, !dbg !4940
  %24 = load i8, i8* %23, align 1, !dbg !4941
  %25 = zext i8 %24 to i32, !dbg !4941
  %26 = call i32 @c_tolower(i32 %25) #16, !dbg !4942
  %27 = trunc i32 %26 to i8, !dbg !4942
  store i8 %27, i8* %9, align 1, !dbg !4943
  %28 = load i8, i8* %8, align 1, !dbg !4944
  %29 = zext i8 %28 to i32, !dbg !4944
  %30 = icmp eq i32 %29, 0, !dbg !4946
  br i1 %30, label %31, label %32, !dbg !4947

; <label>:31:                                     ; preds = %17
  br label %43, !dbg !4948

; <label>:32:                                     ; preds = %17
  %33 = load i8*, i8** %6, align 8, !dbg !4949
  %34 = getelementptr inbounds i8, i8* %33, i32 1, !dbg !4949
  store i8* %34, i8** %6, align 8, !dbg !4949
  %35 = load i8*, i8** %7, align 8, !dbg !4950
  %36 = getelementptr inbounds i8, i8* %35, i32 1, !dbg !4950
  store i8* %36, i8** %7, align 8, !dbg !4950
  br label %37, !dbg !4951

; <label>:37:                                     ; preds = %32
  %38 = load i8, i8* %8, align 1, !dbg !4952
  %39 = zext i8 %38 to i32, !dbg !4952
  %40 = load i8, i8* %9, align 1, !dbg !4953
  %41 = zext i8 %40 to i32, !dbg !4953
  %42 = icmp eq i32 %39, %41, !dbg !4954
  br i1 %42, label %17, label %43, !dbg !4951, !llvm.loop !4933

; <label>:43:                                     ; preds = %37, %31
  %44 = load i8, i8* %8, align 1, !dbg !4955
  %45 = zext i8 %44 to i32, !dbg !4955
  %46 = load i8, i8* %9, align 1, !dbg !4957
  %47 = zext i8 %46 to i32, !dbg !4957
  %48 = sub nsw i32 %45, %47, !dbg !4958
  store i32 %48, i32* %3, align 4, !dbg !4959
  br label %49, !dbg !4959

; <label>:49:                                     ; preds = %43, %15
  %50 = load i32, i32* %3, align 4, !dbg !4960
  ret i32 %50, !dbg !4960
}

; Function Attrs: noinline nounwind uwtable
define i32 @close_stream(%struct._IO_FILE*) #2 !dbg !4961 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !5004, metadata !DIExpression()), !dbg !5005
  call void @llvm.dbg.declare(metadata i8* %4, metadata !5006, metadata !DIExpression()), !dbg !5008
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5009
  %8 = call i64 @__fpending(%struct._IO_FILE* %7) #11, !dbg !5010
  %9 = icmp ne i64 %8, 0, !dbg !5011
  %10 = zext i1 %9 to i8, !dbg !5008
  store i8 %10, i8* %4, align 1, !dbg !5008
  call void @llvm.dbg.declare(metadata i8* %5, metadata !5012, metadata !DIExpression()), !dbg !5013
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5014
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* %11) #11, !dbg !5014
  %13 = icmp ne i32 %12, 0, !dbg !5015
  %14 = zext i1 %13 to i8, !dbg !5013
  store i8 %14, i8* %5, align 1, !dbg !5013
  call void @llvm.dbg.declare(metadata i8* %6, metadata !5016, metadata !DIExpression()), !dbg !5017
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5018
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* %15), !dbg !5019
  %17 = icmp ne i32 %16, 0, !dbg !5020
  %18 = zext i1 %17 to i8, !dbg !5017
  store i8 %18, i8* %6, align 1, !dbg !5017
  %19 = load i8, i8* %5, align 1, !dbg !5021
  %20 = trunc i8 %19 to i1, !dbg !5021
  br i1 %20, label %31, label %21, !dbg !5023

; <label>:21:                                     ; preds = %1
  %22 = load i8, i8* %6, align 1, !dbg !5024
  %23 = trunc i8 %22 to i1, !dbg !5024
  br i1 %23, label %24, label %37, !dbg !5025

; <label>:24:                                     ; preds = %21
  %25 = load i8, i8* %4, align 1, !dbg !5026
  %26 = trunc i8 %25 to i1, !dbg !5026
  br i1 %26, label %31, label %27, !dbg !5027

; <label>:27:                                     ; preds = %24
  %28 = call i32* @__errno_location() #16, !dbg !5028
  %29 = load i32, i32* %28, align 4, !dbg !5028
  %30 = icmp ne i32 %29, 9, !dbg !5029
  br i1 %30, label %31, label %37, !dbg !5030

; <label>:31:                                     ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1, !dbg !5031
  %33 = trunc i8 %32 to i1, !dbg !5031
  br i1 %33, label %36, label %34, !dbg !5034

; <label>:34:                                     ; preds = %31
  %35 = call i32* @__errno_location() #16, !dbg !5035
  store i32 0, i32* %35, align 4, !dbg !5036
  br label %36, !dbg !5035

; <label>:36:                                     ; preds = %34, %31
  store i32 -1, i32* %2, align 4, !dbg !5037
  br label %38, !dbg !5037

; <label>:37:                                     ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !5038
  br label %38, !dbg !5038

; <label>:38:                                     ; preds = %37, %36
  %39 = load i32, i32* %2, align 4, !dbg !5039
  ret i32 %39, !dbg !5039
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) #5

; Function Attrs: noinline nounwind uwtable
define i8* @locale_charset() #2 !dbg !5040 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !5042, metadata !DIExpression()), !dbg !5043
  call void @llvm.dbg.declare(metadata i8** %2, metadata !5044, metadata !DIExpression()), !dbg !5045
  %3 = call i8* @nl_langinfo(i32 14) #11, !dbg !5046
  store i8* %3, i8** %1, align 8, !dbg !5047
  %4 = load i8*, i8** %1, align 8, !dbg !5048
  %5 = icmp eq i8* %4, null, !dbg !5050
  br i1 %5, label %6, label %7, !dbg !5051

; <label>:6:                                      ; preds = %0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.179, i32 0, i32 0), i8** %1, align 8, !dbg !5052
  br label %7, !dbg !5053

; <label>:7:                                      ; preds = %6, %0
  %8 = call i8* @get_charset_aliases(), !dbg !5054
  store i8* %8, i8** %2, align 8, !dbg !5056
  br label %9, !dbg !5057

; <label>:9:                                      ; preds = %38, %7
  %10 = load i8*, i8** %2, align 8, !dbg !5058
  %11 = load i8, i8* %10, align 1, !dbg !5060
  %12 = sext i8 %11 to i32, !dbg !5060
  %13 = icmp ne i32 %12, 0, !dbg !5061
  br i1 %13, label %14, label %49, !dbg !5062

; <label>:14:                                     ; preds = %9
  %15 = load i8*, i8** %1, align 8, !dbg !5063
  %16 = load i8*, i8** %2, align 8, !dbg !5065
  %17 = call i32 @strcmp(i8* %15, i8* %16) #14, !dbg !5066
  %18 = icmp eq i32 %17, 0, !dbg !5067
  br i1 %18, label %31, label %19, !dbg !5068

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %2, align 8, !dbg !5069
  %21 = getelementptr inbounds i8, i8* %20, i64 0, !dbg !5069
  %22 = load i8, i8* %21, align 1, !dbg !5069
  %23 = sext i8 %22 to i32, !dbg !5069
  %24 = icmp eq i32 %23, 42, !dbg !5070
  br i1 %24, label %25, label %37, !dbg !5071

; <label>:25:                                     ; preds = %19
  %26 = load i8*, i8** %2, align 8, !dbg !5072
  %27 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !5072
  %28 = load i8, i8* %27, align 1, !dbg !5072
  %29 = sext i8 %28 to i32, !dbg !5072
  %30 = icmp eq i32 %29, 0, !dbg !5073
  br i1 %30, label %31, label %37, !dbg !5074

; <label>:31:                                     ; preds = %25, %14
  %32 = load i8*, i8** %2, align 8, !dbg !5075
  %33 = load i8*, i8** %2, align 8, !dbg !5077
  %34 = call i64 @strlen(i8* %33) #14, !dbg !5078
  %35 = getelementptr inbounds i8, i8* %32, i64 %34, !dbg !5079
  %36 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !5080
  store i8* %36, i8** %1, align 8, !dbg !5081
  br label %49, !dbg !5082

; <label>:37:                                     ; preds = %25, %19
  br label %38, !dbg !5083

; <label>:38:                                     ; preds = %37
  %39 = load i8*, i8** %2, align 8, !dbg !5084
  %40 = call i64 @strlen(i8* %39) #14, !dbg !5085
  %41 = add i64 %40, 1, !dbg !5086
  %42 = load i8*, i8** %2, align 8, !dbg !5087
  %43 = getelementptr inbounds i8, i8* %42, i64 %41, !dbg !5087
  store i8* %43, i8** %2, align 8, !dbg !5087
  %44 = load i8*, i8** %2, align 8, !dbg !5088
  %45 = call i64 @strlen(i8* %44) #14, !dbg !5089
  %46 = add i64 %45, 1, !dbg !5090
  %47 = load i8*, i8** %2, align 8, !dbg !5091
  %48 = getelementptr inbounds i8, i8* %47, i64 %46, !dbg !5091
  store i8* %48, i8** %2, align 8, !dbg !5091
  br label %9, !dbg !5092, !llvm.loop !5093

; <label>:49:                                     ; preds = %31, %9
  %50 = load i8*, i8** %1, align 8, !dbg !5095
  %51 = getelementptr inbounds i8, i8* %50, i64 0, !dbg !5095
  %52 = load i8, i8* %51, align 1, !dbg !5095
  %53 = sext i8 %52 to i32, !dbg !5095
  %54 = icmp eq i32 %53, 0, !dbg !5097
  br i1 %54, label %55, label %56, !dbg !5098

; <label>:55:                                     ; preds = %49
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.180, i32 0, i32 0), i8** %1, align 8, !dbg !5099
  br label %56, !dbg !5100

; <label>:56:                                     ; preds = %55, %49
  %57 = load i8*, i8** %1, align 8, !dbg !5101
  ret i8* %57, !dbg !5102
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) #5

; Function Attrs: noinline nounwind uwtable
define internal i8* @get_charset_aliases() #2 !dbg !5103 {
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
  call void @llvm.dbg.declare(metadata i8** %1, metadata !5104, metadata !DIExpression()), !dbg !5105
  %18 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !5106
  store i8* %18, i8** %1, align 8, !dbg !5107
  %19 = load i8*, i8** %1, align 8, !dbg !5108
  %20 = icmp eq i8* %19, null, !dbg !5110
  br i1 %20, label %21, label %221, !dbg !5111

; <label>:21:                                     ; preds = %0
  call void @llvm.dbg.declare(metadata i8** %2, metadata !5112, metadata !DIExpression()), !dbg !5114
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5115, metadata !DIExpression()), !dbg !5116
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.181, i32 0, i32 0), i8** %3, align 8, !dbg !5116
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5117, metadata !DIExpression()), !dbg !5118
  %22 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.182, i32 0, i32 0)) #11, !dbg !5119
  store i8* %22, i8** %2, align 8, !dbg !5120
  %23 = load i8*, i8** %2, align 8, !dbg !5121
  %24 = icmp eq i8* %23, null, !dbg !5123
  br i1 %24, label %31, label %25, !dbg !5124

; <label>:25:                                     ; preds = %21
  %26 = load i8*, i8** %2, align 8, !dbg !5125
  %27 = getelementptr inbounds i8, i8* %26, i64 0, !dbg !5125
  %28 = load i8, i8* %27, align 1, !dbg !5125
  %29 = sext i8 %28 to i32, !dbg !5125
  %30 = icmp eq i32 %29, 0, !dbg !5126
  br i1 %30, label %31, label %32, !dbg !5127

; <label>:31:                                     ; preds = %25, %21
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.183, i32 0, i32 0), i8** %2, align 8, !dbg !5128
  br label %32, !dbg !5129

; <label>:32:                                     ; preds = %31, %25
  call void @llvm.dbg.declare(metadata i64* %5, metadata !5130, metadata !DIExpression()), !dbg !5132
  %33 = load i8*, i8** %2, align 8, !dbg !5133
  %34 = call i64 @strlen(i8* %33) #14, !dbg !5134
  store i64 %34, i64* %5, align 8, !dbg !5132
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5135, metadata !DIExpression()), !dbg !5136
  %35 = load i8*, i8** %3, align 8, !dbg !5137
  %36 = call i64 @strlen(i8* %35) #14, !dbg !5138
  store i64 %36, i64* %6, align 8, !dbg !5136
  call void @llvm.dbg.declare(metadata i32* %7, metadata !5139, metadata !DIExpression()), !dbg !5140
  %37 = load i64, i64* %5, align 8, !dbg !5141
  %38 = icmp ugt i64 %37, 0, !dbg !5142
  br i1 %38, label %39, label %48, !dbg !5143

; <label>:39:                                     ; preds = %32
  %40 = load i8*, i8** %2, align 8, !dbg !5144
  %41 = load i64, i64* %5, align 8, !dbg !5144
  %42 = sub i64 %41, 1, !dbg !5144
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !5144
  %44 = load i8, i8* %43, align 1, !dbg !5144
  %45 = sext i8 %44 to i32, !dbg !5144
  %46 = icmp eq i32 %45, 47, !dbg !5144
  %47 = xor i1 %46, true, !dbg !5145
  br label %48

; <label>:48:                                     ; preds = %39, %32
  %49 = phi i1 [ false, %32 ], [ %47, %39 ]
  %50 = zext i1 %49 to i32, !dbg !5143
  store i32 %50, i32* %7, align 4, !dbg !5140
  %51 = load i64, i64* %5, align 8, !dbg !5146
  %52 = load i32, i32* %7, align 4, !dbg !5147
  %53 = sext i32 %52 to i64, !dbg !5147
  %54 = add i64 %51, %53, !dbg !5148
  %55 = load i64, i64* %6, align 8, !dbg !5149
  %56 = add i64 %54, %55, !dbg !5150
  %57 = add i64 %56, 1, !dbg !5151
  %58 = call noalias i8* @malloc(i64 %57) #11, !dbg !5152
  store i8* %58, i8** %4, align 8, !dbg !5153
  %59 = load i8*, i8** %4, align 8, !dbg !5154
  %60 = icmp ne i8* %59, null, !dbg !5156
  br i1 %60, label %61, label %81, !dbg !5157

; <label>:61:                                     ; preds = %48
  %62 = load i8*, i8** %4, align 8, !dbg !5158
  %63 = load i8*, i8** %2, align 8, !dbg !5160
  %64 = load i64, i64* %5, align 8, !dbg !5161
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 %64, i32 1, i1 false), !dbg !5162
  %65 = load i32, i32* %7, align 4, !dbg !5163
  %66 = icmp ne i32 %65, 0, !dbg !5163
  br i1 %66, label %67, label %71, !dbg !5165

; <label>:67:                                     ; preds = %61
  %68 = load i8*, i8** %4, align 8, !dbg !5166
  %69 = load i64, i64* %5, align 8, !dbg !5167
  %70 = getelementptr inbounds i8, i8* %68, i64 %69, !dbg !5166
  store i8 47, i8* %70, align 1, !dbg !5168
  br label %71, !dbg !5166

; <label>:71:                                     ; preds = %67, %61
  %72 = load i8*, i8** %4, align 8, !dbg !5169
  %73 = load i64, i64* %5, align 8, !dbg !5170
  %74 = getelementptr inbounds i8, i8* %72, i64 %73, !dbg !5171
  %75 = load i32, i32* %7, align 4, !dbg !5172
  %76 = sext i32 %75 to i64, !dbg !5173
  %77 = getelementptr inbounds i8, i8* %74, i64 %76, !dbg !5173
  %78 = load i8*, i8** %3, align 8, !dbg !5174
  %79 = load i64, i64* %6, align 8, !dbg !5175
  %80 = add i64 %79, 1, !dbg !5176
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %77, i8* %78, i64 %80, i32 1, i1 false), !dbg !5177
  br label %81, !dbg !5178

; <label>:81:                                     ; preds = %71, %48
  %82 = load i8*, i8** %4, align 8, !dbg !5179
  %83 = icmp eq i8* %82, null, !dbg !5181
  br i1 %83, label %84, label %85, !dbg !5182

; <label>:84:                                     ; preds = %81
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.179, i32 0, i32 0), i8** %1, align 8, !dbg !5183
  br label %219, !dbg !5184

; <label>:85:                                     ; preds = %81
  call void @llvm.dbg.declare(metadata i32* %8, metadata !5185, metadata !DIExpression()), !dbg !5187
  %86 = load i8*, i8** %4, align 8, !dbg !5188
  %87 = call i32 (i8*, i32, ...) @open(i8* %86, i32 131072), !dbg !5189
  store i32 %87, i32* %8, align 4, !dbg !5190
  %88 = load i32, i32* %8, align 4, !dbg !5191
  %89 = icmp slt i32 %88, 0, !dbg !5193
  br i1 %89, label %90, label %91, !dbg !5194

; <label>:90:                                     ; preds = %85
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.179, i32 0, i32 0), i8** %1, align 8, !dbg !5195
  br label %217, !dbg !5196

; <label>:91:                                     ; preds = %85
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %9, metadata !5197, metadata !DIExpression()), !dbg !5239
  %92 = load i32, i32* %8, align 4, !dbg !5240
  %93 = call %struct._IO_FILE* @fdopen(i32 %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.184, i32 0, i32 0)) #11, !dbg !5241
  store %struct._IO_FILE* %93, %struct._IO_FILE** %9, align 8, !dbg !5242
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !5243
  %95 = icmp eq %struct._IO_FILE* %94, null, !dbg !5245
  br i1 %95, label %96, label %99, !dbg !5246

; <label>:96:                                     ; preds = %91
  %97 = load i32, i32* %8, align 4, !dbg !5247
  %98 = call i32 @close(i32 %97), !dbg !5249
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.179, i32 0, i32 0), i8** %1, align 8, !dbg !5250
  br label %216, !dbg !5251

; <label>:99:                                     ; preds = %91
  call void @llvm.dbg.declare(metadata i8** %10, metadata !5252, metadata !DIExpression()), !dbg !5254
  store i8* null, i8** %10, align 8, !dbg !5254
  call void @llvm.dbg.declare(metadata i64* %11, metadata !5255, metadata !DIExpression()), !dbg !5256
  store i64 0, i64* %11, align 8, !dbg !5256
  br label %100, !dbg !5257

; <label>:100:                                    ; preds = %181, %136, %115, %99
  call void @llvm.dbg.declare(metadata i32* %12, metadata !5258, metadata !DIExpression()), !dbg !5262
  call void @llvm.dbg.declare(metadata [51 x i8]* %13, metadata !5263, metadata !DIExpression()), !dbg !5267
  call void @llvm.dbg.declare(metadata [51 x i8]* %14, metadata !5268, metadata !DIExpression()), !dbg !5269
  call void @llvm.dbg.declare(metadata i64* %15, metadata !5270, metadata !DIExpression()), !dbg !5271
  call void @llvm.dbg.declare(metadata i64* %16, metadata !5272, metadata !DIExpression()), !dbg !5273
  call void @llvm.dbg.declare(metadata i8** %17, metadata !5274, metadata !DIExpression()), !dbg !5275
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !5276
  %102 = call i32 @getc_unlocked(%struct._IO_FILE* %101), !dbg !5277
  store i32 %102, i32* %12, align 4, !dbg !5278
  %103 = load i32, i32* %12, align 4, !dbg !5279
  %104 = icmp eq i32 %103, -1, !dbg !5281
  br i1 %104, label %105, label %106, !dbg !5282

; <label>:105:                                    ; preds = %100
  br label %204, !dbg !5283

; <label>:106:                                    ; preds = %100
  %107 = load i32, i32* %12, align 4, !dbg !5284
  %108 = icmp eq i32 %107, 10, !dbg !5286
  br i1 %108, label %115, label %109, !dbg !5287

; <label>:109:                                    ; preds = %106
  %110 = load i32, i32* %12, align 4, !dbg !5288
  %111 = icmp eq i32 %110, 32, !dbg !5289
  br i1 %111, label %115, label %112, !dbg !5290

; <label>:112:                                    ; preds = %109
  %113 = load i32, i32* %12, align 4, !dbg !5291
  %114 = icmp eq i32 %113, 9, !dbg !5292
  br i1 %114, label %115, label %116, !dbg !5293

; <label>:115:                                    ; preds = %112, %109, %106
  br label %100, !dbg !5294, !llvm.loop !5295

; <label>:116:                                    ; preds = %112
  %117 = load i32, i32* %12, align 4, !dbg !5298
  %118 = icmp eq i32 %117, 35, !dbg !5300
  br i1 %118, label %119, label %137, !dbg !5301

; <label>:119:                                    ; preds = %116
  br label %120, !dbg !5302, !llvm.loop !5304

; <label>:120:                                    ; preds = %129, %119
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !5306
  %122 = call i32 @getc_unlocked(%struct._IO_FILE* %121), !dbg !5307
  store i32 %122, i32* %12, align 4, !dbg !5308
  br label %123, !dbg !5309

; <label>:123:                                    ; preds = %120
  %124 = load i32, i32* %12, align 4, !dbg !5310
  %125 = icmp eq i32 %124, -1, !dbg !5311
  br i1 %125, label %129, label %126, !dbg !5312

; <label>:126:                                    ; preds = %123
  %127 = load i32, i32* %12, align 4, !dbg !5313
  %128 = icmp eq i32 %127, 10, !dbg !5314
  br label %129, !dbg !5312

; <label>:129:                                    ; preds = %126, %123
  %130 = phi i1 [ true, %123 ], [ %128, %126 ]
  %131 = xor i1 %130, true, !dbg !5315
  br i1 %131, label %120, label %132, !dbg !5309, !llvm.loop !5304

; <label>:132:                                    ; preds = %129
  %133 = load i32, i32* %12, align 4, !dbg !5316
  %134 = icmp eq i32 %133, -1, !dbg !5318
  br i1 %134, label %135, label %136, !dbg !5319

; <label>:135:                                    ; preds = %132
  br label %204, !dbg !5320

; <label>:136:                                    ; preds = %132
  br label %100, !dbg !5321, !llvm.loop !5295

; <label>:137:                                    ; preds = %116
  %138 = load i32, i32* %12, align 4, !dbg !5322
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !5323
  %140 = call i32 @ungetc(i32 %138, %struct._IO_FILE* %139), !dbg !5324
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !5325
  %142 = getelementptr inbounds [51 x i8], [51 x i8]* %13, i32 0, i32 0, !dbg !5327
  %143 = getelementptr inbounds [51 x i8], [51 x i8]* %14, i32 0, i32 0, !dbg !5328
  %144 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %141, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.185, i32 0, i32 0), i8* %142, i8* %143), !dbg !5329
  %145 = icmp slt i32 %144, 2, !dbg !5330
  br i1 %145, label %146, label %147, !dbg !5331

; <label>:146:                                    ; preds = %137
  br label %204, !dbg !5332

; <label>:147:                                    ; preds = %137
  %148 = getelementptr inbounds [51 x i8], [51 x i8]* %13, i32 0, i32 0, !dbg !5333
  %149 = call i64 @strlen(i8* %148) #14, !dbg !5334
  store i64 %149, i64* %15, align 8, !dbg !5335
  %150 = getelementptr inbounds [51 x i8], [51 x i8]* %14, i32 0, i32 0, !dbg !5336
  %151 = call i64 @strlen(i8* %150) #14, !dbg !5337
  store i64 %151, i64* %16, align 8, !dbg !5338
  %152 = load i8*, i8** %10, align 8, !dbg !5339
  store i8* %152, i8** %17, align 8, !dbg !5340
  %153 = load i64, i64* %11, align 8, !dbg !5341
  %154 = icmp eq i64 %153, 0, !dbg !5343
  br i1 %154, label %155, label %164, !dbg !5344

; <label>:155:                                    ; preds = %147
  %156 = load i64, i64* %15, align 8, !dbg !5345
  %157 = add i64 %156, 1, !dbg !5347
  %158 = load i64, i64* %16, align 8, !dbg !5348
  %159 = add i64 %157, %158, !dbg !5349
  %160 = add i64 %159, 1, !dbg !5350
  store i64 %160, i64* %11, align 8, !dbg !5351
  %161 = load i64, i64* %11, align 8, !dbg !5352
  %162 = add i64 %161, 1, !dbg !5353
  %163 = call noalias i8* @malloc(i64 %162) #11, !dbg !5354
  store i8* %163, i8** %10, align 8, !dbg !5355
  br label %176, !dbg !5356

; <label>:164:                                    ; preds = %147
  %165 = load i64, i64* %15, align 8, !dbg !5357
  %166 = add i64 %165, 1, !dbg !5359
  %167 = load i64, i64* %16, align 8, !dbg !5360
  %168 = add i64 %166, %167, !dbg !5361
  %169 = add i64 %168, 1, !dbg !5362
  %170 = load i64, i64* %11, align 8, !dbg !5363
  %171 = add i64 %170, %169, !dbg !5363
  store i64 %171, i64* %11, align 8, !dbg !5363
  %172 = load i8*, i8** %10, align 8, !dbg !5364
  %173 = load i64, i64* %11, align 8, !dbg !5365
  %174 = add i64 %173, 1, !dbg !5366
  %175 = call i8* @realloc(i8* %172, i64 %174) #11, !dbg !5367
  store i8* %175, i8** %10, align 8, !dbg !5368
  br label %176

; <label>:176:                                    ; preds = %164, %155
  %177 = load i8*, i8** %10, align 8, !dbg !5369
  %178 = icmp eq i8* %177, null, !dbg !5371
  br i1 %178, label %179, label %181, !dbg !5372

; <label>:179:                                    ; preds = %176
  store i64 0, i64* %11, align 8, !dbg !5373
  %180 = load i8*, i8** %17, align 8, !dbg !5375
  call void @free(i8* %180) #11, !dbg !5376
  br label %204, !dbg !5377

; <label>:181:                                    ; preds = %176
  %182 = load i8*, i8** %10, align 8, !dbg !5378
  %183 = load i64, i64* %11, align 8, !dbg !5379
  %184 = getelementptr inbounds i8, i8* %182, i64 %183, !dbg !5380
  %185 = load i64, i64* %16, align 8, !dbg !5381
  %186 = add i64 %185, 1, !dbg !5382
  %187 = sub i64 0, %186, !dbg !5383
  %188 = getelementptr inbounds i8, i8* %184, i64 %187, !dbg !5383
  %189 = load i64, i64* %15, align 8, !dbg !5384
  %190 = add i64 %189, 1, !dbg !5385
  %191 = sub i64 0, %190, !dbg !5386
  %192 = getelementptr inbounds i8, i8* %188, i64 %191, !dbg !5386
  %193 = getelementptr inbounds [51 x i8], [51 x i8]* %13, i32 0, i32 0, !dbg !5387
  %194 = call i8* @strcpy(i8* %192, i8* %193) #11, !dbg !5388
  %195 = load i8*, i8** %10, align 8, !dbg !5389
  %196 = load i64, i64* %11, align 8, !dbg !5390
  %197 = getelementptr inbounds i8, i8* %195, i64 %196, !dbg !5391
  %198 = load i64, i64* %16, align 8, !dbg !5392
  %199 = add i64 %198, 1, !dbg !5393
  %200 = sub i64 0, %199, !dbg !5394
  %201 = getelementptr inbounds i8, i8* %197, i64 %200, !dbg !5394
  %202 = getelementptr inbounds [51 x i8], [51 x i8]* %14, i32 0, i32 0, !dbg !5395
  %203 = call i8* @strcpy(i8* %201, i8* %202) #11, !dbg !5396
  br label %100, !dbg !5397, !llvm.loop !5295

; <label>:204:                                    ; preds = %179, %146, %135, %105
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !5398
  %206 = call i32 @rpl_fclose(%struct._IO_FILE* %205), !dbg !5399
  %207 = load i64, i64* %11, align 8, !dbg !5400
  %208 = icmp eq i64 %207, 0, !dbg !5402
  br i1 %208, label %209, label %210, !dbg !5403

; <label>:209:                                    ; preds = %204
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.179, i32 0, i32 0), i8** %1, align 8, !dbg !5404
  br label %215, !dbg !5405

; <label>:210:                                    ; preds = %204
  %211 = load i8*, i8** %10, align 8, !dbg !5406
  %212 = load i64, i64* %11, align 8, !dbg !5408
  %213 = getelementptr inbounds i8, i8* %211, i64 %212, !dbg !5409
  store i8 0, i8* %213, align 1, !dbg !5410
  %214 = load i8*, i8** %10, align 8, !dbg !5411
  store i8* %214, i8** %1, align 8, !dbg !5412
  br label %215

; <label>:215:                                    ; preds = %210, %209
  br label %216

; <label>:216:                                    ; preds = %215, %96
  br label %217

; <label>:217:                                    ; preds = %216, %90
  %218 = load i8*, i8** %4, align 8, !dbg !5413
  call void @free(i8* %218) #11, !dbg !5414
  br label %219

; <label>:219:                                    ; preds = %217, %84
  %220 = load i8*, i8** %1, align 8, !dbg !5415
  store volatile i8* %220, i8** @charset_aliases, align 8, !dbg !5416
  br label %221, !dbg !5417

; <label>:221:                                    ; preds = %219, %0
  %222 = load i8*, i8** %1, align 8, !dbg !5418
  ret i8* %222, !dbg !5419
}

; Function Attrs: nounwind
declare %struct._IO_FILE* @fdopen(i32, i8*) #5

declare i32 @ungetc(i32, %struct._IO_FILE*) #3

declare i32 @fscanf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind uwtable
define i32 @memcoll(i8*, i64, i8*, i64) #2 !dbg !5420 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !5421, metadata !DIExpression()), !dbg !5422
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5423, metadata !DIExpression()), !dbg !5424
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !5425, metadata !DIExpression()), !dbg !5426
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !5427, metadata !DIExpression()), !dbg !5428
  call void @llvm.dbg.declare(metadata i32* %9, metadata !5429, metadata !DIExpression()), !dbg !5430
  %12 = load i64, i64* %6, align 8, !dbg !5431
  %13 = load i64, i64* %8, align 8, !dbg !5433
  %14 = icmp eq i64 %12, %13, !dbg !5434
  br i1 %14, label %15, label %23, !dbg !5435

; <label>:15:                                     ; preds = %4
  %16 = load i8*, i8** %5, align 8, !dbg !5436
  %17 = load i8*, i8** %7, align 8, !dbg !5437
  %18 = load i64, i64* %6, align 8, !dbg !5438
  %19 = call i32 @memcmp(i8* %16, i8* %17, i64 %18) #14, !dbg !5439
  %20 = icmp eq i32 %19, 0, !dbg !5440
  br i1 %20, label %21, label %23, !dbg !5441

; <label>:21:                                     ; preds = %15
  %22 = call i32* @__errno_location() #16, !dbg !5442
  store i32 0, i32* %22, align 4, !dbg !5444
  store i32 0, i32* %9, align 4, !dbg !5445
  br label %53, !dbg !5446

; <label>:23:                                     ; preds = %15, %4
  call void @llvm.dbg.declare(metadata i8* %10, metadata !5447, metadata !DIExpression()), !dbg !5449
  %24 = load i8*, i8** %5, align 8, !dbg !5450
  %25 = load i64, i64* %6, align 8, !dbg !5451
  %26 = getelementptr inbounds i8, i8* %24, i64 %25, !dbg !5450
  %27 = load i8, i8* %26, align 1, !dbg !5450
  store i8 %27, i8* %10, align 1, !dbg !5449
  call void @llvm.dbg.declare(metadata i8* %11, metadata !5452, metadata !DIExpression()), !dbg !5453
  %28 = load i8*, i8** %7, align 8, !dbg !5454
  %29 = load i64, i64* %8, align 8, !dbg !5455
  %30 = getelementptr inbounds i8, i8* %28, i64 %29, !dbg !5454
  %31 = load i8, i8* %30, align 1, !dbg !5454
  store i8 %31, i8* %11, align 1, !dbg !5453
  %32 = load i8*, i8** %5, align 8, !dbg !5456
  %33 = load i64, i64* %6, align 8, !dbg !5457
  %34 = getelementptr inbounds i8, i8* %32, i64 %33, !dbg !5456
  store i8 0, i8* %34, align 1, !dbg !5458
  %35 = load i8*, i8** %7, align 8, !dbg !5459
  %36 = load i64, i64* %8, align 8, !dbg !5460
  %37 = getelementptr inbounds i8, i8* %35, i64 %36, !dbg !5459
  store i8 0, i8* %37, align 1, !dbg !5461
  %38 = load i8*, i8** %5, align 8, !dbg !5462
  %39 = load i64, i64* %6, align 8, !dbg !5463
  %40 = add i64 %39, 1, !dbg !5464
  %41 = load i8*, i8** %7, align 8, !dbg !5465
  %42 = load i64, i64* %8, align 8, !dbg !5466
  %43 = add i64 %42, 1, !dbg !5467
  %44 = call i32 @strcoll_loop(i8* %38, i64 %40, i8* %41, i64 %43), !dbg !5468
  store i32 %44, i32* %9, align 4, !dbg !5469
  %45 = load i8, i8* %10, align 1, !dbg !5470
  %46 = load i8*, i8** %5, align 8, !dbg !5471
  %47 = load i64, i64* %6, align 8, !dbg !5472
  %48 = getelementptr inbounds i8, i8* %46, i64 %47, !dbg !5471
  store i8 %45, i8* %48, align 1, !dbg !5473
  %49 = load i8, i8* %11, align 1, !dbg !5474
  %50 = load i8*, i8** %7, align 8, !dbg !5475
  %51 = load i64, i64* %8, align 8, !dbg !5476
  %52 = getelementptr inbounds i8, i8* %50, i64 %51, !dbg !5475
  store i8 %49, i8* %52, align 1, !dbg !5477
  br label %53

; <label>:53:                                     ; preds = %23, %21
  %54 = load i32, i32* %9, align 4, !dbg !5478
  ret i32 %54, !dbg !5479
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @strcoll_loop(i8*, i64, i8*, i64) #2 !dbg !5480 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !5481, metadata !DIExpression()), !dbg !5482
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !5483, metadata !DIExpression()), !dbg !5484
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !5485, metadata !DIExpression()), !dbg !5486
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !5487, metadata !DIExpression()), !dbg !5488
  call void @llvm.dbg.declare(metadata i32* %10, metadata !5489, metadata !DIExpression()), !dbg !5490
  br label %13, !dbg !5491

; <label>:13:                                     ; preds = %56, %4
  %14 = call i32* @__errno_location() #16, !dbg !5492
  store i32 0, i32* %14, align 4, !dbg !5493
  %15 = load i8*, i8** %6, align 8, !dbg !5494
  %16 = load i8*, i8** %8, align 8, !dbg !5495
  %17 = call i32 @strcoll(i8* %15, i8* %16) #14, !dbg !5496
  store i32 %17, i32* %10, align 4, !dbg !5497
  %18 = icmp ne i32 %17, 0, !dbg !5497
  br i1 %18, label %23, label %19, !dbg !5498

; <label>:19:                                     ; preds = %13
  %20 = call i32* @__errno_location() #16, !dbg !5499
  %21 = load i32, i32* %20, align 4, !dbg !5499
  %22 = icmp ne i32 %21, 0, !dbg !5498
  br label %23, !dbg !5498

; <label>:23:                                     ; preds = %19, %13
  %24 = phi i1 [ true, %13 ], [ %22, %19 ]
  %25 = xor i1 %24, true, !dbg !5500
  br i1 %25, label %26, label %57, !dbg !5491

; <label>:26:                                     ; preds = %23
  call void @llvm.dbg.declare(metadata i64* %11, metadata !5501, metadata !DIExpression()), !dbg !5503
  %27 = load i8*, i8** %6, align 8, !dbg !5504
  %28 = call i64 @strlen(i8* %27) #14, !dbg !5505
  %29 = add i64 %28, 1, !dbg !5506
  store i64 %29, i64* %11, align 8, !dbg !5503
  call void @llvm.dbg.declare(metadata i64* %12, metadata !5507, metadata !DIExpression()), !dbg !5508
  %30 = load i8*, i8** %8, align 8, !dbg !5509
  %31 = call i64 @strlen(i8* %30) #14, !dbg !5510
  %32 = add i64 %31, 1, !dbg !5511
  store i64 %32, i64* %12, align 8, !dbg !5508
  %33 = load i64, i64* %11, align 8, !dbg !5512
  %34 = load i8*, i8** %6, align 8, !dbg !5513
  %35 = getelementptr inbounds i8, i8* %34, i64 %33, !dbg !5513
  store i8* %35, i8** %6, align 8, !dbg !5513
  %36 = load i64, i64* %12, align 8, !dbg !5514
  %37 = load i8*, i8** %8, align 8, !dbg !5515
  %38 = getelementptr inbounds i8, i8* %37, i64 %36, !dbg !5515
  store i8* %38, i8** %8, align 8, !dbg !5515
  %39 = load i64, i64* %11, align 8, !dbg !5516
  %40 = load i64, i64* %7, align 8, !dbg !5517
  %41 = sub i64 %40, %39, !dbg !5517
  store i64 %41, i64* %7, align 8, !dbg !5517
  %42 = load i64, i64* %12, align 8, !dbg !5518
  %43 = load i64, i64* %9, align 8, !dbg !5519
  %44 = sub i64 %43, %42, !dbg !5519
  store i64 %44, i64* %9, align 8, !dbg !5519
  %45 = load i64, i64* %7, align 8, !dbg !5520
  %46 = icmp eq i64 %45, 0, !dbg !5522
  br i1 %46, label %47, label %52, !dbg !5523

; <label>:47:                                     ; preds = %26
  %48 = load i64, i64* %9, align 8, !dbg !5524
  %49 = icmp ne i64 %48, 0, !dbg !5525
  %50 = zext i1 %49 to i32, !dbg !5525
  %51 = sub nsw i32 0, %50, !dbg !5526
  store i32 %51, i32* %5, align 4, !dbg !5527
  br label %59, !dbg !5527

; <label>:52:                                     ; preds = %26
  %53 = load i64, i64* %9, align 8, !dbg !5528
  %54 = icmp eq i64 %53, 0, !dbg !5530
  br i1 %54, label %55, label %56, !dbg !5531

; <label>:55:                                     ; preds = %52
  store i32 1, i32* %5, align 4, !dbg !5532
  br label %59, !dbg !5532

; <label>:56:                                     ; preds = %52
  br label %13, !dbg !5491, !llvm.loop !5533

; <label>:57:                                     ; preds = %23
  %58 = load i32, i32* %10, align 4, !dbg !5535
  store i32 %58, i32* %5, align 4, !dbg !5536
  br label %59, !dbg !5536

; <label>:59:                                     ; preds = %57, %55, %47
  %60 = load i32, i32* %5, align 4, !dbg !5537
  ret i32 %60, !dbg !5537
}

; Function Attrs: nounwind readonly
declare i32 @strcoll(i8*, i8*) #6

; Function Attrs: noinline nounwind uwtable
define i32 @memcoll0(i8*, i64, i8*, i64) #2 !dbg !5538 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !5539, metadata !DIExpression()), !dbg !5540
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !5541, metadata !DIExpression()), !dbg !5542
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !5543, metadata !DIExpression()), !dbg !5544
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !5545, metadata !DIExpression()), !dbg !5546
  %10 = load i64, i64* %7, align 8, !dbg !5547
  %11 = load i64, i64* %9, align 8, !dbg !5549
  %12 = icmp eq i64 %10, %11, !dbg !5550
  br i1 %12, label %13, label %21, !dbg !5551

; <label>:13:                                     ; preds = %4
  %14 = load i8*, i8** %6, align 8, !dbg !5552
  %15 = load i8*, i8** %8, align 8, !dbg !5553
  %16 = load i64, i64* %7, align 8, !dbg !5554
  %17 = call i32 @memcmp(i8* %14, i8* %15, i64 %16) #14, !dbg !5555
  %18 = icmp eq i32 %17, 0, !dbg !5556
  br i1 %18, label %19, label %21, !dbg !5557

; <label>:19:                                     ; preds = %13
  %20 = call i32* @__errno_location() #16, !dbg !5558
  store i32 0, i32* %20, align 4, !dbg !5560
  store i32 0, i32* %5, align 4, !dbg !5561
  br label %27, !dbg !5561

; <label>:21:                                     ; preds = %13, %4
  %22 = load i8*, i8** %6, align 8, !dbg !5562
  %23 = load i64, i64* %7, align 8, !dbg !5563
  %24 = load i8*, i8** %8, align 8, !dbg !5564
  %25 = load i64, i64* %9, align 8, !dbg !5565
  %26 = call i32 @strcoll_loop(i8* %22, i64 %23, i8* %24, i64 %25), !dbg !5566
  store i32 %26, i32* %5, align 4, !dbg !5567
  br label %27, !dbg !5567

; <label>:27:                                     ; preds = %21, %19
  %28 = load i32, i32* %5, align 4, !dbg !5568
  ret i32 %28, !dbg !5568
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isascii(i32) #12 !dbg !5569 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5570, metadata !DIExpression()), !dbg !5571
  %3 = load i32, i32* %2, align 4, !dbg !5572
  %4 = icmp sge i32 %3, 0, !dbg !5573
  br i1 %4, label %5, label %8, !dbg !5574

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5575
  %7 = icmp sle i32 %6, 127, !dbg !5576
  br label %8

; <label>:8:                                      ; preds = %5, %1
  %9 = phi i1 [ false, %1 ], [ %7, %5 ]
  ret i1 %9, !dbg !5577
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isalnum(i32) #12 !dbg !5578 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5579, metadata !DIExpression()), !dbg !5580
  %3 = load i32, i32* %2, align 4, !dbg !5581
  %4 = icmp sge i32 %3, 48, !dbg !5582
  br i1 %4, label %5, label %8, !dbg !5583

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5584
  %7 = icmp sle i32 %6, 57, !dbg !5585
  br i1 %7, label %18, label %8, !dbg !5586

; <label>:8:                                      ; preds = %5, %1
  %9 = load i32, i32* %2, align 4, !dbg !5587
  %10 = and i32 %9, -33, !dbg !5588
  %11 = icmp sge i32 %10, 65, !dbg !5589
  br i1 %11, label %12, label %16, !dbg !5590

; <label>:12:                                     ; preds = %8
  %13 = load i32, i32* %2, align 4, !dbg !5591
  %14 = and i32 %13, -33, !dbg !5592
  %15 = icmp sle i32 %14, 90, !dbg !5593
  br label %16

; <label>:16:                                     ; preds = %12, %8
  %17 = phi i1 [ false, %8 ], [ %15, %12 ]
  br label %18, !dbg !5586

; <label>:18:                                     ; preds = %16, %5
  %19 = phi i1 [ true, %5 ], [ %17, %16 ]
  ret i1 %19, !dbg !5594
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isalpha(i32) #12 !dbg !5595 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5596, metadata !DIExpression()), !dbg !5597
  %3 = load i32, i32* %2, align 4, !dbg !5598
  %4 = and i32 %3, -33, !dbg !5599
  %5 = icmp sge i32 %4, 65, !dbg !5600
  br i1 %5, label %6, label %10, !dbg !5601

; <label>:6:                                      ; preds = %1
  %7 = load i32, i32* %2, align 4, !dbg !5602
  %8 = and i32 %7, -33, !dbg !5603
  %9 = icmp sle i32 %8, 90, !dbg !5604
  br label %10

; <label>:10:                                     ; preds = %6, %1
  %11 = phi i1 [ false, %1 ], [ %9, %6 ]
  ret i1 %11, !dbg !5605
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isblank(i32) #12 !dbg !5606 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5607, metadata !DIExpression()), !dbg !5608
  %3 = load i32, i32* %2, align 4, !dbg !5609
  %4 = icmp eq i32 %3, 32, !dbg !5610
  br i1 %4, label %8, label %5, !dbg !5611

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5612
  %7 = icmp eq i32 %6, 9, !dbg !5613
  br label %8, !dbg !5611

; <label>:8:                                      ; preds = %5, %1
  %9 = phi i1 [ true, %1 ], [ %7, %5 ]
  ret i1 %9, !dbg !5614
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_iscntrl(i32) #12 !dbg !5615 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5616, metadata !DIExpression()), !dbg !5617
  %3 = load i32, i32* %2, align 4, !dbg !5618
  %4 = and i32 %3, -32, !dbg !5619
  %5 = icmp eq i32 %4, 0, !dbg !5620
  br i1 %5, label %9, label %6, !dbg !5621

; <label>:6:                                      ; preds = %1
  %7 = load i32, i32* %2, align 4, !dbg !5622
  %8 = icmp eq i32 %7, 127, !dbg !5623
  br label %9, !dbg !5621

; <label>:9:                                      ; preds = %6, %1
  %10 = phi i1 [ true, %1 ], [ %8, %6 ]
  ret i1 %10, !dbg !5624
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isdigit(i32) #12 !dbg !5625 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5626, metadata !DIExpression()), !dbg !5627
  %3 = load i32, i32* %2, align 4, !dbg !5628
  %4 = icmp sge i32 %3, 48, !dbg !5629
  br i1 %4, label %5, label %8, !dbg !5630

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5631
  %7 = icmp sle i32 %6, 57, !dbg !5632
  br label %8

; <label>:8:                                      ; preds = %5, %1
  %9 = phi i1 [ false, %1 ], [ %7, %5 ]
  ret i1 %9, !dbg !5633
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_islower(i32) #12 !dbg !5634 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5635, metadata !DIExpression()), !dbg !5636
  %3 = load i32, i32* %2, align 4, !dbg !5637
  %4 = icmp sge i32 %3, 97, !dbg !5638
  br i1 %4, label %5, label %8, !dbg !5639

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5640
  %7 = icmp sle i32 %6, 122, !dbg !5641
  br label %8

; <label>:8:                                      ; preds = %5, %1
  %9 = phi i1 [ false, %1 ], [ %7, %5 ]
  ret i1 %9, !dbg !5642
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isgraph(i32) #12 !dbg !5643 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5644, metadata !DIExpression()), !dbg !5645
  %3 = load i32, i32* %2, align 4, !dbg !5646
  %4 = icmp sge i32 %3, 33, !dbg !5647
  br i1 %4, label %5, label %8, !dbg !5648

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5649
  %7 = icmp sle i32 %6, 126, !dbg !5650
  br label %8

; <label>:8:                                      ; preds = %5, %1
  %9 = phi i1 [ false, %1 ], [ %7, %5 ]
  ret i1 %9, !dbg !5651
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isprint(i32) #12 !dbg !5652 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5653, metadata !DIExpression()), !dbg !5654
  %3 = load i32, i32* %2, align 4, !dbg !5655
  %4 = icmp sge i32 %3, 32, !dbg !5656
  br i1 %4, label %5, label %8, !dbg !5657

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5658
  %7 = icmp sle i32 %6, 126, !dbg !5659
  br label %8

; <label>:8:                                      ; preds = %5, %1
  %9 = phi i1 [ false, %1 ], [ %7, %5 ]
  ret i1 %9, !dbg !5660
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_ispunct(i32) #12 !dbg !5661 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5662, metadata !DIExpression()), !dbg !5663
  %3 = load i32, i32* %2, align 4, !dbg !5664
  %4 = icmp sge i32 %3, 33, !dbg !5665
  br i1 %4, label %5, label %27, !dbg !5666

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5667
  %7 = icmp sle i32 %6, 126, !dbg !5668
  br i1 %7, label %8, label %27, !dbg !5669

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* %2, align 4, !dbg !5670
  %10 = icmp sge i32 %9, 48, !dbg !5671
  br i1 %10, label %11, label %14, !dbg !5672

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %2, align 4, !dbg !5673
  %13 = icmp sle i32 %12, 57, !dbg !5674
  br i1 %13, label %24, label %14, !dbg !5675

; <label>:14:                                     ; preds = %11, %8
  %15 = load i32, i32* %2, align 4, !dbg !5676
  %16 = and i32 %15, -33, !dbg !5677
  %17 = icmp sge i32 %16, 65, !dbg !5678
  br i1 %17, label %18, label %22, !dbg !5679

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* %2, align 4, !dbg !5680
  %20 = and i32 %19, -33, !dbg !5681
  %21 = icmp sle i32 %20, 90, !dbg !5682
  br label %22

; <label>:22:                                     ; preds = %18, %14
  %23 = phi i1 [ false, %14 ], [ %21, %18 ]
  br label %24, !dbg !5675

; <label>:24:                                     ; preds = %22, %11
  %25 = phi i1 [ true, %11 ], [ %23, %22 ]
  %26 = xor i1 %25, true, !dbg !5683
  br label %27

; <label>:27:                                     ; preds = %24, %5, %1
  %28 = phi i1 [ false, %5 ], [ false, %1 ], [ %26, %24 ]
  ret i1 %28, !dbg !5684
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isspace(i32) #12 !dbg !5685 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5686, metadata !DIExpression()), !dbg !5687
  %3 = load i32, i32* %2, align 4, !dbg !5688
  %4 = icmp eq i32 %3, 32, !dbg !5689
  br i1 %4, label %20, label %5, !dbg !5690

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5691
  %7 = icmp eq i32 %6, 9, !dbg !5692
  br i1 %7, label %20, label %8, !dbg !5693

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* %2, align 4, !dbg !5694
  %10 = icmp eq i32 %9, 10, !dbg !5695
  br i1 %10, label %20, label %11, !dbg !5696

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %2, align 4, !dbg !5697
  %13 = icmp eq i32 %12, 11, !dbg !5698
  br i1 %13, label %20, label %14, !dbg !5699

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %2, align 4, !dbg !5700
  %16 = icmp eq i32 %15, 12, !dbg !5701
  br i1 %16, label %20, label %17, !dbg !5702

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* %2, align 4, !dbg !5703
  %19 = icmp eq i32 %18, 13, !dbg !5704
  br label %20, !dbg !5702

; <label>:20:                                     ; preds = %17, %14, %11, %8, %5, %1
  %21 = phi i1 [ true, %14 ], [ true, %11 ], [ true, %8 ], [ true, %5 ], [ true, %1 ], [ %19, %17 ]
  ret i1 %21, !dbg !5705
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isupper(i32) #12 !dbg !5706 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5707, metadata !DIExpression()), !dbg !5708
  %3 = load i32, i32* %2, align 4, !dbg !5709
  %4 = icmp sge i32 %3, 65, !dbg !5710
  br i1 %4, label %5, label %8, !dbg !5711

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5712
  %7 = icmp sle i32 %6, 90, !dbg !5713
  br label %8

; <label>:8:                                      ; preds = %5, %1
  %9 = phi i1 [ false, %1 ], [ %7, %5 ]
  ret i1 %9, !dbg !5714
}

; Function Attrs: noinline nounwind readnone uwtable
define zeroext i1 @c_isxdigit(i32) #12 !dbg !5715 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5716, metadata !DIExpression()), !dbg !5717
  %3 = load i32, i32* %2, align 4, !dbg !5718
  %4 = icmp sge i32 %3, 48, !dbg !5719
  br i1 %4, label %5, label %8, !dbg !5720

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5721
  %7 = icmp sle i32 %6, 57, !dbg !5722
  br i1 %7, label %18, label %8, !dbg !5723

; <label>:8:                                      ; preds = %5, %1
  %9 = load i32, i32* %2, align 4, !dbg !5724
  %10 = and i32 %9, -33, !dbg !5725
  %11 = icmp sge i32 %10, 65, !dbg !5726
  br i1 %11, label %12, label %16, !dbg !5727

; <label>:12:                                     ; preds = %8
  %13 = load i32, i32* %2, align 4, !dbg !5728
  %14 = and i32 %13, -33, !dbg !5729
  %15 = icmp sle i32 %14, 70, !dbg !5730
  br label %16

; <label>:16:                                     ; preds = %12, %8
  %17 = phi i1 [ false, %8 ], [ %15, %12 ]
  br label %18, !dbg !5723

; <label>:18:                                     ; preds = %16, %5
  %19 = phi i1 [ true, %5 ], [ %17, %16 ]
  ret i1 %19, !dbg !5731
}

; Function Attrs: noinline nounwind readnone uwtable
define i32 @c_tolower(i32) #12 !dbg !5732 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5735, metadata !DIExpression()), !dbg !5736
  %3 = load i32, i32* %2, align 4, !dbg !5737
  %4 = icmp sge i32 %3, 65, !dbg !5738
  br i1 %4, label %5, label %12, !dbg !5739

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5740
  %7 = icmp sle i32 %6, 90, !dbg !5741
  br i1 %7, label %8, label %12, !dbg !5737

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* %2, align 4, !dbg !5742
  %10 = sub nsw i32 %9, 65, !dbg !5743
  %11 = add nsw i32 %10, 97, !dbg !5744
  br label %14, !dbg !5737

; <label>:12:                                     ; preds = %5, %1
  %13 = load i32, i32* %2, align 4, !dbg !5745
  br label %14, !dbg !5737

; <label>:14:                                     ; preds = %12, %8
  %15 = phi i32 [ %11, %8 ], [ %13, %12 ], !dbg !5737
  ret i32 %15, !dbg !5746
}

; Function Attrs: noinline nounwind readnone uwtable
define i32 @c_toupper(i32) #12 !dbg !5747 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5748, metadata !DIExpression()), !dbg !5749
  %3 = load i32, i32* %2, align 4, !dbg !5750
  %4 = icmp sge i32 %3, 97, !dbg !5751
  br i1 %4, label %5, label %12, !dbg !5752

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5753
  %7 = icmp sle i32 %6, 122, !dbg !5754
  br i1 %7, label %8, label %12, !dbg !5750

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* %2, align 4, !dbg !5755
  %10 = sub nsw i32 %9, 97, !dbg !5756
  %11 = add nsw i32 %10, 65, !dbg !5757
  br label %14, !dbg !5750

; <label>:12:                                     ; preds = %5, %1
  %13 = load i32, i32* %2, align 4, !dbg !5758
  br label %14, !dbg !5750

; <label>:14:                                     ; preds = %12, %8
  %15 = phi i32 [ %11, %8 ], [ %13, %12 ], !dbg !5750
  ret i32 %15, !dbg !5759
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
!785 = !DILocation(line: 448, column: 11, scope: !786)
!786 = distinct !DILexicalBlock(scope: !787, file: !3, line: 448, column: 11)
!787 = distinct !DILexicalBlock(scope: !741, file: !3, line: 443, column: 5)
!788 = !DILocation(line: 448, column: 16, scope: !786)
!789 = !DILocation(line: 449, column: 11, scope: !786)
!790 = !DILocation(line: 449, column: 15, scope: !786)
!791 = !DILocation(line: 449, column: 31, scope: !786)
!792 = !DILocation(line: 449, column: 34, scope: !786)
!793 = !DILocation(line: 449, column: 41, scope: !786)
!794 = !DILocation(line: 450, column: 11, scope: !786)
!795 = !DILocation(line: 450, column: 36, scope: !786)
!796 = !DILocation(line: 450, column: 42, scope: !786)
!797 = !DILocation(line: 450, column: 23, scope: !786)
!798 = !DILocation(line: 450, column: 21, scope: !786)
!799 = !DILocation(line: 452, column: 15, scope: !786)
!800 = !DILocation(line: 448, column: 11, scope: !787)
!801 = !DILocation(line: 454, column: 15, scope: !802)
!802 = distinct !DILexicalBlock(scope: !803, file: !3, line: 454, column: 15)
!803 = distinct !DILexicalBlock(scope: !786, file: !3, line: 453, column: 9)
!804 = !DILocation(line: 454, column: 23, scope: !802)
!805 = !DILocation(line: 454, column: 20, scope: !802)
!806 = !DILocation(line: 454, column: 15, scope: !803)
!807 = !DILocation(line: 455, column: 13, scope: !802)
!808 = !DILocation(line: 456, column: 15, scope: !809)
!809 = distinct !DILexicalBlock(scope: !803, file: !3, line: 456, column: 15)
!810 = !DILocation(line: 456, column: 22, scope: !809)
!811 = !DILocation(line: 456, column: 15, scope: !803)
!812 = !DILocation(line: 458, column: 58, scope: !813)
!813 = distinct !DILexicalBlock(scope: !809, file: !3, line: 457, column: 13)
!814 = !DILocation(line: 458, column: 63, scope: !813)
!815 = !DILocation(line: 458, column: 51, scope: !813)
!816 = !DILocation(line: 458, column: 15, scope: !813)
!817 = !DILocation(line: 459, column: 15, scope: !813)
!818 = !DILocation(line: 461, column: 28, scope: !803)
!819 = !DILocation(line: 461, column: 39, scope: !803)
!820 = !DILocation(line: 461, column: 22, scope: !803)
!821 = !DILocation(line: 461, column: 11, scope: !803)
!822 = !DILocation(line: 461, column: 26, scope: !803)
!823 = !DILocation(line: 462, column: 9, scope: !803)
!824 = !DILocation(line: 463, column: 20, scope: !786)
!825 = !DILocation(line: 463, column: 12, scope: !786)
!826 = !DILocalVariable(name: "size", scope: !827, file: !3, line: 467, type: !59)
!827 = distinct !DILexicalBlock(scope: !828, file: !3, line: 466, column: 11)
!828 = distinct !DILexicalBlock(scope: !786, file: !3, line: 464, column: 9)
!829 = !DILocation(line: 467, column: 31, scope: !827)
!830 = !DILocation(line: 468, column: 17, scope: !831)
!831 = distinct !DILexicalBlock(scope: !827, file: !3, line: 468, column: 17)
!832 = !DILocation(line: 468, column: 27, scope: !831)
!833 = !DILocation(line: 469, column: 17, scope: !831)
!834 = !DILocation(line: 469, column: 20, scope: !831)
!835 = !DILocation(line: 469, column: 38, scope: !831)
!836 = !DILocation(line: 470, column: 17, scope: !831)
!837 = !DILocation(line: 470, column: 30, scope: !831)
!838 = !DILocation(line: 470, column: 20, scope: !831)
!839 = !DILocation(line: 470, column: 59, scope: !831)
!840 = !DILocation(line: 471, column: 17, scope: !831)
!841 = !DILocation(line: 471, column: 20, scope: !831)
!842 = !DILocation(line: 471, column: 25, scope: !831)
!843 = !DILocation(line: 468, column: 17, scope: !827)
!844 = !DILocation(line: 472, column: 28, scope: !831)
!845 = !DILocation(line: 472, column: 26, scope: !831)
!846 = !DILocation(line: 472, column: 15, scope: !831)
!847 = !DILocation(line: 473, column: 22, scope: !848)
!848 = distinct !DILexicalBlock(scope: !831, file: !3, line: 473, column: 22)
!849 = !DILocation(line: 473, column: 29, scope: !848)
!850 = !DILocation(line: 473, column: 22, scope: !831)
!851 = !DILocation(line: 475, column: 60, scope: !852)
!852 = distinct !DILexicalBlock(scope: !848, file: !3, line: 474, column: 15)
!853 = !DILocation(line: 475, column: 53, scope: !852)
!854 = !DILocation(line: 475, column: 17, scope: !852)
!855 = !DILocation(line: 476, column: 17, scope: !852)
!856 = !DILocation(line: 479, column: 32, scope: !848)
!857 = !DILocation(line: 479, column: 26, scope: !848)
!858 = !DILocation(line: 479, column: 15, scope: !848)
!859 = !DILocation(line: 479, column: 30, scope: !848)
!860 = !DILocation(line: 481, column: 11, scope: !828)
!861 = !DILocation(line: 494, column: 17, scope: !862)
!862 = distinct !DILexicalBlock(scope: !863, file: !3, line: 494, column: 17)
!863 = distinct !DILexicalBlock(scope: !828, file: !3, line: 493, column: 11)
!864 = !DILocation(line: 494, column: 40, scope: !862)
!865 = !DILocation(line: 494, column: 17, scope: !863)
!866 = !DILocation(line: 495, column: 27, scope: !862)
!867 = !DILocation(line: 495, column: 15, scope: !862)
!868 = !DILocation(line: 497, column: 18, scope: !869)
!869 = distinct !DILexicalBlock(scope: !863, file: !3, line: 497, column: 17)
!870 = !DILocation(line: 497, column: 17, scope: !863)
!871 = !DILocation(line: 498, column: 27, scope: !869)
!872 = !DILocation(line: 498, column: 15, scope: !869)
!873 = !DILocation(line: 500, column: 36, scope: !863)
!874 = !DILocation(line: 502, column: 11, scope: !828)
!875 = !DILocation(line: 505, column: 21, scope: !828)
!876 = !DILocation(line: 506, column: 11, scope: !828)
!877 = !DILocation(line: 509, column: 25, scope: !828)
!878 = !DILocation(line: 510, column: 11, scope: !828)
!879 = !DILocation(line: 513, column: 25, scope: !828)
!880 = !DILocation(line: 514, column: 33, scope: !828)
!881 = !DILocation(line: 515, column: 15, scope: !882)
!882 = distinct !DILexicalBlock(scope: !828, file: !3, line: 515, column: 15)
!883 = !DILocation(line: 515, column: 22, scope: !882)
!884 = !DILocation(line: 515, column: 15, scope: !828)
!885 = !DILocation(line: 516, column: 28, scope: !882)
!886 = !DILocation(line: 516, column: 13, scope: !882)
!887 = !DILocation(line: 518, column: 30, scope: !882)
!888 = !DILocation(line: 518, column: 28, scope: !882)
!889 = !DILocation(line: 521, column: 11, scope: !828)
!890 = !DILocation(line: 524, column: 34, scope: !828)
!891 = !DILocation(line: 525, column: 35, scope: !828)
!892 = !DILocation(line: 525, column: 25, scope: !828)
!893 = !DILocation(line: 525, column: 23, scope: !828)
!894 = !DILocation(line: 527, column: 11, scope: !828)
!895 = !DILocation(line: 530, column: 23, scope: !828)
!896 = !DILocation(line: 531, column: 11, scope: !828)
!897 = !DILocation(line: 534, column: 34, scope: !828)
!898 = !DILocation(line: 534, column: 24, scope: !828)
!899 = !DILocation(line: 534, column: 22, scope: !828)
!900 = !DILocation(line: 536, column: 11, scope: !828)
!901 = !DILocation(line: 539, column: 33, scope: !828)
!902 = !DILocation(line: 540, column: 11, scope: !828)
!903 = !DILocation(line: 543, column: 35, scope: !828)
!904 = !DILocation(line: 543, column: 25, scope: !828)
!905 = !DILocation(line: 543, column: 23, scope: !828)
!906 = !DILocation(line: 545, column: 11, scope: !828)
!907 = !DILocation(line: 548, column: 21, scope: !828)
!908 = !DILocation(line: 549, column: 11, scope: !828)
!909 = !DILocation(line: 551, column: 9, scope: !828)
!910 = !DILocation(line: 553, column: 9, scope: !828)
!911 = !DILocation(line: 556, column: 11, scope: !828)
!912 = distinct !{!912, !784, !913}
!913 = !DILocation(line: 558, column: 5, scope: !741)
!914 = !DILocation(line: 559, column: 1, scope: !741)
!915 = !DILocation(line: 560, column: 7, scope: !916)
!916 = distinct !DILexicalBlock(scope: !741, file: !3, line: 560, column: 7)
!917 = !DILocation(line: 560, column: 17, scope: !916)
!918 = !DILocation(line: 560, column: 38, scope: !916)
!919 = !DILocation(line: 560, column: 41, scope: !916)
!920 = !DILocation(line: 560, column: 7, scope: !741)
!921 = !DILocation(line: 562, column: 7, scope: !922)
!922 = distinct !DILexicalBlock(scope: !916, file: !3, line: 561, column: 5)
!923 = !DILocation(line: 564, column: 7, scope: !922)
!924 = !DILocation(line: 567, column: 15, scope: !741)
!925 = !DILocation(line: 567, column: 24, scope: !741)
!926 = !DILocation(line: 567, column: 33, scope: !741)
!927 = !DILocation(line: 567, column: 3, scope: !741)
!928 = !DILocation(line: 569, column: 3, scope: !741)
!929 = !DILocation(line: 570, column: 1, scope: !741)
!930 = distinct !DISubprogram(name: "size_opt", scope: !3, file: !3, line: 187, type: !931, isLocal: true, isDefinition: true, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !113)
!931 = !DISubroutineType(types: !932)
!932 = !{!57, !52, !52}
!933 = !DILocalVariable(name: "opt", arg: 1, scope: !930, file: !3, line: 187, type: !52)
!934 = !DILocation(line: 187, column: 23, scope: !930)
!935 = !DILocalVariable(name: "msgid", arg: 2, scope: !930, file: !3, line: 187, type: !52)
!936 = !DILocation(line: 187, column: 40, scope: !930)
!937 = !DILocalVariable(name: "size", scope: !930, file: !3, line: 189, type: !59)
!938 = !DILocation(line: 189, column: 21, scope: !930)
!939 = !DILocation(line: 192, column: 21, scope: !930)
!940 = !DILocation(line: 192, column: 11, scope: !930)
!941 = !DILocation(line: 192, column: 3, scope: !930)
!942 = !DILocation(line: 196, column: 7, scope: !943)
!943 = distinct !DILexicalBlock(scope: !930, file: !3, line: 193, column: 5)
!944 = !DILocation(line: 199, column: 41, scope: !943)
!945 = !DILocation(line: 199, column: 46, scope: !943)
!946 = !DILocation(line: 199, column: 7, scope: !943)
!947 = !DILocation(line: 200, column: 5, scope: !943)
!948 = !DILocation(line: 202, column: 10, scope: !930)
!949 = !DILocation(line: 202, column: 3, scope: !930)
!950 = distinct !DISubprogram(name: "check_file", scope: !3, file: !3, line: 278, type: !951, isLocal: true, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !113)
!951 = !DISubroutineType(types: !952)
!952 = !{null, !52, !52, !54}
!953 = !DILocalVariable(name: "infile", arg: 1, scope: !950, file: !3, line: 278, type: !52)
!954 = !DILocation(line: 278, column: 25, scope: !950)
!955 = !DILocalVariable(name: "outfile", arg: 2, scope: !950, file: !3, line: 278, type: !52)
!956 = !DILocation(line: 278, column: 45, scope: !950)
!957 = !DILocalVariable(name: "delimiter", arg: 3, scope: !950, file: !3, line: 278, type: !54)
!958 = !DILocation(line: 278, column: 59, scope: !950)
!959 = !DILocalVariable(name: "lb1", scope: !950, file: !3, line: 280, type: !960)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !961, line: 26, size: 192, elements: !962)
!961 = !DIFile(filename: "../../lib/linebuffer.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/src")
!962 = !{!963, !964, !965}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !960, file: !961, line: 28, baseType: !57, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !960, file: !961, line: 29, baseType: !57, size: 64, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !960, file: !961, line: 30, baseType: !60, size: 64, offset: 128)
!966 = !DILocation(line: 280, column: 21, scope: !950)
!967 = !DILocalVariable(name: "lb2", scope: !950, file: !3, line: 280, type: !960)
!968 = !DILocation(line: 280, column: 26, scope: !950)
!969 = !DILocalVariable(name: "thisline", scope: !950, file: !3, line: 281, type: !970)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!971 = !DILocation(line: 281, column: 22, scope: !950)
!972 = !DILocalVariable(name: "prevline", scope: !950, file: !3, line: 281, type: !970)
!973 = !DILocation(line: 281, column: 33, scope: !950)
!974 = !DILocation(line: 283, column: 10, scope: !975)
!975 = distinct !DILexicalBlock(scope: !950, file: !3, line: 283, column: 7)
!976 = !DILocation(line: 283, column: 30, scope: !975)
!977 = !DILocation(line: 283, column: 42, scope: !975)
!978 = !DILocation(line: 283, column: 55, scope: !975)
!979 = !DILocation(line: 283, column: 33, scope: !975)
!980 = !DILocation(line: 283, column: 7, scope: !950)
!981 = !DILocation(line: 284, column: 26, scope: !975)
!982 = !DILocation(line: 284, column: 39, scope: !975)
!983 = !DILocation(line: 284, column: 5, scope: !975)
!984 = !DILocation(line: 285, column: 10, scope: !985)
!985 = distinct !DILexicalBlock(scope: !950, file: !3, line: 285, column: 7)
!986 = !DILocation(line: 285, column: 31, scope: !985)
!987 = !DILocation(line: 285, column: 43, scope: !985)
!988 = !DILocation(line: 285, column: 57, scope: !985)
!989 = !DILocation(line: 285, column: 34, scope: !985)
!990 = !DILocation(line: 285, column: 7, scope: !950)
!991 = !DILocation(line: 286, column: 26, scope: !985)
!992 = !DILocation(line: 286, column: 39, scope: !985)
!993 = !DILocation(line: 286, column: 5, scope: !985)
!994 = !DILocation(line: 288, column: 12, scope: !950)
!995 = !DILocation(line: 288, column: 3, scope: !950)
!996 = !DILocation(line: 290, column: 12, scope: !950)
!997 = !DILocation(line: 291, column: 12, scope: !950)
!998 = !DILocation(line: 293, column: 15, scope: !950)
!999 = !DILocation(line: 293, column: 3, scope: !950)
!1000 = !DILocation(line: 294, column: 15, scope: !950)
!1001 = !DILocation(line: 294, column: 3, scope: !950)
!1002 = !DILocation(line: 303, column: 7, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !950, file: !3, line: 303, column: 7)
!1004 = !DILocation(line: 303, column: 21, scope: !1003)
!1005 = !DILocation(line: 303, column: 24, scope: !1003)
!1006 = !DILocation(line: 303, column: 46, scope: !1003)
!1007 = !DILocation(line: 303, column: 49, scope: !1003)
!1008 = !DILocation(line: 303, column: 59, scope: !1003)
!1009 = !DILocation(line: 303, column: 7, scope: !950)
!1010 = !DILocalVariable(name: "prevfield", scope: !1011, file: !3, line: 305, type: !60)
!1011 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 304, column: 5)
!1012 = !DILocation(line: 305, column: 13, scope: !1011)
!1013 = !DILocalVariable(name: "prevlen", scope: !1011, file: !3, line: 306, type: !57)
!1014 = !DILocation(line: 306, column: 14, scope: !1011)
!1015 = !DILocation(line: 308, column: 7, scope: !1011)
!1016 = !DILocation(line: 308, column: 15, scope: !1011)
!1017 = !DILocation(line: 308, column: 14, scope: !1011)
!1018 = !DILocalVariable(name: "thisfield", scope: !1019, file: !3, line: 310, type: !60)
!1019 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 309, column: 9)
!1020 = !DILocation(line: 310, column: 17, scope: !1019)
!1021 = !DILocalVariable(name: "thislen", scope: !1019, file: !3, line: 311, type: !57)
!1022 = !DILocation(line: 311, column: 18, scope: !1019)
!1023 = !DILocation(line: 312, column: 37, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 312, column: 15)
!1025 = !DILocation(line: 312, column: 47, scope: !1024)
!1026 = !DILocation(line: 312, column: 54, scope: !1024)
!1027 = !DILocation(line: 312, column: 15, scope: !1024)
!1028 = !DILocation(line: 312, column: 65, scope: !1024)
!1029 = !DILocation(line: 312, column: 15, scope: !1019)
!1030 = !DILocation(line: 313, column: 13, scope: !1024)
!1031 = !DILocation(line: 314, column: 35, scope: !1019)
!1032 = !DILocation(line: 314, column: 23, scope: !1019)
!1033 = !DILocation(line: 314, column: 21, scope: !1019)
!1034 = !DILocation(line: 315, column: 21, scope: !1019)
!1035 = !DILocation(line: 315, column: 31, scope: !1019)
!1036 = !DILocation(line: 315, column: 38, scope: !1019)
!1037 = !DILocation(line: 315, column: 45, scope: !1019)
!1038 = !DILocation(line: 315, column: 57, scope: !1019)
!1039 = !DILocation(line: 315, column: 67, scope: !1019)
!1040 = !DILocation(line: 315, column: 55, scope: !1019)
!1041 = !DILocation(line: 315, column: 42, scope: !1019)
!1042 = !DILocation(line: 315, column: 19, scope: !1019)
!1043 = !DILocation(line: 316, column: 15, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 316, column: 15)
!1045 = !DILocation(line: 316, column: 25, scope: !1044)
!1046 = !DILocation(line: 316, column: 32, scope: !1044)
!1047 = !DILocation(line: 317, column: 15, scope: !1044)
!1048 = !DILocation(line: 317, column: 29, scope: !1044)
!1049 = !DILocation(line: 317, column: 40, scope: !1044)
!1050 = !DILocation(line: 317, column: 51, scope: !1044)
!1051 = !DILocation(line: 317, column: 60, scope: !1044)
!1052 = !DILocation(line: 317, column: 18, scope: !1044)
!1053 = !DILocation(line: 316, column: 15, scope: !1019)
!1054 = !DILocation(line: 319, column: 15, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 318, column: 13)
!1056 = !DILocation(line: 322, column: 15, scope: !1055)
!1057 = distinct !{!1057, !1056, !1056}
!1058 = !DILocalVariable(name: "_tmp", scope: !1059, file: !3, line: 322, type: !970)
!1059 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 322, column: 15)
!1060 = !DILocation(line: 322, column: 15, scope: !1059)
!1061 = !DILocation(line: 323, column: 27, scope: !1055)
!1062 = !DILocation(line: 323, column: 25, scope: !1055)
!1063 = !DILocation(line: 324, column: 25, scope: !1055)
!1064 = !DILocation(line: 324, column: 23, scope: !1055)
!1065 = !DILocation(line: 325, column: 13, scope: !1055)
!1066 = distinct !{!1066, !1015, !1067}
!1067 = !DILocation(line: 326, column: 9, scope: !1011)
!1068 = !DILocation(line: 327, column: 5, scope: !1011)
!1069 = !DILocalVariable(name: "prevfield", scope: !1070, file: !3, line: 330, type: !60)
!1070 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 329, column: 5)
!1071 = !DILocation(line: 330, column: 13, scope: !1070)
!1072 = !DILocalVariable(name: "prevlen", scope: !1070, file: !3, line: 331, type: !57)
!1073 = !DILocation(line: 331, column: 14, scope: !1070)
!1074 = !DILocalVariable(name: "match_count", scope: !1070, file: !3, line: 332, type: !1075)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1076, line: 112, baseType: !1077)
!1076 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/src")
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1078, line: 62, baseType: !59)
!1078 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/src")
!1079 = !DILocation(line: 332, column: 17, scope: !1070)
!1080 = !DILocalVariable(name: "first_delimiter", scope: !1070, file: !3, line: 333, type: !74)
!1081 = !DILocation(line: 333, column: 12, scope: !1070)
!1082 = !DILocation(line: 335, column: 33, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 335, column: 11)
!1084 = !DILocation(line: 335, column: 43, scope: !1083)
!1085 = !DILocation(line: 335, column: 50, scope: !1083)
!1086 = !DILocation(line: 335, column: 11, scope: !1083)
!1087 = !DILocation(line: 335, column: 61, scope: !1083)
!1088 = !DILocation(line: 335, column: 11, scope: !1070)
!1089 = !DILocation(line: 336, column: 9, scope: !1083)
!1090 = !DILocation(line: 337, column: 31, scope: !1070)
!1091 = !DILocation(line: 337, column: 19, scope: !1070)
!1092 = !DILocation(line: 337, column: 17, scope: !1070)
!1093 = !DILocation(line: 338, column: 17, scope: !1070)
!1094 = !DILocation(line: 338, column: 27, scope: !1070)
!1095 = !DILocation(line: 338, column: 34, scope: !1070)
!1096 = !DILocation(line: 338, column: 41, scope: !1070)
!1097 = !DILocation(line: 338, column: 53, scope: !1070)
!1098 = !DILocation(line: 338, column: 63, scope: !1070)
!1099 = !DILocation(line: 338, column: 51, scope: !1070)
!1100 = !DILocation(line: 338, column: 38, scope: !1070)
!1101 = !DILocation(line: 338, column: 15, scope: !1070)
!1102 = !DILocation(line: 340, column: 7, scope: !1070)
!1103 = !DILocation(line: 340, column: 15, scope: !1070)
!1104 = !DILocation(line: 340, column: 14, scope: !1070)
!1105 = !DILocalVariable(name: "match", scope: !1106, file: !3, line: 342, type: !74)
!1106 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 341, column: 9)
!1107 = !DILocation(line: 342, column: 16, scope: !1106)
!1108 = !DILocalVariable(name: "thisfield", scope: !1106, file: !3, line: 343, type: !60)
!1109 = !DILocation(line: 343, column: 17, scope: !1106)
!1110 = !DILocalVariable(name: "thislen", scope: !1106, file: !3, line: 344, type: !57)
!1111 = !DILocation(line: 344, column: 18, scope: !1106)
!1112 = !DILocation(line: 345, column: 37, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 345, column: 15)
!1114 = !DILocation(line: 345, column: 47, scope: !1113)
!1115 = !DILocation(line: 345, column: 54, scope: !1113)
!1116 = !DILocation(line: 345, column: 15, scope: !1113)
!1117 = !DILocation(line: 345, column: 65, scope: !1113)
!1118 = !DILocation(line: 345, column: 15, scope: !1106)
!1119 = !DILocation(line: 347, column: 19, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 347, column: 19)
!1121 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 346, column: 13)
!1122 = !DILocation(line: 347, column: 19, scope: !1121)
!1123 = !DILocation(line: 348, column: 17, scope: !1120)
!1124 = !DILocation(line: 349, column: 15, scope: !1121)
!1125 = !DILocation(line: 351, column: 35, scope: !1106)
!1126 = !DILocation(line: 351, column: 23, scope: !1106)
!1127 = !DILocation(line: 351, column: 21, scope: !1106)
!1128 = !DILocation(line: 352, column: 21, scope: !1106)
!1129 = !DILocation(line: 352, column: 31, scope: !1106)
!1130 = !DILocation(line: 352, column: 38, scope: !1106)
!1131 = !DILocation(line: 352, column: 45, scope: !1106)
!1132 = !DILocation(line: 352, column: 57, scope: !1106)
!1133 = !DILocation(line: 352, column: 67, scope: !1106)
!1134 = !DILocation(line: 352, column: 55, scope: !1106)
!1135 = !DILocation(line: 352, column: 42, scope: !1106)
!1136 = !DILocation(line: 352, column: 19, scope: !1106)
!1137 = !DILocation(line: 353, column: 31, scope: !1106)
!1138 = !DILocation(line: 353, column: 42, scope: !1106)
!1139 = !DILocation(line: 353, column: 53, scope: !1106)
!1140 = !DILocation(line: 353, column: 62, scope: !1106)
!1141 = !DILocation(line: 353, column: 20, scope: !1106)
!1142 = !DILocation(line: 353, column: 19, scope: !1106)
!1143 = !DILocation(line: 353, column: 17, scope: !1106)
!1144 = !DILocation(line: 354, column: 26, scope: !1106)
!1145 = !DILocation(line: 354, column: 23, scope: !1106)
!1146 = !DILocation(line: 356, column: 15, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 356, column: 15)
!1148 = !DILocation(line: 356, column: 27, scope: !1147)
!1149 = !DILocation(line: 356, column: 15, scope: !1106)
!1150 = !DILocation(line: 360, column: 26, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 357, column: 13)
!1152 = !DILocation(line: 361, column: 13, scope: !1151)
!1153 = !DILocation(line: 363, column: 15, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 363, column: 15)
!1155 = !DILocation(line: 363, column: 30, scope: !1154)
!1156 = !DILocation(line: 363, column: 15, scope: !1106)
!1157 = !DILocation(line: 365, column: 20, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 365, column: 19)
!1159 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 364, column: 13)
!1160 = !DILocation(line: 365, column: 19, scope: !1159)
!1161 = !DILocation(line: 367, column: 23, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 367, column: 23)
!1163 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 366, column: 17)
!1164 = !DILocation(line: 367, column: 23, scope: !1163)
!1165 = !DILocation(line: 368, column: 37, scope: !1162)
!1166 = !DILocation(line: 368, column: 21, scope: !1162)
!1167 = !DILocation(line: 369, column: 17, scope: !1163)
!1168 = !DILocation(line: 370, column: 24, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 370, column: 24)
!1170 = !DILocation(line: 370, column: 36, scope: !1169)
!1171 = !DILocation(line: 370, column: 24, scope: !1158)
!1172 = !DILocation(line: 372, column: 24, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 372, column: 23)
!1174 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 371, column: 17)
!1175 = !DILocation(line: 372, column: 39, scope: !1173)
!1176 = !DILocation(line: 373, column: 23, scope: !1173)
!1177 = !DILocation(line: 373, column: 27, scope: !1173)
!1178 = !DILocation(line: 373, column: 42, scope: !1173)
!1179 = !DILocation(line: 374, column: 27, scope: !1173)
!1180 = !DILocation(line: 374, column: 31, scope: !1173)
!1181 = !DILocation(line: 372, column: 23, scope: !1174)
!1182 = !DILocation(line: 375, column: 21, scope: !1173)
!1183 = !DILocation(line: 376, column: 17, scope: !1174)
!1184 = !DILocation(line: 377, column: 13, scope: !1159)
!1185 = !DILocation(line: 379, column: 16, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 379, column: 15)
!1187 = !DILocation(line: 379, column: 22, scope: !1186)
!1188 = !DILocation(line: 379, column: 25, scope: !1186)
!1189 = !DILocation(line: 379, column: 15, scope: !1106)
!1190 = !DILocation(line: 381, column: 26, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 380, column: 13)
!1192 = !DILocation(line: 381, column: 36, scope: !1191)
!1193 = !DILocation(line: 381, column: 43, scope: !1191)
!1194 = !DILocation(line: 381, column: 15, scope: !1191)
!1195 = !DILocation(line: 382, column: 15, scope: !1191)
!1196 = distinct !{!1196, !1195, !1195}
!1197 = !DILocalVariable(name: "_tmp", scope: !1198, file: !3, line: 382, type: !970)
!1198 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 382, column: 15)
!1199 = !DILocation(line: 382, column: 15, scope: !1198)
!1200 = !DILocation(line: 383, column: 27, scope: !1191)
!1201 = !DILocation(line: 383, column: 25, scope: !1191)
!1202 = !DILocation(line: 384, column: 25, scope: !1191)
!1203 = !DILocation(line: 384, column: 23, scope: !1191)
!1204 = !DILocation(line: 385, column: 20, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 385, column: 19)
!1206 = !DILocation(line: 385, column: 19, scope: !1191)
!1207 = !DILocation(line: 386, column: 29, scope: !1205)
!1208 = !DILocation(line: 386, column: 17, scope: !1205)
!1209 = !DILocation(line: 387, column: 13, scope: !1191)
!1210 = distinct !{!1210, !1102, !1211}
!1211 = !DILocation(line: 388, column: 9, scope: !1070)
!1212 = !DILocation(line: 390, column: 18, scope: !1070)
!1213 = !DILocation(line: 390, column: 35, scope: !1070)
!1214 = !DILocation(line: 390, column: 7, scope: !1070)
!1215 = !DILocation(line: 303, column: 62, scope: !1003)
!1216 = !DILocation(line: 394, column: 7, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !950, file: !3, line: 394, column: 7)
!1218 = !DILocation(line: 394, column: 22, scope: !1217)
!1219 = !DILocation(line: 394, column: 33, scope: !1217)
!1220 = !DILocation(line: 394, column: 25, scope: !1217)
!1221 = !DILocation(line: 394, column: 40, scope: !1217)
!1222 = !DILocation(line: 394, column: 7, scope: !950)
!1223 = !DILocation(line: 395, column: 52, scope: !1217)
!1224 = !DILocation(line: 395, column: 5, scope: !1217)
!1225 = !DILocation(line: 399, column: 13, scope: !950)
!1226 = !DILocation(line: 399, column: 3, scope: !950)
!1227 = !DILocation(line: 400, column: 13, scope: !950)
!1228 = !DILocation(line: 400, column: 3, scope: !950)
!1229 = !DILocation(line: 401, column: 1, scope: !950)
!1230 = distinct !DISubprogram(name: "find_field", scope: !3, file: !3, line: 209, type: !1231, isLocal: true, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !113)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!60, !1233}
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !960)
!1235 = !DILocalVariable(name: "line", arg: 1, scope: !1230, file: !3, line: 209, type: !1233)
!1236 = !DILocation(line: 209, column: 38, scope: !1230)
!1237 = !DILocalVariable(name: "count", scope: !1230, file: !3, line: 211, type: !57)
!1238 = !DILocation(line: 211, column: 10, scope: !1230)
!1239 = !DILocalVariable(name: "lp", scope: !1230, file: !3, line: 212, type: !52)
!1240 = !DILocation(line: 212, column: 15, scope: !1230)
!1241 = !DILocation(line: 212, column: 20, scope: !1230)
!1242 = !DILocation(line: 212, column: 26, scope: !1230)
!1243 = !DILocalVariable(name: "size", scope: !1230, file: !3, line: 213, type: !57)
!1244 = !DILocation(line: 213, column: 10, scope: !1230)
!1245 = !DILocation(line: 213, column: 17, scope: !1230)
!1246 = !DILocation(line: 213, column: 23, scope: !1230)
!1247 = !DILocation(line: 213, column: 30, scope: !1230)
!1248 = !DILocalVariable(name: "i", scope: !1230, file: !3, line: 214, type: !57)
!1249 = !DILocation(line: 214, column: 10, scope: !1230)
!1250 = !DILocation(line: 216, column: 14, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 216, column: 3)
!1252 = !DILocation(line: 216, column: 8, scope: !1251)
!1253 = !DILocation(line: 216, column: 19, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 216, column: 3)
!1255 = !DILocation(line: 216, column: 27, scope: !1254)
!1256 = !DILocation(line: 216, column: 25, scope: !1254)
!1257 = !DILocation(line: 216, column: 39, scope: !1254)
!1258 = !DILocation(line: 216, column: 42, scope: !1254)
!1259 = !DILocation(line: 216, column: 46, scope: !1254)
!1260 = !DILocation(line: 216, column: 44, scope: !1254)
!1261 = !DILocation(line: 216, column: 3, scope: !1251)
!1262 = !DILocation(line: 218, column: 7, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 217, column: 5)
!1264 = !DILocation(line: 218, column: 14, scope: !1263)
!1265 = !DILocation(line: 218, column: 18, scope: !1263)
!1266 = !DILocation(line: 218, column: 16, scope: !1263)
!1267 = !DILocation(line: 218, column: 23, scope: !1263)
!1268 = !DILocation(line: 218, column: 26, scope: !1263)
!1269 = !DILocation(line: 219, column: 10, scope: !1263)
!1270 = distinct !{!1270, !1262, !1269}
!1271 = !DILocation(line: 220, column: 7, scope: !1263)
!1272 = !DILocation(line: 220, column: 14, scope: !1263)
!1273 = !DILocation(line: 220, column: 18, scope: !1263)
!1274 = !DILocation(line: 220, column: 16, scope: !1263)
!1275 = !DILocation(line: 220, column: 23, scope: !1263)
!1276 = !DILocation(line: 220, column: 27, scope: !1263)
!1277 = !DILocation(line: 220, column: 26, scope: !1263)
!1278 = !DILocation(line: 221, column: 10, scope: !1263)
!1279 = distinct !{!1279, !1271, !1278}
!1280 = !DILocation(line: 222, column: 5, scope: !1263)
!1281 = !DILocation(line: 216, column: 57, scope: !1254)
!1282 = !DILocation(line: 216, column: 3, scope: !1254)
!1283 = distinct !{!1283, !1261, !1284}
!1284 = !DILocation(line: 222, column: 5, scope: !1251)
!1285 = !DILocation(line: 224, column: 8, scope: !1230)
!1286 = !DILocation(line: 224, column: 5, scope: !1230)
!1287 = !DILocation(line: 226, column: 10, scope: !1230)
!1288 = !DILocation(line: 226, column: 16, scope: !1230)
!1289 = !DILocation(line: 226, column: 25, scope: !1230)
!1290 = !DILocation(line: 226, column: 23, scope: !1230)
!1291 = !DILocation(line: 226, column: 3, scope: !1230)
!1292 = distinct !DISubprogram(name: "different", scope: !3, file: !3, line: 235, type: !1293, isLocal: true, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !113)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!74, !60, !60, !57, !57}
!1295 = !DILocalVariable(name: "old", arg: 1, scope: !1292, file: !3, line: 235, type: !60)
!1296 = !DILocation(line: 235, column: 18, scope: !1292)
!1297 = !DILocalVariable(name: "new", arg: 2, scope: !1292, file: !3, line: 235, type: !60)
!1298 = !DILocation(line: 235, column: 29, scope: !1292)
!1299 = !DILocalVariable(name: "oldlen", arg: 3, scope: !1292, file: !3, line: 235, type: !57)
!1300 = !DILocation(line: 235, column: 41, scope: !1292)
!1301 = !DILocalVariable(name: "newlen", arg: 4, scope: !1292, file: !3, line: 235, type: !57)
!1302 = !DILocation(line: 235, column: 56, scope: !1292)
!1303 = !DILocation(line: 237, column: 7, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 237, column: 7)
!1305 = !DILocation(line: 237, column: 21, scope: !1304)
!1306 = !DILocation(line: 237, column: 19, scope: !1304)
!1307 = !DILocation(line: 237, column: 7, scope: !1292)
!1308 = !DILocation(line: 238, column: 14, scope: !1304)
!1309 = !DILocation(line: 238, column: 12, scope: !1304)
!1310 = !DILocation(line: 238, column: 5, scope: !1304)
!1311 = !DILocation(line: 239, column: 7, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 239, column: 7)
!1313 = !DILocation(line: 239, column: 21, scope: !1312)
!1314 = !DILocation(line: 239, column: 19, scope: !1312)
!1315 = !DILocation(line: 239, column: 7, scope: !1292)
!1316 = !DILocation(line: 240, column: 14, scope: !1312)
!1317 = !DILocation(line: 240, column: 12, scope: !1312)
!1318 = !DILocation(line: 240, column: 5, scope: !1312)
!1319 = !DILocation(line: 242, column: 7, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 242, column: 7)
!1321 = !DILocation(line: 242, column: 7, scope: !1292)
!1322 = !DILocation(line: 245, column: 14, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 243, column: 5)
!1324 = !DILocation(line: 245, column: 24, scope: !1323)
!1325 = !DILocation(line: 245, column: 21, scope: !1323)
!1326 = !DILocation(line: 245, column: 31, scope: !1323)
!1327 = !DILocation(line: 245, column: 46, scope: !1323)
!1328 = !DILocation(line: 245, column: 51, scope: !1323)
!1329 = !DILocation(line: 245, column: 56, scope: !1323)
!1330 = !DILocation(line: 245, column: 34, scope: !1323)
!1331 = !DILocation(line: 245, column: 7, scope: !1323)
!1332 = !DILocation(line: 247, column: 12, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 247, column: 12)
!1334 = !DILocation(line: 247, column: 12, scope: !1320)
!1335 = !DILocation(line: 248, column: 22, scope: !1333)
!1336 = !DILocation(line: 248, column: 27, scope: !1333)
!1337 = !DILocation(line: 248, column: 35, scope: !1333)
!1338 = !DILocation(line: 248, column: 40, scope: !1333)
!1339 = !DILocation(line: 248, column: 12, scope: !1333)
!1340 = !DILocation(line: 248, column: 48, scope: !1333)
!1341 = !DILocation(line: 248, column: 5, scope: !1333)
!1342 = !DILocation(line: 250, column: 12, scope: !1333)
!1343 = !DILocation(line: 250, column: 22, scope: !1333)
!1344 = !DILocation(line: 250, column: 19, scope: !1333)
!1345 = !DILocation(line: 250, column: 29, scope: !1333)
!1346 = !DILocation(line: 250, column: 40, scope: !1333)
!1347 = !DILocation(line: 250, column: 45, scope: !1333)
!1348 = !DILocation(line: 250, column: 50, scope: !1333)
!1349 = !DILocation(line: 250, column: 32, scope: !1333)
!1350 = !DILocation(line: 250, column: 5, scope: !1333)
!1351 = !DILocation(line: 251, column: 1, scope: !1292)
!1352 = distinct !DISubprogram(name: "writeline", scope: !3, file: !3, line: 260, type: !1353, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !113)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{null, !1233, !74, !1075}
!1355 = !DILocalVariable(name: "line", arg: 1, scope: !1352, file: !3, line: 260, type: !1233)
!1356 = !DILocation(line: 260, column: 37, scope: !1352)
!1357 = !DILocalVariable(name: "match", arg: 2, scope: !1352, file: !3, line: 261, type: !74)
!1358 = !DILocation(line: 261, column: 17, scope: !1352)
!1359 = !DILocalVariable(name: "linecount", arg: 3, scope: !1352, file: !3, line: 261, type: !1075)
!1360 = !DILocation(line: 261, column: 34, scope: !1352)
!1361 = !DILocation(line: 263, column: 10, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 263, column: 7)
!1363 = !DILocation(line: 263, column: 20, scope: !1362)
!1364 = !DILocation(line: 263, column: 7, scope: !1352)
!1365 = !DILocation(line: 263, column: 27, scope: !1362)
!1366 = !DILocation(line: 264, column: 13, scope: !1362)
!1367 = !DILocation(line: 264, column: 21, scope: !1362)
!1368 = !DILocation(line: 264, column: 12, scope: !1362)
!1369 = !DILocation(line: 265, column: 12, scope: !1362)
!1370 = !DILocation(line: 266, column: 5, scope: !1362)
!1371 = !DILocation(line: 268, column: 7, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 268, column: 7)
!1373 = !DILocation(line: 268, column: 17, scope: !1372)
!1374 = !DILocation(line: 268, column: 7, scope: !1352)
!1375 = !DILocation(line: 269, column: 31, scope: !1372)
!1376 = !DILocation(line: 269, column: 41, scope: !1372)
!1377 = !DILocation(line: 269, column: 5, scope: !1372)
!1378 = !DILocation(line: 271, column: 3, scope: !1352)
!1379 = !DILocation(line: 272, column: 1, scope: !1352)
!1380 = distinct !DISubprogram(name: "to_uchar", scope: !711, file: !711, line: 158, type: !1381, isLocal: true, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !113)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!673, !54}
!1383 = !DILocalVariable(name: "ch", arg: 1, scope: !1380, file: !711, line: 158, type: !54)
!1384 = !DILocation(line: 158, column: 44, scope: !1380)
!1385 = !DILocation(line: 158, column: 57, scope: !1380)
!1386 = !DILocation(line: 158, column: 50, scope: !1380)
!1387 = distinct !DISubprogram(name: "__argmatch_die", scope: !118, file: !118, line: 61, type: !137, isLocal: true, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: false, unit: !117, variables: !113)
!1388 = !DILocation(line: 63, column: 3, scope: !1387)
!1389 = !DILocation(line: 64, column: 1, scope: !1387)
!1390 = distinct !DISubprogram(name: "argmatch", scope: !118, file: !118, line: 83, type: !1391, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false, unit: !117, variables: !113)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!1393, !52, !1395, !52, !172}
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !173, line: 51, baseType: !1394)
!1394 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!1396 = !DILocalVariable(name: "arg", arg: 1, scope: !1390, file: !118, line: 83, type: !52)
!1397 = !DILocation(line: 83, column: 23, scope: !1390)
!1398 = !DILocalVariable(name: "arglist", arg: 2, scope: !1390, file: !118, line: 83, type: !1395)
!1399 = !DILocation(line: 83, column: 47, scope: !1390)
!1400 = !DILocalVariable(name: "vallist", arg: 3, scope: !1390, file: !118, line: 84, type: !52)
!1401 = !DILocation(line: 84, column: 23, scope: !1390)
!1402 = !DILocalVariable(name: "valsize", arg: 4, scope: !1390, file: !118, line: 84, type: !172)
!1403 = !DILocation(line: 84, column: 39, scope: !1390)
!1404 = !DILocalVariable(name: "i", scope: !1390, file: !118, line: 86, type: !172)
!1405 = !DILocation(line: 86, column: 10, scope: !1390)
!1406 = !DILocalVariable(name: "arglen", scope: !1390, file: !118, line: 87, type: !172)
!1407 = !DILocation(line: 87, column: 10, scope: !1390)
!1408 = !DILocalVariable(name: "matchind", scope: !1390, file: !118, line: 88, type: !1393)
!1409 = !DILocation(line: 88, column: 13, scope: !1390)
!1410 = !DILocalVariable(name: "ambiguous", scope: !1390, file: !118, line: 89, type: !74)
!1411 = !DILocation(line: 89, column: 8, scope: !1390)
!1412 = !DILocation(line: 91, column: 20, scope: !1390)
!1413 = !DILocation(line: 91, column: 12, scope: !1390)
!1414 = !DILocation(line: 91, column: 10, scope: !1390)
!1415 = !DILocation(line: 94, column: 10, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1390, file: !118, line: 94, column: 3)
!1417 = !DILocation(line: 94, column: 8, scope: !1416)
!1418 = !DILocation(line: 94, column: 15, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1416, file: !118, line: 94, column: 3)
!1420 = !DILocation(line: 94, column: 23, scope: !1419)
!1421 = !DILocation(line: 94, column: 3, scope: !1416)
!1422 = !DILocation(line: 96, column: 21, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !118, line: 96, column: 11)
!1424 = distinct !DILexicalBlock(scope: !1419, file: !118, line: 95, column: 5)
!1425 = !DILocation(line: 96, column: 29, scope: !1423)
!1426 = !DILocation(line: 96, column: 33, scope: !1423)
!1427 = !DILocation(line: 96, column: 38, scope: !1423)
!1428 = !DILocation(line: 96, column: 12, scope: !1423)
!1429 = !DILocation(line: 96, column: 11, scope: !1424)
!1430 = !DILocation(line: 98, column: 23, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !118, line: 98, column: 15)
!1432 = distinct !DILexicalBlock(scope: !1423, file: !118, line: 97, column: 9)
!1433 = !DILocation(line: 98, column: 31, scope: !1431)
!1434 = !DILocation(line: 98, column: 15, scope: !1431)
!1435 = !DILocation(line: 98, column: 38, scope: !1431)
!1436 = !DILocation(line: 98, column: 35, scope: !1431)
!1437 = !DILocation(line: 98, column: 15, scope: !1432)
!1438 = !DILocation(line: 100, column: 20, scope: !1431)
!1439 = !DILocation(line: 100, column: 13, scope: !1431)
!1440 = !DILocation(line: 101, column: 20, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1431, file: !118, line: 101, column: 20)
!1442 = !DILocation(line: 101, column: 29, scope: !1441)
!1443 = !DILocation(line: 101, column: 20, scope: !1431)
!1444 = !DILocation(line: 103, column: 24, scope: !1441)
!1445 = !DILocation(line: 103, column: 22, scope: !1441)
!1446 = !DILocation(line: 103, column: 13, scope: !1441)
!1447 = !DILocation(line: 107, column: 19, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !118, line: 107, column: 19)
!1449 = distinct !DILexicalBlock(scope: !1441, file: !118, line: 105, column: 13)
!1450 = !DILocation(line: 107, column: 27, scope: !1448)
!1451 = !DILocation(line: 108, column: 19, scope: !1448)
!1452 = !DILocation(line: 108, column: 30, scope: !1448)
!1453 = !DILocation(line: 108, column: 40, scope: !1448)
!1454 = !DILocation(line: 108, column: 50, scope: !1448)
!1455 = !DILocation(line: 108, column: 48, scope: !1448)
!1456 = !DILocation(line: 108, column: 38, scope: !1448)
!1457 = !DILocation(line: 109, column: 30, scope: !1448)
!1458 = !DILocation(line: 109, column: 40, scope: !1448)
!1459 = !DILocation(line: 109, column: 50, scope: !1448)
!1460 = !DILocation(line: 109, column: 48, scope: !1448)
!1461 = !DILocation(line: 109, column: 38, scope: !1448)
!1462 = !DILocation(line: 109, column: 53, scope: !1448)
!1463 = !DILocation(line: 108, column: 22, scope: !1448)
!1464 = !DILocation(line: 107, column: 19, scope: !1449)
!1465 = !DILocation(line: 113, column: 29, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1448, file: !118, line: 110, column: 17)
!1467 = !DILocation(line: 114, column: 17, scope: !1466)
!1468 = !DILocation(line: 116, column: 9, scope: !1432)
!1469 = !DILocation(line: 117, column: 5, scope: !1424)
!1470 = !DILocation(line: 94, column: 28, scope: !1419)
!1471 = !DILocation(line: 94, column: 3, scope: !1419)
!1472 = distinct !{!1472, !1421, !1473}
!1473 = !DILocation(line: 117, column: 5, scope: !1416)
!1474 = !DILocation(line: 118, column: 7, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1390, file: !118, line: 118, column: 7)
!1476 = !DILocation(line: 118, column: 7, scope: !1390)
!1477 = !DILocation(line: 119, column: 5, scope: !1475)
!1478 = !DILocation(line: 121, column: 12, scope: !1475)
!1479 = !DILocation(line: 121, column: 5, scope: !1475)
!1480 = !DILocation(line: 122, column: 1, scope: !1390)
!1481 = distinct !DISubprogram(name: "argmatch_invalid", scope: !118, file: !118, line: 130, type: !1482, isLocal: false, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false, unit: !117, variables: !113)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{null, !52, !52, !1393}
!1484 = !DILocalVariable(name: "context", arg: 1, scope: !1481, file: !118, line: 130, type: !52)
!1485 = !DILocation(line: 130, column: 31, scope: !1481)
!1486 = !DILocalVariable(name: "value", arg: 2, scope: !1481, file: !118, line: 130, type: !52)
!1487 = !DILocation(line: 130, column: 52, scope: !1481)
!1488 = !DILocalVariable(name: "problem", arg: 3, scope: !1481, file: !118, line: 130, type: !1393)
!1489 = !DILocation(line: 130, column: 69, scope: !1481)
!1490 = !DILocalVariable(name: "format", scope: !1481, file: !118, line: 132, type: !52)
!1491 = !DILocation(line: 132, column: 15, scope: !1481)
!1492 = !DILocation(line: 132, column: 25, scope: !1481)
!1493 = !DILocation(line: 132, column: 33, scope: !1481)
!1494 = !DILocation(line: 136, column: 16, scope: !1481)
!1495 = !DILocation(line: 136, column: 69, scope: !1481)
!1496 = !DILocation(line: 136, column: 24, scope: !1481)
!1497 = !DILocation(line: 137, column: 22, scope: !1481)
!1498 = !DILocation(line: 137, column: 10, scope: !1481)
!1499 = !DILocation(line: 136, column: 3, scope: !1481)
!1500 = !DILocation(line: 138, column: 1, scope: !1481)
!1501 = distinct !DISubprogram(name: "argmatch_valid", scope: !118, file: !118, line: 145, type: !1502, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false, unit: !117, variables: !113)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{null, !1395, !52, !172}
!1504 = !DILocalVariable(name: "arglist", arg: 1, scope: !1501, file: !118, line: 145, type: !1395)
!1505 = !DILocation(line: 145, column: 36, scope: !1501)
!1506 = !DILocalVariable(name: "vallist", arg: 2, scope: !1501, file: !118, line: 146, type: !52)
!1507 = !DILocation(line: 146, column: 29, scope: !1501)
!1508 = !DILocalVariable(name: "valsize", arg: 3, scope: !1501, file: !118, line: 146, type: !172)
!1509 = !DILocation(line: 146, column: 45, scope: !1501)
!1510 = !DILocalVariable(name: "i", scope: !1501, file: !118, line: 148, type: !172)
!1511 = !DILocation(line: 148, column: 10, scope: !1501)
!1512 = !DILocalVariable(name: "last_val", scope: !1501, file: !118, line: 149, type: !52)
!1513 = !DILocation(line: 149, column: 15, scope: !1501)
!1514 = !DILocation(line: 153, column: 3, scope: !1501)
!1515 = !DILocation(line: 154, column: 10, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1501, file: !118, line: 154, column: 3)
!1517 = !DILocation(line: 154, column: 8, scope: !1516)
!1518 = !DILocation(line: 154, column: 15, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1516, file: !118, line: 154, column: 3)
!1520 = !DILocation(line: 154, column: 23, scope: !1519)
!1521 = !DILocation(line: 154, column: 3, scope: !1516)
!1522 = !DILocation(line: 155, column: 10, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1519, file: !118, line: 155, column: 9)
!1524 = !DILocation(line: 155, column: 12, scope: !1523)
!1525 = !DILocation(line: 156, column: 9, scope: !1523)
!1526 = !DILocation(line: 156, column: 20, scope: !1523)
!1527 = !DILocation(line: 156, column: 30, scope: !1523)
!1528 = !DILocation(line: 156, column: 40, scope: !1523)
!1529 = !DILocation(line: 156, column: 50, scope: !1523)
!1530 = !DILocation(line: 156, column: 48, scope: !1523)
!1531 = !DILocation(line: 156, column: 38, scope: !1523)
!1532 = !DILocation(line: 156, column: 53, scope: !1523)
!1533 = !DILocation(line: 156, column: 12, scope: !1523)
!1534 = !DILocation(line: 155, column: 9, scope: !1519)
!1535 = !DILocation(line: 158, column: 18, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1523, file: !118, line: 157, column: 7)
!1537 = !DILocation(line: 158, column: 45, scope: !1536)
!1538 = !DILocation(line: 158, column: 53, scope: !1536)
!1539 = !DILocation(line: 158, column: 38, scope: !1536)
!1540 = !DILocation(line: 158, column: 9, scope: !1536)
!1541 = !DILocation(line: 159, column: 20, scope: !1536)
!1542 = !DILocation(line: 159, column: 30, scope: !1536)
!1543 = !DILocation(line: 159, column: 40, scope: !1536)
!1544 = !DILocation(line: 159, column: 38, scope: !1536)
!1545 = !DILocation(line: 159, column: 28, scope: !1536)
!1546 = !DILocation(line: 159, column: 18, scope: !1536)
!1547 = !DILocation(line: 160, column: 7, scope: !1536)
!1548 = !DILocation(line: 163, column: 18, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1523, file: !118, line: 162, column: 7)
!1550 = !DILocation(line: 163, column: 41, scope: !1549)
!1551 = !DILocation(line: 163, column: 49, scope: !1549)
!1552 = !DILocation(line: 163, column: 34, scope: !1549)
!1553 = !DILocation(line: 163, column: 9, scope: !1549)
!1554 = !DILocation(line: 156, column: 60, scope: !1523)
!1555 = !DILocation(line: 154, column: 28, scope: !1519)
!1556 = !DILocation(line: 154, column: 3, scope: !1519)
!1557 = distinct !{!1557, !1521, !1558}
!1558 = !DILocation(line: 164, column: 7, scope: !1516)
!1559 = !DILocation(line: 165, column: 3, scope: !1501)
!1560 = !DILocation(line: 166, column: 1, scope: !1501)
!1561 = distinct !DISubprogram(name: "__xargmatch_internal", scope: !118, file: !118, line: 175, type: !1562, isLocal: false, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: false, unit: !117, variables: !113)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!1393, !52, !52, !1395, !52, !172, !134}
!1564 = !DILocalVariable(name: "context", arg: 1, scope: !1561, file: !118, line: 175, type: !52)
!1565 = !DILocation(line: 175, column: 35, scope: !1561)
!1566 = !DILocalVariable(name: "arg", arg: 2, scope: !1561, file: !118, line: 176, type: !52)
!1567 = !DILocation(line: 176, column: 35, scope: !1561)
!1568 = !DILocalVariable(name: "arglist", arg: 3, scope: !1561, file: !118, line: 176, type: !1395)
!1569 = !DILocation(line: 176, column: 59, scope: !1561)
!1570 = !DILocalVariable(name: "vallist", arg: 4, scope: !1561, file: !118, line: 177, type: !52)
!1571 = !DILocation(line: 177, column: 35, scope: !1561)
!1572 = !DILocalVariable(name: "valsize", arg: 5, scope: !1561, file: !118, line: 177, type: !172)
!1573 = !DILocation(line: 177, column: 51, scope: !1561)
!1574 = !DILocalVariable(name: "exit_fn", arg: 6, scope: !1561, file: !118, line: 178, type: !134)
!1575 = !DILocation(line: 178, column: 40, scope: !1561)
!1576 = !DILocalVariable(name: "res", scope: !1561, file: !118, line: 180, type: !1393)
!1577 = !DILocation(line: 180, column: 13, scope: !1561)
!1578 = !DILocation(line: 180, column: 29, scope: !1561)
!1579 = !DILocation(line: 180, column: 34, scope: !1561)
!1580 = !DILocation(line: 180, column: 43, scope: !1561)
!1581 = !DILocation(line: 180, column: 52, scope: !1561)
!1582 = !DILocation(line: 180, column: 19, scope: !1561)
!1583 = !DILocation(line: 181, column: 7, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1561, file: !118, line: 181, column: 7)
!1585 = !DILocation(line: 181, column: 11, scope: !1584)
!1586 = !DILocation(line: 181, column: 7, scope: !1561)
!1587 = !DILocation(line: 183, column: 12, scope: !1584)
!1588 = !DILocation(line: 183, column: 5, scope: !1584)
!1589 = !DILocation(line: 186, column: 21, scope: !1561)
!1590 = !DILocation(line: 186, column: 30, scope: !1561)
!1591 = !DILocation(line: 186, column: 35, scope: !1561)
!1592 = !DILocation(line: 186, column: 3, scope: !1561)
!1593 = !DILocation(line: 187, column: 19, scope: !1561)
!1594 = !DILocation(line: 187, column: 28, scope: !1561)
!1595 = !DILocation(line: 187, column: 37, scope: !1561)
!1596 = !DILocation(line: 187, column: 3, scope: !1561)
!1597 = !DILocation(line: 188, column: 5, scope: !1561)
!1598 = !DILocation(line: 188, column: 3, scope: !1561)
!1599 = !DILocation(line: 190, column: 3, scope: !1561)
!1600 = !DILocation(line: 191, column: 1, scope: !1561)
!1601 = distinct !DISubprogram(name: "argmatch_to_argument", scope: !118, file: !118, line: 196, type: !1602, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: false, unit: !117, variables: !113)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!52, !52, !1395, !52, !172}
!1604 = !DILocalVariable(name: "value", arg: 1, scope: !1601, file: !118, line: 196, type: !52)
!1605 = !DILocation(line: 196, column: 35, scope: !1601)
!1606 = !DILocalVariable(name: "arglist", arg: 2, scope: !1601, file: !118, line: 197, type: !1395)
!1607 = !DILocation(line: 197, column: 42, scope: !1601)
!1608 = !DILocalVariable(name: "vallist", arg: 3, scope: !1601, file: !118, line: 198, type: !52)
!1609 = !DILocation(line: 198, column: 35, scope: !1601)
!1610 = !DILocalVariable(name: "valsize", arg: 4, scope: !1601, file: !118, line: 198, type: !172)
!1611 = !DILocation(line: 198, column: 51, scope: !1601)
!1612 = !DILocalVariable(name: "i", scope: !1601, file: !118, line: 200, type: !172)
!1613 = !DILocation(line: 200, column: 10, scope: !1601)
!1614 = !DILocation(line: 202, column: 10, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1601, file: !118, line: 202, column: 3)
!1616 = !DILocation(line: 202, column: 8, scope: !1615)
!1617 = !DILocation(line: 202, column: 15, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1615, file: !118, line: 202, column: 3)
!1619 = !DILocation(line: 202, column: 23, scope: !1618)
!1620 = !DILocation(line: 202, column: 3, scope: !1615)
!1621 = !DILocation(line: 203, column: 18, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1618, file: !118, line: 203, column: 9)
!1623 = !DILocation(line: 203, column: 25, scope: !1622)
!1624 = !DILocation(line: 203, column: 35, scope: !1622)
!1625 = !DILocation(line: 203, column: 45, scope: !1622)
!1626 = !DILocation(line: 203, column: 43, scope: !1622)
!1627 = !DILocation(line: 203, column: 33, scope: !1622)
!1628 = !DILocation(line: 203, column: 48, scope: !1622)
!1629 = !DILocation(line: 203, column: 10, scope: !1622)
!1630 = !DILocation(line: 203, column: 9, scope: !1618)
!1631 = !DILocation(line: 204, column: 14, scope: !1622)
!1632 = !DILocation(line: 204, column: 22, scope: !1622)
!1633 = !DILocation(line: 204, column: 7, scope: !1622)
!1634 = !DILocation(line: 203, column: 55, scope: !1622)
!1635 = !DILocation(line: 202, column: 28, scope: !1618)
!1636 = !DILocation(line: 202, column: 3, scope: !1618)
!1637 = distinct !{!1637, !1620, !1638}
!1638 = !DILocation(line: 204, column: 23, scope: !1615)
!1639 = !DILocation(line: 205, column: 3, scope: !1601)
!1640 = !DILocation(line: 206, column: 1, scope: !1601)
!1641 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !142, file: !142, line: 41, type: !1642, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: false, unit: !141, variables: !113)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{null, !52}
!1644 = !DILocalVariable(name: "file", arg: 1, scope: !1641, file: !142, line: 41, type: !52)
!1645 = !DILocation(line: 41, column: 41, scope: !1641)
!1646 = !DILocation(line: 43, column: 15, scope: !1641)
!1647 = !DILocation(line: 43, column: 13, scope: !1641)
!1648 = !DILocation(line: 44, column: 1, scope: !1641)
!1649 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !142, file: !142, line: 78, type: !1650, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !141, variables: !113)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{null, !74}
!1652 = !DILocalVariable(name: "ignore", arg: 1, scope: !1649, file: !142, line: 78, type: !74)
!1653 = !DILocation(line: 78, column: 37, scope: !1649)
!1654 = !DILocation(line: 80, column: 18, scope: !1649)
!1655 = !DILocation(line: 80, column: 16, scope: !1649)
!1656 = !DILocation(line: 81, column: 1, scope: !1649)
!1657 = distinct !DISubprogram(name: "close_stdout", scope: !142, file: !142, line: 107, type: !137, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: false, unit: !141, variables: !113)
!1658 = !DILocation(line: 109, column: 21, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1657, file: !142, line: 109, column: 7)
!1660 = !DILocation(line: 109, column: 7, scope: !1659)
!1661 = !DILocation(line: 109, column: 29, scope: !1659)
!1662 = !DILocation(line: 110, column: 7, scope: !1659)
!1663 = !DILocation(line: 110, column: 12, scope: !1659)
!1664 = !DILocation(line: 110, column: 25, scope: !1659)
!1665 = !DILocation(line: 110, column: 28, scope: !1659)
!1666 = !DILocation(line: 110, column: 34, scope: !1659)
!1667 = !DILocation(line: 109, column: 7, scope: !1657)
!1668 = !DILocalVariable(name: "write_error", scope: !1669, file: !142, line: 112, type: !52)
!1669 = distinct !DILexicalBlock(scope: !1659, file: !142, line: 111, column: 5)
!1670 = !DILocation(line: 112, column: 19, scope: !1669)
!1671 = !DILocation(line: 113, column: 11, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1669, file: !142, line: 113, column: 11)
!1673 = !DILocation(line: 113, column: 11, scope: !1669)
!1674 = !DILocation(line: 114, column: 19, scope: !1672)
!1675 = !DILocation(line: 114, column: 52, scope: !1672)
!1676 = !DILocation(line: 114, column: 36, scope: !1672)
!1677 = !DILocation(line: 115, column: 16, scope: !1672)
!1678 = !DILocation(line: 114, column: 9, scope: !1672)
!1679 = !DILocation(line: 117, column: 19, scope: !1672)
!1680 = !DILocation(line: 117, column: 32, scope: !1672)
!1681 = !DILocation(line: 117, column: 9, scope: !1672)
!1682 = !DILocation(line: 119, column: 14, scope: !1669)
!1683 = !DILocation(line: 119, column: 7, scope: !1669)
!1684 = !DILocation(line: 122, column: 22, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1657, file: !142, line: 122, column: 8)
!1686 = !DILocation(line: 122, column: 8, scope: !1685)
!1687 = !DILocation(line: 122, column: 30, scope: !1685)
!1688 = !DILocation(line: 122, column: 8, scope: !1657)
!1689 = !DILocation(line: 123, column: 13, scope: !1685)
!1690 = !DILocation(line: 123, column: 6, scope: !1685)
!1691 = !DILocation(line: 124, column: 1, scope: !1657)
!1692 = distinct !DISubprogram(name: "last_component", scope: !615, file: !615, line: 30, type: !1693, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: false, unit: !614, variables: !113)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!60, !52}
!1695 = !DILocalVariable(name: "name", arg: 1, scope: !1692, file: !615, line: 30, type: !52)
!1696 = !DILocation(line: 30, column: 29, scope: !1692)
!1697 = !DILocalVariable(name: "base", scope: !1692, file: !615, line: 32, type: !52)
!1698 = !DILocation(line: 32, column: 15, scope: !1692)
!1699 = !DILocation(line: 32, column: 22, scope: !1692)
!1700 = !DILocation(line: 32, column: 27, scope: !1692)
!1701 = !DILocalVariable(name: "p", scope: !1692, file: !615, line: 33, type: !52)
!1702 = !DILocation(line: 33, column: 15, scope: !1692)
!1703 = !DILocalVariable(name: "saw_slash", scope: !1692, file: !615, line: 34, type: !74)
!1704 = !DILocation(line: 34, column: 8, scope: !1692)
!1705 = !DILocation(line: 36, column: 3, scope: !1692)
!1706 = !DILocation(line: 36, column: 10, scope: !1692)
!1707 = !DILocation(line: 37, column: 9, scope: !1692)
!1708 = distinct !{!1708, !1705, !1707}
!1709 = !DILocation(line: 39, column: 12, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1692, file: !615, line: 39, column: 3)
!1711 = !DILocation(line: 39, column: 10, scope: !1710)
!1712 = !DILocation(line: 39, column: 8, scope: !1710)
!1713 = !DILocation(line: 39, column: 19, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1710, file: !615, line: 39, column: 3)
!1715 = !DILocation(line: 39, column: 18, scope: !1714)
!1716 = !DILocation(line: 39, column: 3, scope: !1710)
!1717 = !DILocation(line: 41, column: 11, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !615, line: 41, column: 11)
!1719 = distinct !DILexicalBlock(scope: !1714, file: !615, line: 40, column: 5)
!1720 = !DILocation(line: 41, column: 11, scope: !1719)
!1721 = !DILocation(line: 42, column: 19, scope: !1718)
!1722 = !DILocation(line: 42, column: 9, scope: !1718)
!1723 = !DILocation(line: 43, column: 16, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1718, file: !615, line: 43, column: 16)
!1725 = !DILocation(line: 43, column: 16, scope: !1718)
!1726 = !DILocation(line: 45, column: 18, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1724, file: !615, line: 44, column: 9)
!1728 = !DILocation(line: 45, column: 16, scope: !1727)
!1729 = !DILocation(line: 46, column: 21, scope: !1727)
!1730 = !DILocation(line: 47, column: 9, scope: !1727)
!1731 = !DILocation(line: 48, column: 5, scope: !1719)
!1732 = !DILocation(line: 39, column: 23, scope: !1714)
!1733 = !DILocation(line: 39, column: 3, scope: !1714)
!1734 = distinct !{!1734, !1716, !1735}
!1735 = !DILocation(line: 48, column: 5, scope: !1710)
!1736 = !DILocation(line: 50, column: 19, scope: !1692)
!1737 = !DILocation(line: 50, column: 3, scope: !1692)
!1738 = distinct !DISubprogram(name: "base_len", scope: !615, file: !615, line: 58, type: !1739, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, unit: !614, variables: !113)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!172, !52}
!1741 = !DILocalVariable(name: "name", arg: 1, scope: !1738, file: !615, line: 58, type: !52)
!1742 = !DILocation(line: 58, column: 23, scope: !1738)
!1743 = !DILocalVariable(name: "len", scope: !1738, file: !615, line: 60, type: !172)
!1744 = !DILocation(line: 60, column: 10, scope: !1738)
!1745 = !DILocalVariable(name: "prefix_len", scope: !1738, file: !615, line: 61, type: !172)
!1746 = !DILocation(line: 61, column: 10, scope: !1738)
!1747 = !DILocation(line: 63, column: 22, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1738, file: !615, line: 63, column: 3)
!1749 = !DILocation(line: 63, column: 14, scope: !1748)
!1750 = !DILocation(line: 63, column: 12, scope: !1748)
!1751 = !DILocation(line: 63, column: 8, scope: !1748)
!1752 = !DILocation(line: 63, column: 34, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1748, file: !615, line: 63, column: 3)
!1754 = !DILocation(line: 63, column: 32, scope: !1753)
!1755 = !DILocation(line: 63, column: 38, scope: !1753)
!1756 = !DILocation(line: 63, column: 41, scope: !1753)
!1757 = !DILocation(line: 63, column: 3, scope: !1748)
!1758 = !DILocation(line: 64, column: 5, scope: !1753)
!1759 = !DILocation(line: 63, column: 70, scope: !1753)
!1760 = !DILocation(line: 63, column: 3, scope: !1753)
!1761 = distinct !{!1761, !1757, !1762}
!1762 = !DILocation(line: 64, column: 5, scope: !1748)
!1763 = !DILocation(line: 74, column: 10, scope: !1738)
!1764 = !DILocation(line: 74, column: 3, scope: !1738)
!1765 = distinct !DISubprogram(name: "fdadvise", scope: !618, file: !618, line: 25, type: !1766, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: false, unit: !617, variables: !113)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{null, !61, !1768, !1768, !1772}
!1768 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1769, line: 57, baseType: !1770)
!1769 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!1770 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1771, line: 140, baseType: !1394)
!1771 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!1772 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !621, line: 52, baseType: !620)
!1773 = !DILocalVariable(name: "fd", arg: 1, scope: !1765, file: !618, line: 25, type: !61)
!1774 = !DILocation(line: 25, column: 15, scope: !1765)
!1775 = !DILocalVariable(name: "offset", arg: 2, scope: !1765, file: !618, line: 25, type: !1768)
!1776 = !DILocation(line: 25, column: 25, scope: !1765)
!1777 = !DILocalVariable(name: "len", arg: 3, scope: !1765, file: !618, line: 25, type: !1768)
!1778 = !DILocation(line: 25, column: 39, scope: !1765)
!1779 = !DILocalVariable(name: "advice", arg: 4, scope: !1765, file: !618, line: 25, type: !1772)
!1780 = !DILocation(line: 25, column: 54, scope: !1765)
!1781 = !DILocalVariable(name: "__x", scope: !1782, file: !618, line: 28, type: !61)
!1782 = distinct !DILexicalBlock(scope: !1765, file: !618, line: 28, column: 3)
!1783 = !DILocation(line: 28, column: 3, scope: !1782)
!1784 = !DILocation(line: 30, column: 1, scope: !1765)
!1785 = distinct !DISubprogram(name: "fadvise", scope: !618, file: !618, line: 33, type: !1786, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: false, unit: !617, variables: !113)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{null, !1788, !1772}
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1790, line: 7, baseType: !1791)
!1790 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1792, line: 245, size: 1728, elements: !1793)
!1792 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/libio.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!1793 = !{!1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1814, !1815, !1816, !1817, !1818, !1819, !1821, !1825, !1828, !1830, !1831, !1832, !1833, !1834, !1835, !1836}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1791, file: !1792, line: 246, baseType: !61, size: 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1791, file: !1792, line: 251, baseType: !60, size: 64, offset: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1791, file: !1792, line: 252, baseType: !60, size: 64, offset: 128)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1791, file: !1792, line: 253, baseType: !60, size: 64, offset: 192)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1791, file: !1792, line: 254, baseType: !60, size: 64, offset: 256)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1791, file: !1792, line: 255, baseType: !60, size: 64, offset: 320)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1791, file: !1792, line: 256, baseType: !60, size: 64, offset: 384)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1791, file: !1792, line: 257, baseType: !60, size: 64, offset: 448)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1791, file: !1792, line: 258, baseType: !60, size: 64, offset: 512)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1791, file: !1792, line: 260, baseType: !60, size: 64, offset: 576)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1791, file: !1792, line: 261, baseType: !60, size: 64, offset: 640)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1791, file: !1792, line: 262, baseType: !60, size: 64, offset: 704)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1791, file: !1792, line: 264, baseType: !1807, size: 64, offset: 768)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1792, line: 160, size: 192, elements: !1809)
!1809 = !{!1810, !1811, !1813}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1808, file: !1792, line: 161, baseType: !1807, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1808, file: !1792, line: 162, baseType: !1812, size: 64, offset: 64)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1808, file: !1792, line: 166, baseType: !61, size: 32, offset: 128)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1791, file: !1792, line: 266, baseType: !1812, size: 64, offset: 832)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1791, file: !1792, line: 268, baseType: !61, size: 32, offset: 896)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1791, file: !1792, line: 272, baseType: !61, size: 32, offset: 928)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1791, file: !1792, line: 274, baseType: !1770, size: 64, offset: 960)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1791, file: !1792, line: 278, baseType: !62, size: 16, offset: 1024)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1791, file: !1792, line: 279, baseType: !1820, size: 8, offset: 1040)
!1820 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1791, file: !1792, line: 280, baseType: !1822, size: 8, offset: 1048)
!1822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 8, elements: !1823)
!1823 = !{!1824}
!1824 = !DISubrange(count: 1)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1791, file: !1792, line: 284, baseType: !1826, size: 64, offset: 1088)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1792, line: 154, baseType: null)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1791, file: !1792, line: 293, baseType: !1829, size: 64, offset: 1152)
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1771, line: 141, baseType: !1394)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1791, file: !1792, line: 301, baseType: !55, size: 64, offset: 1216)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1791, file: !1792, line: 302, baseType: !55, size: 64, offset: 1280)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1791, file: !1792, line: 303, baseType: !55, size: 64, offset: 1344)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1791, file: !1792, line: 304, baseType: !55, size: 64, offset: 1408)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1791, file: !1792, line: 306, baseType: !172, size: 64, offset: 1472)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1791, file: !1792, line: 307, baseType: !61, size: 32, offset: 1536)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1791, file: !1792, line: 309, baseType: !1837, size: 160, offset: 1568)
!1837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 160, elements: !1838)
!1838 = !{!1839}
!1839 = !DISubrange(count: 20)
!1840 = !DILocalVariable(name: "fp", arg: 1, scope: !1785, file: !618, line: 33, type: !1788)
!1841 = !DILocation(line: 33, column: 16, scope: !1785)
!1842 = !DILocalVariable(name: "advice", arg: 2, scope: !1785, file: !618, line: 33, type: !1772)
!1843 = !DILocation(line: 33, column: 30, scope: !1785)
!1844 = !DILocation(line: 35, column: 7, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1785, file: !618, line: 35, column: 7)
!1846 = !DILocation(line: 35, column: 7, scope: !1785)
!1847 = !DILocation(line: 36, column: 23, scope: !1845)
!1848 = !DILocation(line: 36, column: 15, scope: !1845)
!1849 = !DILocation(line: 36, column: 34, scope: !1845)
!1850 = !DILocation(line: 36, column: 5, scope: !1845)
!1851 = !DILocation(line: 37, column: 1, scope: !1785)
!1852 = distinct !DISubprogram(name: "freopen_safer", scope: !623, file: !623, line: 54, type: !1853, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: false, unit: !622, variables: !113)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!1855, !52, !52, !1855}
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1790, line: 7, baseType: !1857)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1792, line: 245, size: 1728, elements: !1858)
!1858 = !{!1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1857, file: !1792, line: 246, baseType: !61, size: 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1857, file: !1792, line: 251, baseType: !60, size: 64, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1857, file: !1792, line: 252, baseType: !60, size: 64, offset: 128)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1857, file: !1792, line: 253, baseType: !60, size: 64, offset: 192)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1857, file: !1792, line: 254, baseType: !60, size: 64, offset: 256)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1857, file: !1792, line: 255, baseType: !60, size: 64, offset: 320)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1857, file: !1792, line: 256, baseType: !60, size: 64, offset: 384)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1857, file: !1792, line: 257, baseType: !60, size: 64, offset: 448)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1857, file: !1792, line: 258, baseType: !60, size: 64, offset: 512)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1857, file: !1792, line: 260, baseType: !60, size: 64, offset: 576)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1857, file: !1792, line: 261, baseType: !60, size: 64, offset: 640)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1857, file: !1792, line: 262, baseType: !60, size: 64, offset: 704)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1857, file: !1792, line: 264, baseType: !1872, size: 64, offset: 768)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1792, line: 160, size: 192, elements: !1874)
!1874 = !{!1875, !1876, !1878}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1873, file: !1792, line: 161, baseType: !1872, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1873, file: !1792, line: 162, baseType: !1877, size: 64, offset: 64)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1873, file: !1792, line: 166, baseType: !61, size: 32, offset: 128)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1857, file: !1792, line: 266, baseType: !1877, size: 64, offset: 832)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1857, file: !1792, line: 268, baseType: !61, size: 32, offset: 896)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1857, file: !1792, line: 272, baseType: !61, size: 32, offset: 928)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1857, file: !1792, line: 274, baseType: !1770, size: 64, offset: 960)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1857, file: !1792, line: 278, baseType: !62, size: 16, offset: 1024)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1857, file: !1792, line: 279, baseType: !1820, size: 8, offset: 1040)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1857, file: !1792, line: 280, baseType: !1822, size: 8, offset: 1048)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1857, file: !1792, line: 284, baseType: !1826, size: 64, offset: 1088)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1857, file: !1792, line: 293, baseType: !1829, size: 64, offset: 1152)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1857, file: !1792, line: 301, baseType: !55, size: 64, offset: 1216)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1857, file: !1792, line: 302, baseType: !55, size: 64, offset: 1280)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1857, file: !1792, line: 303, baseType: !55, size: 64, offset: 1344)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1857, file: !1792, line: 304, baseType: !55, size: 64, offset: 1408)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1857, file: !1792, line: 306, baseType: !172, size: 64, offset: 1472)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1857, file: !1792, line: 307, baseType: !61, size: 32, offset: 1536)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1857, file: !1792, line: 309, baseType: !1837, size: 160, offset: 1568)
!1895 = !DILocalVariable(name: "name", arg: 1, scope: !1852, file: !623, line: 54, type: !52)
!1896 = !DILocation(line: 54, column: 28, scope: !1852)
!1897 = !DILocalVariable(name: "mode", arg: 2, scope: !1852, file: !623, line: 54, type: !52)
!1898 = !DILocation(line: 54, column: 46, scope: !1852)
!1899 = !DILocalVariable(name: "f", arg: 3, scope: !1852, file: !623, line: 54, type: !1855)
!1900 = !DILocation(line: 54, column: 58, scope: !1852)
!1901 = !DILocalVariable(name: "protect_in", scope: !1852, file: !623, line: 62, type: !74)
!1902 = !DILocation(line: 62, column: 8, scope: !1852)
!1903 = !DILocalVariable(name: "protect_out", scope: !1852, file: !623, line: 63, type: !74)
!1904 = !DILocation(line: 63, column: 8, scope: !1852)
!1905 = !DILocalVariable(name: "protect_err", scope: !1852, file: !623, line: 64, type: !74)
!1906 = !DILocation(line: 64, column: 8, scope: !1852)
!1907 = !DILocalVariable(name: "saved_errno", scope: !1852, file: !623, line: 65, type: !61)
!1908 = !DILocation(line: 65, column: 7, scope: !1852)
!1909 = !DILocation(line: 67, column: 19, scope: !1852)
!1910 = !DILocation(line: 67, column: 11, scope: !1852)
!1911 = !DILocation(line: 67, column: 3, scope: !1852)
!1912 = !DILocation(line: 70, column: 11, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !623, line: 70, column: 11)
!1914 = distinct !DILexicalBlock(scope: !1852, file: !623, line: 68, column: 5)
!1915 = !DILocation(line: 70, column: 47, scope: !1913)
!1916 = !DILocation(line: 70, column: 11, scope: !1914)
!1917 = !DILocation(line: 71, column: 21, scope: !1913)
!1918 = !DILocation(line: 71, column: 9, scope: !1913)
!1919 = !DILocation(line: 70, column: 50, scope: !1913)
!1920 = !DILocation(line: 74, column: 11, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1914, file: !623, line: 74, column: 11)
!1922 = !DILocation(line: 74, column: 47, scope: !1921)
!1923 = !DILocation(line: 74, column: 11, scope: !1914)
!1924 = !DILocation(line: 75, column: 21, scope: !1921)
!1925 = !DILocation(line: 75, column: 9, scope: !1921)
!1926 = !DILocation(line: 74, column: 50, scope: !1921)
!1927 = !DILocation(line: 78, column: 11, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1914, file: !623, line: 78, column: 11)
!1929 = !DILocation(line: 78, column: 45, scope: !1928)
!1930 = !DILocation(line: 78, column: 11, scope: !1914)
!1931 = !DILocation(line: 79, column: 20, scope: !1928)
!1932 = !DILocation(line: 79, column: 9, scope: !1928)
!1933 = !DILocation(line: 78, column: 48, scope: !1928)
!1934 = !DILocation(line: 83, column: 7, scope: !1914)
!1935 = !DILocation(line: 85, column: 7, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1852, file: !623, line: 85, column: 7)
!1937 = !DILocation(line: 85, column: 18, scope: !1936)
!1938 = !DILocation(line: 85, column: 22, scope: !1936)
!1939 = !DILocation(line: 85, column: 7, scope: !1852)
!1940 = !DILocation(line: 86, column: 7, scope: !1936)
!1941 = !DILocation(line: 86, column: 5, scope: !1936)
!1942 = !DILocation(line: 87, column: 12, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1936, file: !623, line: 87, column: 12)
!1944 = !DILocation(line: 87, column: 24, scope: !1943)
!1945 = !DILocation(line: 87, column: 28, scope: !1943)
!1946 = !DILocation(line: 87, column: 12, scope: !1936)
!1947 = !DILocation(line: 88, column: 7, scope: !1943)
!1948 = !DILocation(line: 88, column: 5, scope: !1943)
!1949 = !DILocation(line: 89, column: 12, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1943, file: !623, line: 89, column: 12)
!1951 = !DILocation(line: 89, column: 24, scope: !1950)
!1952 = !DILocation(line: 89, column: 28, scope: !1950)
!1953 = !DILocation(line: 89, column: 12, scope: !1943)
!1954 = !DILocation(line: 90, column: 7, scope: !1950)
!1955 = !DILocation(line: 90, column: 5, scope: !1950)
!1956 = !DILocation(line: 92, column: 18, scope: !1950)
!1957 = !DILocation(line: 92, column: 24, scope: !1950)
!1958 = !DILocation(line: 92, column: 30, scope: !1950)
!1959 = !DILocation(line: 92, column: 9, scope: !1950)
!1960 = !DILocation(line: 92, column: 7, scope: !1950)
!1961 = !DILocation(line: 93, column: 17, scope: !1852)
!1962 = !DILocation(line: 93, column: 15, scope: !1852)
!1963 = !DILocation(line: 94, column: 7, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1852, file: !623, line: 94, column: 7)
!1965 = !DILocation(line: 94, column: 7, scope: !1852)
!1966 = !DILocation(line: 95, column: 5, scope: !1964)
!1967 = !DILocation(line: 96, column: 7, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1852, file: !623, line: 96, column: 7)
!1969 = !DILocation(line: 96, column: 7, scope: !1852)
!1970 = !DILocation(line: 97, column: 5, scope: !1968)
!1971 = !DILocation(line: 98, column: 7, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1852, file: !623, line: 98, column: 7)
!1973 = !DILocation(line: 98, column: 7, scope: !1852)
!1974 = !DILocation(line: 99, column: 5, scope: !1972)
!1975 = !DILocation(line: 100, column: 8, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1852, file: !623, line: 100, column: 7)
!1977 = !DILocation(line: 100, column: 7, scope: !1852)
!1978 = !DILocation(line: 101, column: 13, scope: !1976)
!1979 = !DILocation(line: 101, column: 5, scope: !1976)
!1980 = !DILocation(line: 101, column: 11, scope: !1976)
!1981 = !DILocation(line: 102, column: 10, scope: !1852)
!1982 = !DILocation(line: 102, column: 3, scope: !1852)
!1983 = distinct !DISubprogram(name: "protect_fd", scope: !623, file: !623, line: 32, type: !1984, isLocal: true, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: false, unit: !622, variables: !113)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!74, !61}
!1986 = !DILocalVariable(name: "fd", arg: 1, scope: !1983, file: !623, line: 32, type: !61)
!1987 = !DILocation(line: 32, column: 17, scope: !1983)
!1988 = !DILocalVariable(name: "value", scope: !1983, file: !623, line: 34, type: !61)
!1989 = !DILocation(line: 34, column: 7, scope: !1983)
!1990 = !DILocation(line: 34, column: 15, scope: !1983)
!1991 = !DILocation(line: 35, column: 7, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1983, file: !623, line: 35, column: 7)
!1993 = !DILocation(line: 35, column: 16, scope: !1992)
!1994 = !DILocation(line: 35, column: 13, scope: !1992)
!1995 = !DILocation(line: 35, column: 7, scope: !1983)
!1996 = !DILocation(line: 37, column: 16, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !623, line: 37, column: 11)
!1998 = distinct !DILexicalBlock(scope: !1992, file: !623, line: 36, column: 5)
!1999 = !DILocation(line: 37, column: 13, scope: !1997)
!2000 = !DILocation(line: 37, column: 11, scope: !1998)
!2001 = !DILocation(line: 39, column: 18, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1997, file: !623, line: 38, column: 9)
!2003 = !DILocation(line: 39, column: 11, scope: !2002)
!2004 = !DILocation(line: 40, column: 11, scope: !2002)
!2005 = !DILocation(line: 40, column: 17, scope: !2002)
!2006 = !DILocation(line: 41, column: 9, scope: !2002)
!2007 = !DILocation(line: 42, column: 7, scope: !1998)
!2008 = !DILocation(line: 44, column: 3, scope: !1983)
!2009 = !DILocation(line: 45, column: 1, scope: !1983)
!2010 = distinct !DISubprogram(name: "hard_locale", scope: !625, file: !625, line: 38, type: !1984, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: false, unit: !624, variables: !113)
!2011 = !DILocalVariable(name: "category", arg: 1, scope: !2010, file: !625, line: 38, type: !61)
!2012 = !DILocation(line: 38, column: 18, scope: !2010)
!2013 = !DILocalVariable(name: "hard", scope: !2010, file: !625, line: 40, type: !74)
!2014 = !DILocation(line: 40, column: 8, scope: !2010)
!2015 = !DILocalVariable(name: "p", scope: !2010, file: !625, line: 41, type: !52)
!2016 = !DILocation(line: 41, column: 15, scope: !2010)
!2017 = !DILocation(line: 41, column: 30, scope: !2010)
!2018 = !DILocation(line: 41, column: 19, scope: !2010)
!2019 = !DILocation(line: 43, column: 7, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2010, file: !625, line: 43, column: 7)
!2021 = !DILocation(line: 43, column: 7, scope: !2010)
!2022 = !DILocation(line: 47, column: 23, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !625, line: 47, column: 15)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !625, line: 46, column: 9)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !625, line: 45, column: 11)
!2026 = distinct !DILexicalBlock(scope: !2020, file: !625, line: 44, column: 5)
!2027 = !DILocation(line: 47, column: 15, scope: !2023)
!2028 = !DILocation(line: 47, column: 31, scope: !2023)
!2029 = !DILocation(line: 47, column: 36, scope: !2023)
!2030 = !DILocation(line: 47, column: 47, scope: !2023)
!2031 = !DILocation(line: 47, column: 39, scope: !2023)
!2032 = !DILocation(line: 47, column: 59, scope: !2023)
!2033 = !DILocation(line: 47, column: 15, scope: !2024)
!2034 = !DILocation(line: 48, column: 18, scope: !2023)
!2035 = !DILocation(line: 48, column: 13, scope: !2023)
!2036 = !DILocation(line: 69, column: 5, scope: !2026)
!2037 = !DILocation(line: 71, column: 10, scope: !2010)
!2038 = !DILocation(line: 71, column: 3, scope: !2010)
!2039 = distinct !DISubprogram(name: "initbuffer", scope: !627, file: !627, line: 37, type: !2040, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: false, unit: !626, variables: !113)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{null, !2042}
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !2044, line: 26, size: 192, elements: !2045)
!2044 = !DIFile(filename: "../../lib/linebuffer.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!2045 = !{!2046, !2047, !2048}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2043, file: !2044, line: 28, baseType: !172, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2043, file: !2044, line: 29, baseType: !172, size: 64, offset: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2043, file: !2044, line: 30, baseType: !60, size: 64, offset: 128)
!2049 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2039, file: !627, line: 37, type: !2042)
!2050 = !DILocation(line: 37, column: 32, scope: !2039)
!2051 = !DILocation(line: 39, column: 11, scope: !2039)
!2052 = !DILocation(line: 39, column: 3, scope: !2039)
!2053 = !DILocation(line: 40, column: 1, scope: !2039)
!2054 = distinct !DISubprogram(name: "readlinebuffer", scope: !627, file: !627, line: 43, type: !2055, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: false, unit: !626, variables: !113)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!2042, !2042, !2057}
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1790, line: 7, baseType: !2059)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1792, line: 245, size: 1728, elements: !2060)
!2060 = !{!2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2059, file: !1792, line: 246, baseType: !61, size: 32)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2059, file: !1792, line: 251, baseType: !60, size: 64, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2059, file: !1792, line: 252, baseType: !60, size: 64, offset: 128)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2059, file: !1792, line: 253, baseType: !60, size: 64, offset: 192)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2059, file: !1792, line: 254, baseType: !60, size: 64, offset: 256)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2059, file: !1792, line: 255, baseType: !60, size: 64, offset: 320)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2059, file: !1792, line: 256, baseType: !60, size: 64, offset: 384)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2059, file: !1792, line: 257, baseType: !60, size: 64, offset: 448)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2059, file: !1792, line: 258, baseType: !60, size: 64, offset: 512)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2059, file: !1792, line: 260, baseType: !60, size: 64, offset: 576)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2059, file: !1792, line: 261, baseType: !60, size: 64, offset: 640)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2059, file: !1792, line: 262, baseType: !60, size: 64, offset: 704)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2059, file: !1792, line: 264, baseType: !2074, size: 64, offset: 768)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1792, line: 160, size: 192, elements: !2076)
!2076 = !{!2077, !2078, !2080}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2075, file: !1792, line: 161, baseType: !2074, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2075, file: !1792, line: 162, baseType: !2079, size: 64, offset: 64)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2075, file: !1792, line: 166, baseType: !61, size: 32, offset: 128)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2059, file: !1792, line: 266, baseType: !2079, size: 64, offset: 832)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2059, file: !1792, line: 268, baseType: !61, size: 32, offset: 896)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2059, file: !1792, line: 272, baseType: !61, size: 32, offset: 928)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2059, file: !1792, line: 274, baseType: !1770, size: 64, offset: 960)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2059, file: !1792, line: 278, baseType: !62, size: 16, offset: 1024)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2059, file: !1792, line: 279, baseType: !1820, size: 8, offset: 1040)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2059, file: !1792, line: 280, baseType: !1822, size: 8, offset: 1048)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2059, file: !1792, line: 284, baseType: !1826, size: 64, offset: 1088)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2059, file: !1792, line: 293, baseType: !1829, size: 64, offset: 1152)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2059, file: !1792, line: 301, baseType: !55, size: 64, offset: 1216)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2059, file: !1792, line: 302, baseType: !55, size: 64, offset: 1280)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2059, file: !1792, line: 303, baseType: !55, size: 64, offset: 1344)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2059, file: !1792, line: 304, baseType: !55, size: 64, offset: 1408)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2059, file: !1792, line: 306, baseType: !172, size: 64, offset: 1472)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2059, file: !1792, line: 307, baseType: !61, size: 32, offset: 1536)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2059, file: !1792, line: 309, baseType: !1837, size: 160, offset: 1568)
!2097 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2054, file: !627, line: 43, type: !2042)
!2098 = !DILocation(line: 43, column: 36, scope: !2054)
!2099 = !DILocalVariable(name: "stream", arg: 2, scope: !2054, file: !627, line: 43, type: !2057)
!2100 = !DILocation(line: 43, column: 54, scope: !2054)
!2101 = !DILocation(line: 45, column: 32, scope: !2054)
!2102 = !DILocation(line: 45, column: 44, scope: !2054)
!2103 = !DILocation(line: 45, column: 10, scope: !2054)
!2104 = !DILocation(line: 45, column: 3, scope: !2054)
!2105 = distinct !DISubprogram(name: "readlinebuffer_delim", scope: !627, file: !627, line: 59, type: !2106, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: false, unit: !626, variables: !113)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!2042, !2042, !2057, !54}
!2108 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2105, file: !627, line: 59, type: !2042)
!2109 = !DILocation(line: 59, column: 42, scope: !2105)
!2110 = !DILocalVariable(name: "stream", arg: 2, scope: !2105, file: !627, line: 59, type: !2057)
!2111 = !DILocation(line: 59, column: 60, scope: !2105)
!2112 = !DILocalVariable(name: "delimiter", arg: 3, scope: !2105, file: !627, line: 60, type: !54)
!2113 = !DILocation(line: 60, column: 28, scope: !2105)
!2114 = !DILocalVariable(name: "c", scope: !2105, file: !627, line: 62, type: !61)
!2115 = !DILocation(line: 62, column: 7, scope: !2105)
!2116 = !DILocalVariable(name: "buffer", scope: !2105, file: !627, line: 63, type: !60)
!2117 = !DILocation(line: 63, column: 9, scope: !2105)
!2118 = !DILocation(line: 63, column: 18, scope: !2105)
!2119 = !DILocation(line: 63, column: 30, scope: !2105)
!2120 = !DILocalVariable(name: "p", scope: !2105, file: !627, line: 64, type: !60)
!2121 = !DILocation(line: 64, column: 9, scope: !2105)
!2122 = !DILocation(line: 64, column: 13, scope: !2105)
!2123 = !DILocation(line: 64, column: 25, scope: !2105)
!2124 = !DILocalVariable(name: "end", scope: !2105, file: !627, line: 65, type: !60)
!2125 = !DILocation(line: 65, column: 9, scope: !2105)
!2126 = !DILocation(line: 65, column: 15, scope: !2105)
!2127 = !DILocation(line: 65, column: 24, scope: !2105)
!2128 = !DILocation(line: 65, column: 36, scope: !2105)
!2129 = !DILocation(line: 65, column: 22, scope: !2105)
!2130 = !DILocation(line: 67, column: 7, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2105, file: !627, line: 67, column: 7)
!2132 = !DILocation(line: 67, column: 7, scope: !2105)
!2133 = !DILocation(line: 68, column: 5, scope: !2131)
!2134 = !DILocation(line: 70, column: 3, scope: !2105)
!2135 = distinct !{!2135, !2134, !2136}
!2136 = !DILocation(line: 91, column: 24, scope: !2105)
!2137 = !DILocation(line: 72, column: 11, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2105, file: !627, line: 71, column: 5)
!2139 = !DILocation(line: 72, column: 9, scope: !2138)
!2140 = !DILocation(line: 73, column: 11, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2138, file: !627, line: 73, column: 11)
!2142 = !DILocation(line: 73, column: 13, scope: !2141)
!2143 = !DILocation(line: 73, column: 11, scope: !2138)
!2144 = !DILocation(line: 75, column: 15, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !627, line: 75, column: 15)
!2146 = distinct !DILexicalBlock(scope: !2141, file: !627, line: 74, column: 9)
!2147 = !DILocation(line: 75, column: 20, scope: !2145)
!2148 = !DILocation(line: 75, column: 17, scope: !2145)
!2149 = !DILocation(line: 75, column: 27, scope: !2145)
!2150 = !DILocation(line: 75, column: 30, scope: !2145)
!2151 = !DILocation(line: 75, column: 15, scope: !2146)
!2152 = !DILocation(line: 76, column: 13, scope: !2145)
!2153 = !DILocation(line: 77, column: 15, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2146, file: !627, line: 77, column: 15)
!2155 = !DILocation(line: 77, column: 24, scope: !2154)
!2156 = !DILocation(line: 77, column: 21, scope: !2154)
!2157 = !DILocation(line: 77, column: 15, scope: !2146)
!2158 = !DILocation(line: 78, column: 13, scope: !2154)
!2159 = !DILocation(line: 79, column: 15, scope: !2146)
!2160 = !DILocation(line: 79, column: 13, scope: !2146)
!2161 = !DILocation(line: 80, column: 9, scope: !2146)
!2162 = !DILocation(line: 81, column: 11, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2138, file: !627, line: 81, column: 11)
!2164 = !DILocation(line: 81, column: 16, scope: !2163)
!2165 = !DILocation(line: 81, column: 13, scope: !2163)
!2166 = !DILocation(line: 81, column: 11, scope: !2138)
!2167 = !DILocalVariable(name: "oldsize", scope: !2168, file: !627, line: 83, type: !172)
!2168 = distinct !DILexicalBlock(scope: !2163, file: !627, line: 82, column: 9)
!2169 = !DILocation(line: 83, column: 18, scope: !2168)
!2170 = !DILocation(line: 83, column: 28, scope: !2168)
!2171 = !DILocation(line: 83, column: 40, scope: !2168)
!2172 = !DILocation(line: 84, column: 31, scope: !2168)
!2173 = !DILocation(line: 84, column: 40, scope: !2168)
!2174 = !DILocation(line: 84, column: 52, scope: !2168)
!2175 = !DILocation(line: 84, column: 20, scope: !2168)
!2176 = !DILocation(line: 84, column: 18, scope: !2168)
!2177 = !DILocation(line: 85, column: 15, scope: !2168)
!2178 = !DILocation(line: 85, column: 24, scope: !2168)
!2179 = !DILocation(line: 85, column: 22, scope: !2168)
!2180 = !DILocation(line: 85, column: 13, scope: !2168)
!2181 = !DILocation(line: 86, column: 32, scope: !2168)
!2182 = !DILocation(line: 86, column: 11, scope: !2168)
!2183 = !DILocation(line: 86, column: 23, scope: !2168)
!2184 = !DILocation(line: 86, column: 30, scope: !2168)
!2185 = !DILocation(line: 87, column: 17, scope: !2168)
!2186 = !DILocation(line: 87, column: 26, scope: !2168)
!2187 = !DILocation(line: 87, column: 38, scope: !2168)
!2188 = !DILocation(line: 87, column: 24, scope: !2168)
!2189 = !DILocation(line: 87, column: 15, scope: !2168)
!2190 = !DILocation(line: 88, column: 9, scope: !2168)
!2191 = !DILocation(line: 89, column: 14, scope: !2138)
!2192 = !DILocation(line: 89, column: 9, scope: !2138)
!2193 = !DILocation(line: 89, column: 12, scope: !2138)
!2194 = !DILocation(line: 90, column: 5, scope: !2138)
!2195 = !DILocation(line: 91, column: 10, scope: !2105)
!2196 = !DILocation(line: 91, column: 15, scope: !2105)
!2197 = !DILocation(line: 91, column: 12, scope: !2105)
!2198 = !DILocation(line: 93, column: 24, scope: !2105)
!2199 = !DILocation(line: 93, column: 28, scope: !2105)
!2200 = !DILocation(line: 93, column: 26, scope: !2105)
!2201 = !DILocation(line: 93, column: 3, scope: !2105)
!2202 = !DILocation(line: 93, column: 15, scope: !2105)
!2203 = !DILocation(line: 93, column: 22, scope: !2105)
!2204 = !DILocation(line: 94, column: 10, scope: !2105)
!2205 = !DILocation(line: 94, column: 3, scope: !2105)
!2206 = !DILocation(line: 95, column: 1, scope: !2105)
!2207 = distinct !DISubprogram(name: "freebuffer", scope: !627, file: !627, line: 100, type: !2040, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: false, unit: !626, variables: !113)
!2208 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2207, file: !627, line: 100, type: !2042)
!2209 = !DILocation(line: 100, column: 32, scope: !2207)
!2210 = !DILocation(line: 102, column: 9, scope: !2207)
!2211 = !DILocation(line: 102, column: 21, scope: !2207)
!2212 = !DILocation(line: 102, column: 3, scope: !2207)
!2213 = !DILocation(line: 103, column: 1, scope: !2207)
!2214 = distinct !DISubprogram(name: "memcasecmp", scope: !629, file: !629, line: 32, type: !2215, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: false, unit: !628, variables: !113)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!61, !2217, !2217, !172}
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2219 = !DILocalVariable(name: "vs1", arg: 1, scope: !2214, file: !629, line: 32, type: !2217)
!2220 = !DILocation(line: 32, column: 25, scope: !2214)
!2221 = !DILocalVariable(name: "vs2", arg: 2, scope: !2214, file: !629, line: 32, type: !2217)
!2222 = !DILocation(line: 32, column: 42, scope: !2214)
!2223 = !DILocalVariable(name: "n", arg: 3, scope: !2214, file: !629, line: 32, type: !172)
!2224 = !DILocation(line: 32, column: 54, scope: !2214)
!2225 = !DILocalVariable(name: "i", scope: !2214, file: !629, line: 34, type: !172)
!2226 = !DILocation(line: 34, column: 10, scope: !2214)
!2227 = !DILocalVariable(name: "s1", scope: !2214, file: !629, line: 35, type: !52)
!2228 = !DILocation(line: 35, column: 15, scope: !2214)
!2229 = !DILocation(line: 35, column: 20, scope: !2214)
!2230 = !DILocalVariable(name: "s2", scope: !2214, file: !629, line: 36, type: !52)
!2231 = !DILocation(line: 36, column: 15, scope: !2214)
!2232 = !DILocation(line: 36, column: 20, scope: !2214)
!2233 = !DILocation(line: 37, column: 10, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2214, file: !629, line: 37, column: 3)
!2235 = !DILocation(line: 37, column: 8, scope: !2234)
!2236 = !DILocation(line: 37, column: 15, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2234, file: !629, line: 37, column: 3)
!2238 = !DILocation(line: 37, column: 19, scope: !2237)
!2239 = !DILocation(line: 37, column: 17, scope: !2237)
!2240 = !DILocation(line: 37, column: 3, scope: !2234)
!2241 = !DILocalVariable(name: "u1", scope: !2242, file: !629, line: 39, type: !673)
!2242 = distinct !DILexicalBlock(scope: !2237, file: !629, line: 38, column: 5)
!2243 = !DILocation(line: 39, column: 21, scope: !2242)
!2244 = !DILocation(line: 39, column: 26, scope: !2242)
!2245 = !DILocation(line: 39, column: 29, scope: !2242)
!2246 = !DILocalVariable(name: "u2", scope: !2242, file: !629, line: 40, type: !673)
!2247 = !DILocation(line: 40, column: 21, scope: !2242)
!2248 = !DILocation(line: 40, column: 26, scope: !2242)
!2249 = !DILocation(line: 40, column: 29, scope: !2242)
!2250 = !DILocalVariable(name: "U1", scope: !2242, file: !629, line: 41, type: !61)
!2251 = !DILocation(line: 41, column: 11, scope: !2242)
!2252 = !DILocation(line: 41, column: 25, scope: !2242)
!2253 = !DILocation(line: 41, column: 16, scope: !2242)
!2254 = !DILocalVariable(name: "U2", scope: !2242, file: !629, line: 42, type: !61)
!2255 = !DILocation(line: 42, column: 11, scope: !2242)
!2256 = !DILocation(line: 42, column: 25, scope: !2242)
!2257 = !DILocation(line: 42, column: 16, scope: !2242)
!2258 = !DILocalVariable(name: "diff", scope: !2242, file: !629, line: 43, type: !61)
!2259 = !DILocation(line: 43, column: 11, scope: !2242)
!2260 = !DILocation(line: 43, column: 42, scope: !2242)
!2261 = !DILocation(line: 43, column: 47, scope: !2242)
!2262 = !DILocation(line: 43, column: 45, scope: !2242)
!2263 = !DILocation(line: 45, column: 11, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2242, file: !629, line: 45, column: 11)
!2265 = !DILocation(line: 45, column: 11, scope: !2242)
!2266 = !DILocation(line: 46, column: 16, scope: !2264)
!2267 = !DILocation(line: 46, column: 9, scope: !2264)
!2268 = !DILocation(line: 47, column: 5, scope: !2242)
!2269 = !DILocation(line: 37, column: 23, scope: !2237)
!2270 = !DILocation(line: 37, column: 3, scope: !2237)
!2271 = distinct !{!2271, !2240, !2272}
!2272 = !DILocation(line: 47, column: 5, scope: !2234)
!2273 = !DILocation(line: 48, column: 3, scope: !2214)
!2274 = !DILocation(line: 49, column: 1, scope: !2214)
!2275 = distinct !DISubprogram(name: "posix2_version", scope: !631, file: !631, line: 40, type: !2276, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: false, unit: !630, variables: !113)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!61}
!2278 = !DILocalVariable(name: "v", scope: !2275, file: !631, line: 42, type: !1394)
!2279 = !DILocation(line: 42, column: 12, scope: !2275)
!2280 = !DILocalVariable(name: "s", scope: !2275, file: !631, line: 43, type: !52)
!2281 = !DILocation(line: 43, column: 15, scope: !2275)
!2282 = !DILocation(line: 43, column: 19, scope: !2275)
!2283 = !DILocation(line: 45, column: 7, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2275, file: !631, line: 45, column: 7)
!2285 = !DILocation(line: 45, column: 9, scope: !2284)
!2286 = !DILocation(line: 45, column: 13, scope: !2284)
!2287 = !DILocation(line: 45, column: 12, scope: !2284)
!2288 = !DILocation(line: 45, column: 7, scope: !2275)
!2289 = !DILocalVariable(name: "e", scope: !2290, file: !631, line: 47, type: !60)
!2290 = distinct !DILexicalBlock(scope: !2284, file: !631, line: 46, column: 5)
!2291 = !DILocation(line: 47, column: 13, scope: !2290)
!2292 = !DILocalVariable(name: "i", scope: !2290, file: !631, line: 48, type: !1394)
!2293 = !DILocation(line: 48, column: 16, scope: !2290)
!2294 = !DILocation(line: 48, column: 28, scope: !2290)
!2295 = !DILocation(line: 48, column: 20, scope: !2290)
!2296 = !DILocation(line: 49, column: 14, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2290, file: !631, line: 49, column: 11)
!2298 = !DILocation(line: 49, column: 13, scope: !2297)
!2299 = !DILocation(line: 49, column: 11, scope: !2290)
!2300 = !DILocation(line: 50, column: 13, scope: !2297)
!2301 = !DILocation(line: 50, column: 11, scope: !2297)
!2302 = !DILocation(line: 50, column: 9, scope: !2297)
!2303 = !DILocation(line: 51, column: 5, scope: !2290)
!2304 = !DILocation(line: 53, column: 10, scope: !2275)
!2305 = !DILocation(line: 53, column: 12, scope: !2275)
!2306 = !DILocation(line: 53, column: 34, scope: !2275)
!2307 = !DILocation(line: 53, column: 36, scope: !2275)
!2308 = !DILocation(line: 53, column: 48, scope: !2275)
!2309 = !DILocation(line: 53, column: 3, scope: !2275)
!2310 = distinct !DISubprogram(name: "set_program_name", scope: !156, file: !156, line: 39, type: !1642, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: false, unit: !155, variables: !113)
!2311 = !DILocalVariable(name: "argv0", arg: 1, scope: !2310, file: !156, line: 39, type: !52)
!2312 = !DILocation(line: 39, column: 31, scope: !2310)
!2313 = !DILocalVariable(name: "slash", scope: !2310, file: !156, line: 46, type: !52)
!2314 = !DILocation(line: 46, column: 15, scope: !2310)
!2315 = !DILocalVariable(name: "base", scope: !2310, file: !156, line: 47, type: !52)
!2316 = !DILocation(line: 47, column: 15, scope: !2310)
!2317 = !DILocation(line: 51, column: 7, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2310, file: !156, line: 51, column: 7)
!2319 = !DILocation(line: 51, column: 13, scope: !2318)
!2320 = !DILocation(line: 51, column: 7, scope: !2310)
!2321 = !DILocation(line: 55, column: 14, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2318, file: !156, line: 52, column: 5)
!2323 = !DILocation(line: 54, column: 7, scope: !2322)
!2324 = !DILocation(line: 56, column: 7, scope: !2322)
!2325 = !DILocation(line: 59, column: 20, scope: !2310)
!2326 = !DILocation(line: 59, column: 11, scope: !2310)
!2327 = !DILocation(line: 59, column: 9, scope: !2310)
!2328 = !DILocation(line: 60, column: 11, scope: !2310)
!2329 = !DILocation(line: 60, column: 17, scope: !2310)
!2330 = !DILocation(line: 60, column: 27, scope: !2310)
!2331 = !DILocation(line: 60, column: 33, scope: !2310)
!2332 = !DILocation(line: 60, column: 39, scope: !2310)
!2333 = !DILocation(line: 60, column: 8, scope: !2310)
!2334 = !DILocation(line: 61, column: 7, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2310, file: !156, line: 61, column: 7)
!2336 = !DILocation(line: 61, column: 14, scope: !2335)
!2337 = !DILocation(line: 61, column: 12, scope: !2335)
!2338 = !DILocation(line: 61, column: 20, scope: !2335)
!2339 = !DILocation(line: 61, column: 25, scope: !2335)
!2340 = !DILocation(line: 61, column: 37, scope: !2335)
!2341 = !DILocation(line: 61, column: 42, scope: !2335)
!2342 = !DILocation(line: 61, column: 28, scope: !2335)
!2343 = !DILocation(line: 61, column: 61, scope: !2335)
!2344 = !DILocation(line: 61, column: 7, scope: !2310)
!2345 = !DILocation(line: 63, column: 15, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2335, file: !156, line: 62, column: 5)
!2347 = !DILocation(line: 63, column: 13, scope: !2346)
!2348 = !DILocation(line: 64, column: 20, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2346, file: !156, line: 64, column: 11)
!2350 = !DILocation(line: 64, column: 11, scope: !2349)
!2351 = !DILocation(line: 64, column: 36, scope: !2349)
!2352 = !DILocation(line: 64, column: 11, scope: !2346)
!2353 = !DILocation(line: 66, column: 19, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2349, file: !156, line: 65, column: 9)
!2355 = !DILocation(line: 66, column: 24, scope: !2354)
!2356 = !DILocation(line: 66, column: 17, scope: !2354)
!2357 = !DILocation(line: 70, column: 52, scope: !2354)
!2358 = !DILocation(line: 70, column: 41, scope: !2354)
!2359 = !DILocation(line: 72, column: 9, scope: !2354)
!2360 = !DILocation(line: 73, column: 5, scope: !2346)
!2361 = !DILocation(line: 84, column: 18, scope: !2310)
!2362 = !DILocation(line: 84, column: 16, scope: !2310)
!2363 = !DILocation(line: 90, column: 38, scope: !2310)
!2364 = !DILocation(line: 90, column: 27, scope: !2310)
!2365 = !DILocation(line: 92, column: 1, scope: !2310)
!2366 = distinct !DISubprogram(name: "clone_quoting_options", scope: !162, file: !162, line: 108, type: !2367, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!2369, !2369}
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!2370 = !DILocalVariable(name: "o", arg: 1, scope: !2366, file: !162, line: 108, type: !2369)
!2371 = !DILocation(line: 108, column: 48, scope: !2366)
!2372 = !DILocalVariable(name: "e", scope: !2366, file: !162, line: 110, type: !61)
!2373 = !DILocation(line: 110, column: 7, scope: !2366)
!2374 = !DILocation(line: 110, column: 11, scope: !2366)
!2375 = !DILocalVariable(name: "p", scope: !2366, file: !162, line: 111, type: !2369)
!2376 = !DILocation(line: 111, column: 27, scope: !2366)
!2377 = !DILocation(line: 111, column: 40, scope: !2366)
!2378 = !DILocation(line: 111, column: 44, scope: !2366)
!2379 = !DILocation(line: 111, column: 31, scope: !2366)
!2380 = !DILocation(line: 113, column: 11, scope: !2366)
!2381 = !DILocation(line: 113, column: 3, scope: !2366)
!2382 = !DILocation(line: 113, column: 9, scope: !2366)
!2383 = !DILocation(line: 114, column: 10, scope: !2366)
!2384 = !DILocation(line: 114, column: 3, scope: !2366)
!2385 = distinct !DISubprogram(name: "get_quoting_style", scope: !162, file: !162, line: 119, type: !2386, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!120, !2369}
!2388 = !DILocalVariable(name: "o", arg: 1, scope: !2385, file: !162, line: 119, type: !2369)
!2389 = !DILocation(line: 119, column: 44, scope: !2385)
!2390 = !DILocation(line: 121, column: 11, scope: !2385)
!2391 = !DILocation(line: 121, column: 15, scope: !2385)
!2392 = !DILocation(line: 121, column: 46, scope: !2385)
!2393 = !DILocation(line: 121, column: 3, scope: !2385)
!2394 = distinct !DISubprogram(name: "set_quoting_style", scope: !162, file: !162, line: 127, type: !2395, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{null, !2369, !120}
!2397 = !DILocalVariable(name: "o", arg: 1, scope: !2394, file: !162, line: 127, type: !2369)
!2398 = !DILocation(line: 127, column: 44, scope: !2394)
!2399 = !DILocalVariable(name: "s", arg: 2, scope: !2394, file: !162, line: 127, type: !120)
!2400 = !DILocation(line: 127, column: 66, scope: !2394)
!2401 = !DILocation(line: 129, column: 47, scope: !2394)
!2402 = !DILocation(line: 129, column: 4, scope: !2394)
!2403 = !DILocation(line: 129, column: 8, scope: !2394)
!2404 = !DILocation(line: 129, column: 39, scope: !2394)
!2405 = !DILocation(line: 129, column: 45, scope: !2394)
!2406 = !DILocation(line: 130, column: 1, scope: !2394)
!2407 = distinct !DISubprogram(name: "set_char_quoting", scope: !162, file: !162, line: 138, type: !2408, isLocal: false, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!61, !2369, !54, !61}
!2410 = !DILocalVariable(name: "o", arg: 1, scope: !2407, file: !162, line: 138, type: !2369)
!2411 = !DILocation(line: 138, column: 43, scope: !2407)
!2412 = !DILocalVariable(name: "c", arg: 2, scope: !2407, file: !162, line: 138, type: !54)
!2413 = !DILocation(line: 138, column: 51, scope: !2407)
!2414 = !DILocalVariable(name: "i", arg: 3, scope: !2407, file: !162, line: 138, type: !61)
!2415 = !DILocation(line: 138, column: 58, scope: !2407)
!2416 = !DILocalVariable(name: "uc", scope: !2407, file: !162, line: 140, type: !673)
!2417 = !DILocation(line: 140, column: 17, scope: !2407)
!2418 = !DILocation(line: 140, column: 22, scope: !2407)
!2419 = !DILocalVariable(name: "p", scope: !2407, file: !162, line: 141, type: !2420)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!2421 = !DILocation(line: 141, column: 17, scope: !2407)
!2422 = !DILocation(line: 142, column: 6, scope: !2407)
!2423 = !DILocation(line: 142, column: 10, scope: !2407)
!2424 = !DILocation(line: 142, column: 41, scope: !2407)
!2425 = !DILocation(line: 142, column: 5, scope: !2407)
!2426 = !DILocation(line: 142, column: 59, scope: !2407)
!2427 = !DILocation(line: 142, column: 62, scope: !2407)
!2428 = !DILocation(line: 142, column: 57, scope: !2407)
!2429 = !DILocalVariable(name: "shift", scope: !2407, file: !162, line: 143, type: !61)
!2430 = !DILocation(line: 143, column: 7, scope: !2407)
!2431 = !DILocation(line: 143, column: 15, scope: !2407)
!2432 = !DILocation(line: 143, column: 18, scope: !2407)
!2433 = !DILocalVariable(name: "r", scope: !2407, file: !162, line: 144, type: !61)
!2434 = !DILocation(line: 144, column: 7, scope: !2407)
!2435 = !DILocation(line: 144, column: 13, scope: !2407)
!2436 = !DILocation(line: 144, column: 12, scope: !2407)
!2437 = !DILocation(line: 144, column: 18, scope: !2407)
!2438 = !DILocation(line: 144, column: 15, scope: !2407)
!2439 = !DILocation(line: 144, column: 25, scope: !2407)
!2440 = !DILocation(line: 145, column: 11, scope: !2407)
!2441 = !DILocation(line: 145, column: 13, scope: !2407)
!2442 = !DILocation(line: 145, column: 20, scope: !2407)
!2443 = !DILocation(line: 145, column: 18, scope: !2407)
!2444 = !DILocation(line: 145, column: 26, scope: !2407)
!2445 = !DILocation(line: 145, column: 23, scope: !2407)
!2446 = !DILocation(line: 145, column: 4, scope: !2407)
!2447 = !DILocation(line: 145, column: 6, scope: !2407)
!2448 = !DILocation(line: 146, column: 10, scope: !2407)
!2449 = !DILocation(line: 146, column: 3, scope: !2407)
!2450 = distinct !DISubprogram(name: "set_quoting_flags", scope: !162, file: !162, line: 154, type: !2451, isLocal: false, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!61, !2369, !61}
!2453 = !DILocalVariable(name: "o", arg: 1, scope: !2450, file: !162, line: 154, type: !2369)
!2454 = !DILocation(line: 154, column: 44, scope: !2450)
!2455 = !DILocalVariable(name: "i", arg: 2, scope: !2450, file: !162, line: 154, type: !61)
!2456 = !DILocation(line: 154, column: 51, scope: !2450)
!2457 = !DILocalVariable(name: "r", scope: !2450, file: !162, line: 156, type: !61)
!2458 = !DILocation(line: 156, column: 7, scope: !2450)
!2459 = !DILocation(line: 157, column: 8, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2450, file: !162, line: 157, column: 7)
!2461 = !DILocation(line: 157, column: 7, scope: !2450)
!2462 = !DILocation(line: 158, column: 7, scope: !2460)
!2463 = !DILocation(line: 158, column: 5, scope: !2460)
!2464 = !DILocation(line: 159, column: 7, scope: !2450)
!2465 = !DILocation(line: 159, column: 10, scope: !2450)
!2466 = !DILocation(line: 159, column: 5, scope: !2450)
!2467 = !DILocation(line: 160, column: 14, scope: !2450)
!2468 = !DILocation(line: 160, column: 3, scope: !2450)
!2469 = !DILocation(line: 160, column: 6, scope: !2450)
!2470 = !DILocation(line: 160, column: 12, scope: !2450)
!2471 = !DILocation(line: 161, column: 10, scope: !2450)
!2472 = !DILocation(line: 161, column: 3, scope: !2450)
!2473 = distinct !DISubprogram(name: "set_custom_quoting", scope: !162, file: !162, line: 165, type: !2474, isLocal: false, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{null, !2369, !52, !52}
!2476 = !DILocalVariable(name: "o", arg: 1, scope: !2473, file: !162, line: 165, type: !2369)
!2477 = !DILocation(line: 165, column: 45, scope: !2473)
!2478 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2473, file: !162, line: 166, type: !52)
!2479 = !DILocation(line: 166, column: 33, scope: !2473)
!2480 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2473, file: !162, line: 166, type: !52)
!2481 = !DILocation(line: 166, column: 57, scope: !2473)
!2482 = !DILocation(line: 168, column: 8, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2473, file: !162, line: 168, column: 7)
!2484 = !DILocation(line: 168, column: 7, scope: !2473)
!2485 = !DILocation(line: 169, column: 7, scope: !2483)
!2486 = !DILocation(line: 169, column: 5, scope: !2483)
!2487 = !DILocation(line: 170, column: 3, scope: !2473)
!2488 = !DILocation(line: 170, column: 6, scope: !2473)
!2489 = !DILocation(line: 170, column: 12, scope: !2473)
!2490 = !DILocation(line: 171, column: 8, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2473, file: !162, line: 171, column: 7)
!2492 = !DILocation(line: 171, column: 19, scope: !2491)
!2493 = !DILocation(line: 171, column: 23, scope: !2491)
!2494 = !DILocation(line: 171, column: 7, scope: !2473)
!2495 = !DILocation(line: 172, column: 5, scope: !2491)
!2496 = !DILocation(line: 173, column: 19, scope: !2473)
!2497 = !DILocation(line: 173, column: 3, scope: !2473)
!2498 = !DILocation(line: 173, column: 6, scope: !2473)
!2499 = !DILocation(line: 173, column: 17, scope: !2473)
!2500 = !DILocation(line: 174, column: 20, scope: !2473)
!2501 = !DILocation(line: 174, column: 3, scope: !2473)
!2502 = !DILocation(line: 174, column: 6, scope: !2473)
!2503 = !DILocation(line: 174, column: 18, scope: !2473)
!2504 = !DILocation(line: 175, column: 1, scope: !2473)
!2505 = distinct !DISubprogram(name: "quotearg_buffer", scope: !162, file: !162, line: 668, type: !2506, isLocal: false, isDefinition: true, scopeLine: 671, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!172, !60, !172, !52, !172, !2508}
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!2510 = !DILocalVariable(name: "buffer", arg: 1, scope: !2505, file: !162, line: 668, type: !60)
!2511 = !DILocation(line: 668, column: 24, scope: !2505)
!2512 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2505, file: !162, line: 668, type: !172)
!2513 = !DILocation(line: 668, column: 39, scope: !2505)
!2514 = !DILocalVariable(name: "arg", arg: 3, scope: !2505, file: !162, line: 669, type: !52)
!2515 = !DILocation(line: 669, column: 30, scope: !2505)
!2516 = !DILocalVariable(name: "argsize", arg: 4, scope: !2505, file: !162, line: 669, type: !172)
!2517 = !DILocation(line: 669, column: 42, scope: !2505)
!2518 = !DILocalVariable(name: "o", arg: 5, scope: !2505, file: !162, line: 670, type: !2508)
!2519 = !DILocation(line: 670, column: 48, scope: !2505)
!2520 = !DILocalVariable(name: "p", scope: !2505, file: !162, line: 672, type: !2508)
!2521 = !DILocation(line: 672, column: 33, scope: !2505)
!2522 = !DILocation(line: 672, column: 37, scope: !2505)
!2523 = !DILocation(line: 672, column: 41, scope: !2505)
!2524 = !DILocalVariable(name: "e", scope: !2505, file: !162, line: 673, type: !61)
!2525 = !DILocation(line: 673, column: 7, scope: !2505)
!2526 = !DILocation(line: 673, column: 11, scope: !2505)
!2527 = !DILocalVariable(name: "r", scope: !2505, file: !162, line: 674, type: !172)
!2528 = !DILocation(line: 674, column: 10, scope: !2505)
!2529 = !DILocation(line: 674, column: 40, scope: !2505)
!2530 = !DILocation(line: 674, column: 48, scope: !2505)
!2531 = !DILocation(line: 674, column: 60, scope: !2505)
!2532 = !DILocation(line: 674, column: 65, scope: !2505)
!2533 = !DILocation(line: 675, column: 40, scope: !2505)
!2534 = !DILocation(line: 675, column: 43, scope: !2505)
!2535 = !DILocation(line: 675, column: 50, scope: !2505)
!2536 = !DILocation(line: 675, column: 53, scope: !2505)
!2537 = !DILocation(line: 675, column: 60, scope: !2505)
!2538 = !DILocation(line: 675, column: 63, scope: !2505)
!2539 = !DILocation(line: 676, column: 40, scope: !2505)
!2540 = !DILocation(line: 676, column: 43, scope: !2505)
!2541 = !DILocation(line: 676, column: 55, scope: !2505)
!2542 = !DILocation(line: 676, column: 58, scope: !2505)
!2543 = !DILocation(line: 674, column: 14, scope: !2505)
!2544 = !DILocation(line: 677, column: 11, scope: !2505)
!2545 = !DILocation(line: 677, column: 3, scope: !2505)
!2546 = !DILocation(line: 677, column: 9, scope: !2505)
!2547 = !DILocation(line: 678, column: 10, scope: !2505)
!2548 = !DILocation(line: 678, column: 3, scope: !2505)
!2549 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !162, file: !162, line: 242, type: !2550, isLocal: true, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!172, !60, !172, !52, !172, !120, !61, !2552, !52, !52}
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!2554 = !DILocalVariable(name: "buffer", arg: 1, scope: !2549, file: !162, line: 242, type: !60)
!2555 = !DILocation(line: 242, column: 33, scope: !2549)
!2556 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2549, file: !162, line: 242, type: !172)
!2557 = !DILocation(line: 242, column: 48, scope: !2549)
!2558 = !DILocalVariable(name: "arg", arg: 3, scope: !2549, file: !162, line: 243, type: !52)
!2559 = !DILocation(line: 243, column: 39, scope: !2549)
!2560 = !DILocalVariable(name: "argsize", arg: 4, scope: !2549, file: !162, line: 243, type: !172)
!2561 = !DILocation(line: 243, column: 51, scope: !2549)
!2562 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2549, file: !162, line: 244, type: !120)
!2563 = !DILocation(line: 244, column: 46, scope: !2549)
!2564 = !DILocalVariable(name: "flags", arg: 6, scope: !2549, file: !162, line: 244, type: !61)
!2565 = !DILocation(line: 244, column: 65, scope: !2549)
!2566 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2549, file: !162, line: 245, type: !2552)
!2567 = !DILocation(line: 245, column: 47, scope: !2549)
!2568 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2549, file: !162, line: 246, type: !52)
!2569 = !DILocation(line: 246, column: 39, scope: !2549)
!2570 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2549, file: !162, line: 247, type: !52)
!2571 = !DILocation(line: 247, column: 39, scope: !2549)
!2572 = !DILocalVariable(name: "i", scope: !2549, file: !162, line: 249, type: !172)
!2573 = !DILocation(line: 249, column: 10, scope: !2549)
!2574 = !DILocalVariable(name: "len", scope: !2549, file: !162, line: 250, type: !172)
!2575 = !DILocation(line: 250, column: 10, scope: !2549)
!2576 = !DILocalVariable(name: "quote_string", scope: !2549, file: !162, line: 251, type: !52)
!2577 = !DILocation(line: 251, column: 15, scope: !2549)
!2578 = !DILocalVariable(name: "quote_string_len", scope: !2549, file: !162, line: 252, type: !172)
!2579 = !DILocation(line: 252, column: 10, scope: !2549)
!2580 = !DILocalVariable(name: "backslash_escapes", scope: !2549, file: !162, line: 253, type: !74)
!2581 = !DILocation(line: 253, column: 8, scope: !2549)
!2582 = !DILocalVariable(name: "unibyte_locale", scope: !2549, file: !162, line: 254, type: !74)
!2583 = !DILocation(line: 254, column: 8, scope: !2549)
!2584 = !DILocation(line: 254, column: 25, scope: !2549)
!2585 = !DILocation(line: 254, column: 36, scope: !2549)
!2586 = !DILocalVariable(name: "elide_outer_quotes", scope: !2549, file: !162, line: 255, type: !74)
!2587 = !DILocation(line: 255, column: 8, scope: !2549)
!2588 = !DILocation(line: 255, column: 30, scope: !2549)
!2589 = !DILocation(line: 255, column: 36, scope: !2549)
!2590 = !DILocation(line: 255, column: 61, scope: !2549)
!2591 = !DILocation(line: 266, column: 11, scope: !2549)
!2592 = !DILocation(line: 266, column: 3, scope: !2549)
!2593 = !DILocation(line: 269, column: 21, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2549, file: !162, line: 267, column: 5)
!2595 = !DILocation(line: 270, column: 26, scope: !2594)
!2596 = !DILocation(line: 270, column: 7, scope: !2594)
!2597 = !DILocation(line: 273, column: 12, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2594, file: !162, line: 273, column: 11)
!2599 = !DILocation(line: 273, column: 11, scope: !2594)
!2600 = !DILocation(line: 274, column: 9, scope: !2598)
!2601 = distinct !{!2601, !2600, !2600}
!2602 = !DILocation(line: 274, column: 9, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2604, file: !162, line: 274, column: 9)
!2604 = distinct !DILexicalBlock(scope: !2598, file: !162, line: 274, column: 9)
!2605 = !DILocation(line: 274, column: 9, scope: !2604)
!2606 = !DILocation(line: 275, column: 25, scope: !2594)
!2607 = !DILocation(line: 276, column: 20, scope: !2594)
!2608 = !DILocation(line: 277, column: 24, scope: !2594)
!2609 = !DILocation(line: 278, column: 7, scope: !2594)
!2610 = !DILocation(line: 281, column: 25, scope: !2594)
!2611 = !DILocation(line: 282, column: 26, scope: !2594)
!2612 = !DILocation(line: 283, column: 7, scope: !2594)
!2613 = !DILocation(line: 289, column: 13, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2615, file: !162, line: 289, column: 13)
!2615 = distinct !DILexicalBlock(scope: !2594, file: !162, line: 288, column: 7)
!2616 = !DILocation(line: 289, column: 27, scope: !2614)
!2617 = !DILocation(line: 289, column: 13, scope: !2615)
!2618 = !DILocation(line: 312, column: 50, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2614, file: !162, line: 290, column: 11)
!2620 = !DILocation(line: 312, column: 26, scope: !2619)
!2621 = !DILocation(line: 312, column: 24, scope: !2619)
!2622 = !DILocation(line: 313, column: 51, scope: !2619)
!2623 = !DILocation(line: 313, column: 27, scope: !2619)
!2624 = !DILocation(line: 313, column: 25, scope: !2619)
!2625 = !DILocation(line: 314, column: 11, scope: !2619)
!2626 = !DILocation(line: 315, column: 14, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2615, file: !162, line: 315, column: 13)
!2628 = !DILocation(line: 315, column: 13, scope: !2615)
!2629 = !DILocation(line: 316, column: 31, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2627, file: !162, line: 316, column: 11)
!2631 = !DILocation(line: 316, column: 29, scope: !2630)
!2632 = !DILocation(line: 316, column: 16, scope: !2630)
!2633 = !DILocation(line: 316, column: 44, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2630, file: !162, line: 316, column: 11)
!2635 = !DILocation(line: 316, column: 43, scope: !2634)
!2636 = !DILocation(line: 316, column: 11, scope: !2630)
!2637 = !DILocation(line: 317, column: 13, scope: !2634)
!2638 = distinct !{!2638, !2637, !2637}
!2639 = !DILocation(line: 317, column: 13, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2641, file: !162, line: 317, column: 13)
!2641 = distinct !DILexicalBlock(scope: !2634, file: !162, line: 317, column: 13)
!2642 = !DILocation(line: 317, column: 13, scope: !2641)
!2643 = !DILocation(line: 316, column: 70, scope: !2634)
!2644 = !DILocation(line: 316, column: 11, scope: !2634)
!2645 = distinct !{!2645, !2636, !2646}
!2646 = !DILocation(line: 317, column: 13, scope: !2630)
!2647 = !DILocation(line: 318, column: 27, scope: !2615)
!2648 = !DILocation(line: 319, column: 24, scope: !2615)
!2649 = !DILocation(line: 319, column: 22, scope: !2615)
!2650 = !DILocation(line: 320, column: 36, scope: !2615)
!2651 = !DILocation(line: 320, column: 28, scope: !2615)
!2652 = !DILocation(line: 320, column: 26, scope: !2615)
!2653 = !DILocation(line: 322, column: 7, scope: !2594)
!2654 = !DILocation(line: 325, column: 21, scope: !2594)
!2655 = !DILocation(line: 326, column: 26, scope: !2594)
!2656 = !DILocation(line: 326, column: 7, scope: !2594)
!2657 = !DILocation(line: 329, column: 12, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2594, file: !162, line: 329, column: 11)
!2659 = !DILocation(line: 329, column: 11, scope: !2594)
!2660 = !DILocation(line: 330, column: 9, scope: !2658)
!2661 = distinct !{!2661, !2660, !2660}
!2662 = !DILocation(line: 330, column: 9, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !162, line: 330, column: 9)
!2664 = distinct !DILexicalBlock(scope: !2658, file: !162, line: 330, column: 9)
!2665 = !DILocation(line: 330, column: 9, scope: !2664)
!2666 = !DILocation(line: 331, column: 20, scope: !2594)
!2667 = !DILocation(line: 332, column: 24, scope: !2594)
!2668 = !DILocation(line: 333, column: 7, scope: !2594)
!2669 = !DILocation(line: 336, column: 26, scope: !2594)
!2670 = !DILocation(line: 337, column: 7, scope: !2594)
!2671 = !DILocation(line: 340, column: 7, scope: !2594)
!2672 = !DILocation(line: 343, column: 10, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2549, file: !162, line: 343, column: 3)
!2674 = !DILocation(line: 343, column: 8, scope: !2673)
!2675 = !DILocation(line: 343, column: 19, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2673, file: !162, line: 343, column: 3)
!2677 = !DILocation(line: 343, column: 27, scope: !2676)
!2678 = !DILocation(line: 343, column: 41, scope: !2676)
!2679 = !DILocation(line: 343, column: 45, scope: !2676)
!2680 = !DILocation(line: 343, column: 48, scope: !2676)
!2681 = !DILocation(line: 343, column: 58, scope: !2676)
!2682 = !DILocation(line: 343, column: 63, scope: !2676)
!2683 = !DILocation(line: 343, column: 60, scope: !2676)
!2684 = !DILocation(line: 343, column: 16, scope: !2676)
!2685 = !DILocation(line: 343, column: 3, scope: !2673)
!2686 = !DILocalVariable(name: "c", scope: !2687, file: !162, line: 345, type: !673)
!2687 = distinct !DILexicalBlock(scope: !2676, file: !162, line: 344, column: 5)
!2688 = !DILocation(line: 345, column: 21, scope: !2687)
!2689 = !DILocalVariable(name: "esc", scope: !2687, file: !162, line: 346, type: !673)
!2690 = !DILocation(line: 346, column: 21, scope: !2687)
!2691 = !DILocalVariable(name: "is_right_quote", scope: !2687, file: !162, line: 347, type: !74)
!2692 = !DILocation(line: 347, column: 12, scope: !2687)
!2693 = !DILocation(line: 349, column: 11, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2687, file: !162, line: 349, column: 11)
!2695 = !DILocation(line: 350, column: 11, scope: !2694)
!2696 = !DILocation(line: 350, column: 14, scope: !2694)
!2697 = !DILocation(line: 351, column: 11, scope: !2694)
!2698 = !DILocation(line: 351, column: 14, scope: !2694)
!2699 = !DILocation(line: 351, column: 18, scope: !2694)
!2700 = !DILocation(line: 351, column: 16, scope: !2694)
!2701 = !DILocation(line: 351, column: 38, scope: !2694)
!2702 = !DILocation(line: 351, column: 35, scope: !2694)
!2703 = !DILocation(line: 352, column: 11, scope: !2694)
!2704 = !DILocation(line: 352, column: 22, scope: !2694)
!2705 = !DILocation(line: 352, column: 28, scope: !2694)
!2706 = !DILocation(line: 352, column: 26, scope: !2694)
!2707 = !DILocation(line: 352, column: 31, scope: !2694)
!2708 = !DILocation(line: 352, column: 45, scope: !2694)
!2709 = !DILocation(line: 352, column: 14, scope: !2694)
!2710 = !DILocation(line: 352, column: 63, scope: !2694)
!2711 = !DILocation(line: 349, column: 11, scope: !2687)
!2712 = !DILocation(line: 354, column: 15, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2714, file: !162, line: 354, column: 15)
!2714 = distinct !DILexicalBlock(scope: !2694, file: !162, line: 353, column: 9)
!2715 = !DILocation(line: 354, column: 15, scope: !2714)
!2716 = !DILocation(line: 355, column: 13, scope: !2713)
!2717 = !DILocation(line: 356, column: 26, scope: !2714)
!2718 = !DILocation(line: 357, column: 9, scope: !2714)
!2719 = !DILocation(line: 359, column: 11, scope: !2687)
!2720 = !DILocation(line: 359, column: 15, scope: !2687)
!2721 = !DILocation(line: 359, column: 9, scope: !2687)
!2722 = !DILocation(line: 360, column: 15, scope: !2687)
!2723 = !DILocation(line: 360, column: 7, scope: !2687)
!2724 = !DILocation(line: 363, column: 15, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !162, line: 363, column: 15)
!2726 = distinct !DILexicalBlock(scope: !2687, file: !162, line: 361, column: 9)
!2727 = !DILocation(line: 363, column: 15, scope: !2726)
!2728 = !DILocation(line: 365, column: 19, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2730, file: !162, line: 365, column: 19)
!2730 = distinct !DILexicalBlock(scope: !2725, file: !162, line: 364, column: 13)
!2731 = !DILocation(line: 365, column: 19, scope: !2730)
!2732 = !DILocation(line: 366, column: 17, scope: !2729)
!2733 = !DILocation(line: 367, column: 15, scope: !2730)
!2734 = distinct !{!2734, !2733, !2733}
!2735 = !DILocation(line: 367, column: 15, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2737, file: !162, line: 367, column: 15)
!2737 = distinct !DILexicalBlock(scope: !2730, file: !162, line: 367, column: 15)
!2738 = !DILocation(line: 367, column: 15, scope: !2737)
!2739 = !DILocation(line: 373, column: 19, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2730, file: !162, line: 373, column: 19)
!2741 = !DILocation(line: 373, column: 21, scope: !2740)
!2742 = !DILocation(line: 373, column: 27, scope: !2740)
!2743 = !DILocation(line: 373, column: 25, scope: !2740)
!2744 = !DILocation(line: 373, column: 35, scope: !2740)
!2745 = !DILocation(line: 373, column: 45, scope: !2740)
!2746 = !DILocation(line: 373, column: 49, scope: !2740)
!2747 = !DILocation(line: 373, column: 51, scope: !2740)
!2748 = !DILocation(line: 373, column: 42, scope: !2740)
!2749 = !DILocation(line: 373, column: 56, scope: !2740)
!2750 = !DILocation(line: 373, column: 59, scope: !2740)
!2751 = !DILocation(line: 373, column: 63, scope: !2740)
!2752 = !DILocation(line: 373, column: 65, scope: !2740)
!2753 = !DILocation(line: 373, column: 70, scope: !2740)
!2754 = !DILocation(line: 373, column: 19, scope: !2730)
!2755 = !DILocation(line: 375, column: 19, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2740, file: !162, line: 374, column: 17)
!2757 = distinct !{!2757, !2755, !2755}
!2758 = !DILocation(line: 375, column: 19, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2760, file: !162, line: 375, column: 19)
!2760 = distinct !DILexicalBlock(scope: !2756, file: !162, line: 375, column: 19)
!2761 = !DILocation(line: 375, column: 19, scope: !2760)
!2762 = !DILocation(line: 376, column: 19, scope: !2756)
!2763 = distinct !{!2763, !2762, !2762}
!2764 = !DILocation(line: 376, column: 19, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2766, file: !162, line: 376, column: 19)
!2766 = distinct !DILexicalBlock(scope: !2756, file: !162, line: 376, column: 19)
!2767 = !DILocation(line: 376, column: 19, scope: !2766)
!2768 = !DILocation(line: 377, column: 17, scope: !2756)
!2769 = !DILocation(line: 378, column: 17, scope: !2730)
!2770 = !DILocation(line: 383, column: 13, scope: !2730)
!2771 = !DILocation(line: 384, column: 20, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2725, file: !162, line: 384, column: 20)
!2773 = !DILocation(line: 384, column: 26, scope: !2772)
!2774 = !DILocation(line: 384, column: 20, scope: !2725)
!2775 = !DILocation(line: 385, column: 13, scope: !2772)
!2776 = !DILocation(line: 386, column: 11, scope: !2726)
!2777 = !DILocation(line: 389, column: 19, scope: !2726)
!2778 = !DILocation(line: 389, column: 11, scope: !2726)
!2779 = !DILocation(line: 392, column: 19, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2781, file: !162, line: 392, column: 19)
!2781 = distinct !DILexicalBlock(scope: !2726, file: !162, line: 390, column: 13)
!2782 = !DILocation(line: 392, column: 19, scope: !2781)
!2783 = !DILocation(line: 393, column: 17, scope: !2780)
!2784 = !DILocation(line: 394, column: 15, scope: !2781)
!2785 = !DILocation(line: 397, column: 20, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2781, file: !162, line: 397, column: 19)
!2787 = !DILocation(line: 397, column: 26, scope: !2786)
!2788 = !DILocation(line: 398, column: 19, scope: !2786)
!2789 = !DILocation(line: 398, column: 22, scope: !2786)
!2790 = !DILocation(line: 398, column: 24, scope: !2786)
!2791 = !DILocation(line: 398, column: 30, scope: !2786)
!2792 = !DILocation(line: 398, column: 28, scope: !2786)
!2793 = !DILocation(line: 398, column: 38, scope: !2786)
!2794 = !DILocation(line: 398, column: 41, scope: !2786)
!2795 = !DILocation(line: 398, column: 45, scope: !2786)
!2796 = !DILocation(line: 398, column: 47, scope: !2786)
!2797 = !DILocation(line: 398, column: 52, scope: !2786)
!2798 = !DILocation(line: 397, column: 19, scope: !2781)
!2799 = !DILocation(line: 399, column: 25, scope: !2786)
!2800 = !DILocation(line: 399, column: 29, scope: !2786)
!2801 = !DILocation(line: 399, column: 31, scope: !2786)
!2802 = !DILocation(line: 399, column: 17, scope: !2786)
!2803 = !DILocation(line: 406, column: 25, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2805, file: !162, line: 406, column: 25)
!2805 = distinct !DILexicalBlock(scope: !2786, file: !162, line: 400, column: 19)
!2806 = !DILocation(line: 406, column: 25, scope: !2805)
!2807 = !DILocation(line: 407, column: 23, scope: !2804)
!2808 = !DILocation(line: 408, column: 25, scope: !2805)
!2809 = !DILocation(line: 408, column: 29, scope: !2805)
!2810 = !DILocation(line: 408, column: 31, scope: !2805)
!2811 = !DILocation(line: 408, column: 23, scope: !2805)
!2812 = !DILocation(line: 409, column: 23, scope: !2805)
!2813 = !DILocation(line: 410, column: 21, scope: !2805)
!2814 = distinct !{!2814, !2813, !2813}
!2815 = !DILocation(line: 410, column: 21, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2817, file: !162, line: 410, column: 21)
!2817 = distinct !DILexicalBlock(scope: !2805, file: !162, line: 410, column: 21)
!2818 = !DILocation(line: 410, column: 21, scope: !2817)
!2819 = !DILocation(line: 411, column: 21, scope: !2805)
!2820 = distinct !{!2820, !2819, !2819}
!2821 = !DILocation(line: 411, column: 21, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2823, file: !162, line: 411, column: 21)
!2823 = distinct !DILexicalBlock(scope: !2805, file: !162, line: 411, column: 21)
!2824 = !DILocation(line: 411, column: 21, scope: !2823)
!2825 = !DILocation(line: 412, column: 21, scope: !2805)
!2826 = distinct !{!2826, !2825, !2825}
!2827 = !DILocation(line: 412, column: 21, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2829, file: !162, line: 412, column: 21)
!2829 = distinct !DILexicalBlock(scope: !2805, file: !162, line: 412, column: 21)
!2830 = !DILocation(line: 412, column: 21, scope: !2829)
!2831 = !DILocation(line: 413, column: 21, scope: !2805)
!2832 = distinct !{!2832, !2831, !2831}
!2833 = !DILocation(line: 413, column: 21, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2835, file: !162, line: 413, column: 21)
!2835 = distinct !DILexicalBlock(scope: !2805, file: !162, line: 413, column: 21)
!2836 = !DILocation(line: 413, column: 21, scope: !2835)
!2837 = !DILocation(line: 414, column: 21, scope: !2805)
!2838 = !DILocation(line: 417, column: 21, scope: !2805)
!2839 = !DILocation(line: 418, column: 19, scope: !2805)
!2840 = !DILocation(line: 419, column: 15, scope: !2781)
!2841 = !DILocation(line: 422, column: 15, scope: !2781)
!2842 = !DILocation(line: 424, column: 11, scope: !2726)
!2843 = !DILocation(line: 426, column: 24, scope: !2726)
!2844 = !DILocation(line: 426, column: 31, scope: !2726)
!2845 = !DILocation(line: 427, column: 24, scope: !2726)
!2846 = !DILocation(line: 427, column: 31, scope: !2726)
!2847 = !DILocation(line: 428, column: 24, scope: !2726)
!2848 = !DILocation(line: 428, column: 31, scope: !2726)
!2849 = !DILocation(line: 429, column: 24, scope: !2726)
!2850 = !DILocation(line: 429, column: 31, scope: !2726)
!2851 = !DILocation(line: 430, column: 24, scope: !2726)
!2852 = !DILocation(line: 430, column: 31, scope: !2726)
!2853 = !DILocation(line: 431, column: 24, scope: !2726)
!2854 = !DILocation(line: 431, column: 31, scope: !2726)
!2855 = !DILocation(line: 432, column: 24, scope: !2726)
!2856 = !DILocation(line: 432, column: 31, scope: !2726)
!2857 = !DILocation(line: 433, column: 26, scope: !2726)
!2858 = !DILocation(line: 433, column: 24, scope: !2726)
!2859 = !DILocation(line: 436, column: 15, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2726, file: !162, line: 436, column: 15)
!2861 = !DILocation(line: 436, column: 33, scope: !2860)
!2862 = !DILocation(line: 436, column: 36, scope: !2860)
!2863 = !DILocation(line: 436, column: 55, scope: !2860)
!2864 = !DILocation(line: 436, column: 58, scope: !2860)
!2865 = !DILocation(line: 436, column: 15, scope: !2726)
!2866 = !DILocation(line: 437, column: 13, scope: !2860)
!2867 = !DILocation(line: 440, column: 15, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2726, file: !162, line: 440, column: 15)
!2869 = !DILocation(line: 440, column: 29, scope: !2868)
!2870 = !DILocation(line: 441, column: 15, scope: !2868)
!2871 = !DILocation(line: 441, column: 18, scope: !2868)
!2872 = !DILocation(line: 440, column: 15, scope: !2726)
!2873 = !DILocation(line: 442, column: 13, scope: !2868)
!2874 = !DILocation(line: 445, column: 15, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2726, file: !162, line: 445, column: 15)
!2876 = !DILocation(line: 445, column: 15, scope: !2726)
!2877 = !DILocation(line: 447, column: 19, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2875, file: !162, line: 446, column: 13)
!2879 = !DILocation(line: 447, column: 17, scope: !2878)
!2880 = !DILocation(line: 448, column: 15, scope: !2878)
!2881 = !DILocation(line: 450, column: 11, scope: !2726)
!2882 = !DILocation(line: 453, column: 18, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2726, file: !162, line: 453, column: 15)
!2884 = !DILocation(line: 453, column: 26, scope: !2883)
!2885 = !DILocation(line: 453, column: 15, scope: !2726)
!2886 = !DILocation(line: 453, column: 40, scope: !2883)
!2887 = !DILocation(line: 453, column: 47, scope: !2883)
!2888 = !DILocation(line: 453, column: 57, scope: !2883)
!2889 = !DILocation(line: 453, column: 65, scope: !2883)
!2890 = !DILocation(line: 454, column: 13, scope: !2883)
!2891 = !DILocation(line: 453, column: 69, scope: !2883)
!2892 = !DILocation(line: 457, column: 15, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2726, file: !162, line: 457, column: 15)
!2894 = !DILocation(line: 457, column: 17, scope: !2893)
!2895 = !DILocation(line: 457, column: 15, scope: !2726)
!2896 = !DILocation(line: 458, column: 13, scope: !2893)
!2897 = !DILocation(line: 457, column: 20, scope: !2893)
!2898 = !DILocation(line: 473, column: 15, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2726, file: !162, line: 473, column: 15)
!2900 = !DILocation(line: 473, column: 29, scope: !2899)
!2901 = !DILocation(line: 474, column: 15, scope: !2899)
!2902 = !DILocation(line: 474, column: 18, scope: !2899)
!2903 = !DILocation(line: 473, column: 15, scope: !2726)
!2904 = !DILocation(line: 475, column: 13, scope: !2899)
!2905 = !DILocation(line: 476, column: 11, scope: !2726)
!2906 = !DILocation(line: 479, column: 15, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2726, file: !162, line: 479, column: 15)
!2908 = !DILocation(line: 479, column: 29, scope: !2907)
!2909 = !DILocation(line: 479, column: 15, scope: !2726)
!2910 = !DILocation(line: 481, column: 19, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2912, file: !162, line: 481, column: 19)
!2912 = distinct !DILexicalBlock(scope: !2907, file: !162, line: 480, column: 13)
!2913 = !DILocation(line: 481, column: 19, scope: !2912)
!2914 = !DILocation(line: 482, column: 17, scope: !2911)
!2915 = !DILocation(line: 483, column: 15, scope: !2912)
!2916 = distinct !{!2916, !2915, !2915}
!2917 = !DILocation(line: 483, column: 15, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2919, file: !162, line: 483, column: 15)
!2919 = distinct !DILexicalBlock(scope: !2912, file: !162, line: 483, column: 15)
!2920 = !DILocation(line: 483, column: 15, scope: !2919)
!2921 = !DILocation(line: 484, column: 15, scope: !2912)
!2922 = distinct !{!2922, !2921, !2921}
!2923 = !DILocation(line: 484, column: 15, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2925, file: !162, line: 484, column: 15)
!2925 = distinct !DILexicalBlock(scope: !2912, file: !162, line: 484, column: 15)
!2926 = !DILocation(line: 484, column: 15, scope: !2925)
!2927 = !DILocation(line: 485, column: 15, scope: !2912)
!2928 = distinct !{!2928, !2927, !2927}
!2929 = !DILocation(line: 485, column: 15, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2931, file: !162, line: 485, column: 15)
!2931 = distinct !DILexicalBlock(scope: !2912, file: !162, line: 485, column: 15)
!2932 = !DILocation(line: 485, column: 15, scope: !2931)
!2933 = !DILocation(line: 486, column: 13, scope: !2912)
!2934 = !DILocation(line: 487, column: 11, scope: !2726)
!2935 = !DILocation(line: 511, column: 11, scope: !2726)
!2936 = !DILocalVariable(name: "m", scope: !2937, file: !162, line: 521, type: !172)
!2937 = distinct !DILexicalBlock(scope: !2726, file: !162, line: 519, column: 11)
!2938 = !DILocation(line: 521, column: 20, scope: !2937)
!2939 = !DILocalVariable(name: "printable", scope: !2937, file: !162, line: 523, type: !74)
!2940 = !DILocation(line: 523, column: 18, scope: !2937)
!2941 = !DILocation(line: 525, column: 17, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2937, file: !162, line: 525, column: 17)
!2943 = !DILocation(line: 525, column: 17, scope: !2937)
!2944 = !DILocation(line: 527, column: 19, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2942, file: !162, line: 526, column: 15)
!2946 = !DILocation(line: 528, column: 29, scope: !2945)
!2947 = !DILocation(line: 528, column: 41, scope: !2945)
!2948 = !DILocation(line: 528, column: 27, scope: !2945)
!2949 = !DILocation(line: 529, column: 15, scope: !2945)
!2950 = !DILocalVariable(name: "mbstate", scope: !2951, file: !162, line: 532, type: !2952)
!2951 = distinct !DILexicalBlock(scope: !2942, file: !162, line: 531, column: 15)
!2952 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2953, line: 6, baseType: !2954)
!2953 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!2954 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2955, line: 21, baseType: !2956)
!2955 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2955, line: 13, size: 64, elements: !2957)
!2957 = !{!2958, !2959}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2956, file: !2955, line: 15, baseType: !61, size: 32)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2956, file: !2955, line: 20, baseType: !2960, size: 32, offset: 32)
!2960 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2956, file: !2955, line: 16, size: 32, elements: !2961)
!2961 = !{!2962, !2963}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2960, file: !2955, line: 18, baseType: !189, size: 32)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2960, file: !2955, line: 19, baseType: !2964, size: 32)
!2964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 32, elements: !107)
!2965 = !DILocation(line: 532, column: 27, scope: !2951)
!2966 = !DILocation(line: 533, column: 17, scope: !2951)
!2967 = !DILocation(line: 535, column: 19, scope: !2951)
!2968 = !DILocation(line: 536, column: 27, scope: !2951)
!2969 = !DILocation(line: 537, column: 21, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2951, file: !162, line: 537, column: 21)
!2971 = !DILocation(line: 537, column: 29, scope: !2970)
!2972 = !DILocation(line: 537, column: 21, scope: !2951)
!2973 = !DILocation(line: 538, column: 37, scope: !2970)
!2974 = !DILocation(line: 538, column: 29, scope: !2970)
!2975 = !DILocation(line: 538, column: 27, scope: !2970)
!2976 = !DILocation(line: 538, column: 19, scope: !2970)
!2977 = !DILocation(line: 540, column: 17, scope: !2951)
!2978 = distinct !{!2978, !2977, !2979}
!2979 = !DILocation(line: 586, column: 44, scope: !2951)
!2980 = !DILocalVariable(name: "w", scope: !2981, file: !162, line: 542, type: !2982)
!2981 = distinct !DILexicalBlock(scope: !2951, file: !162, line: 541, column: 19)
!2982 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !173, line: 90, baseType: !61)
!2983 = !DILocation(line: 542, column: 29, scope: !2981)
!2984 = !DILocalVariable(name: "bytes", scope: !2981, file: !162, line: 543, type: !172)
!2985 = !DILocation(line: 543, column: 28, scope: !2981)
!2986 = !DILocation(line: 543, column: 50, scope: !2981)
!2987 = !DILocation(line: 543, column: 54, scope: !2981)
!2988 = !DILocation(line: 543, column: 58, scope: !2981)
!2989 = !DILocation(line: 543, column: 56, scope: !2981)
!2990 = !DILocation(line: 544, column: 45, scope: !2981)
!2991 = !DILocation(line: 544, column: 56, scope: !2981)
!2992 = !DILocation(line: 544, column: 60, scope: !2981)
!2993 = !DILocation(line: 544, column: 58, scope: !2981)
!2994 = !DILocation(line: 544, column: 53, scope: !2981)
!2995 = !DILocation(line: 543, column: 36, scope: !2981)
!2996 = !DILocation(line: 545, column: 25, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2981, file: !162, line: 545, column: 25)
!2998 = !DILocation(line: 545, column: 31, scope: !2997)
!2999 = !DILocation(line: 545, column: 25, scope: !2981)
!3000 = !DILocation(line: 546, column: 23, scope: !2997)
!3001 = !DILocation(line: 547, column: 30, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2997, file: !162, line: 547, column: 30)
!3003 = !DILocation(line: 547, column: 36, scope: !3002)
!3004 = !DILocation(line: 547, column: 30, scope: !2997)
!3005 = !DILocation(line: 549, column: 35, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !3002, file: !162, line: 548, column: 23)
!3007 = !DILocation(line: 550, column: 25, scope: !3006)
!3008 = !DILocation(line: 552, column: 30, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3002, file: !162, line: 552, column: 30)
!3010 = !DILocation(line: 552, column: 36, scope: !3009)
!3011 = !DILocation(line: 552, column: 30, scope: !3002)
!3012 = !DILocation(line: 554, column: 35, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !3009, file: !162, line: 553, column: 23)
!3014 = !DILocation(line: 555, column: 25, scope: !3013)
!3015 = !DILocation(line: 555, column: 32, scope: !3013)
!3016 = !DILocation(line: 555, column: 36, scope: !3013)
!3017 = !DILocation(line: 555, column: 34, scope: !3013)
!3018 = !DILocation(line: 555, column: 40, scope: !3013)
!3019 = !DILocation(line: 555, column: 38, scope: !3013)
!3020 = !DILocation(line: 555, column: 48, scope: !3013)
!3021 = !DILocation(line: 555, column: 51, scope: !3013)
!3022 = !DILocation(line: 555, column: 55, scope: !3013)
!3023 = !DILocation(line: 555, column: 59, scope: !3013)
!3024 = !DILocation(line: 555, column: 57, scope: !3013)
!3025 = !DILocation(line: 556, column: 28, scope: !3013)
!3026 = distinct !{!3026, !3014, !3025}
!3027 = !DILocation(line: 557, column: 25, scope: !3013)
!3028 = !DILocation(line: 565, column: 44, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3030, file: !162, line: 565, column: 29)
!3030 = distinct !DILexicalBlock(scope: !3009, file: !162, line: 560, column: 23)
!3031 = !DILocation(line: 566, column: 29, scope: !3029)
!3032 = !DILocation(line: 566, column: 32, scope: !3029)
!3033 = !DILocation(line: 566, column: 46, scope: !3029)
!3034 = !DILocation(line: 565, column: 29, scope: !3030)
!3035 = !DILocalVariable(name: "j", scope: !3036, file: !162, line: 568, type: !172)
!3036 = distinct !DILexicalBlock(scope: !3029, file: !162, line: 567, column: 27)
!3037 = !DILocation(line: 568, column: 36, scope: !3036)
!3038 = !DILocation(line: 569, column: 36, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3036, file: !162, line: 569, column: 29)
!3040 = !DILocation(line: 569, column: 34, scope: !3039)
!3041 = !DILocation(line: 569, column: 41, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3039, file: !162, line: 569, column: 29)
!3043 = !DILocation(line: 569, column: 45, scope: !3042)
!3044 = !DILocation(line: 569, column: 43, scope: !3042)
!3045 = !DILocation(line: 569, column: 29, scope: !3039)
!3046 = !DILocation(line: 570, column: 39, scope: !3042)
!3047 = !DILocation(line: 570, column: 43, scope: !3042)
!3048 = !DILocation(line: 570, column: 47, scope: !3042)
!3049 = !DILocation(line: 570, column: 45, scope: !3042)
!3050 = !DILocation(line: 570, column: 51, scope: !3042)
!3051 = !DILocation(line: 570, column: 49, scope: !3042)
!3052 = !DILocation(line: 570, column: 31, scope: !3042)
!3053 = !DILocation(line: 574, column: 35, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3042, file: !162, line: 571, column: 33)
!3055 = !DILocation(line: 577, column: 35, scope: !3054)
!3056 = !DILocation(line: 578, column: 33, scope: !3054)
!3057 = !DILocation(line: 569, column: 53, scope: !3042)
!3058 = !DILocation(line: 569, column: 29, scope: !3042)
!3059 = distinct !{!3059, !3045, !3060}
!3060 = !DILocation(line: 578, column: 33, scope: !3039)
!3061 = !DILocation(line: 579, column: 27, scope: !3036)
!3062 = !DILocation(line: 581, column: 41, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3030, file: !162, line: 581, column: 29)
!3064 = !DILocation(line: 581, column: 31, scope: !3063)
!3065 = !DILocation(line: 581, column: 29, scope: !3030)
!3066 = !DILocation(line: 582, column: 37, scope: !3063)
!3067 = !DILocation(line: 582, column: 27, scope: !3063)
!3068 = !DILocation(line: 583, column: 30, scope: !3030)
!3069 = !DILocation(line: 583, column: 27, scope: !3030)
!3070 = !DILocation(line: 585, column: 19, scope: !2981)
!3071 = !DILocation(line: 586, column: 26, scope: !2951)
!3072 = !DILocation(line: 586, column: 24, scope: !2951)
!3073 = !DILocation(line: 589, column: 21, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !2937, file: !162, line: 589, column: 17)
!3075 = !DILocation(line: 589, column: 19, scope: !3074)
!3076 = !DILocation(line: 589, column: 23, scope: !3074)
!3077 = !DILocation(line: 589, column: 27, scope: !3074)
!3078 = !DILocation(line: 589, column: 45, scope: !3074)
!3079 = !DILocation(line: 589, column: 50, scope: !3074)
!3080 = !DILocation(line: 589, column: 17, scope: !2937)
!3081 = !DILocalVariable(name: "ilim", scope: !3082, file: !162, line: 593, type: !172)
!3082 = distinct !DILexicalBlock(scope: !3074, file: !162, line: 590, column: 15)
!3083 = !DILocation(line: 593, column: 24, scope: !3082)
!3084 = !DILocation(line: 593, column: 31, scope: !3082)
!3085 = !DILocation(line: 593, column: 35, scope: !3082)
!3086 = !DILocation(line: 593, column: 33, scope: !3082)
!3087 = !DILocation(line: 595, column: 17, scope: !3082)
!3088 = !DILocation(line: 597, column: 25, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3090, file: !162, line: 597, column: 25)
!3090 = distinct !DILexicalBlock(scope: !3091, file: !162, line: 596, column: 19)
!3091 = distinct !DILexicalBlock(scope: !3092, file: !162, line: 595, column: 17)
!3092 = distinct !DILexicalBlock(scope: !3082, file: !162, line: 595, column: 17)
!3093 = !DILocation(line: 597, column: 43, scope: !3089)
!3094 = !DILocation(line: 597, column: 48, scope: !3089)
!3095 = !DILocation(line: 597, column: 25, scope: !3090)
!3096 = !DILocation(line: 599, column: 29, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3098, file: !162, line: 599, column: 29)
!3098 = distinct !DILexicalBlock(scope: !3089, file: !162, line: 598, column: 23)
!3099 = !DILocation(line: 599, column: 29, scope: !3098)
!3100 = !DILocation(line: 600, column: 27, scope: !3097)
!3101 = !DILocation(line: 601, column: 25, scope: !3098)
!3102 = distinct !{!3102, !3101, !3101}
!3103 = !DILocation(line: 601, column: 25, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3105, file: !162, line: 601, column: 25)
!3105 = distinct !DILexicalBlock(scope: !3098, file: !162, line: 601, column: 25)
!3106 = !DILocation(line: 601, column: 25, scope: !3105)
!3107 = !DILocation(line: 602, column: 25, scope: !3098)
!3108 = distinct !{!3108, !3107, !3107}
!3109 = !DILocation(line: 602, column: 25, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3111, file: !162, line: 602, column: 25)
!3111 = distinct !DILexicalBlock(scope: !3098, file: !162, line: 602, column: 25)
!3112 = !DILocation(line: 602, column: 25, scope: !3111)
!3113 = !DILocation(line: 603, column: 25, scope: !3098)
!3114 = distinct !{!3114, !3113, !3113}
!3115 = !DILocation(line: 603, column: 25, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3117, file: !162, line: 603, column: 25)
!3117 = distinct !DILexicalBlock(scope: !3098, file: !162, line: 603, column: 25)
!3118 = !DILocation(line: 603, column: 25, scope: !3117)
!3119 = !DILocation(line: 604, column: 36, scope: !3098)
!3120 = !DILocation(line: 604, column: 38, scope: !3098)
!3121 = !DILocation(line: 604, column: 33, scope: !3098)
!3122 = !DILocation(line: 604, column: 29, scope: !3098)
!3123 = !DILocation(line: 604, column: 27, scope: !3098)
!3124 = !DILocation(line: 605, column: 23, scope: !3098)
!3125 = !DILocation(line: 606, column: 30, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3089, file: !162, line: 606, column: 30)
!3127 = !DILocation(line: 606, column: 30, scope: !3089)
!3128 = !DILocation(line: 608, column: 25, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3126, file: !162, line: 607, column: 23)
!3130 = distinct !{!3130, !3128, !3128}
!3131 = !DILocation(line: 608, column: 25, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3133, file: !162, line: 608, column: 25)
!3133 = distinct !DILexicalBlock(scope: !3129, file: !162, line: 608, column: 25)
!3134 = !DILocation(line: 608, column: 25, scope: !3133)
!3135 = !DILocation(line: 609, column: 40, scope: !3129)
!3136 = !DILocation(line: 610, column: 23, scope: !3129)
!3137 = !DILocation(line: 611, column: 25, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3090, file: !162, line: 611, column: 25)
!3139 = !DILocation(line: 611, column: 33, scope: !3138)
!3140 = !DILocation(line: 611, column: 35, scope: !3138)
!3141 = !DILocation(line: 611, column: 30, scope: !3138)
!3142 = !DILocation(line: 611, column: 25, scope: !3090)
!3143 = !DILocation(line: 612, column: 23, scope: !3138)
!3144 = !DILocation(line: 613, column: 21, scope: !3090)
!3145 = distinct !{!3145, !3144, !3144}
!3146 = !DILocation(line: 613, column: 21, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3148, file: !162, line: 613, column: 21)
!3148 = distinct !DILexicalBlock(scope: !3090, file: !162, line: 613, column: 21)
!3149 = !DILocation(line: 613, column: 21, scope: !3148)
!3150 = !DILocation(line: 614, column: 25, scope: !3090)
!3151 = !DILocation(line: 614, column: 29, scope: !3090)
!3152 = !DILocation(line: 614, column: 23, scope: !3090)
!3153 = !DILocation(line: 595, column: 17, scope: !3091)
!3154 = distinct !{!3154, !3155, !3156}
!3155 = !DILocation(line: 595, column: 17, scope: !3092)
!3156 = !DILocation(line: 615, column: 19, scope: !3092)
!3157 = !DILocation(line: 617, column: 17, scope: !3082)
!3158 = !DILocation(line: 620, column: 9, scope: !2726)
!3159 = !DILocation(line: 622, column: 15, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !2687, file: !162, line: 622, column: 11)
!3161 = !DILocation(line: 622, column: 33, scope: !3160)
!3162 = !DILocation(line: 622, column: 36, scope: !3160)
!3163 = !DILocation(line: 623, column: 14, scope: !3160)
!3164 = !DILocation(line: 623, column: 17, scope: !3160)
!3165 = !DILocation(line: 624, column: 14, scope: !3160)
!3166 = !DILocation(line: 624, column: 17, scope: !3160)
!3167 = !DILocation(line: 624, column: 33, scope: !3160)
!3168 = !DILocation(line: 624, column: 35, scope: !3160)
!3169 = !DILocation(line: 624, column: 56, scope: !3160)
!3170 = !DILocation(line: 624, column: 58, scope: !3160)
!3171 = !DILocation(line: 624, column: 52, scope: !3160)
!3172 = !DILocation(line: 624, column: 47, scope: !3160)
!3173 = !DILocation(line: 625, column: 11, scope: !3160)
!3174 = !DILocation(line: 625, column: 15, scope: !3160)
!3175 = !DILocation(line: 622, column: 11, scope: !2687)
!3176 = !DILocation(line: 626, column: 9, scope: !3160)
!3177 = !DILocation(line: 629, column: 11, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !2687, file: !162, line: 629, column: 11)
!3179 = !DILocation(line: 629, column: 11, scope: !2687)
!3180 = !DILocation(line: 630, column: 9, scope: !3178)
!3181 = !DILocation(line: 631, column: 7, scope: !2687)
!3182 = distinct !{!3182, !3181, !3181}
!3183 = !DILocation(line: 631, column: 7, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3185, file: !162, line: 631, column: 7)
!3185 = distinct !DILexicalBlock(scope: !2687, file: !162, line: 631, column: 7)
!3186 = !DILocation(line: 631, column: 7, scope: !3185)
!3187 = !DILocation(line: 634, column: 7, scope: !2687)
!3188 = distinct !{!3188, !3187, !3187}
!3189 = !DILocation(line: 634, column: 7, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3191, file: !162, line: 634, column: 7)
!3191 = distinct !DILexicalBlock(scope: !2687, file: !162, line: 634, column: 7)
!3192 = !DILocation(line: 634, column: 7, scope: !3191)
!3193 = !DILocation(line: 635, column: 5, scope: !2687)
!3194 = !DILocation(line: 343, column: 75, scope: !2676)
!3195 = !DILocation(line: 343, column: 3, scope: !2676)
!3196 = distinct !{!3196, !2685, !3197}
!3197 = !DILocation(line: 635, column: 5, scope: !2673)
!3198 = !DILocation(line: 637, column: 7, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !2549, file: !162, line: 637, column: 7)
!3200 = !DILocation(line: 637, column: 11, scope: !3199)
!3201 = !DILocation(line: 637, column: 16, scope: !3199)
!3202 = !DILocation(line: 637, column: 19, scope: !3199)
!3203 = !DILocation(line: 637, column: 33, scope: !3199)
!3204 = !DILocation(line: 638, column: 7, scope: !3199)
!3205 = !DILocation(line: 638, column: 10, scope: !3199)
!3206 = !DILocation(line: 637, column: 7, scope: !2549)
!3207 = !DILocation(line: 639, column: 5, scope: !3199)
!3208 = !DILocation(line: 641, column: 7, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !2549, file: !162, line: 641, column: 7)
!3210 = !DILocation(line: 641, column: 20, scope: !3209)
!3211 = !DILocation(line: 641, column: 24, scope: !3209)
!3212 = !DILocation(line: 641, column: 7, scope: !2549)
!3213 = !DILocation(line: 642, column: 5, scope: !3209)
!3214 = !DILocation(line: 642, column: 13, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3216, file: !162, line: 642, column: 5)
!3216 = distinct !DILexicalBlock(scope: !3209, file: !162, line: 642, column: 5)
!3217 = !DILocation(line: 642, column: 12, scope: !3215)
!3218 = !DILocation(line: 642, column: 5, scope: !3216)
!3219 = !DILocation(line: 643, column: 7, scope: !3215)
!3220 = distinct !{!3220, !3219, !3219}
!3221 = !DILocation(line: 643, column: 7, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3223, file: !162, line: 643, column: 7)
!3223 = distinct !DILexicalBlock(scope: !3215, file: !162, line: 643, column: 7)
!3224 = !DILocation(line: 643, column: 7, scope: !3223)
!3225 = !DILocation(line: 642, column: 39, scope: !3215)
!3226 = !DILocation(line: 642, column: 5, scope: !3215)
!3227 = distinct !{!3227, !3218, !3228}
!3228 = !DILocation(line: 643, column: 7, scope: !3216)
!3229 = !DILocation(line: 645, column: 7, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !2549, file: !162, line: 645, column: 7)
!3231 = !DILocation(line: 645, column: 13, scope: !3230)
!3232 = !DILocation(line: 645, column: 11, scope: !3230)
!3233 = !DILocation(line: 645, column: 7, scope: !2549)
!3234 = !DILocation(line: 646, column: 5, scope: !3230)
!3235 = !DILocation(line: 646, column: 12, scope: !3230)
!3236 = !DILocation(line: 646, column: 17, scope: !3230)
!3237 = !DILocation(line: 647, column: 10, scope: !2549)
!3238 = !DILocation(line: 647, column: 3, scope: !2549)
!3239 = !DILocation(line: 652, column: 36, scope: !2549)
!3240 = !DILocation(line: 652, column: 44, scope: !2549)
!3241 = !DILocation(line: 652, column: 56, scope: !2549)
!3242 = !DILocation(line: 652, column: 61, scope: !2549)
!3243 = !DILocation(line: 653, column: 36, scope: !2549)
!3244 = !DILocation(line: 654, column: 36, scope: !2549)
!3245 = !DILocation(line: 654, column: 42, scope: !2549)
!3246 = !DILocation(line: 655, column: 36, scope: !2549)
!3247 = !DILocation(line: 655, column: 48, scope: !2549)
!3248 = !DILocation(line: 652, column: 10, scope: !2549)
!3249 = !DILocation(line: 652, column: 3, scope: !2549)
!3250 = !DILocation(line: 656, column: 1, scope: !2549)
!3251 = distinct !DISubprogram(name: "gettext_quote", scope: !162, file: !162, line: 193, type: !3252, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!52, !52, !120}
!3254 = !DILocalVariable(name: "msgid", arg: 1, scope: !3251, file: !162, line: 193, type: !52)
!3255 = !DILocation(line: 193, column: 28, scope: !3251)
!3256 = !DILocalVariable(name: "s", arg: 2, scope: !3251, file: !162, line: 193, type: !120)
!3257 = !DILocation(line: 193, column: 54, scope: !3251)
!3258 = !DILocalVariable(name: "translation", scope: !3251, file: !162, line: 195, type: !52)
!3259 = !DILocation(line: 195, column: 15, scope: !3251)
!3260 = !DILocation(line: 195, column: 29, scope: !3251)
!3261 = !DILocalVariable(name: "locale_code", scope: !3251, file: !162, line: 196, type: !52)
!3262 = !DILocation(line: 196, column: 15, scope: !3251)
!3263 = !DILocation(line: 198, column: 7, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3251, file: !162, line: 198, column: 7)
!3265 = !DILocation(line: 198, column: 22, scope: !3264)
!3266 = !DILocation(line: 198, column: 19, scope: !3264)
!3267 = !DILocation(line: 198, column: 7, scope: !3251)
!3268 = !DILocation(line: 199, column: 12, scope: !3264)
!3269 = !DILocation(line: 199, column: 5, scope: !3264)
!3270 = !DILocation(line: 219, column: 17, scope: !3251)
!3271 = !DILocation(line: 219, column: 15, scope: !3251)
!3272 = !DILocation(line: 220, column: 7, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3251, file: !162, line: 220, column: 7)
!3274 = !DILocation(line: 220, column: 7, scope: !3251)
!3275 = !DILocation(line: 221, column: 12, scope: !3273)
!3276 = !DILocation(line: 221, column: 21, scope: !3273)
!3277 = !DILocation(line: 221, column: 5, scope: !3273)
!3278 = !DILocation(line: 222, column: 7, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3251, file: !162, line: 222, column: 7)
!3280 = !DILocation(line: 222, column: 7, scope: !3251)
!3281 = !DILocation(line: 223, column: 12, scope: !3279)
!3282 = !DILocation(line: 223, column: 21, scope: !3279)
!3283 = !DILocation(line: 223, column: 5, scope: !3279)
!3284 = !DILocation(line: 225, column: 11, scope: !3251)
!3285 = !DILocation(line: 225, column: 13, scope: !3251)
!3286 = !DILocation(line: 225, column: 3, scope: !3251)
!3287 = !DILocation(line: 226, column: 1, scope: !3251)
!3288 = distinct !DISubprogram(name: "quotearg_alloc", scope: !162, file: !162, line: 683, type: !3289, isLocal: false, isDefinition: true, scopeLine: 685, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{!60, !52, !172, !2508}
!3291 = !DILocalVariable(name: "arg", arg: 1, scope: !3288, file: !162, line: 683, type: !52)
!3292 = !DILocation(line: 683, column: 29, scope: !3288)
!3293 = !DILocalVariable(name: "argsize", arg: 2, scope: !3288, file: !162, line: 683, type: !172)
!3294 = !DILocation(line: 683, column: 41, scope: !3288)
!3295 = !DILocalVariable(name: "o", arg: 3, scope: !3288, file: !162, line: 684, type: !2508)
!3296 = !DILocation(line: 684, column: 47, scope: !3288)
!3297 = !DILocation(line: 686, column: 30, scope: !3288)
!3298 = !DILocation(line: 686, column: 35, scope: !3288)
!3299 = !DILocation(line: 686, column: 50, scope: !3288)
!3300 = !DILocation(line: 686, column: 10, scope: !3288)
!3301 = !DILocation(line: 686, column: 3, scope: !3288)
!3302 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !162, file: !162, line: 696, type: !3303, isLocal: false, isDefinition: true, scopeLine: 698, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!60, !52, !172, !647, !2508}
!3305 = !DILocalVariable(name: "arg", arg: 1, scope: !3302, file: !162, line: 696, type: !52)
!3306 = !DILocation(line: 696, column: 33, scope: !3302)
!3307 = !DILocalVariable(name: "argsize", arg: 2, scope: !3302, file: !162, line: 696, type: !172)
!3308 = !DILocation(line: 696, column: 45, scope: !3302)
!3309 = !DILocalVariable(name: "size", arg: 3, scope: !3302, file: !162, line: 696, type: !647)
!3310 = !DILocation(line: 696, column: 62, scope: !3302)
!3311 = !DILocalVariable(name: "o", arg: 4, scope: !3302, file: !162, line: 697, type: !2508)
!3312 = !DILocation(line: 697, column: 51, scope: !3302)
!3313 = !DILocalVariable(name: "p", scope: !3302, file: !162, line: 699, type: !2508)
!3314 = !DILocation(line: 699, column: 33, scope: !3302)
!3315 = !DILocation(line: 699, column: 37, scope: !3302)
!3316 = !DILocation(line: 699, column: 41, scope: !3302)
!3317 = !DILocalVariable(name: "e", scope: !3302, file: !162, line: 700, type: !61)
!3318 = !DILocation(line: 700, column: 7, scope: !3302)
!3319 = !DILocation(line: 700, column: 11, scope: !3302)
!3320 = !DILocalVariable(name: "flags", scope: !3302, file: !162, line: 702, type: !61)
!3321 = !DILocation(line: 702, column: 7, scope: !3302)
!3322 = !DILocation(line: 702, column: 15, scope: !3302)
!3323 = !DILocation(line: 702, column: 18, scope: !3302)
!3324 = !DILocation(line: 702, column: 27, scope: !3302)
!3325 = !DILocation(line: 702, column: 24, scope: !3302)
!3326 = !DILocalVariable(name: "bufsize", scope: !3302, file: !162, line: 703, type: !172)
!3327 = !DILocation(line: 703, column: 10, scope: !3302)
!3328 = !DILocation(line: 703, column: 52, scope: !3302)
!3329 = !DILocation(line: 703, column: 57, scope: !3302)
!3330 = !DILocation(line: 703, column: 66, scope: !3302)
!3331 = !DILocation(line: 703, column: 69, scope: !3302)
!3332 = !DILocation(line: 704, column: 46, scope: !3302)
!3333 = !DILocation(line: 704, column: 53, scope: !3302)
!3334 = !DILocation(line: 704, column: 56, scope: !3302)
!3335 = !DILocation(line: 705, column: 46, scope: !3302)
!3336 = !DILocation(line: 705, column: 49, scope: !3302)
!3337 = !DILocation(line: 706, column: 46, scope: !3302)
!3338 = !DILocation(line: 706, column: 49, scope: !3302)
!3339 = !DILocation(line: 703, column: 20, scope: !3302)
!3340 = !DILocation(line: 706, column: 62, scope: !3302)
!3341 = !DILocalVariable(name: "buf", scope: !3302, file: !162, line: 707, type: !60)
!3342 = !DILocation(line: 707, column: 9, scope: !3302)
!3343 = !DILocation(line: 707, column: 27, scope: !3302)
!3344 = !DILocation(line: 707, column: 15, scope: !3302)
!3345 = !DILocation(line: 708, column: 29, scope: !3302)
!3346 = !DILocation(line: 708, column: 34, scope: !3302)
!3347 = !DILocation(line: 708, column: 43, scope: !3302)
!3348 = !DILocation(line: 708, column: 48, scope: !3302)
!3349 = !DILocation(line: 708, column: 57, scope: !3302)
!3350 = !DILocation(line: 708, column: 60, scope: !3302)
!3351 = !DILocation(line: 708, column: 67, scope: !3302)
!3352 = !DILocation(line: 709, column: 29, scope: !3302)
!3353 = !DILocation(line: 709, column: 32, scope: !3302)
!3354 = !DILocation(line: 710, column: 29, scope: !3302)
!3355 = !DILocation(line: 710, column: 32, scope: !3302)
!3356 = !DILocation(line: 710, column: 44, scope: !3302)
!3357 = !DILocation(line: 710, column: 47, scope: !3302)
!3358 = !DILocation(line: 708, column: 3, scope: !3302)
!3359 = !DILocation(line: 711, column: 11, scope: !3302)
!3360 = !DILocation(line: 711, column: 3, scope: !3302)
!3361 = !DILocation(line: 711, column: 9, scope: !3302)
!3362 = !DILocation(line: 712, column: 7, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3302, file: !162, line: 712, column: 7)
!3364 = !DILocation(line: 712, column: 7, scope: !3302)
!3365 = !DILocation(line: 713, column: 13, scope: !3363)
!3366 = !DILocation(line: 713, column: 21, scope: !3363)
!3367 = !DILocation(line: 713, column: 6, scope: !3363)
!3368 = !DILocation(line: 713, column: 11, scope: !3363)
!3369 = !DILocation(line: 713, column: 5, scope: !3363)
!3370 = !DILocation(line: 714, column: 10, scope: !3302)
!3371 = !DILocation(line: 714, column: 3, scope: !3302)
!3372 = distinct !DISubprogram(name: "quotearg_free", scope: !162, file: !162, line: 732, type: !137, isLocal: false, isDefinition: true, scopeLine: 733, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3373 = !DILocalVariable(name: "sv", scope: !3372, file: !162, line: 734, type: !201)
!3374 = !DILocation(line: 734, column: 19, scope: !3372)
!3375 = !DILocation(line: 734, column: 24, scope: !3372)
!3376 = !DILocalVariable(name: "i", scope: !3372, file: !162, line: 735, type: !189)
!3377 = !DILocation(line: 735, column: 16, scope: !3372)
!3378 = !DILocation(line: 736, column: 10, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3372, file: !162, line: 736, column: 3)
!3380 = !DILocation(line: 736, column: 8, scope: !3379)
!3381 = !DILocation(line: 736, column: 15, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3379, file: !162, line: 736, column: 3)
!3383 = !DILocation(line: 736, column: 19, scope: !3382)
!3384 = !DILocation(line: 736, column: 17, scope: !3382)
!3385 = !DILocation(line: 736, column: 3, scope: !3379)
!3386 = !DILocation(line: 737, column: 11, scope: !3382)
!3387 = !DILocation(line: 737, column: 14, scope: !3382)
!3388 = !DILocation(line: 737, column: 17, scope: !3382)
!3389 = !DILocation(line: 737, column: 5, scope: !3382)
!3390 = !DILocation(line: 736, column: 28, scope: !3382)
!3391 = !DILocation(line: 736, column: 3, scope: !3382)
!3392 = distinct !{!3392, !3385, !3393}
!3393 = !DILocation(line: 737, column: 20, scope: !3379)
!3394 = !DILocation(line: 738, column: 7, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3372, file: !162, line: 738, column: 7)
!3396 = !DILocation(line: 738, column: 13, scope: !3395)
!3397 = !DILocation(line: 738, column: 17, scope: !3395)
!3398 = !DILocation(line: 738, column: 7, scope: !3372)
!3399 = !DILocation(line: 740, column: 13, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3395, file: !162, line: 739, column: 5)
!3401 = !DILocation(line: 740, column: 19, scope: !3400)
!3402 = !DILocation(line: 740, column: 7, scope: !3400)
!3403 = !DILocation(line: 741, column: 21, scope: !3400)
!3404 = !DILocation(line: 742, column: 20, scope: !3400)
!3405 = !DILocation(line: 743, column: 5, scope: !3400)
!3406 = !DILocation(line: 744, column: 7, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3372, file: !162, line: 744, column: 7)
!3408 = !DILocation(line: 744, column: 10, scope: !3407)
!3409 = !DILocation(line: 744, column: 7, scope: !3372)
!3410 = !DILocation(line: 746, column: 13, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3407, file: !162, line: 745, column: 5)
!3412 = !DILocation(line: 746, column: 7, scope: !3411)
!3413 = !DILocation(line: 747, column: 15, scope: !3411)
!3414 = !DILocation(line: 748, column: 5, scope: !3411)
!3415 = !DILocation(line: 749, column: 10, scope: !3372)
!3416 = !DILocation(line: 750, column: 1, scope: !3372)
!3417 = distinct !DISubprogram(name: "quotearg_n", scope: !162, file: !162, line: 821, type: !3418, isLocal: false, isDefinition: true, scopeLine: 822, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{!60, !61, !52}
!3420 = !DILocalVariable(name: "n", arg: 1, scope: !3417, file: !162, line: 821, type: !61)
!3421 = !DILocation(line: 821, column: 17, scope: !3417)
!3422 = !DILocalVariable(name: "arg", arg: 2, scope: !3417, file: !162, line: 821, type: !52)
!3423 = !DILocation(line: 821, column: 32, scope: !3417)
!3424 = !DILocation(line: 823, column: 30, scope: !3417)
!3425 = !DILocation(line: 823, column: 33, scope: !3417)
!3426 = !DILocation(line: 823, column: 10, scope: !3417)
!3427 = !DILocation(line: 823, column: 3, scope: !3417)
!3428 = distinct !DISubprogram(name: "quotearg_n_options", scope: !162, file: !162, line: 761, type: !3429, isLocal: true, isDefinition: true, scopeLine: 763, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!60, !61, !52, !172, !2508}
!3431 = !DILocalVariable(name: "n", arg: 1, scope: !3428, file: !162, line: 761, type: !61)
!3432 = !DILocation(line: 761, column: 25, scope: !3428)
!3433 = !DILocalVariable(name: "arg", arg: 2, scope: !3428, file: !162, line: 761, type: !52)
!3434 = !DILocation(line: 761, column: 40, scope: !3428)
!3435 = !DILocalVariable(name: "argsize", arg: 3, scope: !3428, file: !162, line: 761, type: !172)
!3436 = !DILocation(line: 761, column: 52, scope: !3428)
!3437 = !DILocalVariable(name: "options", arg: 4, scope: !3428, file: !162, line: 762, type: !2508)
!3438 = !DILocation(line: 762, column: 51, scope: !3428)
!3439 = !DILocalVariable(name: "e", scope: !3428, file: !162, line: 764, type: !61)
!3440 = !DILocation(line: 764, column: 7, scope: !3428)
!3441 = !DILocation(line: 764, column: 11, scope: !3428)
!3442 = !DILocalVariable(name: "n0", scope: !3428, file: !162, line: 766, type: !189)
!3443 = !DILocation(line: 766, column: 16, scope: !3428)
!3444 = !DILocation(line: 766, column: 21, scope: !3428)
!3445 = !DILocalVariable(name: "sv", scope: !3428, file: !162, line: 767, type: !201)
!3446 = !DILocation(line: 767, column: 19, scope: !3428)
!3447 = !DILocation(line: 767, column: 24, scope: !3428)
!3448 = !DILocation(line: 769, column: 7, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3428, file: !162, line: 769, column: 7)
!3450 = !DILocation(line: 769, column: 9, scope: !3449)
!3451 = !DILocation(line: 769, column: 7, scope: !3428)
!3452 = !DILocation(line: 770, column: 5, scope: !3449)
!3453 = !DILocation(line: 772, column: 7, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3428, file: !162, line: 772, column: 7)
!3455 = !DILocation(line: 772, column: 17, scope: !3454)
!3456 = !DILocation(line: 772, column: 14, scope: !3454)
!3457 = !DILocation(line: 772, column: 7, scope: !3428)
!3458 = !DILocalVariable(name: "n1", scope: !3459, file: !162, line: 779, type: !172)
!3459 = distinct !DILexicalBlock(scope: !3454, file: !162, line: 773, column: 5)
!3460 = !DILocation(line: 779, column: 14, scope: !3459)
!3461 = !DILocation(line: 779, column: 19, scope: !3459)
!3462 = !DILocation(line: 779, column: 22, scope: !3459)
!3463 = !DILocalVariable(name: "preallocated", scope: !3459, file: !162, line: 780, type: !74)
!3464 = !DILocation(line: 780, column: 12, scope: !3459)
!3465 = !DILocation(line: 780, column: 28, scope: !3459)
!3466 = !DILocation(line: 780, column: 31, scope: !3459)
!3467 = !DILocation(line: 782, column: 11, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3459, file: !162, line: 782, column: 11)
!3469 = !DILocation(line: 782, column: 11, scope: !3459)
!3470 = !DILocation(line: 783, column: 9, scope: !3468)
!3471 = !DILocation(line: 785, column: 32, scope: !3459)
!3472 = !DILocation(line: 785, column: 54, scope: !3459)
!3473 = !DILocation(line: 785, column: 58, scope: !3459)
!3474 = !DILocation(line: 785, column: 61, scope: !3459)
!3475 = !DILocation(line: 785, column: 22, scope: !3459)
!3476 = !DILocation(line: 785, column: 20, scope: !3459)
!3477 = !DILocation(line: 785, column: 15, scope: !3459)
!3478 = !DILocation(line: 786, column: 11, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3459, file: !162, line: 786, column: 11)
!3480 = !DILocation(line: 786, column: 11, scope: !3459)
!3481 = !DILocation(line: 787, column: 10, scope: !3479)
!3482 = !DILocation(line: 787, column: 15, scope: !3479)
!3483 = !DILocation(line: 787, column: 9, scope: !3479)
!3484 = !DILocation(line: 788, column: 15, scope: !3459)
!3485 = !DILocation(line: 788, column: 20, scope: !3459)
!3486 = !DILocation(line: 788, column: 18, scope: !3459)
!3487 = !DILocation(line: 788, column: 7, scope: !3459)
!3488 = !DILocation(line: 788, column: 32, scope: !3459)
!3489 = !DILocation(line: 788, column: 37, scope: !3459)
!3490 = !DILocation(line: 788, column: 35, scope: !3459)
!3491 = !DILocation(line: 788, column: 45, scope: !3459)
!3492 = !DILocation(line: 789, column: 16, scope: !3459)
!3493 = !DILocation(line: 789, column: 14, scope: !3459)
!3494 = !DILocation(line: 790, column: 5, scope: !3459)
!3495 = !DILocalVariable(name: "size", scope: !3496, file: !162, line: 793, type: !172)
!3496 = distinct !DILexicalBlock(scope: !3428, file: !162, line: 792, column: 3)
!3497 = !DILocation(line: 793, column: 12, scope: !3496)
!3498 = !DILocation(line: 793, column: 19, scope: !3496)
!3499 = !DILocation(line: 793, column: 22, scope: !3496)
!3500 = !DILocation(line: 793, column: 25, scope: !3496)
!3501 = !DILocalVariable(name: "val", scope: !3496, file: !162, line: 794, type: !60)
!3502 = !DILocation(line: 794, column: 11, scope: !3496)
!3503 = !DILocation(line: 794, column: 17, scope: !3496)
!3504 = !DILocation(line: 794, column: 20, scope: !3496)
!3505 = !DILocation(line: 794, column: 23, scope: !3496)
!3506 = !DILocalVariable(name: "flags", scope: !3496, file: !162, line: 796, type: !61)
!3507 = !DILocation(line: 796, column: 9, scope: !3496)
!3508 = !DILocation(line: 796, column: 17, scope: !3496)
!3509 = !DILocation(line: 796, column: 26, scope: !3496)
!3510 = !DILocation(line: 796, column: 32, scope: !3496)
!3511 = !DILocalVariable(name: "qsize", scope: !3496, file: !162, line: 797, type: !172)
!3512 = !DILocation(line: 797, column: 12, scope: !3496)
!3513 = !DILocation(line: 797, column: 46, scope: !3496)
!3514 = !DILocation(line: 797, column: 51, scope: !3496)
!3515 = !DILocation(line: 797, column: 57, scope: !3496)
!3516 = !DILocation(line: 797, column: 62, scope: !3496)
!3517 = !DILocation(line: 798, column: 46, scope: !3496)
!3518 = !DILocation(line: 798, column: 55, scope: !3496)
!3519 = !DILocation(line: 798, column: 62, scope: !3496)
!3520 = !DILocation(line: 799, column: 46, scope: !3496)
!3521 = !DILocation(line: 799, column: 55, scope: !3496)
!3522 = !DILocation(line: 800, column: 46, scope: !3496)
!3523 = !DILocation(line: 800, column: 55, scope: !3496)
!3524 = !DILocation(line: 801, column: 46, scope: !3496)
!3525 = !DILocation(line: 801, column: 55, scope: !3496)
!3526 = !DILocation(line: 797, column: 20, scope: !3496)
!3527 = !DILocation(line: 803, column: 9, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3496, file: !162, line: 803, column: 9)
!3529 = !DILocation(line: 803, column: 17, scope: !3528)
!3530 = !DILocation(line: 803, column: 14, scope: !3528)
!3531 = !DILocation(line: 803, column: 9, scope: !3496)
!3532 = !DILocation(line: 805, column: 29, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3528, file: !162, line: 804, column: 7)
!3534 = !DILocation(line: 805, column: 35, scope: !3533)
!3535 = !DILocation(line: 805, column: 27, scope: !3533)
!3536 = !DILocation(line: 805, column: 9, scope: !3533)
!3537 = !DILocation(line: 805, column: 12, scope: !3533)
!3538 = !DILocation(line: 805, column: 15, scope: !3533)
!3539 = !DILocation(line: 805, column: 20, scope: !3533)
!3540 = !DILocation(line: 806, column: 13, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3533, file: !162, line: 806, column: 13)
!3542 = !DILocation(line: 806, column: 17, scope: !3541)
!3543 = !DILocation(line: 806, column: 13, scope: !3533)
!3544 = !DILocation(line: 807, column: 17, scope: !3541)
!3545 = !DILocation(line: 807, column: 11, scope: !3541)
!3546 = !DILocation(line: 808, column: 39, scope: !3533)
!3547 = !DILocation(line: 808, column: 27, scope: !3533)
!3548 = !DILocation(line: 808, column: 25, scope: !3533)
!3549 = !DILocation(line: 808, column: 9, scope: !3533)
!3550 = !DILocation(line: 808, column: 12, scope: !3533)
!3551 = !DILocation(line: 808, column: 15, scope: !3533)
!3552 = !DILocation(line: 808, column: 19, scope: !3533)
!3553 = !DILocation(line: 809, column: 35, scope: !3533)
!3554 = !DILocation(line: 809, column: 40, scope: !3533)
!3555 = !DILocation(line: 809, column: 46, scope: !3533)
!3556 = !DILocation(line: 809, column: 51, scope: !3533)
!3557 = !DILocation(line: 809, column: 60, scope: !3533)
!3558 = !DILocation(line: 809, column: 69, scope: !3533)
!3559 = !DILocation(line: 810, column: 35, scope: !3533)
!3560 = !DILocation(line: 810, column: 42, scope: !3533)
!3561 = !DILocation(line: 810, column: 51, scope: !3533)
!3562 = !DILocation(line: 811, column: 35, scope: !3533)
!3563 = !DILocation(line: 811, column: 44, scope: !3533)
!3564 = !DILocation(line: 812, column: 35, scope: !3533)
!3565 = !DILocation(line: 812, column: 44, scope: !3533)
!3566 = !DILocation(line: 809, column: 9, scope: !3533)
!3567 = !DILocation(line: 813, column: 7, scope: !3533)
!3568 = !DILocation(line: 815, column: 13, scope: !3496)
!3569 = !DILocation(line: 815, column: 5, scope: !3496)
!3570 = !DILocation(line: 815, column: 11, scope: !3496)
!3571 = !DILocation(line: 816, column: 12, scope: !3496)
!3572 = !DILocation(line: 816, column: 5, scope: !3496)
!3573 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !162, file: !162, line: 827, type: !3574, isLocal: false, isDefinition: true, scopeLine: 828, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{!60, !61, !52, !172}
!3576 = !DILocalVariable(name: "n", arg: 1, scope: !3573, file: !162, line: 827, type: !61)
!3577 = !DILocation(line: 827, column: 21, scope: !3573)
!3578 = !DILocalVariable(name: "arg", arg: 2, scope: !3573, file: !162, line: 827, type: !52)
!3579 = !DILocation(line: 827, column: 36, scope: !3573)
!3580 = !DILocalVariable(name: "argsize", arg: 3, scope: !3573, file: !162, line: 827, type: !172)
!3581 = !DILocation(line: 827, column: 48, scope: !3573)
!3582 = !DILocation(line: 829, column: 30, scope: !3573)
!3583 = !DILocation(line: 829, column: 33, scope: !3573)
!3584 = !DILocation(line: 829, column: 38, scope: !3573)
!3585 = !DILocation(line: 829, column: 10, scope: !3573)
!3586 = !DILocation(line: 829, column: 3, scope: !3573)
!3587 = distinct !DISubprogram(name: "quotearg", scope: !162, file: !162, line: 833, type: !1693, isLocal: false, isDefinition: true, scopeLine: 834, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3588 = !DILocalVariable(name: "arg", arg: 1, scope: !3587, file: !162, line: 833, type: !52)
!3589 = !DILocation(line: 833, column: 23, scope: !3587)
!3590 = !DILocation(line: 835, column: 25, scope: !3587)
!3591 = !DILocation(line: 835, column: 10, scope: !3587)
!3592 = !DILocation(line: 835, column: 3, scope: !3587)
!3593 = distinct !DISubprogram(name: "quotearg_mem", scope: !162, file: !162, line: 839, type: !3594, isLocal: false, isDefinition: true, scopeLine: 840, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{!60, !52, !172}
!3596 = !DILocalVariable(name: "arg", arg: 1, scope: !3593, file: !162, line: 839, type: !52)
!3597 = !DILocation(line: 839, column: 27, scope: !3593)
!3598 = !DILocalVariable(name: "argsize", arg: 2, scope: !3593, file: !162, line: 839, type: !172)
!3599 = !DILocation(line: 839, column: 39, scope: !3593)
!3600 = !DILocation(line: 841, column: 29, scope: !3593)
!3601 = !DILocation(line: 841, column: 34, scope: !3593)
!3602 = !DILocation(line: 841, column: 10, scope: !3593)
!3603 = !DILocation(line: 841, column: 3, scope: !3593)
!3604 = distinct !DISubprogram(name: "quotearg_n_style", scope: !162, file: !162, line: 845, type: !3605, isLocal: false, isDefinition: true, scopeLine: 846, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{!60, !61, !120, !52}
!3607 = !DILocalVariable(name: "n", arg: 1, scope: !3604, file: !162, line: 845, type: !61)
!3608 = !DILocation(line: 845, column: 23, scope: !3604)
!3609 = !DILocalVariable(name: "s", arg: 2, scope: !3604, file: !162, line: 845, type: !120)
!3610 = !DILocation(line: 845, column: 45, scope: !3604)
!3611 = !DILocalVariable(name: "arg", arg: 3, scope: !3604, file: !162, line: 845, type: !52)
!3612 = !DILocation(line: 845, column: 60, scope: !3604)
!3613 = !DILocalVariable(name: "o", scope: !3604, file: !162, line: 847, type: !2509)
!3614 = !DILocation(line: 847, column: 32, scope: !3604)
!3615 = !DILocation(line: 847, column: 64, scope: !3604)
!3616 = !DILocation(line: 847, column: 36, scope: !3604)
!3617 = !DILocation(line: 848, column: 30, scope: !3604)
!3618 = !DILocation(line: 848, column: 33, scope: !3604)
!3619 = !DILocation(line: 848, column: 10, scope: !3604)
!3620 = !DILocation(line: 848, column: 3, scope: !3604)
!3621 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !162, file: !162, line: 179, type: !3622, isLocal: true, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{!183, !120}
!3624 = !DILocalVariable(name: "style", arg: 1, scope: !3621, file: !162, line: 179, type: !120)
!3625 = !DILocation(line: 179, column: 48, scope: !3621)
!3626 = !DILocalVariable(name: "o", scope: !3621, file: !162, line: 181, type: !183)
!3627 = !DILocation(line: 181, column: 26, scope: !3621)
!3628 = !DILocation(line: 182, column: 7, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3621, file: !162, line: 182, column: 7)
!3630 = !DILocation(line: 182, column: 13, scope: !3629)
!3631 = !DILocation(line: 182, column: 7, scope: !3621)
!3632 = !DILocation(line: 183, column: 5, scope: !3629)
!3633 = !DILocation(line: 184, column: 13, scope: !3621)
!3634 = !DILocation(line: 184, column: 5, scope: !3621)
!3635 = !DILocation(line: 184, column: 11, scope: !3621)
!3636 = !DILocation(line: 185, column: 10, scope: !3621)
!3637 = !DILocation(line: 185, column: 3, scope: !3621)
!3638 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !162, file: !162, line: 852, type: !3639, isLocal: false, isDefinition: true, scopeLine: 854, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{!60, !61, !120, !52, !172}
!3641 = !DILocalVariable(name: "n", arg: 1, scope: !3638, file: !162, line: 852, type: !61)
!3642 = !DILocation(line: 852, column: 27, scope: !3638)
!3643 = !DILocalVariable(name: "s", arg: 2, scope: !3638, file: !162, line: 852, type: !120)
!3644 = !DILocation(line: 852, column: 49, scope: !3638)
!3645 = !DILocalVariable(name: "arg", arg: 3, scope: !3638, file: !162, line: 853, type: !52)
!3646 = !DILocation(line: 853, column: 35, scope: !3638)
!3647 = !DILocalVariable(name: "argsize", arg: 4, scope: !3638, file: !162, line: 853, type: !172)
!3648 = !DILocation(line: 853, column: 47, scope: !3638)
!3649 = !DILocalVariable(name: "o", scope: !3638, file: !162, line: 855, type: !2509)
!3650 = !DILocation(line: 855, column: 32, scope: !3638)
!3651 = !DILocation(line: 855, column: 64, scope: !3638)
!3652 = !DILocation(line: 855, column: 36, scope: !3638)
!3653 = !DILocation(line: 856, column: 30, scope: !3638)
!3654 = !DILocation(line: 856, column: 33, scope: !3638)
!3655 = !DILocation(line: 856, column: 38, scope: !3638)
!3656 = !DILocation(line: 856, column: 10, scope: !3638)
!3657 = !DILocation(line: 856, column: 3, scope: !3638)
!3658 = distinct !DISubprogram(name: "quotearg_style", scope: !162, file: !162, line: 860, type: !3659, isLocal: false, isDefinition: true, scopeLine: 861, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!60, !120, !52}
!3661 = !DILocalVariable(name: "s", arg: 1, scope: !3658, file: !162, line: 860, type: !120)
!3662 = !DILocation(line: 860, column: 36, scope: !3658)
!3663 = !DILocalVariable(name: "arg", arg: 2, scope: !3658, file: !162, line: 860, type: !52)
!3664 = !DILocation(line: 860, column: 51, scope: !3658)
!3665 = !DILocation(line: 862, column: 31, scope: !3658)
!3666 = !DILocation(line: 862, column: 34, scope: !3658)
!3667 = !DILocation(line: 862, column: 10, scope: !3658)
!3668 = !DILocation(line: 862, column: 3, scope: !3658)
!3669 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !162, file: !162, line: 866, type: !3670, isLocal: false, isDefinition: true, scopeLine: 867, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!60, !120, !52, !172}
!3672 = !DILocalVariable(name: "s", arg: 1, scope: !3669, file: !162, line: 866, type: !120)
!3673 = !DILocation(line: 866, column: 40, scope: !3669)
!3674 = !DILocalVariable(name: "arg", arg: 2, scope: !3669, file: !162, line: 866, type: !52)
!3675 = !DILocation(line: 866, column: 55, scope: !3669)
!3676 = !DILocalVariable(name: "argsize", arg: 3, scope: !3669, file: !162, line: 866, type: !172)
!3677 = !DILocation(line: 866, column: 67, scope: !3669)
!3678 = !DILocation(line: 868, column: 35, scope: !3669)
!3679 = !DILocation(line: 868, column: 38, scope: !3669)
!3680 = !DILocation(line: 868, column: 43, scope: !3669)
!3681 = !DILocation(line: 868, column: 10, scope: !3669)
!3682 = !DILocation(line: 868, column: 3, scope: !3669)
!3683 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !162, file: !162, line: 872, type: !3684, isLocal: false, isDefinition: true, scopeLine: 873, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!60, !52, !172, !54}
!3686 = !DILocalVariable(name: "arg", arg: 1, scope: !3683, file: !162, line: 872, type: !52)
!3687 = !DILocation(line: 872, column: 32, scope: !3683)
!3688 = !DILocalVariable(name: "argsize", arg: 2, scope: !3683, file: !162, line: 872, type: !172)
!3689 = !DILocation(line: 872, column: 44, scope: !3683)
!3690 = !DILocalVariable(name: "ch", arg: 3, scope: !3683, file: !162, line: 872, type: !54)
!3691 = !DILocation(line: 872, column: 58, scope: !3683)
!3692 = !DILocalVariable(name: "options", scope: !3683, file: !162, line: 874, type: !183)
!3693 = !DILocation(line: 874, column: 26, scope: !3683)
!3694 = !DILocation(line: 875, column: 13, scope: !3683)
!3695 = !DILocation(line: 876, column: 31, scope: !3683)
!3696 = !DILocation(line: 876, column: 3, scope: !3683)
!3697 = !DILocation(line: 877, column: 33, scope: !3683)
!3698 = !DILocation(line: 877, column: 38, scope: !3683)
!3699 = !DILocation(line: 877, column: 10, scope: !3683)
!3700 = !DILocation(line: 877, column: 3, scope: !3683)
!3701 = distinct !DISubprogram(name: "quotearg_char", scope: !162, file: !162, line: 881, type: !3702, isLocal: false, isDefinition: true, scopeLine: 882, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!60, !52, !54}
!3704 = !DILocalVariable(name: "arg", arg: 1, scope: !3701, file: !162, line: 881, type: !52)
!3705 = !DILocation(line: 881, column: 28, scope: !3701)
!3706 = !DILocalVariable(name: "ch", arg: 2, scope: !3701, file: !162, line: 881, type: !54)
!3707 = !DILocation(line: 881, column: 38, scope: !3701)
!3708 = !DILocation(line: 883, column: 29, scope: !3701)
!3709 = !DILocation(line: 883, column: 44, scope: !3701)
!3710 = !DILocation(line: 883, column: 10, scope: !3701)
!3711 = !DILocation(line: 883, column: 3, scope: !3701)
!3712 = distinct !DISubprogram(name: "quotearg_colon", scope: !162, file: !162, line: 887, type: !1693, isLocal: false, isDefinition: true, scopeLine: 888, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3713 = !DILocalVariable(name: "arg", arg: 1, scope: !3712, file: !162, line: 887, type: !52)
!3714 = !DILocation(line: 887, column: 29, scope: !3712)
!3715 = !DILocation(line: 889, column: 25, scope: !3712)
!3716 = !DILocation(line: 889, column: 10, scope: !3712)
!3717 = !DILocation(line: 889, column: 3, scope: !3712)
!3718 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !162, file: !162, line: 893, type: !3594, isLocal: false, isDefinition: true, scopeLine: 894, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3719 = !DILocalVariable(name: "arg", arg: 1, scope: !3718, file: !162, line: 893, type: !52)
!3720 = !DILocation(line: 893, column: 33, scope: !3718)
!3721 = !DILocalVariable(name: "argsize", arg: 2, scope: !3718, file: !162, line: 893, type: !172)
!3722 = !DILocation(line: 893, column: 45, scope: !3718)
!3723 = !DILocation(line: 895, column: 29, scope: !3718)
!3724 = !DILocation(line: 895, column: 34, scope: !3718)
!3725 = !DILocation(line: 895, column: 10, scope: !3718)
!3726 = !DILocation(line: 895, column: 3, scope: !3718)
!3727 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !162, file: !162, line: 899, type: !3728, isLocal: false, isDefinition: true, scopeLine: 901, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!60, !61, !52, !52, !52}
!3730 = !DILocalVariable(name: "n", arg: 1, scope: !3727, file: !162, line: 899, type: !61)
!3731 = !DILocation(line: 899, column: 24, scope: !3727)
!3732 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3727, file: !162, line: 899, type: !52)
!3733 = !DILocation(line: 899, column: 39, scope: !3727)
!3734 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3727, file: !162, line: 900, type: !52)
!3735 = !DILocation(line: 900, column: 32, scope: !3727)
!3736 = !DILocalVariable(name: "arg", arg: 4, scope: !3727, file: !162, line: 900, type: !52)
!3737 = !DILocation(line: 900, column: 57, scope: !3727)
!3738 = !DILocation(line: 902, column: 33, scope: !3727)
!3739 = !DILocation(line: 902, column: 36, scope: !3727)
!3740 = !DILocation(line: 902, column: 48, scope: !3727)
!3741 = !DILocation(line: 902, column: 61, scope: !3727)
!3742 = !DILocation(line: 902, column: 10, scope: !3727)
!3743 = !DILocation(line: 902, column: 3, scope: !3727)
!3744 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !162, file: !162, line: 907, type: !3745, isLocal: false, isDefinition: true, scopeLine: 910, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!60, !61, !52, !52, !52, !172}
!3747 = !DILocalVariable(name: "n", arg: 1, scope: !3744, file: !162, line: 907, type: !61)
!3748 = !DILocation(line: 907, column: 28, scope: !3744)
!3749 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3744, file: !162, line: 907, type: !52)
!3750 = !DILocation(line: 907, column: 43, scope: !3744)
!3751 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3744, file: !162, line: 908, type: !52)
!3752 = !DILocation(line: 908, column: 36, scope: !3744)
!3753 = !DILocalVariable(name: "arg", arg: 4, scope: !3744, file: !162, line: 909, type: !52)
!3754 = !DILocation(line: 909, column: 36, scope: !3744)
!3755 = !DILocalVariable(name: "argsize", arg: 5, scope: !3744, file: !162, line: 909, type: !172)
!3756 = !DILocation(line: 909, column: 48, scope: !3744)
!3757 = !DILocalVariable(name: "o", scope: !3744, file: !162, line: 911, type: !183)
!3758 = !DILocation(line: 911, column: 26, scope: !3744)
!3759 = !DILocation(line: 911, column: 30, scope: !3744)
!3760 = !DILocation(line: 912, column: 27, scope: !3744)
!3761 = !DILocation(line: 912, column: 39, scope: !3744)
!3762 = !DILocation(line: 912, column: 3, scope: !3744)
!3763 = !DILocation(line: 913, column: 30, scope: !3744)
!3764 = !DILocation(line: 913, column: 33, scope: !3744)
!3765 = !DILocation(line: 913, column: 38, scope: !3744)
!3766 = !DILocation(line: 913, column: 10, scope: !3744)
!3767 = !DILocation(line: 913, column: 3, scope: !3744)
!3768 = distinct !DISubprogram(name: "quotearg_custom", scope: !162, file: !162, line: 917, type: !3769, isLocal: false, isDefinition: true, scopeLine: 919, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!60, !52, !52, !52}
!3771 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3768, file: !162, line: 917, type: !52)
!3772 = !DILocation(line: 917, column: 30, scope: !3768)
!3773 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3768, file: !162, line: 917, type: !52)
!3774 = !DILocation(line: 917, column: 54, scope: !3768)
!3775 = !DILocalVariable(name: "arg", arg: 3, scope: !3768, file: !162, line: 918, type: !52)
!3776 = !DILocation(line: 918, column: 30, scope: !3768)
!3777 = !DILocation(line: 920, column: 32, scope: !3768)
!3778 = !DILocation(line: 920, column: 44, scope: !3768)
!3779 = !DILocation(line: 920, column: 57, scope: !3768)
!3780 = !DILocation(line: 920, column: 10, scope: !3768)
!3781 = !DILocation(line: 920, column: 3, scope: !3768)
!3782 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !162, file: !162, line: 924, type: !3783, isLocal: false, isDefinition: true, scopeLine: 926, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{!60, !52, !52, !52, !172}
!3785 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3782, file: !162, line: 924, type: !52)
!3786 = !DILocation(line: 924, column: 34, scope: !3782)
!3787 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3782, file: !162, line: 924, type: !52)
!3788 = !DILocation(line: 924, column: 58, scope: !3782)
!3789 = !DILocalVariable(name: "arg", arg: 3, scope: !3782, file: !162, line: 925, type: !52)
!3790 = !DILocation(line: 925, column: 34, scope: !3782)
!3791 = !DILocalVariable(name: "argsize", arg: 4, scope: !3782, file: !162, line: 925, type: !172)
!3792 = !DILocation(line: 925, column: 46, scope: !3782)
!3793 = !DILocation(line: 927, column: 36, scope: !3782)
!3794 = !DILocation(line: 927, column: 48, scope: !3782)
!3795 = !DILocation(line: 927, column: 61, scope: !3782)
!3796 = !DILocation(line: 928, column: 33, scope: !3782)
!3797 = !DILocation(line: 927, column: 10, scope: !3782)
!3798 = !DILocation(line: 927, column: 3, scope: !3782)
!3799 = distinct !DISubprogram(name: "quote_n", scope: !162, file: !162, line: 942, type: !3800, isLocal: false, isDefinition: true, scopeLine: 943, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!52, !61, !52}
!3802 = !DILocalVariable(name: "n", arg: 1, scope: !3799, file: !162, line: 942, type: !61)
!3803 = !DILocation(line: 942, column: 14, scope: !3799)
!3804 = !DILocalVariable(name: "name", arg: 2, scope: !3799, file: !162, line: 942, type: !52)
!3805 = !DILocation(line: 942, column: 29, scope: !3799)
!3806 = !DILocation(line: 944, column: 30, scope: !3799)
!3807 = !DILocation(line: 944, column: 33, scope: !3799)
!3808 = !DILocation(line: 944, column: 10, scope: !3799)
!3809 = !DILocation(line: 944, column: 3, scope: !3799)
!3810 = distinct !DISubprogram(name: "quote", scope: !162, file: !162, line: 948, type: !3811, isLocal: false, isDefinition: true, scopeLine: 949, flags: DIFlagPrototyped, isOptimized: false, unit: !161, variables: !113)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!52, !52}
!3813 = !DILocalVariable(name: "name", arg: 1, scope: !3810, file: !162, line: 948, type: !52)
!3814 = !DILocation(line: 948, column: 20, scope: !3810)
!3815 = !DILocation(line: 950, column: 22, scope: !3810)
!3816 = !DILocation(line: 950, column: 10, scope: !3810)
!3817 = !DILocation(line: 950, column: 3, scope: !3810)
!3818 = distinct !DISubprogram(name: "version_etc_arn", scope: !633, file: !633, line: 62, type: !3819, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: false, unit: !632, variables: !113)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{null, !3821, !52, !52, !52, !1395, !172}
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1790, line: 7, baseType: !3823)
!3823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1792, line: 245, size: 1728, elements: !3824)
!3824 = !{!3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3823, file: !1792, line: 246, baseType: !61, size: 32)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3823, file: !1792, line: 251, baseType: !60, size: 64, offset: 64)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3823, file: !1792, line: 252, baseType: !60, size: 64, offset: 128)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3823, file: !1792, line: 253, baseType: !60, size: 64, offset: 192)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3823, file: !1792, line: 254, baseType: !60, size: 64, offset: 256)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3823, file: !1792, line: 255, baseType: !60, size: 64, offset: 320)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3823, file: !1792, line: 256, baseType: !60, size: 64, offset: 384)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3823, file: !1792, line: 257, baseType: !60, size: 64, offset: 448)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3823, file: !1792, line: 258, baseType: !60, size: 64, offset: 512)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3823, file: !1792, line: 260, baseType: !60, size: 64, offset: 576)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3823, file: !1792, line: 261, baseType: !60, size: 64, offset: 640)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3823, file: !1792, line: 262, baseType: !60, size: 64, offset: 704)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3823, file: !1792, line: 264, baseType: !3838, size: 64, offset: 768)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1792, line: 160, size: 192, elements: !3840)
!3840 = !{!3841, !3842, !3844}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3839, file: !1792, line: 161, baseType: !3838, size: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3839, file: !1792, line: 162, baseType: !3843, size: 64, offset: 64)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3839, file: !1792, line: 166, baseType: !61, size: 32, offset: 128)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3823, file: !1792, line: 266, baseType: !3843, size: 64, offset: 832)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3823, file: !1792, line: 268, baseType: !61, size: 32, offset: 896)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3823, file: !1792, line: 272, baseType: !61, size: 32, offset: 928)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3823, file: !1792, line: 274, baseType: !1770, size: 64, offset: 960)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3823, file: !1792, line: 278, baseType: !62, size: 16, offset: 1024)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3823, file: !1792, line: 279, baseType: !1820, size: 8, offset: 1040)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3823, file: !1792, line: 280, baseType: !1822, size: 8, offset: 1048)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3823, file: !1792, line: 284, baseType: !1826, size: 64, offset: 1088)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3823, file: !1792, line: 293, baseType: !1829, size: 64, offset: 1152)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3823, file: !1792, line: 301, baseType: !55, size: 64, offset: 1216)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3823, file: !1792, line: 302, baseType: !55, size: 64, offset: 1280)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3823, file: !1792, line: 303, baseType: !55, size: 64, offset: 1344)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3823, file: !1792, line: 304, baseType: !55, size: 64, offset: 1408)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3823, file: !1792, line: 306, baseType: !172, size: 64, offset: 1472)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3823, file: !1792, line: 307, baseType: !61, size: 32, offset: 1536)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3823, file: !1792, line: 309, baseType: !1837, size: 160, offset: 1568)
!3861 = !DILocalVariable(name: "stream", arg: 1, scope: !3818, file: !633, line: 62, type: !3821)
!3862 = !DILocation(line: 62, column: 24, scope: !3818)
!3863 = !DILocalVariable(name: "command_name", arg: 2, scope: !3818, file: !633, line: 63, type: !52)
!3864 = !DILocation(line: 63, column: 30, scope: !3818)
!3865 = !DILocalVariable(name: "package", arg: 3, scope: !3818, file: !633, line: 63, type: !52)
!3866 = !DILocation(line: 63, column: 56, scope: !3818)
!3867 = !DILocalVariable(name: "version", arg: 4, scope: !3818, file: !633, line: 64, type: !52)
!3868 = !DILocation(line: 64, column: 30, scope: !3818)
!3869 = !DILocalVariable(name: "authors", arg: 5, scope: !3818, file: !633, line: 65, type: !1395)
!3870 = !DILocation(line: 65, column: 39, scope: !3818)
!3871 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3818, file: !633, line: 65, type: !172)
!3872 = !DILocation(line: 65, column: 55, scope: !3818)
!3873 = !DILocation(line: 67, column: 7, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3818, file: !633, line: 67, column: 7)
!3875 = !DILocation(line: 67, column: 7, scope: !3818)
!3876 = !DILocation(line: 68, column: 14, scope: !3874)
!3877 = !DILocation(line: 68, column: 38, scope: !3874)
!3878 = !DILocation(line: 68, column: 52, scope: !3874)
!3879 = !DILocation(line: 68, column: 61, scope: !3874)
!3880 = !DILocation(line: 68, column: 5, scope: !3874)
!3881 = !DILocation(line: 70, column: 14, scope: !3874)
!3882 = !DILocation(line: 70, column: 33, scope: !3874)
!3883 = !DILocation(line: 70, column: 42, scope: !3874)
!3884 = !DILocation(line: 70, column: 5, scope: !3874)
!3885 = !DILocation(line: 84, column: 12, scope: !3818)
!3886 = !DILocation(line: 84, column: 3, scope: !3818)
!3887 = !DILocation(line: 86, column: 3, scope: !3818)
!3888 = !DILocation(line: 95, column: 11, scope: !3818)
!3889 = !DILocation(line: 95, column: 3, scope: !3818)
!3890 = !DILocation(line: 99, column: 7, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3818, file: !633, line: 96, column: 5)
!3892 = !DILocation(line: 102, column: 16, scope: !3891)
!3893 = !DILocation(line: 102, column: 47, scope: !3891)
!3894 = !DILocation(line: 102, column: 7, scope: !3891)
!3895 = !DILocation(line: 103, column: 7, scope: !3891)
!3896 = !DILocation(line: 106, column: 16, scope: !3891)
!3897 = !DILocation(line: 106, column: 54, scope: !3891)
!3898 = !DILocation(line: 106, column: 66, scope: !3891)
!3899 = !DILocation(line: 106, column: 7, scope: !3891)
!3900 = !DILocation(line: 107, column: 7, scope: !3891)
!3901 = !DILocation(line: 110, column: 16, scope: !3891)
!3902 = !DILocation(line: 111, column: 16, scope: !3891)
!3903 = !DILocation(line: 111, column: 28, scope: !3891)
!3904 = !DILocation(line: 111, column: 40, scope: !3891)
!3905 = !DILocation(line: 110, column: 7, scope: !3891)
!3906 = !DILocation(line: 112, column: 7, scope: !3891)
!3907 = !DILocation(line: 117, column: 16, scope: !3891)
!3908 = !DILocation(line: 118, column: 16, scope: !3891)
!3909 = !DILocation(line: 118, column: 28, scope: !3891)
!3910 = !DILocation(line: 118, column: 40, scope: !3891)
!3911 = !DILocation(line: 118, column: 52, scope: !3891)
!3912 = !DILocation(line: 117, column: 7, scope: !3891)
!3913 = !DILocation(line: 119, column: 7, scope: !3891)
!3914 = !DILocation(line: 124, column: 16, scope: !3891)
!3915 = !DILocation(line: 125, column: 16, scope: !3891)
!3916 = !DILocation(line: 125, column: 28, scope: !3891)
!3917 = !DILocation(line: 125, column: 40, scope: !3891)
!3918 = !DILocation(line: 125, column: 52, scope: !3891)
!3919 = !DILocation(line: 125, column: 64, scope: !3891)
!3920 = !DILocation(line: 124, column: 7, scope: !3891)
!3921 = !DILocation(line: 126, column: 7, scope: !3891)
!3922 = !DILocation(line: 131, column: 16, scope: !3891)
!3923 = !DILocation(line: 132, column: 16, scope: !3891)
!3924 = !DILocation(line: 132, column: 28, scope: !3891)
!3925 = !DILocation(line: 132, column: 40, scope: !3891)
!3926 = !DILocation(line: 132, column: 52, scope: !3891)
!3927 = !DILocation(line: 132, column: 64, scope: !3891)
!3928 = !DILocation(line: 133, column: 16, scope: !3891)
!3929 = !DILocation(line: 131, column: 7, scope: !3891)
!3930 = !DILocation(line: 134, column: 7, scope: !3891)
!3931 = !DILocation(line: 139, column: 16, scope: !3891)
!3932 = !DILocation(line: 140, column: 16, scope: !3891)
!3933 = !DILocation(line: 140, column: 28, scope: !3891)
!3934 = !DILocation(line: 140, column: 40, scope: !3891)
!3935 = !DILocation(line: 140, column: 52, scope: !3891)
!3936 = !DILocation(line: 140, column: 64, scope: !3891)
!3937 = !DILocation(line: 141, column: 16, scope: !3891)
!3938 = !DILocation(line: 141, column: 28, scope: !3891)
!3939 = !DILocation(line: 139, column: 7, scope: !3891)
!3940 = !DILocation(line: 142, column: 7, scope: !3891)
!3941 = !DILocation(line: 147, column: 16, scope: !3891)
!3942 = !DILocation(line: 149, column: 17, scope: !3891)
!3943 = !DILocation(line: 149, column: 29, scope: !3891)
!3944 = !DILocation(line: 149, column: 41, scope: !3891)
!3945 = !DILocation(line: 149, column: 53, scope: !3891)
!3946 = !DILocation(line: 149, column: 65, scope: !3891)
!3947 = !DILocation(line: 150, column: 17, scope: !3891)
!3948 = !DILocation(line: 150, column: 29, scope: !3891)
!3949 = !DILocation(line: 150, column: 41, scope: !3891)
!3950 = !DILocation(line: 147, column: 7, scope: !3891)
!3951 = !DILocation(line: 151, column: 7, scope: !3891)
!3952 = !DILocation(line: 156, column: 16, scope: !3891)
!3953 = !DILocation(line: 158, column: 16, scope: !3891)
!3954 = !DILocation(line: 158, column: 28, scope: !3891)
!3955 = !DILocation(line: 158, column: 40, scope: !3891)
!3956 = !DILocation(line: 158, column: 52, scope: !3891)
!3957 = !DILocation(line: 158, column: 64, scope: !3891)
!3958 = !DILocation(line: 159, column: 16, scope: !3891)
!3959 = !DILocation(line: 159, column: 28, scope: !3891)
!3960 = !DILocation(line: 159, column: 40, scope: !3891)
!3961 = !DILocation(line: 159, column: 52, scope: !3891)
!3962 = !DILocation(line: 156, column: 7, scope: !3891)
!3963 = !DILocation(line: 160, column: 7, scope: !3891)
!3964 = !DILocation(line: 167, column: 16, scope: !3891)
!3965 = !DILocation(line: 169, column: 17, scope: !3891)
!3966 = !DILocation(line: 169, column: 29, scope: !3891)
!3967 = !DILocation(line: 169, column: 41, scope: !3891)
!3968 = !DILocation(line: 169, column: 53, scope: !3891)
!3969 = !DILocation(line: 169, column: 65, scope: !3891)
!3970 = !DILocation(line: 170, column: 17, scope: !3891)
!3971 = !DILocation(line: 170, column: 29, scope: !3891)
!3972 = !DILocation(line: 170, column: 41, scope: !3891)
!3973 = !DILocation(line: 170, column: 53, scope: !3891)
!3974 = !DILocation(line: 167, column: 7, scope: !3891)
!3975 = !DILocation(line: 171, column: 7, scope: !3891)
!3976 = !DILocation(line: 173, column: 1, scope: !3818)
!3977 = distinct !DISubprogram(name: "version_etc_ar", scope: !633, file: !633, line: 180, type: !3978, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: false, unit: !632, variables: !113)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{null, !3821, !52, !52, !52, !1395}
!3980 = !DILocalVariable(name: "stream", arg: 1, scope: !3977, file: !633, line: 180, type: !3821)
!3981 = !DILocation(line: 180, column: 23, scope: !3977)
!3982 = !DILocalVariable(name: "command_name", arg: 2, scope: !3977, file: !633, line: 181, type: !52)
!3983 = !DILocation(line: 181, column: 29, scope: !3977)
!3984 = !DILocalVariable(name: "package", arg: 3, scope: !3977, file: !633, line: 181, type: !52)
!3985 = !DILocation(line: 181, column: 55, scope: !3977)
!3986 = !DILocalVariable(name: "version", arg: 4, scope: !3977, file: !633, line: 182, type: !52)
!3987 = !DILocation(line: 182, column: 29, scope: !3977)
!3988 = !DILocalVariable(name: "authors", arg: 5, scope: !3977, file: !633, line: 182, type: !1395)
!3989 = !DILocation(line: 182, column: 59, scope: !3977)
!3990 = !DILocalVariable(name: "n_authors", scope: !3977, file: !633, line: 184, type: !172)
!3991 = !DILocation(line: 184, column: 10, scope: !3977)
!3992 = !DILocation(line: 186, column: 18, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3977, file: !633, line: 186, column: 3)
!3994 = !DILocation(line: 186, column: 8, scope: !3993)
!3995 = !DILocation(line: 186, column: 23, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3993, file: !633, line: 186, column: 3)
!3997 = !DILocation(line: 186, column: 31, scope: !3996)
!3998 = !DILocation(line: 186, column: 3, scope: !3993)
!3999 = !DILocation(line: 186, column: 52, scope: !3996)
!4000 = !DILocation(line: 186, column: 3, scope: !3996)
!4001 = distinct !{!4001, !3998, !4002}
!4002 = !DILocation(line: 187, column: 5, scope: !3993)
!4003 = !DILocation(line: 188, column: 20, scope: !3977)
!4004 = !DILocation(line: 188, column: 28, scope: !3977)
!4005 = !DILocation(line: 188, column: 42, scope: !3977)
!4006 = !DILocation(line: 188, column: 51, scope: !3977)
!4007 = !DILocation(line: 188, column: 60, scope: !3977)
!4008 = !DILocation(line: 188, column: 69, scope: !3977)
!4009 = !DILocation(line: 188, column: 3, scope: !3977)
!4010 = !DILocation(line: 189, column: 1, scope: !3977)
!4011 = distinct !DISubprogram(name: "version_etc_va", scope: !633, file: !633, line: 196, type: !4012, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: false, unit: !632, variables: !113)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{null, !3821, !52, !52, !52, !4014}
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !633, line: 189, size: 192, elements: !4016)
!4016 = !{!4017, !4018, !4019, !4020}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4015, file: !633, line: 189, baseType: !189, size: 32)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4015, file: !633, line: 189, baseType: !189, size: 32, offset: 32)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4015, file: !633, line: 189, baseType: !55, size: 64, offset: 64)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4015, file: !633, line: 189, baseType: !55, size: 64, offset: 128)
!4021 = !DILocalVariable(name: "stream", arg: 1, scope: !4011, file: !633, line: 196, type: !3821)
!4022 = !DILocation(line: 196, column: 23, scope: !4011)
!4023 = !DILocalVariable(name: "command_name", arg: 2, scope: !4011, file: !633, line: 197, type: !52)
!4024 = !DILocation(line: 197, column: 29, scope: !4011)
!4025 = !DILocalVariable(name: "package", arg: 3, scope: !4011, file: !633, line: 197, type: !52)
!4026 = !DILocation(line: 197, column: 55, scope: !4011)
!4027 = !DILocalVariable(name: "version", arg: 4, scope: !4011, file: !633, line: 198, type: !52)
!4028 = !DILocation(line: 198, column: 29, scope: !4011)
!4029 = !DILocalVariable(name: "authors", arg: 5, scope: !4011, file: !633, line: 198, type: !4014)
!4030 = !DILocation(line: 198, column: 46, scope: !4011)
!4031 = !DILocalVariable(name: "n_authors", scope: !4011, file: !633, line: 200, type: !172)
!4032 = !DILocation(line: 200, column: 10, scope: !4011)
!4033 = !DILocalVariable(name: "authtab", scope: !4011, file: !633, line: 201, type: !4034)
!4034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 640, elements: !4035)
!4035 = !{!4036}
!4036 = !DISubrange(count: 10)
!4037 = !DILocation(line: 201, column: 15, scope: !4011)
!4038 = !DILocation(line: 203, column: 18, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !4011, file: !633, line: 203, column: 3)
!4040 = !DILocation(line: 203, column: 8, scope: !4039)
!4041 = !DILocation(line: 204, column: 8, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4039, file: !633, line: 203, column: 3)
!4043 = !DILocation(line: 204, column: 18, scope: !4042)
!4044 = !DILocation(line: 205, column: 10, scope: !4042)
!4045 = !DILocation(line: 205, column: 35, scope: !4042)
!4046 = !DILocation(line: 205, column: 22, scope: !4042)
!4047 = !DILocation(line: 205, column: 14, scope: !4042)
!4048 = !DILocation(line: 205, column: 33, scope: !4042)
!4049 = !DILocation(line: 205, column: 67, scope: !4042)
!4050 = !DILocation(line: 203, column: 3, scope: !4039)
!4051 = !DILocation(line: 206, column: 17, scope: !4042)
!4052 = !DILocation(line: 203, column: 3, scope: !4042)
!4053 = distinct !{!4053, !4050, !4054}
!4054 = !DILocation(line: 207, column: 5, scope: !4039)
!4055 = !DILocation(line: 208, column: 20, scope: !4011)
!4056 = !DILocation(line: 208, column: 28, scope: !4011)
!4057 = !DILocation(line: 208, column: 42, scope: !4011)
!4058 = !DILocation(line: 208, column: 51, scope: !4011)
!4059 = !DILocation(line: 209, column: 20, scope: !4011)
!4060 = !DILocation(line: 209, column: 29, scope: !4011)
!4061 = !DILocation(line: 208, column: 3, scope: !4011)
!4062 = !DILocation(line: 210, column: 1, scope: !4011)
!4063 = distinct !DISubprogram(name: "version_etc", scope: !633, file: !633, line: 227, type: !4064, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: false, unit: !632, variables: !113)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{null, !3821, !52, !52, !52, null}
!4066 = !DILocalVariable(name: "stream", arg: 1, scope: !4063, file: !633, line: 227, type: !3821)
!4067 = !DILocation(line: 227, column: 20, scope: !4063)
!4068 = !DILocalVariable(name: "command_name", arg: 2, scope: !4063, file: !633, line: 228, type: !52)
!4069 = !DILocation(line: 228, column: 26, scope: !4063)
!4070 = !DILocalVariable(name: "package", arg: 3, scope: !4063, file: !633, line: 228, type: !52)
!4071 = !DILocation(line: 228, column: 52, scope: !4063)
!4072 = !DILocalVariable(name: "version", arg: 4, scope: !4063, file: !633, line: 229, type: !52)
!4073 = !DILocation(line: 229, column: 26, scope: !4063)
!4074 = !DILocalVariable(name: "authors", scope: !4063, file: !633, line: 231, type: !4075)
!4075 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1769, line: 46, baseType: !4076)
!4076 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4077, line: 48, baseType: !4078)
!4077 = !DIFile(filename: "/home/ma481/Downloads/LLVM_6.0/lib/clang/6.0.0/include/stdarg.h", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!4078 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !633, line: 231, baseType: !4079)
!4079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4015, size: 192, elements: !1823)
!4080 = !DILocation(line: 231, column: 11, scope: !4063)
!4081 = !DILocation(line: 233, column: 3, scope: !4063)
!4082 = !DILocation(line: 234, column: 19, scope: !4063)
!4083 = !DILocation(line: 234, column: 27, scope: !4063)
!4084 = !DILocation(line: 234, column: 41, scope: !4063)
!4085 = !DILocation(line: 234, column: 50, scope: !4063)
!4086 = !DILocation(line: 234, column: 59, scope: !4063)
!4087 = !DILocation(line: 234, column: 3, scope: !4063)
!4088 = !DILocation(line: 235, column: 3, scope: !4063)
!4089 = !DILocation(line: 236, column: 1, scope: !4063)
!4090 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !633, file: !633, line: 239, type: !137, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: false, unit: !632, variables: !113)
!4091 = !DILocation(line: 245, column: 3, scope: !4090)
!4092 = !DILocation(line: 251, column: 3, scope: !4090)
!4093 = !DILocation(line: 256, column: 3, scope: !4090)
!4094 = !DILocation(line: 258, column: 1, scope: !4090)
!4095 = distinct !DISubprogram(name: "xnmalloc", scope: !643, file: !643, line: 109, type: !4096, isLocal: false, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: false, unit: !639, variables: !113)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{!55, !172, !172}
!4098 = !DILocalVariable(name: "n", arg: 1, scope: !4095, file: !643, line: 109, type: !172)
!4099 = !DILocation(line: 109, column: 18, scope: !4095)
!4100 = !DILocalVariable(name: "s", arg: 2, scope: !4095, file: !643, line: 109, type: !172)
!4101 = !DILocation(line: 109, column: 28, scope: !4095)
!4102 = !DILocation(line: 111, column: 7, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4095, file: !643, line: 111, column: 7)
!4104 = !DILocation(line: 111, column: 7, scope: !4095)
!4105 = !DILocation(line: 112, column: 5, scope: !4103)
!4106 = !DILocation(line: 113, column: 19, scope: !4095)
!4107 = !DILocation(line: 113, column: 23, scope: !4095)
!4108 = !DILocation(line: 113, column: 21, scope: !4095)
!4109 = !DILocation(line: 113, column: 10, scope: !4095)
!4110 = !DILocation(line: 113, column: 3, scope: !4095)
!4111 = distinct !DISubprogram(name: "xmalloc", scope: !640, file: !640, line: 41, type: !4112, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: false, unit: !639, variables: !113)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{!55, !172}
!4114 = !DILocalVariable(name: "n", arg: 1, scope: !4111, file: !640, line: 41, type: !172)
!4115 = !DILocation(line: 41, column: 17, scope: !4111)
!4116 = !DILocalVariable(name: "p", scope: !4111, file: !640, line: 43, type: !55)
!4117 = !DILocation(line: 43, column: 9, scope: !4111)
!4118 = !DILocation(line: 43, column: 21, scope: !4111)
!4119 = !DILocation(line: 43, column: 13, scope: !4111)
!4120 = !DILocation(line: 44, column: 8, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4111, file: !640, line: 44, column: 7)
!4122 = !DILocation(line: 44, column: 10, scope: !4121)
!4123 = !DILocation(line: 44, column: 13, scope: !4121)
!4124 = !DILocation(line: 44, column: 15, scope: !4121)
!4125 = !DILocation(line: 44, column: 7, scope: !4111)
!4126 = !DILocation(line: 45, column: 5, scope: !4121)
!4127 = !DILocation(line: 46, column: 10, scope: !4111)
!4128 = !DILocation(line: 46, column: 3, scope: !4111)
!4129 = distinct !DISubprogram(name: "xnrealloc", scope: !643, file: !643, line: 122, type: !4130, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: false, unit: !639, variables: !113)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{!55, !55, !172, !172}
!4132 = !DILocalVariable(name: "p", arg: 1, scope: !4129, file: !643, line: 122, type: !55)
!4133 = !DILocation(line: 122, column: 18, scope: !4129)
!4134 = !DILocalVariable(name: "n", arg: 2, scope: !4129, file: !643, line: 122, type: !172)
!4135 = !DILocation(line: 122, column: 28, scope: !4129)
!4136 = !DILocalVariable(name: "s", arg: 3, scope: !4129, file: !643, line: 122, type: !172)
!4137 = !DILocation(line: 122, column: 38, scope: !4129)
!4138 = !DILocation(line: 124, column: 7, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !4129, file: !643, line: 124, column: 7)
!4140 = !DILocation(line: 124, column: 7, scope: !4129)
!4141 = !DILocation(line: 125, column: 5, scope: !4139)
!4142 = !DILocation(line: 126, column: 20, scope: !4129)
!4143 = !DILocation(line: 126, column: 23, scope: !4129)
!4144 = !DILocation(line: 126, column: 27, scope: !4129)
!4145 = !DILocation(line: 126, column: 25, scope: !4129)
!4146 = !DILocation(line: 126, column: 10, scope: !4129)
!4147 = !DILocation(line: 126, column: 3, scope: !4129)
!4148 = distinct !DISubprogram(name: "xrealloc", scope: !640, file: !640, line: 53, type: !4149, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: false, unit: !639, variables: !113)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{!55, !55, !172}
!4151 = !DILocalVariable(name: "p", arg: 1, scope: !4148, file: !640, line: 53, type: !55)
!4152 = !DILocation(line: 53, column: 17, scope: !4148)
!4153 = !DILocalVariable(name: "n", arg: 2, scope: !4148, file: !640, line: 53, type: !172)
!4154 = !DILocation(line: 53, column: 27, scope: !4148)
!4155 = !DILocation(line: 55, column: 8, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4148, file: !640, line: 55, column: 7)
!4157 = !DILocation(line: 55, column: 10, scope: !4156)
!4158 = !DILocation(line: 55, column: 13, scope: !4156)
!4159 = !DILocation(line: 55, column: 7, scope: !4148)
!4160 = !DILocation(line: 59, column: 13, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4156, file: !640, line: 56, column: 5)
!4162 = !DILocation(line: 59, column: 7, scope: !4161)
!4163 = !DILocation(line: 60, column: 7, scope: !4161)
!4164 = !DILocation(line: 63, column: 16, scope: !4148)
!4165 = !DILocation(line: 63, column: 19, scope: !4148)
!4166 = !DILocation(line: 63, column: 7, scope: !4148)
!4167 = !DILocation(line: 63, column: 5, scope: !4148)
!4168 = !DILocation(line: 64, column: 8, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4148, file: !640, line: 64, column: 7)
!4170 = !DILocation(line: 64, column: 10, scope: !4169)
!4171 = !DILocation(line: 64, column: 13, scope: !4169)
!4172 = !DILocation(line: 64, column: 7, scope: !4148)
!4173 = !DILocation(line: 65, column: 5, scope: !4169)
!4174 = !DILocation(line: 66, column: 10, scope: !4148)
!4175 = !DILocation(line: 66, column: 3, scope: !4148)
!4176 = !DILocation(line: 67, column: 1, scope: !4148)
!4177 = !DILocalVariable(name: "p", arg: 1, scope: !644, file: !643, line: 185, type: !55)
!4178 = !DILocation(line: 185, column: 19, scope: !644)
!4179 = !DILocalVariable(name: "pn", arg: 2, scope: !644, file: !643, line: 185, type: !647)
!4180 = !DILocation(line: 185, column: 30, scope: !644)
!4181 = !DILocalVariable(name: "s", arg: 3, scope: !644, file: !643, line: 185, type: !172)
!4182 = !DILocation(line: 185, column: 41, scope: !644)
!4183 = !DILocalVariable(name: "n", scope: !644, file: !643, line: 187, type: !172)
!4184 = !DILocation(line: 187, column: 10, scope: !644)
!4185 = !DILocation(line: 187, column: 15, scope: !644)
!4186 = !DILocation(line: 187, column: 14, scope: !644)
!4187 = !DILocation(line: 189, column: 9, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !644, file: !643, line: 189, column: 7)
!4189 = !DILocation(line: 189, column: 7, scope: !644)
!4190 = !DILocation(line: 191, column: 13, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4192, file: !643, line: 191, column: 11)
!4192 = distinct !DILexicalBlock(scope: !4188, file: !643, line: 190, column: 5)
!4193 = !DILocation(line: 191, column: 11, scope: !4192)
!4194 = !DILocation(line: 199, column: 32, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !4191, file: !643, line: 192, column: 9)
!4196 = !DILocation(line: 199, column: 30, scope: !4195)
!4197 = !DILocation(line: 199, column: 13, scope: !4195)
!4198 = !DILocation(line: 200, column: 17, scope: !4195)
!4199 = !DILocation(line: 200, column: 16, scope: !4195)
!4200 = !DILocation(line: 200, column: 13, scope: !4195)
!4201 = !DILocation(line: 201, column: 9, scope: !4195)
!4202 = !DILocation(line: 202, column: 5, scope: !4192)
!4203 = !DILocation(line: 209, column: 33, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4205, file: !643, line: 209, column: 11)
!4205 = distinct !DILexicalBlock(scope: !4188, file: !643, line: 204, column: 5)
!4206 = !DILocation(line: 209, column: 31, scope: !4204)
!4207 = !DILocation(line: 209, column: 38, scope: !4204)
!4208 = !DILocation(line: 209, column: 35, scope: !4204)
!4209 = !DILocation(line: 209, column: 11, scope: !4205)
!4210 = !DILocation(line: 210, column: 9, scope: !4204)
!4211 = !DILocation(line: 211, column: 13, scope: !4205)
!4212 = !DILocation(line: 211, column: 15, scope: !4205)
!4213 = !DILocation(line: 211, column: 20, scope: !4205)
!4214 = !DILocation(line: 211, column: 9, scope: !4205)
!4215 = !DILocation(line: 214, column: 9, scope: !644)
!4216 = !DILocation(line: 214, column: 4, scope: !644)
!4217 = !DILocation(line: 214, column: 7, scope: !644)
!4218 = !DILocation(line: 215, column: 20, scope: !644)
!4219 = !DILocation(line: 215, column: 23, scope: !644)
!4220 = !DILocation(line: 215, column: 27, scope: !644)
!4221 = !DILocation(line: 215, column: 25, scope: !644)
!4222 = !DILocation(line: 215, column: 10, scope: !644)
!4223 = !DILocation(line: 215, column: 3, scope: !644)
!4224 = distinct !DISubprogram(name: "xcharalloc", scope: !643, file: !643, line: 224, type: !4225, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: false, unit: !639, variables: !113)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{!60, !172}
!4227 = !DILocalVariable(name: "n", arg: 1, scope: !4224, file: !643, line: 224, type: !172)
!4228 = !DILocation(line: 224, column: 20, scope: !4224)
!4229 = !DILocation(line: 226, column: 10, scope: !4224)
!4230 = !DILocation(line: 226, column: 3, scope: !4224)
!4231 = distinct !DISubprogram(name: "x2realloc", scope: !640, file: !640, line: 76, type: !4232, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: false, unit: !639, variables: !113)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!55, !55, !647}
!4234 = !DILocalVariable(name: "p", arg: 1, scope: !4231, file: !640, line: 76, type: !55)
!4235 = !DILocation(line: 76, column: 18, scope: !4231)
!4236 = !DILocalVariable(name: "pn", arg: 2, scope: !4231, file: !640, line: 76, type: !647)
!4237 = !DILocation(line: 76, column: 29, scope: !4231)
!4238 = !DILocation(line: 78, column: 22, scope: !4231)
!4239 = !DILocation(line: 78, column: 25, scope: !4231)
!4240 = !DILocation(line: 78, column: 10, scope: !4231)
!4241 = !DILocation(line: 78, column: 3, scope: !4231)
!4242 = distinct !DISubprogram(name: "xzalloc", scope: !640, file: !640, line: 86, type: !4112, isLocal: false, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: false, unit: !639, variables: !113)
!4243 = !DILocalVariable(name: "s", arg: 1, scope: !4242, file: !640, line: 86, type: !172)
!4244 = !DILocation(line: 86, column: 17, scope: !4242)
!4245 = !DILocation(line: 88, column: 27, scope: !4242)
!4246 = !DILocation(line: 88, column: 18, scope: !4242)
!4247 = !DILocation(line: 88, column: 34, scope: !4242)
!4248 = !DILocation(line: 88, column: 10, scope: !4242)
!4249 = !DILocation(line: 88, column: 3, scope: !4242)
!4250 = distinct !DISubprogram(name: "xcalloc", scope: !640, file: !640, line: 95, type: !4096, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: false, unit: !639, variables: !113)
!4251 = !DILocalVariable(name: "n", arg: 1, scope: !4250, file: !640, line: 95, type: !172)
!4252 = !DILocation(line: 95, column: 17, scope: !4250)
!4253 = !DILocalVariable(name: "s", arg: 2, scope: !4250, file: !640, line: 95, type: !172)
!4254 = !DILocation(line: 95, column: 27, scope: !4250)
!4255 = !DILocalVariable(name: "p", scope: !4250, file: !640, line: 97, type: !55)
!4256 = !DILocation(line: 97, column: 9, scope: !4250)
!4257 = !DILocation(line: 103, column: 26, scope: !4258)
!4258 = distinct !DILexicalBlock(scope: !4250, file: !640, line: 102, column: 7)
!4259 = !DILocation(line: 103, column: 29, scope: !4258)
!4260 = !DILocation(line: 103, column: 18, scope: !4258)
!4261 = !DILocation(line: 103, column: 16, scope: !4258)
!4262 = !DILocation(line: 102, column: 7, scope: !4250)
!4263 = !DILocation(line: 104, column: 5, scope: !4258)
!4264 = !DILocation(line: 105, column: 10, scope: !4250)
!4265 = !DILocation(line: 105, column: 3, scope: !4250)
!4266 = distinct !DISubprogram(name: "xmemdup", scope: !640, file: !640, line: 113, type: !4267, isLocal: false, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: false, unit: !639, variables: !113)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!55, !2217, !172}
!4269 = !DILocalVariable(name: "p", arg: 1, scope: !4266, file: !640, line: 113, type: !2217)
!4270 = !DILocation(line: 113, column: 22, scope: !4266)
!4271 = !DILocalVariable(name: "s", arg: 2, scope: !4266, file: !640, line: 113, type: !172)
!4272 = !DILocation(line: 113, column: 32, scope: !4266)
!4273 = !DILocation(line: 115, column: 27, scope: !4266)
!4274 = !DILocation(line: 115, column: 18, scope: !4266)
!4275 = !DILocation(line: 115, column: 31, scope: !4266)
!4276 = !DILocation(line: 115, column: 34, scope: !4266)
!4277 = !DILocation(line: 115, column: 10, scope: !4266)
!4278 = !DILocation(line: 115, column: 3, scope: !4266)
!4279 = distinct !DISubprogram(name: "xstrdup", scope: !640, file: !640, line: 121, type: !1693, isLocal: false, isDefinition: true, scopeLine: 122, flags: DIFlagPrototyped, isOptimized: false, unit: !639, variables: !113)
!4280 = !DILocalVariable(name: "string", arg: 1, scope: !4279, file: !640, line: 121, type: !52)
!4281 = !DILocation(line: 121, column: 22, scope: !4279)
!4282 = !DILocation(line: 123, column: 19, scope: !4279)
!4283 = !DILocation(line: 123, column: 35, scope: !4279)
!4284 = !DILocation(line: 123, column: 27, scope: !4279)
!4285 = !DILocation(line: 123, column: 43, scope: !4279)
!4286 = !DILocation(line: 123, column: 10, scope: !4279)
!4287 = !DILocation(line: 123, column: 3, scope: !4279)
!4288 = distinct !DISubprogram(name: "xalloc_die", scope: !652, file: !652, line: 32, type: !137, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false, unit: !651, variables: !113)
!4289 = !DILocation(line: 34, column: 10, scope: !4288)
!4290 = !DILocation(line: 34, column: 3, scope: !4288)
!4291 = !DILocation(line: 40, column: 3, scope: !4288)
!4292 = !DILocation(line: 41, column: 1, scope: !4288)
!4293 = distinct !DISubprogram(name: "xmemcoll", scope: !654, file: !654, line: 54, type: !4294, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: false, unit: !653, variables: !113)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{!61, !60, !172, !60, !172}
!4296 = !DILocalVariable(name: "s1", arg: 1, scope: !4293, file: !654, line: 54, type: !60)
!4297 = !DILocation(line: 54, column: 17, scope: !4293)
!4298 = !DILocalVariable(name: "s1len", arg: 2, scope: !4293, file: !654, line: 54, type: !172)
!4299 = !DILocation(line: 54, column: 28, scope: !4293)
!4300 = !DILocalVariable(name: "s2", arg: 3, scope: !4293, file: !654, line: 54, type: !60)
!4301 = !DILocation(line: 54, column: 41, scope: !4293)
!4302 = !DILocalVariable(name: "s2len", arg: 4, scope: !4293, file: !654, line: 54, type: !172)
!4303 = !DILocation(line: 54, column: 52, scope: !4293)
!4304 = !DILocalVariable(name: "diff", scope: !4293, file: !654, line: 56, type: !61)
!4305 = !DILocation(line: 56, column: 7, scope: !4293)
!4306 = !DILocation(line: 56, column: 23, scope: !4293)
!4307 = !DILocation(line: 56, column: 27, scope: !4293)
!4308 = !DILocation(line: 56, column: 34, scope: !4293)
!4309 = !DILocation(line: 56, column: 38, scope: !4293)
!4310 = !DILocation(line: 56, column: 14, scope: !4293)
!4311 = !DILocalVariable(name: "collation_errno", scope: !4293, file: !654, line: 57, type: !61)
!4312 = !DILocation(line: 57, column: 7, scope: !4293)
!4313 = !DILocation(line: 57, column: 25, scope: !4293)
!4314 = !DILocation(line: 58, column: 7, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4293, file: !654, line: 58, column: 7)
!4316 = !DILocation(line: 58, column: 7, scope: !4293)
!4317 = !DILocation(line: 59, column: 20, scope: !4315)
!4318 = !DILocation(line: 59, column: 37, scope: !4315)
!4319 = !DILocation(line: 59, column: 41, scope: !4315)
!4320 = !DILocation(line: 59, column: 48, scope: !4315)
!4321 = !DILocation(line: 59, column: 52, scope: !4315)
!4322 = !DILocation(line: 59, column: 5, scope: !4315)
!4323 = !DILocation(line: 60, column: 10, scope: !4293)
!4324 = !DILocation(line: 60, column: 3, scope: !4293)
!4325 = distinct !DISubprogram(name: "collate_error", scope: !654, file: !654, line: 35, type: !4326, isLocal: true, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: false, unit: !653, variables: !113)
!4326 = !DISubroutineType(types: !4327)
!4327 = !{null, !61, !52, !172, !52, !172}
!4328 = !DILocalVariable(name: "collation_errno", arg: 1, scope: !4325, file: !654, line: 35, type: !61)
!4329 = !DILocation(line: 35, column: 20, scope: !4325)
!4330 = !DILocalVariable(name: "s1", arg: 2, scope: !4325, file: !654, line: 36, type: !52)
!4331 = !DILocation(line: 36, column: 28, scope: !4325)
!4332 = !DILocalVariable(name: "s1len", arg: 3, scope: !4325, file: !654, line: 36, type: !172)
!4333 = !DILocation(line: 36, column: 39, scope: !4325)
!4334 = !DILocalVariable(name: "s2", arg: 4, scope: !4325, file: !654, line: 37, type: !52)
!4335 = !DILocation(line: 37, column: 28, scope: !4325)
!4336 = !DILocalVariable(name: "s2len", arg: 5, scope: !4325, file: !654, line: 37, type: !172)
!4337 = !DILocation(line: 37, column: 39, scope: !4325)
!4338 = !DILocation(line: 39, column: 13, scope: !4325)
!4339 = !DILocation(line: 39, column: 3, scope: !4325)
!4340 = !DILocation(line: 40, column: 3, scope: !4325)
!4341 = !DILocation(line: 41, column: 10, scope: !4325)
!4342 = !DILocation(line: 43, column: 57, scope: !4325)
!4343 = !DILocation(line: 43, column: 61, scope: !4325)
!4344 = !DILocation(line: 43, column: 10, scope: !4325)
!4345 = !DILocation(line: 44, column: 57, scope: !4325)
!4346 = !DILocation(line: 44, column: 61, scope: !4325)
!4347 = !DILocation(line: 44, column: 10, scope: !4325)
!4348 = !DILocation(line: 41, column: 3, scope: !4325)
!4349 = !DILocation(line: 45, column: 1, scope: !4325)
!4350 = distinct !DISubprogram(name: "xmemcoll0", scope: !654, file: !654, line: 69, type: !4351, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: false, unit: !653, variables: !113)
!4351 = !DISubroutineType(types: !4352)
!4352 = !{!61, !52, !172, !52, !172}
!4353 = !DILocalVariable(name: "s1", arg: 1, scope: !4350, file: !654, line: 69, type: !52)
!4354 = !DILocation(line: 69, column: 24, scope: !4350)
!4355 = !DILocalVariable(name: "s1size", arg: 2, scope: !4350, file: !654, line: 69, type: !172)
!4356 = !DILocation(line: 69, column: 35, scope: !4350)
!4357 = !DILocalVariable(name: "s2", arg: 3, scope: !4350, file: !654, line: 69, type: !52)
!4358 = !DILocation(line: 69, column: 55, scope: !4350)
!4359 = !DILocalVariable(name: "s2size", arg: 4, scope: !4350, file: !654, line: 69, type: !172)
!4360 = !DILocation(line: 69, column: 66, scope: !4350)
!4361 = !DILocalVariable(name: "diff", scope: !4350, file: !654, line: 71, type: !61)
!4362 = !DILocation(line: 71, column: 7, scope: !4350)
!4363 = !DILocation(line: 71, column: 24, scope: !4350)
!4364 = !DILocation(line: 71, column: 28, scope: !4350)
!4365 = !DILocation(line: 71, column: 36, scope: !4350)
!4366 = !DILocation(line: 71, column: 40, scope: !4350)
!4367 = !DILocation(line: 71, column: 14, scope: !4350)
!4368 = !DILocalVariable(name: "collation_errno", scope: !4350, file: !654, line: 72, type: !61)
!4369 = !DILocation(line: 72, column: 7, scope: !4350)
!4370 = !DILocation(line: 72, column: 25, scope: !4350)
!4371 = !DILocation(line: 73, column: 7, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4350, file: !654, line: 73, column: 7)
!4373 = !DILocation(line: 73, column: 7, scope: !4350)
!4374 = !DILocation(line: 74, column: 20, scope: !4372)
!4375 = !DILocation(line: 74, column: 37, scope: !4372)
!4376 = !DILocation(line: 74, column: 41, scope: !4372)
!4377 = !DILocation(line: 74, column: 48, scope: !4372)
!4378 = !DILocation(line: 74, column: 53, scope: !4372)
!4379 = !DILocation(line: 74, column: 57, scope: !4372)
!4380 = !DILocation(line: 74, column: 64, scope: !4372)
!4381 = !DILocation(line: 74, column: 5, scope: !4372)
!4382 = !DILocation(line: 75, column: 10, scope: !4350)
!4383 = !DILocation(line: 75, column: 3, scope: !4350)
!4384 = distinct !DISubprogram(name: "xstrtoul", scope: !4385, file: !4385, line: 88, type: !4386, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: false, unit: !655, variables: !113)
!4385 = !DIFile(filename: "../../lib/xstrtol.c", directory: "/home/ma481/Downloads/Chisel/chisel-bench/benchmark/uniq-8.16/original/obj-llvm/lib")
!4386 = !DISubroutineType(types: !4387)
!4387 = !{!4388, !52, !744, !61, !4389, !52}
!4388 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !659, line: 39, baseType: !658)
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!4390 = !DILocalVariable(name: "s", arg: 1, scope: !4384, file: !4385, line: 88, type: !52)
!4391 = !DILocation(line: 88, column: 24, scope: !4384)
!4392 = !DILocalVariable(name: "ptr", arg: 2, scope: !4384, file: !4385, line: 88, type: !744)
!4393 = !DILocation(line: 88, column: 34, scope: !4384)
!4394 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !4384, file: !4385, line: 88, type: !61)
!4395 = !DILocation(line: 88, column: 43, scope: !4384)
!4396 = !DILocalVariable(name: "val", arg: 4, scope: !4384, file: !4385, line: 89, type: !4389)
!4397 = !DILocation(line: 89, column: 24, scope: !4384)
!4398 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4384, file: !4385, line: 89, type: !52)
!4399 = !DILocation(line: 89, column: 41, scope: !4384)
!4400 = !DILocalVariable(name: "t_ptr", scope: !4384, file: !4385, line: 91, type: !60)
!4401 = !DILocation(line: 91, column: 9, scope: !4384)
!4402 = !DILocalVariable(name: "p", scope: !4384, file: !4385, line: 92, type: !744)
!4403 = !DILocation(line: 92, column: 10, scope: !4384)
!4404 = !DILocalVariable(name: "tmp", scope: !4384, file: !4385, line: 93, type: !59)
!4405 = !DILocation(line: 93, column: 14, scope: !4384)
!4406 = !DILocalVariable(name: "err", scope: !4384, file: !4385, line: 94, type: !4388)
!4407 = !DILocation(line: 94, column: 16, scope: !4384)
!4408 = !DILocation(line: 96, column: 3, scope: !4409)
!4409 = distinct !DILexicalBlock(scope: !4410, file: !4385, line: 96, column: 3)
!4410 = distinct !DILexicalBlock(scope: !4384, file: !4385, line: 96, column: 3)
!4411 = !DILocation(line: 96, column: 3, scope: !4410)
!4412 = !DILocation(line: 98, column: 8, scope: !4384)
!4413 = !DILocation(line: 98, column: 14, scope: !4384)
!4414 = !DILocation(line: 98, column: 5, scope: !4384)
!4415 = !DILocalVariable(name: "q", scope: !4416, file: !4385, line: 102, type: !52)
!4416 = distinct !DILexicalBlock(scope: !4417, file: !4385, line: 101, column: 5)
!4417 = distinct !DILexicalBlock(scope: !4384, file: !4385, line: 100, column: 7)
!4418 = !DILocation(line: 102, column: 19, scope: !4416)
!4419 = !DILocation(line: 102, column: 23, scope: !4416)
!4420 = !DILocalVariable(name: "ch", scope: !4416, file: !4385, line: 103, type: !673)
!4421 = !DILocation(line: 103, column: 21, scope: !4416)
!4422 = !DILocation(line: 103, column: 27, scope: !4416)
!4423 = !DILocation(line: 103, column: 26, scope: !4416)
!4424 = !DILocation(line: 104, column: 7, scope: !4416)
!4425 = !DILocation(line: 104, column: 14, scope: !4416)
!4426 = !DILocation(line: 105, column: 15, scope: !4416)
!4427 = !DILocation(line: 105, column: 14, scope: !4416)
!4428 = !DILocation(line: 105, column: 12, scope: !4416)
!4429 = distinct !{!4429, !4424, !4430}
!4430 = !DILocation(line: 105, column: 17, scope: !4416)
!4431 = !DILocation(line: 106, column: 11, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4416, file: !4385, line: 106, column: 11)
!4433 = !DILocation(line: 106, column: 14, scope: !4432)
!4434 = !DILocation(line: 106, column: 11, scope: !4416)
!4435 = !DILocation(line: 107, column: 9, scope: !4432)
!4436 = !DILocation(line: 110, column: 3, scope: !4384)
!4437 = !DILocation(line: 110, column: 9, scope: !4384)
!4438 = !DILocation(line: 111, column: 19, scope: !4384)
!4439 = !DILocation(line: 111, column: 22, scope: !4384)
!4440 = !DILocation(line: 111, column: 25, scope: !4384)
!4441 = !DILocation(line: 111, column: 9, scope: !4384)
!4442 = !DILocation(line: 111, column: 7, scope: !4384)
!4443 = !DILocation(line: 113, column: 8, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !4384, file: !4385, line: 113, column: 7)
!4445 = !DILocation(line: 113, column: 7, scope: !4444)
!4446 = !DILocation(line: 113, column: 13, scope: !4444)
!4447 = !DILocation(line: 113, column: 10, scope: !4444)
!4448 = !DILocation(line: 113, column: 7, scope: !4384)
!4449 = !DILocation(line: 117, column: 11, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4451, file: !4385, line: 117, column: 11)
!4451 = distinct !DILexicalBlock(scope: !4444, file: !4385, line: 114, column: 5)
!4452 = !DILocation(line: 117, column: 26, scope: !4450)
!4453 = !DILocation(line: 117, column: 31, scope: !4450)
!4454 = !DILocation(line: 117, column: 30, scope: !4450)
!4455 = !DILocation(line: 117, column: 29, scope: !4450)
!4456 = !DILocation(line: 117, column: 33, scope: !4450)
!4457 = !DILocation(line: 117, column: 44, scope: !4450)
!4458 = !DILocation(line: 117, column: 62, scope: !4450)
!4459 = !DILocation(line: 117, column: 61, scope: !4450)
!4460 = !DILocation(line: 117, column: 60, scope: !4450)
!4461 = !DILocation(line: 117, column: 36, scope: !4450)
!4462 = !DILocation(line: 117, column: 11, scope: !4451)
!4463 = !DILocation(line: 118, column: 13, scope: !4450)
!4464 = !DILocation(line: 118, column: 9, scope: !4450)
!4465 = !DILocation(line: 120, column: 9, scope: !4450)
!4466 = !DILocation(line: 121, column: 5, scope: !4451)
!4467 = !DILocation(line: 122, column: 12, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4444, file: !4385, line: 122, column: 12)
!4469 = !DILocation(line: 122, column: 18, scope: !4468)
!4470 = !DILocation(line: 122, column: 12, scope: !4444)
!4471 = !DILocation(line: 124, column: 11, scope: !4472)
!4472 = distinct !DILexicalBlock(scope: !4473, file: !4385, line: 124, column: 11)
!4473 = distinct !DILexicalBlock(scope: !4468, file: !4385, line: 123, column: 5)
!4474 = !DILocation(line: 124, column: 17, scope: !4472)
!4475 = !DILocation(line: 124, column: 11, scope: !4473)
!4476 = !DILocation(line: 125, column: 9, scope: !4472)
!4477 = !DILocation(line: 126, column: 11, scope: !4473)
!4478 = !DILocation(line: 127, column: 5, scope: !4473)
!4479 = !DILocation(line: 132, column: 8, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4384, file: !4385, line: 132, column: 7)
!4481 = !DILocation(line: 132, column: 7, scope: !4384)
!4482 = !DILocation(line: 134, column: 14, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4480, file: !4385, line: 133, column: 5)
!4484 = !DILocation(line: 134, column: 8, scope: !4483)
!4485 = !DILocation(line: 134, column: 12, scope: !4483)
!4486 = !DILocation(line: 135, column: 14, scope: !4483)
!4487 = !DILocation(line: 135, column: 7, scope: !4483)
!4488 = !DILocation(line: 138, column: 9, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4384, file: !4385, line: 138, column: 7)
!4490 = !DILocation(line: 138, column: 8, scope: !4489)
!4491 = !DILocation(line: 138, column: 7, scope: !4489)
!4492 = !DILocation(line: 138, column: 11, scope: !4489)
!4493 = !DILocation(line: 138, column: 7, scope: !4384)
!4494 = !DILocalVariable(name: "base", scope: !4495, file: !4385, line: 140, type: !61)
!4495 = distinct !DILexicalBlock(scope: !4489, file: !4385, line: 139, column: 5)
!4496 = !DILocation(line: 140, column: 11, scope: !4495)
!4497 = !DILocalVariable(name: "suffixes", scope: !4495, file: !4385, line: 141, type: !61)
!4498 = !DILocation(line: 141, column: 11, scope: !4495)
!4499 = !DILocalVariable(name: "overflow", scope: !4495, file: !4385, line: 142, type: !4388)
!4500 = !DILocation(line: 142, column: 20, scope: !4495)
!4501 = !DILocation(line: 144, column: 20, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4495, file: !4385, line: 144, column: 11)
!4503 = !DILocation(line: 144, column: 38, scope: !4502)
!4504 = !DILocation(line: 144, column: 37, scope: !4502)
!4505 = !DILocation(line: 144, column: 36, scope: !4502)
!4506 = !DILocation(line: 144, column: 12, scope: !4502)
!4507 = !DILocation(line: 144, column: 11, scope: !4495)
!4508 = !DILocation(line: 146, column: 18, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4502, file: !4385, line: 145, column: 9)
!4510 = !DILocation(line: 146, column: 12, scope: !4509)
!4511 = !DILocation(line: 146, column: 16, scope: !4509)
!4512 = !DILocation(line: 147, column: 18, scope: !4509)
!4513 = !DILocation(line: 147, column: 22, scope: !4509)
!4514 = !DILocation(line: 147, column: 11, scope: !4509)
!4515 = !DILocation(line: 150, column: 19, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4495, file: !4385, line: 150, column: 11)
!4517 = !DILocation(line: 150, column: 11, scope: !4516)
!4518 = !DILocation(line: 150, column: 11, scope: !4495)
!4519 = !DILocation(line: 159, column: 19, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4516, file: !4385, line: 151, column: 9)
!4521 = !DILocation(line: 159, column: 11, scope: !4520)
!4522 = !DILocation(line: 162, column: 19, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4524, file: !4385, line: 162, column: 19)
!4524 = distinct !DILexicalBlock(scope: !4520, file: !4385, line: 160, column: 13)
!4525 = !DILocation(line: 162, column: 27, scope: !4523)
!4526 = !DILocation(line: 162, column: 19, scope: !4524)
!4527 = !DILocation(line: 163, column: 26, scope: !4523)
!4528 = !DILocation(line: 163, column: 17, scope: !4523)
!4529 = !DILocation(line: 164, column: 15, scope: !4524)
!4530 = !DILocation(line: 168, column: 20, scope: !4524)
!4531 = !DILocation(line: 169, column: 23, scope: !4524)
!4532 = !DILocation(line: 170, column: 15, scope: !4524)
!4533 = !DILocation(line: 172, column: 9, scope: !4520)
!4534 = !DILocation(line: 174, column: 17, scope: !4495)
!4535 = !DILocation(line: 174, column: 16, scope: !4495)
!4536 = !DILocation(line: 174, column: 15, scope: !4495)
!4537 = !DILocation(line: 174, column: 7, scope: !4495)
!4538 = !DILocation(line: 177, column: 22, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4495, file: !4385, line: 175, column: 9)
!4540 = !DILocation(line: 177, column: 20, scope: !4539)
!4541 = !DILocation(line: 178, column: 11, scope: !4539)
!4542 = !DILocation(line: 181, column: 22, scope: !4539)
!4543 = !DILocation(line: 181, column: 20, scope: !4539)
!4544 = !DILocation(line: 182, column: 11, scope: !4539)
!4545 = !DILocation(line: 185, column: 20, scope: !4539)
!4546 = !DILocation(line: 186, column: 11, scope: !4539)
!4547 = !DILocation(line: 189, column: 48, scope: !4539)
!4548 = !DILocation(line: 189, column: 22, scope: !4539)
!4549 = !DILocation(line: 189, column: 20, scope: !4539)
!4550 = !DILocation(line: 190, column: 11, scope: !4539)
!4551 = !DILocation(line: 194, column: 48, scope: !4539)
!4552 = !DILocation(line: 194, column: 22, scope: !4539)
!4553 = !DILocation(line: 194, column: 20, scope: !4539)
!4554 = !DILocation(line: 195, column: 11, scope: !4539)
!4555 = !DILocation(line: 199, column: 48, scope: !4539)
!4556 = !DILocation(line: 199, column: 22, scope: !4539)
!4557 = !DILocation(line: 199, column: 20, scope: !4539)
!4558 = !DILocation(line: 200, column: 11, scope: !4539)
!4559 = !DILocation(line: 204, column: 48, scope: !4539)
!4560 = !DILocation(line: 204, column: 22, scope: !4539)
!4561 = !DILocation(line: 204, column: 20, scope: !4539)
!4562 = !DILocation(line: 205, column: 11, scope: !4539)
!4563 = !DILocation(line: 208, column: 48, scope: !4539)
!4564 = !DILocation(line: 208, column: 22, scope: !4539)
!4565 = !DILocation(line: 208, column: 20, scope: !4539)
!4566 = !DILocation(line: 209, column: 11, scope: !4539)
!4567 = !DILocation(line: 213, column: 48, scope: !4539)
!4568 = !DILocation(line: 213, column: 22, scope: !4539)
!4569 = !DILocation(line: 213, column: 20, scope: !4539)
!4570 = !DILocation(line: 214, column: 11, scope: !4539)
!4571 = !DILocation(line: 217, column: 22, scope: !4539)
!4572 = !DILocation(line: 217, column: 20, scope: !4539)
!4573 = !DILocation(line: 218, column: 11, scope: !4539)
!4574 = !DILocation(line: 221, column: 48, scope: !4539)
!4575 = !DILocation(line: 221, column: 22, scope: !4539)
!4576 = !DILocation(line: 221, column: 20, scope: !4539)
!4577 = !DILocation(line: 222, column: 11, scope: !4539)
!4578 = !DILocation(line: 225, column: 48, scope: !4539)
!4579 = !DILocation(line: 225, column: 22, scope: !4539)
!4580 = !DILocation(line: 225, column: 20, scope: !4539)
!4581 = !DILocation(line: 226, column: 11, scope: !4539)
!4582 = !DILocation(line: 229, column: 18, scope: !4539)
!4583 = !DILocation(line: 229, column: 12, scope: !4539)
!4584 = !DILocation(line: 229, column: 16, scope: !4539)
!4585 = !DILocation(line: 230, column: 18, scope: !4539)
!4586 = !DILocation(line: 230, column: 22, scope: !4539)
!4587 = !DILocation(line: 230, column: 11, scope: !4539)
!4588 = !DILocation(line: 233, column: 14, scope: !4495)
!4589 = !DILocation(line: 233, column: 11, scope: !4495)
!4590 = !DILocation(line: 234, column: 13, scope: !4495)
!4591 = !DILocation(line: 234, column: 8, scope: !4495)
!4592 = !DILocation(line: 234, column: 10, scope: !4495)
!4593 = !DILocation(line: 235, column: 13, scope: !4594)
!4594 = distinct !DILexicalBlock(scope: !4495, file: !4385, line: 235, column: 11)
!4595 = !DILocation(line: 235, column: 12, scope: !4594)
!4596 = !DILocation(line: 235, column: 11, scope: !4594)
!4597 = !DILocation(line: 235, column: 11, scope: !4495)
!4598 = !DILocation(line: 236, column: 13, scope: !4594)
!4599 = !DILocation(line: 236, column: 9, scope: !4594)
!4600 = !DILocation(line: 237, column: 5, scope: !4495)
!4601 = !DILocation(line: 239, column: 10, scope: !4384)
!4602 = !DILocation(line: 239, column: 4, scope: !4384)
!4603 = !DILocation(line: 239, column: 8, scope: !4384)
!4604 = !DILocation(line: 240, column: 10, scope: !4384)
!4605 = !DILocation(line: 240, column: 3, scope: !4384)
!4606 = !DILocation(line: 241, column: 1, scope: !4384)
!4607 = distinct !DISubprogram(name: "bkm_scale", scope: !4385, file: !4385, line: 60, type: !4608, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: false, unit: !655, variables: !113)
!4608 = !DISubroutineType(types: !4609)
!4609 = !{!4388, !4389, !61}
!4610 = !DILocalVariable(name: "x", arg: 1, scope: !4607, file: !4385, line: 60, type: !4389)
!4611 = !DILocation(line: 60, column: 24, scope: !4607)
!4612 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4607, file: !4385, line: 60, type: !61)
!4613 = !DILocation(line: 60, column: 31, scope: !4607)
!4614 = !DILocation(line: 67, column: 26, scope: !4615)
!4615 = distinct !DILexicalBlock(scope: !4607, file: !4385, line: 67, column: 7)
!4616 = !DILocation(line: 67, column: 24, scope: !4615)
!4617 = !DILocation(line: 67, column: 42, scope: !4615)
!4618 = !DILocation(line: 67, column: 41, scope: !4615)
!4619 = !DILocation(line: 67, column: 39, scope: !4615)
!4620 = !DILocation(line: 67, column: 7, scope: !4607)
!4621 = !DILocation(line: 69, column: 8, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4615, file: !4385, line: 68, column: 5)
!4623 = !DILocation(line: 69, column: 10, scope: !4622)
!4624 = !DILocation(line: 70, column: 7, scope: !4622)
!4625 = !DILocation(line: 72, column: 9, scope: !4607)
!4626 = !DILocation(line: 72, column: 4, scope: !4607)
!4627 = !DILocation(line: 72, column: 6, scope: !4607)
!4628 = !DILocation(line: 73, column: 3, scope: !4607)
!4629 = !DILocation(line: 74, column: 1, scope: !4607)
!4630 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4385, file: !4385, line: 77, type: !4631, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: false, unit: !655, variables: !113)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{!4388, !4389, !61, !61}
!4633 = !DILocalVariable(name: "x", arg: 1, scope: !4630, file: !4385, line: 77, type: !4389)
!4634 = !DILocation(line: 77, column: 33, scope: !4630)
!4635 = !DILocalVariable(name: "base", arg: 2, scope: !4630, file: !4385, line: 77, type: !61)
!4636 = !DILocation(line: 77, column: 40, scope: !4630)
!4637 = !DILocalVariable(name: "power", arg: 3, scope: !4630, file: !4385, line: 77, type: !61)
!4638 = !DILocation(line: 77, column: 50, scope: !4630)
!4639 = !DILocalVariable(name: "err", scope: !4630, file: !4385, line: 79, type: !4388)
!4640 = !DILocation(line: 79, column: 16, scope: !4630)
!4641 = !DILocation(line: 80, column: 3, scope: !4630)
!4642 = !DILocation(line: 80, column: 15, scope: !4630)
!4643 = !DILocation(line: 81, column: 23, scope: !4630)
!4644 = !DILocation(line: 81, column: 26, scope: !4630)
!4645 = !DILocation(line: 81, column: 12, scope: !4630)
!4646 = !DILocation(line: 81, column: 9, scope: !4630)
!4647 = distinct !{!4647, !4641, !4648}
!4648 = !DILocation(line: 81, column: 30, scope: !4630)
!4649 = !DILocation(line: 82, column: 10, scope: !4630)
!4650 = !DILocation(line: 82, column: 3, scope: !4630)
!4651 = distinct !DISubprogram(name: "rpl_fclose", scope: !662, file: !662, line: 56, type: !4652, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, unit: !661, variables: !113)
!4652 = !DISubroutineType(types: !4653)
!4653 = !{!61, !4654}
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1790, line: 7, baseType: !4656)
!4656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1792, line: 245, size: 1728, elements: !4657)
!4657 = !{!4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4656, file: !1792, line: 246, baseType: !61, size: 32)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4656, file: !1792, line: 251, baseType: !60, size: 64, offset: 64)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4656, file: !1792, line: 252, baseType: !60, size: 64, offset: 128)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4656, file: !1792, line: 253, baseType: !60, size: 64, offset: 192)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4656, file: !1792, line: 254, baseType: !60, size: 64, offset: 256)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4656, file: !1792, line: 255, baseType: !60, size: 64, offset: 320)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4656, file: !1792, line: 256, baseType: !60, size: 64, offset: 384)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4656, file: !1792, line: 257, baseType: !60, size: 64, offset: 448)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4656, file: !1792, line: 258, baseType: !60, size: 64, offset: 512)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4656, file: !1792, line: 260, baseType: !60, size: 64, offset: 576)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4656, file: !1792, line: 261, baseType: !60, size: 64, offset: 640)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4656, file: !1792, line: 262, baseType: !60, size: 64, offset: 704)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4656, file: !1792, line: 264, baseType: !4671, size: 64, offset: 768)
!4671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4672, size: 64)
!4672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1792, line: 160, size: 192, elements: !4673)
!4673 = !{!4674, !4675, !4677}
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4672, file: !1792, line: 161, baseType: !4671, size: 64)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4672, file: !1792, line: 162, baseType: !4676, size: 64, offset: 64)
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4672, file: !1792, line: 166, baseType: !61, size: 32, offset: 128)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4656, file: !1792, line: 266, baseType: !4676, size: 64, offset: 832)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4656, file: !1792, line: 268, baseType: !61, size: 32, offset: 896)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4656, file: !1792, line: 272, baseType: !61, size: 32, offset: 928)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4656, file: !1792, line: 274, baseType: !1770, size: 64, offset: 960)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4656, file: !1792, line: 278, baseType: !62, size: 16, offset: 1024)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4656, file: !1792, line: 279, baseType: !1820, size: 8, offset: 1040)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4656, file: !1792, line: 280, baseType: !1822, size: 8, offset: 1048)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4656, file: !1792, line: 284, baseType: !1826, size: 64, offset: 1088)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4656, file: !1792, line: 293, baseType: !1829, size: 64, offset: 1152)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4656, file: !1792, line: 301, baseType: !55, size: 64, offset: 1216)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4656, file: !1792, line: 302, baseType: !55, size: 64, offset: 1280)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4656, file: !1792, line: 303, baseType: !55, size: 64, offset: 1344)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4656, file: !1792, line: 304, baseType: !55, size: 64, offset: 1408)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4656, file: !1792, line: 306, baseType: !172, size: 64, offset: 1472)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4656, file: !1792, line: 307, baseType: !61, size: 32, offset: 1536)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4656, file: !1792, line: 309, baseType: !1837, size: 160, offset: 1568)
!4694 = !DILocalVariable(name: "fp", arg: 1, scope: !4651, file: !662, line: 56, type: !4654)
!4695 = !DILocation(line: 56, column: 19, scope: !4651)
!4696 = !DILocalVariable(name: "saved_errno", scope: !4651, file: !662, line: 58, type: !61)
!4697 = !DILocation(line: 58, column: 7, scope: !4651)
!4698 = !DILocalVariable(name: "fd", scope: !4651, file: !662, line: 59, type: !61)
!4699 = !DILocation(line: 59, column: 7, scope: !4651)
!4700 = !DILocalVariable(name: "result", scope: !4651, file: !662, line: 60, type: !61)
!4701 = !DILocation(line: 60, column: 7, scope: !4651)
!4702 = !DILocation(line: 63, column: 16, scope: !4651)
!4703 = !DILocation(line: 63, column: 8, scope: !4651)
!4704 = !DILocation(line: 63, column: 6, scope: !4651)
!4705 = !DILocation(line: 64, column: 7, scope: !4706)
!4706 = distinct !DILexicalBlock(scope: !4651, file: !662, line: 64, column: 7)
!4707 = !DILocation(line: 64, column: 10, scope: !4706)
!4708 = !DILocation(line: 64, column: 7, scope: !4651)
!4709 = !DILocation(line: 65, column: 28, scope: !4706)
!4710 = !DILocation(line: 65, column: 12, scope: !4706)
!4711 = !DILocation(line: 65, column: 5, scope: !4706)
!4712 = !DILocation(line: 70, column: 9, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4651, file: !662, line: 70, column: 7)
!4714 = !DILocation(line: 70, column: 23, scope: !4713)
!4715 = !DILocation(line: 70, column: 41, scope: !4713)
!4716 = !DILocation(line: 70, column: 33, scope: !4713)
!4717 = !DILocation(line: 70, column: 26, scope: !4713)
!4718 = !DILocation(line: 70, column: 59, scope: !4713)
!4719 = !DILocation(line: 71, column: 7, scope: !4713)
!4720 = !DILocation(line: 71, column: 18, scope: !4713)
!4721 = !DILocation(line: 71, column: 10, scope: !4713)
!4722 = !DILocation(line: 70, column: 7, scope: !4651)
!4723 = !DILocation(line: 72, column: 19, scope: !4713)
!4724 = !DILocation(line: 72, column: 17, scope: !4713)
!4725 = !DILocation(line: 72, column: 5, scope: !4713)
!4726 = !DILocation(line: 98, column: 28, scope: !4651)
!4727 = !DILocation(line: 98, column: 12, scope: !4651)
!4728 = !DILocation(line: 98, column: 10, scope: !4651)
!4729 = !DILocation(line: 103, column: 7, scope: !4730)
!4730 = distinct !DILexicalBlock(scope: !4651, file: !662, line: 103, column: 7)
!4731 = !DILocation(line: 103, column: 19, scope: !4730)
!4732 = !DILocation(line: 103, column: 7, scope: !4651)
!4733 = !DILocation(line: 105, column: 15, scope: !4734)
!4734 = distinct !DILexicalBlock(scope: !4730, file: !662, line: 104, column: 5)
!4735 = !DILocation(line: 105, column: 7, scope: !4734)
!4736 = !DILocation(line: 105, column: 13, scope: !4734)
!4737 = !DILocation(line: 106, column: 14, scope: !4734)
!4738 = !DILocation(line: 107, column: 5, scope: !4734)
!4739 = !DILocation(line: 109, column: 10, scope: !4651)
!4740 = !DILocation(line: 109, column: 3, scope: !4651)
!4741 = !DILocation(line: 110, column: 1, scope: !4651)
!4742 = distinct !DISubprogram(name: "rpl_fflush", scope: !664, file: !664, line: 117, type: !4743, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: false, unit: !663, variables: !113)
!4743 = !DISubroutineType(types: !4744)
!4744 = !{!61, !4745}
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1790, line: 7, baseType: !4747)
!4747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1792, line: 245, size: 1728, elements: !4748)
!4748 = !{!4749, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784}
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4747, file: !1792, line: 246, baseType: !61, size: 32)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4747, file: !1792, line: 251, baseType: !60, size: 64, offset: 64)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4747, file: !1792, line: 252, baseType: !60, size: 64, offset: 128)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4747, file: !1792, line: 253, baseType: !60, size: 64, offset: 192)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4747, file: !1792, line: 254, baseType: !60, size: 64, offset: 256)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4747, file: !1792, line: 255, baseType: !60, size: 64, offset: 320)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4747, file: !1792, line: 256, baseType: !60, size: 64, offset: 384)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4747, file: !1792, line: 257, baseType: !60, size: 64, offset: 448)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4747, file: !1792, line: 258, baseType: !60, size: 64, offset: 512)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4747, file: !1792, line: 260, baseType: !60, size: 64, offset: 576)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4747, file: !1792, line: 261, baseType: !60, size: 64, offset: 640)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4747, file: !1792, line: 262, baseType: !60, size: 64, offset: 704)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4747, file: !1792, line: 264, baseType: !4762, size: 64, offset: 768)
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4763, size: 64)
!4763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1792, line: 160, size: 192, elements: !4764)
!4764 = !{!4765, !4766, !4768}
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4763, file: !1792, line: 161, baseType: !4762, size: 64)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4763, file: !1792, line: 162, baseType: !4767, size: 64, offset: 64)
!4767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4747, size: 64)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4763, file: !1792, line: 166, baseType: !61, size: 32, offset: 128)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4747, file: !1792, line: 266, baseType: !4767, size: 64, offset: 832)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4747, file: !1792, line: 268, baseType: !61, size: 32, offset: 896)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4747, file: !1792, line: 272, baseType: !61, size: 32, offset: 928)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4747, file: !1792, line: 274, baseType: !1770, size: 64, offset: 960)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4747, file: !1792, line: 278, baseType: !62, size: 16, offset: 1024)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4747, file: !1792, line: 279, baseType: !1820, size: 8, offset: 1040)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4747, file: !1792, line: 280, baseType: !1822, size: 8, offset: 1048)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4747, file: !1792, line: 284, baseType: !1826, size: 64, offset: 1088)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4747, file: !1792, line: 293, baseType: !1829, size: 64, offset: 1152)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4747, file: !1792, line: 301, baseType: !55, size: 64, offset: 1216)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4747, file: !1792, line: 302, baseType: !55, size: 64, offset: 1280)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4747, file: !1792, line: 303, baseType: !55, size: 64, offset: 1344)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4747, file: !1792, line: 304, baseType: !55, size: 64, offset: 1408)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4747, file: !1792, line: 306, baseType: !172, size: 64, offset: 1472)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4747, file: !1792, line: 307, baseType: !61, size: 32, offset: 1536)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4747, file: !1792, line: 309, baseType: !1837, size: 160, offset: 1568)
!4785 = !DILocalVariable(name: "stream", arg: 1, scope: !4742, file: !664, line: 117, type: !4745)
!4786 = !DILocation(line: 117, column: 19, scope: !4742)
!4787 = !DILocation(line: 138, column: 7, scope: !4788)
!4788 = distinct !DILexicalBlock(scope: !4742, file: !664, line: 138, column: 7)
!4789 = !DILocation(line: 138, column: 14, scope: !4788)
!4790 = !DILocation(line: 138, column: 22, scope: !4788)
!4791 = !DILocation(line: 138, column: 27, scope: !4788)
!4792 = !DILocation(line: 138, column: 7, scope: !4742)
!4793 = !DILocation(line: 139, column: 20, scope: !4788)
!4794 = !DILocation(line: 139, column: 12, scope: !4788)
!4795 = !DILocation(line: 139, column: 5, scope: !4788)
!4796 = !DILocation(line: 143, column: 44, scope: !4742)
!4797 = !DILocation(line: 143, column: 3, scope: !4742)
!4798 = !DILocation(line: 145, column: 18, scope: !4742)
!4799 = !DILocation(line: 145, column: 10, scope: !4742)
!4800 = !DILocation(line: 145, column: 3, scope: !4742)
!4801 = !DILocation(line: 218, column: 1, scope: !4742)
!4802 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !664, file: !664, line: 38, type: !4803, isLocal: true, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: false, unit: !663, variables: !113)
!4803 = !DISubroutineType(types: !4804)
!4804 = !{null, !4745}
!4805 = !DILocalVariable(name: "fp", arg: 1, scope: !4802, file: !664, line: 38, type: !4745)
!4806 = !DILocation(line: 38, column: 48, scope: !4802)
!4807 = !DILocation(line: 40, column: 7, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4802, file: !664, line: 40, column: 7)
!4809 = !DILocation(line: 40, column: 11, scope: !4808)
!4810 = !DILocation(line: 40, column: 18, scope: !4808)
!4811 = !DILocation(line: 40, column: 7, scope: !4802)
!4812 = !DILocation(line: 42, column: 13, scope: !4808)
!4813 = !DILocation(line: 42, column: 5, scope: !4808)
!4814 = !DILocation(line: 43, column: 1, scope: !4802)
!4815 = distinct !DISubprogram(name: "rpl_fseeko", scope: !667, file: !667, line: 28, type: !4816, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: false, unit: !666, variables: !113)
!4816 = !DISubroutineType(types: !4817)
!4817 = !{!61, !4818, !1768, !61}
!4818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4819, size: 64)
!4819 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1790, line: 7, baseType: !4820)
!4820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1792, line: 245, size: 1728, elements: !4821)
!4821 = !{!4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857}
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4820, file: !1792, line: 246, baseType: !61, size: 32)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4820, file: !1792, line: 251, baseType: !60, size: 64, offset: 64)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4820, file: !1792, line: 252, baseType: !60, size: 64, offset: 128)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4820, file: !1792, line: 253, baseType: !60, size: 64, offset: 192)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4820, file: !1792, line: 254, baseType: !60, size: 64, offset: 256)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4820, file: !1792, line: 255, baseType: !60, size: 64, offset: 320)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4820, file: !1792, line: 256, baseType: !60, size: 64, offset: 384)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4820, file: !1792, line: 257, baseType: !60, size: 64, offset: 448)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4820, file: !1792, line: 258, baseType: !60, size: 64, offset: 512)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4820, file: !1792, line: 260, baseType: !60, size: 64, offset: 576)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4820, file: !1792, line: 261, baseType: !60, size: 64, offset: 640)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4820, file: !1792, line: 262, baseType: !60, size: 64, offset: 704)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4820, file: !1792, line: 264, baseType: !4835, size: 64, offset: 768)
!4835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4836, size: 64)
!4836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1792, line: 160, size: 192, elements: !4837)
!4837 = !{!4838, !4839, !4841}
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4836, file: !1792, line: 161, baseType: !4835, size: 64)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4836, file: !1792, line: 162, baseType: !4840, size: 64, offset: 64)
!4840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4820, size: 64)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4836, file: !1792, line: 166, baseType: !61, size: 32, offset: 128)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4820, file: !1792, line: 266, baseType: !4840, size: 64, offset: 832)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4820, file: !1792, line: 268, baseType: !61, size: 32, offset: 896)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4820, file: !1792, line: 272, baseType: !61, size: 32, offset: 928)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4820, file: !1792, line: 274, baseType: !1770, size: 64, offset: 960)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4820, file: !1792, line: 278, baseType: !62, size: 16, offset: 1024)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4820, file: !1792, line: 279, baseType: !1820, size: 8, offset: 1040)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4820, file: !1792, line: 280, baseType: !1822, size: 8, offset: 1048)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4820, file: !1792, line: 284, baseType: !1826, size: 64, offset: 1088)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4820, file: !1792, line: 293, baseType: !1829, size: 64, offset: 1152)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4820, file: !1792, line: 301, baseType: !55, size: 64, offset: 1216)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4820, file: !1792, line: 302, baseType: !55, size: 64, offset: 1280)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4820, file: !1792, line: 303, baseType: !55, size: 64, offset: 1344)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4820, file: !1792, line: 304, baseType: !55, size: 64, offset: 1408)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4820, file: !1792, line: 306, baseType: !172, size: 64, offset: 1472)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4820, file: !1792, line: 307, baseType: !61, size: 32, offset: 1536)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4820, file: !1792, line: 309, baseType: !1837, size: 160, offset: 1568)
!4858 = !DILocalVariable(name: "fp", arg: 1, scope: !4815, file: !667, line: 28, type: !4818)
!4859 = !DILocation(line: 28, column: 15, scope: !4815)
!4860 = !DILocalVariable(name: "offset", arg: 2, scope: !4815, file: !667, line: 28, type: !1768)
!4861 = !DILocation(line: 28, column: 25, scope: !4815)
!4862 = !DILocalVariable(name: "whence", arg: 3, scope: !4815, file: !667, line: 28, type: !61)
!4863 = !DILocation(line: 28, column: 37, scope: !4815)
!4864 = !DILocation(line: 43, column: 7, scope: !4865)
!4865 = distinct !DILexicalBlock(scope: !4815, file: !667, line: 43, column: 7)
!4866 = !DILocation(line: 43, column: 11, scope: !4865)
!4867 = !DILocation(line: 43, column: 27, scope: !4865)
!4868 = !DILocation(line: 43, column: 31, scope: !4865)
!4869 = !DILocation(line: 43, column: 24, scope: !4865)
!4870 = !DILocation(line: 44, column: 7, scope: !4865)
!4871 = !DILocation(line: 44, column: 10, scope: !4865)
!4872 = !DILocation(line: 44, column: 14, scope: !4865)
!4873 = !DILocation(line: 44, column: 31, scope: !4865)
!4874 = !DILocation(line: 44, column: 35, scope: !4865)
!4875 = !DILocation(line: 44, column: 28, scope: !4865)
!4876 = !DILocation(line: 45, column: 7, scope: !4865)
!4877 = !DILocation(line: 45, column: 10, scope: !4865)
!4878 = !DILocation(line: 45, column: 14, scope: !4865)
!4879 = !DILocation(line: 45, column: 28, scope: !4865)
!4880 = !DILocation(line: 43, column: 7, scope: !4815)
!4881 = !DILocalVariable(name: "pos", scope: !4882, file: !667, line: 101, type: !1768)
!4882 = distinct !DILexicalBlock(scope: !4865, file: !667, line: 97, column: 5)
!4883 = !DILocation(line: 101, column: 13, scope: !4882)
!4884 = !DILocation(line: 101, column: 34, scope: !4882)
!4885 = !DILocation(line: 101, column: 26, scope: !4882)
!4886 = !DILocation(line: 101, column: 39, scope: !4882)
!4887 = !DILocation(line: 101, column: 47, scope: !4882)
!4888 = !DILocation(line: 101, column: 19, scope: !4882)
!4889 = !DILocation(line: 102, column: 11, scope: !4890)
!4890 = distinct !DILexicalBlock(scope: !4882, file: !667, line: 102, column: 11)
!4891 = !DILocation(line: 102, column: 15, scope: !4890)
!4892 = !DILocation(line: 102, column: 11, scope: !4882)
!4893 = !DILocation(line: 107, column: 11, scope: !4894)
!4894 = distinct !DILexicalBlock(scope: !4890, file: !667, line: 103, column: 9)
!4895 = !DILocation(line: 111, column: 7, scope: !4882)
!4896 = !DILocation(line: 111, column: 11, scope: !4882)
!4897 = !DILocation(line: 111, column: 18, scope: !4882)
!4898 = !DILocation(line: 112, column: 21, scope: !4882)
!4899 = !DILocation(line: 112, column: 7, scope: !4882)
!4900 = !DILocation(line: 112, column: 11, scope: !4882)
!4901 = !DILocation(line: 112, column: 19, scope: !4882)
!4902 = !DILocation(line: 142, column: 7, scope: !4882)
!4903 = !DILocation(line: 144, column: 18, scope: !4815)
!4904 = !DILocation(line: 144, column: 22, scope: !4815)
!4905 = !DILocation(line: 144, column: 30, scope: !4815)
!4906 = !DILocation(line: 144, column: 10, scope: !4815)
!4907 = !DILocation(line: 144, column: 3, scope: !4815)
!4908 = !DILocation(line: 145, column: 1, scope: !4815)
!4909 = distinct !DISubprogram(name: "c_strcasecmp", scope: !669, file: !669, line: 27, type: !4910, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: false, unit: !668, variables: !113)
!4910 = !DISubroutineType(types: !4911)
!4911 = !{!61, !52, !52}
!4912 = !DILocalVariable(name: "s1", arg: 1, scope: !4909, file: !669, line: 27, type: !52)
!4913 = !DILocation(line: 27, column: 27, scope: !4909)
!4914 = !DILocalVariable(name: "s2", arg: 2, scope: !4909, file: !669, line: 27, type: !52)
!4915 = !DILocation(line: 27, column: 43, scope: !4909)
!4916 = !DILocalVariable(name: "p1", scope: !4909, file: !669, line: 29, type: !671)
!4917 = !DILocation(line: 29, column: 33, scope: !4909)
!4918 = !DILocation(line: 29, column: 62, scope: !4909)
!4919 = !DILocalVariable(name: "p2", scope: !4909, file: !669, line: 30, type: !671)
!4920 = !DILocation(line: 30, column: 33, scope: !4909)
!4921 = !DILocation(line: 30, column: 62, scope: !4909)
!4922 = !DILocalVariable(name: "c1", scope: !4909, file: !669, line: 31, type: !673)
!4923 = !DILocation(line: 31, column: 17, scope: !4909)
!4924 = !DILocalVariable(name: "c2", scope: !4909, file: !669, line: 31, type: !673)
!4925 = !DILocation(line: 31, column: 21, scope: !4909)
!4926 = !DILocation(line: 33, column: 7, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4909, file: !669, line: 33, column: 7)
!4928 = !DILocation(line: 33, column: 13, scope: !4927)
!4929 = !DILocation(line: 33, column: 10, scope: !4927)
!4930 = !DILocation(line: 33, column: 7, scope: !4909)
!4931 = !DILocation(line: 34, column: 5, scope: !4927)
!4932 = !DILocation(line: 36, column: 3, scope: !4909)
!4933 = distinct !{!4933, !4932, !4934}
!4934 = !DILocation(line: 47, column: 18, scope: !4909)
!4935 = !DILocation(line: 38, column: 24, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4909, file: !669, line: 37, column: 5)
!4937 = !DILocation(line: 38, column: 23, scope: !4936)
!4938 = !DILocation(line: 38, column: 12, scope: !4936)
!4939 = !DILocation(line: 38, column: 10, scope: !4936)
!4940 = !DILocation(line: 39, column: 24, scope: !4936)
!4941 = !DILocation(line: 39, column: 23, scope: !4936)
!4942 = !DILocation(line: 39, column: 12, scope: !4936)
!4943 = !DILocation(line: 39, column: 10, scope: !4936)
!4944 = !DILocation(line: 41, column: 11, scope: !4945)
!4945 = distinct !DILexicalBlock(scope: !4936, file: !669, line: 41, column: 11)
!4946 = !DILocation(line: 41, column: 14, scope: !4945)
!4947 = !DILocation(line: 41, column: 11, scope: !4936)
!4948 = !DILocation(line: 42, column: 9, scope: !4945)
!4949 = !DILocation(line: 44, column: 7, scope: !4936)
!4950 = !DILocation(line: 45, column: 7, scope: !4936)
!4951 = !DILocation(line: 46, column: 5, scope: !4936)
!4952 = !DILocation(line: 47, column: 10, scope: !4909)
!4953 = !DILocation(line: 47, column: 16, scope: !4909)
!4954 = !DILocation(line: 47, column: 13, scope: !4909)
!4955 = !DILocation(line: 50, column: 12, scope: !4956)
!4956 = distinct !DILexicalBlock(scope: !4909, file: !669, line: 49, column: 7)
!4957 = !DILocation(line: 50, column: 17, scope: !4956)
!4958 = !DILocation(line: 50, column: 15, scope: !4956)
!4959 = !DILocation(line: 50, column: 5, scope: !4956)
!4960 = !DILocation(line: 56, column: 1, scope: !4909)
!4961 = distinct !DISubprogram(name: "close_stream", scope: !675, file: !675, line: 56, type: !4962, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, unit: !674, variables: !113)
!4962 = !DISubroutineType(types: !4963)
!4963 = !{!61, !4964}
!4964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4965, size: 64)
!4965 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1790, line: 7, baseType: !4966)
!4966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1792, line: 245, size: 1728, elements: !4967)
!4967 = !{!4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5003}
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4966, file: !1792, line: 246, baseType: !61, size: 32)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4966, file: !1792, line: 251, baseType: !60, size: 64, offset: 64)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4966, file: !1792, line: 252, baseType: !60, size: 64, offset: 128)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4966, file: !1792, line: 253, baseType: !60, size: 64, offset: 192)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4966, file: !1792, line: 254, baseType: !60, size: 64, offset: 256)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4966, file: !1792, line: 255, baseType: !60, size: 64, offset: 320)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4966, file: !1792, line: 256, baseType: !60, size: 64, offset: 384)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4966, file: !1792, line: 257, baseType: !60, size: 64, offset: 448)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4966, file: !1792, line: 258, baseType: !60, size: 64, offset: 512)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4966, file: !1792, line: 260, baseType: !60, size: 64, offset: 576)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4966, file: !1792, line: 261, baseType: !60, size: 64, offset: 640)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4966, file: !1792, line: 262, baseType: !60, size: 64, offset: 704)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4966, file: !1792, line: 264, baseType: !4981, size: 64, offset: 768)
!4981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4982, size: 64)
!4982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1792, line: 160, size: 192, elements: !4983)
!4983 = !{!4984, !4985, !4987}
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4982, file: !1792, line: 161, baseType: !4981, size: 64)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4982, file: !1792, line: 162, baseType: !4986, size: 64, offset: 64)
!4986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4966, size: 64)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4982, file: !1792, line: 166, baseType: !61, size: 32, offset: 128)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4966, file: !1792, line: 266, baseType: !4986, size: 64, offset: 832)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4966, file: !1792, line: 268, baseType: !61, size: 32, offset: 896)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4966, file: !1792, line: 272, baseType: !61, size: 32, offset: 928)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4966, file: !1792, line: 274, baseType: !1770, size: 64, offset: 960)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4966, file: !1792, line: 278, baseType: !62, size: 16, offset: 1024)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4966, file: !1792, line: 279, baseType: !1820, size: 8, offset: 1040)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4966, file: !1792, line: 280, baseType: !1822, size: 8, offset: 1048)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4966, file: !1792, line: 284, baseType: !1826, size: 64, offset: 1088)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4966, file: !1792, line: 293, baseType: !1829, size: 64, offset: 1152)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4966, file: !1792, line: 301, baseType: !55, size: 64, offset: 1216)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4966, file: !1792, line: 302, baseType: !55, size: 64, offset: 1280)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4966, file: !1792, line: 303, baseType: !55, size: 64, offset: 1344)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4966, file: !1792, line: 304, baseType: !55, size: 64, offset: 1408)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4966, file: !1792, line: 306, baseType: !172, size: 64, offset: 1472)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4966, file: !1792, line: 307, baseType: !61, size: 32, offset: 1536)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4966, file: !1792, line: 309, baseType: !1837, size: 160, offset: 1568)
!5004 = !DILocalVariable(name: "stream", arg: 1, scope: !4961, file: !675, line: 56, type: !4964)
!5005 = !DILocation(line: 56, column: 21, scope: !4961)
!5006 = !DILocalVariable(name: "some_pending", scope: !4961, file: !675, line: 58, type: !5007)
!5007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!5008 = !DILocation(line: 58, column: 14, scope: !4961)
!5009 = !DILocation(line: 58, column: 42, scope: !4961)
!5010 = !DILocation(line: 58, column: 30, scope: !4961)
!5011 = !DILocation(line: 58, column: 50, scope: !4961)
!5012 = !DILocalVariable(name: "prev_fail", scope: !4961, file: !675, line: 59, type: !5007)
!5013 = !DILocation(line: 59, column: 14, scope: !4961)
!5014 = !DILocation(line: 59, column: 27, scope: !4961)
!5015 = !DILocation(line: 59, column: 43, scope: !4961)
!5016 = !DILocalVariable(name: "fclose_fail", scope: !4961, file: !675, line: 60, type: !5007)
!5017 = !DILocation(line: 60, column: 14, scope: !4961)
!5018 = !DILocation(line: 60, column: 37, scope: !4961)
!5019 = !DILocation(line: 60, column: 29, scope: !4961)
!5020 = !DILocation(line: 60, column: 45, scope: !4961)
!5021 = !DILocation(line: 70, column: 7, scope: !5022)
!5022 = distinct !DILexicalBlock(scope: !4961, file: !675, line: 70, column: 7)
!5023 = !DILocation(line: 70, column: 17, scope: !5022)
!5024 = !DILocation(line: 70, column: 21, scope: !5022)
!5025 = !DILocation(line: 70, column: 33, scope: !5022)
!5026 = !DILocation(line: 70, column: 37, scope: !5022)
!5027 = !DILocation(line: 70, column: 50, scope: !5022)
!5028 = !DILocation(line: 70, column: 53, scope: !5022)
!5029 = !DILocation(line: 70, column: 59, scope: !5022)
!5030 = !DILocation(line: 70, column: 7, scope: !4961)
!5031 = !DILocation(line: 72, column: 13, scope: !5032)
!5032 = distinct !DILexicalBlock(scope: !5033, file: !675, line: 72, column: 11)
!5033 = distinct !DILexicalBlock(scope: !5022, file: !675, line: 71, column: 5)
!5034 = !DILocation(line: 72, column: 11, scope: !5033)
!5035 = !DILocation(line: 73, column: 9, scope: !5032)
!5036 = !DILocation(line: 73, column: 15, scope: !5032)
!5037 = !DILocation(line: 74, column: 7, scope: !5033)
!5038 = !DILocation(line: 77, column: 3, scope: !4961)
!5039 = !DILocation(line: 78, column: 1, scope: !4961)
!5040 = distinct !DISubprogram(name: "locale_charset", scope: !224, file: !224, line: 357, type: !5041, isLocal: false, isDefinition: true, scopeLine: 358, flags: DIFlagPrototyped, isOptimized: false, unit: !223, variables: !113)
!5041 = !DISubroutineType(types: !143)
!5042 = !DILocalVariable(name: "codeset", scope: !5040, file: !224, line: 359, type: !52)
!5043 = !DILocation(line: 359, column: 15, scope: !5040)
!5044 = !DILocalVariable(name: "aliases", scope: !5040, file: !224, line: 360, type: !52)
!5045 = !DILocation(line: 360, column: 15, scope: !5040)
!5046 = !DILocation(line: 367, column: 13, scope: !5040)
!5047 = !DILocation(line: 367, column: 11, scope: !5040)
!5048 = !DILocation(line: 524, column: 7, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !5040, file: !224, line: 524, column: 7)
!5050 = !DILocation(line: 524, column: 15, scope: !5049)
!5051 = !DILocation(line: 524, column: 7, scope: !5040)
!5052 = !DILocation(line: 526, column: 13, scope: !5049)
!5053 = !DILocation(line: 526, column: 5, scope: !5049)
!5054 = !DILocation(line: 529, column: 18, scope: !5055)
!5055 = distinct !DILexicalBlock(scope: !5040, file: !224, line: 529, column: 3)
!5056 = !DILocation(line: 529, column: 16, scope: !5055)
!5057 = !DILocation(line: 529, column: 8, scope: !5055)
!5058 = !DILocation(line: 530, column: 9, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !5055, file: !224, line: 529, column: 3)
!5060 = !DILocation(line: 530, column: 8, scope: !5059)
!5061 = !DILocation(line: 530, column: 17, scope: !5059)
!5062 = !DILocation(line: 529, column: 3, scope: !5055)
!5063 = !DILocation(line: 532, column: 17, scope: !5064)
!5064 = distinct !DILexicalBlock(scope: !5059, file: !224, line: 532, column: 9)
!5065 = !DILocation(line: 532, column: 26, scope: !5064)
!5066 = !DILocation(line: 532, column: 9, scope: !5064)
!5067 = !DILocation(line: 532, column: 35, scope: !5064)
!5068 = !DILocation(line: 533, column: 9, scope: !5064)
!5069 = !DILocation(line: 533, column: 13, scope: !5064)
!5070 = !DILocation(line: 533, column: 24, scope: !5064)
!5071 = !DILocation(line: 533, column: 31, scope: !5064)
!5072 = !DILocation(line: 533, column: 34, scope: !5064)
!5073 = !DILocation(line: 533, column: 45, scope: !5064)
!5074 = !DILocation(line: 532, column: 9, scope: !5059)
!5075 = !DILocation(line: 535, column: 19, scope: !5076)
!5076 = distinct !DILexicalBlock(scope: !5064, file: !224, line: 534, column: 7)
!5077 = !DILocation(line: 535, column: 37, scope: !5076)
!5078 = !DILocation(line: 535, column: 29, scope: !5076)
!5079 = !DILocation(line: 535, column: 27, scope: !5076)
!5080 = !DILocation(line: 535, column: 46, scope: !5076)
!5081 = !DILocation(line: 535, column: 17, scope: !5076)
!5082 = !DILocation(line: 536, column: 9, scope: !5076)
!5083 = !DILocation(line: 533, column: 52, scope: !5064)
!5084 = !DILocation(line: 531, column: 27, scope: !5059)
!5085 = !DILocation(line: 531, column: 19, scope: !5059)
!5086 = !DILocation(line: 531, column: 36, scope: !5059)
!5087 = !DILocation(line: 531, column: 16, scope: !5059)
!5088 = !DILocation(line: 531, column: 60, scope: !5059)
!5089 = !DILocation(line: 531, column: 52, scope: !5059)
!5090 = !DILocation(line: 531, column: 69, scope: !5059)
!5091 = !DILocation(line: 531, column: 49, scope: !5059)
!5092 = !DILocation(line: 529, column: 3, scope: !5059)
!5093 = distinct !{!5093, !5062, !5094}
!5094 = !DILocation(line: 537, column: 7, scope: !5055)
!5095 = !DILocation(line: 542, column: 7, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5040, file: !224, line: 542, column: 7)
!5097 = !DILocation(line: 542, column: 18, scope: !5096)
!5098 = !DILocation(line: 542, column: 7, scope: !5040)
!5099 = !DILocation(line: 543, column: 13, scope: !5096)
!5100 = !DILocation(line: 543, column: 5, scope: !5096)
!5101 = !DILocation(line: 545, column: 10, scope: !5040)
!5102 = !DILocation(line: 545, column: 3, scope: !5040)
!5103 = distinct !DISubprogram(name: "get_charset_aliases", scope: !224, file: !224, line: 118, type: !5041, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: false, unit: !223, variables: !113)
!5104 = !DILocalVariable(name: "cp", scope: !5103, file: !224, line: 120, type: !52)
!5105 = !DILocation(line: 120, column: 15, scope: !5103)
!5106 = !DILocation(line: 122, column: 8, scope: !5103)
!5107 = !DILocation(line: 122, column: 6, scope: !5103)
!5108 = !DILocation(line: 123, column: 7, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5103, file: !224, line: 123, column: 7)
!5110 = !DILocation(line: 123, column: 10, scope: !5109)
!5111 = !DILocation(line: 123, column: 7, scope: !5103)
!5112 = !DILocalVariable(name: "dir", scope: !5113, file: !224, line: 126, type: !52)
!5113 = distinct !DILexicalBlock(scope: !5109, file: !224, line: 124, column: 5)
!5114 = !DILocation(line: 126, column: 19, scope: !5113)
!5115 = !DILocalVariable(name: "base", scope: !5113, file: !224, line: 127, type: !52)
!5116 = !DILocation(line: 127, column: 19, scope: !5113)
!5117 = !DILocalVariable(name: "file_name", scope: !5113, file: !224, line: 128, type: !60)
!5118 = !DILocation(line: 128, column: 13, scope: !5113)
!5119 = !DILocation(line: 132, column: 13, scope: !5113)
!5120 = !DILocation(line: 132, column: 11, scope: !5113)
!5121 = !DILocation(line: 133, column: 11, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5113, file: !224, line: 133, column: 11)
!5123 = !DILocation(line: 133, column: 15, scope: !5122)
!5124 = !DILocation(line: 133, column: 23, scope: !5122)
!5125 = !DILocation(line: 133, column: 26, scope: !5122)
!5126 = !DILocation(line: 133, column: 33, scope: !5122)
!5127 = !DILocation(line: 133, column: 11, scope: !5113)
!5128 = !DILocation(line: 134, column: 13, scope: !5122)
!5129 = !DILocation(line: 134, column: 9, scope: !5122)
!5130 = !DILocalVariable(name: "dir_len", scope: !5131, file: !224, line: 138, type: !172)
!5131 = distinct !DILexicalBlock(scope: !5113, file: !224, line: 137, column: 7)
!5132 = !DILocation(line: 138, column: 16, scope: !5131)
!5133 = !DILocation(line: 138, column: 34, scope: !5131)
!5134 = !DILocation(line: 138, column: 26, scope: !5131)
!5135 = !DILocalVariable(name: "base_len", scope: !5131, file: !224, line: 139, type: !172)
!5136 = !DILocation(line: 139, column: 16, scope: !5131)
!5137 = !DILocation(line: 139, column: 35, scope: !5131)
!5138 = !DILocation(line: 139, column: 27, scope: !5131)
!5139 = !DILocalVariable(name: "add_slash", scope: !5131, file: !224, line: 140, type: !61)
!5140 = !DILocation(line: 140, column: 13, scope: !5131)
!5141 = !DILocation(line: 140, column: 26, scope: !5131)
!5142 = !DILocation(line: 140, column: 34, scope: !5131)
!5143 = !DILocation(line: 140, column: 38, scope: !5131)
!5144 = !DILocation(line: 140, column: 42, scope: !5131)
!5145 = !DILocation(line: 140, column: 41, scope: !5131)
!5146 = !DILocation(line: 141, column: 38, scope: !5131)
!5147 = !DILocation(line: 141, column: 48, scope: !5131)
!5148 = !DILocation(line: 141, column: 46, scope: !5131)
!5149 = !DILocation(line: 141, column: 60, scope: !5131)
!5150 = !DILocation(line: 141, column: 58, scope: !5131)
!5151 = !DILocation(line: 141, column: 69, scope: !5131)
!5152 = !DILocation(line: 141, column: 30, scope: !5131)
!5153 = !DILocation(line: 141, column: 19, scope: !5131)
!5154 = !DILocation(line: 142, column: 13, scope: !5155)
!5155 = distinct !DILexicalBlock(scope: !5131, file: !224, line: 142, column: 13)
!5156 = !DILocation(line: 142, column: 23, scope: !5155)
!5157 = !DILocation(line: 142, column: 13, scope: !5131)
!5158 = !DILocation(line: 144, column: 21, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5155, file: !224, line: 143, column: 11)
!5160 = !DILocation(line: 144, column: 32, scope: !5159)
!5161 = !DILocation(line: 144, column: 37, scope: !5159)
!5162 = !DILocation(line: 144, column: 13, scope: !5159)
!5163 = !DILocation(line: 145, column: 17, scope: !5164)
!5164 = distinct !DILexicalBlock(scope: !5159, file: !224, line: 145, column: 17)
!5165 = !DILocation(line: 145, column: 17, scope: !5159)
!5166 = !DILocation(line: 146, column: 15, scope: !5164)
!5167 = !DILocation(line: 146, column: 25, scope: !5164)
!5168 = !DILocation(line: 146, column: 34, scope: !5164)
!5169 = !DILocation(line: 147, column: 21, scope: !5159)
!5170 = !DILocation(line: 147, column: 33, scope: !5159)
!5171 = !DILocation(line: 147, column: 31, scope: !5159)
!5172 = !DILocation(line: 147, column: 43, scope: !5159)
!5173 = !DILocation(line: 147, column: 41, scope: !5159)
!5174 = !DILocation(line: 147, column: 54, scope: !5159)
!5175 = !DILocation(line: 147, column: 60, scope: !5159)
!5176 = !DILocation(line: 147, column: 69, scope: !5159)
!5177 = !DILocation(line: 147, column: 13, scope: !5159)
!5178 = !DILocation(line: 148, column: 11, scope: !5159)
!5179 = !DILocation(line: 151, column: 11, scope: !5180)
!5180 = distinct !DILexicalBlock(scope: !5113, file: !224, line: 151, column: 11)
!5181 = !DILocation(line: 151, column: 21, scope: !5180)
!5182 = !DILocation(line: 151, column: 11, scope: !5113)
!5183 = !DILocation(line: 153, column: 12, scope: !5180)
!5184 = !DILocation(line: 153, column: 9, scope: !5180)
!5185 = !DILocalVariable(name: "fd", scope: !5186, file: !224, line: 156, type: !61)
!5186 = distinct !DILexicalBlock(scope: !5180, file: !224, line: 155, column: 9)
!5187 = !DILocation(line: 156, column: 15, scope: !5186)
!5188 = !DILocation(line: 165, column: 22, scope: !5186)
!5189 = !DILocation(line: 165, column: 16, scope: !5186)
!5190 = !DILocation(line: 165, column: 14, scope: !5186)
!5191 = !DILocation(line: 167, column: 15, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5186, file: !224, line: 167, column: 15)
!5193 = !DILocation(line: 167, column: 18, scope: !5192)
!5194 = !DILocation(line: 167, column: 15, scope: !5186)
!5195 = !DILocation(line: 169, column: 16, scope: !5192)
!5196 = !DILocation(line: 169, column: 13, scope: !5192)
!5197 = !DILocalVariable(name: "fp", scope: !5198, file: !224, line: 172, type: !5199)
!5198 = distinct !DILexicalBlock(scope: !5192, file: !224, line: 171, column: 13)
!5199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5200, size: 64)
!5200 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1790, line: 7, baseType: !5201)
!5201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1792, line: 245, size: 1728, elements: !5202)
!5202 = !{!5203, !5204, !5205, !5206, !5207, !5208, !5209, !5210, !5211, !5212, !5213, !5214, !5215, !5223, !5224, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238}
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5201, file: !1792, line: 246, baseType: !61, size: 32)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5201, file: !1792, line: 251, baseType: !60, size: 64, offset: 64)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5201, file: !1792, line: 252, baseType: !60, size: 64, offset: 128)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5201, file: !1792, line: 253, baseType: !60, size: 64, offset: 192)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5201, file: !1792, line: 254, baseType: !60, size: 64, offset: 256)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5201, file: !1792, line: 255, baseType: !60, size: 64, offset: 320)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5201, file: !1792, line: 256, baseType: !60, size: 64, offset: 384)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5201, file: !1792, line: 257, baseType: !60, size: 64, offset: 448)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5201, file: !1792, line: 258, baseType: !60, size: 64, offset: 512)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5201, file: !1792, line: 260, baseType: !60, size: 64, offset: 576)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5201, file: !1792, line: 261, baseType: !60, size: 64, offset: 640)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5201, file: !1792, line: 262, baseType: !60, size: 64, offset: 704)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5201, file: !1792, line: 264, baseType: !5216, size: 64, offset: 768)
!5216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5217, size: 64)
!5217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1792, line: 160, size: 192, elements: !5218)
!5218 = !{!5219, !5220, !5222}
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5217, file: !1792, line: 161, baseType: !5216, size: 64)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5217, file: !1792, line: 162, baseType: !5221, size: 64, offset: 64)
!5221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5201, size: 64)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5217, file: !1792, line: 166, baseType: !61, size: 32, offset: 128)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5201, file: !1792, line: 266, baseType: !5221, size: 64, offset: 832)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5201, file: !1792, line: 268, baseType: !61, size: 32, offset: 896)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5201, file: !1792, line: 272, baseType: !61, size: 32, offset: 928)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5201, file: !1792, line: 274, baseType: !1770, size: 64, offset: 960)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5201, file: !1792, line: 278, baseType: !62, size: 16, offset: 1024)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5201, file: !1792, line: 279, baseType: !1820, size: 8, offset: 1040)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5201, file: !1792, line: 280, baseType: !1822, size: 8, offset: 1048)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5201, file: !1792, line: 284, baseType: !1826, size: 64, offset: 1088)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5201, file: !1792, line: 293, baseType: !1829, size: 64, offset: 1152)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5201, file: !1792, line: 301, baseType: !55, size: 64, offset: 1216)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5201, file: !1792, line: 302, baseType: !55, size: 64, offset: 1280)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5201, file: !1792, line: 303, baseType: !55, size: 64, offset: 1344)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5201, file: !1792, line: 304, baseType: !55, size: 64, offset: 1408)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5201, file: !1792, line: 306, baseType: !172, size: 64, offset: 1472)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5201, file: !1792, line: 307, baseType: !61, size: 32, offset: 1536)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5201, file: !1792, line: 309, baseType: !1837, size: 160, offset: 1568)
!5239 = !DILocation(line: 172, column: 21, scope: !5198)
!5240 = !DILocation(line: 174, column: 28, scope: !5198)
!5241 = !DILocation(line: 174, column: 20, scope: !5198)
!5242 = !DILocation(line: 174, column: 18, scope: !5198)
!5243 = !DILocation(line: 175, column: 19, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5198, file: !224, line: 175, column: 19)
!5245 = !DILocation(line: 175, column: 22, scope: !5244)
!5246 = !DILocation(line: 175, column: 19, scope: !5198)
!5247 = !DILocation(line: 178, column: 26, scope: !5248)
!5248 = distinct !DILexicalBlock(scope: !5244, file: !224, line: 176, column: 17)
!5249 = !DILocation(line: 178, column: 19, scope: !5248)
!5250 = !DILocation(line: 179, column: 22, scope: !5248)
!5251 = !DILocation(line: 180, column: 17, scope: !5248)
!5252 = !DILocalVariable(name: "res_ptr", scope: !5253, file: !224, line: 184, type: !60)
!5253 = distinct !DILexicalBlock(scope: !5244, file: !224, line: 182, column: 17)
!5254 = !DILocation(line: 184, column: 25, scope: !5253)
!5255 = !DILocalVariable(name: "res_size", scope: !5253, file: !224, line: 185, type: !172)
!5256 = !DILocation(line: 185, column: 26, scope: !5253)
!5257 = !DILocation(line: 187, column: 19, scope: !5253)
!5258 = !DILocalVariable(name: "c", scope: !5259, file: !224, line: 189, type: !61)
!5259 = distinct !DILexicalBlock(scope: !5260, file: !224, line: 188, column: 21)
!5260 = distinct !DILexicalBlock(scope: !5261, file: !224, line: 187, column: 19)
!5261 = distinct !DILexicalBlock(scope: !5253, file: !224, line: 187, column: 19)
!5262 = !DILocation(line: 189, column: 27, scope: !5259)
!5263 = !DILocalVariable(name: "buf1", scope: !5259, file: !224, line: 190, type: !5264)
!5264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 408, elements: !5265)
!5265 = !{!5266}
!5266 = !DISubrange(count: 51)
!5267 = !DILocation(line: 190, column: 28, scope: !5259)
!5268 = !DILocalVariable(name: "buf2", scope: !5259, file: !224, line: 191, type: !5264)
!5269 = !DILocation(line: 191, column: 28, scope: !5259)
!5270 = !DILocalVariable(name: "l1", scope: !5259, file: !224, line: 192, type: !172)
!5271 = !DILocation(line: 192, column: 30, scope: !5259)
!5272 = !DILocalVariable(name: "l2", scope: !5259, file: !224, line: 192, type: !172)
!5273 = !DILocation(line: 192, column: 34, scope: !5259)
!5274 = !DILocalVariable(name: "old_res_ptr", scope: !5259, file: !224, line: 193, type: !60)
!5275 = !DILocation(line: 193, column: 29, scope: !5259)
!5276 = !DILocation(line: 195, column: 33, scope: !5259)
!5277 = !DILocation(line: 195, column: 27, scope: !5259)
!5278 = !DILocation(line: 195, column: 25, scope: !5259)
!5279 = !DILocation(line: 196, column: 27, scope: !5280)
!5280 = distinct !DILexicalBlock(scope: !5259, file: !224, line: 196, column: 27)
!5281 = !DILocation(line: 196, column: 29, scope: !5280)
!5282 = !DILocation(line: 196, column: 27, scope: !5259)
!5283 = !DILocation(line: 197, column: 25, scope: !5280)
!5284 = !DILocation(line: 198, column: 27, scope: !5285)
!5285 = distinct !DILexicalBlock(scope: !5259, file: !224, line: 198, column: 27)
!5286 = !DILocation(line: 198, column: 29, scope: !5285)
!5287 = !DILocation(line: 198, column: 37, scope: !5285)
!5288 = !DILocation(line: 198, column: 40, scope: !5285)
!5289 = !DILocation(line: 198, column: 42, scope: !5285)
!5290 = !DILocation(line: 198, column: 49, scope: !5285)
!5291 = !DILocation(line: 198, column: 52, scope: !5285)
!5292 = !DILocation(line: 198, column: 54, scope: !5285)
!5293 = !DILocation(line: 198, column: 27, scope: !5259)
!5294 = !DILocation(line: 199, column: 25, scope: !5285)
!5295 = distinct !{!5295, !5296, !5297}
!5296 = !DILocation(line: 187, column: 19, scope: !5261)
!5297 = !DILocation(line: 235, column: 21, scope: !5261)
!5298 = !DILocation(line: 200, column: 27, scope: !5299)
!5299 = distinct !DILexicalBlock(scope: !5259, file: !224, line: 200, column: 27)
!5300 = !DILocation(line: 200, column: 29, scope: !5299)
!5301 = !DILocation(line: 200, column: 27, scope: !5259)
!5302 = !DILocation(line: 203, column: 27, scope: !5303)
!5303 = distinct !DILexicalBlock(scope: !5299, file: !224, line: 201, column: 25)
!5304 = distinct !{!5304, !5302, !5305}
!5305 = !DILocation(line: 205, column: 58, scope: !5303)
!5306 = !DILocation(line: 204, column: 39, scope: !5303)
!5307 = !DILocation(line: 204, column: 33, scope: !5303)
!5308 = !DILocation(line: 204, column: 31, scope: !5303)
!5309 = !DILocation(line: 204, column: 29, scope: !5303)
!5310 = !DILocation(line: 205, column: 36, scope: !5303)
!5311 = !DILocation(line: 205, column: 38, scope: !5303)
!5312 = !DILocation(line: 205, column: 45, scope: !5303)
!5313 = !DILocation(line: 205, column: 48, scope: !5303)
!5314 = !DILocation(line: 205, column: 50, scope: !5303)
!5315 = !DILocation(line: 205, column: 34, scope: !5303)
!5316 = !DILocation(line: 206, column: 31, scope: !5317)
!5317 = distinct !DILexicalBlock(scope: !5303, file: !224, line: 206, column: 31)
!5318 = !DILocation(line: 206, column: 33, scope: !5317)
!5319 = !DILocation(line: 206, column: 31, scope: !5303)
!5320 = !DILocation(line: 207, column: 29, scope: !5317)
!5321 = !DILocation(line: 208, column: 27, scope: !5303)
!5322 = !DILocation(line: 210, column: 31, scope: !5259)
!5323 = !DILocation(line: 210, column: 34, scope: !5259)
!5324 = !DILocation(line: 210, column: 23, scope: !5259)
!5325 = !DILocation(line: 211, column: 35, scope: !5326)
!5326 = distinct !DILexicalBlock(scope: !5259, file: !224, line: 211, column: 27)
!5327 = !DILocation(line: 211, column: 52, scope: !5326)
!5328 = !DILocation(line: 211, column: 58, scope: !5326)
!5329 = !DILocation(line: 211, column: 27, scope: !5326)
!5330 = !DILocation(line: 211, column: 64, scope: !5326)
!5331 = !DILocation(line: 211, column: 27, scope: !5259)
!5332 = !DILocation(line: 212, column: 25, scope: !5326)
!5333 = !DILocation(line: 213, column: 36, scope: !5259)
!5334 = !DILocation(line: 213, column: 28, scope: !5259)
!5335 = !DILocation(line: 213, column: 26, scope: !5259)
!5336 = !DILocation(line: 214, column: 36, scope: !5259)
!5337 = !DILocation(line: 214, column: 28, scope: !5259)
!5338 = !DILocation(line: 214, column: 26, scope: !5259)
!5339 = !DILocation(line: 215, column: 37, scope: !5259)
!5340 = !DILocation(line: 215, column: 35, scope: !5259)
!5341 = !DILocation(line: 216, column: 27, scope: !5342)
!5342 = distinct !DILexicalBlock(scope: !5259, file: !224, line: 216, column: 27)
!5343 = !DILocation(line: 216, column: 36, scope: !5342)
!5344 = !DILocation(line: 216, column: 27, scope: !5259)
!5345 = !DILocation(line: 218, column: 38, scope: !5346)
!5346 = distinct !DILexicalBlock(scope: !5342, file: !224, line: 217, column: 25)
!5347 = !DILocation(line: 218, column: 41, scope: !5346)
!5348 = !DILocation(line: 218, column: 47, scope: !5346)
!5349 = !DILocation(line: 218, column: 45, scope: !5346)
!5350 = !DILocation(line: 218, column: 50, scope: !5346)
!5351 = !DILocation(line: 218, column: 36, scope: !5346)
!5352 = !DILocation(line: 219, column: 54, scope: !5346)
!5353 = !DILocation(line: 219, column: 63, scope: !5346)
!5354 = !DILocation(line: 219, column: 46, scope: !5346)
!5355 = !DILocation(line: 219, column: 35, scope: !5346)
!5356 = !DILocation(line: 220, column: 25, scope: !5346)
!5357 = !DILocation(line: 223, column: 39, scope: !5358)
!5358 = distinct !DILexicalBlock(scope: !5342, file: !224, line: 222, column: 25)
!5359 = !DILocation(line: 223, column: 42, scope: !5358)
!5360 = !DILocation(line: 223, column: 48, scope: !5358)
!5361 = !DILocation(line: 223, column: 46, scope: !5358)
!5362 = !DILocation(line: 223, column: 51, scope: !5358)
!5363 = !DILocation(line: 223, column: 36, scope: !5358)
!5364 = !DILocation(line: 224, column: 55, scope: !5358)
!5365 = !DILocation(line: 224, column: 64, scope: !5358)
!5366 = !DILocation(line: 224, column: 73, scope: !5358)
!5367 = !DILocation(line: 224, column: 46, scope: !5358)
!5368 = !DILocation(line: 224, column: 35, scope: !5358)
!5369 = !DILocation(line: 226, column: 27, scope: !5370)
!5370 = distinct !DILexicalBlock(scope: !5259, file: !224, line: 226, column: 27)
!5371 = !DILocation(line: 226, column: 35, scope: !5370)
!5372 = !DILocation(line: 226, column: 27, scope: !5259)
!5373 = !DILocation(line: 229, column: 36, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !5370, file: !224, line: 227, column: 25)
!5375 = !DILocation(line: 230, column: 33, scope: !5374)
!5376 = !DILocation(line: 230, column: 27, scope: !5374)
!5377 = !DILocation(line: 231, column: 27, scope: !5374)
!5378 = !DILocation(line: 233, column: 31, scope: !5259)
!5379 = !DILocation(line: 233, column: 41, scope: !5259)
!5380 = !DILocation(line: 233, column: 39, scope: !5259)
!5381 = !DILocation(line: 233, column: 53, scope: !5259)
!5382 = !DILocation(line: 233, column: 56, scope: !5259)
!5383 = !DILocation(line: 233, column: 50, scope: !5259)
!5384 = !DILocation(line: 233, column: 64, scope: !5259)
!5385 = !DILocation(line: 233, column: 67, scope: !5259)
!5386 = !DILocation(line: 233, column: 61, scope: !5259)
!5387 = !DILocation(line: 233, column: 73, scope: !5259)
!5388 = !DILocation(line: 233, column: 23, scope: !5259)
!5389 = !DILocation(line: 234, column: 31, scope: !5259)
!5390 = !DILocation(line: 234, column: 41, scope: !5259)
!5391 = !DILocation(line: 234, column: 39, scope: !5259)
!5392 = !DILocation(line: 234, column: 53, scope: !5259)
!5393 = !DILocation(line: 234, column: 56, scope: !5259)
!5394 = !DILocation(line: 234, column: 50, scope: !5259)
!5395 = !DILocation(line: 234, column: 62, scope: !5259)
!5396 = !DILocation(line: 234, column: 23, scope: !5259)
!5397 = !DILocation(line: 187, column: 19, scope: !5260)
!5398 = !DILocation(line: 236, column: 27, scope: !5253)
!5399 = !DILocation(line: 236, column: 19, scope: !5253)
!5400 = !DILocation(line: 237, column: 23, scope: !5401)
!5401 = distinct !DILexicalBlock(scope: !5253, file: !224, line: 237, column: 23)
!5402 = !DILocation(line: 237, column: 32, scope: !5401)
!5403 = !DILocation(line: 237, column: 23, scope: !5253)
!5404 = !DILocation(line: 238, column: 24, scope: !5401)
!5405 = !DILocation(line: 238, column: 21, scope: !5401)
!5406 = !DILocation(line: 241, column: 25, scope: !5407)
!5407 = distinct !DILexicalBlock(scope: !5401, file: !224, line: 240, column: 21)
!5408 = !DILocation(line: 241, column: 35, scope: !5407)
!5409 = !DILocation(line: 241, column: 33, scope: !5407)
!5410 = !DILocation(line: 241, column: 45, scope: !5407)
!5411 = !DILocation(line: 242, column: 28, scope: !5407)
!5412 = !DILocation(line: 242, column: 26, scope: !5407)
!5413 = !DILocation(line: 247, column: 17, scope: !5186)
!5414 = !DILocation(line: 247, column: 11, scope: !5186)
!5415 = !DILocation(line: 341, column: 25, scope: !5113)
!5416 = !DILocation(line: 341, column: 23, scope: !5113)
!5417 = !DILocation(line: 342, column: 5, scope: !5113)
!5418 = !DILocation(line: 344, column: 10, scope: !5103)
!5419 = !DILocation(line: 344, column: 3, scope: !5103)
!5420 = distinct !DISubprogram(name: "memcoll", scope: !677, file: !677, line: 66, type: !4294, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, unit: !676, variables: !113)
!5421 = !DILocalVariable(name: "s1", arg: 1, scope: !5420, file: !677, line: 66, type: !60)
!5422 = !DILocation(line: 66, column: 16, scope: !5420)
!5423 = !DILocalVariable(name: "s1len", arg: 2, scope: !5420, file: !677, line: 66, type: !172)
!5424 = !DILocation(line: 66, column: 27, scope: !5420)
!5425 = !DILocalVariable(name: "s2", arg: 3, scope: !5420, file: !677, line: 66, type: !60)
!5426 = !DILocation(line: 66, column: 40, scope: !5420)
!5427 = !DILocalVariable(name: "s2len", arg: 4, scope: !5420, file: !677, line: 66, type: !172)
!5428 = !DILocation(line: 66, column: 51, scope: !5420)
!5429 = !DILocalVariable(name: "diff", scope: !5420, file: !677, line: 68, type: !61)
!5430 = !DILocation(line: 68, column: 7, scope: !5420)
!5431 = !DILocation(line: 74, column: 7, scope: !5432)
!5432 = distinct !DILexicalBlock(scope: !5420, file: !677, line: 74, column: 7)
!5433 = !DILocation(line: 74, column: 16, scope: !5432)
!5434 = !DILocation(line: 74, column: 13, scope: !5432)
!5435 = !DILocation(line: 74, column: 22, scope: !5432)
!5436 = !DILocation(line: 74, column: 33, scope: !5432)
!5437 = !DILocation(line: 74, column: 37, scope: !5432)
!5438 = !DILocation(line: 74, column: 41, scope: !5432)
!5439 = !DILocation(line: 74, column: 25, scope: !5432)
!5440 = !DILocation(line: 74, column: 48, scope: !5432)
!5441 = !DILocation(line: 74, column: 7, scope: !5420)
!5442 = !DILocation(line: 76, column: 7, scope: !5443)
!5443 = distinct !DILexicalBlock(scope: !5432, file: !677, line: 75, column: 5)
!5444 = !DILocation(line: 76, column: 13, scope: !5443)
!5445 = !DILocation(line: 77, column: 12, scope: !5443)
!5446 = !DILocation(line: 78, column: 5, scope: !5443)
!5447 = !DILocalVariable(name: "n1", scope: !5448, file: !677, line: 81, type: !54)
!5448 = distinct !DILexicalBlock(scope: !5432, file: !677, line: 80, column: 5)
!5449 = !DILocation(line: 81, column: 12, scope: !5448)
!5450 = !DILocation(line: 81, column: 17, scope: !5448)
!5451 = !DILocation(line: 81, column: 20, scope: !5448)
!5452 = !DILocalVariable(name: "n2", scope: !5448, file: !677, line: 82, type: !54)
!5453 = !DILocation(line: 82, column: 12, scope: !5448)
!5454 = !DILocation(line: 82, column: 17, scope: !5448)
!5455 = !DILocation(line: 82, column: 20, scope: !5448)
!5456 = !DILocation(line: 84, column: 7, scope: !5448)
!5457 = !DILocation(line: 84, column: 10, scope: !5448)
!5458 = !DILocation(line: 84, column: 17, scope: !5448)
!5459 = !DILocation(line: 85, column: 7, scope: !5448)
!5460 = !DILocation(line: 85, column: 10, scope: !5448)
!5461 = !DILocation(line: 85, column: 17, scope: !5448)
!5462 = !DILocation(line: 87, column: 28, scope: !5448)
!5463 = !DILocation(line: 87, column: 32, scope: !5448)
!5464 = !DILocation(line: 87, column: 38, scope: !5448)
!5465 = !DILocation(line: 87, column: 43, scope: !5448)
!5466 = !DILocation(line: 87, column: 47, scope: !5448)
!5467 = !DILocation(line: 87, column: 53, scope: !5448)
!5468 = !DILocation(line: 87, column: 14, scope: !5448)
!5469 = !DILocation(line: 87, column: 12, scope: !5448)
!5470 = !DILocation(line: 89, column: 19, scope: !5448)
!5471 = !DILocation(line: 89, column: 7, scope: !5448)
!5472 = !DILocation(line: 89, column: 10, scope: !5448)
!5473 = !DILocation(line: 89, column: 17, scope: !5448)
!5474 = !DILocation(line: 90, column: 19, scope: !5448)
!5475 = !DILocation(line: 90, column: 7, scope: !5448)
!5476 = !DILocation(line: 90, column: 10, scope: !5448)
!5477 = !DILocation(line: 90, column: 17, scope: !5448)
!5478 = !DILocation(line: 93, column: 10, scope: !5420)
!5479 = !DILocation(line: 93, column: 3, scope: !5420)
!5480 = distinct !DISubprogram(name: "strcoll_loop", scope: !677, file: !677, line: 35, type: !4351, isLocal: true, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false, unit: !676, variables: !113)
!5481 = !DILocalVariable(name: "s1", arg: 1, scope: !5480, file: !677, line: 35, type: !52)
!5482 = !DILocation(line: 35, column: 27, scope: !5480)
!5483 = !DILocalVariable(name: "s1size", arg: 2, scope: !5480, file: !677, line: 35, type: !172)
!5484 = !DILocation(line: 35, column: 38, scope: !5480)
!5485 = !DILocalVariable(name: "s2", arg: 3, scope: !5480, file: !677, line: 35, type: !52)
!5486 = !DILocation(line: 35, column: 58, scope: !5480)
!5487 = !DILocalVariable(name: "s2size", arg: 4, scope: !5480, file: !677, line: 35, type: !172)
!5488 = !DILocation(line: 35, column: 69, scope: !5480)
!5489 = !DILocalVariable(name: "diff", scope: !5480, file: !677, line: 37, type: !61)
!5490 = !DILocation(line: 37, column: 7, scope: !5480)
!5491 = !DILocation(line: 39, column: 3, scope: !5480)
!5492 = !DILocation(line: 39, column: 13, scope: !5480)
!5493 = !DILocation(line: 39, column: 19, scope: !5480)
!5494 = !DILocation(line: 39, column: 41, scope: !5480)
!5495 = !DILocation(line: 39, column: 45, scope: !5480)
!5496 = !DILocation(line: 39, column: 32, scope: !5480)
!5497 = !DILocation(line: 39, column: 30, scope: !5480)
!5498 = !DILocation(line: 39, column: 50, scope: !5480)
!5499 = !DILocation(line: 39, column: 53, scope: !5480)
!5500 = !DILocation(line: 39, column: 10, scope: !5480)
!5501 = !DILocalVariable(name: "size1", scope: !5502, file: !677, line: 44, type: !172)
!5502 = distinct !DILexicalBlock(scope: !5480, file: !677, line: 40, column: 5)
!5503 = !DILocation(line: 44, column: 14, scope: !5502)
!5504 = !DILocation(line: 44, column: 30, scope: !5502)
!5505 = !DILocation(line: 44, column: 22, scope: !5502)
!5506 = !DILocation(line: 44, column: 34, scope: !5502)
!5507 = !DILocalVariable(name: "size2", scope: !5502, file: !677, line: 45, type: !172)
!5508 = !DILocation(line: 45, column: 14, scope: !5502)
!5509 = !DILocation(line: 45, column: 30, scope: !5502)
!5510 = !DILocation(line: 45, column: 22, scope: !5502)
!5511 = !DILocation(line: 45, column: 34, scope: !5502)
!5512 = !DILocation(line: 46, column: 13, scope: !5502)
!5513 = !DILocation(line: 46, column: 10, scope: !5502)
!5514 = !DILocation(line: 47, column: 13, scope: !5502)
!5515 = !DILocation(line: 47, column: 10, scope: !5502)
!5516 = !DILocation(line: 48, column: 17, scope: !5502)
!5517 = !DILocation(line: 48, column: 14, scope: !5502)
!5518 = !DILocation(line: 49, column: 17, scope: !5502)
!5519 = !DILocation(line: 49, column: 14, scope: !5502)
!5520 = !DILocation(line: 51, column: 11, scope: !5521)
!5521 = distinct !DILexicalBlock(scope: !5502, file: !677, line: 51, column: 11)
!5522 = !DILocation(line: 51, column: 18, scope: !5521)
!5523 = !DILocation(line: 51, column: 11, scope: !5502)
!5524 = !DILocation(line: 52, column: 19, scope: !5521)
!5525 = !DILocation(line: 52, column: 26, scope: !5521)
!5526 = !DILocation(line: 52, column: 16, scope: !5521)
!5527 = !DILocation(line: 52, column: 9, scope: !5521)
!5528 = !DILocation(line: 53, column: 11, scope: !5529)
!5529 = distinct !DILexicalBlock(scope: !5502, file: !677, line: 53, column: 11)
!5530 = !DILocation(line: 53, column: 18, scope: !5529)
!5531 = !DILocation(line: 53, column: 11, scope: !5502)
!5532 = !DILocation(line: 54, column: 9, scope: !5529)
!5533 = distinct !{!5533, !5491, !5534}
!5534 = !DILocation(line: 55, column: 5, scope: !5480)
!5535 = !DILocation(line: 57, column: 10, scope: !5480)
!5536 = !DILocation(line: 57, column: 3, scope: !5480)
!5537 = !DILocation(line: 58, column: 1, scope: !5480)
!5538 = distinct !DISubprogram(name: "memcoll0", scope: !677, file: !677, line: 102, type: !4351, isLocal: false, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: false, unit: !676, variables: !113)
!5539 = !DILocalVariable(name: "s1", arg: 1, scope: !5538, file: !677, line: 102, type: !52)
!5540 = !DILocation(line: 102, column: 23, scope: !5538)
!5541 = !DILocalVariable(name: "s1size", arg: 2, scope: !5538, file: !677, line: 102, type: !172)
!5542 = !DILocation(line: 102, column: 34, scope: !5538)
!5543 = !DILocalVariable(name: "s2", arg: 3, scope: !5538, file: !677, line: 102, type: !52)
!5544 = !DILocation(line: 102, column: 54, scope: !5538)
!5545 = !DILocalVariable(name: "s2size", arg: 4, scope: !5538, file: !677, line: 102, type: !172)
!5546 = !DILocation(line: 102, column: 65, scope: !5538)
!5547 = !DILocation(line: 104, column: 7, scope: !5548)
!5548 = distinct !DILexicalBlock(scope: !5538, file: !677, line: 104, column: 7)
!5549 = !DILocation(line: 104, column: 17, scope: !5548)
!5550 = !DILocation(line: 104, column: 14, scope: !5548)
!5551 = !DILocation(line: 104, column: 24, scope: !5548)
!5552 = !DILocation(line: 104, column: 35, scope: !5548)
!5553 = !DILocation(line: 104, column: 39, scope: !5548)
!5554 = !DILocation(line: 104, column: 43, scope: !5548)
!5555 = !DILocation(line: 104, column: 27, scope: !5548)
!5556 = !DILocation(line: 104, column: 51, scope: !5548)
!5557 = !DILocation(line: 104, column: 7, scope: !5538)
!5558 = !DILocation(line: 106, column: 7, scope: !5559)
!5559 = distinct !DILexicalBlock(scope: !5548, file: !677, line: 105, column: 5)
!5560 = !DILocation(line: 106, column: 13, scope: !5559)
!5561 = !DILocation(line: 107, column: 7, scope: !5559)
!5562 = !DILocation(line: 110, column: 26, scope: !5548)
!5563 = !DILocation(line: 110, column: 30, scope: !5548)
!5564 = !DILocation(line: 110, column: 38, scope: !5548)
!5565 = !DILocation(line: 110, column: 42, scope: !5548)
!5566 = !DILocation(line: 110, column: 12, scope: !5548)
!5567 = !DILocation(line: 110, column: 5, scope: !5548)
!5568 = !DILocation(line: 111, column: 1, scope: !5538)
!5569 = distinct !DISubprogram(name: "c_isascii", scope: !679, file: !679, line: 27, type: !1984, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5570 = !DILocalVariable(name: "c", arg: 1, scope: !5569, file: !679, line: 27, type: !61)
!5571 = !DILocation(line: 27, column: 16, scope: !5569)
!5572 = !DILocation(line: 29, column: 11, scope: !5569)
!5573 = !DILocation(line: 29, column: 13, scope: !5569)
!5574 = !DILocation(line: 29, column: 21, scope: !5569)
!5575 = !DILocation(line: 29, column: 24, scope: !5569)
!5576 = !DILocation(line: 29, column: 26, scope: !5569)
!5577 = !DILocation(line: 29, column: 3, scope: !5569)
!5578 = distinct !DISubprogram(name: "c_isalnum", scope: !679, file: !679, line: 33, type: !1984, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5579 = !DILocalVariable(name: "c", arg: 1, scope: !5578, file: !679, line: 33, type: !61)
!5580 = !DILocation(line: 33, column: 16, scope: !5578)
!5581 = !DILocation(line: 38, column: 12, scope: !5578)
!5582 = !DILocation(line: 38, column: 14, scope: !5578)
!5583 = !DILocation(line: 38, column: 21, scope: !5578)
!5584 = !DILocation(line: 38, column: 24, scope: !5578)
!5585 = !DILocation(line: 38, column: 26, scope: !5578)
!5586 = !DILocation(line: 39, column: 11, scope: !5578)
!5587 = !DILocation(line: 39, column: 16, scope: !5578)
!5588 = !DILocation(line: 39, column: 18, scope: !5578)
!5589 = !DILocation(line: 39, column: 27, scope: !5578)
!5590 = !DILocation(line: 39, column: 34, scope: !5578)
!5591 = !DILocation(line: 39, column: 38, scope: !5578)
!5592 = !DILocation(line: 39, column: 40, scope: !5578)
!5593 = !DILocation(line: 39, column: 49, scope: !5578)
!5594 = !DILocation(line: 38, column: 3, scope: !5578)
!5595 = distinct !DISubprogram(name: "c_isalpha", scope: !679, file: !679, line: 68, type: !1984, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5596 = !DILocalVariable(name: "c", arg: 1, scope: !5595, file: !679, line: 68, type: !61)
!5597 = !DILocation(line: 68, column: 16, scope: !5595)
!5598 = !DILocation(line: 72, column: 12, scope: !5595)
!5599 = !DILocation(line: 72, column: 14, scope: !5595)
!5600 = !DILocation(line: 72, column: 23, scope: !5595)
!5601 = !DILocation(line: 72, column: 30, scope: !5595)
!5602 = !DILocation(line: 72, column: 34, scope: !5595)
!5603 = !DILocation(line: 72, column: 36, scope: !5595)
!5604 = !DILocation(line: 72, column: 45, scope: !5595)
!5605 = !DILocation(line: 72, column: 3, scope: !5595)
!5606 = distinct !DISubprogram(name: "c_isblank", scope: !679, file: !679, line: 97, type: !1984, isLocal: false, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5607 = !DILocalVariable(name: "c", arg: 1, scope: !5606, file: !679, line: 97, type: !61)
!5608 = !DILocation(line: 97, column: 16, scope: !5606)
!5609 = !DILocation(line: 99, column: 11, scope: !5606)
!5610 = !DILocation(line: 99, column: 13, scope: !5606)
!5611 = !DILocation(line: 99, column: 20, scope: !5606)
!5612 = !DILocation(line: 99, column: 23, scope: !5606)
!5613 = !DILocation(line: 99, column: 25, scope: !5606)
!5614 = !DILocation(line: 99, column: 3, scope: !5606)
!5615 = distinct !DISubprogram(name: "c_iscntrl", scope: !679, file: !679, line: 103, type: !1984, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5616 = !DILocalVariable(name: "c", arg: 1, scope: !5615, file: !679, line: 103, type: !61)
!5617 = !DILocation(line: 103, column: 16, scope: !5615)
!5618 = !DILocation(line: 106, column: 12, scope: !5615)
!5619 = !DILocation(line: 106, column: 14, scope: !5615)
!5620 = !DILocation(line: 106, column: 23, scope: !5615)
!5621 = !DILocation(line: 106, column: 28, scope: !5615)
!5622 = !DILocation(line: 106, column: 31, scope: !5615)
!5623 = !DILocation(line: 106, column: 33, scope: !5615)
!5624 = !DILocation(line: 106, column: 3, scope: !5615)
!5625 = distinct !DISubprogram(name: "c_isdigit", scope: !679, file: !679, line: 137, type: !1984, isLocal: false, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5626 = !DILocalVariable(name: "c", arg: 1, scope: !5625, file: !679, line: 137, type: !61)
!5627 = !DILocation(line: 137, column: 16, scope: !5625)
!5628 = !DILocation(line: 140, column: 11, scope: !5625)
!5629 = !DILocation(line: 140, column: 13, scope: !5625)
!5630 = !DILocation(line: 140, column: 20, scope: !5625)
!5631 = !DILocation(line: 140, column: 23, scope: !5625)
!5632 = !DILocation(line: 140, column: 25, scope: !5625)
!5633 = !DILocation(line: 140, column: 3, scope: !5625)
!5634 = distinct !DISubprogram(name: "c_islower", scope: !679, file: !679, line: 154, type: !1984, isLocal: false, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5635 = !DILocalVariable(name: "c", arg: 1, scope: !5634, file: !679, line: 154, type: !61)
!5636 = !DILocation(line: 154, column: 16, scope: !5634)
!5637 = !DILocation(line: 157, column: 11, scope: !5634)
!5638 = !DILocation(line: 157, column: 13, scope: !5634)
!5639 = !DILocation(line: 157, column: 20, scope: !5634)
!5640 = !DILocation(line: 157, column: 23, scope: !5634)
!5641 = !DILocation(line: 157, column: 25, scope: !5634)
!5642 = !DILocation(line: 157, column: 3, scope: !5634)
!5643 = distinct !DISubprogram(name: "c_isgraph", scope: !679, file: !679, line: 174, type: !1984, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5644 = !DILocalVariable(name: "c", arg: 1, scope: !5643, file: !679, line: 174, type: !61)
!5645 = !DILocation(line: 174, column: 16, scope: !5643)
!5646 = !DILocation(line: 177, column: 11, scope: !5643)
!5647 = !DILocation(line: 177, column: 13, scope: !5643)
!5648 = !DILocation(line: 177, column: 20, scope: !5643)
!5649 = !DILocation(line: 177, column: 23, scope: !5643)
!5650 = !DILocation(line: 177, column: 25, scope: !5643)
!5651 = !DILocation(line: 177, column: 3, scope: !5643)
!5652 = distinct !DISubprogram(name: "c_isprint", scope: !679, file: !679, line: 208, type: !1984, isLocal: false, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5653 = !DILocalVariable(name: "c", arg: 1, scope: !5652, file: !679, line: 208, type: !61)
!5654 = !DILocation(line: 208, column: 16, scope: !5652)
!5655 = !DILocation(line: 211, column: 11, scope: !5652)
!5656 = !DILocation(line: 211, column: 13, scope: !5652)
!5657 = !DILocation(line: 211, column: 20, scope: !5652)
!5658 = !DILocation(line: 211, column: 23, scope: !5652)
!5659 = !DILocation(line: 211, column: 25, scope: !5652)
!5660 = !DILocation(line: 211, column: 3, scope: !5652)
!5661 = distinct !DISubprogram(name: "c_ispunct", scope: !679, file: !679, line: 242, type: !1984, isLocal: false, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5662 = !DILocalVariable(name: "c", arg: 1, scope: !5661, file: !679, line: 242, type: !61)
!5663 = !DILocation(line: 242, column: 16, scope: !5661)
!5664 = !DILocation(line: 245, column: 12, scope: !5661)
!5665 = !DILocation(line: 245, column: 14, scope: !5661)
!5666 = !DILocation(line: 245, column: 21, scope: !5661)
!5667 = !DILocation(line: 245, column: 24, scope: !5661)
!5668 = !DILocation(line: 245, column: 26, scope: !5661)
!5669 = !DILocation(line: 246, column: 11, scope: !5661)
!5670 = !DILocation(line: 246, column: 17, scope: !5661)
!5671 = !DILocation(line: 246, column: 19, scope: !5661)
!5672 = !DILocation(line: 246, column: 26, scope: !5661)
!5673 = !DILocation(line: 246, column: 29, scope: !5661)
!5674 = !DILocation(line: 246, column: 31, scope: !5661)
!5675 = !DILocation(line: 247, column: 16, scope: !5661)
!5676 = !DILocation(line: 247, column: 21, scope: !5661)
!5677 = !DILocation(line: 247, column: 23, scope: !5661)
!5678 = !DILocation(line: 247, column: 32, scope: !5661)
!5679 = !DILocation(line: 247, column: 39, scope: !5661)
!5680 = !DILocation(line: 247, column: 43, scope: !5661)
!5681 = !DILocation(line: 247, column: 45, scope: !5661)
!5682 = !DILocation(line: 247, column: 54, scope: !5661)
!5683 = !DILocation(line: 246, column: 14, scope: !5661)
!5684 = !DILocation(line: 245, column: 3, scope: !5661)
!5685 = distinct !DISubprogram(name: "c_isspace", scope: !679, file: !679, line: 266, type: !1984, isLocal: false, isDefinition: true, scopeLine: 267, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5686 = !DILocalVariable(name: "c", arg: 1, scope: !5685, file: !679, line: 266, type: !61)
!5687 = !DILocation(line: 266, column: 16, scope: !5685)
!5688 = !DILocation(line: 268, column: 11, scope: !5685)
!5689 = !DILocation(line: 268, column: 13, scope: !5685)
!5690 = !DILocation(line: 268, column: 20, scope: !5685)
!5691 = !DILocation(line: 268, column: 23, scope: !5685)
!5692 = !DILocation(line: 268, column: 25, scope: !5685)
!5693 = !DILocation(line: 269, column: 11, scope: !5685)
!5694 = !DILocation(line: 269, column: 14, scope: !5685)
!5695 = !DILocation(line: 269, column: 16, scope: !5685)
!5696 = !DILocation(line: 269, column: 24, scope: !5685)
!5697 = !DILocation(line: 269, column: 27, scope: !5685)
!5698 = !DILocation(line: 269, column: 29, scope: !5685)
!5699 = !DILocation(line: 269, column: 37, scope: !5685)
!5700 = !DILocation(line: 269, column: 40, scope: !5685)
!5701 = !DILocation(line: 269, column: 42, scope: !5685)
!5702 = !DILocation(line: 269, column: 50, scope: !5685)
!5703 = !DILocation(line: 269, column: 53, scope: !5685)
!5704 = !DILocation(line: 269, column: 55, scope: !5685)
!5705 = !DILocation(line: 268, column: 3, scope: !5685)
!5706 = distinct !DISubprogram(name: "c_isupper", scope: !679, file: !679, line: 273, type: !1984, isLocal: false, isDefinition: true, scopeLine: 274, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5707 = !DILocalVariable(name: "c", arg: 1, scope: !5706, file: !679, line: 273, type: !61)
!5708 = !DILocation(line: 273, column: 16, scope: !5706)
!5709 = !DILocation(line: 276, column: 11, scope: !5706)
!5710 = !DILocation(line: 276, column: 13, scope: !5706)
!5711 = !DILocation(line: 276, column: 20, scope: !5706)
!5712 = !DILocation(line: 276, column: 23, scope: !5706)
!5713 = !DILocation(line: 276, column: 25, scope: !5706)
!5714 = !DILocation(line: 276, column: 3, scope: !5706)
!5715 = distinct !DISubprogram(name: "c_isxdigit", scope: !679, file: !679, line: 293, type: !1984, isLocal: false, isDefinition: true, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5716 = !DILocalVariable(name: "c", arg: 1, scope: !5715, file: !679, line: 293, type: !61)
!5717 = !DILocation(line: 293, column: 17, scope: !5715)
!5718 = !DILocation(line: 298, column: 12, scope: !5715)
!5719 = !DILocation(line: 298, column: 14, scope: !5715)
!5720 = !DILocation(line: 298, column: 21, scope: !5715)
!5721 = !DILocation(line: 298, column: 24, scope: !5715)
!5722 = !DILocation(line: 298, column: 26, scope: !5715)
!5723 = !DILocation(line: 299, column: 11, scope: !5715)
!5724 = !DILocation(line: 299, column: 16, scope: !5715)
!5725 = !DILocation(line: 299, column: 18, scope: !5715)
!5726 = !DILocation(line: 299, column: 27, scope: !5715)
!5727 = !DILocation(line: 299, column: 34, scope: !5715)
!5728 = !DILocation(line: 299, column: 38, scope: !5715)
!5729 = !DILocation(line: 299, column: 40, scope: !5715)
!5730 = !DILocation(line: 299, column: 49, scope: !5715)
!5731 = !DILocation(line: 298, column: 3, scope: !5715)
!5732 = distinct !DISubprogram(name: "c_tolower", scope: !679, file: !679, line: 320, type: !5733, isLocal: false, isDefinition: true, scopeLine: 321, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5733 = !DISubroutineType(types: !5734)
!5734 = !{!61, !61}
!5735 = !DILocalVariable(name: "c", arg: 1, scope: !5732, file: !679, line: 320, type: !61)
!5736 = !DILocation(line: 320, column: 16, scope: !5732)
!5737 = !DILocation(line: 323, column: 11, scope: !5732)
!5738 = !DILocation(line: 323, column: 13, scope: !5732)
!5739 = !DILocation(line: 323, column: 20, scope: !5732)
!5740 = !DILocation(line: 323, column: 23, scope: !5732)
!5741 = !DILocation(line: 323, column: 25, scope: !5732)
!5742 = !DILocation(line: 323, column: 34, scope: !5732)
!5743 = !DILocation(line: 323, column: 36, scope: !5732)
!5744 = !DILocation(line: 323, column: 42, scope: !5732)
!5745 = !DILocation(line: 323, column: 50, scope: !5732)
!5746 = !DILocation(line: 323, column: 3, scope: !5732)
!5747 = distinct !DISubprogram(name: "c_toupper", scope: !679, file: !679, line: 359, type: !5733, isLocal: false, isDefinition: true, scopeLine: 360, flags: DIFlagPrototyped, isOptimized: false, unit: !678, variables: !113)
!5748 = !DILocalVariable(name: "c", arg: 1, scope: !5747, file: !679, line: 359, type: !61)
!5749 = !DILocation(line: 359, column: 16, scope: !5747)
!5750 = !DILocation(line: 362, column: 11, scope: !5747)
!5751 = !DILocation(line: 362, column: 13, scope: !5747)
!5752 = !DILocation(line: 362, column: 20, scope: !5747)
!5753 = !DILocation(line: 362, column: 23, scope: !5747)
!5754 = !DILocation(line: 362, column: 25, scope: !5747)
!5755 = !DILocation(line: 362, column: 34, scope: !5747)
!5756 = !DILocation(line: 362, column: 36, scope: !5747)
!5757 = !DILocation(line: 362, column: 42, scope: !5747)
!5758 = !DILocation(line: 362, column: 50, scope: !5747)
!5759 = !DILocation(line: 362, column: 3, scope: !5747)
