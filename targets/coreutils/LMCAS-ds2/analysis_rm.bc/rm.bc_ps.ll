; ModuleID = 'rm.bc_ps.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %1*, %0*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%1 = type { %1*, %0*, i32 }
%2 = type { i8*, i32, i32*, i32 }
%3 = type { i64, i64 }
%4 = type { float, float, float, float, i8 }
%5 = type { i32, i32, [8 x i32], i8*, i8* }
%6 = type { i64, i8* }
%7 = type { i8, i32, i8, i8, %3*, i8, i8, i8 }
%8 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %3, %3, %3, [3 x i64] }
%9 = type { %10*, %10*, %10**, i64, i8*, i32, i32, i64, i64, i32 (%10**, %10**)*, i32, %11*, %13, %14 }
%10 = type { %10*, %10*, %10*, i64, i8*, i8*, i8*, i32, i32, i64, %9*, i64, i64, i64, i16, i16, i16, [1 x %8], [1 x i8] }
%11 = type { %12*, %12*, i64, i64, i64, %4*, i64 (i8*, i64)*, i1 (i8*, i8*)*, void (i8*)*, %12* }
%12 = type { i8*, %12* }
%13 = type { %11* }
%14 = type { [4 x i32], i32, i32, i32, i8 }
%15 = type opaque
%16 = type { i64, i64, i16, i8, [256 x i8] }
%17 = type { i32, i32, i8*, i8* }
%18 = type { %3, i64, i32 }
%19 = type { i64, i64, %10* }
%20 = type { i64, i8 }
%21 = type { i64, i64, i64, i64, i64, i64, i64, %22, i64, i64, i64, [4 x i64] }
%22 = type { [2 x i32] }
%23 = type { i32, %24 }
%24 = type { i32 }

@stderr = external global %0*, align 8
@0 = private unnamed_addr constant [39 x i8] c"Try `%s --help' for more information.\0A\00", align 1
@1 = private unnamed_addr constant [31 x i8] c"Usage: %s [OPTION]... FILE...\0A\00", align 1
@stdout = external global %0*, align 8
@2 = private unnamed_addr constant [146 x i8] c"Remove (unlink) the FILE(s).\0A\0A  -f, --force           ignore nonexistent files, never prompt\0A  -i                    prompt before every removal\0A\00", align 1
@3 = private unnamed_addr constant [378 x i8] c"  -I                    prompt once before removing more than three files, or\0A                          when removing recursively.  Less intrusive than -i,\0A                          while still giving protection against most mistakes\0A      --interactive[=WHEN]  prompt according to WHEN: never, once (-I), or\0A                          always (-i).  Without WHEN, prompt always\0A\00", align 1
@4 = private unnamed_addr constant [224 x i8] c"      --one-file-system  when removing a hierarchy recursively, skip any\0A                          directory that is on a file system different from\0A                          that of the corresponding command line argument\0A\00", align 1
@5 = private unnamed_addr constant [231 x i8] c"      --no-preserve-root  do not treat `/' specially\0A      --preserve-root   do not remove `/' (default)\0A  -r, -R, --recursive   remove directories and their contents recursively\0A  -v, --verbose         explain what is being done\0A\00", align 1
@6 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@7 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@8 = private unnamed_addr constant [155 x i8] c"\0ABy default, rm does not remove directories.  Use the --recursive (-r or -R)\0Aoption to remove each listed directory, too, along with all of its contents.\0A\00", align 1
@9 = private unnamed_addr constant [122 x i8] c"\0ATo remove a file whose name starts with a `-', for example `-foo',\0Ause one of these commands:\0A  %s -- -foo\0A\0A  %s ./-foo\0A\00", align 1
@10 = private unnamed_addr constant [198 x i8] c"\0ANote that if you use rm to remove a file, it is usually possible to recover\0Athe contents of that file.  If you want more assurance that the contents are\0Atruly unrecoverable, consider using shred.\0A\00", align 1
@11 = private unnamed_addr constant [23 x i8] c"\0AReport %s bugs to %s\0A\00", align 1
@12 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@13 = private unnamed_addr constant [49 x i8] c"%s home page: <http://www.gnu.org/software/%s/>\0A\00", align 1
@14 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@15 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@16 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@17 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@18 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@19 = private unnamed_addr constant [65 x i8] c"For complete documentation, run: info coreutils '%s invocation'\0A\00", align 1
@20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@21 = private unnamed_addr constant [8 x i8] c"dfirvIR\00", align 1
@22 = internal constant [12 x %2] [%2 { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @47, i32 0, i32 0), i32 0, i32* null, i32 100 }, %2 { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @48, i32 0, i32 0), i32 0, i32* null, i32 102 }, %2 { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @49, i32 0, i32 0), i32 2, i32* null, i32 128 }, %2 { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @50, i32 0, i32 0), i32 0, i32* null, i32 129 }, %2 { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @51, i32 0, i32 0), i32 0, i32* null, i32 130 }, %2 { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @52, i32 0, i32 0), i32 0, i32* null, i32 131 }, %2 { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @53, i32 0, i32 0), i32 0, i32* null, i32 132 }, %2 { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @54, i32 0, i32 0), i32 0, i32* null, i32 114 }, %2 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @55, i32 0, i32 0), i32 0, i32* null, i32 118 }, %2 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @56, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %2 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @57, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %2 zeroinitializer], align 16
@optarg = external global i8*, align 8
@23 = private unnamed_addr constant [14 x i8] c"--interactive\00", align 1
@24 = internal constant [7 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @41, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @42, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @43, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @44, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @45, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @46, i32 0, i32 0), i8* null], align 16
@25 = internal constant [6 x i32] [i32 0, i32 0, i32 0, i32 1, i32 2, i32 2], align 16
@26 = private unnamed_addr constant [3 x i8] c"rm\00", align 1
@27 = private unnamed_addr constant [11 x i8] c"Paul Rubin\00", align 1
@28 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@29 = private unnamed_addr constant [20 x i8] c"Richard M. Stallman\00", align 1
@30 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@optind = external global i32, align 4
@31 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@32 = internal global %3 zeroinitializer, align 8
@33 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@34 = private unnamed_addr constant [31 x i8] c"failed to get attributes of %s\00", align 1
@35 = private unnamed_addr constant [39 x i8] c"%s: remove all arguments recursively? \00", align 1
@36 = private unnamed_addr constant [27 x i8] c"%s: remove all arguments? \00", align 1
@37 = private unnamed_addr constant [22 x i8] c"VALID_STATUS (status)\00", align 1
@38 = private unnamed_addr constant [15 x i8] c"../../src/rm.c\00", align 1
@39 = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@40 = private unnamed_addr constant [38 x i8] c"Try `%s ./%s' to remove the file %s.\0A\00", align 1
@41 = private unnamed_addr constant [6 x i8] c"never\00", align 1
@42 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@43 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@44 = private unnamed_addr constant [5 x i8] c"once\00", align 1
@45 = private unnamed_addr constant [7 x i8] c"always\00", align 1
@46 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@47 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@48 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@49 = private unnamed_addr constant [12 x i8] c"interactive\00", align 1
@50 = private unnamed_addr constant [16 x i8] c"one-file-system\00", align 1
@51 = private unnamed_addr constant [17 x i8] c"no-preserve-root\00", align 1
@52 = private unnamed_addr constant [14 x i8] c"preserve-root\00", align 1
@53 = private unnamed_addr constant [19 x i8] c"-presume-input-tty\00", align 1
@54 = private unnamed_addr constant [10 x i8] c"recursive\00", align 1
@55 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@56 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@57 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@58 = private unnamed_addr constant [16 x i8] c"fts_read failed\00", align 1
@59 = private unnamed_addr constant [17 x i8] c"VALID_STATUS (s)\00", align 1
@60 = private unnamed_addr constant [19 x i8] c"../../src/remove.c\00", align 1
@61 = private unnamed_addr constant [60 x i8] c"enum RM_status rm(char *const *, const struct rm_options *)\00", align 1
@62 = private unnamed_addr constant [17 x i8] c"fts_close failed\00", align 1
@63 = private unnamed_addr constant [17 x i8] c"cannot remove %s\00", align 1
@64 = private unnamed_addr constant [28 x i8] c"cannot remove directory: %s\00", align 1
@65 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@66 = private unnamed_addr constant [45 x i8] c"it is dangerous to operate recursively on %s\00", align 1
@67 = private unnamed_addr constant [58 x i8] c"it is dangerous to operate recursively on %s (same as %s)\00", align 1
@68 = private unnamed_addr constant [49 x i8] c"use --no-preserve-root to override this failsafe\00", align 1
@69 = private unnamed_addr constant [46 x i8] c"skipping %s, since it's on a different device\00", align 1
@70 = private unnamed_addr constant [186 x i8] c"WARNING: Circular directory structure.\0AThis almost certainly means that you have a corrupted file system.\0ANOTIFY YOUR SYSTEM MANAGER.\0AThe following directory is part of the cycle:\0A  %s\0A\00", align 1
@71 = private unnamed_addr constant [21 x i8] c"traversal failed: %s\00", align 1
@72 = private unnamed_addr constant [56 x i8] c"unexpected failure: fts_info=%d: %s\0Aplease report to %s\00", align 1
@73 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@74 = private unnamed_addr constant [23 x i8] c"removed directory: %s\0A\00", align 1
@75 = private unnamed_addr constant [12 x i8] c"removed %s\0A\00", align 1
@76 = private unnamed_addr constant [48 x i8] c"%s: descend into write-protected directory %s? \00", align 1
@77 = private unnamed_addr constant [32 x i8] c"%s: descend into directory %s? \00", align 1
@78 = private unnamed_addr constant [35 x i8] c"%s: remove write-protected %s %s? \00", align 1
@79 = private unnamed_addr constant [19 x i8] c"%s: remove %s %s? \00", align 1
@Version = global i8* getelementptr inbounds ([10 x i8], [10 x i8]* @80, i32 0, i32 0), align 8
@80 = private unnamed_addr constant [10 x i8] c"8.4-dirty\00", align 1
@program_name = global i8* null, align 8
@81 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@82 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@83 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external global i8*, align 8
@program_invocation_name = external global i8*, align 8
@84 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@85 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@86 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@87 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@88 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@89 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@90 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@91 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@92 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@93 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@94 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@95 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@96 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@97 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@98 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@99 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@100 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@101 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@102 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@103 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16
@argmatch_die = global void ()* @184, align 8
@104 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@105 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@106 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@107 = private unnamed_addr constant [10 x i8] c"\0A  - `%s'\00", align 1
@108 = private unnamed_addr constant [7 x i8] c", `%s'\00", align 1
@109 = internal global i8* null, align 8
@stdin = external global %0*, align 8
@110 = private unnamed_addr constant [19 x i8] c"error closing file\00", align 1
@111 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@112 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@113 = internal global i8* null, align 8
@114 = internal global i8 0, align 1
@115 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@116 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@117 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4
@118 = private unnamed_addr constant [19 x i8] c"regular empty file\00", align 1
@119 = private unnamed_addr constant [13 x i8] c"regular file\00", align 1
@120 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@121 = private unnamed_addr constant [19 x i8] c"block special file\00", align 1
@122 = private unnamed_addr constant [23 x i8] c"character special file\00", align 1
@123 = private unnamed_addr constant [5 x i8] c"fifo\00", align 1
@124 = private unnamed_addr constant [14 x i8] c"symbolic link\00", align 1
@125 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@126 = private unnamed_addr constant [14 x i8] c"message queue\00", align 1
@127 = private unnamed_addr constant [10 x i8] c"semaphore\00", align 1
@128 = private unnamed_addr constant [21 x i8] c"shared memory object\00", align 1
@129 = private unnamed_addr constant [11 x i8] c"weird file\00", align 1
@130 = private unnamed_addr constant [2 x i8] c".\00", align 1
@131 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@132 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@133 = private unnamed_addr constant [24 x i8] c"# entries:         %lu\0A\00", align 1
@134 = private unnamed_addr constant [24 x i8] c"# buckets:         %lu\0A\00", align 1
@135 = private unnamed_addr constant [33 x i8] c"# buckets used:    %lu (%.2f%%)\0A\00", align 1
@136 = private unnamed_addr constant [24 x i8] c"max bucket length: %lu\0A\00", align 1
@137 = internal constant %4 { float 0.000000e+00, float 1.000000e+00, float 0x3FE99999A0000000, float 0x3FF69FBE80000000, i8 0 }, align 4
@quoting_style_args = constant [9 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @138, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @139, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @140, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @141, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @142, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @143, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @144, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @145, i32 0, i32 0), i8* null], align 16
@138 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@139 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@140 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@141 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@142 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@143 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@144 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@145 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = constant [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], align 16
@146 = internal global %5 zeroinitializer, align 8
@147 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@148 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@149 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@150 = internal global %6* @153, align 8
@151 = internal global i32 1, align 4
@152 = internal global [256 x i8] zeroinitializer, align 16
@153 = internal global %6 { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @152, i32 0, i32 0) }, align 8
@154 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@155 = internal global i8 0, align 1
@156 = internal global i8 0, align 1
@157 = private unnamed_addr constant [16 x i8] c"errno != EINVAL\00", align 1
@158 = private unnamed_addr constant [17 x i8] c"../../lib/xfts.c\00", align 1
@159 = private unnamed_addr constant [78 x i8] c"FTS *xfts_open(char *const *, int, int (*)(const FTSENT **, const FTSENT **))\00", align 1
@160 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@161 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@162 = private unnamed_addr constant [25 x i8] c"state->magic == CC_MAGIC\00", align 1
@163 = private unnamed_addr constant [24 x i8] c"../../lib/cycle-check.c\00", align 1
@164 = private unnamed_addr constant [67 x i8] c"_Bool cycle_check(struct cycle_check_state *, const struct stat *)\00", align 1
@165 = internal global i32 0, align 4

; Function Attrs: noinline noreturn nounwind uwtable
define void @usage(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %9

; <label>:5:                                      ; preds = %1
  %6 = load %0*, %0** @stderr, align 8
  %7 = load i8*, i8** @program_name, align 8
  %8 = call i32 (%0*, i8*, ...) @fprintf(%0* %6, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @0, i32 0, i32 0), i8* %7)
  br label %31

; <label>:9:                                      ; preds = %1
  %10 = load i8*, i8** @program_name, align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @1, i32 0, i32 0), i8* %10)
  %12 = load %0*, %0** @stdout, align 8
  %13 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([146 x i8], [146 x i8]* @2, i32 0, i32 0), %0* %12)
  %14 = load %0*, %0** @stdout, align 8
  %15 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([378 x i8], [378 x i8]* @3, i32 0, i32 0), %0* %14)
  %16 = load %0*, %0** @stdout, align 8
  %17 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([224 x i8], [224 x i8]* @4, i32 0, i32 0), %0* %16)
  %18 = load %0*, %0** @stdout, align 8
  %19 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([231 x i8], [231 x i8]* @5, i32 0, i32 0), %0* %18)
  %20 = load %0*, %0** @stdout, align 8
  %21 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @6, i32 0, i32 0), %0* %20)
  %22 = load %0*, %0** @stdout, align 8
  %23 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @7, i32 0, i32 0), %0* %22)
  %24 = load %0*, %0** @stdout, align 8
  %25 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @8, i32 0, i32 0), %0* %24)
  %26 = load i8*, i8** @program_name, align 8
  %27 = load i8*, i8** @program_name, align 8
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @9, i32 0, i32 0), i8* %26, i8* %27)
  %29 = load %0*, %0** @stdout, align 8
  %30 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @10, i32 0, i32 0), %0* %29)
  call void @166()
  br label %31

; <label>:31:                                     ; preds = %9, %5
  %32 = load i32, i32* %2, align 4
  call void @exit(i32 %32) #11
  unreachable
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @fprintf(%0*, i8*, ...) #2

declare i32 @printf(i8*, ...) #2

declare i32 @fputs_unlocked(i8*, %0*) #2

; Function Attrs: noinline nounwind uwtable
define internal void @166() #3 {
  %1 = alloca i8*, align 8
  %2 = load i8*, i8** @program_name, align 8
  %3 = call i8* @last_component(i8* %2)
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @11, i32 0, i32 0), i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0))
  %6 = load %0*, %0** @stdout, align 8
  %7 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @16, i32 0, i32 0), %0* %6)
  %8 = call i8* @setlocale(i32 5, i8* null) #8
  store i8* %8, i8** %1, align 8
  %9 = load i8*, i8** %1, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %19

; <label>:11:                                     ; preds = %0
  %12 = load i8*, i8** %1, align 8
  %13 = call i32 @strncmp(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @17, i32 0, i32 0), i64 3) #12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

; <label>:15:                                     ; preds = %11
  %16 = load i8*, i8** @program_name, align 8
  %17 = call i8* @last_component(i8* %16)
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @18, i32 0, i32 0), i8* %17)
  br label %19

; <label>:19:                                     ; preds = %15, %11, %0
  %20 = load i8*, i8** @program_name, align 8
  %21 = call i8* @last_component(i8* %20)
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @19, i32 0, i32 0), i8* %21)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #5

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #6

; Function Attrs: noinline nounwind uwtable
define void @klee_dump_memory() #3 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32, i8**) #3 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca %7, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8 1, i8* %6
  store i8 0, i8* %8
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  call void @set_program_name(i8* %16)
  %17 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @20, i32 0, i32 0)) #8
  %18 = call i32 @atexit(void ()* @close_stdin) #8
  call void @167(%7* %7)
  %19 = call i32 @168()
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @getopt_long(i32 %20, i8** %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), %2* getelementptr inbounds ([12 x %2], [12 x %2]* @22, i32 0, i32 0), i32* null) #8
  store i32 %22, i32* %9, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %27

; <label>:24:                                     ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = load i8**, i8*** %5, align 8
  call void @169(i32 %25, i8** %26)
  call void @usage(i32 1) #13
  unreachable

; <label>:27:                                     ; preds = %2
  call void @klee_dump_memory()
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @optind, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %37

; <label>:31:                                     ; preds = %27
  %32 = getelementptr inbounds %7, %7* %7, i32 0, i32 0
  %33 = load i8, i8* %32, align 8
  %34 = trunc i8 %33 to i1
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %31
  call void @exit(i32 0) #11
  unreachable

; <label>:36:                                     ; preds = %31
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @31, i32 0, i32 0))
  call void @usage(i32 1) #13
  unreachable

; <label>:37:                                     ; preds = %27
  %38 = getelementptr inbounds %7, %7* %7, i32 0, i32 3
  %39 = load i8, i8* %38, align 1
  %40 = trunc i8 %39 to i1
  br i1 %40, label %41, label %54

; <label>:41:                                     ; preds = %37
  %42 = load i8, i8* %6, align 1
  %43 = trunc i8 %42 to i1
  br i1 %43, label %44, label %54

; <label>:44:                                     ; preds = %41
  %45 = call %3* @get_root_dev_ino(%3* @32)
  %46 = getelementptr inbounds %7, %7* %7, i32 0, i32 4
  store %3* %45, %3** %46, align 8
  %47 = getelementptr inbounds %7, %7* %7, i32 0, i32 4
  %48 = load %3*, %3** %47, align 8
  %49 = icmp eq %3* %48, null
  br i1 %49, label %50, label %54

; <label>:50:                                     ; preds = %44
  %51 = call i32* @__errno_location() #14
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @33, i32 0, i32 0))
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @34, i32 0, i32 0), i8* %53)
  br label %54

; <label>:54:                                     ; preds = %44, %50, %41, %37
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @optind, align 4
  %57 = sub nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %11, align 8
  %59 = load i8**, i8*** %5, align 8
  %60 = load i32, i32* @optind, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  store i8** %62, i8*** %12, align 8
  %63 = load i8, i8* %8, align 1
  %64 = trunc i8 %63 to i1
  br i1 %64, label %65, label %82

; <label>:65:                                     ; preds = %54
  %66 = getelementptr inbounds %7, %7* %7, i32 0, i32 3
  %67 = load i8, i8* %66, align 1
  %68 = trunc i8 %67 to i1
  %69 = load i64, i64* %11, align 8
  %70 = icmp ult i64 3, %69
  %or.cond = or i1 %68, %70
  br i1 %or.cond, label %71, label %82

; <label>:71:                                     ; preds = %65
  %72 = load %0*, %0** @stderr, align 8
  %73 = getelementptr inbounds %7, %7* %7, i32 0, i32 3
  %74 = load i8, i8* %73, align 1
  %75 = trunc i8 %74 to i1
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @35, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @36, i32 0, i32 0)
  %78 = load i8*, i8** @program_name, align 8
  %79 = call i32 (%0*, i8*, ...) @fprintf(%0* %72, i8* %77, i8* %78)
  %80 = call zeroext i1 @yesno()
  br i1 %80, label %82, label %81

; <label>:81:                                     ; preds = %71
  call void @exit(i32 0) #11
  unreachable

; <label>:82:                                     ; preds = %71, %65, %54
  %83 = load i8**, i8*** %12, align 8
  %84 = call i32 @rm(i8** %83, %7* %7)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp eq i32 %85, 2
  %87 = load i32, i32* %13, align 4
  %88 = icmp eq i32 %87, 3
  %or.cond3 = or i1 %86, %88
  %89 = load i32, i32* %13, align 4
  %90 = icmp eq i32 %89, 4
  %or.cond5 = or i1 %or.cond3, %90
  br i1 %or.cond5, label %92, label %91

; <label>:91:                                     ; preds = %82
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @38, i32 0, i32 0), i32 356, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @39, i32 0, i32 0)) #11
  unreachable

; <label>:92:                                     ; preds = %82
  %93 = load i32, i32* %13, align 4
  %94 = icmp eq i32 %93, 4
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 1, i32 0
  call void @exit(i32 %96) #11
  unreachable
}

; Function Attrs: nounwind
declare i32 @atexit(void ()*) #5

; Function Attrs: noinline nounwind uwtable
define internal void @167(%7*) #3 {
  %2 = alloca %7*, align 8
  store %7* %0, %7** %2, align 8
  %3 = load %7*, %7** %2, align 8
  %4 = getelementptr inbounds %7, %7* %3, i32 0, i32 0
  store i8 0, i8* %4, align 8
  %5 = load %7*, %7** %2, align 8
  %6 = getelementptr inbounds %7, %7* %5, i32 0, i32 1
  store i32 4, i32* %6, align 4
  %7 = load %7*, %7** %2, align 8
  %8 = getelementptr inbounds %7, %7* %7, i32 0, i32 2
  store i8 0, i8* %8, align 8
  %9 = load %7*, %7** %2, align 8
  %10 = getelementptr inbounds %7, %7* %9, i32 0, i32 3
  store i8 0, i8* %10, align 1
  %11 = load %7*, %7** %2, align 8
  %12 = getelementptr inbounds %7, %7* %11, i32 0, i32 4
  store %3* null, %3** %12, align 8
  %13 = call i32 @isatty(i32 0) #8
  %14 = icmp ne i32 %13, 0
  %15 = load %7*, %7** %2, align 8
  %16 = getelementptr inbounds %7, %7* %15, i32 0, i32 5
  %17 = zext i1 %14 to i8
  store i8 %17, i8* %16, align 8
  %18 = load %7*, %7** %2, align 8
  %19 = getelementptr inbounds %7, %7* %18, i32 0, i32 6
  store i8 0, i8* %19, align 1
  %20 = load %7*, %7** %2, align 8
  %21 = getelementptr inbounds %7, %7* %20, i32 0, i32 7
  store i8 0, i8* %21, align 2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @168() #3 {
  ret i32 -1
}

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %2*, i32*) #5

; Function Attrs: noinline nounwind uwtable
define internal void @169(i32, i8**) #3 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %8, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 1, i32* %5, align 4
  br label %8

; <label>:8:                                      ; preds = %43, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %46

; <label>:12:                                     ; preds = %8
  %13 = load i8**, i8*** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 45
  br i1 %22, label %23, label %43

; <label>:23:                                     ; preds = %12
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

; <label>:29:                                     ; preds = %23
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @lstat(i8* %30, %8* %7) #8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

; <label>:33:                                     ; preds = %29
  %34 = load %0*, %0** @stderr, align 8
  %35 = load i8**, i8*** %4, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i8* @quotearg_n_style(i32 1, i32 1, i8* %38)
  %40 = load i8*, i8** %6, align 8
  %41 = call i8* @quote(i8* %40)
  %42 = call i32 (%0*, i8*, ...) @fprintf(%0* %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @40, i32 0, i32 0), i8* %37, i8* %39, i8* %41)
  br label %46

; <label>:43:                                     ; preds = %12, %23, %29
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %8

; <label>:46:                                     ; preds = %33, %8
  ret void
}

declare void @error(i32, i32, i8*, ...) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: nounwind
declare i32 @lstat(i8*, %8*) #5

; Function Attrs: nounwind
declare i32 @isatty(i32) #5

; Function Attrs: noinline nounwind uwtable
define i32 @rm(i8**, %7*) #3 {
  %3 = alloca i8**, align 8
  %4 = alloca %7*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %9*, align 8
  %8 = alloca %10*, align 8
  %9 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store %7* %1, %7** %4, align 8
  store i32 2, i32* %5, align 4
  %10 = load i8**, i8*** %3, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %67

; <label>:13:                                     ; preds = %2
  store i32 536, i32* %6, align 4
  %14 = load %7*, %7** %4, align 8
  %15 = getelementptr inbounds %7, %7* %14, i32 0, i32 2
  %16 = load i8, i8* %15, align 8
  %17 = trunc i8 %16 to i1
  br i1 %17, label %18, label %21

; <label>:18:                                     ; preds = %13
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %19, 64
  store i32 %20, i32* %6, align 4
  br label %21

; <label>:21:                                     ; preds = %18, %13
  %22 = load i8**, i8*** %3, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call %9* @xfts_open(i8** %22, i32 %23, i32 (%10**, %10**)* null)
  store %9* %24, %9** %7, align 8
  br label %25

; <label>:25:                                     ; preds = %21, %59
  %26 = load %9*, %9** %7, align 8
  %27 = call %10* @fts_read(%9* %26)
  store %10* %27, %10** %8, align 8
  %28 = load %10*, %10** %8, align 8
  %29 = icmp eq %10* %28, null
  br i1 %29, label %30, label %37

; <label>:30:                                     ; preds = %25
  %31 = call i32* @__errno_location() #14
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %60

; <label>:34:                                     ; preds = %30
  %35 = call i32* @__errno_location() #14
  %36 = load i32, i32* %35, align 4
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @58, i32 0, i32 0))
  store i32 4, i32* %5, align 4
  br label %60

; <label>:37:                                     ; preds = %25
  %38 = load %9*, %9** %7, align 8
  %39 = load %10*, %10** %8, align 8
  %40 = load %7*, %7** %4, align 8
  %41 = call i32 @170(%9* %38, %10* %39, %7* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %42, 2
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 3
  %or.cond = or i1 %43, %45
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 4
  %or.cond3 = or i1 %or.cond, %47
  br i1 %or.cond3, label %49, label %48

; <label>:48:                                     ; preds = %37
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @59, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @60, i32 0, i32 0), i32 624, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @61, i32 0, i32 0)) #11
  unreachable

; <label>:49:                                     ; preds = %37
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %50, 4
  br i1 %51, label %57, label %52

; <label>:52:                                     ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %53, 3
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %55, 2
  %or.cond5 = and i1 %54, %56
  br i1 %or.cond5, label %57, label %59

; <label>:57:                                     ; preds = %52, %49
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %5, align 4
  br label %59

; <label>:59:                                     ; preds = %52, %57
  br label %25

; <label>:60:                                     ; preds = %30, %34
  %61 = load %9*, %9** %7, align 8
  %62 = call i32 @fts_close(%9* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

; <label>:64:                                     ; preds = %60
  %65 = call i32* @__errno_location() #14
  %66 = load i32, i32* %65, align 4
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @62, i32 0, i32 0))
  store i32 4, i32* %5, align 4
  br label %67

; <label>:67:                                     ; preds = %60, %64, %2
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @170(%9*, %10*, %7*) #3 {
  %4 = alloca i32, align 4
  %5 = alloca %9*, align 8
  %6 = alloca %10*, align 8
  %7 = alloca %7*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store %9* %0, %9** %5, align 8
  store %10* %1, %10** %6, align 8
  store %7* %2, %7** %7, align 8
  %12 = load %10*, %10** %6, align 8
  %13 = getelementptr inbounds %10, %10* %12, i32 0, i32 14
  %14 = load i16, i16* %13, align 8
  %15 = zext i16 %14 to i32
  switch i32 %15, label %210 [
    i32 1, label %16
    i32 8, label %129
    i32 10, label %129
    i32 12, label %129
    i32 13, label %129
    i32 6, label %129
    i32 4, label %129
    i32 11, label %129
    i32 3, label %129
    i32 2, label %193
    i32 7, label %200
  ]

; <label>:16:                                     ; preds = %3
  %17 = load %7*, %7** %7, align 8
  %18 = getelementptr inbounds %7, %7* %17, i32 0, i32 3
  %19 = load i8, i8* %18, align 1
  %20 = trunc i8 %19 to i1
  %21 = load %10*, %10** %6, align 8
  br i1 %20, label %29, label %22

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds %10, %10* %21, i32 0, i32 6
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @quote(i8* %24)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @63, i32 0, i32 0), i8* %25)
  %26 = load %10*, %10** %6, align 8
  call void @171(%10* %26)
  %27 = load %9*, %9** %5, align 8
  %28 = load %10*, %10** %6, align 8
  call void @172(%9* %27, %10* %28)
  store i32 4, i32* %4, align 4
  br label %219

; <label>:29:                                     ; preds = %16
  %30 = getelementptr inbounds %10, %10* %21, i32 0, i32 11
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %104

; <label>:33:                                     ; preds = %29
  %34 = load %10*, %10** %6, align 8
  %35 = getelementptr inbounds %10, %10* %34, i32 0, i32 6
  %36 = load i8*, i8** %35, align 8
  %37 = call zeroext i1 @strip_trailing_slashes(i8* %36)
  br i1 %37, label %38, label %45

; <label>:38:                                     ; preds = %33
  %39 = load %10*, %10** %6, align 8
  %40 = getelementptr inbounds %10, %10* %39, i32 0, i32 6
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @strlen(i8* %41) #12
  %43 = load %10*, %10** %6, align 8
  %44 = getelementptr inbounds %10, %10* %43, i32 0, i32 9
  store i64 %42, i64* %44, align 8
  br label %45

; <label>:45:                                     ; preds = %38, %33
  %46 = load %10*, %10** %6, align 8
  %47 = getelementptr inbounds %10, %10* %46, i32 0, i32 5
  %48 = load i8*, i8** %47, align 8
  %49 = call i8* @last_component(i8* %48)
  %50 = call zeroext i1 @173(i8* %49)
  br i1 %50, label %51, label %58

; <label>:51:                                     ; preds = %45
  %52 = load %10*, %10** %6, align 8
  %53 = getelementptr inbounds %10, %10* %52, i32 0, i32 6
  %54 = load i8*, i8** %53, align 8
  %55 = call i8* @quote(i8* %54)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @64, i32 0, i32 0), i8* %55)
  %56 = load %9*, %9** %5, align 8
  %57 = load %10*, %10** %6, align 8
  call void @172(%9* %56, %10* %57)
  store i32 4, i32* %4, align 4
  br label %219

; <label>:58:                                     ; preds = %45
  %59 = load %7*, %7** %7, align 8
  %60 = getelementptr inbounds %7, %7* %59, i32 0, i32 4
  %61 = load %3*, %3** %60, align 8
  %62 = icmp ne %3* %61, null
  br i1 %62, label %63, label %104

; <label>:63:                                     ; preds = %58
  %64 = load %10*, %10** %6, align 8
  %65 = getelementptr inbounds %10, %10* %64, i32 0, i32 17
  %66 = getelementptr inbounds [1 x %8], [1 x %8]* %65, i32 0, i32 0
  %67 = getelementptr inbounds %8, %8* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %7*, %7** %7, align 8
  %70 = getelementptr inbounds %7, %7* %69, i32 0, i32 4
  %71 = load %3*, %3** %70, align 8
  %72 = getelementptr inbounds %3, %3* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %68, %73
  br i1 %74, label %75, label %104

; <label>:75:                                     ; preds = %63
  %76 = load %10*, %10** %6, align 8
  %77 = getelementptr inbounds %10, %10* %76, i32 0, i32 17
  %78 = getelementptr inbounds [1 x %8], [1 x %8]* %77, i32 0, i32 0
  %79 = getelementptr inbounds %8, %8* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %7*, %7** %7, align 8
  %82 = getelementptr inbounds %7, %7* %81, i32 0, i32 4
  %83 = load %3*, %3** %82, align 8
  %84 = getelementptr inbounds %3, %3* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %80, %85
  br i1 %86, label %87, label %104

; <label>:87:                                     ; preds = %75
  %88 = load %10*, %10** %6, align 8
  %89 = getelementptr inbounds %10, %10* %88, i32 0, i32 6
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @strcmp(i8* %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @65, i32 0, i32 0)) #12
  %92 = icmp eq i32 %91, 0
  %93 = load %10*, %10** %6, align 8
  %94 = getelementptr inbounds %10, %10* %93, i32 0, i32 6
  %95 = load i8*, i8** %94, align 8
  br i1 %92, label %96, label %98

; <label>:96:                                     ; preds = %87
  %97 = call i8* @quote(i8* %95)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @66, i32 0, i32 0), i8* %97)
  br label %101

; <label>:98:                                     ; preds = %87
  %99 = call i8* @quote_n(i32 0, i8* %95)
  %100 = call i8* @quote_n(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @65, i32 0, i32 0))
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @67, i32 0, i32 0), i8* %99, i8* %100)
  br label %101

; <label>:101:                                    ; preds = %98, %96
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @68, i32 0, i32 0))
  %102 = load %9*, %9** %5, align 8
  %103 = load %10*, %10** %6, align 8
  call void @172(%9* %102, %10* %103)
  store i32 4, i32* %4, align 4
  br label %219

; <label>:104:                                    ; preds = %58, %63, %75, %29
  %105 = load %9*, %9** %5, align 8
  %106 = load %10*, %10** %6, align 8
  %107 = load %7*, %7** %7, align 8
  %108 = call i32 @174(%9* %105, %10* %106, i1 zeroext true, %7* %107, i32 2, i32* %8)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp eq i32 %109, 2
  %111 = load i32, i32* %8, align 4
  %112 = icmp eq i32 %111, 4
  %or.cond = and i1 %110, %112
  br i1 %or.cond, label %113, label %120

; <label>:113:                                    ; preds = %104
  %114 = load %9*, %9** %5, align 8
  %115 = load %10*, %10** %6, align 8
  %116 = load %7*, %7** %7, align 8
  %117 = call i32 @175(%9* %114, %10* %115, %7* %116, i1 zeroext true)
  store i32 %117, i32* %9, align 4
  %118 = load %9*, %9** %5, align 8
  %119 = load %10*, %10** %6, align 8
  call void @172(%9* %118, %10* %119)
  br label %120

; <label>:120:                                    ; preds = %113, %104
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 2
  br i1 %122, label %123, label %127

; <label>:123:                                    ; preds = %120
  %124 = load %10*, %10** %6, align 8
  call void @171(%10* %124)
  %125 = load %9*, %9** %5, align 8
  %126 = load %10*, %10** %6, align 8
  call void @172(%9* %125, %10* %126)
  br label %127

; <label>:127:                                    ; preds = %123, %120
  %128 = load i32, i32* %9, align 4
  store i32 %128, i32* %4, align 4
  br label %219

; <label>:129:                                    ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  %130 = load %10*, %10** %6, align 8
  %131 = getelementptr inbounds %10, %10* %130, i32 0, i32 14
  %132 = load i16, i16* %131, align 8
  %133 = zext i16 %132 to i32
  %134 = icmp eq i32 %133, 6
  br i1 %134, label %135, label %161

; <label>:135:                                    ; preds = %129
  %136 = load %7*, %7** %7, align 8
  %137 = getelementptr inbounds %7, %7* %136, i32 0, i32 2
  %138 = load i8, i8* %137, align 8
  %139 = trunc i8 %138 to i1
  br i1 %139, label %140, label %161

; <label>:140:                                    ; preds = %135
  %141 = load %10*, %10** %6, align 8
  %142 = getelementptr inbounds %10, %10* %141, i32 0, i32 11
  %143 = load i64, i64* %142, align 8
  %144 = icmp slt i64 0, %143
  br i1 %144, label %145, label %161

; <label>:145:                                    ; preds = %140
  %146 = load %10*, %10** %6, align 8
  %147 = getelementptr inbounds %10, %10* %146, i32 0, i32 17
  %148 = getelementptr inbounds [1 x %8], [1 x %8]* %147, i32 0, i32 0
  %149 = getelementptr inbounds %8, %8* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %9*, %9** %5, align 8
  %152 = getelementptr inbounds %9, %9* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %150, %153
  br i1 %154, label %155, label %161

; <label>:155:                                    ; preds = %145
  %156 = load %10*, %10** %6, align 8
  call void @171(%10* %156)
  %157 = load %10*, %10** %6, align 8
  %158 = getelementptr inbounds %10, %10* %157, i32 0, i32 6
  %159 = load i8*, i8** %158, align 8
  %160 = call i8* @quote(i8* %159)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @69, i32 0, i32 0), i8* %160)
  store i32 4, i32* %4, align 4
  br label %219

; <label>:161:                                    ; preds = %145, %140, %135, %129
  %162 = load %10*, %10** %6, align 8
  %163 = getelementptr inbounds %10, %10* %162, i32 0, i32 14
  %164 = load i16, i16* %163, align 8
  %165 = zext i16 %164 to i32
  %166 = icmp eq i32 %165, 6
  br i1 %166, label %173, label %167

; <label>:167:                                    ; preds = %161
  %168 = load %10*, %10** %6, align 8
  %169 = getelementptr inbounds %10, %10* %168, i32 0, i32 14
  %170 = load i16, i16* %169, align 8
  %171 = zext i16 %170 to i32
  %172 = icmp eq i32 %171, 4
  br label %173

; <label>:173:                                    ; preds = %167, %161
  %174 = phi i1 [ true, %161 ], [ %172, %167 ]
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %10, align 1
  %176 = load %9*, %9** %5, align 8
  %177 = load %10*, %10** %6, align 8
  %178 = load i8, i8* %10, align 1
  %179 = trunc i8 %178 to i1
  %180 = load %7*, %7** %7, align 8
  %181 = call i32 @174(%9* %176, %10* %177, i1 zeroext %179, %7* %180, i32 3, i32* null)
  store i32 %181, i32* %11, align 4
  %182 = load i32, i32* %11, align 4
  %183 = icmp ne i32 %182, 2
  br i1 %183, label %184, label %186

; <label>:184:                                    ; preds = %173
  %185 = load i32, i32* %11, align 4
  store i32 %185, i32* %4, align 4
  br label %219

; <label>:186:                                    ; preds = %173
  %187 = load %9*, %9** %5, align 8
  %188 = load %10*, %10** %6, align 8
  %189 = load %7*, %7** %7, align 8
  %190 = load i8, i8* %10, align 1
  %191 = trunc i8 %190 to i1
  %192 = call i32 @175(%9* %187, %10* %188, %7* %189, i1 zeroext %191)
  store i32 %192, i32* %4, align 4
  br label %219

; <label>:193:                                    ; preds = %3
  %194 = load %10*, %10** %6, align 8
  %195 = getelementptr inbounds %10, %10* %194, i32 0, i32 6
  %196 = load i8*, i8** %195, align 8
  %197 = call i8* @quote(i8* %196)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([186 x i8], [186 x i8]* @70, i32 0, i32 0), i8* %197)
  %198 = load %9*, %9** %5, align 8
  %199 = load %10*, %10** %6, align 8
  call void @172(%9* %198, %10* %199)
  store i32 4, i32* %4, align 4
  br label %219

; <label>:200:                                    ; preds = %3
  %201 = load %10*, %10** %6, align 8
  %202 = getelementptr inbounds %10, %10* %201, i32 0, i32 7
  %203 = load i32, i32* %202, align 8
  %204 = load %10*, %10** %6, align 8
  %205 = getelementptr inbounds %10, %10* %204, i32 0, i32 6
  %206 = load i8*, i8** %205, align 8
  %207 = call i8* @quote(i8* %206)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %203, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @71, i32 0, i32 0), i8* %207)
  %208 = load %9*, %9** %5, align 8
  %209 = load %10*, %10** %6, align 8
  call void @172(%9* %208, %10* %209)
  store i32 4, i32* %4, align 4
  br label %219

; <label>:210:                                    ; preds = %3
  %211 = load %10*, %10** %6, align 8
  %212 = getelementptr inbounds %10, %10* %211, i32 0, i32 14
  %213 = load i16, i16* %212, align 8
  %214 = zext i16 %213 to i32
  %215 = load %10*, %10** %6, align 8
  %216 = getelementptr inbounds %10, %10* %215, i32 0, i32 6
  %217 = load i8*, i8** %216, align 8
  %218 = call i8* @quote(i8* %217)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @72, i32 0, i32 0), i32 %214, i8* %218, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @73, i32 0, i32 0))
  call void @abort() #11
  unreachable

; <label>:219:                                    ; preds = %200, %193, %186, %184, %155, %127, %101, %51, %22
  %220 = load i32, i32* %4, align 4
  ret i32 %220
}

; Function Attrs: noinline nounwind uwtable
define internal void @171(%10*) #3 {
  %2 = alloca %10*, align 8
  %3 = alloca %10*, align 8
  store %10* %0, %10** %2, align 8
  %4 = load %10*, %10** %2, align 8
  %5 = getelementptr inbounds %10, %10* %4, i32 0, i32 1
  %6 = load %10*, %10** %5, align 8
  store %10* %6, %10** %3, align 8
  br label %7

; <label>:7:                                      ; preds = %17, %1
  %8 = load %10*, %10** %3, align 8
  %9 = getelementptr inbounds %10, %10* %8, i32 0, i32 11
  %10 = load i64, i64* %9, align 8
  %11 = icmp sle i64 0, %10
  br i1 %11, label %12, label %23

; <label>:12:                                     ; preds = %7
  %13 = load %10*, %10** %3, align 8
  %14 = getelementptr inbounds %10, %10* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %23, label %17

; <label>:17:                                     ; preds = %12
  %18 = load %10*, %10** %3, align 8
  %19 = getelementptr inbounds %10, %10* %18, i32 0, i32 3
  store i64 1, i64* %19, align 8
  %20 = load %10*, %10** %3, align 8
  %21 = getelementptr inbounds %10, %10* %20, i32 0, i32 1
  %22 = load %10*, %10** %21, align 8
  store %10* %22, %10** %3, align 8
  br label %7

; <label>:23:                                     ; preds = %12, %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @172(%9*, %10*) #3 {
  %3 = alloca %9*, align 8
  %4 = alloca %10*, align 8
  store %9* %0, %9** %3, align 8
  store %10* %1, %10** %4, align 8
  %5 = load %9*, %9** %3, align 8
  %6 = load %10*, %10** %4, align 8
  %7 = call i32 @fts_set(%9* %5, %10* %6, i32 4)
  %8 = load %9*, %9** %3, align 8
  %9 = call %10* @fts_read(%9* %8)
  store %10* %9, %10** %4, align 8
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @173(i8*) #3 {
  %2 = alloca i1, align 1
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 0
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 46
  br i1 %9, label %10, label %28

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 46
  %17 = zext i1 %16 to i32
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %11, i64 %19
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %4, align 1
  %22 = load i8, i8* %4, align 1
  %23 = icmp ne i8 %22, 0
  %24 = load i8, i8* %4, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 47
  %27 = select i1 %23, i1 %26, i1 true
  store i1 %27, i1* %2, align 1
  br label %29

; <label>:28:                                     ; preds = %1
  store i1 false, i1* %2, align 1
  br label %29

; <label>:29:                                     ; preds = %28, %10
  %30 = load i1, i1* %2, align 1
  ret i1 %30
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #6

; Function Attrs: noinline nounwind uwtable
define internal i32 @174(%9*, %10*, i1 zeroext, %7*, i32, i32*) #3 {
  %7 = alloca i32, align 4
  %8 = alloca %9*, align 8
  %9 = alloca %10*, align 8
  %10 = alloca i8, align 1
  %11 = alloca %7*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %8, align 8
  %18 = alloca %8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8, align 1
  store %9* %0, %9** %8, align 8
  store %10* %1, %10** %9, align 8
  %24 = zext i1 %2 to i8
  store i8 %24, i8* %10, align 1
  store %7* %3, %7** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %25 = load %9*, %9** %8, align 8
  %26 = getelementptr inbounds %9, %9* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %14, align 4
  %28 = load %10*, %10** %9, align 8
  %29 = getelementptr inbounds %10, %10* %28, i32 0, i32 6
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %15, align 8
  %31 = load %10*, %10** %9, align 8
  %32 = getelementptr inbounds %10, %10* %31, i32 0, i32 5
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %16, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %38

; <label>:36:                                     ; preds = %6
  %37 = load i32*, i32** %13, align 8
  store i32 2, i32* %37, align 4
  br label %38

; <label>:38:                                     ; preds = %36, %6
  store %8* %17, %8** %18, align 8
  %39 = load %8*, %8** %18, align 8
  %40 = call %8* @179(%8* %39)
  %41 = load i8, i8* %10, align 1
  %42 = trunc i8 %41 to i1
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 4, i32 0
  store i32 %44, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %45 = load %10*, %10** %9, align 8
  %46 = getelementptr inbounds %10, %10* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

; <label>:49:                                     ; preds = %38
  store i32 3, i32* %7, align 4
  br label %199

; <label>:50:                                     ; preds = %38
  %51 = load %7*, %7** %11, align 8
  %52 = getelementptr inbounds %7, %7* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 5
  br i1 %54, label %55, label %56

; <label>:55:                                     ; preds = %50
  store i32 2, i32* %7, align 4
  br label %199

; <label>:56:                                     ; preds = %50
  store i32 0, i32* %21, align 4
  %57 = load %7*, %7** %11, align 8
  %58 = getelementptr inbounds %7, %7* %57, i32 0, i32 0
  %59 = load i8, i8* %58, align 8
  %60 = trunc i8 %59 to i1
  br i1 %60, label %82, label %61

; <label>:61:                                     ; preds = %56
  %62 = load %7*, %7** %11, align 8
  %63 = getelementptr inbounds %7, %7* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 3
  br i1 %65, label %73, label %66

; <label>:66:                                     ; preds = %61
  %67 = load %7*, %7** %11, align 8
  %68 = getelementptr inbounds %7, %7* %67, i32 0, i32 5
  %69 = load i8, i8* %68, align 8
  %70 = trunc i8 %69 to i1
  %71 = load i32, i32* %19, align 4
  %72 = icmp ne i32 %71, 10
  %or.cond = and i1 %70, %72
  br i1 %or.cond, label %74, label %82

; <label>:73:                                     ; preds = %61
  %.old = load i32, i32* %19, align 4
  %.old1 = icmp ne i32 %.old, 10
  br i1 %.old1, label %74, label %82

; <label>:74:                                     ; preds = %66, %73
  %75 = load i32, i32* %14, align 4
  %76 = load i8*, i8** %16, align 8
  %77 = load i8*, i8** %15, align 8
  %78 = load %8*, %8** %18, align 8
  %79 = call i32 @180(i32 %75, i8* %76, i8* %77, %8* %78)
  store i32 %79, i32* %20, align 4
  %80 = call i32* @__errno_location() #14
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %21, align 4
  br label %82

; <label>:82:                                     ; preds = %74, %73, %66, %56
  %83 = load i32, i32* %20, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

; <label>:85:                                     ; preds = %82
  %86 = load %7*, %7** %11, align 8
  %87 = getelementptr inbounds %7, %7* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 3
  br i1 %89, label %90, label %198

; <label>:90:                                     ; preds = %85, %82
  %91 = load i32, i32* %20, align 4
  %92 = icmp sle i32 0, %91
  %93 = load i32, i32* %19, align 4
  %94 = icmp eq i32 %93, 0
  %or.cond4 = and i1 %92, %94
  br i1 %or.cond4, label %95, label %118

; <label>:95:                                     ; preds = %90
  %96 = load i32, i32* %14, align 4
  %97 = load i8*, i8** %16, align 8
  %98 = load %8*, %8** %18, align 8
  %99 = call i32 @181(i32 %96, i8* %97, %8* %98, i32 256)
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %115

; <label>:101:                                    ; preds = %95
  %102 = load %8*, %8** %18, align 8
  %103 = getelementptr inbounds %8, %8* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = and i32 %104, 61440
  %106 = icmp eq i32 %105, 40960
  br i1 %106, label %107, label %108

; <label>:107:                                    ; preds = %101
  store i32 10, i32* %19, align 4
  br label %118

; <label>:108:                                    ; preds = %101
  %109 = load %8*, %8** %18, align 8
  %110 = getelementptr inbounds %8, %8* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = and i32 %111, 61440
  %113 = icmp eq i32 %112, 16384
  br i1 %113, label %114, label %118

; <label>:114:                                    ; preds = %108
  store i32 4, i32* %19, align 4
  br label %118

; <label>:115:                                    ; preds = %95
  store i32 -1, i32* %20, align 4
  %116 = call i32* @__errno_location() #14
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %21, align 4
  br label %118

; <label>:118:                                    ; preds = %115, %108, %114, %107, %90
  %119 = load i32, i32* %20, align 4
  %120 = icmp sle i32 0, %119
  br i1 %120, label %121, label %135

; <label>:121:                                    ; preds = %118
  %122 = load i32, i32* %19, align 4
  switch i32 %122, label %135 [
    i32 10, label %123
    i32 4, label %129
  ]

; <label>:123:                                    ; preds = %121
  %124 = load %7*, %7** %11, align 8
  %125 = getelementptr inbounds %7, %7* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 3
  br i1 %127, label %128, label %135

; <label>:128:                                    ; preds = %123
  store i32 2, i32* %7, align 4
  br label %199

; <label>:129:                                    ; preds = %121
  %130 = load %7*, %7** %11, align 8
  %131 = getelementptr inbounds %7, %7* %130, i32 0, i32 3
  %132 = load i8, i8* %131, align 1
  %133 = trunc i8 %132 to i1
  br i1 %133, label %135, label %134

; <label>:134:                                    ; preds = %129
  store i32 -1, i32* %20, align 4
  store i32 21, i32* %21, align 4
  br label %135

; <label>:135:                                    ; preds = %121, %123, %134, %129, %118
  %136 = load i8*, i8** %15, align 8
  %137 = call i8* @quote(i8* %136)
  store i8* %137, i8** %22, align 8
  %138 = load i32, i32* %20, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %143

; <label>:140:                                    ; preds = %135
  %141 = load i32, i32* %21, align 4
  %142 = load i8*, i8** %22, align 8
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %141, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @63, i32 0, i32 0), i8* %142)
  store i32 4, i32* %7, align 4
  br label %199

; <label>:143:                                    ; preds = %135
  %144 = load i32*, i32** %13, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %156

; <label>:146:                                    ; preds = %143
  %147 = load i32, i32* %14, align 4
  %148 = load i8*, i8** %16, align 8
  %149 = call zeroext i1 @182(i32 %147, i8* %148)
  %150 = zext i1 %149 to i8
  store i8 %150, i8* %23, align 1
  %151 = load i8, i8* %23, align 1
  %152 = trunc i8 %151 to i1
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i32 4, i32 3
  %155 = load i32*, i32** %13, align 8
  store i32 %154, i32* %155, align 4
  br label %157

; <label>:156:                                    ; preds = %143
  store i8 0, i8* %23, align 1
  br label %157

; <label>:157:                                    ; preds = %156, %146
  %158 = load i32, i32* %19, align 4
  %159 = icmp eq i32 %158, 4
  %160 = load i32, i32* %12, align 4
  %161 = icmp eq i32 %160, 2
  %or.cond7 = and i1 %159, %161
  br i1 %or.cond7, label %162, label %174

; <label>:162:                                    ; preds = %157
  %163 = load i8, i8* %23, align 1
  %164 = trunc i8 %163 to i1
  br i1 %164, label %174, label %165

; <label>:165:                                    ; preds = %162
  %166 = load %0*, %0** @stderr, align 8
  %167 = load i32, i32* %20, align 4
  %168 = icmp ne i32 %167, 0
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @76, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @77, i32 0, i32 0)
  %171 = load i8*, i8** @program_name, align 8
  %172 = load i8*, i8** %22, align 8
  %173 = call i32 (%0*, i8*, ...) @fprintf(%0* %166, i8* %170, i8* %171, i8* %172)
  br label %195

; <label>:174:                                    ; preds = %162, %157
  %175 = load i32, i32* %14, align 4
  %176 = load i8*, i8** %16, align 8
  %177 = load %8*, %8** %18, align 8
  %178 = call i32 @181(i32 %175, i8* %176, %8* %177, i32 256)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

; <label>:180:                                    ; preds = %174
  %181 = call i32* @__errno_location() #14
  %182 = load i32, i32* %181, align 4
  %183 = load i8*, i8** %22, align 8
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %182, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @63, i32 0, i32 0), i8* %183)
  store i32 4, i32* %7, align 4
  br label %199

; <label>:184:                                    ; preds = %174
  %185 = load %0*, %0** @stderr, align 8
  %186 = load i32, i32* %20, align 4
  %187 = icmp ne i32 %186, 0
  %188 = zext i1 %187 to i64
  %189 = select i1 %187, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @78, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @79, i32 0, i32 0)
  %190 = load i8*, i8** @program_name, align 8
  %191 = load %8*, %8** %18, align 8
  %192 = call i8* @file_type(%8* %191)
  %193 = load i8*, i8** %22, align 8
  %194 = call i32 (%0*, i8*, ...) @fprintf(%0* %185, i8* %189, i8* %190, i8* %192, i8* %193)
  br label %195

; <label>:195:                                    ; preds = %184, %165
  %196 = call zeroext i1 @yesno()
  br i1 %196, label %198, label %197

; <label>:197:                                    ; preds = %195
  store i32 3, i32* %7, align 4
  br label %199

; <label>:198:                                    ; preds = %195, %85
  store i32 2, i32* %7, align 4
  br label %199

; <label>:199:                                    ; preds = %198, %197, %180, %140, %128, %55, %49
  %200 = load i32, i32* %7, align 4
  ret i32 %200
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @175(%9*, %10*, %7*, i1 zeroext) #3 {
  %5 = alloca i32, align 4
  %6 = alloca %9*, align 8
  %7 = alloca %10*, align 8
  %8 = alloca %7*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca %8, align 8
  store %9* %0, %9** %6, align 8
  store %10* %1, %10** %7, align 8
  store %7* %2, %7** %8, align 8
  %12 = zext i1 %3 to i8
  store i8 %12, i8* %9, align 1
  %13 = load i8, i8* %9, align 1
  %14 = trunc i8 %13 to i1
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 512, i32 0
  store i32 %16, i32* %10, align 4
  %17 = load %9*, %9** %6, align 8
  %18 = getelementptr inbounds %9, %9* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = load %10*, %10** %7, align 8
  %21 = getelementptr inbounds %10, %10* %20, i32 0, i32 5
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @unlinkat(i32 %19, i8* %22, i32 %23) #8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %42

; <label>:26:                                     ; preds = %4
  %27 = load %7*, %7** %8, align 8
  %28 = getelementptr inbounds %7, %7* %27, i32 0, i32 6
  %29 = load i8, i8* %28, align 1
  %30 = trunc i8 %29 to i1
  br i1 %30, label %31, label %41

; <label>:31:                                     ; preds = %26
  %32 = load i8, i8* %9, align 1
  %33 = trunc i8 %32 to i1
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @74, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @75, i32 0, i32 0)
  %36 = load %10*, %10** %7, align 8
  %37 = getelementptr inbounds %10, %10* %36, i32 0, i32 6
  %38 = load i8*, i8** %37, align 8
  %39 = call i8* @quote(i8* %38)
  %40 = call i32 (i8*, ...) @printf(i8* %35, i8* %39)
  br label %41

; <label>:41:                                     ; preds = %31, %26
  store i32 2, i32* %5, align 4
  br label %86

; <label>:42:                                     ; preds = %4
  %43 = call i32* @__errno_location() #14
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 30
  br i1 %45, label %46, label %61

; <label>:46:                                     ; preds = %42
  %47 = load %9*, %9** %6, align 8
  %48 = getelementptr inbounds %9, %9* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = load %10*, %10** %7, align 8
  %51 = getelementptr inbounds %10, %10* %50, i32 0, i32 5
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @176(i32 %49, i8* %52, %8* %11)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

; <label>:55:                                     ; preds = %46
  %56 = call i32* @__errno_location() #14
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %61, label %59

; <label>:59:                                     ; preds = %55, %46
  %60 = call i32* @__errno_location() #14
  store i32 30, i32* %60, align 4
  br label %61

; <label>:61:                                     ; preds = %55, %59, %42
  %62 = load %7*, %7** %8, align 8
  %63 = call i32* @__errno_location() #14
  %64 = load i32, i32* %63, align 4
  %65 = call zeroext i1 @177(%7* %62, i32 %64)
  br i1 %65, label %66, label %67

; <label>:66:                                     ; preds = %61
  store i32 2, i32* %5, align 4
  br label %86

; <label>:67:                                     ; preds = %61
  %68 = load %10*, %10** %7, align 8
  %69 = getelementptr inbounds %10, %10* %68, i32 0, i32 14
  %70 = load i16, i16* %69, align 8
  %71 = zext i16 %70 to i32
  %72 = icmp eq i32 %71, 4
  br i1 %72, label %73, label %78

; <label>:73:                                     ; preds = %67
  %74 = load %10*, %10** %7, align 8
  %75 = getelementptr inbounds %10, %10* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 8
  %77 = call i32* @__errno_location() #14
  store i32 %76, i32* %77, align 4
  br label %78

; <label>:78:                                     ; preds = %73, %67
  %79 = call i32* @__errno_location() #14
  %80 = load i32, i32* %79, align 4
  %81 = load %10*, %10** %7, align 8
  %82 = getelementptr inbounds %10, %10* %81, i32 0, i32 6
  %83 = load i8*, i8** %82, align 8
  %84 = call i8* @quote(i8* %83)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %80, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @63, i32 0, i32 0), i8* %84)
  %85 = load %10*, %10** %7, align 8
  call void @171(%10* %85)
  store i32 4, i32* %5, align 4
  br label %86

; <label>:86:                                     ; preds = %78, %66, %41
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

; Function Attrs: noreturn nounwind
declare void @abort() #4

; Function Attrs: nounwind
declare i32 @unlinkat(i32, i8*, i32) #5

; Function Attrs: noinline nounwind uwtable
define internal i32 @176(i32, i8*, %8*) #3 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store %8* %2, %8** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = load %8*, %8** %6, align 8
  %10 = call i32 @fstatat(i32 %7, i8* %8, %8* %9, i32 256) #8
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @177(%7*, i32) #3 {
  %3 = alloca %7*, align 8
  %4 = alloca i32, align 4
  store %7* %0, %7** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %7*, %7** %3, align 8
  %6 = getelementptr inbounds %7, %7* %5, i32 0, i32 0
  %7 = load i8, i8* %6, align 8
  %8 = trunc i8 %7 to i1
  br i1 %8, label %9, label %12

; <label>:9:                                      ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = call zeroext i1 @178(i32 %10)
  br label %12

; <label>:12:                                     ; preds = %9, %2
  %13 = phi i1 [ false, %2 ], [ %11, %9 ]
  ret i1 %13
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @178(i32) #3 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %6 [
    i32 2, label %5
    i32 20, label %5
  ]

; <label>:5:                                      ; preds = %1, %1
  store i1 true, i1* %2, align 1
  br label %7

; <label>:6:                                      ; preds = %1
  store i1 false, i1* %2, align 1
  br label %7

; <label>:7:                                      ; preds = %6, %5
  %8 = load i1, i1* %2, align 1
  ret i1 %8
}

; Function Attrs: nounwind
declare i32 @fstatat(i32, i8*, %8*, i32) #5

; Function Attrs: noinline nounwind uwtable
define internal %8* @179(%8*) #3 {
  %2 = alloca %8*, align 8
  store %8* %0, %8** %2, align 8
  %3 = load %8*, %8** %2, align 8
  %4 = getelementptr inbounds %8, %8* %3, i32 0, i32 8
  store i64 -1, i64* %4, align 8
  %5 = load %8*, %8** %2, align 8
  ret %8* %5
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @180(i32, i8*, i8*, %8*) #3 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %8*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %8* %3, %8** %9, align 8
  %11 = call zeroext i1 @can_write_any_file()
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %4
  store i32 0, i32* %5, align 4
  br label %55

; <label>:13:                                     ; preds = %4
  %14 = load i32, i32* %6, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = load %8*, %8** %9, align 8
  %17 = call i32 @181(i32 %14, i8* %15, %8* %16, i32 256)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %13
  store i32 -1, i32* %5, align 4
  br label %55

; <label>:20:                                     ; preds = %13
  %21 = load %8*, %8** %9, align 8
  %22 = getelementptr inbounds %8, %8* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 61440
  %25 = icmp eq i32 %24, 40960
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %20
  store i32 0, i32* %5, align 4
  br label %55

; <label>:27:                                     ; preds = %20
  %28 = load i32, i32* %6, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @faccessat(i32 %28, i8* %29, i32 2, i32 512) #8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %27
  store i32 0, i32* %5, align 4
  br label %55

; <label>:33:                                     ; preds = %27
  %34 = load i8*, i8** %8, align 8
  %35 = call i64 @strlen(i8* %34) #12
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp ule i64 4096, %36
  br i1 %37, label %38, label %43

; <label>:38:                                     ; preds = %33
  %39 = load %8*, %8** %9, align 8
  %40 = call zeroext i1 @euidaccess_stat(%8* %39, i32 2)
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %5, align 4
  br label %55

; <label>:43:                                     ; preds = %33
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @euidaccess(i8* %44, i32 2) #8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

; <label>:47:                                     ; preds = %43
  store i32 0, i32* %5, align 4
  br label %55

; <label>:48:                                     ; preds = %43
  %49 = call i32* @__errno_location() #14
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 13
  br i1 %51, label %52, label %54

; <label>:52:                                     ; preds = %48
  %53 = call i32* @__errno_location() #14
  store i32 0, i32* %53, align 4
  store i32 1, i32* %5, align 4
  br label %55

; <label>:54:                                     ; preds = %48
  store i32 -1, i32* %5, align 4
  br label %55

; <label>:55:                                     ; preds = %54, %52, %47, %38, %32, %26, %19, %12
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @181(i32, i8*, %8*, i32) #3 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %8*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store %8* %2, %8** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %8*, %8** %8, align 8
  %11 = getelementptr inbounds %8, %8* %10, i32 0, i32 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, -1
  br i1 %13, label %14, label %29

; <label>:14:                                     ; preds = %4
  %15 = load i32, i32* %6, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = load %8*, %8** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @fstatat(i32 %15, i8* %16, %8* %17, i32 %18) #8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

; <label>:21:                                     ; preds = %14
  %22 = load %8*, %8** %8, align 8
  %23 = getelementptr inbounds %8, %8* %22, i32 0, i32 8
  store i64 -2, i64* %23, align 8
  %24 = call i32* @__errno_location() #14
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = load %8*, %8** %8, align 8
  %28 = getelementptr inbounds %8, %8* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  br label %29

; <label>:29:                                     ; preds = %21, %14, %4
  %30 = load %8*, %8** %8, align 8
  %31 = getelementptr inbounds %8, %8* %30, i32 0, i32 8
  %32 = load i64, i64* %31, align 8
  %33 = icmp sle i64 0, %32
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %29
  store i32 0, i32* %5, align 4
  br label %41

; <label>:35:                                     ; preds = %29
  %36 = load %8*, %8** %8, align 8
  %37 = getelementptr inbounds %8, %8* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32* @__errno_location() #14
  store i32 %39, i32* %40, align 4
  store i32 -1, i32* %5, align 4
  br label %41

; <label>:41:                                     ; preds = %35, %34
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @182(i32, i8*) #3 {
  %3 = alloca i1, align 1
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %15*, align 8
  %7 = alloca %16*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 (i32, i8*, i32, ...) @openat(i32 %10, i8* %11, i32 198912)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %2
  store i1 false, i1* %3, align 1
  br label %41

; <label>:16:                                     ; preds = %2
  %17 = load i32, i32* %9, align 4
  %18 = call %15* @fdopendir(i32 %17)
  store %15* %18, %15** %6, align 8
  %19 = load %15*, %15** %6, align 8
  %20 = icmp eq %15* %19, null
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %16
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @close(i32 %22)
  store i1 false, i1* %3, align 1
  br label %41

; <label>:24:                                     ; preds = %16
  %25 = call i32* @__errno_location() #14
  store i32 0, i32* %25, align 4
  %26 = load %15*, %15** %6, align 8
  %27 = call %16* @183(%15* %26)
  store %16* %27, %16** %7, align 8
  %28 = call i32* @__errno_location() #14
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load %15*, %15** %6, align 8
  %31 = call i32 @closedir(%15* %30)
  %32 = load %16*, %16** %7, align 8
  %33 = icmp ne %16* %32, null
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %24
  store i1 false, i1* %3, align 1
  br label %41

; <label>:35:                                     ; preds = %24
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  %40 = icmp ne i32 %39, 0
  store i1 %40, i1* %3, align 1
  br label %41

; <label>:41:                                     ; preds = %35, %34, %21, %15
  %42 = load i1, i1* %3, align 1
  ret i1 %42
}

declare i32 @openat(i32, i8*, i32, ...) #2

declare %15* @fdopendir(i32) #2

declare i32 @close(i32) #2

; Function Attrs: noinline nounwind uwtable
define internal %16* @183(%15*) #3 {
  %2 = alloca %15*, align 8
  %3 = alloca %16*, align 8
  store %15* %0, %15** %2, align 8
  br label %4

; <label>:4:                                      ; preds = %1, %16
  %5 = load %15*, %15** %2, align 8
  %6 = call %16* @readdir(%15* %5)
  store %16* %6, %16** %3, align 8
  %7 = load %16*, %16** %3, align 8
  %8 = icmp eq %16* %7, null
  br i1 %8, label %14, label %9

; <label>:9:                                      ; preds = %4
  %10 = load %16*, %16** %3, align 8
  %11 = getelementptr inbounds %16, %16* %10, i32 0, i32 4
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i32 0, i32 0
  %13 = call zeroext i1 @173(i8* %12)
  br i1 %13, label %16, label %14

; <label>:14:                                     ; preds = %9, %4
  %15 = load %16*, %16** %3, align 8
  ret %16* %15

; <label>:16:                                     ; preds = %9
  br label %4
}

declare i32 @closedir(%15*) #2

declare %16* @readdir(%15*) #2

; Function Attrs: nounwind
declare i32 @faccessat(i32, i8*, i32, i32) #5

; Function Attrs: nounwind
declare i32 @euidaccess(i8*, i32) #5

; Function Attrs: noinline nounwind uwtable
define void @set_program_name(i8*) #3 {
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
  call void @abort() #11
  unreachable

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i8* @strrchr(i8* %11, i32 47) #12
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
  %28 = call i32 @strncmp(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @82, i32 0, i32 0), i64 7) #12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %39

; <label>:30:                                     ; preds = %25
  %31 = load i8*, i8** %4, align 8
  store i8* %31, i8** %2, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @strncmp(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @83, i32 0, i32 0), i64 3) #12
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
declare i8* @strrchr(i8*, i32) #6

; Function Attrs: noinline nounwind uwtable
define void @version_etc_arn(%0*, i8*, i8*, i8*, i8**, i64) #3 {
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
  %20 = call i32 (%0*, i8*, ...) @fprintf(%0* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @84, i32 0, i32 0), i8* %17, i8* %18, i8* %19)
  br label %25

; <label>:21:                                     ; preds = %6
  %22 = load i8*, i8** %9, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = call i32 (%0*, i8*, ...) @fprintf(%0* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @85, i32 0, i32 0), i8* %22, i8* %23)
  br label %25

; <label>:25:                                     ; preds = %21, %16
  %26 = load %0*, %0** %7, align 8
  %27 = call i32 (%0*, i8*, ...) @fprintf(%0* %26, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @86, i32 0, i32 0), i32 2010)
  %28 = load %0*, %0** %7, align 8
  %29 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([203 x i8], [203 x i8]* @87, i32 0, i32 0), %0* %28)
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
  call void @abort() #11
  unreachable

; <label>:32:                                     ; preds = %25
  %33 = load %0*, %0** %7, align 8
  %34 = load i8**, i8*** %11, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 (%0*, i8*, ...) @fprintf(%0* %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @88, i32 0, i32 0), i8* %36)
  br label %224

; <label>:38:                                     ; preds = %25
  %39 = load %0*, %0** %7, align 8
  %40 = load i8**, i8*** %11, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i8**, i8*** %11, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (%0*, i8*, ...) @fprintf(%0* %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @89, i32 0, i32 0), i8* %42, i8* %45)
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
  %58 = call i32 (%0*, i8*, ...) @fprintf(%0* %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @90, i32 0, i32 0), i8* %51, i8* %54, i8* %57)
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
  %73 = call i32 (%0*, i8*, ...) @fprintf(%0* %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @91, i32 0, i32 0), i8* %63, i8* %66, i8* %69, i8* %72)
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
  %91 = call i32 (%0*, i8*, ...) @fprintf(%0* %75, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @92, i32 0, i32 0), i8* %78, i8* %81, i8* %84, i8* %87, i8* %90)
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
  %112 = call i32 (%0*, i8*, ...) @fprintf(%0* %93, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @93, i32 0, i32 0), i8* %96, i8* %99, i8* %102, i8* %105, i8* %108, i8* %111)
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
  %136 = call i32 (%0*, i8*, ...) @fprintf(%0* %114, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @94, i32 0, i32 0), i8* %117, i8* %120, i8* %123, i8* %126, i8* %129, i8* %132, i8* %135)
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
  %163 = call i32 (%0*, i8*, ...) @fprintf(%0* %138, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @95, i32 0, i32 0), i8* %141, i8* %144, i8* %147, i8* %150, i8* %153, i8* %156, i8* %159, i8* %162)
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
  %193 = call i32 (%0*, i8*, ...) @fprintf(%0* %165, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @96, i32 0, i32 0), i8* %168, i8* %171, i8* %174, i8* %177, i8* %180, i8* %183, i8* %186, i8* %189, i8* %192)
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
  %223 = call i32 (%0*, i8*, ...) @fprintf(%0* %195, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @97, i32 0, i32 0), i8* %198, i8* %201, i8* %204, i8* %207, i8* %210, i8* %213, i8* %216, i8* %219, i8* %222)
  br label %224

; <label>:224:                                    ; preds = %194, %164, %137, %113, %92, %74, %59, %47, %38, %32
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @version_etc_ar(%0*, i8*, i8*, i8*, i8**) #3 {
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
define void @version_etc_va(%0*, i8*, i8*, i8*, %17*) #3 {
  %6 = alloca %0*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %17*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [10 x i8*], align 16
  store %0* %0, %0** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store %17* %4, %17** %10, align 8
  store i64 0, i64* %11, align 8
  br label %13

; <label>:13:                                     ; preds = %38, %5
  %14 = load i64, i64* %11, align 8
  %15 = icmp ult i64 %14, 10
  br i1 %15, label %16, label %.critedge

; <label>:16:                                     ; preds = %13
  %17 = load %17*, %17** %10, align 8
  %18 = getelementptr inbounds %17, %17* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ule i32 %19, 40
  br i1 %20, label %21, label %27

; <label>:21:                                     ; preds = %16
  %22 = getelementptr inbounds %17, %17* %17, i32 0, i32 3
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr i8, i8* %23, i32 %19
  %25 = bitcast i8* %24 to i8**
  %26 = add i32 %19, 8
  store i32 %26, i32* %18, align 8
  br label %32

; <label>:27:                                     ; preds = %16
  %28 = getelementptr inbounds %17, %17* %17, i32 0, i32 2
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
define void @version_etc(%0*, i8*, i8*, i8*, ...) #3 {
  %5 = alloca %0*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [1 x %17], align 16
  store %0* %0, %0** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = getelementptr inbounds [1 x %17], [1 x %17]* %9, i32 0, i32 0
  %11 = bitcast %17* %10 to i8*
  call void @llvm.va_start(i8* %11)
  %12 = load %0*, %0** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = getelementptr inbounds [1 x %17], [1 x %17]* %9, i32 0, i32 0
  call void @version_etc_va(%0* %12, i8* %13, i8* %14, i8* %15, %17* %16)
  %17 = getelementptr inbounds [1 x %17], [1 x %17]* %9, i32 0, i32 0
  %18 = bitcast %17* %17 to i8*
  call void @llvm.va_end(i8* %18)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #8

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #8

; Function Attrs: noinline nounwind uwtable
define void @emit_bug_reporting_address() #3 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @98, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @99, i32 0, i32 0))
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @100, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @101, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @102, i32 0, i32 0))
  %3 = load %0*, %0** @stdout, align 8
  %4 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @103, i32 0, i32 0), %0* %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @184() #3 {
  call void @usage(i32 1)
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define i64 @argmatch(i8*, i8**, i8*, i64) #3 {
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
  %15 = call i64 @strlen(i8* %14) #12
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
  %29 = call i32 @strncmp(i8* %26, i8* %27, i64 %28) #12
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %64, label %31

; <label>:31:                                     ; preds = %22
  %32 = load i8**, i8*** %7, align 8
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @strlen(i8* %35) #12
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
  %61 = call i32 @memcmp(i8* %54, i8* %59, i64 %60) #12
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
declare i32 @memcmp(i8*, i8*, i64) #6

; Function Attrs: noinline nounwind uwtable
define void @argmatch_invalid(i8*, i8*, i64) #3 {
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
  %11 = select i1 %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @104, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @105, i32 0, i32 0)
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
define void @argmatch_valid(i8**, i8*, i64) #3 {
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
  %10 = call i32 (%0*, i8*, ...) @fprintf(%0* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @106, i32 0, i32 0))
  store i64 0, i64* %7, align 8
  br label %11

; <label>:11:                                     ; preds = %49, %3
  %12 = load i8**, i8*** %4, align 8
  %13 = load i64, i64* %7, align 8
  %14 = getelementptr inbounds i8*, i8** %12, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %52

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
  %28 = call i32 @memcmp(i8* %21, i8* %26, i64 %27) #12
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

; <label>:30:                                     ; preds = %20, %17
  %31 = load %0*, %0** @stderr, align 8
  %32 = load i8**, i8*** %4, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 (%0*, i8*, ...) @fprintf(%0* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @107, i32 0, i32 0), i8* %35)
  %37 = load i8*, i8** %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = mul i64 %38, %39
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  store i8* %41, i8** %8, align 8
  br label %49

; <label>:42:                                     ; preds = %20
  %43 = load %0*, %0** @stderr, align 8
  %44 = load i8**, i8*** %4, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds i8*, i8** %44, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 (%0*, i8*, ...) @fprintf(%0* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @108, i32 0, i32 0), i8* %47)
  br label %49

; <label>:49:                                     ; preds = %30, %42
  %50 = load i64, i64* %7, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %7, align 8
  br label %11

; <label>:52:                                     ; preds = %11
  %53 = load %0*, %0** @stderr, align 8
  %54 = call i32 @putc_unlocked(i32 10, %0* %53)
  ret void
}

declare i32 @putc_unlocked(i32, %0*) #2

; Function Attrs: noinline nounwind uwtable
define i64 @__xargmatch_internal(i8*, i8*, i8**, i8*, i64, void ()*) #3 {
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
  %19 = call i64 @argmatch(i8* %15, i8** %16, i8* %17, i64 %18)
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

; Function Attrs: noinline nounwind uwtable
define i8* @argmatch_to_argument(i8*, i8**, i8*, i64) #3 {
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
  %25 = call i32 @memcmp(i8* %18, i8* %23, i64 %24) #12
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
define i8* @last_component(i8*) #3 {
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
define i64 @base_len(i8*) #3 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i64 0, i64* %4, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i64 @strlen(i8* %5) #12
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
define void @close_stdin_set_file_name(i8*) #3 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  store i8* %3, i8** @109, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @close_stdin() #3 {
  %1 = alloca i8, align 1
  %2 = alloca i8*, align 8
  store i8 0, i8* %1, align 1
  %3 = load %0*, %0** @stdin, align 8
  %4 = call i64 @freadahead(%0* %3)
  %5 = icmp ugt i64 %4, 0
  br i1 %5, label %6, label %15

; <label>:6:                                      ; preds = %0
  %7 = load %0*, %0** @stdin, align 8
  %8 = call i32 @rpl_fseeko(%0* %7, i64 0, i32 1)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

; <label>:10:                                     ; preds = %6
  %11 = load %0*, %0** @stdin, align 8
  %12 = call i32 @rpl_fflush(%0* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %10
  store i8 1, i8* %1, align 1
  br label %15

; <label>:15:                                     ; preds = %6, %10, %14, %0
  %16 = load %0*, %0** @stdin, align 8
  %17 = call i32 @close_stream(%0* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %15
  store i8 1, i8* %1, align 1
  br label %20

; <label>:20:                                     ; preds = %19, %15
  %21 = load i8, i8* %1, align 1
  %22 = trunc i8 %21 to i1
  br i1 %22, label %23, label %34

; <label>:23:                                     ; preds = %20
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @110, i32 0, i32 0), i8** %2, align 8
  %24 = load i8*, i8** @109, align 8
  %25 = icmp ne i8* %24, null
  %26 = call i32* @__errno_location() #14
  %27 = load i32, i32* %26, align 4
  br i1 %25, label %28, label %32

; <label>:28:                                     ; preds = %23
  %29 = load i8*, i8** @109, align 8
  %30 = call i8* @quotearg_colon(i8* %29)
  %31 = load i8*, i8** %2, align 8
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @111, i32 0, i32 0), i8* %30, i8* %31)
  br label %34

; <label>:32:                                     ; preds = %23
  %33 = load i8*, i8** %2, align 8
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @112, i32 0, i32 0), i8* %33)
  br label %34

; <label>:34:                                     ; preds = %28, %32, %20
  call void @close_stdout()
  %35 = load i8, i8* %1, align 1
  %36 = trunc i8 %35 to i1
  br i1 %36, label %37, label %39

; <label>:37:                                     ; preds = %34
  %38 = load volatile i32, i32* @exit_failure, align 4
  call void @_exit(i32 %38) #13
  unreachable

; <label>:39:                                     ; preds = %34
  ret void
}

; Function Attrs: noreturn
declare void @_exit(i32) #9

; Function Attrs: noinline nounwind uwtable
define void @close_stdout_set_file_name(i8*) #3 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  store i8* %3, i8** @113, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) #3 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  %4 = load i8, i8* %2, align 1
  %5 = trunc i8 %4 to i1
  %6 = zext i1 %5 to i8
  store i8 %6, i8* @114, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @close_stdout() #3 {
  %1 = alloca i8*, align 8
  %2 = load %0*, %0** @stdout, align 8
  %3 = call i32 @close_stream(%0* %2)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %25

; <label>:5:                                      ; preds = %0
  %6 = load i8, i8* @114, align 1
  %7 = trunc i8 %6 to i1
  br i1 %7, label %8, label %12

; <label>:8:                                      ; preds = %5
  %9 = call i32* @__errno_location() #14
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 32
  br i1 %11, label %25, label %12

; <label>:12:                                     ; preds = %8, %5
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @115, i32 0, i32 0), i8** %1, align 8
  %13 = load i8*, i8** @113, align 8
  %14 = icmp ne i8* %13, null
  %15 = call i32* @__errno_location() #14
  %16 = load i32, i32* %15, align 4
  br i1 %14, label %17, label %21

; <label>:17:                                     ; preds = %12
  %18 = load i8*, i8** @113, align 8
  %19 = call i8* @quotearg_colon(i8* %18)
  %20 = load i8*, i8** %1, align 8
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @116, i32 0, i32 0), i8* %19, i8* %20)
  br label %23

; <label>:21:                                     ; preds = %12
  %22 = load i8*, i8** %1, align 8
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @117, i32 0, i32 0), i8* %22)
  br label %23

; <label>:23:                                     ; preds = %21, %17
  %24 = load volatile i32, i32* @exit_failure, align 4
  call void @_exit(i32 %24) #13
  unreachable

; <label>:25:                                     ; preds = %8, %0
  %26 = load %0*, %0** @stderr, align 8
  %27 = call i32 @close_stream(%0* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

; <label>:29:                                     ; preds = %25
  %30 = load volatile i32, i32* @exit_failure, align 4
  call void @_exit(i32 %30) #13
  unreachable

; <label>:31:                                     ; preds = %25
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @rpl_fflush(%0*) #3 {
  %2 = alloca i32, align 4
  %3 = alloca %0*, align 8
  store %0* %0, %0** %3, align 8
  %4 = load %0*, %0** %3, align 8
  %5 = icmp eq %0* %4, null
  br i1 %5, label %10, label %6

; <label>:6:                                      ; preds = %1
  %7 = load %0*, %0** %3, align 8
  %8 = call i32 @__freading(%0* %7) #8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

; <label>:10:                                     ; preds = %6, %1
  %11 = load %0*, %0** %3, align 8
  %12 = call i32 @fflush(%0* %11)
  store i32 %12, i32* %2, align 4
  br label %17

; <label>:13:                                     ; preds = %6
  %14 = load %0*, %0** %3, align 8
  call void @185(%0* %14)
  %15 = load %0*, %0** %3, align 8
  %16 = call i32 @fflush(%0* %15)
  store i32 %16, i32* %2, align 4
  br label %17

; <label>:17:                                     ; preds = %13, %10
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

; Function Attrs: nounwind
declare i32 @__freading(%0*) #5

declare i32 @fflush(%0*) #2

; Function Attrs: noinline nounwind uwtable
define internal void @185(%0*) #3 {
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
define i8* @file_type(%8*) #3 {
  %2 = alloca i8*, align 8
  %3 = alloca %8*, align 8
  store %8* %0, %8** %3, align 8
  %4 = load %8*, %8** %3, align 8
  %5 = getelementptr inbounds %8, %8* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = and i32 %6, 61440
  %8 = icmp eq i32 %7, 32768
  %9 = load %8*, %8** %3, align 8
  br i1 %8, label %10, label %16

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds %8, %8* %9, i32 0, i32 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @118, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @119, i32 0, i32 0)
  store i8* %15, i8** %2, align 8
  br label %88

; <label>:16:                                     ; preds = %1
  %17 = getelementptr inbounds %8, %8* %9, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, 61440
  %20 = icmp eq i32 %19, 16384
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %16
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @120, i32 0, i32 0), i8** %2, align 8
  br label %88

; <label>:22:                                     ; preds = %16
  %23 = load %8*, %8** %3, align 8
  %24 = getelementptr inbounds %8, %8* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, 61440
  %27 = icmp eq i32 %26, 24576
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %22
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @121, i32 0, i32 0), i8** %2, align 8
  br label %88

; <label>:29:                                     ; preds = %22
  %30 = load %8*, %8** %3, align 8
  %31 = getelementptr inbounds %8, %8* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, 61440
  %34 = icmp eq i32 %33, 8192
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %29
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @122, i32 0, i32 0), i8** %2, align 8
  br label %88

; <label>:36:                                     ; preds = %29
  %37 = load %8*, %8** %3, align 8
  %38 = getelementptr inbounds %8, %8* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, 61440
  %41 = icmp eq i32 %40, 4096
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %36
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @123, i32 0, i32 0), i8** %2, align 8
  br label %88

; <label>:43:                                     ; preds = %36
  %44 = load %8*, %8** %3, align 8
  %45 = getelementptr inbounds %8, %8* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, 61440
  %48 = icmp eq i32 %47, 40960
  br i1 %48, label %49, label %50

; <label>:49:                                     ; preds = %43
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @124, i32 0, i32 0), i8** %2, align 8
  br label %88

; <label>:50:                                     ; preds = %43
  %51 = load %8*, %8** %3, align 8
  %52 = getelementptr inbounds %8, %8* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, 61440
  %55 = icmp eq i32 %54, 49152
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %50
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @125, i32 0, i32 0), i8** %2, align 8
  br label %88

; <label>:57:                                     ; preds = %50
  %58 = load %8*, %8** %3, align 8
  %59 = getelementptr inbounds %8, %8* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %8*, %8** %3, align 8
  %62 = getelementptr inbounds %8, %8* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = sub i32 %60, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

; <label>:66:                                     ; preds = %57
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @126, i32 0, i32 0), i8** %2, align 8
  br label %88

; <label>:67:                                     ; preds = %57
  %68 = load %8*, %8** %3, align 8
  %69 = getelementptr inbounds %8, %8* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %8*, %8** %3, align 8
  %72 = getelementptr inbounds %8, %8* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = sub i32 %70, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

; <label>:76:                                     ; preds = %67
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @127, i32 0, i32 0), i8** %2, align 8
  br label %88

; <label>:77:                                     ; preds = %67
  %78 = load %8*, %8** %3, align 8
  %79 = getelementptr inbounds %8, %8* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load %8*, %8** %3, align 8
  %82 = getelementptr inbounds %8, %8* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = sub i32 %80, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

; <label>:86:                                     ; preds = %77
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @128, i32 0, i32 0), i8** %2, align 8
  br label %88

; <label>:87:                                     ; preds = %77
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @129, i32 0, i32 0), i8** %2, align 8
  br label %88

; <label>:88:                                     ; preds = %87, %86, %76, %66, %56, %49, %42, %35, %28, %21, %10
  %89 = load i8*, i8** %2, align 8
  ret i8* %89
}

; Function Attrs: noinline nounwind uwtable
define i32 @rpl_fseeko(%0* nonnull, i64, i32) #3 {
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
  br i1 %15, label %16, label %53

; <label>:16:                                     ; preds = %3
  %17 = load %0*, %0** %5, align 8
  %18 = getelementptr inbounds %0, %0* %17, i32 0, i32 5
  %19 = load i8*, i8** %18, align 8
  %20 = load %0*, %0** %5, align 8
  %21 = getelementptr inbounds %0, %0* %20, i32 0, i32 4
  %22 = load i8*, i8** %21, align 8
  %23 = icmp eq i8* %19, %22
  br i1 %23, label %24, label %53

; <label>:24:                                     ; preds = %16
  %25 = load %0*, %0** %5, align 8
  %26 = getelementptr inbounds %0, %0* %25, i32 0, i32 9
  %27 = load i8*, i8** %26, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %53

; <label>:29:                                     ; preds = %24
  %30 = load %0*, %0** %5, align 8
  %31 = call i32 @fileno(%0* %30) #8
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 2
  %34 = load i64, i64* %6, align 8
  %35 = icmp sgt i64 %34, 0
  %or.cond = and i1 %33, %35
  %36 = load i64, i64* %6, align 8
  %37 = select i1 %or.cond, i64 0, i64 %36
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @lseek(i32 %31, i64 %37, i32 %38) #8
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp eq i64 %40, -1
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %29
  store i32 -1, i32* %4, align 4
  br label %58

; <label>:43:                                     ; preds = %29
  %44 = load %0*, %0** %5, align 8
  %45 = getelementptr inbounds %0, %0* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, -17
  store i32 %47, i32* %45, align 8
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 2
  %50 = load i64, i64* %6, align 8
  %51 = icmp sgt i64 %50, 0
  %or.cond3 = and i1 %49, %51
  br i1 %or.cond3, label %53, label %52

; <label>:52:                                     ; preds = %43
  store i32 0, i32* %4, align 4
  br label %58

; <label>:53:                                     ; preds = %43, %24, %16, %3
  %54 = load %0*, %0** %5, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @fseeko(%0* %54, i64 %55, i32 %56)
  store i32 %57, i32* %4, align 4
  br label %58

; <label>:58:                                     ; preds = %53, %52, %42
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

; Function Attrs: nounwind
declare i32 @fileno(%0*) #5

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #5

declare i32 @fseeko(%0*, i64, i32) #2

; Function Attrs: noinline nounwind uwtable
define %9* @fts_open(i8**, i32, i32 (%10**, %10**)*) #3 {
  %4 = alloca %9*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32 (%10**, %10**)*, align 8
  %8 = alloca %9*, align 8
  %9 = alloca %10*, align 8
  %10 = alloca %10*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %10*, align 8
  %13 = alloca %10*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 (%10**, %10**)* %2, i32 (%10**, %10**)** %7, align 8
  store %10* null, %10** %12, align 8
  store %10* null, %10** %13, align 8
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, -2048
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

; <label>:21:                                     ; preds = %3
  %22 = call i32* @__errno_location() #14
  store i32 22, i32* %22, align 4
  store %9* null, %9** %4, align 8
  br label %235

; <label>:23:                                     ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

; <label>:27:                                     ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 512
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

; <label>:31:                                     ; preds = %27
  %32 = call i32* @__errno_location() #14
  store i32 22, i32* %32, align 4
  store %9* null, %9** %4, align 8
  br label %235

; <label>:33:                                     ; preds = %27, %23
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 18
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

; <label>:37:                                     ; preds = %33
  %38 = call i32* @__errno_location() #14
  store i32 22, i32* %38, align 4
  store %9* null, %9** %4, align 8
  br label %235

; <label>:39:                                     ; preds = %33
  %40 = call noalias i8* @malloc(i64 128) #8
  %41 = bitcast i8* %40 to %9*
  store %9* %41, %9** %8, align 8
  %42 = icmp eq %9* %41, null
  br i1 %42, label %43, label %44

; <label>:43:                                     ; preds = %39
  store %9* null, %9** %4, align 8
  br label %235

; <label>:44:                                     ; preds = %39
  %45 = load %9*, %9** %8, align 8
  %46 = bitcast %9* %45 to i8*
  call void @llvm.memset.p0i8.i64(i8* %46, i8 0, i64 128, i32 8, i1 false)
  %47 = load i32 (%10**, %10**)*, i32 (%10**, %10**)** %7, align 8
  %48 = load %9*, %9** %8, align 8
  %49 = getelementptr inbounds %9, %9* %48, i32 0, i32 9
  store i32 (%10**, %10**)* %47, i32 (%10**, %10**)** %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load %9*, %9** %8, align 8
  %52 = getelementptr inbounds %9, %9* %51, i32 0, i32 10
  store i32 %50, i32* %52, align 8
  %53 = load %9*, %9** %8, align 8
  %54 = getelementptr inbounds %9, %9* %53, i32 0, i32 10
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, 2
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

; <label>:58:                                     ; preds = %44
  %59 = load %9*, %9** %8, align 8
  %60 = getelementptr inbounds %9, %9* %59, i32 0, i32 10
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, 4
  store i32 %62, i32* %60, align 8
  %63 = load %9*, %9** %8, align 8
  %64 = getelementptr inbounds %9, %9* %63, i32 0, i32 10
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, -513
  store i32 %66, i32* %64, align 8
  br label %67

; <label>:67:                                     ; preds = %58, %44
  %68 = load %9*, %9** %8, align 8
  %69 = getelementptr inbounds %9, %9* %68, i32 0, i32 6
  store i32 -100, i32* %69, align 4
  %70 = load %9*, %9** %8, align 8
  %71 = getelementptr inbounds %9, %9* %70, i32 0, i32 10
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, 512
  %74 = icmp ne i32 %73, 0
  %75 = load i8**, i8*** %5, align 8
  %76 = call i64 @186(i8** %75)
  store i64 %76, i64* %16, align 8
  %77 = load %9*, %9** %8, align 8
  %78 = load i64, i64* %16, align 8
  %79 = icmp ugt i64 %78, 4096
  %80 = load i64, i64* %16, align 8
  %81 = select i1 %79, i64 %80, i64 4096
  %82 = call zeroext i1 @187(%9* %77, i64 %81)
  br i1 %82, label %83, label %232

; <label>:83:                                     ; preds = %67
  %84 = load i8**, i8*** %5, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %94

; <label>:87:                                     ; preds = %83
  %88 = load %9*, %9** %8, align 8
  %89 = call %10* @188(%9* %88, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @131, i32 0, i32 0), i64 0)
  store %10* %89, %10** %12, align 8
  %90 = icmp eq %10* %89, null
  br i1 %90, label %228, label %91

; <label>:91:                                     ; preds = %87
  %92 = load %10*, %10** %12, align 8
  %93 = getelementptr inbounds %10, %10* %92, i32 0, i32 11
  store i64 -1, i64* %93, align 8
  br label %94

; <label>:94:                                     ; preds = %91, %83
  %95 = load i32 (%10**, %10**)*, i32 (%10**, %10**)** %7, align 8
  %96 = icmp eq i32 (%10**, %10**)* %95, null
  br i1 %96, label %103, label %97

; <label>:97:                                     ; preds = %94
  %98 = load %9*, %9** %8, align 8
  %99 = getelementptr inbounds %9, %9* %98, i32 0, i32 10
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, 1024
  %102 = icmp ne i32 %101, 0
  br label %103

; <label>:103:                                    ; preds = %97, %94
  %104 = phi i1 [ true, %94 ], [ %102, %97 ]
  %105 = zext i1 %104 to i8
  store i8 %105, i8* %14, align 1
  store %10* null, %10** %10, align 8
  store i64 0, i64* %11, align 8
  br label %106

; <label>:106:                                    ; preds = %164, %103
  %107 = load i8**, i8*** %5, align 8
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %169

; <label>:110:                                    ; preds = %106
  %111 = load i8**, i8*** %5, align 8
  %112 = load i8*, i8** %111, align 8
  %113 = call i64 @strlen(i8* %112) #12
  store i64 %113, i64* %17, align 8
  %114 = load %9*, %9** %8, align 8
  %115 = load i8**, i8*** %5, align 8
  %116 = load i8*, i8** %115, align 8
  %117 = load i64, i64* %17, align 8
  %118 = call %10* @188(%9* %114, i8* %116, i64 %117)
  store %10* %118, %10** %9, align 8
  %119 = icmp eq %10* %118, null
  br i1 %119, label %224, label %120

; <label>:120:                                    ; preds = %110
  %121 = load %10*, %10** %9, align 8
  %122 = getelementptr inbounds %10, %10* %121, i32 0, i32 11
  store i64 0, i64* %122, align 8
  %123 = load %10*, %10** %12, align 8
  %124 = load %10*, %10** %9, align 8
  %125 = getelementptr inbounds %10, %10* %124, i32 0, i32 1
  store %10* %123, %10** %125, align 8
  %126 = load %10*, %10** %9, align 8
  %127 = getelementptr inbounds %10, %10* %126, i32 0, i32 18
  %128 = getelementptr inbounds [1 x i8], [1 x i8]* %127, i32 0, i32 0
  %129 = load %10*, %10** %9, align 8
  %130 = getelementptr inbounds %10, %10* %129, i32 0, i32 5
  store i8* %128, i8** %130, align 8
  %131 = load i8, i8* %14, align 1
  %132 = trunc i8 %131 to i1
  %133 = load %10*, %10** %10, align 8
  %134 = icmp ne %10* %133, null
  %or.cond = and i1 %132, %134
  br i1 %or.cond, label %135, label %139

; <label>:135:                                    ; preds = %120
  %136 = load %10*, %10** %9, align 8
  %137 = getelementptr inbounds %10, %10* %136, i32 0, i32 14
  store i16 11, i16* %137, align 8
  %138 = load %10*, %10** %9, align 8
  call void @189(%10* %138, i1 zeroext true)
  br label %145

; <label>:139:                                    ; preds = %120
  %140 = load %9*, %9** %8, align 8
  %141 = load %10*, %10** %9, align 8
  %142 = call zeroext i16 @190(%9* %140, %10* %141, i1 zeroext false)
  %143 = load %10*, %10** %9, align 8
  %144 = getelementptr inbounds %10, %10* %143, i32 0, i32 14
  store i16 %142, i16* %144, align 8
  br label %145

; <label>:145:                                    ; preds = %139, %135
  %146 = load i32 (%10**, %10**)*, i32 (%10**, %10**)** %7, align 8
  %147 = icmp ne i32 (%10**, %10**)* %146, null
  br i1 %147, label %148, label %153

; <label>:148:                                    ; preds = %145
  %149 = load %10*, %10** %10, align 8
  %150 = load %10*, %10** %9, align 8
  %151 = getelementptr inbounds %10, %10* %150, i32 0, i32 2
  store %10* %149, %10** %151, align 8
  %152 = load %10*, %10** %9, align 8
  store %10* %152, %10** %10, align 8
  br label %164

; <label>:153:                                    ; preds = %145
  %154 = load %10*, %10** %9, align 8
  %155 = getelementptr inbounds %10, %10* %154, i32 0, i32 2
  store %10* null, %10** %155, align 8
  %156 = load %10*, %10** %10, align 8
  %157 = icmp eq %10* %156, null
  %158 = load %10*, %10** %9, align 8
  br i1 %157, label %159, label %160

; <label>:159:                                    ; preds = %153
  store %10* %158, %10** %10, align 8
  store %10* %158, %10** %13, align 8
  br label %164

; <label>:160:                                    ; preds = %153
  %161 = load %10*, %10** %13, align 8
  %162 = getelementptr inbounds %10, %10* %161, i32 0, i32 2
  store %10* %158, %10** %162, align 8
  %163 = load %10*, %10** %9, align 8
  store %10* %163, %10** %13, align 8
  br label %164

; <label>:164:                                    ; preds = %148, %160, %159
  %165 = load i8**, i8*** %5, align 8
  %166 = getelementptr inbounds i8*, i8** %165, i32 1
  store i8** %166, i8*** %5, align 8
  %167 = load i64, i64* %11, align 8
  %168 = add i64 %167, 1
  store i64 %168, i64* %11, align 8
  br label %106

; <label>:169:                                    ; preds = %106
  %170 = load i32 (%10**, %10**)*, i32 (%10**, %10**)** %7, align 8
  %171 = icmp ne i32 (%10**, %10**)* %170, null
  %172 = load i64, i64* %11, align 8
  %173 = icmp ugt i64 %172, 1
  %or.cond3 = and i1 %171, %173
  br i1 %or.cond3, label %174, label %179

; <label>:174:                                    ; preds = %169
  %175 = load %9*, %9** %8, align 8
  %176 = load %10*, %10** %10, align 8
  %177 = load i64, i64* %11, align 8
  %178 = call %10* @191(%9* %175, %10* %176, i64 %177)
  store %10* %178, %10** %10, align 8
  br label %179

; <label>:179:                                    ; preds = %174, %169
  %180 = load %9*, %9** %8, align 8
  %181 = call %10* @188(%9* %180, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @131, i32 0, i32 0), i64 0)
  %182 = load %9*, %9** %8, align 8
  %183 = getelementptr inbounds %9, %9* %182, i32 0, i32 0
  store %10* %181, %10** %183, align 8
  %184 = icmp eq %10* %181, null
  br i1 %184, label %224, label %185

; <label>:185:                                    ; preds = %179
  %186 = load %10*, %10** %10, align 8
  %187 = load %9*, %9** %8, align 8
  %188 = getelementptr inbounds %9, %9* %187, i32 0, i32 0
  %189 = load %10*, %10** %188, align 8
  %190 = getelementptr inbounds %10, %10* %189, i32 0, i32 2
  store %10* %186, %10** %190, align 8
  %191 = load %9*, %9** %8, align 8
  %192 = getelementptr inbounds %9, %9* %191, i32 0, i32 0
  %193 = load %10*, %10** %192, align 8
  %194 = getelementptr inbounds %10, %10* %193, i32 0, i32 14
  store i16 9, i16* %194, align 8
  %195 = load %9*, %9** %8, align 8
  %196 = call zeroext i1 @192(%9* %195)
  br i1 %196, label %197, label %224

; <label>:197:                                    ; preds = %185
  %198 = load %9*, %9** %8, align 8
  %199 = getelementptr inbounds %9, %9* %198, i32 0, i32 10
  %200 = load i32, i32* %199, align 8
  %201 = and i32 %200, 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %220, label %203

; <label>:203:                                    ; preds = %197
  %204 = load %9*, %9** %8, align 8
  %205 = getelementptr inbounds %9, %9* %204, i32 0, i32 10
  %206 = load i32, i32* %205, align 8
  %207 = and i32 %206, 512
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %220, label %209

; <label>:209:                                    ; preds = %203
  %210 = load %9*, %9** %8, align 8
  %211 = call i32 @193(%9* %210, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @130, i32 0, i32 0))
  %212 = load %9*, %9** %8, align 8
  %213 = getelementptr inbounds %9, %9* %212, i32 0, i32 5
  store i32 %211, i32* %213, align 8
  %214 = icmp slt i32 %211, 0
  br i1 %214, label %215, label %220

; <label>:215:                                    ; preds = %209
  %216 = load %9*, %9** %8, align 8
  %217 = getelementptr inbounds %9, %9* %216, i32 0, i32 10
  %218 = load i32, i32* %217, align 8
  %219 = or i32 %218, 4
  store i32 %219, i32* %217, align 8
  br label %220

; <label>:220:                                    ; preds = %215, %209, %203, %197
  %221 = load %9*, %9** %8, align 8
  %222 = getelementptr inbounds %9, %9* %221, i32 0, i32 13
  call void @i_ring_init(%14* %222, i32 -1)
  %223 = load %9*, %9** %8, align 8
  store %9* %223, %9** %4, align 8
  br label %235

; <label>:224:                                    ; preds = %185, %179, %110
  %225 = load %10*, %10** %10, align 8
  call void @194(%10* %225)
  %226 = load %10*, %10** %12, align 8
  %227 = bitcast %10* %226 to i8*
  call void @free(i8* %227) #8
  br label %228

; <label>:228:                                    ; preds = %87, %224
  %229 = load %9*, %9** %8, align 8
  %230 = getelementptr inbounds %9, %9* %229, i32 0, i32 4
  %231 = load i8*, i8** %230, align 8
  call void @free(i8* %231) #8
  br label %232

; <label>:232:                                    ; preds = %67, %228
  %233 = load %9*, %9** %8, align 8
  %234 = bitcast %9* %233 to i8*
  call void @free(i8* %234) #8
  store %9* null, %9** %4, align 8
  br label %235

; <label>:235:                                    ; preds = %232, %220, %43, %37, %31, %21
  %236 = load %9*, %9** %4, align 8
  ret %9* %236
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #10

; Function Attrs: noinline nounwind uwtable
define internal i64 @186(i8**) #3 {
  %2 = alloca i8**, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i8** %0, i8*** %2, align 8
  store i64 0, i64* %4, align 8
  br label %5

; <label>:5:                                      ; preds = %17, %1
  %6 = load i8**, i8*** %2, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %20

; <label>:9:                                      ; preds = %5
  %10 = load i8**, i8*** %2, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = call i64 @strlen(i8* %11) #12
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp ugt i64 %12, %13
  br i1 %14, label %15, label %17

; <label>:15:                                     ; preds = %9
  %16 = load i64, i64* %3, align 8
  store i64 %16, i64* %4, align 8
  br label %17

; <label>:17:                                     ; preds = %9, %15
  %18 = load i8**, i8*** %2, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i32 1
  store i8** %19, i8*** %2, align 8
  br label %5

; <label>:20:                                     ; preds = %5
  %21 = load i64, i64* %4, align 8
  %22 = add i64 %21, 1
  ret i64 %22
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @187(%9*, i64) #3 {
  %3 = alloca i1, align 1
  %4 = alloca %9*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %9* %0, %9** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %9*, %9** %4, align 8
  %9 = getelementptr inbounds %9, %9* %8, i32 0, i32 7
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %5, align 8
  %12 = add i64 %10, %11
  %13 = add i64 %12, 256
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load %9*, %9** %4, align 8
  %16 = getelementptr inbounds %9, %9* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %26

; <label>:19:                                     ; preds = %2
  %20 = load %9*, %9** %4, align 8
  %21 = getelementptr inbounds %9, %9* %20, i32 0, i32 4
  %22 = load i8*, i8** %21, align 8
  call void @free(i8* %22) #8
  %23 = load %9*, %9** %4, align 8
  %24 = getelementptr inbounds %9, %9* %23, i32 0, i32 4
  store i8* null, i8** %24, align 8
  %25 = call i32* @__errno_location() #14
  store i32 36, i32* %25, align 4
  store i1 false, i1* %3, align 1
  br label %49

; <label>:26:                                     ; preds = %2
  %27 = load i64, i64* %7, align 8
  %28 = load %9*, %9** %4, align 8
  %29 = getelementptr inbounds %9, %9* %28, i32 0, i32 7
  store i64 %27, i64* %29, align 8
  %30 = load %9*, %9** %4, align 8
  %31 = getelementptr inbounds %9, %9* %30, i32 0, i32 4
  %32 = load i8*, i8** %31, align 8
  %33 = load %9*, %9** %4, align 8
  %34 = getelementptr inbounds %9, %9* %33, i32 0, i32 7
  %35 = load i64, i64* %34, align 8
  %36 = call i8* @realloc(i8* %32, i64 %35) #8
  store i8* %36, i8** %6, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %45

; <label>:39:                                     ; preds = %26
  %40 = load %9*, %9** %4, align 8
  %41 = getelementptr inbounds %9, %9* %40, i32 0, i32 4
  %42 = load i8*, i8** %41, align 8
  call void @free(i8* %42) #8
  %43 = load %9*, %9** %4, align 8
  %44 = getelementptr inbounds %9, %9* %43, i32 0, i32 4
  store i8* null, i8** %44, align 8
  store i1 false, i1* %3, align 1
  br label %49

; <label>:45:                                     ; preds = %26
  %46 = load i8*, i8** %6, align 8
  %47 = load %9*, %9** %4, align 8
  %48 = getelementptr inbounds %9, %9* %47, i32 0, i32 4
  store i8* %46, i8** %48, align 8
  store i1 true, i1* %3, align 1
  br label %49

; <label>:49:                                     ; preds = %45, %39, %19
  %50 = load i1, i1* %3, align 1
  ret i1 %50
}

; Function Attrs: noinline nounwind uwtable
define internal %10* @188(%9*, i8*, i64) #3 {
  %4 = alloca %10*, align 8
  %5 = alloca %9*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %10*, align 8
  %9 = alloca i64, align 8
  store %9* %0, %9** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = add i64 264, %10
  store i64 %11, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = call noalias i8* @malloc(i64 %12) #8
  %14 = bitcast i8* %13 to %10*
  store %10* %14, %10** %8, align 8
  %15 = icmp eq %10* %14, null
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %3
  store %10* null, %10** %4, align 8
  br label %49

; <label>:17:                                     ; preds = %3
  %18 = load %10*, %10** %8, align 8
  %19 = getelementptr inbounds %10, %10* %18, i32 0, i32 18
  %20 = getelementptr inbounds [1 x i8], [1 x i8]* %19, i32 0, i32 0
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %7, align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %20, i8* %21, i64 %22, i32 1, i1 false)
  %23 = load %10*, %10** %8, align 8
  %24 = getelementptr inbounds %10, %10* %23, i32 0, i32 18
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds [1 x i8], [1 x i8]* %24, i64 0, i64 %25
  store i8 0, i8* %26, align 1
  %27 = load i64, i64* %7, align 8
  %28 = load %10*, %10** %8, align 8
  %29 = getelementptr inbounds %10, %10* %28, i32 0, i32 12
  store i64 %27, i64* %29, align 8
  %30 = load %9*, %9** %5, align 8
  %31 = load %10*, %10** %8, align 8
  %32 = getelementptr inbounds %10, %10* %31, i32 0, i32 10
  store %9* %30, %9** %32, align 8
  %33 = load %9*, %9** %5, align 8
  %34 = getelementptr inbounds %9, %9* %33, i32 0, i32 4
  %35 = load i8*, i8** %34, align 8
  %36 = load %10*, %10** %8, align 8
  %37 = getelementptr inbounds %10, %10* %36, i32 0, i32 6
  store i8* %35, i8** %37, align 8
  %38 = load %10*, %10** %8, align 8
  %39 = getelementptr inbounds %10, %10* %38, i32 0, i32 7
  store i32 0, i32* %39, align 8
  %40 = load %10*, %10** %8, align 8
  %41 = getelementptr inbounds %10, %10* %40, i32 0, i32 15
  store i16 0, i16* %41, align 2
  %42 = load %10*, %10** %8, align 8
  %43 = getelementptr inbounds %10, %10* %42, i32 0, i32 16
  store i16 3, i16* %43, align 4
  %44 = load %10*, %10** %8, align 8
  %45 = getelementptr inbounds %10, %10* %44, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load %10*, %10** %8, align 8
  %47 = getelementptr inbounds %10, %10* %46, i32 0, i32 4
  store i8* null, i8** %47, align 8
  %48 = load %10*, %10** %8, align 8
  store %10* %48, %10** %4, align 8
  br label %49

; <label>:49:                                     ; preds = %17, %16
  %50 = load %10*, %10** %4, align 8
  ret %10* %50
}

; Function Attrs: noinline nounwind uwtable
define internal void @189(%10*, i1 zeroext) #3 {
  %3 = alloca %10*, align 8
  %4 = alloca i8, align 1
  store %10* %0, %10** %3, align 8
  %5 = zext i1 %1 to i8
  store i8 %5, i8* %4, align 1
  %6 = load %10*, %10** %3, align 8
  %7 = getelementptr inbounds %10, %10* %6, i32 0, i32 14
  %8 = load i16, i16* %7, align 8
  %9 = zext i16 %8 to i32
  %10 = icmp eq i32 %9, 11
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %2
  call void @abort() #11
  unreachable

; <label>:12:                                     ; preds = %2
  %13 = load i8, i8* %4, align 1
  %14 = trunc i8 %13 to i1
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 2, i32 1
  %17 = sext i32 %16 to i64
  %18 = load %10*, %10** %3, align 8
  %19 = getelementptr inbounds %10, %10* %18, i32 0, i32 17
  %20 = getelementptr inbounds [1 x %8], [1 x %8]* %19, i32 0, i32 0
  %21 = getelementptr inbounds %8, %8* %20, i32 0, i32 8
  store i64 %17, i64* %21, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i16 @190(%9*, %10*, i1 zeroext) #3 {
  %4 = alloca i16, align 2
  %5 = alloca %9*, align 8
  %6 = alloca %10*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %8*, align 8
  %9 = alloca i32, align 4
  store %9* %0, %9** %5, align 8
  store %10* %1, %10** %6, align 8
  %10 = zext i1 %2 to i8
  store i8 %10, i8* %7, align 1
  %11 = load %10*, %10** %6, align 8
  %12 = getelementptr inbounds %10, %10* %11, i32 0, i32 17
  %13 = getelementptr inbounds [1 x %8], [1 x %8]* %12, i32 0, i32 0
  store %8* %13, %8** %8, align 8
  %14 = load %10*, %10** %6, align 8
  %15 = getelementptr inbounds %10, %10* %14, i32 0, i32 11
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %25

; <label>:18:                                     ; preds = %3
  %19 = load %9*, %9** %5, align 8
  %20 = getelementptr inbounds %9, %9* %19, i32 0, i32 10
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %18
  store i8 1, i8* %7, align 1
  br label %25

; <label>:25:                                     ; preds = %24, %18, %3
  %26 = load %9*, %9** %5, align 8
  %27 = getelementptr inbounds %9, %9* %26, i32 0, i32 10
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, 2
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

; <label>:31:                                     ; preds = %25
  %32 = load i8, i8* %7, align 1
  %33 = trunc i8 %32 to i1
  br i1 %33, label %34, label %60

; <label>:34:                                     ; preds = %31, %25
  %35 = load %10*, %10** %6, align 8
  %36 = getelementptr inbounds %10, %10* %35, i32 0, i32 5
  %37 = load i8*, i8** %36, align 8
  %38 = load %8*, %8** %8, align 8
  %39 = call i32 @stat(i8* %37, %8* %38) #8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %78

; <label>:41:                                     ; preds = %34
  %42 = call i32* @__errno_location() #14
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %9, align 4
  %44 = call i32* @__errno_location() #14
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %47, label %56

; <label>:47:                                     ; preds = %41
  %48 = load %10*, %10** %6, align 8
  %49 = getelementptr inbounds %10, %10* %48, i32 0, i32 5
  %50 = load i8*, i8** %49, align 8
  %51 = load %8*, %8** %8, align 8
  %52 = call i32 @lstat(i8* %50, %8* %51) #8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

; <label>:54:                                     ; preds = %47
  %55 = call i32* @__errno_location() #14
  store i32 0, i32* %55, align 4
  store i16 13, i16* %4, align 2
  br label %147

; <label>:56:                                     ; preds = %47, %41
  %57 = load i32, i32* %9, align 4
  %58 = load %10*, %10** %6, align 8
  %59 = getelementptr inbounds %10, %10* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 8
  br label %75

; <label>:60:                                     ; preds = %31
  %61 = load %9*, %9** %5, align 8
  %62 = getelementptr inbounds %9, %9* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = load %10*, %10** %6, align 8
  %65 = getelementptr inbounds %10, %10* %64, i32 0, i32 5
  %66 = load i8*, i8** %65, align 8
  %67 = load %8*, %8** %8, align 8
  %68 = call i32 @fstatat(i32 %63, i8* %66, %8* %67, i32 256) #8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

; <label>:70:                                     ; preds = %60
  %71 = call i32* @__errno_location() #14
  %72 = load i32, i32* %71, align 4
  %73 = load %10*, %10** %6, align 8
  %74 = getelementptr inbounds %10, %10* %73, i32 0, i32 7
  store i32 %72, i32* %74, align 8
  br label %75

; <label>:75:                                     ; preds = %70, %56
  %76 = load %8*, %8** %8, align 8
  %77 = bitcast %8* %76 to i8*
  call void @llvm.memset.p0i8.i64(i8* %77, i8 0, i64 144, i32 8, i1 false)
  store i16 10, i16* %4, align 2
  br label %147

; <label>:78:                                     ; preds = %60, %34
  %79 = load %8*, %8** %8, align 8
  %80 = getelementptr inbounds %8, %8* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %81, 61440
  %83 = icmp eq i32 %82, 16384
  %84 = load %8*, %8** %8, align 8
  br i1 %83, label %85, label %133

; <label>:85:                                     ; preds = %78
  %86 = getelementptr inbounds %8, %8* %84, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load %9*, %9** %5, align 8
  %89 = getelementptr inbounds %9, %9* %88, i32 0, i32 10
  %90 = load i32, i32* %89, align 8
  %91 = and i32 %90, 32
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 0, i32 2
  %95 = sext i32 %94 to i64
  %96 = sub i64 %87, %95
  %97 = load %10*, %10** %6, align 8
  %98 = getelementptr inbounds %10, %10* %97, i32 0, i32 13
  store i64 %96, i64* %98, align 8
  %99 = load %10*, %10** %6, align 8
  %100 = getelementptr inbounds %10, %10* %99, i32 0, i32 18
  %101 = getelementptr inbounds [1 x i8], [1 x i8]* %100, i64 0, i64 0
  %102 = load i8, i8* %101, align 8
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 46
  br i1 %104, label %105, label %132

; <label>:105:                                    ; preds = %85
  %106 = load %10*, %10** %6, align 8
  %107 = getelementptr inbounds %10, %10* %106, i32 0, i32 18
  %108 = getelementptr inbounds [1 x i8], [1 x i8]* %107, i64 0, i64 1
  %109 = load i8, i8* %108, align 1
  %110 = icmp ne i8 %109, 0
  br i1 %110, label %111, label %124

; <label>:111:                                    ; preds = %105
  %112 = load %10*, %10** %6, align 8
  %113 = getelementptr inbounds %10, %10* %112, i32 0, i32 18
  %114 = getelementptr inbounds [1 x i8], [1 x i8]* %113, i64 0, i64 1
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 46
  br i1 %117, label %118, label %132

; <label>:118:                                    ; preds = %111
  %119 = load %10*, %10** %6, align 8
  %120 = getelementptr inbounds %10, %10* %119, i32 0, i32 18
  %121 = getelementptr inbounds [1 x i8], [1 x i8]* %120, i64 0, i64 2
  %122 = load i8, i8* %121, align 2
  %123 = icmp ne i8 %122, 0
  br i1 %123, label %132, label %124

; <label>:124:                                    ; preds = %118, %105
  %125 = load %10*, %10** %6, align 8
  %126 = getelementptr inbounds %10, %10* %125, i32 0, i32 11
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i32 1, i32 5
  %131 = trunc i32 %130 to i16
  store i16 %131, i16* %4, align 2
  br label %147

; <label>:132:                                    ; preds = %118, %111, %85
  store i16 1, i16* %4, align 2
  br label %147

; <label>:133:                                    ; preds = %78
  %134 = getelementptr inbounds %8, %8* %84, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = and i32 %135, 61440
  %137 = icmp eq i32 %136, 40960
  br i1 %137, label %138, label %139

; <label>:138:                                    ; preds = %133
  store i16 12, i16* %4, align 2
  br label %147

; <label>:139:                                    ; preds = %133
  %140 = load %8*, %8** %8, align 8
  %141 = getelementptr inbounds %8, %8* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = and i32 %142, 61440
  %144 = icmp eq i32 %143, 32768
  br i1 %144, label %145, label %146

; <label>:145:                                    ; preds = %139
  store i16 8, i16* %4, align 2
  br label %147

; <label>:146:                                    ; preds = %139
  store i16 3, i16* %4, align 2
  br label %147

; <label>:147:                                    ; preds = %146, %145, %138, %132, %124, %75, %54
  %148 = load i16, i16* %4, align 2
  ret i16 %148
}

; Function Attrs: noinline nounwind uwtable
define internal %10* @191(%9*, %10*, i64) #3 {
  %4 = alloca %10*, align 8
  %5 = alloca %9*, align 8
  %6 = alloca %10*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %10**, align 8
  %9 = alloca %10*, align 8
  %10 = alloca %10*, align 8
  %11 = alloca i32 (i8*, i8*)*, align 8
  %12 = alloca %10**, align 8
  store %9* %0, %9** %5, align 8
  store %10* %1, %10** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = ptrtoint %10** %10 to i64
  %14 = bitcast %10** %10 to i8*
  %15 = ptrtoint i8* %14 to i64
  %16 = icmp eq i64 %13, %15
  br i1 %16, label %17, label %22

; <label>:17:                                     ; preds = %3
  %18 = load %9*, %9** %5, align 8
  %19 = getelementptr inbounds %9, %9* %18, i32 0, i32 9
  %20 = load i32 (%10**, %10**)*, i32 (%10**, %10**)** %19, align 8
  %21 = bitcast i32 (%10**, %10**)* %20 to i32 (i8*, i8*)*
  br label %22

; <label>:22:                                     ; preds = %3, %17
  %23 = phi i32 (i8*, i8*)* [ %21, %17 ], [ @197, %3 ]
  store i32 (i8*, i8*)* %23, i32 (i8*, i8*)** %11, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load %9*, %9** %5, align 8
  %26 = getelementptr inbounds %9, %9* %25, i32 0, i32 8
  %27 = load i64, i64* %26, align 8
  %28 = icmp ugt i64 %24, %27
  br i1 %28, label %29, label %64

; <label>:29:                                     ; preds = %22
  %30 = load i64, i64* %7, align 8
  %31 = add i64 %30, 40
  %32 = load %9*, %9** %5, align 8
  %33 = getelementptr inbounds %9, %9* %32, i32 0, i32 8
  store i64 %31, i64* %33, align 8
  %34 = load %9*, %9** %5, align 8
  %35 = getelementptr inbounds %9, %9* %34, i32 0, i32 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 2305843009213693951, %36
  br i1 %37, label %50, label %38

; <label>:38:                                     ; preds = %29
  %39 = load %9*, %9** %5, align 8
  %40 = getelementptr inbounds %9, %9* %39, i32 0, i32 2
  %41 = load %10**, %10*** %40, align 8
  %42 = bitcast %10** %41 to i8*
  %43 = load %9*, %9** %5, align 8
  %44 = getelementptr inbounds %9, %9* %43, i32 0, i32 8
  %45 = load i64, i64* %44, align 8
  %46 = mul i64 %45, 8
  %47 = call i8* @realloc(i8* %42, i64 %46) #8
  %48 = bitcast i8* %47 to %10**
  store %10** %48, %10*** %12, align 8
  %49 = icmp ne %10** %48, null
  br i1 %49, label %60, label %50

; <label>:50:                                     ; preds = %38, %29
  %51 = load %9*, %9** %5, align 8
  %52 = getelementptr inbounds %9, %9* %51, i32 0, i32 2
  %53 = load %10**, %10*** %52, align 8
  %54 = bitcast %10** %53 to i8*
  call void @free(i8* %54) #8
  %55 = load %9*, %9** %5, align 8
  %56 = getelementptr inbounds %9, %9* %55, i32 0, i32 2
  store %10** null, %10*** %56, align 8
  %57 = load %9*, %9** %5, align 8
  %58 = getelementptr inbounds %9, %9* %57, i32 0, i32 8
  store i64 0, i64* %58, align 8
  %59 = load %10*, %10** %6, align 8
  store %10* %59, %10** %4, align 8
  br label %109

; <label>:60:                                     ; preds = %38
  %61 = load %10**, %10*** %12, align 8
  %62 = load %9*, %9** %5, align 8
  %63 = getelementptr inbounds %9, %9* %62, i32 0, i32 2
  store %10** %61, %10*** %63, align 8
  br label %64

; <label>:64:                                     ; preds = %60, %22
  %65 = load %9*, %9** %5, align 8
  %66 = getelementptr inbounds %9, %9* %65, i32 0, i32 2
  %67 = load %10**, %10*** %66, align 8
  store %10** %67, %10*** %8, align 8
  %68 = load %10*, %10** %6, align 8
  store %10* %68, %10** %9, align 8
  br label %69

; <label>:69:                                     ; preds = %72, %64
  %70 = load %10*, %10** %9, align 8
  %71 = icmp ne %10* %70, null
  br i1 %71, label %72, label %79

; <label>:72:                                     ; preds = %69
  %73 = load %10*, %10** %9, align 8
  %74 = load %10**, %10*** %8, align 8
  %75 = getelementptr inbounds %10*, %10** %74, i32 1
  store %10** %75, %10*** %8, align 8
  store %10* %73, %10** %74, align 8
  %76 = load %10*, %10** %9, align 8
  %77 = getelementptr inbounds %10, %10* %76, i32 0, i32 2
  %78 = load %10*, %10** %77, align 8
  store %10* %78, %10** %9, align 8
  br label %69

; <label>:79:                                     ; preds = %69
  %80 = load %9*, %9** %5, align 8
  %81 = getelementptr inbounds %9, %9* %80, i32 0, i32 2
  %82 = load %10**, %10*** %81, align 8
  %83 = bitcast %10** %82 to i8*
  %84 = load i64, i64* %7, align 8
  %85 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %11, align 8
  call void @qsort(i8* %83, i64 %84, i64 8, i32 (i8*, i8*)* %85)
  %86 = load %9*, %9** %5, align 8
  %87 = getelementptr inbounds %9, %9* %86, i32 0, i32 2
  %88 = load %10**, %10*** %87, align 8
  store %10** %88, %10*** %8, align 8
  %89 = load %10*, %10** %88, align 8
  store %10* %89, %10** %6, align 8
  br label %90

; <label>:90:                                     ; preds = %95, %79
  %91 = load i64, i64* %7, align 8
  %92 = add i64 %91, -1
  store i64 %92, i64* %7, align 8
  %93 = icmp ne i64 %92, 0
  %94 = load %10**, %10*** %8, align 8
  br i1 %93, label %95, label %104

; <label>:95:                                     ; preds = %90
  %96 = getelementptr inbounds %10*, %10** %94, i64 1
  %97 = load %10*, %10** %96, align 8
  %98 = load %10**, %10*** %8, align 8
  %99 = getelementptr inbounds %10*, %10** %98, i64 0
  %100 = load %10*, %10** %99, align 8
  %101 = getelementptr inbounds %10, %10* %100, i32 0, i32 2
  store %10* %97, %10** %101, align 8
  %102 = load %10**, %10*** %8, align 8
  %103 = getelementptr inbounds %10*, %10** %102, i32 1
  store %10** %103, %10*** %8, align 8
  br label %90

; <label>:104:                                    ; preds = %90
  %105 = getelementptr inbounds %10*, %10** %94, i64 0
  %106 = load %10*, %10** %105, align 8
  %107 = getelementptr inbounds %10, %10* %106, i32 0, i32 2
  store %10* null, %10** %107, align 8
  %108 = load %10*, %10** %6, align 8
  store %10* %108, %10** %4, align 8
  br label %109

; <label>:109:                                    ; preds = %104, %50
  %110 = load %10*, %10** %4, align 8
  ret %10* %110
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @192(%9*) #3 {
  %2 = alloca i1, align 1
  %3 = alloca %9*, align 8
  store %9* %0, %9** %3, align 8
  %4 = load %9*, %9** %3, align 8
  %5 = getelementptr inbounds %9, %9* %4, i32 0, i32 10
  %6 = load i32, i32* %5, align 8
  %7 = and i32 %6, 258
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %20

; <label>:9:                                      ; preds = %1
  %10 = call %11* @hash_initialize(i64 31, %4* null, i64 (i8*, i64)* @195, i1 (i8*, i8*)* @196, void (i8*)* @free)
  %11 = load %9*, %9** %3, align 8
  %12 = getelementptr inbounds %9, %9* %11, i32 0, i32 12
  %13 = bitcast %13* %12 to %11**
  store %11* %10, %11** %13, align 8
  %14 = load %9*, %9** %3, align 8
  %15 = getelementptr inbounds %9, %9* %14, i32 0, i32 12
  %16 = bitcast %13* %15 to %11**
  %17 = load %11*, %11** %16, align 8
  %18 = icmp ne %11* %17, null
  br i1 %18, label %37, label %19

; <label>:19:                                     ; preds = %9
  store i1 false, i1* %2, align 1
  br label %38

; <label>:20:                                     ; preds = %1
  %21 = call noalias i8* @malloc(i64 32) #8
  %22 = bitcast i8* %21 to %18*
  %23 = load %9*, %9** %3, align 8
  %24 = getelementptr inbounds %9, %9* %23, i32 0, i32 12
  %25 = bitcast %13* %24 to %18**
  store %18* %22, %18** %25, align 8
  %26 = load %9*, %9** %3, align 8
  %27 = getelementptr inbounds %9, %9* %26, i32 0, i32 12
  %28 = bitcast %13* %27 to %18**
  %29 = load %18*, %18** %28, align 8
  %30 = icmp ne %18* %29, null
  br i1 %30, label %32, label %31

; <label>:31:                                     ; preds = %20
  store i1 false, i1* %2, align 1
  br label %38

; <label>:32:                                     ; preds = %20
  %33 = load %9*, %9** %3, align 8
  %34 = getelementptr inbounds %9, %9* %33, i32 0, i32 12
  %35 = bitcast %13* %34 to %18**
  %36 = load %18*, %18** %35, align 8
  call void @cycle_check_init(%18* %36)
  br label %37

; <label>:37:                                     ; preds = %9, %32
  store i1 true, i1* %2, align 1
  br label %38

; <label>:38:                                     ; preds = %37, %31, %19
  %39 = load i1, i1* %2, align 1
  ret i1 %39
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @193(%9*, i8*) #3 {
  %3 = alloca %9*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %9* %0, %9** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %9*, %9** %3, align 8
  %8 = getelementptr inbounds %9, %9* %7, i32 0, i32 10
  %9 = load i32, i32* %8, align 8
  %10 = and i32 %9, 16
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 131072, i32 0
  %14 = or i32 67840, %13
  store i32 %14, i32* %5, align 4
  %15 = load %9*, %9** %3, align 8
  %16 = getelementptr inbounds %9, %9* %15, i32 0, i32 10
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 512
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

; <label>:20:                                     ; preds = %2
  %21 = load %9*, %9** %3, align 8
  %22 = getelementptr inbounds %9, %9* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 (i32, i8*, i32, ...) @openat_safer(i32 %23, i8* %24, i32 %25)
  br label %31

; <label>:27:                                     ; preds = %2
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 (i8*, i32, ...) @open_safer(i8* %28, i32 %29)
  br label %31

; <label>:31:                                     ; preds = %27, %20
  %32 = phi i32 [ %26, %20 ], [ %30, %27 ]
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp sle i32 0, %33
  br i1 %34, label %35, label %38

; <label>:35:                                     ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @set_cloexec_flag(i32 %36, i1 zeroext true)
  br label %38

; <label>:38:                                     ; preds = %35, %31
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

; Function Attrs: noinline nounwind uwtable
define internal void @194(%10*) #3 {
  %2 = alloca %10*, align 8
  %3 = alloca %10*, align 8
  store %10* %0, %10** %2, align 8
  br label %4

; <label>:4:                                      ; preds = %7, %1
  %5 = load %10*, %10** %2, align 8
  store %10* %5, %10** %3, align 8
  %6 = icmp ne %10* %5, null
  br i1 %6, label %7, label %13

; <label>:7:                                      ; preds = %4
  %8 = load %10*, %10** %2, align 8
  %9 = getelementptr inbounds %10, %10* %8, i32 0, i32 2
  %10 = load %10*, %10** %9, align 8
  store %10* %10, %10** %2, align 8
  %11 = load %10*, %10** %3, align 8
  %12 = bitcast %10* %11 to i8*
  call void @free(i8* %12) #8
  br label %4

; <label>:13:                                     ; preds = %4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: noinline nounwind uwtable
define internal i64 @195(i8*, i64) #3 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %19*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %19*
  store %19* %7, %19** %5, align 8
  %8 = load %19*, %19** %5, align 8
  %9 = getelementptr inbounds %19, %19* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = urem i64 %10, %11
  ret i64 %12
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @196(i8*, i8*) #3 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %19*, align 8
  %6 = alloca %19*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %19*
  store %19* %8, %19** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %19*
  store %19* %10, %19** %6, align 8
  %11 = load %19*, %19** %5, align 8
  %12 = getelementptr inbounds %19, %19* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %19*, %19** %6, align 8
  %15 = getelementptr inbounds %19, %19* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %26

; <label>:18:                                     ; preds = %2
  %19 = load %19*, %19** %5, align 8
  %20 = getelementptr inbounds %19, %19* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %19*, %19** %6, align 8
  %23 = getelementptr inbounds %19, %19* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br label %26

; <label>:26:                                     ; preds = %18, %2
  %27 = phi i1 [ false, %2 ], [ %25, %18 ]
  ret i1 %27
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @197(i8*, i8*) #3 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %10**, align 8
  %6 = alloca %10**, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %10**
  store %10** %8, %10*** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %10**
  store %10** %10, %10*** %6, align 8
  %11 = load %10**, %10*** %5, align 8
  %12 = getelementptr inbounds %10*, %10** %11, i64 0
  %13 = load %10*, %10** %12, align 8
  %14 = getelementptr inbounds %10, %10* %13, i32 0, i32 10
  %15 = load %9*, %9** %14, align 8
  %16 = getelementptr inbounds %9, %9* %15, i32 0, i32 9
  %17 = load i32 (%10**, %10**)*, i32 (%10**, %10**)** %16, align 8
  %18 = load %10**, %10*** %5, align 8
  %19 = load %10**, %10*** %6, align 8
  %20 = call i32 %17(%10** %18, %10** %19)
  ret i32 %20
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #5

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind
declare i32 @stat(i8*, %8*) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #10

; Function Attrs: noinline nounwind uwtable
define i32 @fts_close(%9*) #3 {
  %2 = alloca i32, align 4
  %3 = alloca %9*, align 8
  %4 = alloca %10*, align 8
  %5 = alloca %10*, align 8
  %6 = alloca i32, align 4
  store %9* %0, %9** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %9*, %9** %3, align 8
  %8 = getelementptr inbounds %9, %9* %7, i32 0, i32 0
  %9 = load %10*, %10** %8, align 8
  %10 = icmp ne %10* %9, null
  br i1 %10, label %11, label %39

; <label>:11:                                     ; preds = %1
  %12 = load %9*, %9** %3, align 8
  %13 = getelementptr inbounds %9, %9* %12, i32 0, i32 0
  %14 = load %10*, %10** %13, align 8
  store %10* %14, %10** %5, align 8
  br label %15

; <label>:15:                                     ; preds = %33, %11
  %16 = load %10*, %10** %5, align 8
  %17 = getelementptr inbounds %10, %10* %16, i32 0, i32 11
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %18, 0
  %20 = load %10*, %10** %5, align 8
  br i1 %19, label %21, label %37

; <label>:21:                                     ; preds = %15
  store %10* %20, %10** %4, align 8
  %22 = load %10*, %10** %5, align 8
  %23 = getelementptr inbounds %10, %10* %22, i32 0, i32 2
  %24 = load %10*, %10** %23, align 8
  %25 = icmp ne %10* %24, null
  %26 = load %10*, %10** %5, align 8
  br i1 %25, label %27, label %30

; <label>:27:                                     ; preds = %21
  %28 = getelementptr inbounds %10, %10* %26, i32 0, i32 2
  %29 = load %10*, %10** %28, align 8
  br label %33

; <label>:30:                                     ; preds = %21
  %31 = getelementptr inbounds %10, %10* %26, i32 0, i32 1
  %32 = load %10*, %10** %31, align 8
  br label %33

; <label>:33:                                     ; preds = %30, %27
  %34 = phi %10* [ %29, %27 ], [ %32, %30 ]
  store %10* %34, %10** %5, align 8
  %35 = load %10*, %10** %4, align 8
  %36 = bitcast %10* %35 to i8*
  call void @free(i8* %36) #8
  br label %15

; <label>:37:                                     ; preds = %15
  %38 = bitcast %10* %20 to i8*
  call void @free(i8* %38) #8
  br label %39

; <label>:39:                                     ; preds = %37, %1
  %40 = load %9*, %9** %3, align 8
  %41 = getelementptr inbounds %9, %9* %40, i32 0, i32 1
  %42 = load %10*, %10** %41, align 8
  %43 = icmp ne %10* %42, null
  br i1 %43, label %44, label %48

; <label>:44:                                     ; preds = %39
  %45 = load %9*, %9** %3, align 8
  %46 = getelementptr inbounds %9, %9* %45, i32 0, i32 1
  %47 = load %10*, %10** %46, align 8
  call void @194(%10* %47)
  br label %48

; <label>:48:                                     ; preds = %44, %39
  %49 = load %9*, %9** %3, align 8
  %50 = getelementptr inbounds %9, %9* %49, i32 0, i32 2
  %51 = load %10**, %10*** %50, align 8
  %52 = bitcast %10** %51 to i8*
  call void @free(i8* %52) #8
  %53 = load %9*, %9** %3, align 8
  %54 = getelementptr inbounds %9, %9* %53, i32 0, i32 4
  %55 = load i8*, i8** %54, align 8
  call void @free(i8* %55) #8
  %56 = load %9*, %9** %3, align 8
  %57 = getelementptr inbounds %9, %9* %56, i32 0, i32 10
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, 512
  %60 = icmp ne i32 %59, 0
  %61 = load %9*, %9** %3, align 8
  br i1 %60, label %62, label %75

; <label>:62:                                     ; preds = %48
  %63 = getelementptr inbounds %9, %9* %61, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = icmp sle i32 0, %64
  br i1 %65, label %66, label %100

; <label>:66:                                     ; preds = %62
  %67 = load %9*, %9** %3, align 8
  %68 = getelementptr inbounds %9, %9* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @close(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %100

; <label>:72:                                     ; preds = %66
  %73 = call i32* @__errno_location() #14
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %6, align 4
  br label %100

; <label>:75:                                     ; preds = %48
  %76 = getelementptr inbounds %9, %9* %61, i32 0, i32 10
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %100, label %80

; <label>:80:                                     ; preds = %75
  %81 = load %9*, %9** %3, align 8
  %82 = getelementptr inbounds %9, %9* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @fchdir(i32 %83) #8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

; <label>:86:                                     ; preds = %80
  %87 = call i32* @__errno_location() #14
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %6, align 4
  br label %89

; <label>:89:                                     ; preds = %86, %80
  %90 = load %9*, %9** %3, align 8
  %91 = getelementptr inbounds %9, %9* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @close(i32 %92)
  %94 = icmp ne i32 %93, 0
  %95 = load i32, i32* %6, align 4
  %96 = icmp eq i32 %95, 0
  %or.cond = and i1 %94, %96
  br i1 %or.cond, label %97, label %100

; <label>:97:                                     ; preds = %89
  %98 = call i32* @__errno_location() #14
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %6, align 4
  br label %100

; <label>:100:                                    ; preds = %75, %97, %89, %62, %72, %66
  %101 = load %9*, %9** %3, align 8
  %102 = getelementptr inbounds %9, %9* %101, i32 0, i32 13
  call void @198(%14* %102)
  %103 = load %9*, %9** %3, align 8
  %104 = getelementptr inbounds %9, %9* %103, i32 0, i32 11
  %105 = load %11*, %11** %104, align 8
  %106 = icmp ne %11* %105, null
  br i1 %106, label %107, label %111

; <label>:107:                                    ; preds = %100
  %108 = load %9*, %9** %3, align 8
  %109 = getelementptr inbounds %9, %9* %108, i32 0, i32 11
  %110 = load %11*, %11** %109, align 8
  call void @hash_free(%11* %110)
  br label %111

; <label>:111:                                    ; preds = %107, %100
  %112 = load %9*, %9** %3, align 8
  call void @199(%9* %112)
  %113 = load %9*, %9** %3, align 8
  %114 = bitcast %9* %113 to i8*
  call void @free(i8* %114) #8
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

; <label>:117:                                    ; preds = %111
  %118 = load i32, i32* %6, align 4
  %119 = call i32* @__errno_location() #14
  store i32 %118, i32* %119, align 4
  store i32 -1, i32* %2, align 4
  br label %121

; <label>:120:                                    ; preds = %111
  store i32 0, i32* %2, align 4
  br label %121

; <label>:121:                                    ; preds = %120, %117
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

; Function Attrs: nounwind
declare i32 @fchdir(i32) #5

; Function Attrs: noinline nounwind uwtable
define internal void @198(%14*) #3 {
  %2 = alloca %14*, align 8
  %3 = alloca i32, align 4
  store %14* %0, %14** %2, align 8
  br label %4

; <label>:4:                                      ; preds = %16, %1
  %5 = load %14*, %14** %2, align 8
  %6 = call zeroext i1 @i_ring_empty(%14* %5)
  %7 = xor i1 %6, true
  br i1 %7, label %8, label %17

; <label>:8:                                      ; preds = %4
  %9 = load %14*, %14** %2, align 8
  %10 = call i32 @i_ring_pop(%14* %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp sle i32 0, %11
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @close(i32 %14)
  br label %16

; <label>:16:                                     ; preds = %13, %8
  br label %4

; <label>:17:                                     ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @199(%9*) #3 {
  %2 = alloca %9*, align 8
  store %9* %0, %9** %2, align 8
  %3 = load %9*, %9** %2, align 8
  %4 = getelementptr inbounds %9, %9* %3, i32 0, i32 10
  %5 = load i32, i32* %4, align 8
  %6 = and i32 %5, 258
  %7 = icmp ne i32 %6, 0
  %8 = load %9*, %9** %2, align 8
  %9 = getelementptr inbounds %9, %9* %8, i32 0, i32 12
  br i1 %7, label %10, label %19

; <label>:10:                                     ; preds = %1
  %11 = bitcast %13* %9 to %11**
  %12 = load %11*, %11** %11, align 8
  %13 = icmp ne %11* %12, null
  br i1 %13, label %14, label %23

; <label>:14:                                     ; preds = %10
  %15 = load %9*, %9** %2, align 8
  %16 = getelementptr inbounds %9, %9* %15, i32 0, i32 12
  %17 = bitcast %13* %16 to %11**
  %18 = load %11*, %11** %17, align 8
  call void @hash_free(%11* %18)
  br label %23

; <label>:19:                                     ; preds = %1
  %20 = bitcast %13* %9 to %18**
  %21 = load %18*, %18** %20, align 8
  %22 = bitcast %18* %21 to i8*
  call void @free(i8* %22) #8
  br label %23

; <label>:23:                                     ; preds = %10, %14, %19
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %10* @fts_read(%9*) #3 {
  %2 = alloca %10*, align 8
  %3 = alloca %9*, align 8
  %4 = alloca %10*, align 8
  %5 = alloca %10*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i8*, align 8
  %8 = alloca %10*, align 8
  %9 = alloca i32, align 4
  store %9* %0, %9** %3, align 8
  %10 = load %9*, %9** %3, align 8
  %11 = getelementptr inbounds %9, %9* %10, i32 0, i32 0
  %12 = load %10*, %10** %11, align 8
  %13 = icmp eq %10* %12, null
  br i1 %13, label %20, label %14

; <label>:14:                                     ; preds = %1
  %15 = load %9*, %9** %3, align 8
  %16 = getelementptr inbounds %9, %9* %15, i32 0, i32 10
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 8192
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %14, %1
  store %10* null, %10** %2, align 8
  br label %700

; <label>:21:                                     ; preds = %14
  %22 = load %9*, %9** %3, align 8
  %23 = getelementptr inbounds %9, %9* %22, i32 0, i32 0
  %24 = load %10*, %10** %23, align 8
  store %10* %24, %10** %4, align 8
  %25 = load %10*, %10** %4, align 8
  %26 = getelementptr inbounds %10, %10* %25, i32 0, i32 16
  %27 = load i16, i16* %26, align 4
  store i16 %27, i16* %6, align 2
  %28 = load %10*, %10** %4, align 8
  %29 = getelementptr inbounds %10, %10* %28, i32 0, i32 16
  store i16 3, i16* %29, align 4
  %30 = load i16, i16* %6, align 2
  %31 = zext i16 %30 to i32
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %40

; <label>:33:                                     ; preds = %21
  %34 = load %9*, %9** %3, align 8
  %35 = load %10*, %10** %4, align 8
  %36 = call zeroext i16 @190(%9* %34, %10* %35, i1 zeroext false)
  %37 = load %10*, %10** %4, align 8
  %38 = getelementptr inbounds %10, %10* %37, i32 0, i32 14
  store i16 %36, i16* %38, align 8
  %39 = load %10*, %10** %4, align 8
  store %10* %39, %10** %2, align 8
  br label %700

; <label>:40:                                     ; preds = %21
  %41 = load i16, i16* %6, align 2
  %42 = zext i16 %41 to i32
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %93

; <label>:44:                                     ; preds = %40
  %45 = load %10*, %10** %4, align 8
  %46 = getelementptr inbounds %10, %10* %45, i32 0, i32 14
  %47 = load i16, i16* %46, align 8
  %48 = zext i16 %47 to i32
  %49 = icmp eq i32 %48, 12
  br i1 %49, label %56, label %50

; <label>:50:                                     ; preds = %44
  %51 = load %10*, %10** %4, align 8
  %52 = getelementptr inbounds %10, %10* %51, i32 0, i32 14
  %53 = load i16, i16* %52, align 8
  %54 = zext i16 %53 to i32
  %55 = icmp eq i32 %54, 13
  br i1 %55, label %56, label %93

; <label>:56:                                     ; preds = %50, %44
  %57 = load %9*, %9** %3, align 8
  %58 = load %10*, %10** %4, align 8
  %59 = call zeroext i16 @190(%9* %57, %10* %58, i1 zeroext true)
  %60 = load %10*, %10** %4, align 8
  %61 = getelementptr inbounds %10, %10* %60, i32 0, i32 14
  store i16 %59, i16* %61, align 8
  %62 = load %10*, %10** %4, align 8
  %63 = getelementptr inbounds %10, %10* %62, i32 0, i32 14
  %64 = load i16, i16* %63, align 8
  %65 = zext i16 %64 to i32
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %407

; <label>:67:                                     ; preds = %56
  %68 = load %9*, %9** %3, align 8
  %69 = getelementptr inbounds %9, %9* %68, i32 0, i32 10
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %407, label %73

; <label>:73:                                     ; preds = %67
  %74 = load %9*, %9** %3, align 8
  %75 = call i32 @193(%9* %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @130, i32 0, i32 0))
  %76 = load %10*, %10** %4, align 8
  %77 = getelementptr inbounds %10, %10* %76, i32 0, i32 8
  store i32 %75, i32* %77, align 4
  %78 = icmp slt i32 %75, 0
  br i1 %78, label %79, label %86

; <label>:79:                                     ; preds = %73
  %80 = call i32* @__errno_location() #14
  %81 = load i32, i32* %80, align 4
  %82 = load %10*, %10** %4, align 8
  %83 = getelementptr inbounds %10, %10* %82, i32 0, i32 7
  store i32 %81, i32* %83, align 8
  %84 = load %10*, %10** %4, align 8
  %85 = getelementptr inbounds %10, %10* %84, i32 0, i32 14
  store i16 7, i16* %85, align 8
  br label %407

; <label>:86:                                     ; preds = %73
  %87 = load %10*, %10** %4, align 8
  %88 = getelementptr inbounds %10, %10* %87, i32 0, i32 15
  %89 = load i16, i16* %88, align 2
  %90 = zext i16 %89 to i32
  %91 = or i32 %90, 2
  %92 = trunc i32 %91 to i16
  store i16 %92, i16* %88, align 2
  br label %407

; <label>:93:                                     ; preds = %50, %40
  %94 = load %10*, %10** %4, align 8
  %95 = getelementptr inbounds %10, %10* %94, i32 0, i32 14
  %96 = load i16, i16* %95, align 8
  %97 = zext i16 %96 to i32
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %246

; <label>:99:                                     ; preds = %93
  %100 = load i16, i16* %6, align 2
  %101 = zext i16 %100 to i32
  %102 = icmp eq i32 %101, 4
  br i1 %102, label %119, label %103

; <label>:103:                                    ; preds = %99
  %104 = load %9*, %9** %3, align 8
  %105 = getelementptr inbounds %9, %9* %104, i32 0, i32 10
  %106 = load i32, i32* %105, align 8
  %107 = and i32 %106, 64
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %148

; <label>:109:                                    ; preds = %103
  %110 = load %10*, %10** %4, align 8
  %111 = getelementptr inbounds %10, %10* %110, i32 0, i32 17
  %112 = getelementptr inbounds [1 x %8], [1 x %8]* %111, i32 0, i32 0
  %113 = getelementptr inbounds %8, %8* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %9*, %9** %3, align 8
  %116 = getelementptr inbounds %9, %9* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %114, %117
  br i1 %118, label %119, label %148

; <label>:119:                                    ; preds = %109, %99
  %120 = load %10*, %10** %4, align 8
  %121 = getelementptr inbounds %10, %10* %120, i32 0, i32 15
  %122 = load i16, i16* %121, align 2
  %123 = zext i16 %122 to i32
  %124 = and i32 %123, 2
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

; <label>:126:                                    ; preds = %119
  %127 = load %10*, %10** %4, align 8
  %128 = getelementptr inbounds %10, %10* %127, i32 0, i32 8
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @close(i32 %129)
  br label %131

; <label>:131:                                    ; preds = %126, %119
  %132 = load %9*, %9** %3, align 8
  %133 = getelementptr inbounds %9, %9* %132, i32 0, i32 1
  %134 = load %10*, %10** %133, align 8
  %135 = icmp ne %10* %134, null
  br i1 %135, label %136, label %142

; <label>:136:                                    ; preds = %131
  %137 = load %9*, %9** %3, align 8
  %138 = getelementptr inbounds %9, %9* %137, i32 0, i32 1
  %139 = load %10*, %10** %138, align 8
  call void @194(%10* %139)
  %140 = load %9*, %9** %3, align 8
  %141 = getelementptr inbounds %9, %9* %140, i32 0, i32 1
  store %10* null, %10** %141, align 8
  br label %142

; <label>:142:                                    ; preds = %136, %131
  %143 = load %10*, %10** %4, align 8
  %144 = getelementptr inbounds %10, %10* %143, i32 0, i32 14
  store i16 6, i16* %144, align 8
  %145 = load %9*, %9** %3, align 8
  %146 = load %10*, %10** %4, align 8
  call void @200(%9* %145, %10* %146)
  %147 = load %10*, %10** %4, align 8
  store %10* %147, %10** %2, align 8
  br label %700

; <label>:148:                                    ; preds = %109, %103
  %149 = load %9*, %9** %3, align 8
  %150 = getelementptr inbounds %9, %9* %149, i32 0, i32 1
  %151 = load %10*, %10** %150, align 8
  %152 = icmp ne %10* %151, null
  br i1 %152, label %153, label %169

; <label>:153:                                    ; preds = %148
  %154 = load %9*, %9** %3, align 8
  %155 = getelementptr inbounds %9, %9* %154, i32 0, i32 10
  %156 = load i32, i32* %155, align 8
  %157 = and i32 %156, 4096
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %169

; <label>:159:                                    ; preds = %153
  %160 = load %9*, %9** %3, align 8
  %161 = getelementptr inbounds %9, %9* %160, i32 0, i32 10
  %162 = load i32, i32* %161, align 8
  %163 = and i32 %162, -4097
  store i32 %163, i32* %161, align 8
  %164 = load %9*, %9** %3, align 8
  %165 = getelementptr inbounds %9, %9* %164, i32 0, i32 1
  %166 = load %10*, %10** %165, align 8
  call void @194(%10* %166)
  %167 = load %9*, %9** %3, align 8
  %168 = getelementptr inbounds %9, %9* %167, i32 0, i32 1
  store %10* null, %10** %168, align 8
  br label %169

; <label>:169:                                    ; preds = %159, %153, %148
  %170 = load %9*, %9** %3, align 8
  %171 = getelementptr inbounds %9, %9* %170, i32 0, i32 1
  %172 = load %10*, %10** %171, align 8
  %173 = icmp ne %10* %172, null
  %174 = load %9*, %9** %3, align 8
  br i1 %173, label %175, label %210

; <label>:175:                                    ; preds = %169
  %176 = load %10*, %10** %4, align 8
  %177 = load %10*, %10** %4, align 8
  %178 = getelementptr inbounds %10, %10* %177, i32 0, i32 5
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 @201(%9* %174, %10* %176, i32 -1, i8* %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %240

; <label>:182:                                    ; preds = %175
  %183 = call i32* @__errno_location() #14
  %184 = load i32, i32* %183, align 4
  %185 = load %10*, %10** %4, align 8
  %186 = getelementptr inbounds %10, %10* %185, i32 0, i32 7
  store i32 %184, i32* %186, align 8
  %187 = load %10*, %10** %4, align 8
  %188 = getelementptr inbounds %10, %10* %187, i32 0, i32 15
  %189 = load i16, i16* %188, align 2
  %190 = zext i16 %189 to i32
  %191 = or i32 %190, 1
  %192 = trunc i32 %191 to i16
  store i16 %192, i16* %188, align 2
  %193 = load %9*, %9** %3, align 8
  %194 = getelementptr inbounds %9, %9* %193, i32 0, i32 1
  %195 = load %10*, %10** %194, align 8
  store %10* %195, %10** %4, align 8
  br label %196

; <label>:196:                                    ; preds = %199, %182
  %197 = load %10*, %10** %4, align 8
  %198 = icmp ne %10* %197, null
  br i1 %198, label %199, label %240

; <label>:199:                                    ; preds = %196
  %200 = load %10*, %10** %4, align 8
  %201 = getelementptr inbounds %10, %10* %200, i32 0, i32 1
  %202 = load %10*, %10** %201, align 8
  %203 = getelementptr inbounds %10, %10* %202, i32 0, i32 5
  %204 = load i8*, i8** %203, align 8
  %205 = load %10*, %10** %4, align 8
  %206 = getelementptr inbounds %10, %10* %205, i32 0, i32 5
  store i8* %204, i8** %206, align 8
  %207 = load %10*, %10** %4, align 8
  %208 = getelementptr inbounds %10, %10* %207, i32 0, i32 2
  %209 = load %10*, %10** %208, align 8
  store %10* %209, %10** %4, align 8
  br label %196

; <label>:210:                                    ; preds = %169
  %211 = call %10* @202(%9* %174, i32 3)
  %212 = load %9*, %9** %3, align 8
  %213 = getelementptr inbounds %9, %9* %212, i32 0, i32 1
  store %10* %211, %10** %213, align 8
  %214 = icmp eq %10* %211, null
  br i1 %214, label %215, label %240

; <label>:215:                                    ; preds = %210
  %216 = load %9*, %9** %3, align 8
  %217 = getelementptr inbounds %9, %9* %216, i32 0, i32 10
  %218 = load i32, i32* %217, align 8
  %219 = and i32 %218, 8192
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

; <label>:221:                                    ; preds = %215
  store %10* null, %10** %2, align 8
  br label %700

; <label>:222:                                    ; preds = %215
  %223 = load %10*, %10** %4, align 8
  %224 = getelementptr inbounds %10, %10* %223, i32 0, i32 7
  %225 = load i32, i32* %224, align 8
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %236

; <label>:227:                                    ; preds = %222
  %228 = load %10*, %10** %4, align 8
  %229 = getelementptr inbounds %10, %10* %228, i32 0, i32 14
  %230 = load i16, i16* %229, align 8
  %231 = zext i16 %230 to i32
  %232 = icmp ne i32 %231, 4
  br i1 %232, label %233, label %236

; <label>:233:                                    ; preds = %227
  %234 = load %10*, %10** %4, align 8
  %235 = getelementptr inbounds %10, %10* %234, i32 0, i32 14
  store i16 7, i16* %235, align 8
  br label %236

; <label>:236:                                    ; preds = %222, %227, %233
  %237 = load %9*, %9** %3, align 8
  %238 = load %10*, %10** %4, align 8
  call void @200(%9* %237, %10* %238)
  %239 = load %10*, %10** %4, align 8
  store %10* %239, %10** %2, align 8
  br label %700

; <label>:240:                                    ; preds = %210, %175, %196
  %241 = load %9*, %9** %3, align 8
  %242 = getelementptr inbounds %9, %9* %241, i32 0, i32 1
  %243 = load %10*, %10** %242, align 8
  store %10* %243, %10** %4, align 8
  %244 = load %9*, %9** %3, align 8
  %245 = getelementptr inbounds %9, %9* %244, i32 0, i32 1
  store %10* null, %10** %245, align 8
  br label %370

; <label>:246:                                    ; preds = %93
  br label %247

; <label>:247:                                    ; preds = %323, %246
  %248 = load %10*, %10** %4, align 8
  store %10* %248, %10** %5, align 8
  %249 = load %10*, %10** %4, align 8
  %250 = getelementptr inbounds %10, %10* %249, i32 0, i32 2
  %251 = load %10*, %10** %250, align 8
  store %10* %251, %10** %4, align 8
  %252 = icmp ne %10* %251, null
  br i1 %252, label %253, label %513

; <label>:253:                                    ; preds = %247
  %254 = load %10*, %10** %4, align 8
  %255 = load %9*, %9** %3, align 8
  %256 = getelementptr inbounds %9, %9* %255, i32 0, i32 0
  store %10* %254, %10** %256, align 8
  %257 = load %10*, %10** %5, align 8
  %258 = bitcast %10* %257 to i8*
  call void @free(i8* %258) #8
  %259 = load %10*, %10** %4, align 8
  %260 = getelementptr inbounds %10, %10* %259, i32 0, i32 11
  %261 = load i64, i64* %260, align 8
  %262 = icmp eq i64 %261, 0
  br i1 %262, label %263, label %317

; <label>:263:                                    ; preds = %253
  %264 = load %9*, %9** %3, align 8
  %265 = getelementptr inbounds %9, %9* %264, i32 0, i32 13
  call void @198(%14* %265)
  %266 = load %9*, %9** %3, align 8
  %267 = getelementptr inbounds %9, %9* %266, i32 0, i32 10
  %268 = load i32, i32* %267, align 8
  %269 = and i32 %268, 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %305, label %271

; <label>:271:                                    ; preds = %263
  %272 = load %9*, %9** %3, align 8
  %273 = getelementptr inbounds %9, %9* %272, i32 0, i32 10
  %274 = load i32, i32* %273, align 8
  %275 = and i32 %274, 512
  %276 = icmp ne i32 %275, 0
  %277 = load %9*, %9** %3, align 8
  br i1 %276, label %278, label %290

; <label>:278:                                    ; preds = %271
  %279 = load %9*, %9** %3, align 8
  %280 = getelementptr inbounds %9, %9* %279, i32 0, i32 10
  %281 = load i32, i32* %280, align 8
  %282 = and i32 %281, 512
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %288, label %284

; <label>:284:                                    ; preds = %278
  %285 = load %9*, %9** %3, align 8
  %286 = getelementptr inbounds %9, %9* %285, i32 0, i32 5
  %287 = load i32, i32* %286, align 8
  br label %288

; <label>:288:                                    ; preds = %278, %284
  %289 = phi i32 [ %287, %284 ], [ -100, %278 ]
  call void @203(%9* %277, i32 %289, i1 zeroext true)
  br label %302

; <label>:290:                                    ; preds = %271
  %291 = getelementptr inbounds %9, %9* %277, i32 0, i32 10
  %292 = load i32, i32* %291, align 8
  %293 = and i32 %292, 512
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %299, label %295

; <label>:295:                                    ; preds = %290
  %296 = load %9*, %9** %3, align 8
  %297 = getelementptr inbounds %9, %9* %296, i32 0, i32 5
  %298 = load i32, i32* %297, align 8
  br label %299

; <label>:299:                                    ; preds = %290, %295
  %300 = phi i32 [ %298, %295 ], [ -100, %290 ]
  %301 = call i32 @fchdir(i32 %300) #8
  br label %302

; <label>:302:                                    ; preds = %299, %288
  %303 = phi i32 [ 0, %288 ], [ %301, %299 ]
  %304 = icmp ne i32 %303, 0
  br label %305

; <label>:305:                                    ; preds = %302, %263
  %306 = phi i1 [ false, %263 ], [ %304, %302 ]
  %307 = load %9*, %9** %3, align 8
  br i1 %306, label %308, label %312

; <label>:308:                                    ; preds = %305
  %309 = getelementptr inbounds %9, %9* %307, i32 0, i32 10
  %310 = load i32, i32* %309, align 8
  %311 = or i32 %310, 8192
  store i32 %311, i32* %309, align 8
  store %10* null, %10** %2, align 8
  br label %700

; <label>:312:                                    ; preds = %305
  call void @199(%9* %307)
  %313 = load %9*, %9** %3, align 8
  %314 = load %10*, %10** %4, align 8
  call void @204(%9* %313, %10* %314)
  %315 = load %9*, %9** %3, align 8
  %316 = call zeroext i1 @192(%9* %315)
  br label %407

; <label>:317:                                    ; preds = %253
  %318 = load %10*, %10** %4, align 8
  %319 = getelementptr inbounds %10, %10* %318, i32 0, i32 16
  %320 = load i16, i16* %319, align 4
  %321 = zext i16 %320 to i32
  %322 = icmp eq i32 %321, 4
  br i1 %322, label %323, label %324

; <label>:323:                                    ; preds = %317
  br label %247

; <label>:324:                                    ; preds = %317
  %325 = load %10*, %10** %4, align 8
  %326 = getelementptr inbounds %10, %10* %325, i32 0, i32 16
  %327 = load i16, i16* %326, align 4
  %328 = zext i16 %327 to i32
  %329 = icmp eq i32 %328, 2
  br i1 %329, label %330, label %370

; <label>:330:                                    ; preds = %324
  %331 = load %9*, %9** %3, align 8
  %332 = load %10*, %10** %4, align 8
  %333 = call zeroext i16 @190(%9* %331, %10* %332, i1 zeroext true)
  %334 = load %10*, %10** %4, align 8
  %335 = getelementptr inbounds %10, %10* %334, i32 0, i32 14
  store i16 %333, i16* %335, align 8
  %336 = load %10*, %10** %4, align 8
  %337 = getelementptr inbounds %10, %10* %336, i32 0, i32 14
  %338 = load i16, i16* %337, align 8
  %339 = zext i16 %338 to i32
  %340 = icmp eq i32 %339, 1
  br i1 %340, label %341, label %367

; <label>:341:                                    ; preds = %330
  %342 = load %9*, %9** %3, align 8
  %343 = getelementptr inbounds %9, %9* %342, i32 0, i32 10
  %344 = load i32, i32* %343, align 8
  %345 = and i32 %344, 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %367, label %347

; <label>:347:                                    ; preds = %341
  %348 = load %9*, %9** %3, align 8
  %349 = call i32 @193(%9* %348, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @130, i32 0, i32 0))
  %350 = load %10*, %10** %4, align 8
  %351 = getelementptr inbounds %10, %10* %350, i32 0, i32 8
  store i32 %349, i32* %351, align 4
  %352 = icmp slt i32 %349, 0
  br i1 %352, label %353, label %360

; <label>:353:                                    ; preds = %347
  %354 = call i32* @__errno_location() #14
  %355 = load i32, i32* %354, align 4
  %356 = load %10*, %10** %4, align 8
  %357 = getelementptr inbounds %10, %10* %356, i32 0, i32 7
  store i32 %355, i32* %357, align 8
  %358 = load %10*, %10** %4, align 8
  %359 = getelementptr inbounds %10, %10* %358, i32 0, i32 14
  store i16 7, i16* %359, align 8
  br label %367

; <label>:360:                                    ; preds = %347
  %361 = load %10*, %10** %4, align 8
  %362 = getelementptr inbounds %10, %10* %361, i32 0, i32 15
  %363 = load i16, i16* %362, align 2
  %364 = zext i16 %363 to i32
  %365 = or i32 %364, 2
  %366 = trunc i32 %365 to i16
  store i16 %366, i16* %362, align 2
  br label %367

; <label>:367:                                    ; preds = %353, %360, %341, %330
  %368 = load %10*, %10** %4, align 8
  %369 = getelementptr inbounds %10, %10* %368, i32 0, i32 16
  store i16 3, i16* %369, align 4
  br label %370

; <label>:370:                                    ; preds = %324, %367, %240
  %371 = load %9*, %9** %3, align 8
  %372 = getelementptr inbounds %9, %9* %371, i32 0, i32 4
  %373 = load i8*, i8** %372, align 8
  %374 = load %10*, %10** %4, align 8
  %375 = getelementptr inbounds %10, %10* %374, i32 0, i32 1
  %376 = load %10*, %10** %375, align 8
  %377 = getelementptr inbounds %10, %10* %376, i32 0, i32 6
  %378 = load i8*, i8** %377, align 8
  %379 = load %10*, %10** %4, align 8
  %380 = getelementptr inbounds %10, %10* %379, i32 0, i32 1
  %381 = load %10*, %10** %380, align 8
  %382 = getelementptr inbounds %10, %10* %381, i32 0, i32 9
  %383 = load i64, i64* %382, align 8
  %384 = sub i64 %383, 1
  %385 = getelementptr inbounds i8, i8* %378, i64 %384
  %386 = load i8, i8* %385, align 1
  %387 = sext i8 %386 to i32
  %388 = icmp eq i32 %387, 47
  %389 = load %10*, %10** %4, align 8
  %390 = getelementptr inbounds %10, %10* %389, i32 0, i32 1
  %391 = load %10*, %10** %390, align 8
  %392 = getelementptr inbounds %10, %10* %391, i32 0, i32 9
  %393 = load i64, i64* %392, align 8
  %394 = sub i64 %393, 1
  %395 = select i1 %388, i64 %394, i64 %393
  %396 = getelementptr inbounds i8, i8* %373, i64 %395
  store i8* %396, i8** %7, align 8
  %397 = load i8*, i8** %7, align 8
  %398 = getelementptr inbounds i8, i8* %397, i32 1
  store i8* %398, i8** %7, align 8
  store i8 47, i8* %397, align 1
  %399 = load i8*, i8** %7, align 8
  %400 = load %10*, %10** %4, align 8
  %401 = getelementptr inbounds %10, %10* %400, i32 0, i32 18
  %402 = getelementptr inbounds [1 x i8], [1 x i8]* %401, i32 0, i32 0
  %403 = load %10*, %10** %4, align 8
  %404 = getelementptr inbounds %10, %10* %403, i32 0, i32 12
  %405 = load i64, i64* %404, align 8
  %406 = add i64 %405, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %399, i8* %402, i64 %406, i32 1, i1 false)
  br label %407

; <label>:407:                                    ; preds = %56, %67, %86, %79, %370, %312
  %408 = load %10*, %10** %4, align 8
  %409 = load %9*, %9** %3, align 8
  %410 = getelementptr inbounds %9, %9* %409, i32 0, i32 0
  store %10* %408, %10** %410, align 8
  %411 = load %10*, %10** %4, align 8
  %412 = getelementptr inbounds %10, %10* %411, i32 0, i32 14
  %413 = load i16, i16* %412, align 8
  %414 = zext i16 %413 to i32
  %415 = icmp eq i32 %414, 11
  br i1 %415, label %416, label %486

; <label>:416:                                    ; preds = %407
  %417 = load %10*, %10** %4, align 8
  %418 = getelementptr inbounds %10, %10* %417, i32 0, i32 17
  %419 = getelementptr inbounds [1 x %8], [1 x %8]* %418, i32 0, i32 0
  %420 = getelementptr inbounds %8, %8* %419, i32 0, i32 8
  %421 = load i64, i64* %420, align 8
  %422 = icmp eq i64 %421, 2
  %423 = load %10*, %10** %4, align 8
  br i1 %422, label %424, label %479

; <label>:424:                                    ; preds = %416
  %425 = getelementptr inbounds %10, %10* %423, i32 0, i32 1
  %426 = load %10*, %10** %425, align 8
  store %10* %426, %10** %8, align 8
  %427 = load %10*, %10** %4, align 8
  %428 = getelementptr inbounds %10, %10* %427, i32 0, i32 11
  %429 = load i64, i64* %428, align 8
  %430 = icmp slt i64 0, %429
  br i1 %430, label %431, label %451

; <label>:431:                                    ; preds = %424
  %432 = load %10*, %10** %8, align 8
  %433 = getelementptr inbounds %10, %10* %432, i32 0, i32 13
  %434 = load i64, i64* %433, align 8
  %435 = icmp eq i64 %434, 0
  br i1 %435, label %436, label %451

; <label>:436:                                    ; preds = %431
  %437 = load %9*, %9** %3, align 8
  %438 = getelementptr inbounds %9, %9* %437, i32 0, i32 10
  %439 = load i32, i32* %438, align 8
  %440 = and i32 %439, 8
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %451

; <label>:442:                                    ; preds = %436
  %443 = load %9*, %9** %3, align 8
  %444 = getelementptr inbounds %9, %9* %443, i32 0, i32 10
  %445 = load i32, i32* %444, align 8
  %446 = and i32 %445, 16
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %451

; <label>:448:                                    ; preds = %442
  %449 = load %10*, %10** %8, align 8
  %450 = call zeroext i1 @205(%10* %449)
  br i1 %450, label %486, label %451

; <label>:451:                                    ; preds = %448, %442, %436, %431, %424
  %452 = load %9*, %9** %3, align 8
  %453 = load %10*, %10** %4, align 8
  %454 = call zeroext i16 @190(%9* %452, %10* %453, i1 zeroext false)
  %455 = load %10*, %10** %4, align 8
  %456 = getelementptr inbounds %10, %10* %455, i32 0, i32 14
  store i16 %454, i16* %456, align 8
  %457 = load %10*, %10** %4, align 8
  %458 = getelementptr inbounds %10, %10* %457, i32 0, i32 17
  %459 = getelementptr inbounds [1 x %8], [1 x %8]* %458, i32 0, i32 0
  %460 = getelementptr inbounds %8, %8* %459, i32 0, i32 3
  %461 = load i32, i32* %460, align 8
  %462 = and i32 %461, 61440
  %463 = icmp eq i32 %462, 16384
  br i1 %463, label %464, label %486

; <label>:464:                                    ; preds = %451
  %465 = load %10*, %10** %4, align 8
  %466 = getelementptr inbounds %10, %10* %465, i32 0, i32 11
  %467 = load i64, i64* %466, align 8
  %468 = icmp ne i64 %467, 0
  br i1 %468, label %469, label %486

; <label>:469:                                    ; preds = %464
  %470 = load %10*, %10** %8, align 8
  %471 = getelementptr inbounds %10, %10* %470, i32 0, i32 13
  %472 = load i64, i64* %471, align 8
  %473 = icmp ne i64 %472, 0
  br i1 %473, label %474, label %486

; <label>:474:                                    ; preds = %469
  %475 = load %10*, %10** %8, align 8
  %476 = getelementptr inbounds %10, %10* %475, i32 0, i32 13
  %477 = load i64, i64* %476, align 8
  %478 = add i64 %477, -1
  store i64 %478, i64* %476, align 8
  br label %486

; <label>:479:                                    ; preds = %416
  %480 = getelementptr inbounds %10, %10* %423, i32 0, i32 17
  %481 = getelementptr inbounds [1 x %8], [1 x %8]* %480, i32 0, i32 0
  %482 = getelementptr inbounds %8, %8* %481, i32 0, i32 8
  %483 = load i64, i64* %482, align 8
  %484 = icmp eq i64 %483, 1
  br i1 %484, label %486, label %485

; <label>:485:                                    ; preds = %479
  call void @abort() #11
  unreachable

; <label>:486:                                    ; preds = %451, %464, %469, %474, %448, %479, %407
  %487 = load %10*, %10** %4, align 8
  %488 = getelementptr inbounds %10, %10* %487, i32 0, i32 14
  %489 = load i16, i16* %488, align 8
  %490 = zext i16 %489 to i32
  %491 = icmp eq i32 %490, 1
  br i1 %491, label %492, label %511

; <label>:492:                                    ; preds = %486
  %493 = load %10*, %10** %4, align 8
  %494 = getelementptr inbounds %10, %10* %493, i32 0, i32 11
  %495 = load i64, i64* %494, align 8
  %496 = icmp eq i64 %495, 0
  br i1 %496, label %497, label %505

; <label>:497:                                    ; preds = %492
  %498 = load %10*, %10** %4, align 8
  %499 = getelementptr inbounds %10, %10* %498, i32 0, i32 17
  %500 = getelementptr inbounds [1 x %8], [1 x %8]* %499, i32 0, i32 0
  %501 = getelementptr inbounds %8, %8* %500, i32 0, i32 0
  %502 = load i64, i64* %501, align 8
  %503 = load %9*, %9** %3, align 8
  %504 = getelementptr inbounds %9, %9* %503, i32 0, i32 3
  store i64 %502, i64* %504, align 8
  br label %505

; <label>:505:                                    ; preds = %497, %492
  %506 = load %9*, %9** %3, align 8
  %507 = load %10*, %10** %4, align 8
  %508 = call zeroext i1 @206(%9* %506, %10* %507)
  br i1 %508, label %511, label %509

; <label>:509:                                    ; preds = %505
  %510 = call i32* @__errno_location() #14
  store i32 12, i32* %510, align 4
  store %10* null, %10** %2, align 8
  br label %700

; <label>:511:                                    ; preds = %505, %486
  %512 = load %10*, %10** %4, align 8
  store %10* %512, %10** %2, align 8
  br label %700

; <label>:513:                                    ; preds = %247
  %514 = load %10*, %10** %5, align 8
  %515 = getelementptr inbounds %10, %10* %514, i32 0, i32 1
  %516 = load %10*, %10** %515, align 8
  store %10* %516, %10** %4, align 8
  %517 = load %10*, %10** %4, align 8
  %518 = load %9*, %9** %3, align 8
  %519 = getelementptr inbounds %9, %9* %518, i32 0, i32 0
  store %10* %517, %10** %519, align 8
  %520 = load %10*, %10** %5, align 8
  %521 = bitcast %10* %520 to i8*
  call void @free(i8* %521) #8
  %522 = load %10*, %10** %4, align 8
  %523 = getelementptr inbounds %10, %10* %522, i32 0, i32 11
  %524 = load i64, i64* %523, align 8
  %525 = icmp eq i64 %524, -1
  %526 = load %10*, %10** %4, align 8
  br i1 %525, label %527, label %532

; <label>:527:                                    ; preds = %513
  %528 = bitcast %10* %526 to i8*
  call void @free(i8* %528) #8
  %529 = call i32* @__errno_location() #14
  store i32 0, i32* %529, align 4
  %530 = load %9*, %9** %3, align 8
  %531 = getelementptr inbounds %9, %9* %530, i32 0, i32 0
  store %10* null, %10** %531, align 8
  store %10* null, %10** %2, align 8
  br label %700

; <label>:532:                                    ; preds = %513
  %533 = getelementptr inbounds %10, %10* %526, i32 0, i32 14
  %534 = load i16, i16* %533, align 8
  %535 = zext i16 %534 to i32
  %536 = icmp ne i32 %535, 11
  br i1 %536, label %538, label %537

; <label>:537:                                    ; preds = %532
  call void @abort() #11
  unreachable

; <label>:538:                                    ; preds = %532
  %539 = load %9*, %9** %3, align 8
  %540 = getelementptr inbounds %9, %9* %539, i32 0, i32 4
  %541 = load i8*, i8** %540, align 8
  %542 = load %10*, %10** %4, align 8
  %543 = getelementptr inbounds %10, %10* %542, i32 0, i32 9
  %544 = load i64, i64* %543, align 8
  %545 = getelementptr inbounds i8, i8* %541, i64 %544
  store i8 0, i8* %545, align 1
  %546 = load %10*, %10** %4, align 8
  %547 = getelementptr inbounds %10, %10* %546, i32 0, i32 11
  %548 = load i64, i64* %547, align 8
  %549 = icmp eq i64 %548, 0
  br i1 %549, label %550, label %601

; <label>:550:                                    ; preds = %538
  %551 = load %9*, %9** %3, align 8
  %552 = getelementptr inbounds %9, %9* %551, i32 0, i32 13
  call void @198(%14* %552)
  %553 = load %9*, %9** %3, align 8
  %554 = getelementptr inbounds %9, %9* %553, i32 0, i32 10
  %555 = load i32, i32* %554, align 8
  %556 = and i32 %555, 4
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %.critedge, label %558

; <label>:558:                                    ; preds = %550
  %559 = load %9*, %9** %3, align 8
  %560 = getelementptr inbounds %9, %9* %559, i32 0, i32 10
  %561 = load i32, i32* %560, align 8
  %562 = and i32 %561, 512
  %563 = icmp ne i32 %562, 0
  %564 = load %9*, %9** %3, align 8
  br i1 %563, label %565, label %577

; <label>:565:                                    ; preds = %558
  %566 = load %9*, %9** %3, align 8
  %567 = getelementptr inbounds %9, %9* %566, i32 0, i32 10
  %568 = load i32, i32* %567, align 8
  %569 = and i32 %568, 512
  %570 = icmp ne i32 %569, 0
  br i1 %570, label %575, label %571

; <label>:571:                                    ; preds = %565
  %572 = load %9*, %9** %3, align 8
  %573 = getelementptr inbounds %9, %9* %572, i32 0, i32 5
  %574 = load i32, i32* %573, align 8
  br label %575

; <label>:575:                                    ; preds = %565, %571
  %576 = phi i32 [ %574, %571 ], [ -100, %565 ]
  call void @203(%9* %564, i32 %576, i1 zeroext true)
  br label %589

; <label>:577:                                    ; preds = %558
  %578 = getelementptr inbounds %9, %9* %564, i32 0, i32 10
  %579 = load i32, i32* %578, align 8
  %580 = and i32 %579, 512
  %581 = icmp ne i32 %580, 0
  br i1 %581, label %586, label %582

; <label>:582:                                    ; preds = %577
  %583 = load %9*, %9** %3, align 8
  %584 = getelementptr inbounds %9, %9* %583, i32 0, i32 5
  %585 = load i32, i32* %584, align 8
  br label %586

; <label>:586:                                    ; preds = %577, %582
  %587 = phi i32 [ %585, %582 ], [ -100, %577 ]
  %588 = call i32 @fchdir(i32 %587) #8
  br label %589

; <label>:589:                                    ; preds = %586, %575
  %590 = phi i32 [ 0, %575 ], [ %588, %586 ]
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %592, label %.critedge

; <label>:592:                                    ; preds = %589
  %593 = call i32* @__errno_location() #14
  %594 = load i32, i32* %593, align 4
  %595 = load %10*, %10** %4, align 8
  %596 = getelementptr inbounds %10, %10* %595, i32 0, i32 7
  store i32 %594, i32* %596, align 8
  %597 = load %9*, %9** %3, align 8
  %598 = getelementptr inbounds %9, %9* %597, i32 0, i32 10
  %599 = load i32, i32* %598, align 8
  %600 = or i32 %599, 8192
  store i32 %600, i32* %598, align 8
  br label %.critedge

; <label>:601:                                    ; preds = %538
  %602 = load %10*, %10** %4, align 8
  %603 = getelementptr inbounds %10, %10* %602, i32 0, i32 15
  %604 = load i16, i16* %603, align 2
  %605 = zext i16 %604 to i32
  %606 = and i32 %605, 2
  %607 = icmp ne i32 %606, 0
  br i1 %607, label %608, label %653

; <label>:608:                                    ; preds = %601
  %609 = load %9*, %9** %3, align 8
  %610 = getelementptr inbounds %9, %9* %609, i32 0, i32 10
  %611 = load i32, i32* %610, align 8
  %612 = and i32 %611, 4
  %613 = icmp ne i32 %612, 0
  br i1 %613, label %648, label %614

; <label>:614:                                    ; preds = %608
  %615 = load %9*, %9** %3, align 8
  %616 = getelementptr inbounds %9, %9* %615, i32 0, i32 10
  %617 = load i32, i32* %616, align 8
  %618 = and i32 %617, 512
  %619 = icmp ne i32 %618, 0
  br i1 %619, label %620, label %625

; <label>:620:                                    ; preds = %614
  %621 = load %9*, %9** %3, align 8
  %622 = load %10*, %10** %4, align 8
  %623 = getelementptr inbounds %10, %10* %622, i32 0, i32 8
  %624 = load i32, i32* %623, align 4
  call void @203(%9* %621, i32 %624, i1 zeroext true)
  br label %648

; <label>:625:                                    ; preds = %614
  %626 = load %10*, %10** %4, align 8
  %627 = getelementptr inbounds %10, %10* %626, i32 0, i32 8
  %628 = load i32, i32* %627, align 4
  %629 = call i32 @fchdir(i32 %628) #8
  %630 = icmp ne i32 %629, 0
  br i1 %630, label %631, label %648

; <label>:631:                                    ; preds = %625
  %632 = call i32* @__errno_location() #14
  %633 = load i32, i32* %632, align 4
  store i32 %633, i32* %9, align 4
  %634 = load %10*, %10** %4, align 8
  %635 = getelementptr inbounds %10, %10* %634, i32 0, i32 8
  %636 = load i32, i32* %635, align 4
  %637 = call i32 @close(i32 %636)
  %638 = load i32, i32* %9, align 4
  %639 = call i32* @__errno_location() #14
  store i32 %638, i32* %639, align 4
  %640 = call i32* @__errno_location() #14
  %641 = load i32, i32* %640, align 4
  %642 = load %10*, %10** %4, align 8
  %643 = getelementptr inbounds %10, %10* %642, i32 0, i32 7
  store i32 %641, i32* %643, align 8
  %644 = load %9*, %9** %3, align 8
  %645 = getelementptr inbounds %9, %9* %644, i32 0, i32 10
  %646 = load i32, i32* %645, align 8
  %647 = or i32 %646, 8192
  store i32 %647, i32* %645, align 8
  br label %648

; <label>:648:                                    ; preds = %620, %631, %625, %608
  %649 = load %10*, %10** %4, align 8
  %650 = getelementptr inbounds %10, %10* %649, i32 0, i32 8
  %651 = load i32, i32* %650, align 4
  %652 = call i32 @close(i32 %651)
  br label %.critedge

; <label>:653:                                    ; preds = %601
  %654 = load %10*, %10** %4, align 8
  %655 = getelementptr inbounds %10, %10* %654, i32 0, i32 15
  %656 = load i16, i16* %655, align 2
  %657 = zext i16 %656 to i32
  %658 = and i32 %657, 1
  %659 = icmp ne i32 %658, 0
  br i1 %659, label %.critedge, label %660

; <label>:660:                                    ; preds = %653
  %661 = load %9*, %9** %3, align 8
  %662 = load %10*, %10** %4, align 8
  %663 = getelementptr inbounds %10, %10* %662, i32 0, i32 1
  %664 = load %10*, %10** %663, align 8
  %665 = call i32 @201(%9* %661, %10* %664, i32 -1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @132, i32 0, i32 0))
  %666 = icmp ne i32 %665, 0
  br i1 %666, label %667, label %.critedge

; <label>:667:                                    ; preds = %660
  %668 = call i32* @__errno_location() #14
  %669 = load i32, i32* %668, align 4
  %670 = load %10*, %10** %4, align 8
  %671 = getelementptr inbounds %10, %10* %670, i32 0, i32 7
  store i32 %669, i32* %671, align 8
  %672 = load %9*, %9** %3, align 8
  %673 = getelementptr inbounds %9, %9* %672, i32 0, i32 10
  %674 = load i32, i32* %673, align 8
  %675 = or i32 %674, 8192
  store i32 %675, i32* %673, align 8
  br label %.critedge

.critedge:                                        ; preds = %648, %667, %660, %653, %589, %592, %550
  %676 = load %10*, %10** %4, align 8
  %677 = getelementptr inbounds %10, %10* %676, i32 0, i32 7
  %678 = load i32, i32* %677, align 8
  %679 = icmp ne i32 %678, 0
  %680 = zext i1 %679 to i64
  %681 = select i1 %679, i32 7, i32 6
  %682 = trunc i32 %681 to i16
  %683 = load %10*, %10** %4, align 8
  %684 = getelementptr inbounds %10, %10* %683, i32 0, i32 14
  store i16 %682, i16* %684, align 8
  %685 = load %10*, %10** %4, align 8
  %686 = getelementptr inbounds %10, %10* %685, i32 0, i32 7
  %687 = load i32, i32* %686, align 8
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %689, label %692

; <label>:689:                                    ; preds = %.critedge
  %690 = load %9*, %9** %3, align 8
  %691 = load %10*, %10** %4, align 8
  call void @200(%9* %690, %10* %691)
  br label %692

; <label>:692:                                    ; preds = %689, %.critedge
  %693 = load %9*, %9** %3, align 8
  %694 = getelementptr inbounds %9, %9* %693, i32 0, i32 10
  %695 = load i32, i32* %694, align 8
  %696 = and i32 %695, 8192
  %697 = icmp ne i32 %696, 0
  %698 = load %10*, %10** %4, align 8
  %699 = select i1 %697, %10* null, %10* %698
  store %10* %699, %10** %2, align 8
  br label %700

; <label>:700:                                    ; preds = %692, %527, %511, %509, %308, %236, %221, %142, %33, %20
  %701 = load %10*, %10** %2, align 8
  ret %10* %701
}

; Function Attrs: noinline nounwind uwtable
define internal void @200(%9*, %10*) #3 {
  %3 = alloca %9*, align 8
  %4 = alloca %10*, align 8
  %5 = alloca %8*, align 8
  %6 = alloca %19, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %10*, align 8
  store %9* %0, %9** %3, align 8
  store %10* %1, %10** %4, align 8
  %9 = load %10*, %10** %4, align 8
  %10 = getelementptr inbounds %10, %10* %9, i32 0, i32 17
  %11 = getelementptr inbounds [1 x %8], [1 x %8]* %10, i32 0, i32 0
  store %8* %11, %8** %5, align 8
  %12 = load %9*, %9** %3, align 8
  %13 = getelementptr inbounds %9, %9* %12, i32 0, i32 10
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, 258
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %37

; <label>:17:                                     ; preds = %2
  %18 = load %8*, %8** %5, align 8
  %19 = getelementptr inbounds %8, %8* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %19, %19* %6, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  %22 = load %8*, %8** %5, align 8
  %23 = getelementptr inbounds %8, %8* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %19, %19* %6, i32 0, i32 1
  store i64 %24, i64* %25, align 8
  %26 = load %9*, %9** %3, align 8
  %27 = getelementptr inbounds %9, %9* %26, i32 0, i32 12
  %28 = bitcast %13* %27 to %11**
  %29 = load %11*, %11** %28, align 8
  %30 = bitcast %19* %6 to i8*
  %31 = call i8* @hash_delete(%11* %29, i8* %30)
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

; <label>:34:                                     ; preds = %17
  call void @abort() #11
  unreachable

; <label>:35:                                     ; preds = %17
  %36 = load i8*, i8** %7, align 8
  call void @free(i8* %36) #8
  br label %104

; <label>:37:                                     ; preds = %2
  %38 = load %10*, %10** %4, align 8
  %39 = getelementptr inbounds %10, %10* %38, i32 0, i32 1
  %40 = load %10*, %10** %39, align 8
  store %10* %40, %10** %8, align 8
  %41 = load %10*, %10** %8, align 8
  %42 = icmp ne %10* %41, null
  br i1 %42, label %43, label %104

; <label>:43:                                     ; preds = %37
  %44 = load %10*, %10** %8, align 8
  %45 = getelementptr inbounds %10, %10* %44, i32 0, i32 11
  %46 = load i64, i64* %45, align 8
  %47 = icmp sle i64 0, %46
  br i1 %47, label %48, label %104

; <label>:48:                                     ; preds = %43
  %49 = load %9*, %9** %3, align 8
  %50 = getelementptr inbounds %9, %9* %49, i32 0, i32 12
  %51 = bitcast %13* %50 to %18**
  %52 = load %18*, %18** %51, align 8
  %53 = getelementptr inbounds %18, %18* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %48
  call void @abort() #11
  unreachable

; <label>:57:                                     ; preds = %48
  %58 = load %9*, %9** %3, align 8
  %59 = getelementptr inbounds %9, %9* %58, i32 0, i32 12
  %60 = bitcast %13* %59 to %18**
  %61 = load %18*, %18** %60, align 8
  %62 = getelementptr inbounds %18, %18* %61, i32 0, i32 0
  %63 = getelementptr inbounds %3, %3* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %8*, %8** %5, align 8
  %66 = getelementptr inbounds %8, %8* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %64, %67
  br i1 %68, label %69, label %104

; <label>:69:                                     ; preds = %57
  %70 = load %9*, %9** %3, align 8
  %71 = getelementptr inbounds %9, %9* %70, i32 0, i32 12
  %72 = bitcast %13* %71 to %18**
  %73 = load %18*, %18** %72, align 8
  %74 = getelementptr inbounds %18, %18* %73, i32 0, i32 0
  %75 = getelementptr inbounds %3, %3* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %8*, %8** %5, align 8
  %78 = getelementptr inbounds %8, %8* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %76, %79
  br i1 %80, label %81, label %104

; <label>:81:                                     ; preds = %69
  %82 = load %10*, %10** %8, align 8
  %83 = getelementptr inbounds %10, %10* %82, i32 0, i32 17
  %84 = getelementptr inbounds [1 x %8], [1 x %8]* %83, i32 0, i32 0
  %85 = getelementptr inbounds %8, %8* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %9*, %9** %3, align 8
  %88 = getelementptr inbounds %9, %9* %87, i32 0, i32 12
  %89 = bitcast %13* %88 to %18**
  %90 = load %18*, %18** %89, align 8
  %91 = getelementptr inbounds %18, %18* %90, i32 0, i32 0
  %92 = getelementptr inbounds %3, %3* %91, i32 0, i32 1
  store i64 %86, i64* %92, align 8
  %93 = load %10*, %10** %8, align 8
  %94 = getelementptr inbounds %10, %10* %93, i32 0, i32 17
  %95 = getelementptr inbounds [1 x %8], [1 x %8]* %94, i32 0, i32 0
  %96 = getelementptr inbounds %8, %8* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %9*, %9** %3, align 8
  %99 = getelementptr inbounds %9, %9* %98, i32 0, i32 12
  %100 = bitcast %13* %99 to %18**
  %101 = load %18*, %18** %100, align 8
  %102 = getelementptr inbounds %18, %18* %101, i32 0, i32 0
  %103 = getelementptr inbounds %3, %3* %102, i32 0, i32 0
  store i64 %97, i64* %103, align 8
  br label %104

; <label>:104:                                    ; preds = %37, %43, %57, %69, %81, %35
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @201(%9*, %10*, i32, i8*) #3 {
  %5 = alloca i32, align 4
  %6 = alloca %9*, align 8
  %7 = alloca %10*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %8, align 8
  %15 = alloca i32, align 4
  store %9* %0, %9** %6, align 8
  store %10* %1, %10** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %22

; <label>:18:                                     ; preds = %4
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @132, i32 0, i32 0)) #12
  %21 = icmp eq i32 %20, 0
  br label %22

; <label>:22:                                     ; preds = %18, %4
  %23 = phi i1 [ false, %4 ], [ %21, %18 ]
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %11, align 1
  %25 = load %9*, %9** %6, align 8
  %26 = getelementptr inbounds %9, %9* %25, i32 0, i32 10
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

; <label>:30:                                     ; preds = %22
  %31 = load %9*, %9** %6, align 8
  %32 = getelementptr inbounds %9, %9* %31, i32 0, i32 10
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, 512
  %35 = icmp ne i32 %34, 0
  %36 = load i32, i32* %8, align 4
  %37 = icmp sle i32 0, %36
  %or.cond = and i1 %35, %37
  br i1 %or.cond, label %38, label %41

; <label>:38:                                     ; preds = %30
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @close(i32 %39)
  br label %41

; <label>:41:                                     ; preds = %38, %30
  store i32 0, i32* %5, align 4
  br label %141

; <label>:42:                                     ; preds = %22
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %66

; <label>:45:                                     ; preds = %42
  %46 = load i8, i8* %11, align 1
  %47 = trunc i8 %46 to i1
  br i1 %47, label %48, label %66

; <label>:48:                                     ; preds = %45
  %49 = load %9*, %9** %6, align 8
  %50 = getelementptr inbounds %9, %9* %49, i32 0, i32 10
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, 512
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

; <label>:54:                                     ; preds = %48
  %55 = load %9*, %9** %6, align 8
  %56 = getelementptr inbounds %9, %9* %55, i32 0, i32 13
  %57 = call zeroext i1 @i_ring_empty(%14* %56)
  br i1 %57, label %66, label %58

; <label>:58:                                     ; preds = %54
  %59 = load %9*, %9** %6, align 8
  %60 = getelementptr inbounds %9, %9* %59, i32 0, i32 13
  %61 = call i32 @i_ring_pop(%14* %60)
  store i32 %61, i32* %13, align 4
  store i8 1, i8* %11, align 1
  %62 = load i32, i32* %13, align 4
  %63 = icmp sle i32 0, %62
  br i1 %63, label %64, label %66

; <label>:64:                                     ; preds = %58
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %8, align 4
  store i8* null, i8** %9, align 8
  br label %66

; <label>:66:                                     ; preds = %54, %64, %58, %48, %45, %42
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %76

; <label>:70:                                     ; preds = %66
  %71 = load %9*, %9** %6, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 @193(%9* %71, i8* %72)
  store i32 %73, i32* %12, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

; <label>:75:                                     ; preds = %70
  store i32 -1, i32* %5, align 4
  br label %141

; <label>:76:                                     ; preds = %70, %66
  %77 = load %9*, %9** %6, align 8
  %78 = getelementptr inbounds %9, %9* %77, i32 0, i32 10
  %79 = load i32, i32* %78, align 8
  %80 = and i32 %79, 2
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %89, label %82

; <label>:82:                                     ; preds = %76
  %83 = load i8*, i8** %9, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %114

; <label>:85:                                     ; preds = %82
  %86 = load i8*, i8** %9, align 8
  %87 = call i32 @strcmp(i8* %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @132, i32 0, i32 0)) #12
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %114

; <label>:89:                                     ; preds = %85, %76
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @fstat(i32 %90, %8* %14) #8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

; <label>:93:                                     ; preds = %89
  store i32 -1, i32* %10, align 4
  br label %129

; <label>:94:                                     ; preds = %89
  %95 = load %10*, %10** %7, align 8
  %96 = getelementptr inbounds %10, %10* %95, i32 0, i32 17
  %97 = getelementptr inbounds [1 x %8], [1 x %8]* %96, i32 0, i32 0
  %98 = getelementptr inbounds %8, %8* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %8, %8* %14, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %99, %101
  br i1 %102, label %112, label %103

; <label>:103:                                    ; preds = %94
  %104 = load %10*, %10** %7, align 8
  %105 = getelementptr inbounds %10, %10* %104, i32 0, i32 17
  %106 = getelementptr inbounds [1 x %8], [1 x %8]* %105, i32 0, i32 0
  %107 = getelementptr inbounds %8, %8* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %8, %8* %14, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %108, %110
  br i1 %111, label %112, label %114

; <label>:112:                                    ; preds = %103, %94
  %113 = call i32* @__errno_location() #14
  store i32 2, i32* %113, align 4
  store i32 -1, i32* %10, align 4
  br label %129

; <label>:114:                                    ; preds = %103, %85, %82
  %115 = load %9*, %9** %6, align 8
  %116 = getelementptr inbounds %9, %9* %115, i32 0, i32 10
  %117 = load i32, i32* %116, align 8
  %118 = and i32 %117, 512
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

; <label>:120:                                    ; preds = %114
  %121 = load %9*, %9** %6, align 8
  %122 = load i32, i32* %12, align 4
  %123 = load i8, i8* %11, align 1
  %124 = trunc i8 %123 to i1
  %125 = xor i1 %124, true
  call void @203(%9* %121, i32 %122, i1 zeroext %125)
  store i32 0, i32* %5, align 4
  br label %141

; <label>:126:                                    ; preds = %114
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @fchdir(i32 %127) #8
  store i32 %128, i32* %10, align 4
  br label %129

; <label>:129:                                    ; preds = %126, %112, %93
  %130 = load i32, i32* %8, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %139

; <label>:132:                                    ; preds = %129
  %133 = call i32* @__errno_location() #14
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %12, align 4
  %136 = call i32 @close(i32 %135)
  %137 = load i32, i32* %15, align 4
  %138 = call i32* @__errno_location() #14
  store i32 %137, i32* %138, align 4
  br label %139

; <label>:139:                                    ; preds = %132, %129
  %140 = load i32, i32* %10, align 4
  store i32 %140, i32* %5, align 4
  br label %141

; <label>:141:                                    ; preds = %139, %120, %75, %41
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

; Function Attrs: noinline nounwind uwtable
define internal %10* @202(%9*, i32) #3 {
  %3 = alloca %10*, align 8
  %4 = alloca %9*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %16*, align 8
  %7 = alloca %10*, align 8
  %8 = alloca %10*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %10*, align 8
  %11 = alloca %10*, align 8
  %12 = alloca %15*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8, align 1
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  store %9* %0, %9** %4, align 8
  store i32 %1, i32* %5, align 4
  %27 = load %9*, %9** %4, align 8
  %28 = getelementptr inbounds %9, %9* %27, i32 0, i32 0
  %29 = load %10*, %10** %28, align 8
  store %10* %29, %10** %10, align 8
  %30 = load %9*, %9** %4, align 8
  %31 = getelementptr inbounds %9, %9* %30, i32 0, i32 10
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %49, label %35

; <label>:35:                                     ; preds = %2
  %36 = load %9*, %9** %4, align 8
  %37 = getelementptr inbounds %9, %9* %36, i32 0, i32 10
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, 512
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

; <label>:41:                                     ; preds = %35
  %42 = load %9*, %9** %4, align 8
  %43 = getelementptr inbounds %9, %9* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = load %10*, %10** %10, align 8
  %46 = getelementptr inbounds %10, %10* %45, i32 0, i32 5
  %47 = load i8*, i8** %46, align 8
  %48 = call %15* @210(i32 %44, i8* %47)
  br label %54

; <label>:49:                                     ; preds = %35, %2
  %50 = load %10*, %10** %10, align 8
  %51 = getelementptr inbounds %10, %10* %50, i32 0, i32 5
  %52 = load i8*, i8** %51, align 8
  %53 = call %15* @opendir_safer(i8* %52)
  br label %54

; <label>:54:                                     ; preds = %49, %41
  %55 = phi %15* [ %48, %41 ], [ %53, %49 ]
  store %15* %55, %15** %12, align 8
  %56 = icmp eq %15* %55, null
  br i1 %56, label %57, label %68

; <label>:57:                                     ; preds = %54
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, 3
  br i1 %59, label %60, label %67

; <label>:60:                                     ; preds = %57
  %61 = load %10*, %10** %10, align 8
  %62 = getelementptr inbounds %10, %10* %61, i32 0, i32 14
  store i16 4, i16* %62, align 8
  %63 = call i32* @__errno_location() #14
  %64 = load i32, i32* %63, align 4
  %65 = load %10*, %10** %10, align 8
  %66 = getelementptr inbounds %10, %10* %65, i32 0, i32 7
  store i32 %64, i32* %66, align 8
  br label %67

; <label>:67:                                     ; preds = %60, %57
  store %10* null, %10** %3, align 8
  br label %678

; <label>:68:                                     ; preds = %54
  %69 = load %10*, %10** %10, align 8
  %70 = getelementptr inbounds %10, %10* %69, i32 0, i32 14
  %71 = load i16, i16* %70, align 8
  %72 = zext i16 %71 to i32
  %73 = icmp eq i32 %72, 11
  %74 = load %9*, %9** %4, align 8
  br i1 %73, label %75, label %80

; <label>:75:                                     ; preds = %68
  %76 = load %10*, %10** %10, align 8
  %77 = call zeroext i16 @190(%9* %74, %10* %76, i1 zeroext false)
  %78 = load %10*, %10** %10, align 8
  %79 = getelementptr inbounds %10, %10* %78, i32 0, i32 14
  store i16 %77, i16* %79, align 8
  br label %96

; <label>:80:                                     ; preds = %68
  %81 = getelementptr inbounds %9, %9* %74, i32 0, i32 10
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, 256
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %96

; <label>:85:                                     ; preds = %80
  %86 = load %9*, %9** %4, align 8
  %87 = load %10*, %10** %10, align 8
  call void @200(%9* %86, %10* %87)
  %88 = load %9*, %9** %4, align 8
  %89 = load %10*, %10** %10, align 8
  %90 = call zeroext i16 @190(%9* %88, %10* %89, i1 zeroext false)
  %91 = load %9*, %9** %4, align 8
  %92 = load %10*, %10** %10, align 8
  %93 = call zeroext i1 @206(%9* %91, %10* %92)
  br i1 %93, label %96, label %94

; <label>:94:                                     ; preds = %85
  %95 = call i32* @__errno_location() #14
  store i32 12, i32* %95, align 4
  store %10* null, %10** %3, align 8
  br label %678

; <label>:96:                                     ; preds = %80, %85, %75
  %97 = load i32, i32* %5, align 4
  %98 = icmp eq i32 %97, 2
  br i1 %98, label %99, label %100

; <label>:99:                                     ; preds = %96
  store i64 0, i64* %18, align 8
  store i8 0, i8* %19, align 1
  br label %128

; <label>:100:                                    ; preds = %96
  %101 = load %9*, %9** %4, align 8
  %102 = getelementptr inbounds %9, %9* %101, i32 0, i32 10
  %103 = load i32, i32* %102, align 8
  %104 = and i32 %103, 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %127

; <label>:106:                                    ; preds = %100
  %107 = load %9*, %9** %4, align 8
  %108 = getelementptr inbounds %9, %9* %107, i32 0, i32 10
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, 16
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %127

; <label>:112:                                    ; preds = %106
  %113 = load %10*, %10** %10, align 8
  %114 = getelementptr inbounds %10, %10* %113, i32 0, i32 17
  %115 = getelementptr inbounds [1 x %8], [1 x %8]* %114, i32 0, i32 0
  %116 = getelementptr inbounds %8, %8* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load %9*, %9** %4, align 8
  %119 = getelementptr inbounds %9, %9* %118, i32 0, i32 10
  %120 = load i32, i32* %119, align 8
  %121 = and i32 %120, 32
  %122 = icmp ne i32 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i32 0, i32 2
  %125 = sext i32 %124 to i64
  %126 = sub i64 %117, %125
  store i64 %126, i64* %18, align 8
  store i8 1, i8* %19, align 1
  br label %128

; <label>:127:                                    ; preds = %106, %100
  store i64 -1, i64* %18, align 8
  store i8 0, i8* %19, align 1
  br label %128

; <label>:128:                                    ; preds = %112, %127, %99
  %129 = load i64, i64* %18, align 8
  %130 = icmp ne i64 %129, 0
  %131 = load i32, i32* %5, align 4
  %132 = icmp eq i32 %131, 3
  %or.cond = or i1 %130, %132
  br i1 %or.cond, label %133, label %188

; <label>:133:                                    ; preds = %128
  %134 = load %15*, %15** %12, align 8
  %135 = call i32 @dirfd(%15* %134) #8
  store i32 %135, i32* %24, align 4
  %136 = load %9*, %9** %4, align 8
  %137 = getelementptr inbounds %9, %9* %136, i32 0, i32 10
  %138 = load i32, i32* %137, align 8
  %139 = and i32 %138, 512
  %140 = icmp ne i32 %139, 0
  %141 = load i32, i32* %24, align 4
  %142 = icmp sle i32 0, %141
  %or.cond3 = and i1 %140, %142
  br i1 %or.cond3, label %143, label %148

; <label>:143:                                    ; preds = %133
  %144 = load i32, i32* %24, align 4
  %145 = call i32 @dup_safer(i32 %144)
  store i32 %145, i32* %24, align 4
  %146 = load i32, i32* %24, align 4
  %147 = call i32 @set_cloexec_flag(i32 %146, i1 zeroext true)
  br label %148

; <label>:148:                                    ; preds = %143, %133
  %149 = load i32, i32* %24, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %157, label %151

; <label>:151:                                    ; preds = %148
  %152 = load %9*, %9** %4, align 8
  %153 = load %10*, %10** %10, align 8
  %154 = load i32, i32* %24, align 4
  %155 = call i32 @201(%9* %152, %10* %153, i32 %154, i8* null)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %187

; <label>:157:                                    ; preds = %151, %148
  %158 = load i64, i64* %18, align 8
  %159 = icmp ne i64 %158, 0
  %160 = load i32, i32* %5, align 4
  %161 = icmp eq i32 %160, 3
  %or.cond5 = and i1 %159, %161
  br i1 %or.cond5, label %162, label %167

; <label>:162:                                    ; preds = %157
  %163 = call i32* @__errno_location() #14
  %164 = load i32, i32* %163, align 4
  %165 = load %10*, %10** %10, align 8
  %166 = getelementptr inbounds %10, %10* %165, i32 0, i32 7
  store i32 %164, i32* %166, align 8
  br label %167

; <label>:167:                                    ; preds = %162, %157
  %168 = load %10*, %10** %10, align 8
  %169 = getelementptr inbounds %10, %10* %168, i32 0, i32 15
  %170 = load i16, i16* %169, align 2
  %171 = zext i16 %170 to i32
  %172 = or i32 %171, 1
  %173 = trunc i32 %172 to i16
  store i16 %173, i16* %169, align 2
  store i8 0, i8* %15, align 1
  %174 = load %15*, %15** %12, align 8
  %175 = call i32 @closedir(%15* %174)
  %176 = load %9*, %9** %4, align 8
  %177 = getelementptr inbounds %9, %9* %176, i32 0, i32 10
  %178 = load i32, i32* %177, align 8
  %179 = and i32 %178, 512
  %180 = icmp ne i32 %179, 0
  %181 = load i32, i32* %24, align 4
  %182 = icmp sle i32 0, %181
  %or.cond7 = and i1 %180, %182
  br i1 %or.cond7, label %183, label %186

; <label>:183:                                    ; preds = %167
  %184 = load i32, i32* %24, align 4
  %185 = call i32 @close(i32 %184)
  br label %186

; <label>:186:                                    ; preds = %183, %167
  store %15* null, %15** %12, align 8
  br label %189

; <label>:187:                                    ; preds = %151
  store i8 1, i8* %15, align 1
  br label %189

; <label>:188:                                    ; preds = %128
  store i8 0, i8* %15, align 1
  br label %189

; <label>:189:                                    ; preds = %186, %187, %188
  %190 = load %10*, %10** %10, align 8
  %191 = getelementptr inbounds %10, %10* %190, i32 0, i32 6
  %192 = load i8*, i8** %191, align 8
  %193 = load %10*, %10** %10, align 8
  %194 = getelementptr inbounds %10, %10* %193, i32 0, i32 9
  %195 = load i64, i64* %194, align 8
  %196 = sub i64 %195, 1
  %197 = getelementptr inbounds i8, i8* %192, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp eq i32 %199, 47
  %201 = load %10*, %10** %10, align 8
  %202 = getelementptr inbounds %10, %10* %201, i32 0, i32 9
  %203 = load i64, i64* %202, align 8
  %204 = sub i64 %203, 1
  %205 = select i1 %200, i64 %204, i64 %203
  store i64 %205, i64* %20, align 8
  %206 = load %9*, %9** %4, align 8
  %207 = getelementptr inbounds %9, %9* %206, i32 0, i32 10
  %208 = load i32, i32* %207, align 8
  %209 = and i32 %208, 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %219

; <label>:211:                                    ; preds = %189
  %212 = load %9*, %9** %4, align 8
  %213 = getelementptr inbounds %9, %9* %212, i32 0, i32 4
  %214 = load i8*, i8** %213, align 8
  %215 = load i64, i64* %20, align 8
  %216 = getelementptr inbounds i8, i8* %214, i64 %215
  store i8* %216, i8** %23, align 8
  %217 = load i8*, i8** %23, align 8
  %218 = getelementptr inbounds i8, i8* %217, i32 1
  store i8* %218, i8** %23, align 8
  store i8 47, i8* %217, align 1
  br label %220

; <label>:219:                                    ; preds = %189
  store i8* null, i8** %23, align 8
  br label %220

; <label>:220:                                    ; preds = %219, %211
  %221 = load i64, i64* %20, align 8
  %222 = add i64 %221, 1
  store i64 %222, i64* %20, align 8
  %223 = load %9*, %9** %4, align 8
  %224 = getelementptr inbounds %9, %9* %223, i32 0, i32 7
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* %20, align 8
  %227 = sub i64 %225, %226
  store i64 %227, i64* %21, align 8
  %228 = load %10*, %10** %10, align 8
  %229 = getelementptr inbounds %10, %10* %228, i32 0, i32 11
  %230 = load i64, i64* %229, align 8
  %231 = add nsw i64 %230, 1
  store i64 %231, i64* %17, align 8
  store i8 0, i8* %16, align 1
  store %10* null, %10** %11, align 8
  store %10* null, %10** %8, align 8
  store i64 0, i64* %9, align 8
  br label %232

; <label>:232:                                    ; preds = %524, %271, %220
  %233 = load %15*, %15** %12, align 8
  %234 = icmp ne %15* %233, null
  br i1 %234, label %235, label %.critedge

; <label>:235:                                    ; preds = %232
  %236 = load %15*, %15** %12, align 8
  %237 = call %16* @readdir(%15* %236)
  store %16* %237, %16** %6, align 8
  %238 = icmp ne %16* %237, null
  br i1 %238, label %239, label %.critedge

; <label>:239:                                    ; preds = %235
  %240 = load %9*, %9** %4, align 8
  %241 = getelementptr inbounds %9, %9* %240, i32 0, i32 10
  %242 = load i32, i32* %241, align 8
  %243 = and i32 %242, 32
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %272, label %245

; <label>:245:                                    ; preds = %239
  %246 = load %16*, %16** %6, align 8
  %247 = getelementptr inbounds %16, %16* %246, i32 0, i32 4
  %248 = getelementptr inbounds [256 x i8], [256 x i8]* %247, i64 0, i64 0
  %249 = load i8, i8* %248, align 1
  %250 = sext i8 %249 to i32
  %251 = icmp eq i32 %250, 46
  br i1 %251, label %252, label %272

; <label>:252:                                    ; preds = %245
  %253 = load %16*, %16** %6, align 8
  %254 = getelementptr inbounds %16, %16* %253, i32 0, i32 4
  %255 = getelementptr inbounds [256 x i8], [256 x i8]* %254, i64 0, i64 1
  %256 = load i8, i8* %255, align 1
  %257 = icmp ne i8 %256, 0
  br i1 %257, label %258, label %271

; <label>:258:                                    ; preds = %252
  %259 = load %16*, %16** %6, align 8
  %260 = getelementptr inbounds %16, %16* %259, i32 0, i32 4
  %261 = getelementptr inbounds [256 x i8], [256 x i8]* %260, i64 0, i64 1
  %262 = load i8, i8* %261, align 1
  %263 = sext i8 %262 to i32
  %264 = icmp eq i32 %263, 46
  br i1 %264, label %265, label %272

; <label>:265:                                    ; preds = %258
  %266 = load %16*, %16** %6, align 8
  %267 = getelementptr inbounds %16, %16* %266, i32 0, i32 4
  %268 = getelementptr inbounds [256 x i8], [256 x i8]* %267, i64 0, i64 2
  %269 = load i8, i8* %268, align 1
  %270 = icmp ne i8 %269, 0
  br i1 %270, label %272, label %271

; <label>:271:                                    ; preds = %265, %252
  br label %232

; <label>:272:                                    ; preds = %265, %258, %245, %239
  %273 = load %9*, %9** %4, align 8
  %274 = load %16*, %16** %6, align 8
  %275 = getelementptr inbounds %16, %16* %274, i32 0, i32 4
  %276 = getelementptr inbounds [256 x i8], [256 x i8]* %275, i32 0, i32 0
  %277 = load %16*, %16** %6, align 8
  %278 = getelementptr inbounds %16, %16* %277, i32 0, i32 4
  %279 = getelementptr inbounds [256 x i8], [256 x i8]* %278, i32 0, i32 0
  %280 = call i64 @strlen(i8* %279) #12
  %281 = call %10* @188(%9* %273, i8* %276, i64 %280)
  store %10* %281, %10** %7, align 8
  %282 = icmp eq %10* %281, null
  br i1 %282, label %303, label %283

; <label>:283:                                    ; preds = %272
  %284 = load %16*, %16** %6, align 8
  %285 = getelementptr inbounds %16, %16* %284, i32 0, i32 4
  %286 = getelementptr inbounds [256 x i8], [256 x i8]* %285, i32 0, i32 0
  %287 = call i64 @strlen(i8* %286) #12
  %288 = load i64, i64* %21, align 8
  %289 = icmp uge i64 %287, %288
  br i1 %289, label %290, label %343

; <label>:290:                                    ; preds = %283
  %291 = load %9*, %9** %4, align 8
  %292 = getelementptr inbounds %9, %9* %291, i32 0, i32 4
  %293 = load i8*, i8** %292, align 8
  store i8* %293, i8** %13, align 8
  %294 = load %9*, %9** %4, align 8
  %295 = load %16*, %16** %6, align 8
  %296 = getelementptr inbounds %16, %16* %295, i32 0, i32 4
  %297 = getelementptr inbounds [256 x i8], [256 x i8]* %296, i32 0, i32 0
  %298 = call i64 @strlen(i8* %297) #12
  %299 = load i64, i64* %20, align 8
  %300 = add i64 %298, %299
  %301 = add i64 %300, 1
  %302 = call zeroext i1 @187(%9* %294, i64 %301)
  br i1 %302, label %319, label %303

; <label>:303:                                    ; preds = %290, %272
  %304 = call i32* @__errno_location() #14
  %305 = load i32, i32* %304, align 4
  store i32 %305, i32* %14, align 4
  %306 = load %10*, %10** %7, align 8
  %307 = bitcast %10* %306 to i8*
  call void @free(i8* %307) #8
  %308 = load %10*, %10** %8, align 8
  call void @194(%10* %308)
  %309 = load %15*, %15** %12, align 8
  %310 = call i32 @closedir(%15* %309)
  %311 = load %10*, %10** %10, align 8
  %312 = getelementptr inbounds %10, %10* %311, i32 0, i32 14
  store i16 7, i16* %312, align 8
  %313 = load %9*, %9** %4, align 8
  %314 = getelementptr inbounds %9, %9* %313, i32 0, i32 10
  %315 = load i32, i32* %314, align 8
  %316 = or i32 %315, 8192
  store i32 %316, i32* %314, align 8
  %317 = load i32, i32* %14, align 4
  %318 = call i32* @__errno_location() #14
  store i32 %317, i32* %318, align 4
  store %10* null, %10** %3, align 8
  br label %678

; <label>:319:                                    ; preds = %290
  %320 = load i8*, i8** %13, align 8
  %321 = load %9*, %9** %4, align 8
  %322 = getelementptr inbounds %9, %9* %321, i32 0, i32 4
  %323 = load i8*, i8** %322, align 8
  %324 = icmp ne i8* %320, %323
  br i1 %324, label %325, label %337

; <label>:325:                                    ; preds = %319
  store i8 1, i8* %16, align 1
  %326 = load %9*, %9** %4, align 8
  %327 = getelementptr inbounds %9, %9* %326, i32 0, i32 10
  %328 = load i32, i32* %327, align 8
  %329 = and i32 %328, 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %337

; <label>:331:                                    ; preds = %325
  %332 = load %9*, %9** %4, align 8
  %333 = getelementptr inbounds %9, %9* %332, i32 0, i32 4
  %334 = load i8*, i8** %333, align 8
  %335 = load i64, i64* %20, align 8
  %336 = getelementptr inbounds i8, i8* %334, i64 %335
  store i8* %336, i8** %23, align 8
  br label %337

; <label>:337:                                    ; preds = %325, %331, %319
  %338 = load %9*, %9** %4, align 8
  %339 = getelementptr inbounds %9, %9* %338, i32 0, i32 7
  %340 = load i64, i64* %339, align 8
  %341 = load i64, i64* %20, align 8
  %342 = sub i64 %340, %341
  store i64 %342, i64* %21, align 8
  br label %343

; <label>:343:                                    ; preds = %337, %283
  %344 = load i64, i64* %20, align 8
  %345 = load %16*, %16** %6, align 8
  %346 = getelementptr inbounds %16, %16* %345, i32 0, i32 4
  %347 = getelementptr inbounds [256 x i8], [256 x i8]* %346, i32 0, i32 0
  %348 = call i64 @strlen(i8* %347) #12
  %349 = add i64 %344, %348
  store i64 %349, i64* %22, align 8
  %350 = load i64, i64* %22, align 8
  %351 = load i64, i64* %20, align 8
  %352 = icmp ult i64 %350, %351
  br i1 %352, label %353, label %366

; <label>:353:                                    ; preds = %343
  %354 = load %10*, %10** %7, align 8
  %355 = bitcast %10* %354 to i8*
  call void @free(i8* %355) #8
  %356 = load %10*, %10** %8, align 8
  call void @194(%10* %356)
  %357 = load %15*, %15** %12, align 8
  %358 = call i32 @closedir(%15* %357)
  %359 = load %10*, %10** %10, align 8
  %360 = getelementptr inbounds %10, %10* %359, i32 0, i32 14
  store i16 7, i16* %360, align 8
  %361 = load %9*, %9** %4, align 8
  %362 = getelementptr inbounds %9, %9* %361, i32 0, i32 10
  %363 = load i32, i32* %362, align 8
  %364 = or i32 %363, 8192
  store i32 %364, i32* %362, align 8
  %365 = call i32* @__errno_location() #14
  store i32 36, i32* %365, align 4
  store %10* null, %10** %3, align 8
  br label %678

; <label>:366:                                    ; preds = %343
  %367 = load i64, i64* %17, align 8
  %368 = load %10*, %10** %7, align 8
  %369 = getelementptr inbounds %10, %10* %368, i32 0, i32 11
  store i64 %367, i64* %369, align 8
  %370 = load %9*, %9** %4, align 8
  %371 = getelementptr inbounds %9, %9* %370, i32 0, i32 0
  %372 = load %10*, %10** %371, align 8
  %373 = load %10*, %10** %7, align 8
  %374 = getelementptr inbounds %10, %10* %373, i32 0, i32 1
  store %10* %372, %10** %374, align 8
  %375 = load i64, i64* %22, align 8
  %376 = load %10*, %10** %7, align 8
  %377 = getelementptr inbounds %10, %10* %376, i32 0, i32 9
  store i64 %375, i64* %377, align 8
  %378 = load %16*, %16** %6, align 8
  %379 = getelementptr inbounds %16, %16* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = load %10*, %10** %7, align 8
  %382 = getelementptr inbounds %10, %10* %381, i32 0, i32 17
  %383 = getelementptr inbounds [1 x %8], [1 x %8]* %382, i32 0, i32 0
  %384 = getelementptr inbounds %8, %8* %383, i32 0, i32 1
  store i64 %380, i64* %384, align 8
  %385 = load %9*, %9** %4, align 8
  %386 = getelementptr inbounds %9, %9* %385, i32 0, i32 10
  %387 = load i32, i32* %386, align 8
  %388 = and i32 %387, 4
  %389 = icmp ne i32 %388, 0
  %390 = load %10*, %10** %7, align 8
  br i1 %389, label %391, label %404

; <label>:391:                                    ; preds = %366
  %392 = getelementptr inbounds %10, %10* %390, i32 0, i32 6
  %393 = load i8*, i8** %392, align 8
  %394 = load %10*, %10** %7, align 8
  %395 = getelementptr inbounds %10, %10* %394, i32 0, i32 5
  store i8* %393, i8** %395, align 8
  %396 = load i8*, i8** %23, align 8
  %397 = load %10*, %10** %7, align 8
  %398 = getelementptr inbounds %10, %10* %397, i32 0, i32 18
  %399 = getelementptr inbounds [1 x i8], [1 x i8]* %398, i32 0, i32 0
  %400 = load %10*, %10** %7, align 8
  %401 = getelementptr inbounds %10, %10* %400, i32 0, i32 12
  %402 = load i64, i64* %401, align 8
  %403 = add i64 %402, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %396, i8* %399, i64 %403, i32 1, i1 false)
  br label %409

; <label>:404:                                    ; preds = %366
  %405 = getelementptr inbounds %10, %10* %390, i32 0, i32 18
  %406 = getelementptr inbounds [1 x i8], [1 x i8]* %405, i32 0, i32 0
  %407 = load %10*, %10** %7, align 8
  %408 = getelementptr inbounds %10, %10* %407, i32 0, i32 5
  store i8* %406, i8** %408, align 8
  br label %409

; <label>:409:                                    ; preds = %404, %391
  %410 = load %9*, %9** %4, align 8
  %411 = getelementptr inbounds %9, %9* %410, i32 0, i32 9
  %412 = load i32 (%10**, %10**)*, i32 (%10**, %10**)** %411, align 8
  %413 = icmp eq i32 (%10**, %10**)* %412, null
  br i1 %413, label %420, label %414

; <label>:414:                                    ; preds = %409
  %415 = load %9*, %9** %4, align 8
  %416 = getelementptr inbounds %9, %9* %415, i32 0, i32 10
  %417 = load i32, i32* %416, align 8
  %418 = and i32 %417, 1024
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %475

; <label>:420:                                    ; preds = %414, %409
  %421 = load %9*, %9** %4, align 8
  %422 = getelementptr inbounds %9, %9* %421, i32 0, i32 10
  %423 = load i32, i32* %422, align 8
  %424 = and i32 %423, 16
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %445

; <label>:426:                                    ; preds = %420
  %427 = load %9*, %9** %4, align 8
  %428 = getelementptr inbounds %9, %9* %427, i32 0, i32 10
  %429 = load i32, i32* %428, align 8
  %430 = and i32 %429, 8
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %445

; <label>:432:                                    ; preds = %426
  %433 = load %16*, %16** %6, align 8
  %434 = getelementptr inbounds %16, %16* %433, i32 0, i32 3
  %435 = load i8, i8* %434, align 2
  %436 = zext i8 %435 to i32
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %445

; <label>:438:                                    ; preds = %432
  %439 = load %16*, %16** %6, align 8
  %440 = getelementptr inbounds %16, %16* %439, i32 0, i32 3
  %441 = load i8, i8* %440, align 2
  %442 = zext i8 %441 to i32
  %443 = icmp eq i32 %442, 4
  %444 = xor i1 %443, true
  br label %445

; <label>:445:                                    ; preds = %438, %432, %426, %420
  %446 = phi i1 [ false, %432 ], [ false, %426 ], [ false, %420 ], [ %444, %438 ]
  %447 = zext i1 %446 to i8
  store i8 %447, i8* %26, align 1
  %448 = load %10*, %10** %7, align 8
  %449 = getelementptr inbounds %10, %10* %448, i32 0, i32 14
  store i16 11, i16* %449, align 8
  %450 = load %10*, %10** %7, align 8
  %451 = getelementptr inbounds %10, %10* %450, i32 0, i32 17
  %452 = getelementptr inbounds [1 x %8], [1 x %8]* %451, i32 0, i32 0
  %453 = load %16*, %16** %6, align 8
  %454 = getelementptr inbounds %16, %16* %453, i32 0, i32 3
  %455 = load i8, i8* %454, align 2
  %456 = zext i8 %455 to i32
  call void @211(%8* %452, i32 %456)
  %457 = load %10*, %10** %7, align 8
  %458 = load i8, i8* %26, align 1
  %459 = trunc i8 %458 to i1
  %460 = xor i1 %459, true
  call void @189(%10* %457, i1 zeroext %460)
  %461 = load %9*, %9** %4, align 8
  %462 = getelementptr inbounds %9, %9* %461, i32 0, i32 10
  %463 = load i32, i32* %462, align 8
  %464 = and i32 %463, 16
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %472

; <label>:466:                                    ; preds = %445
  %467 = load %16*, %16** %6, align 8
  %468 = getelementptr inbounds %16, %16* %467, i32 0, i32 3
  %469 = load i8, i8* %468, align 2
  %470 = zext i8 %469 to i32
  %471 = icmp eq i32 %470, 4
  br label %472

; <label>:472:                                    ; preds = %466, %445
  %473 = phi i1 [ false, %445 ], [ %471, %466 ]
  %474 = zext i1 %473 to i8
  store i8 %474, i8* %25, align 1
  br label %501

; <label>:475:                                    ; preds = %414
  %476 = load %9*, %9** %4, align 8
  %477 = load %10*, %10** %7, align 8
  %478 = call zeroext i16 @190(%9* %476, %10* %477, i1 zeroext false)
  %479 = load %10*, %10** %7, align 8
  %480 = getelementptr inbounds %10, %10* %479, i32 0, i32 14
  store i16 %478, i16* %480, align 8
  %481 = load %10*, %10** %7, align 8
  %482 = getelementptr inbounds %10, %10* %481, i32 0, i32 14
  %483 = load i16, i16* %482, align 8
  %484 = zext i16 %483 to i32
  %485 = icmp eq i32 %484, 1
  br i1 %485, label %498, label %486

; <label>:486:                                    ; preds = %475
  %487 = load %10*, %10** %7, align 8
  %488 = getelementptr inbounds %10, %10* %487, i32 0, i32 14
  %489 = load i16, i16* %488, align 8
  %490 = zext i16 %489 to i32
  %491 = icmp eq i32 %490, 2
  br i1 %491, label %498, label %492

; <label>:492:                                    ; preds = %486
  %493 = load %10*, %10** %7, align 8
  %494 = getelementptr inbounds %10, %10* %493, i32 0, i32 14
  %495 = load i16, i16* %494, align 8
  %496 = zext i16 %495 to i32
  %497 = icmp eq i32 %496, 5
  br label %498

; <label>:498:                                    ; preds = %492, %486, %475
  %499 = phi i1 [ true, %486 ], [ true, %475 ], [ %497, %492 ]
  %500 = zext i1 %499 to i8
  store i8 %500, i8* %25, align 1
  br label %501

; <label>:501:                                    ; preds = %498, %472
  %502 = load i64, i64* %18, align 8
  %503 = icmp ugt i64 %502, 0
  br i1 %503, label %504, label %513

; <label>:504:                                    ; preds = %501
  %505 = load i8, i8* %25, align 1
  %506 = trunc i8 %505 to i1
  br i1 %506, label %507, label %513

; <label>:507:                                    ; preds = %504
  %508 = load i8, i8* %19, align 1
  %509 = trunc i8 %508 to i1
  %510 = zext i1 %509 to i64
  %511 = load i64, i64* %18, align 8
  %512 = sub i64 %511, %510
  store i64 %512, i64* %18, align 8
  br label %513

; <label>:513:                                    ; preds = %507, %504, %501
  %514 = load %10*, %10** %7, align 8
  %515 = getelementptr inbounds %10, %10* %514, i32 0, i32 2
  store %10* null, %10** %515, align 8
  %516 = load %10*, %10** %8, align 8
  %517 = icmp eq %10* %516, null
  %518 = load %10*, %10** %7, align 8
  br i1 %517, label %519, label %520

; <label>:519:                                    ; preds = %513
  store %10* %518, %10** %11, align 8
  store %10* %518, %10** %8, align 8
  br label %524

; <label>:520:                                    ; preds = %513
  %521 = load %10*, %10** %11, align 8
  %522 = getelementptr inbounds %10, %10* %521, i32 0, i32 2
  store %10* %518, %10** %522, align 8
  %523 = load %10*, %10** %7, align 8
  store %10* %523, %10** %11, align 8
  br label %524

; <label>:524:                                    ; preds = %520, %519
  %525 = load i64, i64* %9, align 8
  %526 = add i64 %525, 1
  store i64 %526, i64* %9, align 8
  br label %232

.critedge:                                        ; preds = %232, %235
  %527 = load %15*, %15** %12, align 8
  %528 = icmp ne %15* %527, null
  br i1 %528, label %529, label %532

; <label>:529:                                    ; preds = %.critedge
  %530 = load %15*, %15** %12, align 8
  %531 = call i32 @closedir(%15* %530)
  br label %532

; <label>:532:                                    ; preds = %529, %.critedge
  %533 = load i8, i8* %16, align 1
  %534 = trunc i8 %533 to i1
  br i1 %534, label %535, label %538

; <label>:535:                                    ; preds = %532
  %536 = load %9*, %9** %4, align 8
  %537 = load %10*, %10** %8, align 8
  call void @212(%9* %536, %10* %537)
  br label %538

; <label>:538:                                    ; preds = %535, %532
  %539 = load %9*, %9** %4, align 8
  %540 = getelementptr inbounds %9, %9* %539, i32 0, i32 10
  %541 = load i32, i32* %540, align 8
  %542 = and i32 %541, 4
  %543 = icmp ne i32 %542, 0
  br i1 %543, label %544, label %557

; <label>:544:                                    ; preds = %538
  %545 = load i64, i64* %20, align 8
  %546 = load %9*, %9** %4, align 8
  %547 = getelementptr inbounds %9, %9* %546, i32 0, i32 7
  %548 = load i64, i64* %547, align 8
  %549 = icmp eq i64 %545, %548
  %550 = load i64, i64* %9, align 8
  %551 = icmp eq i64 %550, 0
  %or.cond9 = or i1 %549, %551
  br i1 %or.cond9, label %552, label %555

; <label>:552:                                    ; preds = %544
  %553 = load i8*, i8** %23, align 8
  %554 = getelementptr inbounds i8, i8* %553, i32 -1
  store i8* %554, i8** %23, align 8
  br label %555

; <label>:555:                                    ; preds = %544, %552
  %556 = load i8*, i8** %23, align 8
  store i8 0, i8* %556, align 1
  br label %557

; <label>:557:                                    ; preds = %555, %538
  %558 = load i8, i8* %15, align 1
  %559 = trunc i8 %558 to i1
  br i1 %559, label %560, label %.critedge12

; <label>:560:                                    ; preds = %557
  %561 = load i32, i32* %5, align 4
  %562 = icmp ne i32 %561, 1
  %563 = load i64, i64* %9, align 8
  %564 = icmp ne i64 %563, 0
  %or.cond11 = and i1 %562, %564
  br i1 %or.cond11, label %.critedge12, label %565

; <label>:565:                                    ; preds = %560
  %566 = load %10*, %10** %10, align 8
  %567 = getelementptr inbounds %10, %10* %566, i32 0, i32 11
  %568 = load i64, i64* %567, align 8
  %569 = icmp eq i64 %568, 0
  %570 = load %9*, %9** %4, align 8
  br i1 %569, label %571, label %612

; <label>:571:                                    ; preds = %565
  %572 = getelementptr inbounds %9, %9* %570, i32 0, i32 13
  call void @198(%14* %572)
  %573 = load %9*, %9** %4, align 8
  %574 = getelementptr inbounds %9, %9* %573, i32 0, i32 10
  %575 = load i32, i32* %574, align 8
  %576 = and i32 %575, 4
  %577 = icmp ne i32 %576, 0
  br i1 %577, label %.critedge12, label %578

; <label>:578:                                    ; preds = %571
  %579 = load %9*, %9** %4, align 8
  %580 = getelementptr inbounds %9, %9* %579, i32 0, i32 10
  %581 = load i32, i32* %580, align 8
  %582 = and i32 %581, 512
  %583 = icmp ne i32 %582, 0
  %584 = load %9*, %9** %4, align 8
  br i1 %583, label %585, label %597

; <label>:585:                                    ; preds = %578
  %586 = load %9*, %9** %4, align 8
  %587 = getelementptr inbounds %9, %9* %586, i32 0, i32 10
  %588 = load i32, i32* %587, align 8
  %589 = and i32 %588, 512
  %590 = icmp ne i32 %589, 0
  br i1 %590, label %595, label %591

; <label>:591:                                    ; preds = %585
  %592 = load %9*, %9** %4, align 8
  %593 = getelementptr inbounds %9, %9* %592, i32 0, i32 5
  %594 = load i32, i32* %593, align 8
  br label %595

; <label>:595:                                    ; preds = %585, %591
  %596 = phi i32 [ %594, %591 ], [ -100, %585 ]
  call void @203(%9* %584, i32 %596, i1 zeroext true)
  br label %609

; <label>:597:                                    ; preds = %578
  %598 = getelementptr inbounds %9, %9* %584, i32 0, i32 10
  %599 = load i32, i32* %598, align 8
  %600 = and i32 %599, 512
  %601 = icmp ne i32 %600, 0
  br i1 %601, label %606, label %602

; <label>:602:                                    ; preds = %597
  %603 = load %9*, %9** %4, align 8
  %604 = getelementptr inbounds %9, %9* %603, i32 0, i32 5
  %605 = load i32, i32* %604, align 8
  br label %606

; <label>:606:                                    ; preds = %597, %602
  %607 = phi i32 [ %605, %602 ], [ -100, %597 ]
  %608 = call i32 @fchdir(i32 %607) #8
  br label %609

; <label>:609:                                    ; preds = %606, %595
  %610 = phi i32 [ 0, %595 ], [ %608, %606 ]
  %611 = icmp ne i32 %610, 0
  br i1 %611, label %618, label %.critedge12

; <label>:612:                                    ; preds = %565
  %613 = load %10*, %10** %10, align 8
  %614 = getelementptr inbounds %10, %10* %613, i32 0, i32 1
  %615 = load %10*, %10** %614, align 8
  %616 = call i32 @201(%9* %570, %10* %615, i32 -1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @132, i32 0, i32 0))
  %617 = icmp ne i32 %616, 0
  br i1 %617, label %618, label %.critedge12

; <label>:618:                                    ; preds = %612, %609
  %619 = load %10*, %10** %10, align 8
  %620 = getelementptr inbounds %10, %10* %619, i32 0, i32 14
  store i16 7, i16* %620, align 8
  %621 = load %9*, %9** %4, align 8
  %622 = getelementptr inbounds %9, %9* %621, i32 0, i32 10
  %623 = load i32, i32* %622, align 8
  %624 = or i32 %623, 8192
  store i32 %624, i32* %622, align 8
  %625 = load %10*, %10** %8, align 8
  call void @194(%10* %625)
  store %10* null, %10** %3, align 8
  br label %678

.critedge12:                                      ; preds = %571, %560, %612, %609, %557
  %626 = load i64, i64* %9, align 8
  %627 = icmp ne i64 %626, 0
  br i1 %627, label %636, label %628

; <label>:628:                                    ; preds = %.critedge12
  %629 = load i32, i32* %5, align 4
  %630 = icmp eq i32 %629, 3
  br i1 %630, label %631, label %634

; <label>:631:                                    ; preds = %628
  %632 = load %10*, %10** %10, align 8
  %633 = getelementptr inbounds %10, %10* %632, i32 0, i32 14
  store i16 6, i16* %633, align 8
  br label %634

; <label>:634:                                    ; preds = %631, %628
  %635 = load %10*, %10** %8, align 8
  call void @194(%10* %635)
  store %10* null, %10** %3, align 8
  br label %678

; <label>:636:                                    ; preds = %.critedge12
  %637 = load i64, i64* %9, align 8
  %638 = icmp ugt i64 %637, 10000
  br i1 %638, label %639, label %664

; <label>:639:                                    ; preds = %636
  %640 = load %9*, %9** %4, align 8
  %641 = getelementptr inbounds %9, %9* %640, i32 0, i32 9
  %642 = load i32 (%10**, %10**)*, i32 (%10**, %10**)** %641, align 8
  %643 = icmp ne i32 (%10**, %10**)* %642, null
  br i1 %643, label %664, label %644

; <label>:644:                                    ; preds = %639
  %645 = load %9*, %9** %4, align 8
  %646 = getelementptr inbounds %9, %9* %645, i32 0, i32 10
  %647 = load i32, i32* %646, align 8
  %648 = and i32 %647, 512
  %649 = icmp ne i32 %648, 0
  br i1 %649, label %650, label %664

; <label>:650:                                    ; preds = %644
  %651 = load %9*, %9** %4, align 8
  %652 = getelementptr inbounds %9, %9* %651, i32 0, i32 6
  %653 = load i32, i32* %652, align 4
  %654 = call zeroext i1 @213(i32 %653)
  br i1 %654, label %655, label %664

; <label>:655:                                    ; preds = %650
  %656 = load %9*, %9** %4, align 8
  %657 = getelementptr inbounds %9, %9* %656, i32 0, i32 9
  store i32 (%10**, %10**)* @214, i32 (%10**, %10**)** %657, align 8
  %658 = load %9*, %9** %4, align 8
  %659 = load %10*, %10** %8, align 8
  %660 = load i64, i64* %9, align 8
  %661 = call %10* @191(%9* %658, %10* %659, i64 %660)
  store %10* %661, %10** %8, align 8
  %662 = load %9*, %9** %4, align 8
  %663 = getelementptr inbounds %9, %9* %662, i32 0, i32 9
  store i32 (%10**, %10**)* null, i32 (%10**, %10**)** %663, align 8
  br label %664

; <label>:664:                                    ; preds = %655, %650, %644, %639, %636
  %665 = load %9*, %9** %4, align 8
  %666 = getelementptr inbounds %9, %9* %665, i32 0, i32 9
  %667 = load i32 (%10**, %10**)*, i32 (%10**, %10**)** %666, align 8
  %668 = icmp ne i32 (%10**, %10**)* %667, null
  %669 = load i64, i64* %9, align 8
  %670 = icmp ugt i64 %669, 1
  %or.cond14 = and i1 %668, %670
  br i1 %or.cond14, label %671, label %676

; <label>:671:                                    ; preds = %664
  %672 = load %9*, %9** %4, align 8
  %673 = load %10*, %10** %8, align 8
  %674 = load i64, i64* %9, align 8
  %675 = call %10* @191(%9* %672, %10* %673, i64 %674)
  store %10* %675, %10** %8, align 8
  br label %676

; <label>:676:                                    ; preds = %671, %664
  %677 = load %10*, %10** %8, align 8
  store %10* %677, %10** %3, align 8
  br label %678

; <label>:678:                                    ; preds = %676, %634, %618, %353, %303, %94, %67
  %679 = load %10*, %10** %3, align 8
  ret %10* %679
}

; Function Attrs: noinline nounwind uwtable
define internal void @203(%9*, i32, i1 zeroext) #3 {
  %4 = alloca %9*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %9* %0, %9** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = zext i1 %2 to i8
  store i8 %9, i8* %6, align 1
  %10 = load %9*, %9** %4, align 8
  %11 = getelementptr inbounds %9, %9* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %13, %14
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, -100
  %or.cond = or i1 %15, %17
  br i1 %or.cond, label %19, label %18

; <label>:18:                                     ; preds = %3
  call void @abort() #11
  unreachable

; <label>:19:                                     ; preds = %3
  %20 = load i8, i8* %6, align 1
  %21 = trunc i8 %20 to i1
  %22 = load %9*, %9** %4, align 8
  br i1 %21, label %23, label %32

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %9, %9* %22, i32 0, i32 13
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @i_ring_push(%14* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp sle i32 0, %27
  br i1 %28, label %29, label %42

; <label>:29:                                     ; preds = %23
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @close(i32 %30)
  br label %42

; <label>:32:                                     ; preds = %19
  %33 = getelementptr inbounds %9, %9* %22, i32 0, i32 10
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, 4
  %36 = icmp eq i32 %35, 0
  %37 = load i32, i32* %7, align 4
  %38 = icmp sle i32 0, %37
  %or.cond3 = and i1 %36, %38
  br i1 %or.cond3, label %39, label %42

; <label>:39:                                     ; preds = %32
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @close(i32 %40)
  br label %42

; <label>:42:                                     ; preds = %32, %39, %23, %29
  %43 = load i32, i32* %5, align 4
  %44 = load %9*, %9** %4, align 8
  %45 = getelementptr inbounds %9, %9* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @204(%9*, %10*) #3 {
  %3 = alloca %9*, align 8
  %4 = alloca %10*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %9* %0, %9** %3, align 8
  store %10* %1, %10** %4, align 8
  %7 = load %10*, %10** %4, align 8
  %8 = getelementptr inbounds %10, %10* %7, i32 0, i32 12
  %9 = load i64, i64* %8, align 8
  %10 = load %10*, %10** %4, align 8
  %11 = getelementptr inbounds %10, %10* %10, i32 0, i32 9
  store i64 %9, i64* %11, align 8
  store i64 %9, i64* %5, align 8
  %12 = load %9*, %9** %3, align 8
  %13 = getelementptr inbounds %9, %9* %12, i32 0, i32 4
  %14 = load i8*, i8** %13, align 8
  %15 = load %10*, %10** %4, align 8
  %16 = getelementptr inbounds %10, %10* %15, i32 0, i32 18
  %17 = getelementptr inbounds [1 x i8], [1 x i8]* %16, i32 0, i32 0
  %18 = load i64, i64* %5, align 8
  %19 = add i64 %18, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %14, i8* %17, i64 %19, i32 1, i1 false)
  %20 = load %10*, %10** %4, align 8
  %21 = getelementptr inbounds %10, %10* %20, i32 0, i32 18
  %22 = getelementptr inbounds [1 x i8], [1 x i8]* %21, i32 0, i32 0
  %23 = call i8* @strrchr(i8* %22, i32 47) #12
  store i8* %23, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %50

; <label>:25:                                     ; preds = %2
  %26 = load i8*, i8** %6, align 8
  %27 = load %10*, %10** %4, align 8
  %28 = getelementptr inbounds %10, %10* %27, i32 0, i32 18
  %29 = getelementptr inbounds [1 x i8], [1 x i8]* %28, i32 0, i32 0
  %30 = icmp ne i8* %26, %29
  br i1 %30, label %37, label %31

; <label>:31:                                     ; preds = %25
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

; <label>:37:                                     ; preds = %31, %25
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %6, align 8
  %40 = call i64 @strlen(i8* %39) #12
  store i64 %40, i64* %5, align 8
  %41 = load %10*, %10** %4, align 8
  %42 = getelementptr inbounds %10, %10* %41, i32 0, i32 18
  %43 = getelementptr inbounds [1 x i8], [1 x i8]* %42, i32 0, i32 0
  %44 = load i8*, i8** %6, align 8
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %45, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %43, i8* %44, i64 %46, i32 1, i1 false)
  %47 = load i64, i64* %5, align 8
  %48 = load %10*, %10** %4, align 8
  %49 = getelementptr inbounds %10, %10* %48, i32 0, i32 12
  store i64 %47, i64* %49, align 8
  br label %50

; <label>:50:                                     ; preds = %37, %31, %2
  %51 = load %9*, %9** %3, align 8
  %52 = getelementptr inbounds %9, %9* %51, i32 0, i32 4
  %53 = load i8*, i8** %52, align 8
  %54 = load %10*, %10** %4, align 8
  %55 = getelementptr inbounds %10, %10* %54, i32 0, i32 6
  store i8* %53, i8** %55, align 8
  %56 = load %10*, %10** %4, align 8
  %57 = getelementptr inbounds %10, %10* %56, i32 0, i32 5
  store i8* %53, i8** %57, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @205(%10*) #3 {
  %2 = alloca i1, align 1
  %3 = alloca %10*, align 8
  %4 = alloca %9*, align 8
  %5 = alloca %11*, align 8
  %6 = alloca %20, align 8
  %7 = alloca %20*, align 8
  %8 = alloca i8, align 1
  %9 = alloca %20*, align 8
  store %10* %0, %10** %3, align 8
  %10 = load %10*, %10** %3, align 8
  %11 = getelementptr inbounds %10, %10* %10, i32 0, i32 10
  %12 = load %9*, %9** %11, align 8
  store %9* %12, %9** %4, align 8
  %13 = load %9*, %9** %4, align 8
  %14 = getelementptr inbounds %9, %9* %13, i32 0, i32 11
  %15 = load %11*, %11** %14, align 8
  store %11* %15, %11** %5, align 8
  %16 = load %9*, %9** %4, align 8
  %17 = getelementptr inbounds %9, %9* %16, i32 0, i32 10
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, 512
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

; <label>:21:                                     ; preds = %1
  store i1 false, i1* %2, align 1
  br label %92

; <label>:22:                                     ; preds = %1
  %23 = load %11*, %11** %5, align 8
  %24 = icmp eq %11* %23, null
  br i1 %24, label %25, label %32

; <label>:25:                                     ; preds = %22
  %26 = call %11* @hash_initialize(i64 13, %4* null, i64 (i8*, i64)* @207, i1 (i8*, i8*)* @208, void (i8*)* @free)
  %27 = load %9*, %9** %4, align 8
  %28 = getelementptr inbounds %9, %9* %27, i32 0, i32 11
  store %11* %26, %11** %28, align 8
  store %11* %26, %11** %5, align 8
  %29 = load %11*, %11** %5, align 8
  %30 = icmp eq %11* %29, null
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %25
  store i1 false, i1* %2, align 1
  br label %92

; <label>:32:                                     ; preds = %25, %22
  %33 = load %10*, %10** %3, align 8
  %34 = getelementptr inbounds %10, %10* %33, i32 0, i32 17
  %35 = getelementptr inbounds [1 x %8], [1 x %8]* %34, i32 0, i32 0
  %36 = getelementptr inbounds %8, %8* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %20, %20* %6, i32 0, i32 0
  store i64 %37, i64* %38, align 8
  %39 = load %11*, %11** %5, align 8
  %40 = bitcast %20* %6 to i8*
  %41 = call i8* @hash_lookup(%11* %39, i8* %40)
  %42 = bitcast i8* %41 to %20*
  store %20* %42, %20** %7, align 8
  %43 = load %20*, %20** %7, align 8
  %44 = icmp ne %20* %43, null
  br i1 %44, label %45, label %50

; <label>:45:                                     ; preds = %32
  %46 = load %20*, %20** %7, align 8
  %47 = getelementptr inbounds %20, %20* %46, i32 0, i32 1
  %48 = load i8, i8* %47, align 8
  %49 = trunc i8 %48 to i1
  store i1 %49, i1* %2, align 1
  br label %92

; <label>:50:                                     ; preds = %32
  %51 = call noalias i8* @malloc(i64 16) #8
  %52 = bitcast i8* %51 to %20*
  store %20* %52, %20** %9, align 8
  %53 = load %20*, %20** %9, align 8
  %54 = icmp eq %20* %53, null
  br i1 %54, label %55, label %56

; <label>:55:                                     ; preds = %50
  store i1 false, i1* %2, align 1
  br label %92

; <label>:56:                                     ; preds = %50
  %57 = load %9*, %9** %4, align 8
  %58 = getelementptr inbounds %9, %9* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = call zeroext i1 @209(i32 %59)
  %61 = zext i1 %60 to i8
  store i8 %61, i8* %8, align 1
  %62 = load i8, i8* %8, align 1
  %63 = trunc i8 %62 to i1
  %64 = load %20*, %20** %9, align 8
  %65 = getelementptr inbounds %20, %20* %64, i32 0, i32 1
  %66 = zext i1 %63 to i8
  store i8 %66, i8* %65, align 8
  %67 = load %10*, %10** %3, align 8
  %68 = getelementptr inbounds %10, %10* %67, i32 0, i32 17
  %69 = getelementptr inbounds [1 x %8], [1 x %8]* %68, i32 0, i32 0
  %70 = getelementptr inbounds %8, %8* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %20*, %20** %9, align 8
  %73 = getelementptr inbounds %20, %20* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %11*, %11** %5, align 8
  %75 = load %20*, %20** %9, align 8
  %76 = bitcast %20* %75 to i8*
  %77 = call i8* @hash_insert(%11* %74, i8* %76)
  %78 = bitcast i8* %77 to %20*
  store %20* %78, %20** %7, align 8
  %79 = load %20*, %20** %7, align 8
  %80 = icmp eq %20* %79, null
  br i1 %80, label %81, label %84

; <label>:81:                                     ; preds = %56
  %82 = load %20*, %20** %9, align 8
  %83 = bitcast %20* %82 to i8*
  call void @free(i8* %83) #8
  store i1 false, i1* %2, align 1
  br label %92

; <label>:84:                                     ; preds = %56
  %85 = load %20*, %20** %7, align 8
  %86 = load %20*, %20** %9, align 8
  %87 = icmp eq %20* %85, %86
  br i1 %87, label %89, label %88

; <label>:88:                                     ; preds = %84
  call void @abort() #11
  unreachable

; <label>:89:                                     ; preds = %84
  %90 = load i8, i8* %8, align 1
  %91 = trunc i8 %90 to i1
  store i1 %91, i1* %2, align 1
  br label %92

; <label>:92:                                     ; preds = %89, %81, %55, %45, %31, %21
  %93 = load i1, i1* %2, align 1
  ret i1 %93
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @206(%9*, %10*) #3 {
  %3 = alloca i1, align 1
  %4 = alloca %9*, align 8
  %5 = alloca %10*, align 8
  %6 = alloca %8*, align 8
  %7 = alloca %19*, align 8
  %8 = alloca %19*, align 8
  store %9* %0, %9** %4, align 8
  store %10* %1, %10** %5, align 8
  %9 = load %9*, %9** %4, align 8
  %10 = getelementptr inbounds %9, %9* %9, i32 0, i32 10
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, 258
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %62

; <label>:14:                                     ; preds = %2
  %15 = load %10*, %10** %5, align 8
  %16 = getelementptr inbounds %10, %10* %15, i32 0, i32 17
  %17 = getelementptr inbounds [1 x %8], [1 x %8]* %16, i32 0, i32 0
  store %8* %17, %8** %6, align 8
  %18 = call noalias i8* @malloc(i64 24) #8
  %19 = bitcast i8* %18 to %19*
  store %19* %19, %19** %7, align 8
  %20 = load %19*, %19** %7, align 8
  %21 = icmp ne %19* %20, null
  br i1 %21, label %23, label %22

; <label>:22:                                     ; preds = %14
  store i1 false, i1* %3, align 1
  br label %78

; <label>:23:                                     ; preds = %14
  %24 = load %8*, %8** %6, align 8
  %25 = getelementptr inbounds %8, %8* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %19*, %19** %7, align 8
  %28 = getelementptr inbounds %19, %19* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %8*, %8** %6, align 8
  %30 = getelementptr inbounds %8, %8* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %19*, %19** %7, align 8
  %33 = getelementptr inbounds %19, %19* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load %10*, %10** %5, align 8
  %35 = load %19*, %19** %7, align 8
  %36 = getelementptr inbounds %19, %19* %35, i32 0, i32 2
  store %10* %34, %10** %36, align 8
  %37 = load %9*, %9** %4, align 8
  %38 = getelementptr inbounds %9, %9* %37, i32 0, i32 12
  %39 = bitcast %13* %38 to %11**
  %40 = load %11*, %11** %39, align 8
  %41 = load %19*, %19** %7, align 8
  %42 = bitcast %19* %41 to i8*
  %43 = call i8* @hash_insert(%11* %40, i8* %42)
  %44 = bitcast i8* %43 to %19*
  store %19* %44, %19** %8, align 8
  %45 = load %19*, %19** %8, align 8
  %46 = load %19*, %19** %7, align 8
  %47 = icmp ne %19* %45, %46
  br i1 %47, label %48, label %77

; <label>:48:                                     ; preds = %23
  %49 = load %19*, %19** %7, align 8
  %50 = bitcast %19* %49 to i8*
  call void @free(i8* %50) #8
  %51 = load %19*, %19** %8, align 8
  %52 = icmp ne %19* %51, null
  br i1 %52, label %54, label %53

; <label>:53:                                     ; preds = %48
  store i1 false, i1* %3, align 1
  br label %78

; <label>:54:                                     ; preds = %48
  %55 = load %19*, %19** %8, align 8
  %56 = getelementptr inbounds %19, %19* %55, i32 0, i32 2
  %57 = load %10*, %10** %56, align 8
  %58 = load %10*, %10** %5, align 8
  %59 = getelementptr inbounds %10, %10* %58, i32 0, i32 0
  store %10* %57, %10** %59, align 8
  %60 = load %10*, %10** %5, align 8
  %61 = getelementptr inbounds %10, %10* %60, i32 0, i32 14
  store i16 2, i16* %61, align 8
  br label %77

; <label>:62:                                     ; preds = %2
  %63 = load %9*, %9** %4, align 8
  %64 = getelementptr inbounds %9, %9* %63, i32 0, i32 12
  %65 = bitcast %13* %64 to %18**
  %66 = load %18*, %18** %65, align 8
  %67 = load %10*, %10** %5, align 8
  %68 = getelementptr inbounds %10, %10* %67, i32 0, i32 17
  %69 = getelementptr inbounds [1 x %8], [1 x %8]* %68, i32 0, i32 0
  %70 = call zeroext i1 @cycle_check(%18* %66, %8* %69)
  br i1 %70, label %71, label %77

; <label>:71:                                     ; preds = %62
  %72 = load %10*, %10** %5, align 8
  %73 = load %10*, %10** %5, align 8
  %74 = getelementptr inbounds %10, %10* %73, i32 0, i32 0
  store %10* %72, %10** %74, align 8
  %75 = load %10*, %10** %5, align 8
  %76 = getelementptr inbounds %10, %10* %75, i32 0, i32 14
  store i16 2, i16* %76, align 8
  br label %77

; <label>:77:                                     ; preds = %62, %71, %23, %54
  store i1 true, i1* %3, align 1
  br label %78

; <label>:78:                                     ; preds = %77, %53, %22
  %79 = load i1, i1* %3, align 1
  ret i1 %79
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @207(i8*, i64) #3 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %20*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %20*
  store %20* %7, %20** %5, align 8
  %8 = load %20*, %20** %5, align 8
  %9 = getelementptr inbounds %20, %20* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = urem i64 %10, %11
  ret i64 %12
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @208(i8*, i8*) #3 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %20*, align 8
  %6 = alloca %20*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %20*
  store %20* %8, %20** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %20*
  store %20* %10, %20** %6, align 8
  %11 = load %20*, %20** %5, align 8
  %12 = getelementptr inbounds %20, %20* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %20*, %20** %6, align 8
  %15 = getelementptr inbounds %20, %20* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  ret i1 %17
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @209(i32) #3 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca %21, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @fstatfs(i32 %5, %21* %4) #8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  store i1 false, i1* %2, align 1
  br label %14

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %21, %21* %4, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %cond = icmp eq i64 %11, 1382369651
  br i1 %cond, label %12, label %13

; <label>:12:                                     ; preds = %9
  store i1 true, i1* %2, align 1
  br label %14

; <label>:13:                                     ; preds = %9
  store i1 false, i1* %2, align 1
  br label %14

; <label>:14:                                     ; preds = %13, %12, %8
  %15 = load i1, i1* %2, align 1
  ret i1 %15
}

; Function Attrs: nounwind
declare i32 @fstatfs(i32, %21*) #5

; Function Attrs: noinline nounwind uwtable
define internal %15* @210(i32, i8*) #3 {
  %3 = alloca %15*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %15*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 (i32, i8*, i32, ...) @openat_safer(i32 %9, i8* %10, i32 67840)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %2
  store %15* null, %15** %3, align 8
  br label %31

; <label>:15:                                     ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @set_cloexec_flag(i32 %16, i1 zeroext true)
  %18 = load i32, i32* %6, align 4
  %19 = call %15* @fdopendir(i32 %18)
  store %15* %19, %15** %7, align 8
  %20 = load %15*, %15** %7, align 8
  %21 = icmp eq %15* %20, null
  br i1 %21, label %22, label %29

; <label>:22:                                     ; preds = %15
  %23 = call i32* @__errno_location() #14
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @close(i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = call i32* @__errno_location() #14
  store i32 %27, i32* %28, align 4
  br label %29

; <label>:29:                                     ; preds = %22, %15
  %30 = load %15*, %15** %7, align 8
  store %15* %30, %15** %3, align 8
  br label %31

; <label>:31:                                     ; preds = %29, %14
  %32 = load %15*, %15** %3, align 8
  ret %15* %32
}

; Function Attrs: nounwind
declare i32 @dirfd(%15*) #5

; Function Attrs: noinline nounwind uwtable
define internal void @211(%8*, i32) #3 {
  %3 = alloca %8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %8* %0, %8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %14 [
    i32 6, label %7
    i32 2, label %8
    i32 4, label %9
    i32 1, label %10
    i32 10, label %11
    i32 8, label %12
    i32 12, label %13
  ]

; <label>:7:                                      ; preds = %2
  store i32 24576, i32* %5, align 4
  br label %15

; <label>:8:                                      ; preds = %2
  store i32 8192, i32* %5, align 4
  br label %15

; <label>:9:                                      ; preds = %2
  store i32 16384, i32* %5, align 4
  br label %15

; <label>:10:                                     ; preds = %2
  store i32 4096, i32* %5, align 4
  br label %15

; <label>:11:                                     ; preds = %2
  store i32 40960, i32* %5, align 4
  br label %15

; <label>:12:                                     ; preds = %2
  store i32 32768, i32* %5, align 4
  br label %15

; <label>:13:                                     ; preds = %2
  store i32 49152, i32* %5, align 4
  br label %15

; <label>:14:                                     ; preds = %2
  store i32 0, i32* %5, align 4
  br label %15

; <label>:15:                                     ; preds = %14, %13, %12, %11, %10, %9, %8, %7
  %16 = load i32, i32* %5, align 4
  %17 = load %8*, %8** %3, align 8
  %18 = getelementptr inbounds %8, %8* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @212(%9*, %10*) #3 {
  %3 = alloca %9*, align 8
  %4 = alloca %10*, align 8
  %5 = alloca %10*, align 8
  %6 = alloca i8*, align 8
  store %9* %0, %9** %3, align 8
  store %10* %1, %10** %4, align 8
  %7 = load %9*, %9** %3, align 8
  %8 = getelementptr inbounds %9, %9* %7, i32 0, i32 4
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %6, align 8
  %10 = load %9*, %9** %3, align 8
  %11 = getelementptr inbounds %9, %9* %10, i32 0, i32 1
  %12 = load %10*, %10** %11, align 8
  store %10* %12, %10** %5, align 8
  br label %13

; <label>:13:                                     ; preds = %38, %2
  %14 = load %10*, %10** %5, align 8
  %15 = icmp ne %10* %14, null
  br i1 %15, label %16, label %45

; <label>:16:                                     ; preds = %13
  %17 = load %10*, %10** %5, align 8
  %18 = getelementptr inbounds %10, %10* %17, i32 0, i32 5
  %19 = load i8*, i8** %18, align 8
  %20 = load %10*, %10** %5, align 8
  %21 = getelementptr inbounds %10, %10* %20, i32 0, i32 18
  %22 = getelementptr inbounds [1 x i8], [1 x i8]* %21, i32 0, i32 0
  %23 = icmp ne i8* %19, %22
  br i1 %23, label %24, label %38

; <label>:24:                                     ; preds = %16
  %25 = load i8*, i8** %6, align 8
  %26 = load %10*, %10** %5, align 8
  %27 = getelementptr inbounds %10, %10* %26, i32 0, i32 5
  %28 = load i8*, i8** %27, align 8
  %29 = load %10*, %10** %5, align 8
  %30 = getelementptr inbounds %10, %10* %29, i32 0, i32 6
  %31 = load i8*, i8** %30, align 8
  %32 = ptrtoint i8* %28 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  %35 = getelementptr inbounds i8, i8* %25, i64 %34
  %36 = load %10*, %10** %5, align 8
  %37 = getelementptr inbounds %10, %10* %36, i32 0, i32 5
  store i8* %35, i8** %37, align 8
  br label %38

; <label>:38:                                     ; preds = %24, %16
  %39 = load i8*, i8** %6, align 8
  %40 = load %10*, %10** %5, align 8
  %41 = getelementptr inbounds %10, %10* %40, i32 0, i32 6
  store i8* %39, i8** %41, align 8
  %42 = load %10*, %10** %5, align 8
  %43 = getelementptr inbounds %10, %10* %42, i32 0, i32 2
  %44 = load %10*, %10** %43, align 8
  store %10* %44, %10** %5, align 8
  br label %13

; <label>:45:                                     ; preds = %13
  %46 = load %10*, %10** %4, align 8
  store %10* %46, %10** %5, align 8
  br label %47

; <label>:47:                                     ; preds = %89, %45
  %48 = load %10*, %10** %5, align 8
  %49 = getelementptr inbounds %10, %10* %48, i32 0, i32 11
  %50 = load i64, i64* %49, align 8
  %51 = icmp sge i64 %50, 0
  br i1 %51, label %52, label %91

; <label>:52:                                     ; preds = %47
  %53 = load %10*, %10** %5, align 8
  %54 = getelementptr inbounds %10, %10* %53, i32 0, i32 5
  %55 = load i8*, i8** %54, align 8
  %56 = load %10*, %10** %5, align 8
  %57 = getelementptr inbounds %10, %10* %56, i32 0, i32 18
  %58 = getelementptr inbounds [1 x i8], [1 x i8]* %57, i32 0, i32 0
  %59 = icmp ne i8* %55, %58
  br i1 %59, label %60, label %74

; <label>:60:                                     ; preds = %52
  %61 = load i8*, i8** %6, align 8
  %62 = load %10*, %10** %5, align 8
  %63 = getelementptr inbounds %10, %10* %62, i32 0, i32 5
  %64 = load i8*, i8** %63, align 8
  %65 = load %10*, %10** %5, align 8
  %66 = getelementptr inbounds %10, %10* %65, i32 0, i32 6
  %67 = load i8*, i8** %66, align 8
  %68 = ptrtoint i8* %64 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = getelementptr inbounds i8, i8* %61, i64 %70
  %72 = load %10*, %10** %5, align 8
  %73 = getelementptr inbounds %10, %10* %72, i32 0, i32 5
  store i8* %71, i8** %73, align 8
  br label %74

; <label>:74:                                     ; preds = %60, %52
  %75 = load i8*, i8** %6, align 8
  %76 = load %10*, %10** %5, align 8
  %77 = getelementptr inbounds %10, %10* %76, i32 0, i32 6
  store i8* %75, i8** %77, align 8
  %78 = load %10*, %10** %5, align 8
  %79 = getelementptr inbounds %10, %10* %78, i32 0, i32 2
  %80 = load %10*, %10** %79, align 8
  %81 = icmp ne %10* %80, null
  %82 = load %10*, %10** %5, align 8
  br i1 %81, label %83, label %86

; <label>:83:                                     ; preds = %74
  %84 = getelementptr inbounds %10, %10* %82, i32 0, i32 2
  %85 = load %10*, %10** %84, align 8
  br label %89

; <label>:86:                                     ; preds = %74
  %87 = getelementptr inbounds %10, %10* %82, i32 0, i32 1
  %88 = load %10*, %10** %87, align 8
  br label %89

; <label>:89:                                     ; preds = %86, %83
  %90 = phi %10* [ %85, %83 ], [ %88, %86 ]
  store %10* %90, %10** %5, align 8
  br label %47

; <label>:91:                                     ; preds = %47
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @213(i32) #3 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca %21, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @fstatfs(i32 %5, %21* %4) #8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  store i1 true, i1* %2, align 1
  br label %14

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %21, %21* %4, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  switch i64 %11, label %13 [
    i64 16914836, label %12
    i64 26985, label %12
  ]

; <label>:12:                                     ; preds = %9, %9
  store i1 false, i1* %2, align 1
  br label %14

; <label>:13:                                     ; preds = %9
  store i1 true, i1* %2, align 1
  br label %14

; <label>:14:                                     ; preds = %13, %12, %8
  %15 = load i1, i1* %2, align 1
  ret i1 %15
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @214(%10**, %10**) #3 {
  %3 = alloca %10**, align 8
  %4 = alloca %10**, align 8
  store %10** %0, %10*** %3, align 8
  store %10** %1, %10*** %4, align 8
  %5 = load %10**, %10*** %3, align 8
  %6 = getelementptr inbounds %10*, %10** %5, i64 0
  %7 = load %10*, %10** %6, align 8
  %8 = getelementptr inbounds %10, %10* %7, i32 0, i32 17
  %9 = getelementptr inbounds [1 x %8], [1 x %8]* %8, i32 0, i32 0
  %10 = getelementptr inbounds %8, %8* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load %10**, %10*** %4, align 8
  %13 = getelementptr inbounds %10*, %10** %12, i64 0
  %14 = load %10*, %10** %13, align 8
  %15 = getelementptr inbounds %10, %10* %14, i32 0, i32 17
  %16 = getelementptr inbounds [1 x %8], [1 x %8]* %15, i32 0, i32 0
  %17 = getelementptr inbounds %8, %8* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %11, %18
  br i1 %19, label %38, label %20

; <label>:20:                                     ; preds = %2
  %21 = load %10**, %10*** %4, align 8
  %22 = getelementptr inbounds %10*, %10** %21, i64 0
  %23 = load %10*, %10** %22, align 8
  %24 = getelementptr inbounds %10, %10* %23, i32 0, i32 17
  %25 = getelementptr inbounds [1 x %8], [1 x %8]* %24, i32 0, i32 0
  %26 = getelementptr inbounds %8, %8* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %10**, %10*** %3, align 8
  %29 = getelementptr inbounds %10*, %10** %28, i64 0
  %30 = load %10*, %10** %29, align 8
  %31 = getelementptr inbounds %10, %10* %30, i32 0, i32 17
  %32 = getelementptr inbounds [1 x %8], [1 x %8]* %31, i32 0, i32 0
  %33 = getelementptr inbounds %8, %8* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %27, %34
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 0
  br label %38

; <label>:38:                                     ; preds = %2, %20
  %39 = phi i32 [ %37, %20 ], [ -1, %2 ]
  ret i32 %39
}

; Function Attrs: nounwind
declare i32 @fstat(i32, %8*) #5

; Function Attrs: noinline nounwind uwtable
define i32 @fts_set(%9*, %10*, i32) #3 {
  %4 = alloca i32, align 4
  %5 = alloca %9*, align 8
  %6 = alloca %10*, align 8
  %7 = alloca i32, align 4
  store %9* %0, %9** %5, align 8
  store %10* %1, %10** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 1
  %or.cond = and i1 %9, %11
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 2
  %or.cond3 = and i1 %or.cond, %13
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 3
  %or.cond5 = and i1 %or.cond3, %15
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 4
  %or.cond7 = and i1 %or.cond5, %17
  br i1 %or.cond7, label %18, label %20

; <label>:18:                                     ; preds = %3
  %19 = call i32* @__errno_location() #14
  store i32 22, i32* %19, align 4
  store i32 1, i32* %4, align 4
  br label %25

; <label>:20:                                     ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = trunc i32 %21 to i16
  %23 = load %10*, %10** %6, align 8
  %24 = getelementptr inbounds %10, %10* %23, i32 0, i32 16
  store i16 %22, i16* %24, align 4
  store i32 0, i32* %4, align 4
  br label %25

; <label>:25:                                     ; preds = %20, %18
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define %10* @fts_children(%9*, i32) #3 {
  %3 = alloca %10*, align 8
  %4 = alloca %9*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %10*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %9* %0, %9** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 4096
  %or.cond = and i1 %10, %12
  br i1 %or.cond, label %13, label %15

; <label>:13:                                     ; preds = %2
  %14 = call i32* @__errno_location() #14
  store i32 22, i32* %14, align 4
  store %10* null, %10** %3, align 8
  br label %123

; <label>:15:                                     ; preds = %2
  %16 = load %9*, %9** %4, align 8
  %17 = getelementptr inbounds %9, %9* %16, i32 0, i32 0
  %18 = load %10*, %10** %17, align 8
  store %10* %18, %10** %6, align 8
  %19 = call i32* @__errno_location() #14
  store i32 0, i32* %19, align 4
  %20 = load %9*, %9** %4, align 8
  %21 = getelementptr inbounds %9, %9* %20, i32 0, i32 10
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, 8192
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %15
  store %10* null, %10** %3, align 8
  br label %123

; <label>:26:                                     ; preds = %15
  %27 = load %10*, %10** %6, align 8
  %28 = getelementptr inbounds %10, %10* %27, i32 0, i32 14
  %29 = load i16, i16* %28, align 8
  %30 = zext i16 %29 to i32
  %31 = icmp eq i32 %30, 9
  %32 = load %10*, %10** %6, align 8
  br i1 %31, label %33, label %36

; <label>:33:                                     ; preds = %26
  %34 = getelementptr inbounds %10, %10* %32, i32 0, i32 2
  %35 = load %10*, %10** %34, align 8
  store %10* %35, %10** %3, align 8
  br label %123

; <label>:36:                                     ; preds = %26
  %37 = getelementptr inbounds %10, %10* %32, i32 0, i32 14
  %38 = load i16, i16* %37, align 8
  %39 = zext i16 %38 to i32
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %36
  store %10* null, %10** %3, align 8
  br label %123

; <label>:42:                                     ; preds = %36
  %43 = load %9*, %9** %4, align 8
  %44 = getelementptr inbounds %9, %9* %43, i32 0, i32 1
  %45 = load %10*, %10** %44, align 8
  %46 = icmp ne %10* %45, null
  br i1 %46, label %47, label %51

; <label>:47:                                     ; preds = %42
  %48 = load %9*, %9** %4, align 8
  %49 = getelementptr inbounds %9, %9* %48, i32 0, i32 1
  %50 = load %10*, %10** %49, align 8
  call void @194(%10* %50)
  br label %51

; <label>:51:                                     ; preds = %47, %42
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 4096
  br i1 %53, label %54, label %59

; <label>:54:                                     ; preds = %51
  %55 = load %9*, %9** %4, align 8
  %56 = getelementptr inbounds %9, %9* %55, i32 0, i32 10
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, 4096
  store i32 %58, i32* %56, align 8
  store i32 2, i32* %5, align 4
  br label %60

; <label>:59:                                     ; preds = %51
  store i32 1, i32* %5, align 4
  br label %60

; <label>:60:                                     ; preds = %59, %54
  %61 = load %10*, %10** %6, align 8
  %62 = getelementptr inbounds %10, %10* %61, i32 0, i32 11
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %79, label %65

; <label>:65:                                     ; preds = %60
  %66 = load %10*, %10** %6, align 8
  %67 = getelementptr inbounds %10, %10* %66, i32 0, i32 5
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 47
  br i1 %72, label %79, label %73

; <label>:73:                                     ; preds = %65
  %74 = load %9*, %9** %4, align 8
  %75 = getelementptr inbounds %9, %9* %74, i32 0, i32 10
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

; <label>:79:                                     ; preds = %73, %65, %60
  %80 = load %9*, %9** %4, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call %10* @202(%9* %80, i32 %81)
  %83 = load %9*, %9** %4, align 8
  %84 = getelementptr inbounds %9, %9* %83, i32 0, i32 1
  store %10* %82, %10** %84, align 8
  store %10* %82, %10** %3, align 8
  br label %123

; <label>:85:                                     ; preds = %73
  %86 = load %9*, %9** %4, align 8
  %87 = call i32 @193(%9* %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @130, i32 0, i32 0))
  store i32 %87, i32* %7, align 4
  %88 = icmp slt i32 %87, 0
  %89 = load %9*, %9** %4, align 8
  br i1 %88, label %90, label %92

; <label>:90:                                     ; preds = %85
  %91 = getelementptr inbounds %9, %9* %89, i32 0, i32 1
  store %10* null, %10** %91, align 8
  store %10* null, %10** %3, align 8
  br label %123

; <label>:92:                                     ; preds = %85
  %93 = load i32, i32* %5, align 4
  %94 = call %10* @202(%9* %89, i32 %93)
  %95 = load %9*, %9** %4, align 8
  %96 = getelementptr inbounds %9, %9* %95, i32 0, i32 1
  store %10* %94, %10** %96, align 8
  %97 = load %9*, %9** %4, align 8
  %98 = getelementptr inbounds %9, %9* %97, i32 0, i32 10
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, 512
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

; <label>:102:                                    ; preds = %92
  %103 = load %9*, %9** %4, align 8
  %104 = load i32, i32* %7, align 4
  call void @203(%9* %103, i32 %104, i1 zeroext true)
  br label %119

; <label>:105:                                    ; preds = %92
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @fchdir(i32 %106) #8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

; <label>:109:                                    ; preds = %105
  %110 = call i32* @__errno_location() #14
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @close(i32 %112)
  %114 = load i32, i32* %8, align 4
  %115 = call i32* @__errno_location() #14
  store i32 %114, i32* %115, align 4
  store %10* null, %10** %3, align 8
  br label %123

; <label>:116:                                    ; preds = %105
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @close(i32 %117)
  br label %119

; <label>:119:                                    ; preds = %116, %102
  %120 = load %9*, %9** %4, align 8
  %121 = getelementptr inbounds %9, %9* %120, i32 0, i32 1
  %122 = load %10*, %10** %121, align 8
  store %10* %122, %10** %3, align 8
  br label %123

; <label>:123:                                    ; preds = %119, %109, %90, %79, %41, %33, %25, %13
  %124 = load %10*, %10** %3, align 8
  ret %10* %124
}

; Function Attrs: noinline nounwind uwtable
define i64 @hash_get_n_buckets(%11*) #3 {
  %2 = alloca %11*, align 8
  store %11* %0, %11** %2, align 8
  %3 = load %11*, %11** %2, align 8
  %4 = getelementptr inbounds %11, %11* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: noinline nounwind uwtable
define i64 @hash_get_n_buckets_used(%11*) #3 {
  %2 = alloca %11*, align 8
  store %11* %0, %11** %2, align 8
  %3 = load %11*, %11** %2, align 8
  %4 = getelementptr inbounds %11, %11* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: noinline nounwind uwtable
define i64 @hash_get_n_entries(%11*) #3 {
  %2 = alloca %11*, align 8
  store %11* %0, %11** %2, align 8
  %3 = load %11*, %11** %2, align 8
  %4 = getelementptr inbounds %11, %11* %3, i32 0, i32 4
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: noinline nounwind uwtable
define i64 @hash_get_max_bucket_length(%11*) #3 {
  %2 = alloca %11*, align 8
  %3 = alloca %12*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %12*, align 8
  %6 = alloca i64, align 8
  store %11* %0, %11** %2, align 8
  store i64 0, i64* %4, align 8
  %7 = load %11*, %11** %2, align 8
  %8 = getelementptr inbounds %11, %11* %7, i32 0, i32 0
  %9 = load %12*, %12** %8, align 8
  store %12* %9, %12** %3, align 8
  br label %10

; <label>:10:                                     ; preds = %37, %1
  %11 = load %12*, %12** %3, align 8
  %12 = load %11*, %11** %2, align 8
  %13 = getelementptr inbounds %11, %11* %12, i32 0, i32 1
  %14 = load %12*, %12** %13, align 8
  %15 = icmp ult %12* %11, %14
  br i1 %15, label %16, label %40

; <label>:16:                                     ; preds = %10
  %17 = load %12*, %12** %3, align 8
  %18 = getelementptr inbounds %12, %12* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %37

; <label>:21:                                     ; preds = %16
  %22 = load %12*, %12** %3, align 8
  store %12* %22, %12** %5, align 8
  store i64 1, i64* %6, align 8
  br label %23

; <label>:23:                                     ; preds = %30, %21
  %24 = load %12*, %12** %5, align 8
  %25 = getelementptr inbounds %12, %12* %24, i32 0, i32 1
  %26 = load %12*, %12** %25, align 8
  store %12* %26, %12** %5, align 8
  %27 = load %12*, %12** %5, align 8
  %28 = icmp ne %12* %27, null
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
  %38 = load %12*, %12** %3, align 8
  %39 = getelementptr inbounds %12, %12* %38, i32 1
  store %12* %39, %12** %3, align 8
  br label %10

; <label>:40:                                     ; preds = %10
  %41 = load i64, i64* %4, align 8
  ret i64 %41
}

; Function Attrs: noinline nounwind uwtable
define zeroext i1 @hash_table_ok(%11*) #3 {
  %2 = alloca i1, align 1
  %3 = alloca %11*, align 8
  %4 = alloca %12*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %12*, align 8
  store %11* %0, %11** %3, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %8 = load %11*, %11** %3, align 8
  %9 = getelementptr inbounds %11, %11* %8, i32 0, i32 0
  %10 = load %12*, %12** %9, align 8
  store %12* %10, %12** %4, align 8
  br label %11

; <label>:11:                                     ; preds = %37, %1
  %12 = load %12*, %12** %4, align 8
  %13 = load %11*, %11** %3, align 8
  %14 = getelementptr inbounds %11, %11* %13, i32 0, i32 1
  %15 = load %12*, %12** %14, align 8
  %16 = icmp ult %12* %12, %15
  br i1 %16, label %17, label %40

; <label>:17:                                     ; preds = %11
  %18 = load %12*, %12** %4, align 8
  %19 = getelementptr inbounds %12, %12* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %37

; <label>:22:                                     ; preds = %17
  %23 = load %12*, %12** %4, align 8
  store %12* %23, %12** %7, align 8
  %24 = load i64, i64* %5, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %6, align 8
  br label %28

; <label>:28:                                     ; preds = %34, %22
  %29 = load %12*, %12** %7, align 8
  %30 = getelementptr inbounds %12, %12* %29, i32 0, i32 1
  %31 = load %12*, %12** %30, align 8
  store %12* %31, %12** %7, align 8
  %32 = load %12*, %12** %7, align 8
  %33 = icmp ne %12* %32, null
  br i1 %33, label %34, label %37

; <label>:34:                                     ; preds = %28
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %6, align 8
  br label %28

; <label>:37:                                     ; preds = %17, %28
  %38 = load %12*, %12** %4, align 8
  %39 = getelementptr inbounds %12, %12* %38, i32 1
  store %12* %39, %12** %4, align 8
  br label %11

; <label>:40:                                     ; preds = %11
  %41 = load i64, i64* %5, align 8
  %42 = load %11*, %11** %3, align 8
  %43 = getelementptr inbounds %11, %11* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %53

; <label>:46:                                     ; preds = %40
  %47 = load i64, i64* %6, align 8
  %48 = load %11*, %11** %3, align 8
  %49 = getelementptr inbounds %11, %11* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %46
  store i1 true, i1* %2, align 1
  br label %54

; <label>:53:                                     ; preds = %46, %40
  store i1 false, i1* %2, align 1
  br label %54

; <label>:54:                                     ; preds = %53, %52
  %55 = load i1, i1* %2, align 1
  ret i1 %55
}

; Function Attrs: noinline nounwind uwtable
define void @hash_print_statistics(%11*, %0*) #3 {
  %3 = alloca %11*, align 8
  %4 = alloca %0*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %11* %0, %11** %3, align 8
  store %0* %1, %0** %4, align 8
  %9 = load %11*, %11** %3, align 8
  %10 = call i64 @hash_get_n_entries(%11* %9)
  store i64 %10, i64* %5, align 8
  %11 = load %11*, %11** %3, align 8
  %12 = call i64 @hash_get_n_buckets(%11* %11)
  store i64 %12, i64* %6, align 8
  %13 = load %11*, %11** %3, align 8
  %14 = call i64 @hash_get_n_buckets_used(%11* %13)
  store i64 %14, i64* %7, align 8
  %15 = load %11*, %11** %3, align 8
  %16 = call i64 @hash_get_max_bucket_length(%11* %15)
  store i64 %16, i64* %8, align 8
  %17 = load %0*, %0** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i32 (%0*, i8*, ...) @fprintf(%0* %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @133, i32 0, i32 0), i64 %18)
  %20 = load %0*, %0** %4, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 (%0*, i8*, ...) @fprintf(%0* %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @134, i32 0, i32 0), i64 %21)
  %23 = load %0*, %0** %4, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = uitofp i64 %25 to double
  %27 = fmul double 1.000000e+02, %26
  %28 = load i64, i64* %6, align 8
  %29 = uitofp i64 %28 to double
  %30 = fdiv double %27, %29
  %31 = call i32 (%0*, i8*, ...) @fprintf(%0* %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @135, i32 0, i32 0), i64 %24, double %30)
  %32 = load %0*, %0** %4, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 (%0*, i8*, ...) @fprintf(%0* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @136, i32 0, i32 0), i64 %33)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i8* @hash_lookup(%11*, i8*) #3 {
  %3 = alloca i8*, align 8
  %4 = alloca %11*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %12*, align 8
  %7 = alloca %12*, align 8
  store %11* %0, %11** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %11*, %11** %4, align 8
  %9 = getelementptr inbounds %11, %11* %8, i32 0, i32 0
  %10 = load %12*, %12** %9, align 8
  %11 = load %11*, %11** %4, align 8
  %12 = getelementptr inbounds %11, %11* %11, i32 0, i32 6
  %13 = load i64 (i8*, i64)*, i64 (i8*, i64)** %12, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load %11*, %11** %4, align 8
  %16 = getelementptr inbounds %11, %11* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = call i64 %13(i8* %14, i64 %17)
  %19 = getelementptr inbounds %12, %12* %10, i64 %18
  store %12* %19, %12** %6, align 8
  %20 = load %12*, %12** %6, align 8
  %21 = load %11*, %11** %4, align 8
  %22 = getelementptr inbounds %11, %11* %21, i32 0, i32 1
  %23 = load %12*, %12** %22, align 8
  %24 = icmp ult %12* %20, %23
  br i1 %24, label %26, label %25

; <label>:25:                                     ; preds = %2
  call void @abort() #11
  unreachable

; <label>:26:                                     ; preds = %2
  %27 = load %12*, %12** %6, align 8
  %28 = getelementptr inbounds %12, %12* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %26
  store i8* null, i8** %3, align 8
  br label %61

; <label>:32:                                     ; preds = %26
  %33 = load %12*, %12** %6, align 8
  store %12* %33, %12** %7, align 8
  br label %34

; <label>:34:                                     ; preds = %56, %32
  %35 = load %12*, %12** %7, align 8
  %36 = icmp ne %12* %35, null
  br i1 %36, label %37, label %60

; <label>:37:                                     ; preds = %34
  %38 = load i8*, i8** %5, align 8
  %39 = load %12*, %12** %7, align 8
  %40 = getelementptr inbounds %12, %12* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = icmp eq i8* %38, %41
  br i1 %42, label %52, label %43

; <label>:43:                                     ; preds = %37
  %44 = load %11*, %11** %4, align 8
  %45 = getelementptr inbounds %11, %11* %44, i32 0, i32 7
  %46 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %45, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load %12*, %12** %7, align 8
  %49 = getelementptr inbounds %12, %12* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call zeroext i1 %46(i8* %47, i8* %50)
  br i1 %51, label %52, label %56

; <label>:52:                                     ; preds = %43, %37
  %53 = load %12*, %12** %7, align 8
  %54 = getelementptr inbounds %12, %12* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %3, align 8
  br label %61

; <label>:56:                                     ; preds = %43
  %57 = load %12*, %12** %7, align 8
  %58 = getelementptr inbounds %12, %12* %57, i32 0, i32 1
  %59 = load %12*, %12** %58, align 8
  store %12* %59, %12** %7, align 8
  br label %34

; <label>:60:                                     ; preds = %34
  store i8* null, i8** %3, align 8
  br label %61

; <label>:61:                                     ; preds = %60, %52, %31
  %62 = load i8*, i8** %3, align 8
  ret i8* %62
}

; Function Attrs: noinline nounwind uwtable
define i8* @hash_get_first(%11*) #3 {
  %2 = alloca i8*, align 8
  %3 = alloca %11*, align 8
  %4 = alloca %12*, align 8
  store %11* %0, %11** %3, align 8
  %5 = load %11*, %11** %3, align 8
  %6 = getelementptr inbounds %11, %11* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %1
  store i8* null, i8** %2, align 8
  br label %32

; <label>:10:                                     ; preds = %1
  %11 = load %11*, %11** %3, align 8
  %12 = getelementptr inbounds %11, %11* %11, i32 0, i32 0
  %13 = load %12*, %12** %12, align 8
  store %12* %13, %12** %4, align 8
  br label %14

; <label>:14:                                     ; preds = %30, %10
  %15 = load %12*, %12** %4, align 8
  %16 = load %11*, %11** %3, align 8
  %17 = getelementptr inbounds %11, %11* %16, i32 0, i32 1
  %18 = load %12*, %12** %17, align 8
  %19 = icmp ult %12* %15, %18
  br i1 %19, label %21, label %20

; <label>:20:                                     ; preds = %14
  call void @abort() #11
  unreachable

; <label>:21:                                     ; preds = %14
  %22 = load %12*, %12** %4, align 8
  %23 = getelementptr inbounds %12, %12* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  %26 = load %12*, %12** %4, align 8
  br i1 %25, label %27, label %30

; <label>:27:                                     ; preds = %21
  %28 = getelementptr inbounds %12, %12* %26, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %2, align 8
  br label %32

; <label>:30:                                     ; preds = %21
  %31 = getelementptr inbounds %12, %12* %26, i32 1
  store %12* %31, %12** %4, align 8
  br label %14

; <label>:32:                                     ; preds = %27, %9
  %33 = load i8*, i8** %2, align 8
  ret i8* %33
}

; Function Attrs: noinline nounwind uwtable
define i8* @hash_get_next(%11*, i8*) #3 {
  %3 = alloca i8*, align 8
  %4 = alloca %11*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %12*, align 8
  %7 = alloca %12*, align 8
  store %11* %0, %11** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %11*, %11** %4, align 8
  %9 = getelementptr inbounds %11, %11* %8, i32 0, i32 0
  %10 = load %12*, %12** %9, align 8
  %11 = load %11*, %11** %4, align 8
  %12 = getelementptr inbounds %11, %11* %11, i32 0, i32 6
  %13 = load i64 (i8*, i64)*, i64 (i8*, i64)** %12, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load %11*, %11** %4, align 8
  %16 = getelementptr inbounds %11, %11* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = call i64 %13(i8* %14, i64 %17)
  %19 = getelementptr inbounds %12, %12* %10, i64 %18
  store %12* %19, %12** %6, align 8
  %20 = load %12*, %12** %6, align 8
  %21 = load %11*, %11** %4, align 8
  %22 = getelementptr inbounds %11, %11* %21, i32 0, i32 1
  %23 = load %12*, %12** %22, align 8
  %24 = icmp ult %12* %20, %23
  br i1 %24, label %26, label %25

; <label>:25:                                     ; preds = %2
  call void @abort() #11
  unreachable

; <label>:26:                                     ; preds = %2
  %27 = load %12*, %12** %6, align 8
  store %12* %27, %12** %7, align 8
  br label %28

; <label>:28:                                     ; preds = %48, %26
  %29 = load %12*, %12** %7, align 8
  %30 = icmp ne %12* %29, null
  br i1 %30, label %31, label %52

; <label>:31:                                     ; preds = %28
  %32 = load %12*, %12** %7, align 8
  %33 = getelementptr inbounds %12, %12* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = icmp eq i8* %34, %35
  br i1 %36, label %37, label %48

; <label>:37:                                     ; preds = %31
  %38 = load %12*, %12** %7, align 8
  %39 = getelementptr inbounds %12, %12* %38, i32 0, i32 1
  %40 = load %12*, %12** %39, align 8
  %41 = icmp ne %12* %40, null
  br i1 %41, label %42, label %48

; <label>:42:                                     ; preds = %37
  %43 = load %12*, %12** %7, align 8
  %44 = getelementptr inbounds %12, %12* %43, i32 0, i32 1
  %45 = load %12*, %12** %44, align 8
  %46 = getelementptr inbounds %12, %12* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %3, align 8
  br label %71

; <label>:48:                                     ; preds = %31, %37
  %49 = load %12*, %12** %7, align 8
  %50 = getelementptr inbounds %12, %12* %49, i32 0, i32 1
  %51 = load %12*, %12** %50, align 8
  store %12* %51, %12** %7, align 8
  br label %28

; <label>:52:                                     ; preds = %28
  br label %53

; <label>:53:                                     ; preds = %69, %52
  %54 = load %12*, %12** %6, align 8
  %55 = getelementptr inbounds %12, %12* %54, i32 1
  store %12* %55, %12** %6, align 8
  %56 = load %11*, %11** %4, align 8
  %57 = getelementptr inbounds %11, %11* %56, i32 0, i32 1
  %58 = load %12*, %12** %57, align 8
  %59 = icmp ult %12* %55, %58
  br i1 %59, label %60, label %70

; <label>:60:                                     ; preds = %53
  %61 = load %12*, %12** %6, align 8
  %62 = getelementptr inbounds %12, %12* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %69

; <label>:65:                                     ; preds = %60
  %66 = load %12*, %12** %6, align 8
  %67 = getelementptr inbounds %12, %12* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %3, align 8
  br label %71

; <label>:69:                                     ; preds = %60
  br label %53

; <label>:70:                                     ; preds = %53
  store i8* null, i8** %3, align 8
  br label %71

; <label>:71:                                     ; preds = %70, %65, %42
  %72 = load i8*, i8** %3, align 8
  ret i8* %72
}

; Function Attrs: noinline nounwind uwtable
define i64 @hash_get_entries(%11*, i8**, i64) #3 {
  %4 = alloca i64, align 8
  %5 = alloca %11*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %12*, align 8
  %10 = alloca %12*, align 8
  store %11* %0, %11** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %11 = load %11*, %11** %5, align 8
  %12 = getelementptr inbounds %11, %11* %11, i32 0, i32 0
  %13 = load %12*, %12** %12, align 8
  store %12* %13, %12** %9, align 8
  br label %14

; <label>:14:                                     ; preds = %47, %3
  %15 = load %12*, %12** %9, align 8
  %16 = load %11*, %11** %5, align 8
  %17 = getelementptr inbounds %11, %11* %16, i32 0, i32 1
  %18 = load %12*, %12** %17, align 8
  %19 = icmp ult %12* %15, %18
  br i1 %19, label %20, label %50

; <label>:20:                                     ; preds = %14
  %21 = load %12*, %12** %9, align 8
  %22 = getelementptr inbounds %12, %12* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %47

; <label>:25:                                     ; preds = %20
  %26 = load %12*, %12** %9, align 8
  store %12* %26, %12** %10, align 8
  br label %27

; <label>:27:                                     ; preds = %36, %25
  %28 = load %12*, %12** %10, align 8
  %29 = icmp ne %12* %28, null
  br i1 %29, label %30, label %47

; <label>:30:                                     ; preds = %27
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp uge i64 %31, %32
  br i1 %33, label %34, label %36

; <label>:34:                                     ; preds = %30
  %35 = load i64, i64* %8, align 8
  store i64 %35, i64* %4, align 8
  br label %52

; <label>:36:                                     ; preds = %30
  %37 = load %12*, %12** %10, align 8
  %38 = getelementptr inbounds %12, %12* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i8**, i8*** %6, align 8
  %41 = load i64, i64* %8, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %8, align 8
  %43 = getelementptr inbounds i8*, i8** %40, i64 %41
  store i8* %39, i8** %43, align 8
  %44 = load %12*, %12** %10, align 8
  %45 = getelementptr inbounds %12, %12* %44, i32 0, i32 1
  %46 = load %12*, %12** %45, align 8
  store %12* %46, %12** %10, align 8
  br label %27

; <label>:47:                                     ; preds = %20, %27
  %48 = load %12*, %12** %9, align 8
  %49 = getelementptr inbounds %12, %12* %48, i32 1
  store %12* %49, %12** %9, align 8
  br label %14

; <label>:50:                                     ; preds = %14
  %51 = load i64, i64* %8, align 8
  store i64 %51, i64* %4, align 8
  br label %52

; <label>:52:                                     ; preds = %50, %34
  %53 = load i64, i64* %4, align 8
  ret i64 %53
}

; Function Attrs: noinline nounwind uwtable
define i64 @hash_do_for_each(%11*, i1 (i8*, i8*)*, i8*) #3 {
  %4 = alloca i64, align 8
  %5 = alloca %11*, align 8
  %6 = alloca i1 (i8*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %12*, align 8
  %10 = alloca %12*, align 8
  store %11* %0, %11** %5, align 8
  store i1 (i8*, i8*)* %1, i1 (i8*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 0, i64* %8, align 8
  %11 = load %11*, %11** %5, align 8
  %12 = getelementptr inbounds %11, %11* %11, i32 0, i32 0
  %13 = load %12*, %12** %12, align 8
  store %12* %13, %12** %9, align 8
  br label %14

; <label>:14:                                     ; preds = %44, %3
  %15 = load %12*, %12** %9, align 8
  %16 = load %11*, %11** %5, align 8
  %17 = getelementptr inbounds %11, %11* %16, i32 0, i32 1
  %18 = load %12*, %12** %17, align 8
  %19 = icmp ult %12* %15, %18
  br i1 %19, label %20, label %47

; <label>:20:                                     ; preds = %14
  %21 = load %12*, %12** %9, align 8
  %22 = getelementptr inbounds %12, %12* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %44

; <label>:25:                                     ; preds = %20
  %26 = load %12*, %12** %9, align 8
  store %12* %26, %12** %10, align 8
  br label %27

; <label>:27:                                     ; preds = %39, %25
  %28 = load %12*, %12** %10, align 8
  %29 = icmp ne %12* %28, null
  br i1 %29, label %30, label %44

; <label>:30:                                     ; preds = %27
  %31 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %6, align 8
  %32 = load %12*, %12** %10, align 8
  %33 = getelementptr inbounds %12, %12* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call zeroext i1 %31(i8* %34, i8* %35)
  %37 = load i64, i64* %8, align 8
  br i1 %36, label %39, label %38

; <label>:38:                                     ; preds = %30
  store i64 %37, i64* %4, align 8
  br label %49

; <label>:39:                                     ; preds = %30
  %40 = add i64 %37, 1
  store i64 %40, i64* %8, align 8
  %41 = load %12*, %12** %10, align 8
  %42 = getelementptr inbounds %12, %12* %41, i32 0, i32 1
  %43 = load %12*, %12** %42, align 8
  store %12* %43, %12** %10, align 8
  br label %27

; <label>:44:                                     ; preds = %20, %27
  %45 = load %12*, %12** %9, align 8
  %46 = getelementptr inbounds %12, %12* %45, i32 1
  store %12* %46, %12** %9, align 8
  br label %14

; <label>:47:                                     ; preds = %14
  %48 = load i64, i64* %8, align 8
  store i64 %48, i64* %4, align 8
  br label %49

; <label>:49:                                     ; preds = %47, %38
  %50 = load i64, i64* %4, align 8
  ret i64 %50
}

; Function Attrs: noinline nounwind uwtable
define i64 @hash_string(i8*, i64) #3 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %7

; <label>:7:                                      ; preds = %12, %2
  %8 = load i8*, i8** %3, align 8
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %6, align 1
  %10 = icmp ne i8 %9, 0
  %11 = load i64, i64* %5, align 8
  br i1 %10, label %12, label %21

; <label>:12:                                     ; preds = %7
  %13 = mul i64 %11, 31
  %14 = load i8, i8* %6, align 1
  %15 = zext i8 %14 to i64
  %16 = add i64 %13, %15
  %17 = load i64, i64* %4, align 8
  %18 = urem i64 %16, %17
  store i64 %18, i64* %5, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %3, align 8
  br label %7

; <label>:21:                                     ; preds = %7
  ret i64 %11
}

; Function Attrs: noinline nounwind uwtable
define void @hash_reset_tuning(%4*) #3 {
  %2 = alloca %4*, align 8
  store %4* %0, %4** %2, align 8
  %3 = load %4*, %4** %2, align 8
  %4 = bitcast %4* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast (%4* @137 to i8*), i64 20, i32 4, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #10

; Function Attrs: noinline nounwind uwtable
define %11* @hash_initialize(i64, %4*, i64 (i8*, i64)*, i1 (i8*, i8*)*, void (i8*)*) #3 {
  %6 = alloca %11*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %4*, align 8
  %9 = alloca i64 (i8*, i64)*, align 8
  %10 = alloca i1 (i8*, i8*)*, align 8
  %11 = alloca void (i8*)*, align 8
  %12 = alloca %11*, align 8
  store i64 %0, i64* %7, align 8
  store %4* %1, %4** %8, align 8
  store i64 (i8*, i64)* %2, i64 (i8*, i64)** %9, align 8
  store i1 (i8*, i8*)* %3, i1 (i8*, i8*)** %10, align 8
  store void (i8*)* %4, void (i8*)** %11, align 8
  %13 = load i64 (i8*, i64)*, i64 (i8*, i64)** %9, align 8
  %14 = icmp eq i64 (i8*, i64)* %13, null
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %5
  store i64 (i8*, i64)* @215, i64 (i8*, i64)** %9, align 8
  br label %16

; <label>:16:                                     ; preds = %15, %5
  %17 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %10, align 8
  %18 = icmp eq i1 (i8*, i8*)* %17, null
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %16
  store i1 (i8*, i8*)* @216, i1 (i8*, i8*)** %10, align 8
  br label %20

; <label>:20:                                     ; preds = %19, %16
  %21 = call noalias i8* @malloc(i64 80) #8
  %22 = bitcast i8* %21 to %11*
  store %11* %22, %11** %12, align 8
  %23 = load %11*, %11** %12, align 8
  %24 = icmp eq %11* %23, null
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %20
  store %11* null, %11** %6, align 8
  br label %87

; <label>:26:                                     ; preds = %20
  %27 = load %4*, %4** %8, align 8
  %28 = icmp ne %4* %27, null
  br i1 %28, label %30, label %29

; <label>:29:                                     ; preds = %26
  store %4* @137, %4** %8, align 8
  br label %30

; <label>:30:                                     ; preds = %29, %26
  %31 = load %4*, %4** %8, align 8
  %32 = load %11*, %11** %12, align 8
  %33 = getelementptr inbounds %11, %11* %32, i32 0, i32 5
  store %4* %31, %4** %33, align 8
  %34 = load %11*, %11** %12, align 8
  %35 = call zeroext i1 @217(%11* %34)
  br i1 %35, label %36, label %84

; <label>:36:                                     ; preds = %30
  %37 = load i64, i64* %7, align 8
  %38 = load %4*, %4** %8, align 8
  %39 = call i64 @218(i64 %37, %4* %38)
  %40 = load %11*, %11** %12, align 8
  %41 = getelementptr inbounds %11, %11* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  %42 = load %11*, %11** %12, align 8
  %43 = getelementptr inbounds %11, %11* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %84

; <label>:46:                                     ; preds = %36
  %47 = load %11*, %11** %12, align 8
  %48 = getelementptr inbounds %11, %11* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call noalias i8* @calloc(i64 %49, i64 16) #8
  %51 = bitcast i8* %50 to %12*
  %52 = load %11*, %11** %12, align 8
  %53 = getelementptr inbounds %11, %11* %52, i32 0, i32 0
  store %12* %51, %12** %53, align 8
  %54 = load %11*, %11** %12, align 8
  %55 = getelementptr inbounds %11, %11* %54, i32 0, i32 0
  %56 = load %12*, %12** %55, align 8
  %57 = icmp eq %12* %56, null
  br i1 %57, label %84, label %58

; <label>:58:                                     ; preds = %46
  %59 = load %11*, %11** %12, align 8
  %60 = getelementptr inbounds %11, %11* %59, i32 0, i32 0
  %61 = load %12*, %12** %60, align 8
  %62 = load %11*, %11** %12, align 8
  %63 = getelementptr inbounds %11, %11* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %12, %12* %61, i64 %64
  %66 = load %11*, %11** %12, align 8
  %67 = getelementptr inbounds %11, %11* %66, i32 0, i32 1
  store %12* %65, %12** %67, align 8
  %68 = load %11*, %11** %12, align 8
  %69 = getelementptr inbounds %11, %11* %68, i32 0, i32 3
  store i64 0, i64* %69, align 8
  %70 = load %11*, %11** %12, align 8
  %71 = getelementptr inbounds %11, %11* %70, i32 0, i32 4
  store i64 0, i64* %71, align 8
  %72 = load i64 (i8*, i64)*, i64 (i8*, i64)** %9, align 8
  %73 = load %11*, %11** %12, align 8
  %74 = getelementptr inbounds %11, %11* %73, i32 0, i32 6
  store i64 (i8*, i64)* %72, i64 (i8*, i64)** %74, align 8
  %75 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %10, align 8
  %76 = load %11*, %11** %12, align 8
  %77 = getelementptr inbounds %11, %11* %76, i32 0, i32 7
  store i1 (i8*, i8*)* %75, i1 (i8*, i8*)** %77, align 8
  %78 = load void (i8*)*, void (i8*)** %11, align 8
  %79 = load %11*, %11** %12, align 8
  %80 = getelementptr inbounds %11, %11* %79, i32 0, i32 8
  store void (i8*)* %78, void (i8*)** %80, align 8
  %81 = load %11*, %11** %12, align 8
  %82 = getelementptr inbounds %11, %11* %81, i32 0, i32 9
  store %12* null, %12** %82, align 8
  %83 = load %11*, %11** %12, align 8
  store %11* %83, %11** %6, align 8
  br label %87

; <label>:84:                                     ; preds = %46, %36, %30
  %85 = load %11*, %11** %12, align 8
  %86 = bitcast %11* %85 to i8*
  call void @free(i8* %86) #8
  store %11* null, %11** %6, align 8
  br label %87

; <label>:87:                                     ; preds = %84, %58, %25
  %88 = load %11*, %11** %6, align 8
  ret %11* %88
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @215(i8*, i64) #3 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = ptrtoint i8* %6 to i64
  %8 = call i64 @221(i64 %7, i32 3)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = urem i64 %9, %10
  ret i64 %11
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @216(i8*, i8*) #3 {
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
define internal zeroext i1 @217(%11*) #3 {
  %2 = alloca i1, align 1
  %3 = alloca %11*, align 8
  %4 = alloca %4*, align 8
  %5 = alloca float, align 4
  store %11* %0, %11** %3, align 8
  %6 = load %11*, %11** %3, align 8
  %7 = getelementptr inbounds %11, %11* %6, i32 0, i32 5
  %8 = load %4*, %4** %7, align 8
  store %4* %8, %4** %4, align 8
  %9 = load %4*, %4** %4, align 8
  %10 = icmp eq %4* %9, @137
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %1
  store i1 true, i1* %2, align 1
  br label %66

; <label>:12:                                     ; preds = %1
  store float 0x3FB99999A0000000, float* %5, align 4
  %13 = load float, float* %5, align 4
  %14 = load %4*, %4** %4, align 8
  %15 = getelementptr inbounds %4, %4* %14, i32 0, i32 2
  %16 = load float, float* %15, align 4
  %17 = fcmp olt float %13, %16
  br i1 %17, label %18, label %63

; <label>:18:                                     ; preds = %12
  %19 = load %4*, %4** %4, align 8
  %20 = getelementptr inbounds %4, %4* %19, i32 0, i32 2
  %21 = load float, float* %20, align 4
  %22 = load float, float* %5, align 4
  %23 = fsub float 1.000000e+00, %22
  %24 = fcmp olt float %21, %23
  br i1 %24, label %25, label %63

; <label>:25:                                     ; preds = %18
  %26 = load float, float* %5, align 4
  %27 = fadd float 1.000000e+00, %26
  %28 = load %4*, %4** %4, align 8
  %29 = getelementptr inbounds %4, %4* %28, i32 0, i32 3
  %30 = load float, float* %29, align 4
  %31 = fcmp olt float %27, %30
  br i1 %31, label %32, label %63

; <label>:32:                                     ; preds = %25
  %33 = load %4*, %4** %4, align 8
  %34 = getelementptr inbounds %4, %4* %33, i32 0, i32 0
  %35 = load float, float* %34, align 4
  %36 = fcmp ole float 0.000000e+00, %35
  br i1 %36, label %37, label %63

; <label>:37:                                     ; preds = %32
  %38 = load %4*, %4** %4, align 8
  %39 = getelementptr inbounds %4, %4* %38, i32 0, i32 0
  %40 = load float, float* %39, align 4
  %41 = load float, float* %5, align 4
  %42 = fadd float %40, %41
  %43 = load %4*, %4** %4, align 8
  %44 = getelementptr inbounds %4, %4* %43, i32 0, i32 1
  %45 = load float, float* %44, align 4
  %46 = fcmp olt float %42, %45
  br i1 %46, label %47, label %63

; <label>:47:                                     ; preds = %37
  %48 = load %4*, %4** %4, align 8
  %49 = getelementptr inbounds %4, %4* %48, i32 0, i32 1
  %50 = load float, float* %49, align 4
  %51 = fcmp ole float %50, 1.000000e+00
  br i1 %51, label %52, label %63

; <label>:52:                                     ; preds = %47
  %53 = load %4*, %4** %4, align 8
  %54 = getelementptr inbounds %4, %4* %53, i32 0, i32 0
  %55 = load float, float* %54, align 4
  %56 = load float, float* %5, align 4
  %57 = fadd float %55, %56
  %58 = load %4*, %4** %4, align 8
  %59 = getelementptr inbounds %4, %4* %58, i32 0, i32 2
  %60 = load float, float* %59, align 4
  %61 = fcmp olt float %57, %60
  br i1 %61, label %62, label %63

; <label>:62:                                     ; preds = %52
  store i1 true, i1* %2, align 1
  br label %66

; <label>:63:                                     ; preds = %52, %47, %37, %32, %25, %18, %12
  %64 = load %11*, %11** %3, align 8
  %65 = getelementptr inbounds %11, %11* %64, i32 0, i32 5
  store %4* @137, %4** %65, align 8
  store i1 false, i1* %2, align 1
  br label %66

; <label>:66:                                     ; preds = %63, %62, %11
  %67 = load i1, i1* %2, align 1
  ret i1 %67
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @218(i64, %4*) #3 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %4*, align 8
  %6 = alloca float, align 4
  store i64 %0, i64* %4, align 8
  store %4* %1, %4** %5, align 8
  %7 = load %4*, %4** %5, align 8
  %8 = getelementptr inbounds %4, %4* %7, i32 0, i32 4
  %9 = load i8, i8* %8, align 4
  %10 = trunc i8 %9 to i1
  br i1 %10, label %24, label %11

; <label>:11:                                     ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = uitofp i64 %12 to float
  %14 = load %4*, %4** %5, align 8
  %15 = getelementptr inbounds %4, %4* %14, i32 0, i32 2
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
  %26 = call i64 @219(i64 %25)
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
declare noalias i8* @calloc(i64, i64) #5

; Function Attrs: noinline nounwind uwtable
define internal i64 @219(i64) #3 {
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
  %12 = call zeroext i1 @220(i64 %11)
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

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @220(i64) #3 {
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
define internal i64 @221(i64, i32) #3 {
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
define void @hash_clear(%11*) #3 {
  %2 = alloca %11*, align 8
  %3 = alloca %12*, align 8
  %4 = alloca %12*, align 8
  %5 = alloca %12*, align 8
  store %11* %0, %11** %2, align 8
  %6 = load %11*, %11** %2, align 8
  %7 = getelementptr inbounds %11, %11* %6, i32 0, i32 0
  %8 = load %12*, %12** %7, align 8
  store %12* %8, %12** %3, align 8
  br label %9

; <label>:9:                                      ; preds = %67, %1
  %10 = load %12*, %12** %3, align 8
  %11 = load %11*, %11** %2, align 8
  %12 = getelementptr inbounds %11, %11* %11, i32 0, i32 1
  %13 = load %12*, %12** %12, align 8
  %14 = icmp ult %12* %10, %13
  br i1 %14, label %15, label %70

; <label>:15:                                     ; preds = %9
  %16 = load %12*, %12** %3, align 8
  %17 = getelementptr inbounds %12, %12* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %67

; <label>:20:                                     ; preds = %15
  %21 = load %12*, %12** %3, align 8
  %22 = getelementptr inbounds %12, %12* %21, i32 0, i32 1
  %23 = load %12*, %12** %22, align 8
  store %12* %23, %12** %4, align 8
  br label %24

; <label>:24:                                     ; preds = %39, %20
  %25 = load %12*, %12** %4, align 8
  %26 = icmp ne %12* %25, null
  %27 = load %11*, %11** %2, align 8
  %28 = getelementptr inbounds %11, %11* %27, i32 0, i32 8
  %29 = load void (i8*)*, void (i8*)** %28, align 8
  %30 = icmp ne void (i8*)* %29, null
  br i1 %26, label %31, label %54

; <label>:31:                                     ; preds = %24
  br i1 %30, label %32, label %39

; <label>:32:                                     ; preds = %31
  %33 = load %11*, %11** %2, align 8
  %34 = getelementptr inbounds %11, %11* %33, i32 0, i32 8
  %35 = load void (i8*)*, void (i8*)** %34, align 8
  %36 = load %12*, %12** %4, align 8
  %37 = getelementptr inbounds %12, %12* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  call void %35(i8* %38)
  br label %39

; <label>:39:                                     ; preds = %32, %31
  %40 = load %12*, %12** %4, align 8
  %41 = getelementptr inbounds %12, %12* %40, i32 0, i32 0
  store i8* null, i8** %41, align 8
  %42 = load %12*, %12** %4, align 8
  %43 = getelementptr inbounds %12, %12* %42, i32 0, i32 1
  %44 = load %12*, %12** %43, align 8
  store %12* %44, %12** %5, align 8
  %45 = load %11*, %11** %2, align 8
  %46 = getelementptr inbounds %11, %11* %45, i32 0, i32 9
  %47 = load %12*, %12** %46, align 8
  %48 = load %12*, %12** %4, align 8
  %49 = getelementptr inbounds %12, %12* %48, i32 0, i32 1
  store %12* %47, %12** %49, align 8
  %50 = load %12*, %12** %4, align 8
  %51 = load %11*, %11** %2, align 8
  %52 = getelementptr inbounds %11, %11* %51, i32 0, i32 9
  store %12* %50, %12** %52, align 8
  %53 = load %12*, %12** %5, align 8
  store %12* %53, %12** %4, align 8
  br label %24

; <label>:54:                                     ; preds = %24
  br i1 %30, label %55, label %62

; <label>:55:                                     ; preds = %54
  %56 = load %11*, %11** %2, align 8
  %57 = getelementptr inbounds %11, %11* %56, i32 0, i32 8
  %58 = load void (i8*)*, void (i8*)** %57, align 8
  %59 = load %12*, %12** %3, align 8
  %60 = getelementptr inbounds %12, %12* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  call void %58(i8* %61)
  br label %62

; <label>:62:                                     ; preds = %55, %54
  %63 = load %12*, %12** %3, align 8
  %64 = getelementptr inbounds %12, %12* %63, i32 0, i32 0
  store i8* null, i8** %64, align 8
  %65 = load %12*, %12** %3, align 8
  %66 = getelementptr inbounds %12, %12* %65, i32 0, i32 1
  store %12* null, %12** %66, align 8
  br label %67

; <label>:67:                                     ; preds = %15, %62
  %68 = load %12*, %12** %3, align 8
  %69 = getelementptr inbounds %12, %12* %68, i32 1
  store %12* %69, %12** %3, align 8
  br label %9

; <label>:70:                                     ; preds = %9
  %71 = load %11*, %11** %2, align 8
  %72 = getelementptr inbounds %11, %11* %71, i32 0, i32 3
  store i64 0, i64* %72, align 8
  %73 = load %11*, %11** %2, align 8
  %74 = getelementptr inbounds %11, %11* %73, i32 0, i32 4
  store i64 0, i64* %74, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @hash_free(%11*) #3 {
  %2 = alloca %11*, align 8
  %3 = alloca %12*, align 8
  %4 = alloca %12*, align 8
  %5 = alloca %12*, align 8
  store %11* %0, %11** %2, align 8
  %6 = load %11*, %11** %2, align 8
  %7 = getelementptr inbounds %11, %11* %6, i32 0, i32 8
  %8 = load void (i8*)*, void (i8*)** %7, align 8
  %9 = icmp ne void (i8*)* %8, null
  br i1 %9, label %10, label %48

; <label>:10:                                     ; preds = %1
  %11 = load %11*, %11** %2, align 8
  %12 = getelementptr inbounds %11, %11* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %48

; <label>:15:                                     ; preds = %10
  %16 = load %11*, %11** %2, align 8
  %17 = getelementptr inbounds %11, %11* %16, i32 0, i32 0
  %18 = load %12*, %12** %17, align 8
  store %12* %18, %12** %3, align 8
  br label %19

; <label>:19:                                     ; preds = %45, %15
  %20 = load %12*, %12** %3, align 8
  %21 = load %11*, %11** %2, align 8
  %22 = getelementptr inbounds %11, %11* %21, i32 0, i32 1
  %23 = load %12*, %12** %22, align 8
  %24 = icmp ult %12* %20, %23
  br i1 %24, label %25, label %48

; <label>:25:                                     ; preds = %19
  %26 = load %12*, %12** %3, align 8
  %27 = getelementptr inbounds %12, %12* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %45

; <label>:30:                                     ; preds = %25
  %31 = load %12*, %12** %3, align 8
  store %12* %31, %12** %4, align 8
  br label %32

; <label>:32:                                     ; preds = %35, %30
  %33 = load %12*, %12** %4, align 8
  %34 = icmp ne %12* %33, null
  br i1 %34, label %35, label %45

; <label>:35:                                     ; preds = %32
  %36 = load %11*, %11** %2, align 8
  %37 = getelementptr inbounds %11, %11* %36, i32 0, i32 8
  %38 = load void (i8*)*, void (i8*)** %37, align 8
  %39 = load %12*, %12** %4, align 8
  %40 = getelementptr inbounds %12, %12* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  call void %38(i8* %41)
  %42 = load %12*, %12** %4, align 8
  %43 = getelementptr inbounds %12, %12* %42, i32 0, i32 1
  %44 = load %12*, %12** %43, align 8
  store %12* %44, %12** %4, align 8
  br label %32

; <label>:45:                                     ; preds = %25, %32
  %46 = load %12*, %12** %3, align 8
  %47 = getelementptr inbounds %12, %12* %46, i32 1
  store %12* %47, %12** %3, align 8
  br label %19

; <label>:48:                                     ; preds = %19, %10, %1
  %49 = load %11*, %11** %2, align 8
  %50 = getelementptr inbounds %11, %11* %49, i32 0, i32 0
  %51 = load %12*, %12** %50, align 8
  store %12* %51, %12** %3, align 8
  br label %52

; <label>:52:                                     ; preds = %72, %48
  %53 = load %12*, %12** %3, align 8
  %54 = load %11*, %11** %2, align 8
  %55 = getelementptr inbounds %11, %11* %54, i32 0, i32 1
  %56 = load %12*, %12** %55, align 8
  %57 = icmp ult %12* %53, %56
  br i1 %57, label %58, label %75

; <label>:58:                                     ; preds = %52
  %59 = load %12*, %12** %3, align 8
  %60 = getelementptr inbounds %12, %12* %59, i32 0, i32 1
  %61 = load %12*, %12** %60, align 8
  store %12* %61, %12** %4, align 8
  br label %62

; <label>:62:                                     ; preds = %65, %58
  %63 = load %12*, %12** %4, align 8
  %64 = icmp ne %12* %63, null
  br i1 %64, label %65, label %72

; <label>:65:                                     ; preds = %62
  %66 = load %12*, %12** %4, align 8
  %67 = getelementptr inbounds %12, %12* %66, i32 0, i32 1
  %68 = load %12*, %12** %67, align 8
  store %12* %68, %12** %5, align 8
  %69 = load %12*, %12** %4, align 8
  %70 = bitcast %12* %69 to i8*
  call void @free(i8* %70) #8
  %71 = load %12*, %12** %5, align 8
  store %12* %71, %12** %4, align 8
  br label %62

; <label>:72:                                     ; preds = %62
  %73 = load %12*, %12** %3, align 8
  %74 = getelementptr inbounds %12, %12* %73, i32 1
  store %12* %74, %12** %3, align 8
  br label %52

; <label>:75:                                     ; preds = %52
  %76 = load %11*, %11** %2, align 8
  %77 = getelementptr inbounds %11, %11* %76, i32 0, i32 9
  %78 = load %12*, %12** %77, align 8
  store %12* %78, %12** %4, align 8
  br label %79

; <label>:79:                                     ; preds = %82, %75
  %80 = load %12*, %12** %4, align 8
  %81 = icmp ne %12* %80, null
  br i1 %81, label %82, label %89

; <label>:82:                                     ; preds = %79
  %83 = load %12*, %12** %4, align 8
  %84 = getelementptr inbounds %12, %12* %83, i32 0, i32 1
  %85 = load %12*, %12** %84, align 8
  store %12* %85, %12** %5, align 8
  %86 = load %12*, %12** %4, align 8
  %87 = bitcast %12* %86 to i8*
  call void @free(i8* %87) #8
  %88 = load %12*, %12** %5, align 8
  store %12* %88, %12** %4, align 8
  br label %79

; <label>:89:                                     ; preds = %79
  %90 = load %11*, %11** %2, align 8
  %91 = getelementptr inbounds %11, %11* %90, i32 0, i32 0
  %92 = load %12*, %12** %91, align 8
  %93 = bitcast %12* %92 to i8*
  call void @free(i8* %93) #8
  %94 = load %11*, %11** %2, align 8
  %95 = bitcast %11* %94 to i8*
  call void @free(i8* %95) #8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define zeroext i1 @hash_rehash(%11*, i64) #3 {
  %3 = alloca i1, align 1
  %4 = alloca %11*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %11, align 8
  %7 = alloca %11*, align 8
  %8 = alloca i64, align 8
  store %11* %0, %11** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %11*, %11** %4, align 8
  %11 = getelementptr inbounds %11, %11* %10, i32 0, i32 5
  %12 = load %4*, %4** %11, align 8
  %13 = call i64 @218(i64 %9, %4* %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

; <label>:16:                                     ; preds = %2
  store i1 false, i1* %3, align 1
  br label %127

; <label>:17:                                     ; preds = %2
  %18 = load i64, i64* %8, align 8
  %19 = load %11*, %11** %4, align 8
  %20 = getelementptr inbounds %11, %11* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %17
  store i1 true, i1* %3, align 1
  br label %127

; <label>:24:                                     ; preds = %17
  store %11* %6, %11** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call noalias i8* @calloc(i64 %25, i64 16) #8
  %27 = bitcast i8* %26 to %12*
  %28 = load %11*, %11** %7, align 8
  %29 = getelementptr inbounds %11, %11* %28, i32 0, i32 0
  store %12* %27, %12** %29, align 8
  %30 = load %11*, %11** %7, align 8
  %31 = getelementptr inbounds %11, %11* %30, i32 0, i32 0
  %32 = load %12*, %12** %31, align 8
  %33 = icmp eq %12* %32, null
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %24
  store i1 false, i1* %3, align 1
  br label %127

; <label>:35:                                     ; preds = %24
  %36 = load i64, i64* %8, align 8
  %37 = load %11*, %11** %7, align 8
  %38 = getelementptr inbounds %11, %11* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  %39 = load %11*, %11** %7, align 8
  %40 = getelementptr inbounds %11, %11* %39, i32 0, i32 0
  %41 = load %12*, %12** %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds %12, %12* %41, i64 %42
  %44 = load %11*, %11** %7, align 8
  %45 = getelementptr inbounds %11, %11* %44, i32 0, i32 1
  store %12* %43, %12** %45, align 8
  %46 = load %11*, %11** %7, align 8
  %47 = getelementptr inbounds %11, %11* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load %11*, %11** %7, align 8
  %49 = getelementptr inbounds %11, %11* %48, i32 0, i32 4
  store i64 0, i64* %49, align 8
  %50 = load %11*, %11** %4, align 8
  %51 = getelementptr inbounds %11, %11* %50, i32 0, i32 5
  %52 = load %4*, %4** %51, align 8
  %53 = load %11*, %11** %7, align 8
  %54 = getelementptr inbounds %11, %11* %53, i32 0, i32 5
  store %4* %52, %4** %54, align 8
  %55 = load %11*, %11** %4, align 8
  %56 = getelementptr inbounds %11, %11* %55, i32 0, i32 6
  %57 = load i64 (i8*, i64)*, i64 (i8*, i64)** %56, align 8
  %58 = load %11*, %11** %7, align 8
  %59 = getelementptr inbounds %11, %11* %58, i32 0, i32 6
  store i64 (i8*, i64)* %57, i64 (i8*, i64)** %59, align 8
  %60 = load %11*, %11** %4, align 8
  %61 = getelementptr inbounds %11, %11* %60, i32 0, i32 7
  %62 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %61, align 8
  %63 = load %11*, %11** %7, align 8
  %64 = getelementptr inbounds %11, %11* %63, i32 0, i32 7
  store i1 (i8*, i8*)* %62, i1 (i8*, i8*)** %64, align 8
  %65 = load %11*, %11** %4, align 8
  %66 = getelementptr inbounds %11, %11* %65, i32 0, i32 8
  %67 = load void (i8*)*, void (i8*)** %66, align 8
  %68 = load %11*, %11** %7, align 8
  %69 = getelementptr inbounds %11, %11* %68, i32 0, i32 8
  store void (i8*)* %67, void (i8*)** %69, align 8
  %70 = load %11*, %11** %4, align 8
  %71 = getelementptr inbounds %11, %11* %70, i32 0, i32 9
  %72 = load %12*, %12** %71, align 8
  %73 = load %11*, %11** %7, align 8
  %74 = getelementptr inbounds %11, %11* %73, i32 0, i32 9
  store %12* %72, %12** %74, align 8
  %75 = load %11*, %11** %7, align 8
  %76 = load %11*, %11** %4, align 8
  %77 = call zeroext i1 @222(%11* %75, %11* %76, i1 zeroext false)
  br i1 %77, label %78, label %108

; <label>:78:                                     ; preds = %35
  %79 = load %11*, %11** %4, align 8
  %80 = getelementptr inbounds %11, %11* %79, i32 0, i32 0
  %81 = load %12*, %12** %80, align 8
  %82 = bitcast %12* %81 to i8*
  call void @free(i8* %82) #8
  %83 = load %11*, %11** %7, align 8
  %84 = getelementptr inbounds %11, %11* %83, i32 0, i32 0
  %85 = load %12*, %12** %84, align 8
  %86 = load %11*, %11** %4, align 8
  %87 = getelementptr inbounds %11, %11* %86, i32 0, i32 0
  store %12* %85, %12** %87, align 8
  %88 = load %11*, %11** %7, align 8
  %89 = getelementptr inbounds %11, %11* %88, i32 0, i32 1
  %90 = load %12*, %12** %89, align 8
  %91 = load %11*, %11** %4, align 8
  %92 = getelementptr inbounds %11, %11* %91, i32 0, i32 1
  store %12* %90, %12** %92, align 8
  %93 = load %11*, %11** %7, align 8
  %94 = getelementptr inbounds %11, %11* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load %11*, %11** %4, align 8
  %97 = getelementptr inbounds %11, %11* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  %98 = load %11*, %11** %7, align 8
  %99 = getelementptr inbounds %11, %11* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load %11*, %11** %4, align 8
  %102 = getelementptr inbounds %11, %11* %101, i32 0, i32 3
  store i64 %100, i64* %102, align 8
  %103 = load %11*, %11** %7, align 8
  %104 = getelementptr inbounds %11, %11* %103, i32 0, i32 9
  %105 = load %12*, %12** %104, align 8
  %106 = load %11*, %11** %4, align 8
  %107 = getelementptr inbounds %11, %11* %106, i32 0, i32 9
  store %12* %105, %12** %107, align 8
  store i1 true, i1* %3, align 1
  br label %127

; <label>:108:                                    ; preds = %35
  %109 = load %11*, %11** %7, align 8
  %110 = getelementptr inbounds %11, %11* %109, i32 0, i32 9
  %111 = load %12*, %12** %110, align 8
  %112 = load %11*, %11** %4, align 8
  %113 = getelementptr inbounds %11, %11* %112, i32 0, i32 9
  store %12* %111, %12** %113, align 8
  %114 = load %11*, %11** %4, align 8
  %115 = load %11*, %11** %7, align 8
  %116 = call zeroext i1 @222(%11* %114, %11* %115, i1 zeroext true)
  br i1 %116, label %117, label %121

; <label>:117:                                    ; preds = %108
  %118 = load %11*, %11** %4, align 8
  %119 = load %11*, %11** %7, align 8
  %120 = call zeroext i1 @222(%11* %118, %11* %119, i1 zeroext false)
  br i1 %120, label %122, label %121

; <label>:121:                                    ; preds = %117, %108
  call void @abort() #11
  unreachable

; <label>:122:                                    ; preds = %117
  %123 = load %11*, %11** %7, align 8
  %124 = getelementptr inbounds %11, %11* %123, i32 0, i32 0
  %125 = load %12*, %12** %124, align 8
  %126 = bitcast %12* %125 to i8*
  call void @free(i8* %126) #8
  store i1 false, i1* %3, align 1
  br label %127

; <label>:127:                                    ; preds = %122, %78, %34, %23, %16
  %128 = load i1, i1* %3, align 1
  ret i1 %128
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @222(%11*, %11*, i1 zeroext) #3 {
  %4 = alloca i1, align 1
  %5 = alloca %11*, align 8
  %6 = alloca %11*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %12*, align 8
  %9 = alloca %12*, align 8
  %10 = alloca %12*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %12*, align 8
  %13 = alloca %12*, align 8
  store %11* %0, %11** %5, align 8
  store %11* %1, %11** %6, align 8
  %14 = zext i1 %2 to i8
  store i8 %14, i8* %7, align 1
  %15 = load %11*, %11** %6, align 8
  %16 = getelementptr inbounds %11, %11* %15, i32 0, i32 0
  %17 = load %12*, %12** %16, align 8
  store %12* %17, %12** %8, align 8
  br label %18

; <label>:18:                                     ; preds = %152, %3
  %19 = load %12*, %12** %8, align 8
  %20 = load %11*, %11** %6, align 8
  %21 = getelementptr inbounds %11, %11* %20, i32 0, i32 1
  %22 = load %12*, %12** %21, align 8
  %23 = icmp ult %12* %19, %22
  br i1 %23, label %24, label %155

; <label>:24:                                     ; preds = %18
  %25 = load %12*, %12** %8, align 8
  %26 = getelementptr inbounds %12, %12* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %152

; <label>:29:                                     ; preds = %24
  %30 = load %12*, %12** %8, align 8
  %31 = getelementptr inbounds %12, %12* %30, i32 0, i32 1
  %32 = load %12*, %12** %31, align 8
  store %12* %32, %12** %9, align 8
  br label %33

; <label>:33:                                     ; preds = %85, %29
  %34 = load %12*, %12** %9, align 8
  %35 = icmp ne %12* %34, null
  br i1 %35, label %36, label %87

; <label>:36:                                     ; preds = %33
  %37 = load %12*, %12** %9, align 8
  %38 = getelementptr inbounds %12, %12* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %11, align 8
  %40 = load %11*, %11** %5, align 8
  %41 = getelementptr inbounds %11, %11* %40, i32 0, i32 0
  %42 = load %12*, %12** %41, align 8
  %43 = load %11*, %11** %5, align 8
  %44 = getelementptr inbounds %11, %11* %43, i32 0, i32 6
  %45 = load i64 (i8*, i64)*, i64 (i8*, i64)** %44, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load %11*, %11** %5, align 8
  %48 = getelementptr inbounds %11, %11* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call i64 %45(i8* %46, i64 %49)
  %51 = getelementptr inbounds %12, %12* %42, i64 %50
  store %12* %51, %12** %12, align 8
  %52 = load %12*, %12** %12, align 8
  %53 = load %11*, %11** %5, align 8
  %54 = getelementptr inbounds %11, %11* %53, i32 0, i32 1
  %55 = load %12*, %12** %54, align 8
  %56 = icmp ult %12* %52, %55
  br i1 %56, label %58, label %57

; <label>:57:                                     ; preds = %36
  call void @abort() #11
  unreachable

; <label>:58:                                     ; preds = %36
  %59 = load %12*, %12** %9, align 8
  %60 = getelementptr inbounds %12, %12* %59, i32 0, i32 1
  %61 = load %12*, %12** %60, align 8
  store %12* %61, %12** %10, align 8
  %62 = load %12*, %12** %12, align 8
  %63 = getelementptr inbounds %12, %12* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %75

; <label>:66:                                     ; preds = %58
  %67 = load %12*, %12** %12, align 8
  %68 = getelementptr inbounds %12, %12* %67, i32 0, i32 1
  %69 = load %12*, %12** %68, align 8
  %70 = load %12*, %12** %9, align 8
  %71 = getelementptr inbounds %12, %12* %70, i32 0, i32 1
  store %12* %69, %12** %71, align 8
  %72 = load %12*, %12** %9, align 8
  %73 = load %12*, %12** %12, align 8
  %74 = getelementptr inbounds %12, %12* %73, i32 0, i32 1
  store %12* %72, %12** %74, align 8
  br label %85

; <label>:75:                                     ; preds = %58
  %76 = load i8*, i8** %11, align 8
  %77 = load %12*, %12** %12, align 8
  %78 = getelementptr inbounds %12, %12* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  %79 = load %11*, %11** %5, align 8
  %80 = getelementptr inbounds %11, %11* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %80, align 8
  %83 = load %11*, %11** %5, align 8
  %84 = load %12*, %12** %9, align 8
  call void @223(%11* %83, %12* %84)
  br label %85

; <label>:85:                                     ; preds = %66, %75
  %86 = load %12*, %12** %10, align 8
  store %12* %86, %12** %9, align 8
  br label %33

; <label>:87:                                     ; preds = %33
  %88 = load %12*, %12** %8, align 8
  %89 = getelementptr inbounds %12, %12* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  store i8* %90, i8** %11, align 8
  %91 = load %12*, %12** %8, align 8
  %92 = getelementptr inbounds %12, %12* %91, i32 0, i32 1
  store %12* null, %12** %92, align 8
  %93 = load i8, i8* %7, align 1
  %94 = trunc i8 %93 to i1
  br i1 %94, label %152, label %95

; <label>:95:                                     ; preds = %87
  %96 = load %11*, %11** %5, align 8
  %97 = getelementptr inbounds %11, %11* %96, i32 0, i32 0
  %98 = load %12*, %12** %97, align 8
  %99 = load %11*, %11** %5, align 8
  %100 = getelementptr inbounds %11, %11* %99, i32 0, i32 6
  %101 = load i64 (i8*, i64)*, i64 (i8*, i64)** %100, align 8
  %102 = load i8*, i8** %11, align 8
  %103 = load %11*, %11** %5, align 8
  %104 = getelementptr inbounds %11, %11* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = call i64 %101(i8* %102, i64 %105)
  %107 = getelementptr inbounds %12, %12* %98, i64 %106
  store %12* %107, %12** %12, align 8
  %108 = load %12*, %12** %12, align 8
  %109 = load %11*, %11** %5, align 8
  %110 = getelementptr inbounds %11, %11* %109, i32 0, i32 1
  %111 = load %12*, %12** %110, align 8
  %112 = icmp ult %12* %108, %111
  br i1 %112, label %114, label %113

; <label>:113:                                    ; preds = %95
  call void @abort() #11
  unreachable

; <label>:114:                                    ; preds = %95
  %115 = load %12*, %12** %12, align 8
  %116 = getelementptr inbounds %12, %12* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %137

; <label>:119:                                    ; preds = %114
  %120 = load %11*, %11** %5, align 8
  %121 = call %12* @224(%11* %120)
  store %12* %121, %12** %13, align 8
  %122 = load %12*, %12** %13, align 8
  %123 = icmp eq %12* %122, null
  br i1 %123, label %124, label %125

; <label>:124:                                    ; preds = %119
  store i1 false, i1* %4, align 1
  br label %156

; <label>:125:                                    ; preds = %119
  %126 = load i8*, i8** %11, align 8
  %127 = load %12*, %12** %13, align 8
  %128 = getelementptr inbounds %12, %12* %127, i32 0, i32 0
  store i8* %126, i8** %128, align 8
  %129 = load %12*, %12** %12, align 8
  %130 = getelementptr inbounds %12, %12* %129, i32 0, i32 1
  %131 = load %12*, %12** %130, align 8
  %132 = load %12*, %12** %13, align 8
  %133 = getelementptr inbounds %12, %12* %132, i32 0, i32 1
  store %12* %131, %12** %133, align 8
  %134 = load %12*, %12** %13, align 8
  %135 = load %12*, %12** %12, align 8
  %136 = getelementptr inbounds %12, %12* %135, i32 0, i32 1
  store %12* %134, %12** %136, align 8
  br label %145

; <label>:137:                                    ; preds = %114
  %138 = load i8*, i8** %11, align 8
  %139 = load %12*, %12** %12, align 8
  %140 = getelementptr inbounds %12, %12* %139, i32 0, i32 0
  store i8* %138, i8** %140, align 8
  %141 = load %11*, %11** %5, align 8
  %142 = getelementptr inbounds %11, %11* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %142, align 8
  br label %145

; <label>:145:                                    ; preds = %137, %125
  %146 = load %12*, %12** %8, align 8
  %147 = getelementptr inbounds %12, %12* %146, i32 0, i32 0
  store i8* null, i8** %147, align 8
  %148 = load %11*, %11** %6, align 8
  %149 = getelementptr inbounds %11, %11* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = add i64 %150, -1
  store i64 %151, i64* %149, align 8
  br label %152

; <label>:152:                                    ; preds = %24, %145, %87
  %153 = load %12*, %12** %8, align 8
  %154 = getelementptr inbounds %12, %12* %153, i32 1
  store %12* %154, %12** %8, align 8
  br label %18

; <label>:155:                                    ; preds = %18
  store i1 true, i1* %4, align 1
  br label %156

; <label>:156:                                    ; preds = %155, %124
  %157 = load i1, i1* %4, align 1
  ret i1 %157
}

; Function Attrs: noinline nounwind uwtable
define internal void @223(%11*, %12*) #3 {
  %3 = alloca %11*, align 8
  %4 = alloca %12*, align 8
  store %11* %0, %11** %3, align 8
  store %12* %1, %12** %4, align 8
  %5 = load %12*, %12** %4, align 8
  %6 = getelementptr inbounds %12, %12* %5, i32 0, i32 0
  store i8* null, i8** %6, align 8
  %7 = load %11*, %11** %3, align 8
  %8 = getelementptr inbounds %11, %11* %7, i32 0, i32 9
  %9 = load %12*, %12** %8, align 8
  %10 = load %12*, %12** %4, align 8
  %11 = getelementptr inbounds %12, %12* %10, i32 0, i32 1
  store %12* %9, %12** %11, align 8
  %12 = load %12*, %12** %4, align 8
  %13 = load %11*, %11** %3, align 8
  %14 = getelementptr inbounds %11, %11* %13, i32 0, i32 9
  store %12* %12, %12** %14, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal %12* @224(%11*) #3 {
  %2 = alloca %11*, align 8
  %3 = alloca %12*, align 8
  store %11* %0, %11** %2, align 8
  %4 = load %11*, %11** %2, align 8
  %5 = getelementptr inbounds %11, %11* %4, i32 0, i32 9
  %6 = load %12*, %12** %5, align 8
  %7 = icmp ne %12* %6, null
  br i1 %7, label %8, label %17

; <label>:8:                                      ; preds = %1
  %9 = load %11*, %11** %2, align 8
  %10 = getelementptr inbounds %11, %11* %9, i32 0, i32 9
  %11 = load %12*, %12** %10, align 8
  store %12* %11, %12** %3, align 8
  %12 = load %12*, %12** %3, align 8
  %13 = getelementptr inbounds %12, %12* %12, i32 0, i32 1
  %14 = load %12*, %12** %13, align 8
  %15 = load %11*, %11** %2, align 8
  %16 = getelementptr inbounds %11, %11* %15, i32 0, i32 9
  store %12* %14, %12** %16, align 8
  br label %20

; <label>:17:                                     ; preds = %1
  %18 = call noalias i8* @malloc(i64 16) #8
  %19 = bitcast i8* %18 to %12*
  store %12* %19, %12** %3, align 8
  br label %20

; <label>:20:                                     ; preds = %17, %8
  %21 = load %12*, %12** %3, align 8
  ret %12* %21
}

; Function Attrs: noinline nounwind uwtable
define i8* @hash_insert(%11*, i8*) #3 {
  %3 = alloca i8*, align 8
  %4 = alloca %11*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %12*, align 8
  %8 = alloca %4*, align 8
  %9 = alloca float, align 4
  %10 = alloca %12*, align 8
  store %11* %0, %11** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

; <label>:13:                                     ; preds = %2
  call void @abort() #11
  unreachable

; <label>:14:                                     ; preds = %2
  %15 = load %11*, %11** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i8* @225(%11* %15, i8* %16, %12** %7, i1 zeroext false)
  store i8* %17, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %21

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** %3, align 8
  br label %134

; <label>:21:                                     ; preds = %14
  %22 = load %11*, %11** %4, align 8
  %23 = getelementptr inbounds %11, %11* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = uitofp i64 %24 to float
  %26 = load %11*, %11** %4, align 8
  %27 = getelementptr inbounds %11, %11* %26, i32 0, i32 5
  %28 = load %4*, %4** %27, align 8
  %29 = getelementptr inbounds %4, %4* %28, i32 0, i32 2
  %30 = load float, float* %29, align 4
  %31 = load %11*, %11** %4, align 8
  %32 = getelementptr inbounds %11, %11* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = uitofp i64 %33 to float
  %35 = fmul float %30, %34
  %36 = fcmp ogt float %25, %35
  br i1 %36, label %37, label %93

; <label>:37:                                     ; preds = %21
  %38 = load %11*, %11** %4, align 8
  %39 = call zeroext i1 @217(%11* %38)
  %40 = load %11*, %11** %4, align 8
  %41 = getelementptr inbounds %11, %11* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = uitofp i64 %42 to float
  %44 = load %11*, %11** %4, align 8
  %45 = getelementptr inbounds %11, %11* %44, i32 0, i32 5
  %46 = load %4*, %4** %45, align 8
  %47 = getelementptr inbounds %4, %4* %46, i32 0, i32 2
  %48 = load float, float* %47, align 4
  %49 = load %11*, %11** %4, align 8
  %50 = getelementptr inbounds %11, %11* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = uitofp i64 %51 to float
  %53 = fmul float %48, %52
  %54 = fcmp ogt float %43, %53
  br i1 %54, label %55, label %93

; <label>:55:                                     ; preds = %37
  %56 = load %11*, %11** %4, align 8
  %57 = getelementptr inbounds %11, %11* %56, i32 0, i32 5
  %58 = load %4*, %4** %57, align 8
  store %4* %58, %4** %8, align 8
  %59 = load %4*, %4** %8, align 8
  %60 = getelementptr inbounds %4, %4* %59, i32 0, i32 4
  %61 = load i8, i8* %60, align 4
  %62 = trunc i8 %61 to i1
  %63 = load %11*, %11** %4, align 8
  %64 = getelementptr inbounds %11, %11* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = uitofp i64 %65 to float
  %67 = load %4*, %4** %8, align 8
  %68 = getelementptr inbounds %4, %4* %67, i32 0, i32 3
  %69 = load float, float* %68, align 4
  %70 = fmul float %66, %69
  br i1 %62, label %76, label %71

; <label>:71:                                     ; preds = %55
  %72 = load %4*, %4** %8, align 8
  %73 = getelementptr inbounds %4, %4* %72, i32 0, i32 2
  %74 = load float, float* %73, align 4
  %75 = fmul float %70, %74
  br label %76

; <label>:76:                                     ; preds = %55, %71
  %77 = phi float [ %75, %71 ], [ %70, %55 ]
  store float %77, float* %9, align 4
  %78 = load float, float* %9, align 4
  %79 = fcmp ole float 0x43F0000000000000, %78
  br i1 %79, label %80, label %81

; <label>:80:                                     ; preds = %76
  store i8* null, i8** %3, align 8
  br label %134

; <label>:81:                                     ; preds = %76
  %82 = load %11*, %11** %4, align 8
  %83 = load float, float* %9, align 4
  %84 = fptoui float %83 to i64
  %85 = call zeroext i1 @hash_rehash(%11* %82, i64 %84)
  br i1 %85, label %87, label %86

; <label>:86:                                     ; preds = %81
  store i8* null, i8** %3, align 8
  br label %134

; <label>:87:                                     ; preds = %81
  %88 = load %11*, %11** %4, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = call i8* @225(%11* %88, i8* %89, %12** %7, i1 zeroext false)
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %93

; <label>:92:                                     ; preds = %87
  call void @abort() #11
  unreachable

; <label>:93:                                     ; preds = %37, %87, %21
  %94 = load %12*, %12** %7, align 8
  %95 = getelementptr inbounds %12, %12* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %121

; <label>:98:                                     ; preds = %93
  %99 = load %11*, %11** %4, align 8
  %100 = call %12* @224(%11* %99)
  store %12* %100, %12** %10, align 8
  %101 = load %12*, %12** %10, align 8
  %102 = icmp eq %12* %101, null
  br i1 %102, label %103, label %104

; <label>:103:                                    ; preds = %98
  store i8* null, i8** %3, align 8
  br label %134

; <label>:104:                                    ; preds = %98
  %105 = load i8*, i8** %5, align 8
  %106 = load %12*, %12** %10, align 8
  %107 = getelementptr inbounds %12, %12* %106, i32 0, i32 0
  store i8* %105, i8** %107, align 8
  %108 = load %12*, %12** %7, align 8
  %109 = getelementptr inbounds %12, %12* %108, i32 0, i32 1
  %110 = load %12*, %12** %109, align 8
  %111 = load %12*, %12** %10, align 8
  %112 = getelementptr inbounds %12, %12* %111, i32 0, i32 1
  store %12* %110, %12** %112, align 8
  %113 = load %12*, %12** %10, align 8
  %114 = load %12*, %12** %7, align 8
  %115 = getelementptr inbounds %12, %12* %114, i32 0, i32 1
  store %12* %113, %12** %115, align 8
  %116 = load %11*, %11** %4, align 8
  %117 = getelementptr inbounds %11, %11* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %117, align 8
  %120 = load i8*, i8** %5, align 8
  store i8* %120, i8** %3, align 8
  br label %134

; <label>:121:                                    ; preds = %93
  %122 = load i8*, i8** %5, align 8
  %123 = load %12*, %12** %7, align 8
  %124 = getelementptr inbounds %12, %12* %123, i32 0, i32 0
  store i8* %122, i8** %124, align 8
  %125 = load %11*, %11** %4, align 8
  %126 = getelementptr inbounds %11, %11* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %126, align 8
  %129 = load %11*, %11** %4, align 8
  %130 = getelementptr inbounds %11, %11* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %130, align 8
  %133 = load i8*, i8** %5, align 8
  store i8* %133, i8** %3, align 8
  br label %134

; <label>:134:                                    ; preds = %121, %104, %103, %86, %80, %19
  %135 = load i8*, i8** %3, align 8
  ret i8* %135
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @225(%11*, i8*, %12**, i1 zeroext) #3 {
  %5 = alloca i8*, align 8
  %6 = alloca %11*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %12**, align 8
  %9 = alloca i8, align 1
  %10 = alloca %12*, align 8
  %11 = alloca %12*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %12*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %12*, align 8
  store %11* %0, %11** %6, align 8
  store i8* %1, i8** %7, align 8
  store %12** %2, %12*** %8, align 8
  %16 = zext i1 %3 to i8
  store i8 %16, i8* %9, align 1
  %17 = load %11*, %11** %6, align 8
  %18 = getelementptr inbounds %11, %11* %17, i32 0, i32 0
  %19 = load %12*, %12** %18, align 8
  %20 = load %11*, %11** %6, align 8
  %21 = getelementptr inbounds %11, %11* %20, i32 0, i32 6
  %22 = load i64 (i8*, i64)*, i64 (i8*, i64)** %21, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load %11*, %11** %6, align 8
  %25 = getelementptr inbounds %11, %11* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i64 %22(i8* %23, i64 %26)
  %28 = getelementptr inbounds %12, %12* %19, i64 %27
  store %12* %28, %12** %10, align 8
  %29 = load %12*, %12** %10, align 8
  %30 = load %11*, %11** %6, align 8
  %31 = getelementptr inbounds %11, %11* %30, i32 0, i32 1
  %32 = load %12*, %12** %31, align 8
  %33 = icmp ult %12* %29, %32
  br i1 %33, label %35, label %34

; <label>:34:                                     ; preds = %4
  call void @abort() #11
  unreachable

; <label>:35:                                     ; preds = %4
  %36 = load %12*, %12** %10, align 8
  %37 = load %12**, %12*** %8, align 8
  store %12* %36, %12** %37, align 8
  %38 = load %12*, %12** %10, align 8
  %39 = getelementptr inbounds %12, %12* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %35
  store i8* null, i8** %5, align 8
  br label %135

; <label>:43:                                     ; preds = %35
  %44 = load i8*, i8** %7, align 8
  %45 = load %12*, %12** %10, align 8
  %46 = getelementptr inbounds %12, %12* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = icmp eq i8* %44, %47
  br i1 %48, label %58, label %49

; <label>:49:                                     ; preds = %43
  %50 = load %11*, %11** %6, align 8
  %51 = getelementptr inbounds %11, %11* %50, i32 0, i32 7
  %52 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %51, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load %12*, %12** %10, align 8
  %55 = getelementptr inbounds %12, %12* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call zeroext i1 %52(i8* %53, i8* %56)
  br i1 %57, label %58, label %83

; <label>:58:                                     ; preds = %49, %43
  %59 = load %12*, %12** %10, align 8
  %60 = getelementptr inbounds %12, %12* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %12, align 8
  %62 = load i8, i8* %9, align 1
  %63 = trunc i8 %62 to i1
  br i1 %63, label %64, label %81

; <label>:64:                                     ; preds = %58
  %65 = load %12*, %12** %10, align 8
  %66 = getelementptr inbounds %12, %12* %65, i32 0, i32 1
  %67 = load %12*, %12** %66, align 8
  %68 = icmp ne %12* %67, null
  %69 = load %12*, %12** %10, align 8
  br i1 %68, label %70, label %79

; <label>:70:                                     ; preds = %64
  %71 = getelementptr inbounds %12, %12* %69, i32 0, i32 1
  %72 = load %12*, %12** %71, align 8
  store %12* %72, %12** %13, align 8
  %73 = load %12*, %12** %10, align 8
  %74 = load %12*, %12** %13, align 8
  %75 = bitcast %12* %73 to i8*
  %76 = bitcast %12* %74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %76, i64 16, i32 8, i1 false)
  %77 = load %11*, %11** %6, align 8
  %78 = load %12*, %12** %13, align 8
  call void @223(%11* %77, %12* %78)
  br label %81

; <label>:79:                                     ; preds = %64
  %80 = getelementptr inbounds %12, %12* %69, i32 0, i32 0
  store i8* null, i8** %80, align 8
  br label %81

; <label>:81:                                     ; preds = %70, %79, %58
  %82 = load i8*, i8** %12, align 8
  store i8* %82, i8** %5, align 8
  br label %135

; <label>:83:                                     ; preds = %49
  %84 = load %12*, %12** %10, align 8
  store %12* %84, %12** %11, align 8
  br label %85

; <label>:85:                                     ; preds = %130, %83
  %86 = load %12*, %12** %11, align 8
  %87 = getelementptr inbounds %12, %12* %86, i32 0, i32 1
  %88 = load %12*, %12** %87, align 8
  %89 = icmp ne %12* %88, null
  br i1 %89, label %90, label %134

; <label>:90:                                     ; preds = %85
  %91 = load i8*, i8** %7, align 8
  %92 = load %12*, %12** %11, align 8
  %93 = getelementptr inbounds %12, %12* %92, i32 0, i32 1
  %94 = load %12*, %12** %93, align 8
  %95 = getelementptr inbounds %12, %12* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = icmp eq i8* %91, %96
  br i1 %97, label %109, label %98

; <label>:98:                                     ; preds = %90
  %99 = load %11*, %11** %6, align 8
  %100 = getelementptr inbounds %11, %11* %99, i32 0, i32 7
  %101 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %100, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = load %12*, %12** %11, align 8
  %104 = getelementptr inbounds %12, %12* %103, i32 0, i32 1
  %105 = load %12*, %12** %104, align 8
  %106 = getelementptr inbounds %12, %12* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call zeroext i1 %101(i8* %102, i8* %107)
  br i1 %108, label %109, label %130

; <label>:109:                                    ; preds = %98, %90
  %110 = load %12*, %12** %11, align 8
  %111 = getelementptr inbounds %12, %12* %110, i32 0, i32 1
  %112 = load %12*, %12** %111, align 8
  %113 = getelementptr inbounds %12, %12* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  store i8* %114, i8** %14, align 8
  %115 = load i8, i8* %9, align 1
  %116 = trunc i8 %115 to i1
  br i1 %116, label %117, label %128

; <label>:117:                                    ; preds = %109
  %118 = load %12*, %12** %11, align 8
  %119 = getelementptr inbounds %12, %12* %118, i32 0, i32 1
  %120 = load %12*, %12** %119, align 8
  store %12* %120, %12** %15, align 8
  %121 = load %12*, %12** %15, align 8
  %122 = getelementptr inbounds %12, %12* %121, i32 0, i32 1
  %123 = load %12*, %12** %122, align 8
  %124 = load %12*, %12** %11, align 8
  %125 = getelementptr inbounds %12, %12* %124, i32 0, i32 1
  store %12* %123, %12** %125, align 8
  %126 = load %11*, %11** %6, align 8
  %127 = load %12*, %12** %15, align 8
  call void @223(%11* %126, %12* %127)
  br label %128

; <label>:128:                                    ; preds = %117, %109
  %129 = load i8*, i8** %14, align 8
  store i8* %129, i8** %5, align 8
  br label %135

; <label>:130:                                    ; preds = %98
  %131 = load %12*, %12** %11, align 8
  %132 = getelementptr inbounds %12, %12* %131, i32 0, i32 1
  %133 = load %12*, %12** %132, align 8
  store %12* %133, %12** %11, align 8
  br label %85

; <label>:134:                                    ; preds = %85
  store i8* null, i8** %5, align 8
  br label %135

; <label>:135:                                    ; preds = %134, %128, %81, %42
  %136 = load i8*, i8** %5, align 8
  ret i8* %136
}

; Function Attrs: noinline nounwind uwtable
define i8* @hash_delete(%11*, i8*) #3 {
  %3 = alloca i8*, align 8
  %4 = alloca %11*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %12*, align 8
  %8 = alloca %4*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %12*, align 8
  %11 = alloca %12*, align 8
  store %11* %0, %11** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %11*, %11** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i8* @225(%11* %12, i8* %13, %12** %7, i1 zeroext true)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

; <label>:17:                                     ; preds = %2
  store i8* null, i8** %3, align 8
  br label %111

; <label>:18:                                     ; preds = %2
  %19 = load %11*, %11** %4, align 8
  %20 = getelementptr inbounds %11, %11* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* %20, align 8
  %23 = load %12*, %12** %7, align 8
  %24 = getelementptr inbounds %12, %12* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %109, label %27

; <label>:27:                                     ; preds = %18
  %28 = load %11*, %11** %4, align 8
  %29 = getelementptr inbounds %11, %11* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, -1
  store i64 %31, i64* %29, align 8
  %32 = load %11*, %11** %4, align 8
  %33 = getelementptr inbounds %11, %11* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = uitofp i64 %34 to float
  %36 = load %11*, %11** %4, align 8
  %37 = getelementptr inbounds %11, %11* %36, i32 0, i32 5
  %38 = load %4*, %4** %37, align 8
  %39 = getelementptr inbounds %4, %4* %38, i32 0, i32 0
  %40 = load float, float* %39, align 4
  %41 = load %11*, %11** %4, align 8
  %42 = getelementptr inbounds %11, %11* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = uitofp i64 %43 to float
  %45 = fmul float %40, %44
  %46 = fcmp olt float %35, %45
  br i1 %46, label %47, label %109

; <label>:47:                                     ; preds = %27
  %48 = load %11*, %11** %4, align 8
  %49 = call zeroext i1 @217(%11* %48)
  %50 = load %11*, %11** %4, align 8
  %51 = getelementptr inbounds %11, %11* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = uitofp i64 %52 to float
  %54 = load %11*, %11** %4, align 8
  %55 = getelementptr inbounds %11, %11* %54, i32 0, i32 5
  %56 = load %4*, %4** %55, align 8
  %57 = getelementptr inbounds %4, %4* %56, i32 0, i32 0
  %58 = load float, float* %57, align 4
  %59 = load %11*, %11** %4, align 8
  %60 = getelementptr inbounds %11, %11* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = uitofp i64 %61 to float
  %63 = fmul float %58, %62
  %64 = fcmp olt float %53, %63
  br i1 %64, label %65, label %109

; <label>:65:                                     ; preds = %47
  %66 = load %11*, %11** %4, align 8
  %67 = getelementptr inbounds %11, %11* %66, i32 0, i32 5
  %68 = load %4*, %4** %67, align 8
  store %4* %68, %4** %8, align 8
  %69 = load %4*, %4** %8, align 8
  %70 = getelementptr inbounds %4, %4* %69, i32 0, i32 4
  %71 = load i8, i8* %70, align 4
  %72 = trunc i8 %71 to i1
  %73 = load %11*, %11** %4, align 8
  %74 = getelementptr inbounds %11, %11* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = uitofp i64 %75 to float
  %77 = load %4*, %4** %8, align 8
  %78 = getelementptr inbounds %4, %4* %77, i32 0, i32 1
  %79 = load float, float* %78, align 4
  %80 = fmul float %76, %79
  br i1 %72, label %86, label %81

; <label>:81:                                     ; preds = %65
  %82 = load %4*, %4** %8, align 8
  %83 = getelementptr inbounds %4, %4* %82, i32 0, i32 2
  %84 = load float, float* %83, align 4
  %85 = fmul float %80, %84
  br label %86

; <label>:86:                                     ; preds = %65, %81
  %87 = phi float [ %85, %81 ], [ %80, %65 ]
  %88 = fptoui float %87 to i64
  store i64 %88, i64* %9, align 8
  %89 = load %11*, %11** %4, align 8
  %90 = load i64, i64* %9, align 8
  %91 = call zeroext i1 @hash_rehash(%11* %89, i64 %90)
  br i1 %91, label %109, label %92

; <label>:92:                                     ; preds = %86
  %93 = load %11*, %11** %4, align 8
  %94 = getelementptr inbounds %11, %11* %93, i32 0, i32 9
  %95 = load %12*, %12** %94, align 8
  store %12* %95, %12** %10, align 8
  br label %96

; <label>:96:                                     ; preds = %99, %92
  %97 = load %12*, %12** %10, align 8
  %98 = icmp ne %12* %97, null
  br i1 %98, label %99, label %106

; <label>:99:                                     ; preds = %96
  %100 = load %12*, %12** %10, align 8
  %101 = getelementptr inbounds %12, %12* %100, i32 0, i32 1
  %102 = load %12*, %12** %101, align 8
  store %12* %102, %12** %11, align 8
  %103 = load %12*, %12** %10, align 8
  %104 = bitcast %12* %103 to i8*
  call void @free(i8* %104) #8
  %105 = load %12*, %12** %11, align 8
  store %12* %105, %12** %10, align 8
  br label %96

; <label>:106:                                    ; preds = %96
  %107 = load %11*, %11** %4, align 8
  %108 = getelementptr inbounds %11, %11* %107, i32 0, i32 9
  store %12* null, %12** %108, align 8
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
define void @i_ring_init(%14*, i32) #3 {
  %3 = alloca %14*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %14* %0, %14** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %14*, %14** %3, align 8
  %7 = getelementptr inbounds %14, %14* %6, i32 0, i32 4
  store i8 1, i8* %7, align 4
  %8 = load %14*, %14** %3, align 8
  %9 = getelementptr inbounds %14, %14* %8, i32 0, i32 2
  store i32 0, i32* %9, align 4
  %10 = load %14*, %14** %3, align 8
  %11 = getelementptr inbounds %14, %14* %10, i32 0, i32 3
  store i32 0, i32* %11, align 4
  store i32 0, i32* %5, align 4
  br label %12

; <label>:12:                                     ; preds = %17, %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 4
  %15 = load i32, i32* %4, align 4
  %16 = load %14*, %14** %3, align 8
  br i1 %14, label %17, label %24

; <label>:17:                                     ; preds = %12
  %18 = getelementptr inbounds %14, %14* %16, i32 0, i32 0
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 %20
  store i32 %15, i32* %21, align 4
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %12

; <label>:24:                                     ; preds = %12
  %25 = getelementptr inbounds %14, %14* %16, i32 0, i32 1
  store i32 %15, i32* %25, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define zeroext i1 @i_ring_empty(%14*) #3 {
  %2 = alloca %14*, align 8
  store %14* %0, %14** %2, align 8
  %3 = load %14*, %14** %2, align 8
  %4 = getelementptr inbounds %14, %14* %3, i32 0, i32 4
  %5 = load i8, i8* %4, align 4
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: noinline nounwind uwtable
define i32 @i_ring_push(%14*, i32) #3 {
  %3 = alloca %14*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %14* %0, %14** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %14*, %14** %3, align 8
  %8 = getelementptr inbounds %14, %14* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %14*, %14** %3, align 8
  %11 = getelementptr inbounds %14, %14* %10, i32 0, i32 4
  %12 = load i8, i8* %11, align 4
  %13 = trunc i8 %12 to i1
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = add i32 %9, %15
  %17 = urem i32 %16, 4
  store i32 %17, i32* %5, align 4
  %18 = load %14*, %14** %3, align 8
  %19 = getelementptr inbounds %14, %14* %18, i32 0, i32 0
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load %14*, %14** %3, align 8
  %26 = getelementptr inbounds %14, %14* %25, i32 0, i32 0
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i64 0, i64 %28
  store i32 %24, i32* %29, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %14*, %14** %3, align 8
  %32 = getelementptr inbounds %14, %14* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load %14*, %14** %3, align 8
  %35 = getelementptr inbounds %14, %14* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %52

; <label>:38:                                     ; preds = %2
  %39 = load %14*, %14** %3, align 8
  %40 = getelementptr inbounds %14, %14* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %14*, %14** %3, align 8
  %43 = getelementptr inbounds %14, %14* %42, i32 0, i32 4
  %44 = load i8, i8* %43, align 4
  %45 = trunc i8 %44 to i1
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = add i32 %41, %47
  %49 = urem i32 %48, 4
  %50 = load %14*, %14** %3, align 8
  %51 = getelementptr inbounds %14, %14* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  br label %52

; <label>:52:                                     ; preds = %38, %2
  %53 = load %14*, %14** %3, align 8
  %54 = getelementptr inbounds %14, %14* %53, i32 0, i32 4
  store i8 0, i8* %54, align 4
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

; Function Attrs: noinline nounwind uwtable
define i32 @i_ring_pop(%14*) #3 {
  %2 = alloca %14*, align 8
  %3 = alloca i32, align 4
  store %14* %0, %14** %2, align 8
  %4 = load %14*, %14** %2, align 8
  %5 = call zeroext i1 @i_ring_empty(%14* %4)
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  call void @abort() #11
  unreachable

; <label>:7:                                      ; preds = %1
  %8 = load %14*, %14** %2, align 8
  %9 = getelementptr inbounds %14, %14* %8, i32 0, i32 0
  %10 = load %14*, %14** %2, align 8
  %11 = getelementptr inbounds %14, %14* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %3, align 4
  %16 = load %14*, %14** %2, align 8
  %17 = getelementptr inbounds %14, %14* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %14*, %14** %2, align 8
  %20 = getelementptr inbounds %14, %14* %19, i32 0, i32 0
  %21 = load %14*, %14** %2, align 8
  %22 = getelementptr inbounds %14, %14* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 %24
  store i32 %18, i32* %25, align 4
  %26 = load %14*, %14** %2, align 8
  %27 = getelementptr inbounds %14, %14* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %14*, %14** %2, align 8
  %30 = getelementptr inbounds %14, %14* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %28, %31
  %33 = load %14*, %14** %2, align 8
  br i1 %32, label %34, label %36

; <label>:34:                                     ; preds = %7
  %35 = getelementptr inbounds %14, %14* %33, i32 0, i32 4
  store i8 1, i8* %35, align 4
  br label %44

; <label>:36:                                     ; preds = %7
  %37 = getelementptr inbounds %14, %14* %33, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = add i32 %38, 4
  %40 = sub i32 %39, 1
  %41 = urem i32 %40, 4
  %42 = load %14*, %14** %2, align 8
  %43 = getelementptr inbounds %14, %14* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  br label %44

; <label>:44:                                     ; preds = %36, %34
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

; Function Attrs: noinline nounwind uwtable
define i32 @open_safer(i8*, i32, ...) #3 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [1 x %17], align 16
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, 64
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %33

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds [1 x %17], [1 x %17]* %6, i32 0, i32 0
  %12 = bitcast %17* %11 to i8*
  call void @llvm.va_start(i8* %12)
  %13 = getelementptr inbounds [1 x %17], [1 x %17]* %6, i32 0, i32 0
  %14 = getelementptr inbounds %17, %17* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 16
  %16 = icmp ule i32 %15, 40
  br i1 %16, label %17, label %23

; <label>:17:                                     ; preds = %10
  %18 = getelementptr inbounds %17, %17* %13, i32 0, i32 3
  %19 = load i8*, i8** %18, align 16
  %20 = getelementptr i8, i8* %19, i32 %15
  %21 = bitcast i8* %20 to i32*
  %22 = add i32 %15, 8
  store i32 %22, i32* %14, align 16
  br label %28

; <label>:23:                                     ; preds = %10
  %24 = getelementptr inbounds %17, %17* %13, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = bitcast i8* %25 to i32*
  %27 = getelementptr i8, i8* %25, i32 8
  store i8* %27, i8** %24, align 8
  br label %28

; <label>:28:                                     ; preds = %23, %17
  %29 = phi i32* [ %21, %17 ], [ %26, %23 ]
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %5, align 4
  %31 = getelementptr inbounds [1 x %17], [1 x %17]* %6, i32 0, i32 0
  %32 = bitcast %17* %31 to i8*
  call void @llvm.va_end(i8* %32)
  br label %33

; <label>:33:                                     ; preds = %28, %2
  %34 = load i8*, i8** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 (i8*, i32, ...) @open(i8* %34, i32 %35, i32 %36)
  %38 = call i32 @fd_safer(i32 %37)
  ret i32 %38
}

declare i32 @open(i8*, i32, ...) #2

; Function Attrs: noinline nounwind uwtable
define i32 @openat_safer(i32, i8*, i32, ...) #3 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [1 x %17], align 16
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = and i32 %9, 64
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %35

; <label>:12:                                     ; preds = %3
  %13 = getelementptr inbounds [1 x %17], [1 x %17]* %8, i32 0, i32 0
  %14 = bitcast %17* %13 to i8*
  call void @llvm.va_start(i8* %14)
  %15 = getelementptr inbounds [1 x %17], [1 x %17]* %8, i32 0, i32 0
  %16 = getelementptr inbounds %17, %17* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 16
  %18 = icmp ule i32 %17, 40
  br i1 %18, label %19, label %25

; <label>:19:                                     ; preds = %12
  %20 = getelementptr inbounds %17, %17* %15, i32 0, i32 3
  %21 = load i8*, i8** %20, align 16
  %22 = getelementptr i8, i8* %21, i32 %17
  %23 = bitcast i8* %22 to i32*
  %24 = add i32 %17, 8
  store i32 %24, i32* %16, align 16
  br label %30

; <label>:25:                                     ; preds = %12
  %26 = getelementptr inbounds %17, %17* %15, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = bitcast i8* %27 to i32*
  %29 = getelementptr i8, i8* %27, i32 8
  store i8* %29, i8** %26, align 8
  br label %30

; <label>:30:                                     ; preds = %25, %19
  %31 = phi i32* [ %23, %19 ], [ %28, %25 ]
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = getelementptr inbounds [1 x %17], [1 x %17]* %8, i32 0, i32 0
  %34 = bitcast %17* %33 to i8*
  call void @llvm.va_end(i8* %34)
  br label %35

; <label>:35:                                     ; preds = %30, %3
  %36 = load i32, i32* %4, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 (i32, i8*, i32, ...) @openat(i32 %36, i8* %37, i32 %38, i32 %39)
  %41 = call i32 @fd_safer(i32 %40)
  ret i32 %41
}

; Function Attrs: noinline nounwind uwtable
define %15* @opendir_safer(i8*) #3 {
  %2 = alloca i8*, align 8
  %3 = alloca %15*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %15*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call %15* @opendir(i8* %8)
  store %15* %9, %15** %3, align 8
  %10 = load %15*, %15** %3, align 8
  %11 = icmp ne %15* %10, null
  br i1 %11, label %12, label %37

; <label>:12:                                     ; preds = %1
  %13 = load %15*, %15** %3, align 8
  %14 = call i32 @dirfd(%15* %13) #8
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp sle i32 0, %15
  %17 = load i32, i32* %4, align 4
  %18 = icmp sle i32 %17, 2
  %or.cond = and i1 %16, %18
  br i1 %or.cond, label %19, label %37

; <label>:19:                                     ; preds = %12
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @dup_safer(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call %15* @fdopendir(i32 %22)
  store %15* %23, %15** %5, align 8
  %24 = call i32* @__errno_location() #14
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load %15*, %15** %5, align 8
  %27 = icmp ne %15* %26, null
  br i1 %27, label %31, label %28

; <label>:28:                                     ; preds = %19
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @close(i32 %29)
  br label %31

; <label>:31:                                     ; preds = %28, %19
  %32 = load %15*, %15** %3, align 8
  %33 = call i32 @closedir(%15* %32)
  %34 = load i32, i32* %6, align 4
  %35 = call i32* @__errno_location() #14
  store i32 %34, i32* %35, align 4
  %36 = load %15*, %15** %5, align 8
  store %15* %36, %15** %3, align 8
  br label %37

; <label>:37:                                     ; preds = %12, %31, %1
  %38 = load %15*, %15** %3, align 8
  ret %15* %38
}

declare %15* @opendir(i8*) #2

; Function Attrs: noinline nounwind uwtable
define i8* @quote_n(i32, i8*) #3 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i8*, i8** %4, align 8
  %7 = call i8* @quotearg_n_style(i32 %5, i32 6, i8* %6)
  ret i8* %7
}

; Function Attrs: noinline nounwind uwtable
define i8* @quote(i8*) #3 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i8* @quote_n(i32 0, i8* %3)
  ret i8* %4
}

; Function Attrs: noinline nounwind uwtable
define %5* @clone_quoting_options(%5*) #3 {
  %2 = alloca %5*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %5*, align 8
  store %5* %0, %5** %2, align 8
  %5 = call i32* @__errno_location() #14
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %5*, %5** %2, align 8
  %8 = icmp ne %5* %7, null
  %9 = load %5*, %5** %2, align 8
  %10 = select i1 %8, %5* %9, %5* @146
  %11 = bitcast %5* %10 to i8*
  %12 = call noalias i8* @xmemdup(i8* %11, i64 56)
  %13 = bitcast i8* %12 to %5*
  store %5* %13, %5** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32* @__errno_location() #14
  store i32 %14, i32* %15, align 4
  %16 = load %5*, %5** %4, align 8
  ret %5* %16
}

; Function Attrs: noinline nounwind uwtable
define i32 @get_quoting_style(%5*) #3 {
  %2 = alloca %5*, align 8
  store %5* %0, %5** %2, align 8
  %3 = load %5*, %5** %2, align 8
  %4 = icmp ne %5* %3, null
  %5 = load %5*, %5** %2, align 8
  %6 = select i1 %4, %5* %5, %5* @146
  %7 = getelementptr inbounds %5, %5* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define void @set_quoting_style(%5*, i32) #3 {
  %3 = alloca %5*, align 8
  %4 = alloca i32, align 4
  store %5* %0, %5** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %5*, %5** %3, align 8
  %7 = icmp ne %5* %6, null
  %8 = load %5*, %5** %3, align 8
  %9 = select i1 %7, %5* %8, %5* @146
  %10 = getelementptr inbounds %5, %5* %9, i32 0, i32 0
  store i32 %5, i32* %10, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @set_char_quoting(%5*, i8 signext, i32) #3 {
  %4 = alloca %5*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %5* %0, %5** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %11 = load i8, i8* %5, align 1
  store i8 %11, i8* %7, align 1
  %12 = load %5*, %5** %4, align 8
  %13 = icmp ne %5* %12, null
  %14 = load %5*, %5** %4, align 8
  %15 = select i1 %13, %5* %14, %5* @146
  %16 = getelementptr inbounds %5, %5* %15, i32 0, i32 2
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
define i32 @set_quoting_flags(%5*, i32) #3 {
  %3 = alloca %5*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %5* %0, %5** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %5*, %5** %3, align 8
  %7 = icmp ne %5* %6, null
  br i1 %7, label %9, label %8

; <label>:8:                                      ; preds = %2
  store %5* @146, %5** %3, align 8
  br label %9

; <label>:9:                                      ; preds = %8, %2
  %10 = load %5*, %5** %3, align 8
  %11 = getelementptr inbounds %5, %5* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %5*, %5** %3, align 8
  %15 = getelementptr inbounds %5, %5* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %5, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define void @set_custom_quoting(%5*, i8*, i8*) #3 {
  %4 = alloca %5*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %5* %0, %5** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %5*, %5** %4, align 8
  %8 = icmp ne %5* %7, null
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %3
  store %5* @146, %5** %4, align 8
  br label %10

; <label>:10:                                     ; preds = %9, %3
  %11 = load %5*, %5** %4, align 8
  %12 = getelementptr inbounds %5, %5* %11, i32 0, i32 0
  store i32 8, i32* %12, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  %or.cond = and i1 %14, %16
  br i1 %or.cond, label %18, label %17

; <label>:17:                                     ; preds = %10
  call void @abort() #11
  unreachable

; <label>:18:                                     ; preds = %10
  %19 = load i8*, i8** %5, align 8
  %20 = load %5*, %5** %4, align 8
  %21 = getelementptr inbounds %5, %5* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load %5*, %5** %4, align 8
  %24 = getelementptr inbounds %5, %5* %23, i32 0, i32 4
  store i8* %22, i8** %24, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %5*) #3 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %5*, align 8
  %11 = alloca %5*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store %5* %4, %5** %10, align 8
  %14 = load %5*, %5** %10, align 8
  %15 = icmp ne %5* %14, null
  %16 = load %5*, %5** %10, align 8
  %17 = select i1 %15, %5* %16, %5* @146
  store %5* %17, %5** %11, align 8
  %18 = call i32* @__errno_location() #14
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %12, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load %5*, %5** %11, align 8
  %25 = getelementptr inbounds %5, %5* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %5*, %5** %11, align 8
  %28 = getelementptr inbounds %5, %5* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %5*, %5** %11, align 8
  %31 = getelementptr inbounds %5, %5* %30, i32 0, i32 2
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* %31, i32 0, i32 0
  %33 = load %5*, %5** %11, align 8
  %34 = getelementptr inbounds %5, %5* %33, i32 0, i32 3
  %35 = load i8*, i8** %34, align 8
  %36 = load %5*, %5** %11, align 8
  %37 = getelementptr inbounds %5, %5* %36, i32 0, i32 4
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @226(i8* %20, i64 %21, i8* %22, i64 %23, i32 %26, i32 %29, i32* %32, i8* %35, i8* %38)
  store i64 %39, i64* %13, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i32* @__errno_location() #14
  store i32 %40, i32* %41, align 4
  %42 = load i64, i64* %13, align 8
  ret i64 %42
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @226(i8*, i64, i8*, i64, i32, i32, i32*, i8*, i8*) #3 {
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
  %32 = alloca %23, align 4
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
  %37 = call i64 @__ctype_get_mb_cur_max() #8
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
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @147, i32 0, i32 0), i8** %22, align 8
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
  %67 = call i8* @227(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @148, i32 0, i32 0), i32 %66)
  store i8* %67, i8** %18, align 8
  %68 = load i32, i32* %15, align 4
  %69 = call i8* @227(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @149, i32 0, i32 0), i32 %68)
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
  %97 = call i64 @strlen(i8* %96) #12
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
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @149, i32 0, i32 0), i8** %22, align 8
  store i64 1, i64* %23, align 8
  br label %116

; <label>:114:                                    ; preds = %9
  store i8 0, i8* %26, align 1
  br label %116

; <label>:115:                                    ; preds = %9
  call void @abort() #11
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
  %154 = call i32 @memcmp(i8* %151, i8* %152, i64 %153) #12
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
  %399 = call i16** @__ctype_b_loc() #14
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
  %411 = bitcast %23* %32 to i8*
  call void @llvm.memset.p0i8.i64(i8* %411, i8 0, i64 8, i32 4, i1 false)
  store i64 0, i64* %30, align 8
  store i8 1, i8* %31, align 1
  %412 = load i64, i64* %14, align 8
  %413 = icmp eq i64 %412, -1
  br i1 %413, label %414, label %417

; <label>:414:                                    ; preds = %410
  %415 = load i8*, i8** %13, align 8
  %416 = call i64 @strlen(i8* %415) #12
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
  %429 = call i64 @mbrtowc(i32* %33, i8* %423, i64 %428, %23* %32) #8
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
  %483 = call i32 @iswprint(i32 %482) #8
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
  %490 = call i32 @mbsinit(%23* %32) #12
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
  %706 = call i64 @226(i8* %697, i64 %698, i8* %699, i64 %700, i32 %701, i32 %703, i32* null, i8* %704, i8* %705)
  store i64 %706, i64* %10, align 8
  br label %707

; <label>:707:                                    ; preds = %696, %694
  %708 = load i64, i64* %10, align 8
  ret i64 %708
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #5

; Function Attrs: noinline nounwind uwtable
define internal i8* @227(i8*, i32) #3 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp eq i8* %7, %8
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 7
  %or.cond = and i1 %9, %11
  %spec.store.select = select i1 %or.cond, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @147, i32 0, i32 0), i8* %6
  store i8* %spec.store.select, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  ret i8* %12
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #7

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %23*) #5

; Function Attrs: nounwind
declare i32 @iswprint(i32) #5

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%23*) #6

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_alloc(i8*, i64, %5*) #3 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %5*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %5* %2, %5** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load %5*, %5** %6, align 8
  %10 = call i8* @quotearg_alloc_mem(i8* %7, i64 %8, i64* null, %5* %9)
  ret i8* %10
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %5*) #3 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %5*, align 8
  %9 = alloca %5*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store %5* %3, %5** %8, align 8
  %14 = load %5*, %5** %8, align 8
  %15 = icmp ne %5* %14, null
  %16 = load %5*, %5** %8, align 8
  %17 = select i1 %15, %5* %16, %5* @146
  store %5* %17, %5** %9, align 8
  %18 = call i32* @__errno_location() #14
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %5*, %5** %9, align 8
  %21 = getelementptr inbounds %5, %5* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i64*, i64** %7, align 8
  %24 = icmp ne i64* %23, null
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 0, i32 1
  %27 = or i32 %22, %26
  store i32 %27, i32* %11, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load %5*, %5** %9, align 8
  %31 = getelementptr inbounds %5, %5* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load %5*, %5** %9, align 8
  %35 = getelementptr inbounds %5, %5* %34, i32 0, i32 2
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* %35, i32 0, i32 0
  %37 = load %5*, %5** %9, align 8
  %38 = getelementptr inbounds %5, %5* %37, i32 0, i32 3
  %39 = load i8*, i8** %38, align 8
  %40 = load %5*, %5** %9, align 8
  %41 = getelementptr inbounds %5, %5* %40, i32 0, i32 4
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @226(i8* null, i64 0, i8* %28, i64 %29, i32 %32, i32 %33, i32* %36, i8* %39, i8* %42)
  %44 = add i64 %43, 1
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %12, align 8
  %46 = call noalias i8* @xcharalloc(i64 %45)
  store i8* %46, i8** %13, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = load i64, i64* %12, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load %5*, %5** %9, align 8
  %52 = getelementptr inbounds %5, %5* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load %5*, %5** %9, align 8
  %56 = getelementptr inbounds %5, %5* %55, i32 0, i32 2
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* %56, i32 0, i32 0
  %58 = load %5*, %5** %9, align 8
  %59 = getelementptr inbounds %5, %5* %58, i32 0, i32 3
  %60 = load i8*, i8** %59, align 8
  %61 = load %5*, %5** %9, align 8
  %62 = getelementptr inbounds %5, %5* %61, i32 0, i32 4
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @226(i8* %47, i64 %48, i8* %49, i64 %50, i32 %53, i32 %54, i32* %57, i8* %60, i8* %63)
  %65 = load i32, i32* %10, align 4
  %66 = call i32* @__errno_location() #14
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
define void @quotearg_free() #3 {
  %1 = alloca %6*, align 8
  %2 = alloca i32, align 4
  %3 = load %6*, %6** @150, align 8
  store %6* %3, %6** %1, align 8
  store i32 1, i32* %2, align 4
  br label %4

; <label>:4:                                      ; preds = %9, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @151, align 4
  %7 = icmp ult i32 %5, %6
  %8 = load %6*, %6** %1, align 8
  br i1 %7, label %9, label %17

; <label>:9:                                      ; preds = %4
  %10 = load i32, i32* %2, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %6, %6* %8, i64 %11
  %13 = getelementptr inbounds %6, %6* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  call void @free(i8* %14) #8
  %15 = load i32, i32* %2, align 4
  %16 = add i32 %15, 1
  store i32 %16, i32* %2, align 4
  br label %4

; <label>:17:                                     ; preds = %4
  %18 = getelementptr inbounds %6, %6* %8, i64 0
  %19 = getelementptr inbounds %6, %6* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, getelementptr inbounds ([256 x i8], [256 x i8]* @152, i32 0, i32 0)
  br i1 %21, label %22, label %27

; <label>:22:                                     ; preds = %17
  %23 = load %6*, %6** %1, align 8
  %24 = getelementptr inbounds %6, %6* %23, i64 0
  %25 = getelementptr inbounds %6, %6* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  call void @free(i8* %26) #8
  store i64 256, i64* getelementptr inbounds (%6, %6* @153, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @152, i32 0, i32 0), i8** getelementptr inbounds (%6, %6* @153, i32 0, i32 1), align 8
  br label %27

; <label>:27:                                     ; preds = %22, %17
  %28 = load %6*, %6** %1, align 8
  %29 = icmp ne %6* %28, @153
  br i1 %29, label %30, label %33

; <label>:30:                                     ; preds = %27
  %31 = load %6*, %6** %1, align 8
  %32 = bitcast %6* %31 to i8*
  call void @free(i8* %32) #8
  store %6* @153, %6** @150, align 8
  br label %33

; <label>:33:                                     ; preds = %30, %27
  store i32 1, i32* @151, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_n(i32, i8*) #3 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i8*, i8** %4, align 8
  %7 = call i8* @228(i32 %5, i8* %6, i64 -1, %5* @146)
  ret i8* %7
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @228(i32, i8*, i64, %5*) #3 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %5*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %6*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %5* %3, %5** %8, align 8
  %18 = call i32* @__errno_location() #14
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %6*, %6** @150, align 8
  store %6* %21, %6** %11, align 8
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %4
  call void @abort() #11
  unreachable

; <label>:25:                                     ; preds = %4
  %26 = load i32, i32* @151, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ule i32 %26, %27
  br i1 %28, label %29, label %67

; <label>:29:                                     ; preds = %25
  %30 = load i32, i32* %10, align 4
  %31 = add i32 %30, 1
  %32 = zext i32 %31 to i64
  store i64 %32, i64* %12, align 8
  %33 = load %6*, %6** %11, align 8
  %34 = icmp eq %6* %33, @153
  %35 = zext i1 %34 to i8
  store i8 %35, i8* %13, align 1
  %36 = load i64, i64* %12, align 8
  %37 = icmp ult i64 1152921504606846975, %36
  br i1 %37, label %38, label %39

; <label>:38:                                     ; preds = %29
  call void @xalloc_die() #13
  unreachable

; <label>:39:                                     ; preds = %29
  %40 = load i8, i8* %13, align 1
  %41 = trunc i8 %40 to i1
  %42 = load %6*, %6** %11, align 8
  %43 = select i1 %41, %6* null, %6* %42
  %44 = bitcast %6* %43 to i8*
  %45 = load i64, i64* %12, align 8
  %46 = mul i64 %45, 16
  %47 = call i8* @xrealloc(i8* %44, i64 %46)
  %48 = bitcast i8* %47 to %6*
  store %6* %48, %6** %11, align 8
  store %6* %48, %6** @150, align 8
  %49 = load i8, i8* %13, align 1
  %50 = trunc i8 %49 to i1
  br i1 %50, label %51, label %54

; <label>:51:                                     ; preds = %39
  %52 = load %6*, %6** %11, align 8
  %53 = bitcast %6* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* bitcast (%6* @153 to i8*), i64 16, i32 8, i1 false)
  br label %54

; <label>:54:                                     ; preds = %51, %39
  %55 = load %6*, %6** %11, align 8
  %56 = load i32, i32* @151, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %6, %6* %55, i64 %57
  %59 = bitcast %6* %58 to i8*
  %60 = load i64, i64* %12, align 8
  %61 = load i32, i32* @151, align 4
  %62 = zext i32 %61 to i64
  %63 = sub i64 %60, %62
  %64 = mul i64 %63, 16
  call void @llvm.memset.p0i8.i64(i8* %59, i8 0, i64 %64, i32 8, i1 false)
  %65 = load i64, i64* %12, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* @151, align 4
  br label %67

; <label>:67:                                     ; preds = %54, %25
  %68 = load %6*, %6** %11, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %6, %6* %68, i64 %70
  %72 = getelementptr inbounds %6, %6* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %14, align 8
  %74 = load %6*, %6** %11, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %6, %6* %74, i64 %76
  %78 = getelementptr inbounds %6, %6* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %15, align 8
  %80 = load %5*, %5** %8, align 8
  %81 = getelementptr inbounds %5, %5* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, 1
  store i32 %83, i32* %16, align 4
  %84 = load i8*, i8** %15, align 8
  %85 = load i64, i64* %14, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = load i64, i64* %7, align 8
  %88 = load %5*, %5** %8, align 8
  %89 = getelementptr inbounds %5, %5* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %16, align 4
  %92 = load %5*, %5** %8, align 8
  %93 = getelementptr inbounds %5, %5* %92, i32 0, i32 2
  %94 = getelementptr inbounds [8 x i32], [8 x i32]* %93, i32 0, i32 0
  %95 = load %5*, %5** %8, align 8
  %96 = getelementptr inbounds %5, %5* %95, i32 0, i32 3
  %97 = load i8*, i8** %96, align 8
  %98 = load %5*, %5** %8, align 8
  %99 = getelementptr inbounds %5, %5* %98, i32 0, i32 4
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 @226(i8* %84, i64 %85, i8* %86, i64 %87, i32 %90, i32 %91, i32* %94, i8* %97, i8* %100)
  store i64 %101, i64* %17, align 8
  %102 = load i64, i64* %14, align 8
  %103 = load i64, i64* %17, align 8
  %104 = icmp ule i64 %102, %103
  br i1 %104, label %105, label %143

; <label>:105:                                    ; preds = %67
  %106 = load i64, i64* %17, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %14, align 8
  %108 = load %6*, %6** %11, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %6, %6* %108, i64 %110
  %112 = getelementptr inbounds %6, %6* %111, i32 0, i32 0
  store i64 %107, i64* %112, align 8
  %113 = load i8*, i8** %15, align 8
  %114 = icmp ne i8* %113, getelementptr inbounds ([256 x i8], [256 x i8]* @152, i32 0, i32 0)
  br i1 %114, label %115, label %117

; <label>:115:                                    ; preds = %105
  %116 = load i8*, i8** %15, align 8
  call void @free(i8* %116) #8
  br label %117

; <label>:117:                                    ; preds = %115, %105
  %118 = load i64, i64* %14, align 8
  %119 = call noalias i8* @xcharalloc(i64 %118)
  store i8* %119, i8** %15, align 8
  %120 = load %6*, %6** %11, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %6, %6* %120, i64 %122
  %124 = getelementptr inbounds %6, %6* %123, i32 0, i32 1
  store i8* %119, i8** %124, align 8
  %125 = load i8*, i8** %15, align 8
  %126 = load i64, i64* %14, align 8
  %127 = load i8*, i8** %6, align 8
  %128 = load i64, i64* %7, align 8
  %129 = load %5*, %5** %8, align 8
  %130 = getelementptr inbounds %5, %5* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %16, align 4
  %133 = load %5*, %5** %8, align 8
  %134 = getelementptr inbounds %5, %5* %133, i32 0, i32 2
  %135 = getelementptr inbounds [8 x i32], [8 x i32]* %134, i32 0, i32 0
  %136 = load %5*, %5** %8, align 8
  %137 = getelementptr inbounds %5, %5* %136, i32 0, i32 3
  %138 = load i8*, i8** %137, align 8
  %139 = load %5*, %5** %8, align 8
  %140 = getelementptr inbounds %5, %5* %139, i32 0, i32 4
  %141 = load i8*, i8** %140, align 8
  %142 = call i64 @226(i8* %125, i64 %126, i8* %127, i64 %128, i32 %131, i32 %132, i32* %135, i8* %138, i8* %141)
  br label %143

; <label>:143:                                    ; preds = %117, %67
  %144 = load i32, i32* %9, align 4
  %145 = call i32* @__errno_location() #14
  store i32 %144, i32* %145, align 4
  %146 = load i8*, i8** %15, align 8
  ret i8* %146
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) #3 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i8* @228(i32 %7, i8* %8, i64 %9, %5* @146)
  ret i8* %10
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg(i8*) #3 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i8* @quotearg_n(i32 0, i8* %3)
  ret i8* %4
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_mem(i8*, i64) #3 {
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
define i8* @quotearg_n_style(i32, i32, i8*) #3 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %5, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* %5, align 4
  call void @229(%5* sret %7, i32 %8)
  %9 = load i32, i32* %4, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = call i8* @228(i32 %9, i8* %10, i64 -1, %5* %7)
  ret i8* %11
}

; Function Attrs: noinline nounwind uwtable
define internal void @229(%5* noalias sret, i32) #3 {
  %3 = alloca i32, align 4
  %4 = alloca %5, align 8
  store i32 %1, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = getelementptr inbounds %5, %5* %4, i32 0, i32 0
  store i32 %5, i32* %6, align 8
  %7 = getelementptr inbounds %5, %5* %4, i32 0, i32 1
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds %5, %5* %4, i32 0, i32 2
  %9 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i32 0, i32 0
  %10 = bitcast i32* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 32, i32 8, i1 false)
  %11 = bitcast %5* %0 to i8*
  %12 = bitcast %5* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 56, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) #3 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %5, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i32, i32* %6, align 4
  call void @229(%5* sret %9, i32 %10)
  %11 = load i32, i32* %5, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = load i64, i64* %8, align 8
  %14 = call i8* @228(i32 %11, i8* %12, i64 %13, %5* %9)
  ret i8* %14
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_style(i32, i8*) #3 {
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
define i8* @quotearg_style_mem(i32, i8*, i64) #3 {
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
define i8* @quotearg_char_mem(i8*, i64, i8 signext) #3 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %5, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8 %2, i8* %6, align 1
  %8 = bitcast %5* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast (%5* @146 to i8*), i64 56, i32 8, i1 false)
  %9 = load i8, i8* %6, align 1
  %10 = call i32 @set_char_quoting(%5* %7, i8 signext %9, i32 1)
  %11 = load i8*, i8** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i8* @228(i32 0, i8* %11, i64 %12, %5* %7)
  ret i8* %13
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_char(i8*, i8 signext) #3 {
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
define i8* @quotearg_colon(i8*) #3 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i8* @quotearg_char(i8* %3, i8 signext 58)
  ret i8* %4
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_colon_mem(i8*, i64) #3 {
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
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) #3 {
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
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) #3 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %5, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = bitcast %5* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* bitcast (%5* @146 to i8*), i64 56, i32 8, i1 false)
  %13 = load i8*, i8** %7, align 8
  %14 = load i8*, i8** %8, align 8
  call void @set_custom_quoting(%5* %11, i8* %13, i8* %14)
  %15 = load i32, i32* %6, align 4
  %16 = load i8*, i8** %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = call i8* @228(i32 %15, i8* %16, i64 %17, %5* %11)
  ret i8* %18
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) #3 {
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
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) #3 {
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
define %3* @get_root_dev_ino(%3*) #3 {
  %2 = alloca %3*, align 8
  %3 = alloca %3*, align 8
  %4 = alloca %8, align 8
  store %3* %0, %3** %3, align 8
  %5 = call i32 @lstat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @154, i32 0, i32 0), %8* %4) #8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  store %3* null, %3** %2, align 8
  br label %18

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %8, %8* %4, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load %3*, %3** %3, align 8
  %12 = getelementptr inbounds %3, %3* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = getelementptr inbounds %8, %8* %4, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %3*, %3** %3, align 8
  %16 = getelementptr inbounds %3, %3* %15, i32 0, i32 1
  store i64 %14, i64* %16, align 8
  %17 = load %3*, %3** %3, align 8
  store %3* %17, %3** %2, align 8
  br label %18

; <label>:18:                                     ; preds = %8, %7
  %19 = load %3*, %3** %2, align 8
  ret %3* %19
}

; Function Attrs: noinline nounwind uwtable
define zeroext i1 @strip_trailing_slashes(i8*) #3 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i8* @last_component(i8* %6)
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %13, label %11

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** %2, align 8
  store i8* %12, i8** %3, align 8
  br label %13

; <label>:13:                                     ; preds = %11, %1
  %14 = load i8*, i8** %3, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @base_len(i8* %15)
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  store i8* %17, i8** %4, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %5, align 1
  %23 = load i8*, i8** %4, align 8
  store i8 0, i8* %23, align 1
  %24 = load i8, i8* %5, align 1
  %25 = trunc i8 %24 to i1
  ret i1 %25
}

; Function Attrs: noinline nounwind uwtable
define zeroext i1 @can_write_any_file() #3 {
  %1 = alloca i8, align 1
  %2 = load i8, i8* @155, align 1
  %3 = trunc i8 %2 to i1
  br i1 %3, label %11, label %4

; <label>:4:                                      ; preds = %0
  store i8 0, i8* %1, align 1
  %5 = call i32 @geteuid() #8
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %1, align 1
  %8 = load i8, i8* %1, align 1
  %9 = trunc i8 %8 to i1
  %10 = zext i1 %9 to i8
  store i8 %10, i8* @156, align 1
  store i8 1, i8* @155, align 1
  br label %11

; <label>:11:                                     ; preds = %4, %0
  %12 = load i8, i8* @156, align 1
  %13 = trunc i8 %12 to i1
  ret i1 %13
}

; Function Attrs: nounwind
declare i32 @geteuid() #5

; Function Attrs: noinline nounwind uwtable
define noalias i8* @xnmalloc(i64, i64) #3 {
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
  call void @xalloc_die() #13
  unreachable

; <label>:10:                                     ; preds = %2
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* %4, align 8
  %13 = mul i64 %11, %12
  %14 = call noalias i8* @xmalloc(i64 %13)
  ret i8* %14
}

; Function Attrs: noinline nounwind uwtable
define noalias i8* @xmalloc(i64) #3 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call noalias i8* @malloc(i64 %4) #8
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  %8 = load i64, i64* %2, align 8
  %9 = icmp ne i64 %8, 0
  %or.cond = and i1 %7, %9
  br i1 %or.cond, label %10, label %11

; <label>:10:                                     ; preds = %1
  call void @xalloc_die() #13
  unreachable

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** %3, align 8
  ret i8* %12
}

; Function Attrs: noinline nounwind uwtable
define i8* @xnrealloc(i8*, i64, i64) #3 {
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
  call void @xalloc_die() #13
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
define i8* @xrealloc(i8*, i64) #3 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i8* @realloc(i8* %5, i64 %6) #8
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp eq i8* %8, null
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  %or.cond = and i1 %9, %11
  br i1 %or.cond, label %12, label %13

; <label>:12:                                     ; preds = %2
  call void @xalloc_die() #13
  unreachable

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %3, align 8
  ret i8* %14
}

; Function Attrs: noinline nounwind uwtable
define i8* @x2nrealloc(i8*, i64*, i64) #3 {
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
  %17 = udiv i64 64, %16
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
  call void @xalloc_die() #13
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
define noalias i8* @xcharalloc(i64) #3 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call noalias i8* @xmalloc(i64 %3)
  ret i8* %4
}

; Function Attrs: noinline nounwind uwtable
define i8* @x2realloc(i8*, i64*) #3 {
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
define noalias i8* @xzalloc(i64) #3 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call noalias i8* @xmalloc(i64 %3)
  %5 = load i64, i64* %2, align 8
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 %5, i32 1, i1 false)
  ret i8* %4
}

; Function Attrs: noinline nounwind uwtable
define noalias i8* @xcalloc(i64, i64) #3 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call noalias i8* @calloc(i64 %6, i64 %7) #8
  store i8* %8, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %2
  call void @xalloc_die() #13
  unreachable

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %5, align 8
  ret i8* %12
}

; Function Attrs: noinline nounwind uwtable
define noalias i8* @xmemdup(i8*, i64) #3 {
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
define noalias i8* @xstrdup(i8*) #3 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i64 @strlen(i8* %4) #12
  %6 = add i64 %5, 1
  %7 = call noalias i8* @xmemdup(i8* %3, i64 %6)
  ret i8* %7
}

; Function Attrs: noinline nounwind uwtable
define zeroext i1 @yesno() #3 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  %3 = call i32 @getchar()
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp eq i32 %4, 121
  %6 = load i32, i32* %2, align 4
  %7 = icmp eq i32 %6, 89
  %8 = select i1 %5, i1 true, i1 %7
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %1, align 1
  br label %10

; <label>:10:                                     ; preds = %16, %0
  %11 = load i32, i32* %2, align 4
  %12 = icmp ne i32 %11, 10
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, -1
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %18

; <label>:16:                                     ; preds = %10
  %17 = call i32 @getchar()
  store i32 %17, i32* %2, align 4
  br label %10

; <label>:18:                                     ; preds = %10
  %19 = load i8, i8* %1, align 1
  %20 = trunc i8 %19 to i1
  ret i1 %20
}

declare i32 @getchar() #2

; Function Attrs: noinline nounwind uwtable
define zeroext i1 @euidaccess_stat(%8*, i32) #3 {
  %3 = alloca i1, align 1
  %4 = alloca %8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %8* %0, %8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, 7
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %2
  store i1 true, i1* %3, align 1
  br label %65

; <label>:14:                                     ; preds = %2
  %15 = call i32 @geteuid() #8
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %29

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22

; <label>:22:                                     ; preds = %18
  %23 = load %8*, %8** %4, align 8
  %24 = getelementptr inbounds %8, %8* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, 73
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %22, %18
  store i1 true, i1* %3, align 1
  br label %65

; <label>:29:                                     ; preds = %22, %14
  %30 = load %8*, %8** %4, align 8
  %31 = getelementptr inbounds %8, %8* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load %8*, %8** %4, align 8
  %35 = getelementptr inbounds %8, %8* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %41

; <label>:38:                                     ; preds = %29
  %39 = load i32, i32* %7, align 4
  %40 = lshr i32 %39, 6
  store i32 %40, i32* %7, align 4
  br label %57

; <label>:41:                                     ; preds = %29
  %42 = call i32 @getegid() #8
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load %8*, %8** %4, align 8
  %45 = getelementptr inbounds %8, %8* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %43, %46
  br i1 %47, label %54, label %48

; <label>:48:                                     ; preds = %41
  %49 = load %8*, %8** %4, align 8
  %50 = getelementptr inbounds %8, %8* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @group_member(i32 %51) #8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

; <label>:54:                                     ; preds = %48, %41
  %55 = load i32, i32* %7, align 4
  %56 = lshr i32 %55, 3
  store i32 %56, i32* %7, align 4
  br label %57

; <label>:57:                                     ; preds = %48, %54, %38
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %7, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

; <label>:63:                                     ; preds = %57
  store i1 true, i1* %3, align 1
  br label %65

; <label>:64:                                     ; preds = %57
  store i1 false, i1* %3, align 1
  br label %65

; <label>:65:                                     ; preds = %64, %63, %28, %13
  %66 = load i1, i1* %3, align 1
  ret i1 %66
}

; Function Attrs: nounwind
declare i32 @getegid() #5

; Function Attrs: nounwind
declare i32 @group_member(i32) #5

; Function Attrs: noinline nounwind uwtable
define %9* @xfts_open(i8**, i32, i32 (%10**, %10**)*) #3 {
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32 (%10**, %10**)*, align 8
  %7 = alloca %9*, align 8
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 (%10**, %10**)* %2, i32 (%10**, %10**)** %6, align 8
  %8 = load i8**, i8*** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = or i32 %9, 512
  %11 = load i32 (%10**, %10**)*, i32 (%10**, %10**)** %6, align 8
  %12 = call %9* @fts_open(i8** %8, i32 %10, i32 (%10**, %10**)* %11)
  store %9* %12, %9** %7, align 8
  %13 = load %9*, %9** %7, align 8
  %14 = icmp eq %9* %13, null
  br i1 %14, label %15, label %21

; <label>:15:                                     ; preds = %3
  %16 = call i32* @__errno_location() #14
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 22
  br i1 %18, label %20, label %19

; <label>:19:                                     ; preds = %15
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @157, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @158, i32 0, i32 0), i32 41, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @159, i32 0, i32 0)) #11
  unreachable

; <label>:20:                                     ; preds = %15
  call void @xalloc_die() #13
  unreachable

; <label>:21:                                     ; preds = %3
  %22 = load %9*, %9** %7, align 8
  ret %9* %22
}

; Function Attrs: noinline nounwind uwtable
define zeroext i1 @cycle_warning_required(%9*, %10*) #3 {
  %3 = alloca %9*, align 8
  %4 = alloca %10*, align 8
  store %9* %0, %9** %3, align 8
  store %10* %1, %10** %4, align 8
  %5 = load %9*, %9** %3, align 8
  %6 = getelementptr inbounds %9, %9* %5, i32 0, i32 10
  %7 = load i32, i32* %6, align 8
  %8 = and i32 %7, 16
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

; <label>:10:                                     ; preds = %2
  %11 = load %9*, %9** %3, align 8
  %12 = getelementptr inbounds %9, %9* %11, i32 0, i32 10
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %33

; <label>:16:                                     ; preds = %10, %2
  %17 = load %9*, %9** %3, align 8
  %18 = getelementptr inbounds %9, %9* %17, i32 0, i32 10
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 16
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

; <label>:22:                                     ; preds = %16
  %23 = load %9*, %9** %3, align 8
  %24 = getelementptr inbounds %9, %9* %23, i32 0, i32 10
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

; <label>:28:                                     ; preds = %22
  %29 = load %10*, %10** %4, align 8
  %30 = getelementptr inbounds %10, %10* %29, i32 0, i32 11
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br label %33

; <label>:33:                                     ; preds = %16, %22, %28, %10
  %34 = phi i1 [ true, %10 ], [ false, %22 ], [ false, %16 ], [ %32, %28 ]
  ret i1 %34
}

; Function Attrs: noinline nounwind uwtable
define i64 @freadahead(%0*) #3 {
  %2 = alloca i64, align 8
  %3 = alloca %0*, align 8
  store %0* %0, %0** %3, align 8
  %4 = load %0*, %0** %3, align 8
  %5 = getelementptr inbounds %0, %0* %4, i32 0, i32 5
  %6 = load i8*, i8** %5, align 8
  %7 = load %0*, %0** %3, align 8
  %8 = getelementptr inbounds %0, %0* %7, i32 0, i32 4
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ugt i8* %6, %9
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %1
  store i64 0, i64* %2, align 8
  br label %40

; <label>:12:                                     ; preds = %1
  %13 = load %0*, %0** %3, align 8
  %14 = getelementptr inbounds %0, %0* %13, i32 0, i32 2
  %15 = load i8*, i8** %14, align 8
  %16 = load %0*, %0** %3, align 8
  %17 = getelementptr inbounds %0, %0* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = ptrtoint i8* %15 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = sub i64 %19, %20
  %22 = load %0*, %0** %3, align 8
  %23 = getelementptr inbounds %0, %0* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, 256
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

; <label>:27:                                     ; preds = %12
  %28 = load %0*, %0** %3, align 8
  %29 = getelementptr inbounds %0, %0* %28, i32 0, i32 11
  %30 = load i8*, i8** %29, align 8
  %31 = load %0*, %0** %3, align 8
  %32 = getelementptr inbounds %0, %0* %31, i32 0, i32 9
  %33 = load i8*, i8** %32, align 8
  %34 = ptrtoint i8* %30 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  br label %37

; <label>:37:                                     ; preds = %12, %27
  %38 = phi i64 [ %36, %27 ], [ 0, %12 ]
  %39 = add nsw i64 %21, %38
  store i64 %39, i64* %2, align 8
  br label %40

; <label>:40:                                     ; preds = %37, %11
  %41 = load i64, i64* %2, align 8
  ret i64 %41
}

; Function Attrs: noinline noreturn nounwind uwtable
define void @xalloc_die() #0 {
  %1 = load volatile i32, i32* @exit_failure, align 4
  call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @160, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @161, i32 0, i32 0))
  call void @abort() #11
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define i32 @set_cloexec_flag(i32, i1 zeroext) #3 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  %8 = zext i1 %1 to i8
  store i8 %8, i8* %5, align 1
  %9 = load i32, i32* %4, align 4
  %10 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %9, i32 1, i32 0)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp sle i32 0, %11
  br i1 %12, label %13, label %29

; <label>:13:                                     ; preds = %2
  %14 = load i8, i8* %5, align 1
  %15 = trunc i8 %14 to i1
  %16 = load i32, i32* %6, align 4
  %17 = or i32 %16, 1
  %18 = and i32 %16, -2
  %19 = select i1 %15, i32 %17, i32 %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %28, label %23

; <label>:23:                                     ; preds = %13
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %24, i32 2, i32 %25)
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %23, %13
  store i32 0, i32* %3, align 4
  br label %30

; <label>:29:                                     ; preds = %23, %2
  store i32 -1, i32* %3, align 4
  br label %30

; <label>:30:                                     ; preds = %29, %28
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind uwtable
define i32 @dup_cloexec(i32) #3 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %3, i32 1030, i32 0)
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define i32 @close_stream(%0*) #3 {
  %2 = alloca i32, align 4
  %3 = alloca %0*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %0* %0, %0** %3, align 8
  %7 = load %0*, %0** %3, align 8
  %8 = call i64 @__fpending(%0* %7) #8
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %4, align 1
  %11 = load %0*, %0** %3, align 8
  %12 = call i32 @ferror_unlocked(%0* %11) #8
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i8
  store i8 %14, i8* %5, align 1
  %15 = load %0*, %0** %3, align 8
  %16 = call i32 @fclose(%0* %15)
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
  %28 = call i32* @__errno_location() #14
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 9
  br i1 %30, label %31, label %37

; <label>:31:                                     ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1
  %33 = trunc i8 %32 to i1
  br i1 %33, label %36, label %34

; <label>:34:                                     ; preds = %31
  %35 = call i32* @__errno_location() #14
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

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%0*) #5

declare i32 @fclose(%0*) #2

; Function Attrs: noinline nounwind uwtable
define void @cycle_check_init(%18*) #3 {
  %2 = alloca %18*, align 8
  store %18* %0, %18** %2, align 8
  %3 = load %18*, %18** %2, align 8
  %4 = getelementptr inbounds %18, %18* %3, i32 0, i32 1
  store i64 0, i64* %4, align 8
  %5 = load %18*, %18** %2, align 8
  %6 = getelementptr inbounds %18, %18* %5, i32 0, i32 2
  store i32 9827862, i32* %6, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define zeroext i1 @cycle_check(%18*, %8*) #3 {
  %3 = alloca i1, align 1
  %4 = alloca %18*, align 8
  %5 = alloca %8*, align 8
  store %18* %0, %18** %4, align 8
  store %8* %1, %8** %5, align 8
  %6 = load %18*, %18** %4, align 8
  %7 = getelementptr inbounds %18, %18* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 9827862
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @162, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @163, i32 0, i32 0), i32 60, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @164, i32 0, i32 0)) #11
  unreachable

; <label>:11:                                     ; preds = %2
  %12 = load %18*, %18** %4, align 8
  %13 = getelementptr inbounds %18, %18* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %35

; <label>:16:                                     ; preds = %11
  %17 = load %8*, %8** %5, align 8
  %18 = getelementptr inbounds %8, %8* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %18*, %18** %4, align 8
  %21 = getelementptr inbounds %18, %18* %20, i32 0, i32 0
  %22 = getelementptr inbounds %3, %3* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %19, %23
  br i1 %24, label %25, label %35

; <label>:25:                                     ; preds = %16
  %26 = load %8*, %8** %5, align 8
  %27 = getelementptr inbounds %8, %8* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %18*, %18** %4, align 8
  %30 = getelementptr inbounds %18, %18* %29, i32 0, i32 0
  %31 = getelementptr inbounds %3, %3* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %28, %32
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %25
  store i1 true, i1* %3, align 1
  br label %61

; <label>:35:                                     ; preds = %25, %16, %11
  %36 = load %18*, %18** %4, align 8
  %37 = getelementptr inbounds %18, %18* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %37, align 8
  %40 = call zeroext i1 @230(i64 %39)
  br i1 %40, label %41, label %60

; <label>:41:                                     ; preds = %35
  %42 = load %18*, %18** %4, align 8
  %43 = getelementptr inbounds %18, %18* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %41
  store i1 true, i1* %3, align 1
  br label %61

; <label>:47:                                     ; preds = %41
  %48 = load %8*, %8** %5, align 8
  %49 = getelementptr inbounds %8, %8* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %18*, %18** %4, align 8
  %52 = getelementptr inbounds %18, %18* %51, i32 0, i32 0
  %53 = getelementptr inbounds %3, %3* %52, i32 0, i32 1
  store i64 %50, i64* %53, align 8
  %54 = load %8*, %8** %5, align 8
  %55 = getelementptr inbounds %8, %8* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %18*, %18** %4, align 8
  %58 = getelementptr inbounds %18, %18* %57, i32 0, i32 0
  %59 = getelementptr inbounds %3, %3* %58, i32 0, i32 0
  store i64 %56, i64* %59, align 8
  br label %60

; <label>:60:                                     ; preds = %47, %35
  store i1 false, i1* %3, align 1
  br label %61

; <label>:61:                                     ; preds = %60, %46, %34
  %62 = load i1, i1* %3, align 1
  ret i1 %62
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @230(i64) #3 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = sub i64 %4, 1
  %6 = and i64 %3, %5
  %7 = icmp eq i64 %6, 0
  ret i1 %7
}

; Function Attrs: noinline nounwind uwtable
define i32 @dup_safer(i32) #3 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %3, i32 0, i32 3)
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define i32 @rpl_fcntl(i32, i32, ...) #3 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [1 x %17], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %6, align 4
  %11 = getelementptr inbounds [1 x %17], [1 x %17]* %5, i32 0, i32 0
  %12 = bitcast %17* %11 to i8*
  call void @llvm.va_start(i8* %12)
  %13 = load i32, i32* %4, align 4
  %cond = icmp eq i32 %13, 1030
  %14 = getelementptr inbounds [1 x %17], [1 x %17]* %5, i32 0, i32 0
  %15 = getelementptr inbounds %17, %17* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 16
  %17 = icmp ule i32 %16, 40
  br i1 %cond, label %18, label %80

; <label>:18:                                     ; preds = %2
  br i1 %17, label %19, label %25

; <label>:19:                                     ; preds = %18
  %20 = getelementptr inbounds %17, %17* %14, i32 0, i32 3
  %21 = load i8*, i8** %20, align 16
  %22 = getelementptr i8, i8* %21, i32 %16
  %23 = bitcast i8* %22 to i32*
  %24 = add i32 %16, 8
  store i32 %24, i32* %15, align 16
  br label %30

; <label>:25:                                     ; preds = %18
  %26 = getelementptr inbounds %17, %17* %14, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = bitcast i8* %27 to i32*
  %29 = getelementptr i8, i8* %27, i32 8
  store i8* %29, i8** %26, align 8
  br label %30

; <label>:30:                                     ; preds = %25, %19
  %31 = phi i32* [ %23, %19 ], [ %28, %25 ]
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @165, align 4
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
  %43 = call i32* @__errno_location() #14
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 22
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %42, %36
  store i32 1, i32* @165, align 4
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
  store i32 -1, i32* @165, align 4
  br label %57

; <label>:54:                                     ; preds = %30
  %55 = load i32, i32* %7, align 4
  %56 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %35, i32 0, i32 %55)
  store i32 %56, i32* %6, align 4
  br label %57

; <label>:57:                                     ; preds = %46, %53, %54
  %58 = load i32, i32* %6, align 4
  %59 = icmp sle i32 0, %58
  %60 = load i32, i32* @165, align 4
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
  %74 = call i32* @__errno_location() #14
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @close(i32 %76)
  %78 = load i32, i32* %9, align 4
  %79 = call i32* @__errno_location() #14
  store i32 %78, i32* %79, align 4
  store i32 -1, i32* %6, align 4
  br label %99

; <label>:80:                                     ; preds = %2
  br i1 %17, label %81, label %87

; <label>:81:                                     ; preds = %80
  %82 = getelementptr inbounds %17, %17* %14, i32 0, i32 3
  %83 = load i8*, i8** %82, align 16
  %84 = getelementptr i8, i8* %83, i32 %16
  %85 = bitcast i8* %84 to i8**
  %86 = add i32 %16, 8
  store i32 %86, i32* %15, align 16
  br label %92

; <label>:87:                                     ; preds = %80
  %88 = getelementptr inbounds %17, %17* %14, i32 0, i32 2
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
  %100 = getelementptr inbounds [1 x %17], [1 x %17]* %5, i32 0, i32 0
  %101 = bitcast %17* %100 to i8*
  call void @llvm.va_end(i8* %101)
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare i32 @fcntl(i32, i32, ...) #2

; Function Attrs: noinline nounwind uwtable
define i32 @fd_safer(i32) #3 {
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
  %12 = call i32* @__errno_location() #14
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @close(i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = call i32* @__errno_location() #14
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %3, align 4
  store i32 %18, i32* %2, align 4
  br label %19

; <label>:19:                                     ; preds = %9, %1
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

attributes #0 = { noinline noreturn nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { argmemonly nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind readonly }
attributes #13 = { noreturn }
attributes #14 = { nounwind readnone }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}

!0 = !{!"clang version 6.0.0 (tags/RELEASE_600/final)"}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
