; ModuleID = 'chown.bc_cu.bc'
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
%7 = type { i32, i8, %3*, i8, i8, i8*, i8* }
%8 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %3, %3, %3, [3 x i64] }
%9 = type { i8*, i8*, i32, i8** }
%10 = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%11 = type { %12*, %12*, %12**, i64, i8*, i32, i32, i64, i64, i32 (%12**, %12**)*, i32, %13*, %15, %16 }
%12 = type { %12*, %12*, %12*, i64, i8*, i8*, i8*, i32, i32, i64, %11*, i64, i64, i64, i16, i16, i16, [1 x %8], [1 x i8] }
%13 = type { %14*, %14*, i64, i64, i64, %4*, i64 (i8*, i64)*, i1 (i8*, i8*)*, void (i8*)*, %14* }
%14 = type { i8*, %14* }
%15 = type { %13* }
%16 = type { [4 x i32], i32, i32, i32, i8 }
%17 = type { i32, i32, i8*, i8* }
%18 = type { %3, i64, i32 }
%19 = type { i64, i64, %12* }
%20 = type { i64, i64, i16, i8, [256 x i8] }
%21 = type opaque
%22 = type { i64, i8 }
%23 = type { i64, i64, i64, i64, i64, i64, i64, %24, i64, i64, i64, [4 x i64] }
%24 = type { [2 x i32] }
%25 = type { i32, %26 }
%26 = type { i32 }

@stderr = external global %0*, align 8
@0 = private unnamed_addr constant [39 x i8] c"Try `%s --help' for more information.\0A\00", align 1
@1 = private unnamed_addr constant [97 x i8] c"Usage: %s [OPTION]... [OWNER][:[GROUP]] FILE...\0A  or:  %s [OPTION]... --reference=RFILE FILE...\0A\00", align 1
@stdout = external global %0*, align 8
@2 = private unnamed_addr constant [373 x i8] c"Change the owner and/or group of each FILE to OWNER and/or GROUP.\0AWith --reference, change the owner and group of each FILE to those of RFILE.\0A\0A  -c, --changes          like verbose but report only when a change is made\0A      --dereference      affect the referent of each symbolic link (this is\0A                         the default), rather than the symbolic link itself\0A\00", align 1
@3 = private unnamed_addr constant [201 x i8] c"  -h, --no-dereference   affect each symbolic link instead of any referenced\0A                         file (useful only on systems that can change the\0A                         ownership of a symlink)\0A\00", align 1
@4 = private unnamed_addr constant [341 x i8] c"      --from=CURRENT_OWNER:CURRENT_GROUP\0A                         change the owner and/or group of each file only if\0A                         its current owner and/or group match those specified\0A                         here.  Either may be omitted, in which case a match\0A                         is not required for the omitted attribute.\0A\00", align 1
@5 = private unnamed_addr constant [128 x i8] c"      --no-preserve-root  do not treat `/' specially (the default)\0A      --preserve-root    fail to operate recursively on `/'\0A\00", align 1
@6 = private unnamed_addr constant [316 x i8] c"  -f, --silent, --quiet  suppress most error messages\0A      --reference=RFILE  use RFILE's owner and group rather than\0A                         specifying OWNER:GROUP values\0A  -R, --recursive        operate on files and directories recursively\0A  -v, --verbose          output a diagnostic for every file processed\0A\0A\00", align 1
@7 = private unnamed_addr constant [464 x i8] c"The following options modify how a hierarchy is traversed when the -R\0Aoption is also specified.  If more than one is specified, only the final\0Aone takes effect.\0A\0A  -H                     if a command line argument is a symbolic link\0A                         to a directory, traverse it\0A  -L                     traverse every symbolic link to a directory\0A                         encountered\0A  -P                     do not traverse any symbolic links (default)\0A\0A\00", align 1
@8 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@9 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@10 = private unnamed_addr constant [192 x i8] c"\0AOwner is unchanged if missing.  Group is unchanged if missing, but changed\0Ato login group if implied by a `:' following a symbolic OWNER.\0AOWNER and GROUP may be numeric as well as symbolic.\0A\00", align 1
@11 = private unnamed_addr constant [201 x i8] c"\0AExamples:\0A  %s root /u        Change the owner of /u to \22root\22.\0A  %s root:staff /u  Likewise, but also change its group to \22staff\22.\0A  %s -hR root /u    Change the owner of /u and subfiles to \22root\22.\0A\00", align 1
@12 = private unnamed_addr constant [23 x i8] c"\0AReport %s bugs to %s\0A\00", align 1
@13 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@14 = private unnamed_addr constant [49 x i8] c"%s home page: <http://www.gnu.org/software/%s/>\0A\00", align 1
@15 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@16 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@17 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@18 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@19 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@20 = private unnamed_addr constant [65 x i8] c"For complete documentation, run: info coreutils '%s invocation'\0A\00", align 1
@21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@22 = private unnamed_addr constant [9 x i8] c"HLPRcfhv\00", align 1
@23 = internal constant [14 x %2] [%2 { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @32, i32 0, i32 0), i32 0, i32* null, i32 82 }, %2 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @33, i32 0, i32 0), i32 0, i32* null, i32 99 }, %2 { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @34, i32 0, i32 0), i32 0, i32* null, i32 128 }, %2 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @35, i32 0, i32 0), i32 1, i32* null, i32 129 }, %2 { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @36, i32 0, i32 0), i32 0, i32* null, i32 104 }, %2 { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @37, i32 0, i32 0), i32 0, i32* null, i32 130 }, %2 { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @38, i32 0, i32 0), i32 0, i32* null, i32 131 }, %2 { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @39, i32 0, i32 0), i32 0, i32* null, i32 102 }, %2 { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @40, i32 0, i32 0), i32 0, i32* null, i32 102 }, %2 { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @41, i32 0, i32 0), i32 1, i32* null, i32 132 }, %2 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @42, i32 0, i32 0), i32 0, i32* null, i32 118 }, %2 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @43, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %2 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @44, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %2 zeroinitializer], align 16
@24 = internal global i8* null, align 8
@25 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@26 = private unnamed_addr constant [42 x i8] c"-R --dereference requires either -H or -L\00", align 1
@optind = external global i32, align 4
@27 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@28 = private unnamed_addr constant [25 x i8] c"missing operand after %s\00", align 1
@29 = private unnamed_addr constant [31 x i8] c"failed to get attributes of %s\00", align 1
@30 = internal global %3 zeroinitializer, align 8
@31 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@32 = private unnamed_addr constant [10 x i8] c"recursive\00", align 1
@33 = private unnamed_addr constant [8 x i8] c"changes\00", align 1
@34 = private unnamed_addr constant [12 x i8] c"dereference\00", align 1
@35 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@36 = private unnamed_addr constant [15 x i8] c"no-dereference\00", align 1
@37 = private unnamed_addr constant [17 x i8] c"no-preserve-root\00", align 1
@38 = private unnamed_addr constant [14 x i8] c"preserve-root\00", align 1
@39 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@40 = private unnamed_addr constant [7 x i8] c"silent\00", align 1
@41 = private unnamed_addr constant [10 x i8] c"reference\00", align 1
@42 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@43 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@44 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@45 = private unnamed_addr constant [16 x i8] c"fts_read failed\00", align 1
@46 = private unnamed_addr constant [17 x i8] c"fts_close failed\00", align 1
@47 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@48 = private unnamed_addr constant [45 x i8] c"it is dangerous to operate recursively on %s\00", align 1
@49 = private unnamed_addr constant [58 x i8] c"it is dangerous to operate recursively on %s (same as %s)\00", align 1
@50 = private unnamed_addr constant [49 x i8] c"use --no-preserve-root to override this failsafe\00", align 1
@51 = private unnamed_addr constant [17 x i8] c"cannot access %s\00", align 1
@52 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@53 = private unnamed_addr constant [25 x i8] c"cannot read directory %s\00", align 1
@54 = private unnamed_addr constant [186 x i8] c"WARNING: Circular directory structure.\0AThis almost certainly means that you have a corrupted file system.\0ANOTIFY YOUR SYSTEM MANAGER.\0AThe following directory is part of the cycle:\0A  %s\0A\00", align 1
@55 = private unnamed_addr constant [22 x i8] c"cannot dereference %s\00", align 1
@56 = private unnamed_addr constant [25 x i8] c"changing ownership of %s\00", align 1
@57 = private unnamed_addr constant [21 x i8] c"changing group of %s\00", align 1
@58 = private unnamed_addr constant [56 x i8] c"neither symbolic link %s nor referent has been changed\0A\00", align 1
@59 = private unnamed_addr constant [2 x i8] c":\00", align 1
@60 = private unnamed_addr constant [27 x i8] c"changed group of %s to %s\0A\00", align 1
@61 = private unnamed_addr constant [30 x i8] c"no change to ownership of %s\0A\00", align 1
@62 = private unnamed_addr constant [31 x i8] c"changed ownership of %s to %s\0A\00", align 1
@63 = private unnamed_addr constant [36 x i8] c"failed to change group of %s to %s\0A\00", align 1
@64 = private unnamed_addr constant [34 x i8] c"failed to change ownership of %s\0A\00", align 1
@65 = private unnamed_addr constant [40 x i8] c"failed to change ownership of %s to %s\0A\00", align 1
@66 = private unnamed_addr constant [28 x i8] c"group of %s retained as %s\0A\00", align 1
@67 = private unnamed_addr constant [26 x i8] c"ownership of %s retained\0A\00", align 1
@68 = private unnamed_addr constant [32 x i8] c"ownership of %s retained as %s\0A\00", align 1
@69 = private unnamed_addr constant [10 x i8] c"8.2-dirty\00", align 1
@program_name = global i8* null, align 8
@70 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@71 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@72 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external global i8*, align 8
@program_invocation_name = external global i8*, align 8
@73 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@74 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@75 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@76 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@77 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@78 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@79 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@80 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@81 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@82 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@83 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@84 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@85 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@86 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@87 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@88 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@89 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@90 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@91 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@92 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16
@93 = internal global i8* null, align 8
@94 = internal global i8 0, align 1
@95 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@96 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@97 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4
@98 = private unnamed_addr constant [2 x i8] c".\00", align 1
@99 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@100 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@101 = private unnamed_addr constant [24 x i8] c"# entries:         %lu\0A\00", align 1
@102 = private unnamed_addr constant [24 x i8] c"# buckets:         %lu\0A\00", align 1
@103 = private unnamed_addr constant [33 x i8] c"# buckets used:    %lu (%.2f%%)\0A\00", align 1
@104 = private unnamed_addr constant [24 x i8] c"max bucket length: %lu\0A\00", align 1
@105 = internal constant %4 { float 0.000000e+00, float 1.000000e+00, float 0x3FE99999A0000000, float 0x3FF69FBE80000000, i8 0 }, align 4
@106 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@107 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@108 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@109 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@110 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@111 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@112 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@113 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@114 = internal global %5 zeroinitializer, align 8
@115 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@116 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@117 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@118 = internal global %6* @121, align 8
@119 = internal global i32 1, align 4
@120 = internal global [256 x i8] zeroinitializer, align 16
@121 = internal global %6 { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @120, i32 0, i32 0) }, align 8
@122 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@123 = internal global i8* getelementptr inbounds ([13 x i8], [13 x i8]* @129, i32 0, i32 0), align 8
@124 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@125 = internal global i8* getelementptr inbounds ([13 x i8], [13 x i8]* @128, i32 0, i32 0), align 8
@126 = internal global i8* getelementptr inbounds ([14 x i8], [14 x i8]* @127, i32 0, i32 0), align 8
@127 = private unnamed_addr constant [14 x i8] c"invalid group\00", align 1
@128 = private unnamed_addr constant [13 x i8] c"invalid user\00", align 1
@129 = private unnamed_addr constant [13 x i8] c"invalid spec\00", align 1
@130 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@131 = private unnamed_addr constant [20 x i8] c"../../lib/xstrtol.c\00", align 1
@132 = private unnamed_addr constant [81 x i8] c"strtol_error xstrtoul(const char *, char **, int, unsigned long *, const char *)\00", align 1
@133 = private unnamed_addr constant [16 x i8] c"errno != EINVAL\00", align 1
@134 = private unnamed_addr constant [17 x i8] c"../../lib/xfts.c\00", align 1
@135 = private unnamed_addr constant [78 x i8] c"FTS *xfts_open(char *const *, int, int (*)(const FTSENT **, const FTSENT **))\00", align 1
@136 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@137 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@138 = private unnamed_addr constant [25 x i8] c"state->magic == CC_MAGIC\00", align 1
@139 = private unnamed_addr constant [24 x i8] c"../../lib/cycle-check.c\00", align 1
@140 = private unnamed_addr constant [67 x i8] c"_Bool cycle_check(struct cycle_check_state *, const struct stat *)\00", align 1

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
  br label %35

; <label>:9:                                      ; preds = %1
  %10 = load i8*, i8** @program_name, align 8
  %11 = load i8*, i8** @program_name, align 8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @1, i32 0, i32 0), i8* %10, i8* %11)
  %13 = load %0*, %0** @stdout, align 8
  %14 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([373 x i8], [373 x i8]* @2, i32 0, i32 0), %0* %13)
  %15 = load %0*, %0** @stdout, align 8
  %16 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([201 x i8], [201 x i8]* @3, i32 0, i32 0), %0* %15)
  %17 = load %0*, %0** @stdout, align 8
  %18 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([341 x i8], [341 x i8]* @4, i32 0, i32 0), %0* %17)
  %19 = load %0*, %0** @stdout, align 8
  %20 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @5, i32 0, i32 0), %0* %19)
  %21 = load %0*, %0** @stdout, align 8
  %22 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([316 x i8], [316 x i8]* @6, i32 0, i32 0), %0* %21)
  %23 = load %0*, %0** @stdout, align 8
  %24 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([464 x i8], [464 x i8]* @7, i32 0, i32 0), %0* %23)
  %25 = load %0*, %0** @stdout, align 8
  %26 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @8, i32 0, i32 0), %0* %25)
  %27 = load %0*, %0** @stdout, align 8
  %28 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @9, i32 0, i32 0), %0* %27)
  %29 = load %0*, %0** @stdout, align 8
  %30 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([192 x i8], [192 x i8]* @10, i32 0, i32 0), %0* %29)
  %31 = load i8*, i8** @program_name, align 8
  %32 = load i8*, i8** @program_name, align 8
  %33 = load i8*, i8** @program_name, align 8
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([201 x i8], [201 x i8]* @11, i32 0, i32 0), i8* %31, i8* %32, i8* %33)
  call void @141()
  br label %35

; <label>:35:                                     ; preds = %9, %5
  %36 = load i32, i32* %2, align 4
  call void @exit(i32 %36) #10
  unreachable
}

declare i32 @fprintf(%0*, i8*, ...) #1

declare i32 @printf(i8*, ...) #1

declare i32 @fputs_unlocked(i8*, %0*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @141() #2 {
  %1 = alloca i8*, align 8
  %2 = load i8*, i8** @program_name, align 8
  %3 = call i8* @last_component(i8* %2)
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @13, i32 0, i32 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @16, i32 0, i32 0))
  %6 = load %0*, %0** @stdout, align 8
  %7 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @17, i32 0, i32 0), %0* %6)
  %8 = call i8* @setlocale(i32 5, i8* null) #7
  store i8* %8, i8** %1, align 8
  %9 = load i8*, i8** %1, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %19

; <label>:11:                                     ; preds = %0
  %12 = load i8*, i8** %1, align 8
  %13 = call i32 @strncmp(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @18, i32 0, i32 0), i64 3) #11
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

; <label>:15:                                     ; preds = %11
  %16 = load i8*, i8** @program_name, align 8
  %17 = call i8* @last_component(i8* %16)
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @19, i32 0, i32 0), i8* %17)
  br label %19

; <label>:19:                                     ; preds = %15, %11, %0
  %20 = load i8*, i8** @program_name, align 8
  %21 = call i8* @last_component(i8* %20)
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @20, i32 0, i32 0), i8* %21)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #4

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #5

; Function Attrs: noinline nounwind uwtable
define void @klee_dump_memory() #2 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32, i8**) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %7, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %8, align 8
  %18 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i8 0, i8* %5
  store i32 -1, i32* %6
  store i32 -1, i32* %7
  store i32 -1, i32* %8
  store i32 -1, i32* %9
  store i32 16, i32* %10
  store i32 -1, i32* %11
  %19 = load i8**, i8*** %4, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  call void @set_program_name(i8* %21)
  %22 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @21, i32 0, i32 0)) #7
  %23 = call i32 @atexit(void ()* @close_stdout) #7
  call void @chopt_init(%7* %12)
  %24 = load i32, i32* %3, align 4
  %25 = load i8**, i8*** %4, align 8
  %26 = call i32 @getopt_long(i32 %24, i8** %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), %2* getelementptr inbounds ([14 x %2], [14 x %2]* @23, i32 0, i32 0), i32* null) #7
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %2
  call void @usage(i32 1) #12
  unreachable

; <label>:29:                                     ; preds = %2
  call void @klee_dump_memory()
  %30 = getelementptr inbounds %7, %7* %12, i32 0, i32 1
  %31 = load i8, i8* %30, align 4
  %32 = trunc i8 %31 to i1
  br i1 %32, label %33, label %41

; <label>:33:                                     ; preds = %29
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %34, 16
  br i1 %35, label %36, label %42

; <label>:36:                                     ; preds = %33
  %37 = load i32, i32* %11, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %36
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @26, i32 0, i32 0))
  br label %40

; <label>:40:                                     ; preds = %39, %36
  store i32 0, i32* %11, align 4
  br label %42

; <label>:41:                                     ; preds = %29
  store i32 16, i32* %10, align 4
  br label %42

; <label>:42:                                     ; preds = %33, %40, %41
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  %45 = getelementptr inbounds %7, %7* %12, i32 0, i32 3
  %46 = zext i1 %44 to i8
  store i8 %46, i8* %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @optind, align 4
  %49 = sub nsw i32 %47, %48
  %50 = load i8*, i8** @24, align 8
  %51 = icmp ne i8* %50, null
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 1, i32 2
  %54 = icmp slt i32 %49, %53
  br i1 %54, label %55, label %69

; <label>:55:                                     ; preds = %42
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @optind, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %60

; <label>:59:                                     ; preds = %55
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @27, i32 0, i32 0))
  br label %68

; <label>:60:                                     ; preds = %55
  %61 = load i8**, i8*** %4, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %61, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i8* @quote(i8* %66)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @28, i32 0, i32 0), i8* %67)
  br label %68

; <label>:68:                                     ; preds = %60, %59
  call void @usage(i32 1) #12
  unreachable

; <label>:69:                                     ; preds = %42
  %70 = load i8*, i8** @24, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %94

; <label>:72:                                     ; preds = %69
  %73 = load i8*, i8** @24, align 8
  %74 = call i32 @stat(i8* %73, %8* %17) #7
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

; <label>:76:                                     ; preds = %72
  %77 = call i32* @__errno_location() #13
  %78 = load i32, i32* %77, align 4
  %79 = load i8*, i8** @24, align 8
  %80 = call i8* @quote(i8* %79)
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %78, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @29, i32 0, i32 0), i8* %80)
  br label %81

; <label>:81:                                     ; preds = %76, %72
  %82 = getelementptr inbounds %8, %8* %17, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %6, align 4
  %84 = getelementptr inbounds %8, %8* %17, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %7, align 4
  %86 = getelementptr inbounds %8, %8* %17, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @uid_to_name(i32 %87)
  %89 = getelementptr inbounds %7, %7* %12, i32 0, i32 5
  store i8* %88, i8** %89, align 8
  %90 = getelementptr inbounds %8, %8* %17, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = call i8* @gid_to_name(i32 %91)
  %93 = getelementptr inbounds %7, %7* %12, i32 0, i32 6
  store i8* %92, i8** %93, align 8
  br label %127

; <label>:94:                                     ; preds = %69
  %95 = load i8**, i8*** %4, align 8
  %96 = load i32, i32* @optind, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = getelementptr inbounds %7, %7* %12, i32 0, i32 5
  %101 = getelementptr inbounds %7, %7* %12, i32 0, i32 6
  %102 = call i8* @parse_user_spec(i8* %99, i32* %6, i32* %7, i8** %100, i8** %101)
  store i8* %102, i8** %18, align 8
  %103 = load i8*, i8** %18, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %113

; <label>:105:                                    ; preds = %94
  %106 = load i8*, i8** %18, align 8
  %107 = load i8**, i8*** %4, align 8
  %108 = load i32, i32* @optind, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = call i8* @quote(i8* %111)
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @25, i32 0, i32 0), i8* %106, i8* %112)
  br label %113

; <label>:113:                                    ; preds = %105, %94
  %114 = getelementptr inbounds %7, %7* %12, i32 0, i32 5
  %115 = load i8*, i8** %114, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %124, label %117

; <label>:117:                                    ; preds = %113
  %118 = getelementptr inbounds %7, %7* %12, i32 0, i32 6
  %119 = load i8*, i8** %118, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %124

; <label>:121:                                    ; preds = %117
  %122 = call i8* @142(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @21, i32 0, i32 0))
  %123 = getelementptr inbounds %7, %7* %12, i32 0, i32 5
  store i8* %122, i8** %123, align 8
  br label %124

; <label>:124:                                    ; preds = %121, %117, %113
  %125 = load i32, i32* @optind, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* @optind, align 4
  br label %127

; <label>:127:                                    ; preds = %124, %81
  %128 = getelementptr inbounds %7, %7* %12, i32 0, i32 1
  %129 = load i8, i8* %128, align 4
  %130 = trunc i8 %129 to i1
  br i1 %130, label %131, label %144

; <label>:131:                                    ; preds = %127
  %132 = load i8, i8* %5, align 1
  %133 = trunc i8 %132 to i1
  br i1 %133, label %134, label %144

; <label>:134:                                    ; preds = %131
  %135 = call %3* @get_root_dev_ino(%3* @30)
  %136 = getelementptr inbounds %7, %7* %12, i32 0, i32 2
  store %3* %135, %3** %136, align 8
  %137 = getelementptr inbounds %7, %7* %12, i32 0, i32 2
  %138 = load %3*, %3** %137, align 8
  %139 = icmp eq %3* %138, null
  br i1 %139, label %140, label %144

; <label>:140:                                    ; preds = %134
  %141 = call i32* @__errno_location() #13
  %142 = load i32, i32* %141, align 4
  %143 = call i8* @quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @31, i32 0, i32 0))
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %142, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @29, i32 0, i32 0), i8* %143)
  br label %144

; <label>:144:                                    ; preds = %134, %140, %131, %127
  %145 = load i32, i32* %10, align 4
  %146 = or i32 %145, 1024
  store i32 %146, i32* %10, align 4
  %147 = load i8**, i8*** %4, align 8
  %148 = load i32, i32* @optind, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %147, i64 %149
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* %9, align 4
  %156 = call zeroext i1 @chown_files(i8** %150, i32 %151, i32 %152, i32 %153, i32 %154, i32 %155, %7* %12)
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %13, align 1
  call void @chopt_free(%7* %12)
  %158 = load i8, i8* %13, align 1
  %159 = trunc i8 %158 to i1
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i32 0, i32 1
  call void @exit(i32 %161) #10
  unreachable
}

; Function Attrs: nounwind
declare i32 @atexit(void ()*) #4

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %2*, i32*) #4

declare void @error(i32, i32, i8*, ...) #1

; Function Attrs: nounwind
declare i32 @stat(i8*, %8*) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: noinline nounwind uwtable
define internal i8* @142(i8*) #2 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  ret i8* %3
}

; Function Attrs: noinline nounwind uwtable
define void @chopt_init(%7*) #2 {
  %2 = alloca %7*, align 8
  store %7* %0, %7** %2, align 8
  %3 = load %7*, %7** %2, align 8
  %4 = getelementptr inbounds %7, %7* %3, i32 0, i32 0
  store i32 2, i32* %4, align 8
  %5 = load %7*, %7** %2, align 8
  %6 = getelementptr inbounds %7, %7* %5, i32 0, i32 2
  store %3* null, %3** %6, align 8
  %7 = load %7*, %7** %2, align 8
  %8 = getelementptr inbounds %7, %7* %7, i32 0, i32 3
  store i8 1, i8* %8, align 8
  %9 = load %7*, %7** %2, align 8
  %10 = getelementptr inbounds %7, %7* %9, i32 0, i32 1
  store i8 0, i8* %10, align 4
  %11 = load %7*, %7** %2, align 8
  %12 = getelementptr inbounds %7, %7* %11, i32 0, i32 4
  store i8 0, i8* %12, align 1
  %13 = load %7*, %7** %2, align 8
  %14 = getelementptr inbounds %7, %7* %13, i32 0, i32 5
  store i8* null, i8** %14, align 8
  %15 = load %7*, %7** %2, align 8
  %16 = getelementptr inbounds %7, %7* %15, i32 0, i32 6
  store i8* null, i8** %16, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @chopt_free(%7*) #2 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i8* @gid_to_name(i32) #2 {
  %2 = alloca i32, align 4
  %3 = alloca [21 x i8], align 16
  %4 = alloca %9*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %9* @getgrgid(i32 %5)
  store %9* %6, %9** %4, align 8
  %7 = load %9*, %9** %4, align 8
  %8 = icmp ne %9* %7, null
  br i1 %8, label %9, label %13

; <label>:9:                                      ; preds = %1
  %10 = load %9*, %9** %4, align 8
  %11 = getelementptr inbounds %9, %9* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  br label %18

; <label>:13:                                     ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [21 x i8], [21 x i8]* %3, i32 0, i32 0
  %17 = call i8* @umaxtostr(i64 %15, i8* %16)
  br label %18

; <label>:18:                                     ; preds = %13, %9
  %19 = phi i8* [ %12, %9 ], [ %17, %13 ]
  %20 = call noalias i8* @xstrdup(i8* %19)
  ret i8* %20
}

declare %9* @getgrgid(i32) #1

; Function Attrs: noinline nounwind uwtable
define i8* @uid_to_name(i32) #2 {
  %2 = alloca i32, align 4
  %3 = alloca [21 x i8], align 16
  %4 = alloca %10*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %10* @getpwuid(i32 %5)
  store %10* %6, %10** %4, align 8
  %7 = load %10*, %10** %4, align 8
  %8 = icmp ne %10* %7, null
  br i1 %8, label %9, label %13

; <label>:9:                                      ; preds = %1
  %10 = load %10*, %10** %4, align 8
  %11 = getelementptr inbounds %10, %10* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  br label %18

; <label>:13:                                     ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [21 x i8], [21 x i8]* %3, i32 0, i32 0
  %17 = call i8* @umaxtostr(i64 %15, i8* %16)
  br label %18

; <label>:18:                                     ; preds = %13, %9
  %19 = phi i8* [ %12, %9 ], [ %17, %13 ]
  %20 = call noalias i8* @xstrdup(i8* %19)
  ret i8* %20
}

declare %10* @getpwuid(i32) #1

; Function Attrs: noinline nounwind uwtable
define zeroext i1 @chown_files(i8**, i32, i32, i32, i32, i32, %7*) #2 {
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %7*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca %11*, align 8
  %18 = alloca %12*, align 8
  store i8** %0, i8*** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %7* %6, %7** %14, align 8
  store i8 1, i8* %15, align 1
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, -1
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, -1
  %or.cond = or i1 %20, %22
  br i1 %or.cond, label %33, label %23

; <label>:23:                                     ; preds = %7
  %24 = load %7*, %7** %14, align 8
  %25 = getelementptr inbounds %7, %7* %24, i32 0, i32 3
  %26 = load i8, i8* %25, align 8
  %27 = trunc i8 %26 to i1
  br i1 %27, label %33, label %28

; <label>:28:                                     ; preds = %23
  %29 = load %7*, %7** %14, align 8
  %30 = getelementptr inbounds %7, %7* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 2
  br label %33

; <label>:33:                                     ; preds = %28, %23, %7
  %34 = phi i1 [ true, %23 ], [ true, %7 ], [ %32, %28 ]
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 8
  store i32 %36, i32* %16, align 4
  %37 = load i8**, i8*** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %16, align 4
  %40 = or i32 %38, %39
  %41 = call %11* @xfts_open(i8** %37, i32 %40, i32 (%12**, %12**)* null)
  store %11* %41, %11** %17, align 8
  br label %42

; <label>:42:                                     ; preds = %33, %60
  %43 = load %11*, %11** %17, align 8
  %44 = call %12* @fts_read(%11* %43)
  store %12* %44, %12** %18, align 8
  %45 = load %12*, %12** %18, align 8
  %46 = icmp eq %12* %45, null
  br i1 %46, label %47, label %60

; <label>:47:                                     ; preds = %42
  %48 = call i32* @__errno_location() #13
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %76

; <label>:51:                                     ; preds = %47
  %52 = load %7*, %7** %14, align 8
  %53 = getelementptr inbounds %7, %7* %52, i32 0, i32 4
  %54 = load i8, i8* %53, align 1
  %55 = trunc i8 %54 to i1
  br i1 %55, label %59, label %56

; <label>:56:                                     ; preds = %51
  %57 = call i32* @__errno_location() #13
  %58 = load i32, i32* %57, align 4
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @45, i32 0, i32 0))
  br label %59

; <label>:59:                                     ; preds = %56, %51
  store i8 0, i8* %15, align 1
  br label %76

; <label>:60:                                     ; preds = %42
  %61 = load %11*, %11** %17, align 8
  %62 = load %12*, %12** %18, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load %7*, %7** %14, align 8
  %68 = call zeroext i1 @143(%11* %61, %12* %62, i32 %63, i32 %64, i32 %65, i32 %66, %7* %67)
  %69 = zext i1 %68 to i32
  %70 = load i8, i8* %15, align 1
  %71 = trunc i8 %70 to i1
  %72 = zext i1 %71 to i32
  %73 = and i32 %72, %69
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i8
  store i8 %75, i8* %15, align 1
  br label %42

; <label>:76:                                     ; preds = %47, %59
  %77 = load %11*, %11** %17, align 8
  %78 = call i32 @fts_close(%11* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

; <label>:80:                                     ; preds = %76
  %81 = call i32* @__errno_location() #13
  %82 = load i32, i32* %81, align 4
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %82, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @46, i32 0, i32 0))
  store i8 0, i8* %15, align 1
  br label %83

; <label>:83:                                     ; preds = %80, %76
  %84 = load i8, i8* %15, align 1
  %85 = trunc i8 %84 to i1
  ret i1 %85
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @143(%11*, %12*, i32, i32, i32, i32, %7*) #2 {
  %8 = alloca i1, align 1
  %9 = alloca %11*, align 8
  %10 = alloca %12*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %7*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %8*, align 8
  %19 = alloca %8, align 8
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i32, align 4
  %24 = alloca i8, align 1
  %25 = alloca i32, align 4
  store %11* %0, %11** %9, align 8
  store %12* %1, %12** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %7* %6, %7** %15, align 8
  %26 = load %12*, %12** %10, align 8
  %27 = getelementptr inbounds %12, %12* %26, i32 0, i32 6
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %16, align 8
  %29 = load %12*, %12** %10, align 8
  %30 = getelementptr inbounds %12, %12* %29, i32 0, i32 5
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %17, align 8
  store i8 1, i8* %20, align 1
  store i8 1, i8* %22, align 1
  %32 = load %12*, %12** %10, align 8
  %33 = getelementptr inbounds %12, %12* %32, i32 0, i32 14
  %34 = load i16, i16* %33, align 8
  %35 = zext i16 %34 to i32
  switch i32 %35, label %153 [
    i32 1, label %36
    i32 6, label %88
    i32 10, label %94
    i32 7, label %122
    i32 4, label %134
    i32 2, label %146
  ]

; <label>:36:                                     ; preds = %7
  %37 = load %7*, %7** %15, align 8
  %38 = getelementptr inbounds %7, %7* %37, i32 0, i32 1
  %39 = load i8, i8* %38, align 4
  %40 = trunc i8 %39 to i1
  br i1 %40, label %41, label %153

; <label>:41:                                     ; preds = %36
  %42 = load %7*, %7** %15, align 8
  %43 = getelementptr inbounds %7, %7* %42, i32 0, i32 2
  %44 = load %3*, %3** %43, align 8
  %45 = icmp ne %3* %44, null
  br i1 %45, label %46, label %87

; <label>:46:                                     ; preds = %41
  %47 = load %12*, %12** %10, align 8
  %48 = getelementptr inbounds %12, %12* %47, i32 0, i32 17
  %49 = getelementptr inbounds [1 x %8], [1 x %8]* %48, i32 0, i32 0
  %50 = getelementptr inbounds %8, %8* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %7*, %7** %15, align 8
  %53 = getelementptr inbounds %7, %7* %52, i32 0, i32 2
  %54 = load %3*, %3** %53, align 8
  %55 = getelementptr inbounds %3, %3* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %51, %56
  br i1 %57, label %58, label %87

; <label>:58:                                     ; preds = %46
  %59 = load %12*, %12** %10, align 8
  %60 = getelementptr inbounds %12, %12* %59, i32 0, i32 17
  %61 = getelementptr inbounds [1 x %8], [1 x %8]* %60, i32 0, i32 0
  %62 = getelementptr inbounds %8, %8* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %7*, %7** %15, align 8
  %65 = getelementptr inbounds %7, %7* %64, i32 0, i32 2
  %66 = load %3*, %3** %65, align 8
  %67 = getelementptr inbounds %3, %3* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %63, %68
  br i1 %69, label %70, label %87

; <label>:70:                                     ; preds = %58
  %71 = load i8*, i8** %16, align 8
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @47, i32 0, i32 0)) #11
  %73 = icmp eq i32 %72, 0
  %74 = load i8*, i8** %16, align 8
  br i1 %73, label %75, label %77

; <label>:75:                                     ; preds = %70
  %76 = call i8* @quote(i8* %74)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @48, i32 0, i32 0), i8* %76)
  br label %80

; <label>:77:                                     ; preds = %70
  %78 = call i8* @quote_n(i32 0, i8* %74)
  %79 = call i8* @quote_n(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @47, i32 0, i32 0))
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @49, i32 0, i32 0), i8* %78, i8* %79)
  br label %80

; <label>:80:                                     ; preds = %77, %75
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @50, i32 0, i32 0))
  %81 = load %11*, %11** %9, align 8
  %82 = load %12*, %12** %10, align 8
  %83 = call i32 @fts_set(%11* %81, %12* %82, i32 4)
  %84 = load %11*, %11** %9, align 8
  %85 = call %12* @fts_read(%11* %84)
  %86 = bitcast %12* %85 to i8*
  call void @144(i8* %86)
  store i1 false, i1* %8, align 1
  br label %446

; <label>:87:                                     ; preds = %58, %46, %41
  store i1 true, i1* %8, align 1
  br label %446

; <label>:88:                                     ; preds = %7
  %89 = load %7*, %7** %15, align 8
  %90 = getelementptr inbounds %7, %7* %89, i32 0, i32 1
  %91 = load i8, i8* %90, align 4
  %92 = trunc i8 %91 to i1
  br i1 %92, label %153, label %93

; <label>:93:                                     ; preds = %88
  store i1 true, i1* %8, align 1
  br label %446

; <label>:94:                                     ; preds = %7
  %95 = load %12*, %12** %10, align 8
  %96 = getelementptr inbounds %12, %12* %95, i32 0, i32 11
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %110

; <label>:99:                                     ; preds = %94
  %100 = load %12*, %12** %10, align 8
  %101 = getelementptr inbounds %12, %12* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %110

; <label>:104:                                    ; preds = %99
  %105 = load %12*, %12** %10, align 8
  %106 = getelementptr inbounds %12, %12* %105, i32 0, i32 3
  store i64 1, i64* %106, align 8
  %107 = load %11*, %11** %9, align 8
  %108 = load %12*, %12** %10, align 8
  %109 = call i32 @fts_set(%11* %107, %12* %108, i32 1)
  store i1 true, i1* %8, align 1
  br label %446

; <label>:110:                                    ; preds = %99, %94
  %111 = load %7*, %7** %15, align 8
  %112 = getelementptr inbounds %7, %7* %111, i32 0, i32 4
  %113 = load i8, i8* %112, align 1
  %114 = trunc i8 %113 to i1
  br i1 %114, label %121, label %115

; <label>:115:                                    ; preds = %110
  %116 = load %12*, %12** %10, align 8
  %117 = getelementptr inbounds %12, %12* %116, i32 0, i32 7
  %118 = load i32, i32* %117, align 8
  %119 = load i8*, i8** %16, align 8
  %120 = call i8* @quote(i8* %119)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %118, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @51, i32 0, i32 0), i8* %120)
  br label %121

; <label>:121:                                    ; preds = %115, %110
  store i8 0, i8* %20, align 1
  br label %153

; <label>:122:                                    ; preds = %7
  %123 = load %7*, %7** %15, align 8
  %124 = getelementptr inbounds %7, %7* %123, i32 0, i32 4
  %125 = load i8, i8* %124, align 1
  %126 = trunc i8 %125 to i1
  br i1 %126, label %133, label %127

; <label>:127:                                    ; preds = %122
  %128 = load %12*, %12** %10, align 8
  %129 = getelementptr inbounds %12, %12* %128, i32 0, i32 7
  %130 = load i32, i32* %129, align 8
  %131 = load i8*, i8** %16, align 8
  %132 = call i8* @quote(i8* %131)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @52, i32 0, i32 0), i8* %132)
  br label %133

; <label>:133:                                    ; preds = %127, %122
  store i8 0, i8* %20, align 1
  br label %153

; <label>:134:                                    ; preds = %7
  %135 = load %7*, %7** %15, align 8
  %136 = getelementptr inbounds %7, %7* %135, i32 0, i32 4
  %137 = load i8, i8* %136, align 1
  %138 = trunc i8 %137 to i1
  br i1 %138, label %145, label %139

; <label>:139:                                    ; preds = %134
  %140 = load %12*, %12** %10, align 8
  %141 = getelementptr inbounds %12, %12* %140, i32 0, i32 7
  %142 = load i32, i32* %141, align 8
  %143 = load i8*, i8** %16, align 8
  %144 = call i8* @quote(i8* %143)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %142, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @53, i32 0, i32 0), i8* %144)
  br label %145

; <label>:145:                                    ; preds = %139, %134
  store i8 0, i8* %20, align 1
  br label %153

; <label>:146:                                    ; preds = %7
  %147 = load %11*, %11** %9, align 8
  %148 = load %12*, %12** %10, align 8
  %149 = call zeroext i1 @cycle_warning_required(%11* %147, %12* %148)
  br i1 %149, label %150, label %153

; <label>:150:                                    ; preds = %146
  %151 = load i8*, i8** %16, align 8
  %152 = call i8* @quote(i8* %151)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([186 x i8], [186 x i8]* @54, i32 0, i32 0), i8* %152)
  store i1 false, i1* %8, align 1
  br label %446

; <label>:153:                                    ; preds = %7, %146, %88, %36, %145, %133, %121
  %154 = load i8, i8* %20, align 1
  %155 = trunc i8 %154 to i1
  br i1 %155, label %157, label %156

; <label>:156:                                    ; preds = %153
  store i8 0, i8* %21, align 1
  store %8* null, %8** %18, align 8
  br label %238

; <label>:157:                                    ; preds = %153
  %158 = load i32, i32* %13, align 4
  %159 = icmp eq i32 %158, -1
  %160 = load i32, i32* %14, align 4
  %161 = icmp eq i32 %160, -1
  %or.cond = and i1 %159, %161
  br i1 %or.cond, label %162, label %181

; <label>:162:                                    ; preds = %157
  %163 = load %7*, %7** %15, align 8
  %164 = getelementptr inbounds %7, %7* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp eq i32 %165, 2
  br i1 %166, label %167, label %181

; <label>:167:                                    ; preds = %162
  %168 = load %7*, %7** %15, align 8
  %169 = getelementptr inbounds %7, %7* %168, i32 0, i32 2
  %170 = load %3*, %3** %169, align 8
  %171 = icmp ne %3* %170, null
  br i1 %171, label %181, label %172

; <label>:172:                                    ; preds = %167
  %173 = load %7*, %7** %15, align 8
  %174 = getelementptr inbounds %7, %7* %173, i32 0, i32 3
  %175 = load i8, i8* %174, align 8
  %176 = trunc i8 %175 to i1
  br i1 %176, label %181, label %177

; <label>:177:                                    ; preds = %172
  store i8 1, i8* %21, align 1
  %178 = load %12*, %12** %10, align 8
  %179 = getelementptr inbounds %12, %12* %178, i32 0, i32 17
  %180 = getelementptr inbounds [1 x %8], [1 x %8]* %179, i32 0, i32 0
  store %8* %180, %8** %18, align 8
  br label %238

; <label>:181:                                    ; preds = %172, %167, %162, %157
  %182 = load %12*, %12** %10, align 8
  %183 = getelementptr inbounds %12, %12* %182, i32 0, i32 17
  %184 = getelementptr inbounds [1 x %8], [1 x %8]* %183, i32 0, i32 0
  store %8* %184, %8** %18, align 8
  %185 = load %7*, %7** %15, align 8
  %186 = getelementptr inbounds %7, %7* %185, i32 0, i32 3
  %187 = load i8, i8* %186, align 8
  %188 = trunc i8 %187 to i1
  br i1 %188, label %189, label %214

; <label>:189:                                    ; preds = %181
  %190 = load %8*, %8** %18, align 8
  %191 = getelementptr inbounds %8, %8* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = and i32 %192, 61440
  %194 = icmp eq i32 %193, 40960
  br i1 %194, label %195, label %214

; <label>:195:                                    ; preds = %189
  %196 = load %11*, %11** %9, align 8
  %197 = getelementptr inbounds %11, %11* %196, i32 0, i32 6
  %198 = load i32, i32* %197, align 4
  %199 = load i8*, i8** %17, align 8
  %200 = call i32 @fstatat(i32 %198, i8* %199, %8* %19, i32 0) #7
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %213

; <label>:202:                                    ; preds = %195
  %203 = load %7*, %7** %15, align 8
  %204 = getelementptr inbounds %7, %7* %203, i32 0, i32 4
  %205 = load i8, i8* %204, align 1
  %206 = trunc i8 %205 to i1
  br i1 %206, label %212, label %207

; <label>:207:                                    ; preds = %202
  %208 = call i32* @__errno_location() #13
  %209 = load i32, i32* %208, align 4
  %210 = load i8*, i8** %16, align 8
  %211 = call i8* @quote(i8* %210)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %209, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @55, i32 0, i32 0), i8* %211)
  br label %212

; <label>:212:                                    ; preds = %207, %202
  store i8 0, i8* %20, align 1
  br label %213

; <label>:213:                                    ; preds = %212, %195
  store %8* %19, %8** %18, align 8
  br label %214

; <label>:214:                                    ; preds = %213, %189, %181
  %215 = load i8, i8* %20, align 1
  %216 = trunc i8 %215 to i1
  br i1 %216, label %217, label %235

; <label>:217:                                    ; preds = %214
  %218 = load i32, i32* %13, align 4
  %219 = icmp eq i32 %218, -1
  br i1 %219, label %226, label %220

; <label>:220:                                    ; preds = %217
  %221 = load i32, i32* %13, align 4
  %222 = load %8*, %8** %18, align 8
  %223 = getelementptr inbounds %8, %8* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 4
  %225 = icmp eq i32 %221, %224
  br i1 %225, label %226, label %235

; <label>:226:                                    ; preds = %220, %217
  %227 = load i32, i32* %14, align 4
  %228 = icmp eq i32 %227, -1
  br i1 %228, label %235, label %229

; <label>:229:                                    ; preds = %226
  %230 = load i32, i32* %14, align 4
  %231 = load %8*, %8** %18, align 8
  %232 = getelementptr inbounds %8, %8* %231, i32 0, i32 5
  %233 = load i32, i32* %232, align 8
  %234 = icmp eq i32 %230, %233
  br label %235

; <label>:235:                                    ; preds = %226, %229, %220, %214
  %236 = phi i1 [ false, %220 ], [ false, %214 ], [ true, %226 ], [ %234, %229 ]
  %237 = zext i1 %236 to i8
  store i8 %237, i8* %21, align 1
  br label %238

; <label>:238:                                    ; preds = %177, %235, %156
  %239 = load i8, i8* %20, align 1
  %240 = trunc i8 %239 to i1
  br i1 %240, label %241, label %301

; <label>:241:                                    ; preds = %238
  %242 = load %12*, %12** %10, align 8
  %243 = getelementptr inbounds %12, %12* %242, i32 0, i32 14
  %244 = load i16, i16* %243, align 8
  %245 = zext i16 %244 to i32
  %246 = icmp eq i32 %245, 1
  br i1 %246, label %265, label %247

; <label>:247:                                    ; preds = %241
  %248 = load %12*, %12** %10, align 8
  %249 = getelementptr inbounds %12, %12* %248, i32 0, i32 14
  %250 = load i16, i16* %249, align 8
  %251 = zext i16 %250 to i32
  %252 = icmp eq i32 %251, 2
  br i1 %252, label %265, label %253

; <label>:253:                                    ; preds = %247
  %254 = load %12*, %12** %10, align 8
  %255 = getelementptr inbounds %12, %12* %254, i32 0, i32 14
  %256 = load i16, i16* %255, align 8
  %257 = zext i16 %256 to i32
  %258 = icmp eq i32 %257, 6
  br i1 %258, label %265, label %259

; <label>:259:                                    ; preds = %253
  %260 = load %12*, %12** %10, align 8
  %261 = getelementptr inbounds %12, %12* %260, i32 0, i32 14
  %262 = load i16, i16* %261, align 8
  %263 = zext i16 %262 to i32
  %264 = icmp eq i32 %263, 4
  br i1 %264, label %265, label %301

; <label>:265:                                    ; preds = %259, %253, %247, %241
  %266 = load %7*, %7** %15, align 8
  %267 = getelementptr inbounds %7, %7* %266, i32 0, i32 2
  %268 = load %3*, %3** %267, align 8
  %269 = icmp ne %3* %268, null
  br i1 %269, label %270, label %301

; <label>:270:                                    ; preds = %265
  %271 = load %8*, %8** %18, align 8
  %272 = getelementptr inbounds %8, %8* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = load %7*, %7** %15, align 8
  %275 = getelementptr inbounds %7, %7* %274, i32 0, i32 2
  %276 = load %3*, %3** %275, align 8
  %277 = getelementptr inbounds %3, %3* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = icmp eq i64 %273, %278
  br i1 %279, label %280, label %301

; <label>:280:                                    ; preds = %270
  %281 = load %8*, %8** %18, align 8
  %282 = getelementptr inbounds %8, %8* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = load %7*, %7** %15, align 8
  %285 = getelementptr inbounds %7, %7* %284, i32 0, i32 2
  %286 = load %3*, %3** %285, align 8
  %287 = getelementptr inbounds %3, %3* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = icmp eq i64 %283, %288
  br i1 %289, label %290, label %301

; <label>:290:                                    ; preds = %280
  %291 = load i8*, i8** %16, align 8
  %292 = call i32 @strcmp(i8* %291, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @47, i32 0, i32 0)) #11
  %293 = icmp eq i32 %292, 0
  %294 = load i8*, i8** %16, align 8
  br i1 %293, label %295, label %297

; <label>:295:                                    ; preds = %290
  %296 = call i8* @quote(i8* %294)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @48, i32 0, i32 0), i8* %296)
  br label %300

; <label>:297:                                    ; preds = %290
  %298 = call i8* @quote_n(i32 0, i8* %294)
  %299 = call i8* @quote_n(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @47, i32 0, i32 0))
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @49, i32 0, i32 0), i8* %298, i8* %299)
  br label %300

; <label>:300:                                    ; preds = %297, %295
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @50, i32 0, i32 0))
  store i1 false, i1* %8, align 1
  br label %446

; <label>:301:                                    ; preds = %280, %270, %265, %259, %238
  %302 = load i8, i8* %21, align 1
  %303 = trunc i8 %302 to i1
  br i1 %303, label %304, label %367

; <label>:304:                                    ; preds = %301
  %305 = load %7*, %7** %15, align 8
  %306 = getelementptr inbounds %7, %7* %305, i32 0, i32 3
  %307 = load i8, i8* %306, align 8
  %308 = trunc i8 %307 to i1
  %309 = load %11*, %11** %9, align 8
  %310 = getelementptr inbounds %11, %11* %309, i32 0, i32 6
  %311 = load i32, i32* %310, align 4
  %312 = load i8*, i8** %17, align 8
  br i1 %308, label %326, label %313

; <label>:313:                                    ; preds = %304
  %314 = load i32, i32* %11, align 4
  %315 = load i32, i32* %12, align 4
  %316 = call i32 @145(i32 %311, i8* %312, i32 %314, i32 %315)
  %317 = icmp eq i32 %316, 0
  %318 = zext i1 %317 to i8
  store i8 %318, i8* %20, align 1
  %319 = load i8, i8* %20, align 1
  %320 = trunc i8 %319 to i1
  br i1 %320, label %347, label %321

; <label>:321:                                    ; preds = %313
  %322 = call i32* @__errno_location() #13
  %323 = load i32, i32* %322, align 4
  %324 = icmp eq i32 %323, 95
  br i1 %324, label %325, label %347

; <label>:325:                                    ; preds = %321
  store i8 1, i8* %20, align 1
  store i8 0, i8* %22, align 1
  br label %347

; <label>:326:                                    ; preds = %304
  %327 = load %8*, %8** %18, align 8
  %328 = load i32, i32* %11, align 4
  %329 = load i32, i32* %12, align 4
  %330 = load i32, i32* %13, align 4
  %331 = load i32, i32* %14, align 4
  %332 = call i32 @146(i32 %311, i8* %312, %8* %327, i32 %328, i32 %329, i32 %330, i32 %331)
  store i32 %332, i32* %23, align 4
  %333 = load i32, i32* %23, align 4
  switch i32 %333, label %346 [
    i32 2, label %347
    i32 5, label %334
    i32 6, label %344
    i32 4, label %345
    i32 3, label %345
  ]

; <label>:334:                                    ; preds = %326
  %335 = load %11*, %11** %9, align 8
  %336 = getelementptr inbounds %11, %11* %335, i32 0, i32 6
  %337 = load i32, i32* %336, align 4
  %338 = load i8*, i8** %17, align 8
  %339 = load i32, i32* %11, align 4
  %340 = load i32, i32* %12, align 4
  %341 = call i32 @147(i32 %337, i8* %338, i32 %339, i32 %340)
  %342 = icmp eq i32 %341, 0
  %343 = zext i1 %342 to i8
  store i8 %343, i8* %20, align 1
  br label %347

; <label>:344:                                    ; preds = %326
  store i8 0, i8* %20, align 1
  br label %347

; <label>:345:                                    ; preds = %326, %326
  store i8 0, i8* %21, align 1
  store i8 0, i8* %20, align 1
  br label %347

; <label>:346:                                    ; preds = %326
  call void @abort() #10
  unreachable

; <label>:347:                                    ; preds = %334, %344, %345, %326, %313, %321, %325
  %348 = load i8, i8* %21, align 1
  %349 = trunc i8 %348 to i1
  br i1 %349, label %350, label %367

; <label>:350:                                    ; preds = %347
  %351 = load i8, i8* %20, align 1
  %352 = trunc i8 %351 to i1
  br i1 %352, label %367, label %353

; <label>:353:                                    ; preds = %350
  %354 = load %7*, %7** %15, align 8
  %355 = getelementptr inbounds %7, %7* %354, i32 0, i32 4
  %356 = load i8, i8* %355, align 1
  %357 = trunc i8 %356 to i1
  br i1 %357, label %367, label %358

; <label>:358:                                    ; preds = %353
  %359 = call i32* @__errno_location() #13
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* %11, align 4
  %362 = icmp ne i32 %361, -1
  %363 = zext i1 %362 to i64
  %364 = select i1 %362, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @56, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @57, i32 0, i32 0)
  %365 = load i8*, i8** %16, align 8
  %366 = call i8* @quote(i8* %365)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %360, i8* %364, i8* %366)
  br label %367

; <label>:367:                                    ; preds = %347, %350, %353, %358, %301
  %368 = load %7*, %7** %15, align 8
  %369 = getelementptr inbounds %7, %7* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = icmp ne i32 %370, 2
  br i1 %371, label %372, label %434

; <label>:372:                                    ; preds = %367
  %373 = load i8, i8* %21, align 1
  %374 = trunc i8 %373 to i1
  br i1 %374, label %375, label %402

; <label>:375:                                    ; preds = %372
  %376 = load i8, i8* %20, align 1
  %377 = trunc i8 %376 to i1
  br i1 %377, label %378, label %402

; <label>:378:                                    ; preds = %375
  %379 = load i8, i8* %22, align 1
  %380 = trunc i8 %379 to i1
  br i1 %380, label %381, label %402

; <label>:381:                                    ; preds = %378
  %382 = load i32, i32* %11, align 4
  %383 = icmp eq i32 %382, -1
  br i1 %383, label %390, label %384

; <label>:384:                                    ; preds = %381
  %385 = load i32, i32* %11, align 4
  %386 = load %8*, %8** %18, align 8
  %387 = getelementptr inbounds %8, %8* %386, i32 0, i32 4
  %388 = load i32, i32* %387, align 4
  %389 = icmp eq i32 %385, %388
  br i1 %389, label %390, label %399

; <label>:390:                                    ; preds = %384, %381
  %391 = load i32, i32* %12, align 4
  %392 = icmp eq i32 %391, -1
  br i1 %392, label %399, label %393

; <label>:393:                                    ; preds = %390
  %394 = load i32, i32* %12, align 4
  %395 = load %8*, %8** %18, align 8
  %396 = getelementptr inbounds %8, %8* %395, i32 0, i32 5
  %397 = load i32, i32* %396, align 8
  %398 = icmp eq i32 %394, %397
  br label %399

; <label>:399:                                    ; preds = %390, %393, %384
  %400 = phi i1 [ false, %384 ], [ true, %390 ], [ %398, %393 ]
  %401 = xor i1 %400, true
  br label %402

; <label>:402:                                    ; preds = %399, %378, %375, %372
  %403 = phi i1 [ false, %378 ], [ false, %375 ], [ false, %372 ], [ %401, %399 ]
  %404 = zext i1 %403 to i8
  store i8 %404, i8* %24, align 1
  %405 = load i8, i8* %24, align 1
  %406 = trunc i8 %405 to i1
  br i1 %406, label %412, label %407

; <label>:407:                                    ; preds = %402
  %408 = load %7*, %7** %15, align 8
  %409 = getelementptr inbounds %7, %7* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %412, label %434

; <label>:412:                                    ; preds = %407, %402
  %413 = load i8, i8* %20, align 1
  %414 = trunc i8 %413 to i1
  br i1 %414, label %415, label %424

; <label>:415:                                    ; preds = %412
  %416 = load i8, i8* %22, align 1
  %417 = trunc i8 %416 to i1
  br i1 %417, label %418, label %424

; <label>:418:                                    ; preds = %415
  %419 = load i8, i8* %24, align 1
  %420 = trunc i8 %419 to i1
  %421 = xor i1 %420, true
  %422 = zext i1 %421 to i64
  %423 = select i1 %421, i32 4, i32 2
  br label %424

; <label>:424:                                    ; preds = %418, %415, %412
  %425 = phi i32 [ 3, %412 ], [ %423, %418 ], [ 1, %415 ]
  store i32 %425, i32* %25, align 4
  %426 = load i8*, i8** %16, align 8
  %427 = load i32, i32* %25, align 4
  %428 = load %7*, %7** %15, align 8
  %429 = getelementptr inbounds %7, %7* %428, i32 0, i32 5
  %430 = load i8*, i8** %429, align 8
  %431 = load %7*, %7** %15, align 8
  %432 = getelementptr inbounds %7, %7* %431, i32 0, i32 6
  %433 = load i8*, i8** %432, align 8
  call void @148(i8* %426, i32 %427, i8* %430, i8* %433)
  br label %434

; <label>:434:                                    ; preds = %407, %424, %367
  %435 = load %7*, %7** %15, align 8
  %436 = getelementptr inbounds %7, %7* %435, i32 0, i32 1
  %437 = load i8, i8* %436, align 4
  %438 = trunc i8 %437 to i1
  br i1 %438, label %443, label %439

; <label>:439:                                    ; preds = %434
  %440 = load %11*, %11** %9, align 8
  %441 = load %12*, %12** %10, align 8
  %442 = call i32 @fts_set(%11* %440, %12* %441, i32 4)
  br label %443

; <label>:443:                                    ; preds = %439, %434
  %444 = load i8, i8* %20, align 1
  %445 = trunc i8 %444 to i1
  store i1 %445, i1* %8, align 1
  br label %446

; <label>:446:                                    ; preds = %443, %300, %150, %104, %93, %87, %80
  %447 = load i1, i1* %8, align 1
  ret i1 %447
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: noinline nounwind uwtable
define internal void @144(i8*) #2 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  ret void
}

; Function Attrs: nounwind
declare i32 @fstatat(i32, i8*, %8*, i32) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @145(i32, i8*, i32, i32) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @fchownat(i32 %9, i8* %10, i32 %11, i32 %12, i32 256) #7
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @146(i32, i8*, %8*, i32, i32, i32, i32) #2 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %8, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store %8* %2, %8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 2, i32* %16, align 4
  store i32 2304, i32* %18, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp eq i32 %21, -1
  %23 = load i32, i32* %15, align 4
  %24 = icmp eq i32 %23, -1
  %or.cond = and i1 %22, %24
  br i1 %or.cond, label %25, label %26

; <label>:25:                                     ; preds = %7
  store i32 5, i32* %8, align 4
  br label %131

; <label>:26:                                     ; preds = %7
  %27 = load %8*, %8** %11, align 8
  %28 = getelementptr inbounds %8, %8* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, 61440
  %31 = icmp eq i32 %30, 32768
  br i1 %31, label %42, label %32

; <label>:32:                                     ; preds = %26
  %33 = load %8*, %8** %11, align 8
  %34 = getelementptr inbounds %8, %8* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, 61440
  %37 = icmp eq i32 %36, 16384
  br i1 %37, label %38, label %41

; <label>:38:                                     ; preds = %32
  %39 = load i32, i32* %18, align 4
  %40 = or i32 %39, 65536
  store i32 %40, i32* %18, align 4
  br label %42

; <label>:41:                                     ; preds = %32
  store i32 5, i32* %8, align 4
  br label %131

; <label>:42:                                     ; preds = %38, %26
  %43 = load i32, i32* %9, align 4
  %44 = load i8*, i8** %10, align 8
  %45 = load i32, i32* %18, align 4
  %46 = or i32 0, %45
  %47 = call i32 (i32, i8*, i32, ...) @openat(i32 %43, i8* %44, i32 %46)
  store i32 %47, i32* %19, align 4
  %48 = load i32, i32* %19, align 4
  %49 = icmp sle i32 0, %48
  br i1 %49, label %73, label %50

; <label>:50:                                     ; preds = %42
  %51 = call i32* @__errno_location() #13
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 13
  br i1 %53, label %54, label %67

; <label>:54:                                     ; preds = %50
  %55 = load %8*, %8** %11, align 8
  %56 = getelementptr inbounds %8, %8* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, 61440
  %59 = icmp eq i32 %58, 32768
  br i1 %59, label %60, label %67

; <label>:60:                                     ; preds = %54
  %61 = load i32, i32* %9, align 4
  %62 = load i8*, i8** %10, align 8
  %63 = load i32, i32* %18, align 4
  %64 = or i32 1, %63
  %65 = call i32 (i32, i8*, i32, ...) @openat(i32 %61, i8* %62, i32 %64)
  store i32 %65, i32* %19, align 4
  %66 = icmp sle i32 0, %65
  br i1 %66, label %73, label %67

; <label>:67:                                     ; preds = %60, %54, %50
  %68 = call i32* @__errno_location() #13
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 13
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 5, i32 6
  store i32 %72, i32* %8, align 4
  br label %131

; <label>:73:                                     ; preds = %60, %42
  %74 = load i32, i32* %19, align 4
  %75 = call i32 @fstat(i32 %74, %8* %17) #7
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

; <label>:77:                                     ; preds = %73
  store i32 6, i32* %16, align 4
  br label %123

; <label>:78:                                     ; preds = %73
  %79 = load %8*, %8** %11, align 8
  %80 = getelementptr inbounds %8, %8* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %8, %8* %17, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %81, %83
  br i1 %84, label %85, label %92

; <label>:85:                                     ; preds = %78
  %86 = load %8*, %8** %11, align 8
  %87 = getelementptr inbounds %8, %8* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %8, %8* %17, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %88, %90
  br i1 %91, label %93, label %92

; <label>:92:                                     ; preds = %85, %78
  store i32 4, i32* %16, align 4
  br label %123

; <label>:93:                                     ; preds = %85
  %94 = load i32, i32* %14, align 4
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %101, label %96

; <label>:96:                                     ; preds = %93
  %97 = load i32, i32* %14, align 4
  %98 = getelementptr inbounds %8, %8* %17, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %97, %99
  br i1 %100, label %101, label %123

; <label>:101:                                    ; preds = %96, %93
  %102 = load i32, i32* %15, align 4
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %109, label %104

; <label>:104:                                    ; preds = %101
  %105 = load i32, i32* %15, align 4
  %106 = getelementptr inbounds %8, %8* %17, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %109, label %123

; <label>:109:                                    ; preds = %104, %101
  %110 = load i32, i32* %19, align 4
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @fchown(i32 %110, i32 %111, i32 %112) #7
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %122

; <label>:115:                                    ; preds = %109
  %116 = load i32, i32* %19, align 4
  %117 = call i32 @close(i32 %116)
  %118 = icmp eq i32 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 2, i32 6
  store i32 %120, i32* %16, align 4
  %121 = load i32, i32* %16, align 4
  store i32 %121, i32* %8, align 4
  br label %131

; <label>:122:                                    ; preds = %109
  store i32 6, i32* %16, align 4
  br label %123

; <label>:123:                                    ; preds = %92, %122, %104, %96, %77
  %124 = call i32* @__errno_location() #13
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %20, align 4
  %126 = load i32, i32* %19, align 4
  %127 = call i32 @close(i32 %126)
  %128 = load i32, i32* %20, align 4
  %129 = call i32* @__errno_location() #13
  store i32 %128, i32* %129, align 4
  %130 = load i32, i32* %16, align 4
  store i32 %130, i32* %8, align 4
  br label %131

; <label>:131:                                    ; preds = %123, %115, %67, %41, %25
  %132 = load i32, i32* %8, align 4
  ret i32 %132
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @147(i32, i8*, i32, i32) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @fchownat(i32 %9, i8* %10, i32 %11, i32 %12, i32 0) #7
  ret i32 %13
}

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: noinline nounwind uwtable
define internal void @148(i8*, i32, i8*, i8*) #2 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i8* null, i8** %11, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %18

; <label>:14:                                     ; preds = %4
  %15 = load i8*, i8** %5, align 8
  %16 = call i8* @quote(i8* %15)
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @58, i32 0, i32 0), i8* %16)
  br label %82

; <label>:18:                                     ; preds = %4
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  %21 = load i8*, i8** %8, align 8
  br i1 %20, label %22, label %41

; <label>:22:                                     ; preds = %18
  %23 = icmp ne i8* %21, null
  %24 = load i8*, i8** %7, align 8
  br i1 %23, label %25, label %40

; <label>:25:                                     ; preds = %22
  %26 = call i64 @strlen(i8* %24) #11
  %27 = add i64 %26, 1
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @strlen(i8* %28) #11
  %30 = add i64 %27, %29
  %31 = add i64 %30, 1
  %32 = call noalias i8* @xmalloc(i64 %31)
  store i8* %32, i8** %11, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i8* @stpcpy(i8* %33, i8* %34) #7
  %36 = call i8* @stpcpy(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @59, i32 0, i32 0)) #7
  %37 = load i8*, i8** %8, align 8
  %38 = call i8* @stpcpy(i8* %36, i8* %37) #7
  %39 = load i8*, i8** %11, align 8
  store i8* %39, i8** %10, align 8
  br label %42

; <label>:40:                                     ; preds = %22
  store i8* %24, i8** %10, align 8
  br label %42

; <label>:41:                                     ; preds = %18
  store i8* %21, i8** %10, align 8
  br label %42

; <label>:42:                                     ; preds = %25, %40, %41
  %43 = load i32, i32* %6, align 4
  switch i32 %43, label %74 [
    i32 2, label %44
    i32 3, label %54
    i32 4, label %64
  ]

; <label>:44:                                     ; preds = %42
  %45 = load i8*, i8** %7, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %52, label %47

; <label>:47:                                     ; preds = %44
  %48 = load i8*, i8** %8, align 8
  %49 = icmp ne i8* %48, null
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @60, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @61, i32 0, i32 0)
  br label %52

; <label>:52:                                     ; preds = %44, %47
  %53 = phi i8* [ %51, %47 ], [ getelementptr inbounds ([31 x i8], [31 x i8]* @62, i32 0, i32 0), %44 ]
  store i8* %53, i8** %9, align 8
  br label %75

; <label>:54:                                     ; preds = %42
  %55 = load i8*, i8** %7, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %62, label %57

; <label>:57:                                     ; preds = %54
  %58 = load i8*, i8** %8, align 8
  %59 = icmp ne i8* %58, null
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @63, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @64, i32 0, i32 0)
  br label %62

; <label>:62:                                     ; preds = %54, %57
  %63 = phi i8* [ %61, %57 ], [ getelementptr inbounds ([40 x i8], [40 x i8]* @65, i32 0, i32 0), %54 ]
  store i8* %63, i8** %9, align 8
  br label %75

; <label>:64:                                     ; preds = %42
  %65 = load i8*, i8** %7, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %72, label %67

; <label>:67:                                     ; preds = %64
  %68 = load i8*, i8** %8, align 8
  %69 = icmp ne i8* %68, null
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @66, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @67, i32 0, i32 0)
  br label %72

; <label>:72:                                     ; preds = %64, %67
  %73 = phi i8* [ %71, %67 ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @68, i32 0, i32 0), %64 ]
  store i8* %73, i8** %9, align 8
  br label %75

; <label>:74:                                     ; preds = %42
  call void @abort() #10
  unreachable

; <label>:75:                                     ; preds = %72, %62, %52
  %76 = load i8*, i8** %9, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = call i8* @quote(i8* %77)
  %79 = load i8*, i8** %10, align 8
  %80 = call i32 (i8*, ...) @printf(i8* %76, i8* %78, i8* %79)
  %81 = load i8*, i8** %11, align 8
  call void @free(i8* %81) #7
  br label %82

; <label>:82:                                     ; preds = %75, %14
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare i8* @stpcpy(i8*, i8*) #4

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind
declare i32 @fchownat(i32, i8*, i32, i32, i32) #4

declare i32 @openat(i32, i8*, i32, ...) #1

; Function Attrs: nounwind
declare i32 @fstat(i32, %8*) #4

; Function Attrs: nounwind
declare i32 @fchown(i32, i32, i32) #4

declare i32 @close(i32) #1

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
  %9 = call i32 @fputs(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @70, i32 0, i32 0), %0* %8)
  call void @abort() #10
  unreachable

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i8* @strrchr(i8* %11, i32 47) #11
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
  %28 = call i32 @strncmp(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @71, i32 0, i32 0), i64 7) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %39

; <label>:30:                                     ; preds = %25
  %31 = load i8*, i8** %4, align 8
  store i8* %31, i8** %2, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @strncmp(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @72, i32 0, i32 0), i64 3) #11
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

declare i32 @fputs(i8*, %0*) #1

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #5

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
  %20 = call i32 (%0*, i8*, ...) @fprintf(%0* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @73, i32 0, i32 0), i8* %17, i8* %18, i8* %19)
  br label %25

; <label>:21:                                     ; preds = %6
  %22 = load i8*, i8** %9, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = call i32 (%0*, i8*, ...) @fprintf(%0* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @74, i32 0, i32 0), i8* %22, i8* %23)
  br label %25

; <label>:25:                                     ; preds = %21, %16
  %26 = load %0*, %0** %7, align 8
  %27 = call i32 (%0*, i8*, ...) @fprintf(%0* %26, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @75, i32 0, i32 0), i32 2009)
  %28 = load %0*, %0** %7, align 8
  %29 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([203 x i8], [203 x i8]* @76, i32 0, i32 0), %0* %28)
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
  call void @abort() #10
  unreachable

; <label>:32:                                     ; preds = %25
  %33 = load %0*, %0** %7, align 8
  %34 = load i8**, i8*** %11, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 (%0*, i8*, ...) @fprintf(%0* %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @77, i32 0, i32 0), i8* %36)
  br label %224

; <label>:38:                                     ; preds = %25
  %39 = load %0*, %0** %7, align 8
  %40 = load i8**, i8*** %11, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i8**, i8*** %11, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (%0*, i8*, ...) @fprintf(%0* %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @78, i32 0, i32 0), i8* %42, i8* %45)
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
  %58 = call i32 (%0*, i8*, ...) @fprintf(%0* %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @79, i32 0, i32 0), i8* %51, i8* %54, i8* %57)
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
  %73 = call i32 (%0*, i8*, ...) @fprintf(%0* %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @80, i32 0, i32 0), i8* %63, i8* %66, i8* %69, i8* %72)
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
  %91 = call i32 (%0*, i8*, ...) @fprintf(%0* %75, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @81, i32 0, i32 0), i8* %78, i8* %81, i8* %84, i8* %87, i8* %90)
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
  %112 = call i32 (%0*, i8*, ...) @fprintf(%0* %93, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @82, i32 0, i32 0), i8* %96, i8* %99, i8* %102, i8* %105, i8* %108, i8* %111)
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
  %136 = call i32 (%0*, i8*, ...) @fprintf(%0* %114, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @83, i32 0, i32 0), i8* %117, i8* %120, i8* %123, i8* %126, i8* %129, i8* %132, i8* %135)
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
  %163 = call i32 (%0*, i8*, ...) @fprintf(%0* %138, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @84, i32 0, i32 0), i8* %141, i8* %144, i8* %147, i8* %150, i8* %153, i8* %156, i8* %159, i8* %162)
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
  %193 = call i32 (%0*, i8*, ...) @fprintf(%0* %165, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @85, i32 0, i32 0), i8* %168, i8* %171, i8* %174, i8* %177, i8* %180, i8* %183, i8* %186, i8* %189, i8* %192)
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
  %223 = call i32 (%0*, i8*, ...) @fprintf(%0* %195, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @86, i32 0, i32 0), i8* %198, i8* %201, i8* %204, i8* %207, i8* %210, i8* %213, i8* %216, i8* %219, i8* %222)
  br label %224

; <label>:224:                                    ; preds = %194, %164, %137, %113, %92, %74, %59, %47, %38, %32
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @version_etc_va(%0*, i8*, i8*, i8*, %17*) #2 {
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

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

; Function Attrs: noinline nounwind uwtable
define i8* @last_component(i8*) #2 {
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
define void @close_stdout() #2 {
  %1 = alloca i8*, align 8
  %2 = load %0*, %0** @stdout, align 8
  %3 = call i32 @close_stream(%0* %2)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %25

; <label>:5:                                      ; preds = %0
  %6 = load i8, i8* @94, align 1
  %7 = trunc i8 %6 to i1
  br i1 %7, label %8, label %12

; <label>:8:                                      ; preds = %5
  %9 = call i32* @__errno_location() #13
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 32
  br i1 %11, label %25, label %12

; <label>:12:                                     ; preds = %8, %5
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @95, i32 0, i32 0), i8** %1, align 8
  %13 = load i8*, i8** @93, align 8
  %14 = icmp ne i8* %13, null
  %15 = call i32* @__errno_location() #13
  %16 = load i32, i32* %15, align 4
  br i1 %14, label %17, label %21

; <label>:17:                                     ; preds = %12
  %18 = load i8*, i8** @93, align 8
  %19 = call i8* @quotearg_colon(i8* %18)
  %20 = load i8*, i8** %1, align 8
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @96, i32 0, i32 0), i8* %19, i8* %20)
  br label %23

; <label>:21:                                     ; preds = %12
  %22 = load i8*, i8** %1, align 8
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @97, i32 0, i32 0), i8* %22)
  br label %23

; <label>:23:                                     ; preds = %21, %17
  %24 = load volatile i32, i32* @exit_failure, align 4
  call void @_exit(i32 %24) #12
  unreachable

; <label>:25:                                     ; preds = %8, %0
  %26 = load %0*, %0** @stderr, align 8
  %27 = call i32 @close_stream(%0* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

; <label>:29:                                     ; preds = %25
  %30 = load volatile i32, i32* @exit_failure, align 4
  call void @_exit(i32 %30) #12
  unreachable

; <label>:31:                                     ; preds = %25
  ret void
}

; Function Attrs: noreturn
declare void @_exit(i32) #8

; Function Attrs: noinline nounwind uwtable
define %11* @fts_open(i8**, i32, i32 (%12**, %12**)*) #2 {
  %4 = alloca %11*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32 (%12**, %12**)*, align 8
  %8 = alloca %11*, align 8
  %9 = alloca %12*, align 8
  %10 = alloca %12*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %12*, align 8
  %13 = alloca %12*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 (%12**, %12**)* %2, i32 (%12**, %12**)** %7, align 8
  store %12* null, %12** %12, align 8
  store %12* null, %12** %13, align 8
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, -2048
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

; <label>:21:                                     ; preds = %3
  %22 = call i32* @__errno_location() #13
  store i32 22, i32* %22, align 4
  store %11* null, %11** %4, align 8
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
  %32 = call i32* @__errno_location() #13
  store i32 22, i32* %32, align 4
  store %11* null, %11** %4, align 8
  br label %235

; <label>:33:                                     ; preds = %27, %23
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 18
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

; <label>:37:                                     ; preds = %33
  %38 = call i32* @__errno_location() #13
  store i32 22, i32* %38, align 4
  store %11* null, %11** %4, align 8
  br label %235

; <label>:39:                                     ; preds = %33
  %40 = call noalias i8* @malloc(i64 128) #7
  %41 = bitcast i8* %40 to %11*
  store %11* %41, %11** %8, align 8
  %42 = icmp eq %11* %41, null
  br i1 %42, label %43, label %44

; <label>:43:                                     ; preds = %39
  store %11* null, %11** %4, align 8
  br label %235

; <label>:44:                                     ; preds = %39
  %45 = load %11*, %11** %8, align 8
  %46 = bitcast %11* %45 to i8*
  call void @llvm.memset.p0i8.i64(i8* %46, i8 0, i64 128, i32 8, i1 false)
  %47 = load i32 (%12**, %12**)*, i32 (%12**, %12**)** %7, align 8
  %48 = load %11*, %11** %8, align 8
  %49 = getelementptr inbounds %11, %11* %48, i32 0, i32 9
  store i32 (%12**, %12**)* %47, i32 (%12**, %12**)** %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load %11*, %11** %8, align 8
  %52 = getelementptr inbounds %11, %11* %51, i32 0, i32 10
  store i32 %50, i32* %52, align 8
  %53 = load %11*, %11** %8, align 8
  %54 = getelementptr inbounds %11, %11* %53, i32 0, i32 10
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, 2
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

; <label>:58:                                     ; preds = %44
  %59 = load %11*, %11** %8, align 8
  %60 = getelementptr inbounds %11, %11* %59, i32 0, i32 10
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, 4
  store i32 %62, i32* %60, align 8
  %63 = load %11*, %11** %8, align 8
  %64 = getelementptr inbounds %11, %11* %63, i32 0, i32 10
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, -513
  store i32 %66, i32* %64, align 8
  br label %67

; <label>:67:                                     ; preds = %58, %44
  %68 = load %11*, %11** %8, align 8
  %69 = getelementptr inbounds %11, %11* %68, i32 0, i32 6
  store i32 -100, i32* %69, align 4
  %70 = load %11*, %11** %8, align 8
  %71 = getelementptr inbounds %11, %11* %70, i32 0, i32 10
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, 512
  %74 = icmp ne i32 %73, 0
  %75 = load i8**, i8*** %5, align 8
  %76 = call i64 @149(i8** %75)
  store i64 %76, i64* %16, align 8
  %77 = load %11*, %11** %8, align 8
  %78 = load i64, i64* %16, align 8
  %79 = icmp ugt i64 %78, 4096
  %80 = load i64, i64* %16, align 8
  %81 = select i1 %79, i64 %80, i64 4096
  %82 = call zeroext i1 @150(%11* %77, i64 %81)
  br i1 %82, label %83, label %232

; <label>:83:                                     ; preds = %67
  %84 = load i8**, i8*** %5, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %94

; <label>:87:                                     ; preds = %83
  %88 = load %11*, %11** %8, align 8
  %89 = call %12* @151(%11* %88, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @99, i32 0, i32 0), i64 0)
  store %12* %89, %12** %12, align 8
  %90 = icmp eq %12* %89, null
  br i1 %90, label %228, label %91

; <label>:91:                                     ; preds = %87
  %92 = load %12*, %12** %12, align 8
  %93 = getelementptr inbounds %12, %12* %92, i32 0, i32 11
  store i64 -1, i64* %93, align 8
  br label %94

; <label>:94:                                     ; preds = %91, %83
  %95 = load i32 (%12**, %12**)*, i32 (%12**, %12**)** %7, align 8
  %96 = icmp eq i32 (%12**, %12**)* %95, null
  br i1 %96, label %103, label %97

; <label>:97:                                     ; preds = %94
  %98 = load %11*, %11** %8, align 8
  %99 = getelementptr inbounds %11, %11* %98, i32 0, i32 10
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, 1024
  %102 = icmp ne i32 %101, 0
  br label %103

; <label>:103:                                    ; preds = %97, %94
  %104 = phi i1 [ true, %94 ], [ %102, %97 ]
  %105 = zext i1 %104 to i8
  store i8 %105, i8* %14, align 1
  store %12* null, %12** %10, align 8
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
  %113 = call i64 @strlen(i8* %112) #11
  store i64 %113, i64* %17, align 8
  %114 = load %11*, %11** %8, align 8
  %115 = load i8**, i8*** %5, align 8
  %116 = load i8*, i8** %115, align 8
  %117 = load i64, i64* %17, align 8
  %118 = call %12* @151(%11* %114, i8* %116, i64 %117)
  store %12* %118, %12** %9, align 8
  %119 = icmp eq %12* %118, null
  br i1 %119, label %224, label %120

; <label>:120:                                    ; preds = %110
  %121 = load %12*, %12** %9, align 8
  %122 = getelementptr inbounds %12, %12* %121, i32 0, i32 11
  store i64 0, i64* %122, align 8
  %123 = load %12*, %12** %12, align 8
  %124 = load %12*, %12** %9, align 8
  %125 = getelementptr inbounds %12, %12* %124, i32 0, i32 1
  store %12* %123, %12** %125, align 8
  %126 = load %12*, %12** %9, align 8
  %127 = getelementptr inbounds %12, %12* %126, i32 0, i32 18
  %128 = getelementptr inbounds [1 x i8], [1 x i8]* %127, i32 0, i32 0
  %129 = load %12*, %12** %9, align 8
  %130 = getelementptr inbounds %12, %12* %129, i32 0, i32 5
  store i8* %128, i8** %130, align 8
  %131 = load i8, i8* %14, align 1
  %132 = trunc i8 %131 to i1
  %133 = load %12*, %12** %10, align 8
  %134 = icmp ne %12* %133, null
  %or.cond = and i1 %132, %134
  br i1 %or.cond, label %135, label %139

; <label>:135:                                    ; preds = %120
  %136 = load %12*, %12** %9, align 8
  %137 = getelementptr inbounds %12, %12* %136, i32 0, i32 14
  store i16 11, i16* %137, align 8
  %138 = load %12*, %12** %9, align 8
  call void @152(%12* %138, i1 zeroext true)
  br label %145

; <label>:139:                                    ; preds = %120
  %140 = load %11*, %11** %8, align 8
  %141 = load %12*, %12** %9, align 8
  %142 = call zeroext i16 @153(%11* %140, %12* %141, i1 zeroext false)
  %143 = load %12*, %12** %9, align 8
  %144 = getelementptr inbounds %12, %12* %143, i32 0, i32 14
  store i16 %142, i16* %144, align 8
  br label %145

; <label>:145:                                    ; preds = %139, %135
  %146 = load i32 (%12**, %12**)*, i32 (%12**, %12**)** %7, align 8
  %147 = icmp ne i32 (%12**, %12**)* %146, null
  br i1 %147, label %148, label %153

; <label>:148:                                    ; preds = %145
  %149 = load %12*, %12** %10, align 8
  %150 = load %12*, %12** %9, align 8
  %151 = getelementptr inbounds %12, %12* %150, i32 0, i32 2
  store %12* %149, %12** %151, align 8
  %152 = load %12*, %12** %9, align 8
  store %12* %152, %12** %10, align 8
  br label %164

; <label>:153:                                    ; preds = %145
  %154 = load %12*, %12** %9, align 8
  %155 = getelementptr inbounds %12, %12* %154, i32 0, i32 2
  store %12* null, %12** %155, align 8
  %156 = load %12*, %12** %10, align 8
  %157 = icmp eq %12* %156, null
  %158 = load %12*, %12** %9, align 8
  br i1 %157, label %159, label %160

; <label>:159:                                    ; preds = %153
  store %12* %158, %12** %10, align 8
  store %12* %158, %12** %13, align 8
  br label %164

; <label>:160:                                    ; preds = %153
  %161 = load %12*, %12** %13, align 8
  %162 = getelementptr inbounds %12, %12* %161, i32 0, i32 2
  store %12* %158, %12** %162, align 8
  %163 = load %12*, %12** %9, align 8
  store %12* %163, %12** %13, align 8
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
  %170 = load i32 (%12**, %12**)*, i32 (%12**, %12**)** %7, align 8
  %171 = icmp ne i32 (%12**, %12**)* %170, null
  %172 = load i64, i64* %11, align 8
  %173 = icmp ugt i64 %172, 1
  %or.cond3 = and i1 %171, %173
  br i1 %or.cond3, label %174, label %179

; <label>:174:                                    ; preds = %169
  %175 = load %11*, %11** %8, align 8
  %176 = load %12*, %12** %10, align 8
  %177 = load i64, i64* %11, align 8
  %178 = call %12* @154(%11* %175, %12* %176, i64 %177)
  store %12* %178, %12** %10, align 8
  br label %179

; <label>:179:                                    ; preds = %174, %169
  %180 = load %11*, %11** %8, align 8
  %181 = call %12* @151(%11* %180, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @99, i32 0, i32 0), i64 0)
  %182 = load %11*, %11** %8, align 8
  %183 = getelementptr inbounds %11, %11* %182, i32 0, i32 0
  store %12* %181, %12** %183, align 8
  %184 = icmp eq %12* %181, null
  br i1 %184, label %224, label %185

; <label>:185:                                    ; preds = %179
  %186 = load %12*, %12** %10, align 8
  %187 = load %11*, %11** %8, align 8
  %188 = getelementptr inbounds %11, %11* %187, i32 0, i32 0
  %189 = load %12*, %12** %188, align 8
  %190 = getelementptr inbounds %12, %12* %189, i32 0, i32 2
  store %12* %186, %12** %190, align 8
  %191 = load %11*, %11** %8, align 8
  %192 = getelementptr inbounds %11, %11* %191, i32 0, i32 0
  %193 = load %12*, %12** %192, align 8
  %194 = getelementptr inbounds %12, %12* %193, i32 0, i32 14
  store i16 9, i16* %194, align 8
  %195 = load %11*, %11** %8, align 8
  %196 = call zeroext i1 @155(%11* %195)
  br i1 %196, label %197, label %224

; <label>:197:                                    ; preds = %185
  %198 = load %11*, %11** %8, align 8
  %199 = getelementptr inbounds %11, %11* %198, i32 0, i32 10
  %200 = load i32, i32* %199, align 8
  %201 = and i32 %200, 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %220, label %203

; <label>:203:                                    ; preds = %197
  %204 = load %11*, %11** %8, align 8
  %205 = getelementptr inbounds %11, %11* %204, i32 0, i32 10
  %206 = load i32, i32* %205, align 8
  %207 = and i32 %206, 512
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %220, label %209

; <label>:209:                                    ; preds = %203
  %210 = load %11*, %11** %8, align 8
  %211 = call i32 @156(%11* %210, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @98, i32 0, i32 0))
  %212 = load %11*, %11** %8, align 8
  %213 = getelementptr inbounds %11, %11* %212, i32 0, i32 5
  store i32 %211, i32* %213, align 8
  %214 = icmp slt i32 %211, 0
  br i1 %214, label %215, label %220

; <label>:215:                                    ; preds = %209
  %216 = load %11*, %11** %8, align 8
  %217 = getelementptr inbounds %11, %11* %216, i32 0, i32 10
  %218 = load i32, i32* %217, align 8
  %219 = or i32 %218, 4
  store i32 %219, i32* %217, align 8
  br label %220

; <label>:220:                                    ; preds = %215, %209, %203, %197
  %221 = load %11*, %11** %8, align 8
  %222 = getelementptr inbounds %11, %11* %221, i32 0, i32 13
  call void @i_ring_init(%16* %222, i32 -1)
  %223 = load %11*, %11** %8, align 8
  store %11* %223, %11** %4, align 8
  br label %235

; <label>:224:                                    ; preds = %185, %179, %110
  %225 = load %12*, %12** %10, align 8
  call void @157(%12* %225)
  %226 = load %12*, %12** %12, align 8
  %227 = bitcast %12* %226 to i8*
  call void @free(i8* %227) #7
  br label %228

; <label>:228:                                    ; preds = %87, %224
  %229 = load %11*, %11** %8, align 8
  %230 = getelementptr inbounds %11, %11* %229, i32 0, i32 4
  %231 = load i8*, i8** %230, align 8
  call void @free(i8* %231) #7
  br label %232

; <label>:232:                                    ; preds = %67, %228
  %233 = load %11*, %11** %8, align 8
  %234 = bitcast %11* %233 to i8*
  call void @free(i8* %234) #7
  store %11* null, %11** %4, align 8
  br label %235

; <label>:235:                                    ; preds = %232, %220, %43, %37, %31, %21
  %236 = load %11*, %11** %4, align 8
  ret %11* %236
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #9

; Function Attrs: noinline nounwind uwtable
define internal i64 @149(i8**) #2 {
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
  %12 = call i64 @strlen(i8* %11) #11
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
define internal zeroext i1 @150(%11*, i64) #2 {
  %3 = alloca i1, align 1
  %4 = alloca %11*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %11* %0, %11** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %11*, %11** %4, align 8
  %9 = getelementptr inbounds %11, %11* %8, i32 0, i32 7
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %5, align 8
  %12 = add i64 %10, %11
  %13 = add i64 %12, 256
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load %11*, %11** %4, align 8
  %16 = getelementptr inbounds %11, %11* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %26

; <label>:19:                                     ; preds = %2
  %20 = load %11*, %11** %4, align 8
  %21 = getelementptr inbounds %11, %11* %20, i32 0, i32 4
  %22 = load i8*, i8** %21, align 8
  call void @free(i8* %22) #7
  %23 = load %11*, %11** %4, align 8
  %24 = getelementptr inbounds %11, %11* %23, i32 0, i32 4
  store i8* null, i8** %24, align 8
  %25 = call i32* @__errno_location() #13
  store i32 36, i32* %25, align 4
  store i1 false, i1* %3, align 1
  br label %49

; <label>:26:                                     ; preds = %2
  %27 = load i64, i64* %7, align 8
  %28 = load %11*, %11** %4, align 8
  %29 = getelementptr inbounds %11, %11* %28, i32 0, i32 7
  store i64 %27, i64* %29, align 8
  %30 = load %11*, %11** %4, align 8
  %31 = getelementptr inbounds %11, %11* %30, i32 0, i32 4
  %32 = load i8*, i8** %31, align 8
  %33 = load %11*, %11** %4, align 8
  %34 = getelementptr inbounds %11, %11* %33, i32 0, i32 7
  %35 = load i64, i64* %34, align 8
  %36 = call i8* @realloc(i8* %32, i64 %35) #7
  store i8* %36, i8** %6, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %45

; <label>:39:                                     ; preds = %26
  %40 = load %11*, %11** %4, align 8
  %41 = getelementptr inbounds %11, %11* %40, i32 0, i32 4
  %42 = load i8*, i8** %41, align 8
  call void @free(i8* %42) #7
  %43 = load %11*, %11** %4, align 8
  %44 = getelementptr inbounds %11, %11* %43, i32 0, i32 4
  store i8* null, i8** %44, align 8
  store i1 false, i1* %3, align 1
  br label %49

; <label>:45:                                     ; preds = %26
  %46 = load i8*, i8** %6, align 8
  %47 = load %11*, %11** %4, align 8
  %48 = getelementptr inbounds %11, %11* %47, i32 0, i32 4
  store i8* %46, i8** %48, align 8
  store i1 true, i1* %3, align 1
  br label %49

; <label>:49:                                     ; preds = %45, %39, %19
  %50 = load i1, i1* %3, align 1
  ret i1 %50
}

; Function Attrs: noinline nounwind uwtable
define internal %12* @151(%11*, i8*, i64) #2 {
  %4 = alloca %12*, align 8
  %5 = alloca %11*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %12*, align 8
  %9 = alloca i64, align 8
  store %11* %0, %11** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = add i64 264, %10
  store i64 %11, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = call noalias i8* @malloc(i64 %12) #7
  %14 = bitcast i8* %13 to %12*
  store %12* %14, %12** %8, align 8
  %15 = icmp eq %12* %14, null
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %3
  store %12* null, %12** %4, align 8
  br label %49

; <label>:17:                                     ; preds = %3
  %18 = load %12*, %12** %8, align 8
  %19 = getelementptr inbounds %12, %12* %18, i32 0, i32 18
  %20 = getelementptr inbounds [1 x i8], [1 x i8]* %19, i32 0, i32 0
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %7, align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %20, i8* %21, i64 %22, i32 1, i1 false)
  %23 = load %12*, %12** %8, align 8
  %24 = getelementptr inbounds %12, %12* %23, i32 0, i32 18
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds [1 x i8], [1 x i8]* %24, i64 0, i64 %25
  store i8 0, i8* %26, align 1
  %27 = load i64, i64* %7, align 8
  %28 = load %12*, %12** %8, align 8
  %29 = getelementptr inbounds %12, %12* %28, i32 0, i32 12
  store i64 %27, i64* %29, align 8
  %30 = load %11*, %11** %5, align 8
  %31 = load %12*, %12** %8, align 8
  %32 = getelementptr inbounds %12, %12* %31, i32 0, i32 10
  store %11* %30, %11** %32, align 8
  %33 = load %11*, %11** %5, align 8
  %34 = getelementptr inbounds %11, %11* %33, i32 0, i32 4
  %35 = load i8*, i8** %34, align 8
  %36 = load %12*, %12** %8, align 8
  %37 = getelementptr inbounds %12, %12* %36, i32 0, i32 6
  store i8* %35, i8** %37, align 8
  %38 = load %12*, %12** %8, align 8
  %39 = getelementptr inbounds %12, %12* %38, i32 0, i32 7
  store i32 0, i32* %39, align 8
  %40 = load %12*, %12** %8, align 8
  %41 = getelementptr inbounds %12, %12* %40, i32 0, i32 15
  store i16 0, i16* %41, align 2
  %42 = load %12*, %12** %8, align 8
  %43 = getelementptr inbounds %12, %12* %42, i32 0, i32 16
  store i16 3, i16* %43, align 4
  %44 = load %12*, %12** %8, align 8
  %45 = getelementptr inbounds %12, %12* %44, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load %12*, %12** %8, align 8
  %47 = getelementptr inbounds %12, %12* %46, i32 0, i32 4
  store i8* null, i8** %47, align 8
  %48 = load %12*, %12** %8, align 8
  store %12* %48, %12** %4, align 8
  br label %49

; <label>:49:                                     ; preds = %17, %16
  %50 = load %12*, %12** %4, align 8
  ret %12* %50
}

; Function Attrs: noinline nounwind uwtable
define internal void @152(%12*, i1 zeroext) #2 {
  %3 = alloca %12*, align 8
  %4 = alloca i8, align 1
  store %12* %0, %12** %3, align 8
  %5 = zext i1 %1 to i8
  store i8 %5, i8* %4, align 1
  %6 = load %12*, %12** %3, align 8
  %7 = getelementptr inbounds %12, %12* %6, i32 0, i32 14
  %8 = load i16, i16* %7, align 8
  %9 = zext i16 %8 to i32
  %10 = icmp eq i32 %9, 11
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %2
  call void @abort() #10
  unreachable

; <label>:12:                                     ; preds = %2
  %13 = load i8, i8* %4, align 1
  %14 = trunc i8 %13 to i1
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 2, i32 1
  %17 = sext i32 %16 to i64
  %18 = load %12*, %12** %3, align 8
  %19 = getelementptr inbounds %12, %12* %18, i32 0, i32 17
  %20 = getelementptr inbounds [1 x %8], [1 x %8]* %19, i32 0, i32 0
  %21 = getelementptr inbounds %8, %8* %20, i32 0, i32 8
  store i64 %17, i64* %21, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i16 @153(%11*, %12*, i1 zeroext) #2 {
  %4 = alloca i16, align 2
  %5 = alloca %11*, align 8
  %6 = alloca %12*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %8*, align 8
  %9 = alloca i32, align 4
  store %11* %0, %11** %5, align 8
  store %12* %1, %12** %6, align 8
  %10 = zext i1 %2 to i8
  store i8 %10, i8* %7, align 1
  %11 = load %12*, %12** %6, align 8
  %12 = getelementptr inbounds %12, %12* %11, i32 0, i32 17
  %13 = getelementptr inbounds [1 x %8], [1 x %8]* %12, i32 0, i32 0
  store %8* %13, %8** %8, align 8
  %14 = load %12*, %12** %6, align 8
  %15 = getelementptr inbounds %12, %12* %14, i32 0, i32 11
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %25

; <label>:18:                                     ; preds = %3
  %19 = load %11*, %11** %5, align 8
  %20 = getelementptr inbounds %11, %11* %19, i32 0, i32 10
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %18
  store i8 1, i8* %7, align 1
  br label %25

; <label>:25:                                     ; preds = %24, %18, %3
  %26 = load %11*, %11** %5, align 8
  %27 = getelementptr inbounds %11, %11* %26, i32 0, i32 10
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, 2
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

; <label>:31:                                     ; preds = %25
  %32 = load i8, i8* %7, align 1
  %33 = trunc i8 %32 to i1
  br i1 %33, label %34, label %60

; <label>:34:                                     ; preds = %31, %25
  %35 = load %12*, %12** %6, align 8
  %36 = getelementptr inbounds %12, %12* %35, i32 0, i32 5
  %37 = load i8*, i8** %36, align 8
  %38 = load %8*, %8** %8, align 8
  %39 = call i32 @stat(i8* %37, %8* %38) #7
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %78

; <label>:41:                                     ; preds = %34
  %42 = call i32* @__errno_location() #13
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %9, align 4
  %44 = call i32* @__errno_location() #13
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %47, label %56

; <label>:47:                                     ; preds = %41
  %48 = load %12*, %12** %6, align 8
  %49 = getelementptr inbounds %12, %12* %48, i32 0, i32 5
  %50 = load i8*, i8** %49, align 8
  %51 = load %8*, %8** %8, align 8
  %52 = call i32 @lstat(i8* %50, %8* %51) #7
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

; <label>:54:                                     ; preds = %47
  %55 = call i32* @__errno_location() #13
  store i32 0, i32* %55, align 4
  store i16 13, i16* %4, align 2
  br label %147

; <label>:56:                                     ; preds = %47, %41
  %57 = load i32, i32* %9, align 4
  %58 = load %12*, %12** %6, align 8
  %59 = getelementptr inbounds %12, %12* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 8
  br label %75

; <label>:60:                                     ; preds = %31
  %61 = load %11*, %11** %5, align 8
  %62 = getelementptr inbounds %11, %11* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = load %12*, %12** %6, align 8
  %65 = getelementptr inbounds %12, %12* %64, i32 0, i32 5
  %66 = load i8*, i8** %65, align 8
  %67 = load %8*, %8** %8, align 8
  %68 = call i32 @fstatat(i32 %63, i8* %66, %8* %67, i32 256) #7
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

; <label>:70:                                     ; preds = %60
  %71 = call i32* @__errno_location() #13
  %72 = load i32, i32* %71, align 4
  %73 = load %12*, %12** %6, align 8
  %74 = getelementptr inbounds %12, %12* %73, i32 0, i32 7
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
  %88 = load %11*, %11** %5, align 8
  %89 = getelementptr inbounds %11, %11* %88, i32 0, i32 10
  %90 = load i32, i32* %89, align 8
  %91 = and i32 %90, 32
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 0, i32 2
  %95 = sext i32 %94 to i64
  %96 = sub i64 %87, %95
  %97 = load %12*, %12** %6, align 8
  %98 = getelementptr inbounds %12, %12* %97, i32 0, i32 13
  store i64 %96, i64* %98, align 8
  %99 = load %12*, %12** %6, align 8
  %100 = getelementptr inbounds %12, %12* %99, i32 0, i32 18
  %101 = getelementptr inbounds [1 x i8], [1 x i8]* %100, i64 0, i64 0
  %102 = load i8, i8* %101, align 8
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 46
  br i1 %104, label %105, label %132

; <label>:105:                                    ; preds = %85
  %106 = load %12*, %12** %6, align 8
  %107 = getelementptr inbounds %12, %12* %106, i32 0, i32 18
  %108 = getelementptr inbounds [1 x i8], [1 x i8]* %107, i64 0, i64 1
  %109 = load i8, i8* %108, align 1
  %110 = icmp ne i8 %109, 0
  br i1 %110, label %111, label %124

; <label>:111:                                    ; preds = %105
  %112 = load %12*, %12** %6, align 8
  %113 = getelementptr inbounds %12, %12* %112, i32 0, i32 18
  %114 = getelementptr inbounds [1 x i8], [1 x i8]* %113, i64 0, i64 1
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 46
  br i1 %117, label %118, label %132

; <label>:118:                                    ; preds = %111
  %119 = load %12*, %12** %6, align 8
  %120 = getelementptr inbounds %12, %12* %119, i32 0, i32 18
  %121 = getelementptr inbounds [1 x i8], [1 x i8]* %120, i64 0, i64 2
  %122 = load i8, i8* %121, align 2
  %123 = icmp ne i8 %122, 0
  br i1 %123, label %132, label %124

; <label>:124:                                    ; preds = %118, %105
  %125 = load %12*, %12** %6, align 8
  %126 = getelementptr inbounds %12, %12* %125, i32 0, i32 11
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
define internal %12* @154(%11*, %12*, i64) #2 {
  %4 = alloca %12*, align 8
  %5 = alloca %11*, align 8
  %6 = alloca %12*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %12**, align 8
  %9 = alloca %12*, align 8
  %10 = alloca %12*, align 8
  %11 = alloca i32 (i8*, i8*)*, align 8
  %12 = alloca %12**, align 8
  store %11* %0, %11** %5, align 8
  store %12* %1, %12** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = ptrtoint %12** %10 to i64
  %14 = bitcast %12** %10 to i8*
  %15 = ptrtoint i8* %14 to i64
  %16 = icmp eq i64 %13, %15
  br i1 %16, label %17, label %22

; <label>:17:                                     ; preds = %3
  %18 = load %11*, %11** %5, align 8
  %19 = getelementptr inbounds %11, %11* %18, i32 0, i32 9
  %20 = load i32 (%12**, %12**)*, i32 (%12**, %12**)** %19, align 8
  %21 = bitcast i32 (%12**, %12**)* %20 to i32 (i8*, i8*)*
  br label %22

; <label>:22:                                     ; preds = %3, %17
  %23 = phi i32 (i8*, i8*)* [ %21, %17 ], [ @160, %3 ]
  store i32 (i8*, i8*)* %23, i32 (i8*, i8*)** %11, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load %11*, %11** %5, align 8
  %26 = getelementptr inbounds %11, %11* %25, i32 0, i32 8
  %27 = load i64, i64* %26, align 8
  %28 = icmp ugt i64 %24, %27
  br i1 %28, label %29, label %64

; <label>:29:                                     ; preds = %22
  %30 = load i64, i64* %7, align 8
  %31 = add i64 %30, 40
  %32 = load %11*, %11** %5, align 8
  %33 = getelementptr inbounds %11, %11* %32, i32 0, i32 8
  store i64 %31, i64* %33, align 8
  %34 = load %11*, %11** %5, align 8
  %35 = getelementptr inbounds %11, %11* %34, i32 0, i32 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 2305843009213693951, %36
  br i1 %37, label %50, label %38

; <label>:38:                                     ; preds = %29
  %39 = load %11*, %11** %5, align 8
  %40 = getelementptr inbounds %11, %11* %39, i32 0, i32 2
  %41 = load %12**, %12*** %40, align 8
  %42 = bitcast %12** %41 to i8*
  %43 = load %11*, %11** %5, align 8
  %44 = getelementptr inbounds %11, %11* %43, i32 0, i32 8
  %45 = load i64, i64* %44, align 8
  %46 = mul i64 %45, 8
  %47 = call i8* @realloc(i8* %42, i64 %46) #7
  %48 = bitcast i8* %47 to %12**
  store %12** %48, %12*** %12, align 8
  %49 = icmp ne %12** %48, null
  br i1 %49, label %60, label %50

; <label>:50:                                     ; preds = %38, %29
  %51 = load %11*, %11** %5, align 8
  %52 = getelementptr inbounds %11, %11* %51, i32 0, i32 2
  %53 = load %12**, %12*** %52, align 8
  %54 = bitcast %12** %53 to i8*
  call void @free(i8* %54) #7
  %55 = load %11*, %11** %5, align 8
  %56 = getelementptr inbounds %11, %11* %55, i32 0, i32 2
  store %12** null, %12*** %56, align 8
  %57 = load %11*, %11** %5, align 8
  %58 = getelementptr inbounds %11, %11* %57, i32 0, i32 8
  store i64 0, i64* %58, align 8
  %59 = load %12*, %12** %6, align 8
  store %12* %59, %12** %4, align 8
  br label %109

; <label>:60:                                     ; preds = %38
  %61 = load %12**, %12*** %12, align 8
  %62 = load %11*, %11** %5, align 8
  %63 = getelementptr inbounds %11, %11* %62, i32 0, i32 2
  store %12** %61, %12*** %63, align 8
  br label %64

; <label>:64:                                     ; preds = %60, %22
  %65 = load %11*, %11** %5, align 8
  %66 = getelementptr inbounds %11, %11* %65, i32 0, i32 2
  %67 = load %12**, %12*** %66, align 8
  store %12** %67, %12*** %8, align 8
  %68 = load %12*, %12** %6, align 8
  store %12* %68, %12** %9, align 8
  br label %69

; <label>:69:                                     ; preds = %72, %64
  %70 = load %12*, %12** %9, align 8
  %71 = icmp ne %12* %70, null
  br i1 %71, label %72, label %79

; <label>:72:                                     ; preds = %69
  %73 = load %12*, %12** %9, align 8
  %74 = load %12**, %12*** %8, align 8
  %75 = getelementptr inbounds %12*, %12** %74, i32 1
  store %12** %75, %12*** %8, align 8
  store %12* %73, %12** %74, align 8
  %76 = load %12*, %12** %9, align 8
  %77 = getelementptr inbounds %12, %12* %76, i32 0, i32 2
  %78 = load %12*, %12** %77, align 8
  store %12* %78, %12** %9, align 8
  br label %69

; <label>:79:                                     ; preds = %69
  %80 = load %11*, %11** %5, align 8
  %81 = getelementptr inbounds %11, %11* %80, i32 0, i32 2
  %82 = load %12**, %12*** %81, align 8
  %83 = bitcast %12** %82 to i8*
  %84 = load i64, i64* %7, align 8
  %85 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %11, align 8
  call void @qsort(i8* %83, i64 %84, i64 8, i32 (i8*, i8*)* %85)
  %86 = load %11*, %11** %5, align 8
  %87 = getelementptr inbounds %11, %11* %86, i32 0, i32 2
  %88 = load %12**, %12*** %87, align 8
  store %12** %88, %12*** %8, align 8
  %89 = load %12*, %12** %88, align 8
  store %12* %89, %12** %6, align 8
  br label %90

; <label>:90:                                     ; preds = %95, %79
  %91 = load i64, i64* %7, align 8
  %92 = add i64 %91, -1
  store i64 %92, i64* %7, align 8
  %93 = icmp ne i64 %92, 0
  %94 = load %12**, %12*** %8, align 8
  br i1 %93, label %95, label %104

; <label>:95:                                     ; preds = %90
  %96 = getelementptr inbounds %12*, %12** %94, i64 1
  %97 = load %12*, %12** %96, align 8
  %98 = load %12**, %12*** %8, align 8
  %99 = getelementptr inbounds %12*, %12** %98, i64 0
  %100 = load %12*, %12** %99, align 8
  %101 = getelementptr inbounds %12, %12* %100, i32 0, i32 2
  store %12* %97, %12** %101, align 8
  %102 = load %12**, %12*** %8, align 8
  %103 = getelementptr inbounds %12*, %12** %102, i32 1
  store %12** %103, %12*** %8, align 8
  br label %90

; <label>:104:                                    ; preds = %90
  %105 = getelementptr inbounds %12*, %12** %94, i64 0
  %106 = load %12*, %12** %105, align 8
  %107 = getelementptr inbounds %12, %12* %106, i32 0, i32 2
  store %12* null, %12** %107, align 8
  %108 = load %12*, %12** %6, align 8
  store %12* %108, %12** %4, align 8
  br label %109

; <label>:109:                                    ; preds = %104, %50
  %110 = load %12*, %12** %4, align 8
  ret %12* %110
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @155(%11*) #2 {
  %2 = alloca i1, align 1
  %3 = alloca %11*, align 8
  store %11* %0, %11** %3, align 8
  %4 = load %11*, %11** %3, align 8
  %5 = getelementptr inbounds %11, %11* %4, i32 0, i32 10
  %6 = load i32, i32* %5, align 8
  %7 = and i32 %6, 258
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %20

; <label>:9:                                      ; preds = %1
  %10 = call %13* @hash_initialize(i64 31, %4* null, i64 (i8*, i64)* @158, i1 (i8*, i8*)* @159, void (i8*)* @free)
  %11 = load %11*, %11** %3, align 8
  %12 = getelementptr inbounds %11, %11* %11, i32 0, i32 12
  %13 = bitcast %15* %12 to %13**
  store %13* %10, %13** %13, align 8
  %14 = load %11*, %11** %3, align 8
  %15 = getelementptr inbounds %11, %11* %14, i32 0, i32 12
  %16 = bitcast %15* %15 to %13**
  %17 = load %13*, %13** %16, align 8
  %18 = icmp ne %13* %17, null
  br i1 %18, label %37, label %19

; <label>:19:                                     ; preds = %9
  store i1 false, i1* %2, align 1
  br label %38

; <label>:20:                                     ; preds = %1
  %21 = call noalias i8* @malloc(i64 32) #7
  %22 = bitcast i8* %21 to %18*
  %23 = load %11*, %11** %3, align 8
  %24 = getelementptr inbounds %11, %11* %23, i32 0, i32 12
  %25 = bitcast %15* %24 to %18**
  store %18* %22, %18** %25, align 8
  %26 = load %11*, %11** %3, align 8
  %27 = getelementptr inbounds %11, %11* %26, i32 0, i32 12
  %28 = bitcast %15* %27 to %18**
  %29 = load %18*, %18** %28, align 8
  %30 = icmp ne %18* %29, null
  br i1 %30, label %32, label %31

; <label>:31:                                     ; preds = %20
  store i1 false, i1* %2, align 1
  br label %38

; <label>:32:                                     ; preds = %20
  %33 = load %11*, %11** %3, align 8
  %34 = getelementptr inbounds %11, %11* %33, i32 0, i32 12
  %35 = bitcast %15* %34 to %18**
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
define internal i32 @156(%11*, i8*) #2 {
  %3 = alloca %11*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %11* %0, %11** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %11*, %11** %3, align 8
  %8 = getelementptr inbounds %11, %11* %7, i32 0, i32 10
  %9 = load i32, i32* %8, align 8
  %10 = and i32 %9, 16
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 131072, i32 0
  %14 = or i32 67840, %13
  store i32 %14, i32* %5, align 4
  %15 = load %11*, %11** %3, align 8
  %16 = getelementptr inbounds %11, %11* %15, i32 0, i32 10
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 512
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

; <label>:20:                                     ; preds = %2
  %21 = load %11*, %11** %3, align 8
  %22 = getelementptr inbounds %11, %11* %21, i32 0, i32 6
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
define internal void @157(%12*) #2 {
  %2 = alloca %12*, align 8
  %3 = alloca %12*, align 8
  store %12* %0, %12** %2, align 8
  br label %4

; <label>:4:                                      ; preds = %7, %1
  %5 = load %12*, %12** %2, align 8
  store %12* %5, %12** %3, align 8
  %6 = icmp ne %12* %5, null
  br i1 %6, label %7, label %13

; <label>:7:                                      ; preds = %4
  %8 = load %12*, %12** %2, align 8
  %9 = getelementptr inbounds %12, %12* %8, i32 0, i32 2
  %10 = load %12*, %12** %9, align 8
  store %12* %10, %12** %2, align 8
  %11 = load %12*, %12** %3, align 8
  %12 = bitcast %12* %11 to i8*
  call void @free(i8* %12) #7
  br label %4

; <label>:13:                                     ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @158(i8*, i64) #2 {
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
define internal zeroext i1 @159(i8*, i8*) #2 {
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
define internal i32 @160(i8*, i8*) #2 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %12**, align 8
  %6 = alloca %12**, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %12**
  store %12** %8, %12*** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %12**
  store %12** %10, %12*** %6, align 8
  %11 = load %12**, %12*** %5, align 8
  %12 = getelementptr inbounds %12*, %12** %11, i64 0
  %13 = load %12*, %12** %12, align 8
  %14 = getelementptr inbounds %12, %12* %13, i32 0, i32 10
  %15 = load %11*, %11** %14, align 8
  %16 = getelementptr inbounds %11, %11* %15, i32 0, i32 9
  %17 = load i32 (%12**, %12**)*, i32 (%12**, %12**)** %16, align 8
  %18 = load %12**, %12*** %5, align 8
  %19 = load %12**, %12*** %6, align 8
  %20 = call i32 %17(%12** %18, %12** %19)
  ret i32 %20
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #4

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind
declare i32 @lstat(i8*, %8*) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #9

; Function Attrs: noinline nounwind uwtable
define i32 @fts_close(%11*) #2 {
  %2 = alloca i32, align 4
  %3 = alloca %11*, align 8
  %4 = alloca %12*, align 8
  %5 = alloca %12*, align 8
  %6 = alloca i32, align 4
  store %11* %0, %11** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %11*, %11** %3, align 8
  %8 = getelementptr inbounds %11, %11* %7, i32 0, i32 0
  %9 = load %12*, %12** %8, align 8
  %10 = icmp ne %12* %9, null
  br i1 %10, label %11, label %39

; <label>:11:                                     ; preds = %1
  %12 = load %11*, %11** %3, align 8
  %13 = getelementptr inbounds %11, %11* %12, i32 0, i32 0
  %14 = load %12*, %12** %13, align 8
  store %12* %14, %12** %5, align 8
  br label %15

; <label>:15:                                     ; preds = %33, %11
  %16 = load %12*, %12** %5, align 8
  %17 = getelementptr inbounds %12, %12* %16, i32 0, i32 11
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %18, 0
  %20 = load %12*, %12** %5, align 8
  br i1 %19, label %21, label %37

; <label>:21:                                     ; preds = %15
  store %12* %20, %12** %4, align 8
  %22 = load %12*, %12** %5, align 8
  %23 = getelementptr inbounds %12, %12* %22, i32 0, i32 2
  %24 = load %12*, %12** %23, align 8
  %25 = icmp ne %12* %24, null
  %26 = load %12*, %12** %5, align 8
  br i1 %25, label %27, label %30

; <label>:27:                                     ; preds = %21
  %28 = getelementptr inbounds %12, %12* %26, i32 0, i32 2
  %29 = load %12*, %12** %28, align 8
  br label %33

; <label>:30:                                     ; preds = %21
  %31 = getelementptr inbounds %12, %12* %26, i32 0, i32 1
  %32 = load %12*, %12** %31, align 8
  br label %33

; <label>:33:                                     ; preds = %30, %27
  %34 = phi %12* [ %29, %27 ], [ %32, %30 ]
  store %12* %34, %12** %5, align 8
  %35 = load %12*, %12** %4, align 8
  %36 = bitcast %12* %35 to i8*
  call void @free(i8* %36) #7
  br label %15

; <label>:37:                                     ; preds = %15
  %38 = bitcast %12* %20 to i8*
  call void @free(i8* %38) #7
  br label %39

; <label>:39:                                     ; preds = %37, %1
  %40 = load %11*, %11** %3, align 8
  %41 = getelementptr inbounds %11, %11* %40, i32 0, i32 1
  %42 = load %12*, %12** %41, align 8
  %43 = icmp ne %12* %42, null
  br i1 %43, label %44, label %48

; <label>:44:                                     ; preds = %39
  %45 = load %11*, %11** %3, align 8
  %46 = getelementptr inbounds %11, %11* %45, i32 0, i32 1
  %47 = load %12*, %12** %46, align 8
  call void @157(%12* %47)
  br label %48

; <label>:48:                                     ; preds = %44, %39
  %49 = load %11*, %11** %3, align 8
  %50 = getelementptr inbounds %11, %11* %49, i32 0, i32 2
  %51 = load %12**, %12*** %50, align 8
  %52 = bitcast %12** %51 to i8*
  call void @free(i8* %52) #7
  %53 = load %11*, %11** %3, align 8
  %54 = getelementptr inbounds %11, %11* %53, i32 0, i32 4
  %55 = load i8*, i8** %54, align 8
  call void @free(i8* %55) #7
  %56 = load %11*, %11** %3, align 8
  %57 = getelementptr inbounds %11, %11* %56, i32 0, i32 10
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, 512
  %60 = icmp ne i32 %59, 0
  %61 = load %11*, %11** %3, align 8
  br i1 %60, label %62, label %75

; <label>:62:                                     ; preds = %48
  %63 = getelementptr inbounds %11, %11* %61, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = icmp sle i32 0, %64
  br i1 %65, label %66, label %100

; <label>:66:                                     ; preds = %62
  %67 = load %11*, %11** %3, align 8
  %68 = getelementptr inbounds %11, %11* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @close(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %100

; <label>:72:                                     ; preds = %66
  %73 = call i32* @__errno_location() #13
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %6, align 4
  br label %100

; <label>:75:                                     ; preds = %48
  %76 = getelementptr inbounds %11, %11* %61, i32 0, i32 10
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %100, label %80

; <label>:80:                                     ; preds = %75
  %81 = load %11*, %11** %3, align 8
  %82 = getelementptr inbounds %11, %11* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @fchdir(i32 %83) #7
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

; <label>:86:                                     ; preds = %80
  %87 = call i32* @__errno_location() #13
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %6, align 4
  br label %89

; <label>:89:                                     ; preds = %86, %80
  %90 = load %11*, %11** %3, align 8
  %91 = getelementptr inbounds %11, %11* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @close(i32 %92)
  %94 = icmp ne i32 %93, 0
  %95 = load i32, i32* %6, align 4
  %96 = icmp eq i32 %95, 0
  %or.cond = and i1 %94, %96
  br i1 %or.cond, label %97, label %100

; <label>:97:                                     ; preds = %89
  %98 = call i32* @__errno_location() #13
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %6, align 4
  br label %100

; <label>:100:                                    ; preds = %75, %97, %89, %62, %72, %66
  %101 = load %11*, %11** %3, align 8
  %102 = getelementptr inbounds %11, %11* %101, i32 0, i32 13
  call void @161(%16* %102)
  %103 = load %11*, %11** %3, align 8
  %104 = getelementptr inbounds %11, %11* %103, i32 0, i32 11
  %105 = load %13*, %13** %104, align 8
  %106 = icmp ne %13* %105, null
  br i1 %106, label %107, label %111

; <label>:107:                                    ; preds = %100
  %108 = load %11*, %11** %3, align 8
  %109 = getelementptr inbounds %11, %11* %108, i32 0, i32 11
  %110 = load %13*, %13** %109, align 8
  call void @hash_free(%13* %110)
  br label %111

; <label>:111:                                    ; preds = %107, %100
  %112 = load %11*, %11** %3, align 8
  call void @162(%11* %112)
  %113 = load %11*, %11** %3, align 8
  %114 = bitcast %11* %113 to i8*
  call void @free(i8* %114) #7
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

; <label>:117:                                    ; preds = %111
  %118 = load i32, i32* %6, align 4
  %119 = call i32* @__errno_location() #13
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
declare i32 @fchdir(i32) #4

; Function Attrs: noinline nounwind uwtable
define internal void @161(%16*) #2 {
  %2 = alloca %16*, align 8
  %3 = alloca i32, align 4
  store %16* %0, %16** %2, align 8
  br label %4

; <label>:4:                                      ; preds = %16, %1
  %5 = load %16*, %16** %2, align 8
  %6 = call zeroext i1 @i_ring_empty(%16* %5)
  %7 = xor i1 %6, true
  br i1 %7, label %8, label %17

; <label>:8:                                      ; preds = %4
  %9 = load %16*, %16** %2, align 8
  %10 = call i32 @i_ring_pop(%16* %9)
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
define internal void @162(%11*) #2 {
  %2 = alloca %11*, align 8
  store %11* %0, %11** %2, align 8
  %3 = load %11*, %11** %2, align 8
  %4 = getelementptr inbounds %11, %11* %3, i32 0, i32 10
  %5 = load i32, i32* %4, align 8
  %6 = and i32 %5, 258
  %7 = icmp ne i32 %6, 0
  %8 = load %11*, %11** %2, align 8
  %9 = getelementptr inbounds %11, %11* %8, i32 0, i32 12
  br i1 %7, label %10, label %19

; <label>:10:                                     ; preds = %1
  %11 = bitcast %15* %9 to %13**
  %12 = load %13*, %13** %11, align 8
  %13 = icmp ne %13* %12, null
  br i1 %13, label %14, label %23

; <label>:14:                                     ; preds = %10
  %15 = load %11*, %11** %2, align 8
  %16 = getelementptr inbounds %11, %11* %15, i32 0, i32 12
  %17 = bitcast %15* %16 to %13**
  %18 = load %13*, %13** %17, align 8
  call void @hash_free(%13* %18)
  br label %23

; <label>:19:                                     ; preds = %1
  %20 = bitcast %15* %9 to %18**
  %21 = load %18*, %18** %20, align 8
  %22 = bitcast %18* %21 to i8*
  call void @free(i8* %22) #7
  br label %23

; <label>:23:                                     ; preds = %10, %14, %19
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %12* @fts_read(%11*) #2 {
  %2 = alloca %12*, align 8
  %3 = alloca %11*, align 8
  %4 = alloca %12*, align 8
  %5 = alloca %12*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i8*, align 8
  %8 = alloca %12*, align 8
  %9 = alloca i32, align 4
  store %11* %0, %11** %3, align 8
  %10 = load %11*, %11** %3, align 8
  %11 = getelementptr inbounds %11, %11* %10, i32 0, i32 0
  %12 = load %12*, %12** %11, align 8
  %13 = icmp eq %12* %12, null
  br i1 %13, label %20, label %14

; <label>:14:                                     ; preds = %1
  %15 = load %11*, %11** %3, align 8
  %16 = getelementptr inbounds %11, %11* %15, i32 0, i32 10
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 8192
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %14, %1
  store %12* null, %12** %2, align 8
  br label %700

; <label>:21:                                     ; preds = %14
  %22 = load %11*, %11** %3, align 8
  %23 = getelementptr inbounds %11, %11* %22, i32 0, i32 0
  %24 = load %12*, %12** %23, align 8
  store %12* %24, %12** %4, align 8
  %25 = load %12*, %12** %4, align 8
  %26 = getelementptr inbounds %12, %12* %25, i32 0, i32 16
  %27 = load i16, i16* %26, align 4
  store i16 %27, i16* %6, align 2
  %28 = load %12*, %12** %4, align 8
  %29 = getelementptr inbounds %12, %12* %28, i32 0, i32 16
  store i16 3, i16* %29, align 4
  %30 = load i16, i16* %6, align 2
  %31 = zext i16 %30 to i32
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %40

; <label>:33:                                     ; preds = %21
  %34 = load %11*, %11** %3, align 8
  %35 = load %12*, %12** %4, align 8
  %36 = call zeroext i16 @153(%11* %34, %12* %35, i1 zeroext false)
  %37 = load %12*, %12** %4, align 8
  %38 = getelementptr inbounds %12, %12* %37, i32 0, i32 14
  store i16 %36, i16* %38, align 8
  %39 = load %12*, %12** %4, align 8
  store %12* %39, %12** %2, align 8
  br label %700

; <label>:40:                                     ; preds = %21
  %41 = load i16, i16* %6, align 2
  %42 = zext i16 %41 to i32
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %93

; <label>:44:                                     ; preds = %40
  %45 = load %12*, %12** %4, align 8
  %46 = getelementptr inbounds %12, %12* %45, i32 0, i32 14
  %47 = load i16, i16* %46, align 8
  %48 = zext i16 %47 to i32
  %49 = icmp eq i32 %48, 12
  br i1 %49, label %56, label %50

; <label>:50:                                     ; preds = %44
  %51 = load %12*, %12** %4, align 8
  %52 = getelementptr inbounds %12, %12* %51, i32 0, i32 14
  %53 = load i16, i16* %52, align 8
  %54 = zext i16 %53 to i32
  %55 = icmp eq i32 %54, 13
  br i1 %55, label %56, label %93

; <label>:56:                                     ; preds = %50, %44
  %57 = load %11*, %11** %3, align 8
  %58 = load %12*, %12** %4, align 8
  %59 = call zeroext i16 @153(%11* %57, %12* %58, i1 zeroext true)
  %60 = load %12*, %12** %4, align 8
  %61 = getelementptr inbounds %12, %12* %60, i32 0, i32 14
  store i16 %59, i16* %61, align 8
  %62 = load %12*, %12** %4, align 8
  %63 = getelementptr inbounds %12, %12* %62, i32 0, i32 14
  %64 = load i16, i16* %63, align 8
  %65 = zext i16 %64 to i32
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %407

; <label>:67:                                     ; preds = %56
  %68 = load %11*, %11** %3, align 8
  %69 = getelementptr inbounds %11, %11* %68, i32 0, i32 10
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %407, label %73

; <label>:73:                                     ; preds = %67
  %74 = load %11*, %11** %3, align 8
  %75 = call i32 @156(%11* %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @98, i32 0, i32 0))
  %76 = load %12*, %12** %4, align 8
  %77 = getelementptr inbounds %12, %12* %76, i32 0, i32 8
  store i32 %75, i32* %77, align 4
  %78 = icmp slt i32 %75, 0
  br i1 %78, label %79, label %86

; <label>:79:                                     ; preds = %73
  %80 = call i32* @__errno_location() #13
  %81 = load i32, i32* %80, align 4
  %82 = load %12*, %12** %4, align 8
  %83 = getelementptr inbounds %12, %12* %82, i32 0, i32 7
  store i32 %81, i32* %83, align 8
  %84 = load %12*, %12** %4, align 8
  %85 = getelementptr inbounds %12, %12* %84, i32 0, i32 14
  store i16 7, i16* %85, align 8
  br label %407

; <label>:86:                                     ; preds = %73
  %87 = load %12*, %12** %4, align 8
  %88 = getelementptr inbounds %12, %12* %87, i32 0, i32 15
  %89 = load i16, i16* %88, align 2
  %90 = zext i16 %89 to i32
  %91 = or i32 %90, 2
  %92 = trunc i32 %91 to i16
  store i16 %92, i16* %88, align 2
  br label %407

; <label>:93:                                     ; preds = %50, %40
  %94 = load %12*, %12** %4, align 8
  %95 = getelementptr inbounds %12, %12* %94, i32 0, i32 14
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
  %104 = load %11*, %11** %3, align 8
  %105 = getelementptr inbounds %11, %11* %104, i32 0, i32 10
  %106 = load i32, i32* %105, align 8
  %107 = and i32 %106, 64
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %148

; <label>:109:                                    ; preds = %103
  %110 = load %12*, %12** %4, align 8
  %111 = getelementptr inbounds %12, %12* %110, i32 0, i32 17
  %112 = getelementptr inbounds [1 x %8], [1 x %8]* %111, i32 0, i32 0
  %113 = getelementptr inbounds %8, %8* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %11*, %11** %3, align 8
  %116 = getelementptr inbounds %11, %11* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %114, %117
  br i1 %118, label %119, label %148

; <label>:119:                                    ; preds = %109, %99
  %120 = load %12*, %12** %4, align 8
  %121 = getelementptr inbounds %12, %12* %120, i32 0, i32 15
  %122 = load i16, i16* %121, align 2
  %123 = zext i16 %122 to i32
  %124 = and i32 %123, 2
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

; <label>:126:                                    ; preds = %119
  %127 = load %12*, %12** %4, align 8
  %128 = getelementptr inbounds %12, %12* %127, i32 0, i32 8
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @close(i32 %129)
  br label %131

; <label>:131:                                    ; preds = %126, %119
  %132 = load %11*, %11** %3, align 8
  %133 = getelementptr inbounds %11, %11* %132, i32 0, i32 1
  %134 = load %12*, %12** %133, align 8
  %135 = icmp ne %12* %134, null
  br i1 %135, label %136, label %142

; <label>:136:                                    ; preds = %131
  %137 = load %11*, %11** %3, align 8
  %138 = getelementptr inbounds %11, %11* %137, i32 0, i32 1
  %139 = load %12*, %12** %138, align 8
  call void @157(%12* %139)
  %140 = load %11*, %11** %3, align 8
  %141 = getelementptr inbounds %11, %11* %140, i32 0, i32 1
  store %12* null, %12** %141, align 8
  br label %142

; <label>:142:                                    ; preds = %136, %131
  %143 = load %12*, %12** %4, align 8
  %144 = getelementptr inbounds %12, %12* %143, i32 0, i32 14
  store i16 6, i16* %144, align 8
  %145 = load %11*, %11** %3, align 8
  %146 = load %12*, %12** %4, align 8
  call void @163(%11* %145, %12* %146)
  %147 = load %12*, %12** %4, align 8
  store %12* %147, %12** %2, align 8
  br label %700

; <label>:148:                                    ; preds = %109, %103
  %149 = load %11*, %11** %3, align 8
  %150 = getelementptr inbounds %11, %11* %149, i32 0, i32 1
  %151 = load %12*, %12** %150, align 8
  %152 = icmp ne %12* %151, null
  br i1 %152, label %153, label %169

; <label>:153:                                    ; preds = %148
  %154 = load %11*, %11** %3, align 8
  %155 = getelementptr inbounds %11, %11* %154, i32 0, i32 10
  %156 = load i32, i32* %155, align 8
  %157 = and i32 %156, 4096
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %169

; <label>:159:                                    ; preds = %153
  %160 = load %11*, %11** %3, align 8
  %161 = getelementptr inbounds %11, %11* %160, i32 0, i32 10
  %162 = load i32, i32* %161, align 8
  %163 = and i32 %162, -4097
  store i32 %163, i32* %161, align 8
  %164 = load %11*, %11** %3, align 8
  %165 = getelementptr inbounds %11, %11* %164, i32 0, i32 1
  %166 = load %12*, %12** %165, align 8
  call void @157(%12* %166)
  %167 = load %11*, %11** %3, align 8
  %168 = getelementptr inbounds %11, %11* %167, i32 0, i32 1
  store %12* null, %12** %168, align 8
  br label %169

; <label>:169:                                    ; preds = %159, %153, %148
  %170 = load %11*, %11** %3, align 8
  %171 = getelementptr inbounds %11, %11* %170, i32 0, i32 1
  %172 = load %12*, %12** %171, align 8
  %173 = icmp ne %12* %172, null
  %174 = load %11*, %11** %3, align 8
  br i1 %173, label %175, label %210

; <label>:175:                                    ; preds = %169
  %176 = load %12*, %12** %4, align 8
  %177 = load %12*, %12** %4, align 8
  %178 = getelementptr inbounds %12, %12* %177, i32 0, i32 5
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 @164(%11* %174, %12* %176, i32 -1, i8* %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %240

; <label>:182:                                    ; preds = %175
  %183 = call i32* @__errno_location() #13
  %184 = load i32, i32* %183, align 4
  %185 = load %12*, %12** %4, align 8
  %186 = getelementptr inbounds %12, %12* %185, i32 0, i32 7
  store i32 %184, i32* %186, align 8
  %187 = load %12*, %12** %4, align 8
  %188 = getelementptr inbounds %12, %12* %187, i32 0, i32 15
  %189 = load i16, i16* %188, align 2
  %190 = zext i16 %189 to i32
  %191 = or i32 %190, 1
  %192 = trunc i32 %191 to i16
  store i16 %192, i16* %188, align 2
  %193 = load %11*, %11** %3, align 8
  %194 = getelementptr inbounds %11, %11* %193, i32 0, i32 1
  %195 = load %12*, %12** %194, align 8
  store %12* %195, %12** %4, align 8
  br label %196

; <label>:196:                                    ; preds = %199, %182
  %197 = load %12*, %12** %4, align 8
  %198 = icmp ne %12* %197, null
  br i1 %198, label %199, label %240

; <label>:199:                                    ; preds = %196
  %200 = load %12*, %12** %4, align 8
  %201 = getelementptr inbounds %12, %12* %200, i32 0, i32 1
  %202 = load %12*, %12** %201, align 8
  %203 = getelementptr inbounds %12, %12* %202, i32 0, i32 5
  %204 = load i8*, i8** %203, align 8
  %205 = load %12*, %12** %4, align 8
  %206 = getelementptr inbounds %12, %12* %205, i32 0, i32 5
  store i8* %204, i8** %206, align 8
  %207 = load %12*, %12** %4, align 8
  %208 = getelementptr inbounds %12, %12* %207, i32 0, i32 2
  %209 = load %12*, %12** %208, align 8
  store %12* %209, %12** %4, align 8
  br label %196

; <label>:210:                                    ; preds = %169
  %211 = call %12* @165(%11* %174, i32 3)
  %212 = load %11*, %11** %3, align 8
  %213 = getelementptr inbounds %11, %11* %212, i32 0, i32 1
  store %12* %211, %12** %213, align 8
  %214 = icmp eq %12* %211, null
  br i1 %214, label %215, label %240

; <label>:215:                                    ; preds = %210
  %216 = load %11*, %11** %3, align 8
  %217 = getelementptr inbounds %11, %11* %216, i32 0, i32 10
  %218 = load i32, i32* %217, align 8
  %219 = and i32 %218, 8192
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

; <label>:221:                                    ; preds = %215
  store %12* null, %12** %2, align 8
  br label %700

; <label>:222:                                    ; preds = %215
  %223 = load %12*, %12** %4, align 8
  %224 = getelementptr inbounds %12, %12* %223, i32 0, i32 7
  %225 = load i32, i32* %224, align 8
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %236

; <label>:227:                                    ; preds = %222
  %228 = load %12*, %12** %4, align 8
  %229 = getelementptr inbounds %12, %12* %228, i32 0, i32 14
  %230 = load i16, i16* %229, align 8
  %231 = zext i16 %230 to i32
  %232 = icmp ne i32 %231, 4
  br i1 %232, label %233, label %236

; <label>:233:                                    ; preds = %227
  %234 = load %12*, %12** %4, align 8
  %235 = getelementptr inbounds %12, %12* %234, i32 0, i32 14
  store i16 7, i16* %235, align 8
  br label %236

; <label>:236:                                    ; preds = %222, %227, %233
  %237 = load %11*, %11** %3, align 8
  %238 = load %12*, %12** %4, align 8
  call void @163(%11* %237, %12* %238)
  %239 = load %12*, %12** %4, align 8
  store %12* %239, %12** %2, align 8
  br label %700

; <label>:240:                                    ; preds = %210, %175, %196
  %241 = load %11*, %11** %3, align 8
  %242 = getelementptr inbounds %11, %11* %241, i32 0, i32 1
  %243 = load %12*, %12** %242, align 8
  store %12* %243, %12** %4, align 8
  %244 = load %11*, %11** %3, align 8
  %245 = getelementptr inbounds %11, %11* %244, i32 0, i32 1
  store %12* null, %12** %245, align 8
  br label %370

; <label>:246:                                    ; preds = %93
  br label %247

; <label>:247:                                    ; preds = %323, %246
  %248 = load %12*, %12** %4, align 8
  store %12* %248, %12** %5, align 8
  %249 = load %12*, %12** %4, align 8
  %250 = getelementptr inbounds %12, %12* %249, i32 0, i32 2
  %251 = load %12*, %12** %250, align 8
  store %12* %251, %12** %4, align 8
  %252 = icmp ne %12* %251, null
  br i1 %252, label %253, label %513

; <label>:253:                                    ; preds = %247
  %254 = load %12*, %12** %4, align 8
  %255 = load %11*, %11** %3, align 8
  %256 = getelementptr inbounds %11, %11* %255, i32 0, i32 0
  store %12* %254, %12** %256, align 8
  %257 = load %12*, %12** %5, align 8
  %258 = bitcast %12* %257 to i8*
  call void @free(i8* %258) #7
  %259 = load %12*, %12** %4, align 8
  %260 = getelementptr inbounds %12, %12* %259, i32 0, i32 11
  %261 = load i64, i64* %260, align 8
  %262 = icmp eq i64 %261, 0
  br i1 %262, label %263, label %317

; <label>:263:                                    ; preds = %253
  %264 = load %11*, %11** %3, align 8
  %265 = getelementptr inbounds %11, %11* %264, i32 0, i32 13
  call void @161(%16* %265)
  %266 = load %11*, %11** %3, align 8
  %267 = getelementptr inbounds %11, %11* %266, i32 0, i32 10
  %268 = load i32, i32* %267, align 8
  %269 = and i32 %268, 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %305, label %271

; <label>:271:                                    ; preds = %263
  %272 = load %11*, %11** %3, align 8
  %273 = getelementptr inbounds %11, %11* %272, i32 0, i32 10
  %274 = load i32, i32* %273, align 8
  %275 = and i32 %274, 512
  %276 = icmp ne i32 %275, 0
  %277 = load %11*, %11** %3, align 8
  br i1 %276, label %278, label %290

; <label>:278:                                    ; preds = %271
  %279 = load %11*, %11** %3, align 8
  %280 = getelementptr inbounds %11, %11* %279, i32 0, i32 10
  %281 = load i32, i32* %280, align 8
  %282 = and i32 %281, 512
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %288, label %284

; <label>:284:                                    ; preds = %278
  %285 = load %11*, %11** %3, align 8
  %286 = getelementptr inbounds %11, %11* %285, i32 0, i32 5
  %287 = load i32, i32* %286, align 8
  br label %288

; <label>:288:                                    ; preds = %278, %284
  %289 = phi i32 [ %287, %284 ], [ -100, %278 ]
  call void @166(%11* %277, i32 %289, i1 zeroext true)
  br label %302

; <label>:290:                                    ; preds = %271
  %291 = getelementptr inbounds %11, %11* %277, i32 0, i32 10
  %292 = load i32, i32* %291, align 8
  %293 = and i32 %292, 512
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %299, label %295

; <label>:295:                                    ; preds = %290
  %296 = load %11*, %11** %3, align 8
  %297 = getelementptr inbounds %11, %11* %296, i32 0, i32 5
  %298 = load i32, i32* %297, align 8
  br label %299

; <label>:299:                                    ; preds = %290, %295
  %300 = phi i32 [ %298, %295 ], [ -100, %290 ]
  %301 = call i32 @fchdir(i32 %300) #7
  br label %302

; <label>:302:                                    ; preds = %299, %288
  %303 = phi i32 [ 0, %288 ], [ %301, %299 ]
  %304 = icmp ne i32 %303, 0
  br label %305

; <label>:305:                                    ; preds = %302, %263
  %306 = phi i1 [ false, %263 ], [ %304, %302 ]
  %307 = load %11*, %11** %3, align 8
  br i1 %306, label %308, label %312

; <label>:308:                                    ; preds = %305
  %309 = getelementptr inbounds %11, %11* %307, i32 0, i32 10
  %310 = load i32, i32* %309, align 8
  %311 = or i32 %310, 8192
  store i32 %311, i32* %309, align 8
  store %12* null, %12** %2, align 8
  br label %700

; <label>:312:                                    ; preds = %305
  call void @162(%11* %307)
  %313 = load %11*, %11** %3, align 8
  %314 = load %12*, %12** %4, align 8
  call void @167(%11* %313, %12* %314)
  %315 = load %11*, %11** %3, align 8
  %316 = call zeroext i1 @155(%11* %315)
  br label %407

; <label>:317:                                    ; preds = %253
  %318 = load %12*, %12** %4, align 8
  %319 = getelementptr inbounds %12, %12* %318, i32 0, i32 16
  %320 = load i16, i16* %319, align 4
  %321 = zext i16 %320 to i32
  %322 = icmp eq i32 %321, 4
  br i1 %322, label %323, label %324

; <label>:323:                                    ; preds = %317
  br label %247

; <label>:324:                                    ; preds = %317
  %325 = load %12*, %12** %4, align 8
  %326 = getelementptr inbounds %12, %12* %325, i32 0, i32 16
  %327 = load i16, i16* %326, align 4
  %328 = zext i16 %327 to i32
  %329 = icmp eq i32 %328, 2
  br i1 %329, label %330, label %370

; <label>:330:                                    ; preds = %324
  %331 = load %11*, %11** %3, align 8
  %332 = load %12*, %12** %4, align 8
  %333 = call zeroext i16 @153(%11* %331, %12* %332, i1 zeroext true)
  %334 = load %12*, %12** %4, align 8
  %335 = getelementptr inbounds %12, %12* %334, i32 0, i32 14
  store i16 %333, i16* %335, align 8
  %336 = load %12*, %12** %4, align 8
  %337 = getelementptr inbounds %12, %12* %336, i32 0, i32 14
  %338 = load i16, i16* %337, align 8
  %339 = zext i16 %338 to i32
  %340 = icmp eq i32 %339, 1
  br i1 %340, label %341, label %367

; <label>:341:                                    ; preds = %330
  %342 = load %11*, %11** %3, align 8
  %343 = getelementptr inbounds %11, %11* %342, i32 0, i32 10
  %344 = load i32, i32* %343, align 8
  %345 = and i32 %344, 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %367, label %347

; <label>:347:                                    ; preds = %341
  %348 = load %11*, %11** %3, align 8
  %349 = call i32 @156(%11* %348, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @98, i32 0, i32 0))
  %350 = load %12*, %12** %4, align 8
  %351 = getelementptr inbounds %12, %12* %350, i32 0, i32 8
  store i32 %349, i32* %351, align 4
  %352 = icmp slt i32 %349, 0
  br i1 %352, label %353, label %360

; <label>:353:                                    ; preds = %347
  %354 = call i32* @__errno_location() #13
  %355 = load i32, i32* %354, align 4
  %356 = load %12*, %12** %4, align 8
  %357 = getelementptr inbounds %12, %12* %356, i32 0, i32 7
  store i32 %355, i32* %357, align 8
  %358 = load %12*, %12** %4, align 8
  %359 = getelementptr inbounds %12, %12* %358, i32 0, i32 14
  store i16 7, i16* %359, align 8
  br label %367

; <label>:360:                                    ; preds = %347
  %361 = load %12*, %12** %4, align 8
  %362 = getelementptr inbounds %12, %12* %361, i32 0, i32 15
  %363 = load i16, i16* %362, align 2
  %364 = zext i16 %363 to i32
  %365 = or i32 %364, 2
  %366 = trunc i32 %365 to i16
  store i16 %366, i16* %362, align 2
  br label %367

; <label>:367:                                    ; preds = %353, %360, %341, %330
  %368 = load %12*, %12** %4, align 8
  %369 = getelementptr inbounds %12, %12* %368, i32 0, i32 16
  store i16 3, i16* %369, align 4
  br label %370

; <label>:370:                                    ; preds = %324, %367, %240
  %371 = load %11*, %11** %3, align 8
  %372 = getelementptr inbounds %11, %11* %371, i32 0, i32 4
  %373 = load i8*, i8** %372, align 8
  %374 = load %12*, %12** %4, align 8
  %375 = getelementptr inbounds %12, %12* %374, i32 0, i32 1
  %376 = load %12*, %12** %375, align 8
  %377 = getelementptr inbounds %12, %12* %376, i32 0, i32 6
  %378 = load i8*, i8** %377, align 8
  %379 = load %12*, %12** %4, align 8
  %380 = getelementptr inbounds %12, %12* %379, i32 0, i32 1
  %381 = load %12*, %12** %380, align 8
  %382 = getelementptr inbounds %12, %12* %381, i32 0, i32 9
  %383 = load i64, i64* %382, align 8
  %384 = sub i64 %383, 1
  %385 = getelementptr inbounds i8, i8* %378, i64 %384
  %386 = load i8, i8* %385, align 1
  %387 = sext i8 %386 to i32
  %388 = icmp eq i32 %387, 47
  %389 = load %12*, %12** %4, align 8
  %390 = getelementptr inbounds %12, %12* %389, i32 0, i32 1
  %391 = load %12*, %12** %390, align 8
  %392 = getelementptr inbounds %12, %12* %391, i32 0, i32 9
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
  %400 = load %12*, %12** %4, align 8
  %401 = getelementptr inbounds %12, %12* %400, i32 0, i32 18
  %402 = getelementptr inbounds [1 x i8], [1 x i8]* %401, i32 0, i32 0
  %403 = load %12*, %12** %4, align 8
  %404 = getelementptr inbounds %12, %12* %403, i32 0, i32 12
  %405 = load i64, i64* %404, align 8
  %406 = add i64 %405, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %399, i8* %402, i64 %406, i32 1, i1 false)
  br label %407

; <label>:407:                                    ; preds = %56, %67, %86, %79, %370, %312
  %408 = load %12*, %12** %4, align 8
  %409 = load %11*, %11** %3, align 8
  %410 = getelementptr inbounds %11, %11* %409, i32 0, i32 0
  store %12* %408, %12** %410, align 8
  %411 = load %12*, %12** %4, align 8
  %412 = getelementptr inbounds %12, %12* %411, i32 0, i32 14
  %413 = load i16, i16* %412, align 8
  %414 = zext i16 %413 to i32
  %415 = icmp eq i32 %414, 11
  br i1 %415, label %416, label %486

; <label>:416:                                    ; preds = %407
  %417 = load %12*, %12** %4, align 8
  %418 = getelementptr inbounds %12, %12* %417, i32 0, i32 17
  %419 = getelementptr inbounds [1 x %8], [1 x %8]* %418, i32 0, i32 0
  %420 = getelementptr inbounds %8, %8* %419, i32 0, i32 8
  %421 = load i64, i64* %420, align 8
  %422 = icmp eq i64 %421, 2
  %423 = load %12*, %12** %4, align 8
  br i1 %422, label %424, label %479

; <label>:424:                                    ; preds = %416
  %425 = getelementptr inbounds %12, %12* %423, i32 0, i32 1
  %426 = load %12*, %12** %425, align 8
  store %12* %426, %12** %8, align 8
  %427 = load %12*, %12** %4, align 8
  %428 = getelementptr inbounds %12, %12* %427, i32 0, i32 11
  %429 = load i64, i64* %428, align 8
  %430 = icmp slt i64 0, %429
  br i1 %430, label %431, label %451

; <label>:431:                                    ; preds = %424
  %432 = load %12*, %12** %8, align 8
  %433 = getelementptr inbounds %12, %12* %432, i32 0, i32 13
  %434 = load i64, i64* %433, align 8
  %435 = icmp eq i64 %434, 0
  br i1 %435, label %436, label %451

; <label>:436:                                    ; preds = %431
  %437 = load %11*, %11** %3, align 8
  %438 = getelementptr inbounds %11, %11* %437, i32 0, i32 10
  %439 = load i32, i32* %438, align 8
  %440 = and i32 %439, 8
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %451

; <label>:442:                                    ; preds = %436
  %443 = load %11*, %11** %3, align 8
  %444 = getelementptr inbounds %11, %11* %443, i32 0, i32 10
  %445 = load i32, i32* %444, align 8
  %446 = and i32 %445, 16
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %451

; <label>:448:                                    ; preds = %442
  %449 = load %12*, %12** %8, align 8
  %450 = call zeroext i1 @168(%12* %449)
  br i1 %450, label %486, label %451

; <label>:451:                                    ; preds = %448, %442, %436, %431, %424
  %452 = load %11*, %11** %3, align 8
  %453 = load %12*, %12** %4, align 8
  %454 = call zeroext i16 @153(%11* %452, %12* %453, i1 zeroext false)
  %455 = load %12*, %12** %4, align 8
  %456 = getelementptr inbounds %12, %12* %455, i32 0, i32 14
  store i16 %454, i16* %456, align 8
  %457 = load %12*, %12** %4, align 8
  %458 = getelementptr inbounds %12, %12* %457, i32 0, i32 17
  %459 = getelementptr inbounds [1 x %8], [1 x %8]* %458, i32 0, i32 0
  %460 = getelementptr inbounds %8, %8* %459, i32 0, i32 3
  %461 = load i32, i32* %460, align 8
  %462 = and i32 %461, 61440
  %463 = icmp eq i32 %462, 16384
  br i1 %463, label %464, label %486

; <label>:464:                                    ; preds = %451
  %465 = load %12*, %12** %4, align 8
  %466 = getelementptr inbounds %12, %12* %465, i32 0, i32 11
  %467 = load i64, i64* %466, align 8
  %468 = icmp ne i64 %467, 0
  br i1 %468, label %469, label %486

; <label>:469:                                    ; preds = %464
  %470 = load %12*, %12** %8, align 8
  %471 = getelementptr inbounds %12, %12* %470, i32 0, i32 13
  %472 = load i64, i64* %471, align 8
  %473 = icmp ne i64 %472, 0
  br i1 %473, label %474, label %486

; <label>:474:                                    ; preds = %469
  %475 = load %12*, %12** %8, align 8
  %476 = getelementptr inbounds %12, %12* %475, i32 0, i32 13
  %477 = load i64, i64* %476, align 8
  %478 = add i64 %477, -1
  store i64 %478, i64* %476, align 8
  br label %486

; <label>:479:                                    ; preds = %416
  %480 = getelementptr inbounds %12, %12* %423, i32 0, i32 17
  %481 = getelementptr inbounds [1 x %8], [1 x %8]* %480, i32 0, i32 0
  %482 = getelementptr inbounds %8, %8* %481, i32 0, i32 8
  %483 = load i64, i64* %482, align 8
  %484 = icmp eq i64 %483, 1
  br i1 %484, label %486, label %485

; <label>:485:                                    ; preds = %479
  call void @abort() #10
  unreachable

; <label>:486:                                    ; preds = %451, %464, %469, %474, %448, %479, %407
  %487 = load %12*, %12** %4, align 8
  %488 = getelementptr inbounds %12, %12* %487, i32 0, i32 14
  %489 = load i16, i16* %488, align 8
  %490 = zext i16 %489 to i32
  %491 = icmp eq i32 %490, 1
  br i1 %491, label %492, label %511

; <label>:492:                                    ; preds = %486
  %493 = load %12*, %12** %4, align 8
  %494 = getelementptr inbounds %12, %12* %493, i32 0, i32 11
  %495 = load i64, i64* %494, align 8
  %496 = icmp eq i64 %495, 0
  br i1 %496, label %497, label %505

; <label>:497:                                    ; preds = %492
  %498 = load %12*, %12** %4, align 8
  %499 = getelementptr inbounds %12, %12* %498, i32 0, i32 17
  %500 = getelementptr inbounds [1 x %8], [1 x %8]* %499, i32 0, i32 0
  %501 = getelementptr inbounds %8, %8* %500, i32 0, i32 0
  %502 = load i64, i64* %501, align 8
  %503 = load %11*, %11** %3, align 8
  %504 = getelementptr inbounds %11, %11* %503, i32 0, i32 3
  store i64 %502, i64* %504, align 8
  br label %505

; <label>:505:                                    ; preds = %497, %492
  %506 = load %11*, %11** %3, align 8
  %507 = load %12*, %12** %4, align 8
  %508 = call zeroext i1 @169(%11* %506, %12* %507)
  br i1 %508, label %511, label %509

; <label>:509:                                    ; preds = %505
  %510 = call i32* @__errno_location() #13
  store i32 12, i32* %510, align 4
  store %12* null, %12** %2, align 8
  br label %700

; <label>:511:                                    ; preds = %505, %486
  %512 = load %12*, %12** %4, align 8
  store %12* %512, %12** %2, align 8
  br label %700

; <label>:513:                                    ; preds = %247
  %514 = load %12*, %12** %5, align 8
  %515 = getelementptr inbounds %12, %12* %514, i32 0, i32 1
  %516 = load %12*, %12** %515, align 8
  store %12* %516, %12** %4, align 8
  %517 = load %12*, %12** %4, align 8
  %518 = load %11*, %11** %3, align 8
  %519 = getelementptr inbounds %11, %11* %518, i32 0, i32 0
  store %12* %517, %12** %519, align 8
  %520 = load %12*, %12** %5, align 8
  %521 = bitcast %12* %520 to i8*
  call void @free(i8* %521) #7
  %522 = load %12*, %12** %4, align 8
  %523 = getelementptr inbounds %12, %12* %522, i32 0, i32 11
  %524 = load i64, i64* %523, align 8
  %525 = icmp eq i64 %524, -1
  %526 = load %12*, %12** %4, align 8
  br i1 %525, label %527, label %532

; <label>:527:                                    ; preds = %513
  %528 = bitcast %12* %526 to i8*
  call void @free(i8* %528) #7
  %529 = call i32* @__errno_location() #13
  store i32 0, i32* %529, align 4
  %530 = load %11*, %11** %3, align 8
  %531 = getelementptr inbounds %11, %11* %530, i32 0, i32 0
  store %12* null, %12** %531, align 8
  store %12* null, %12** %2, align 8
  br label %700

; <label>:532:                                    ; preds = %513
  %533 = getelementptr inbounds %12, %12* %526, i32 0, i32 14
  %534 = load i16, i16* %533, align 8
  %535 = zext i16 %534 to i32
  %536 = icmp ne i32 %535, 11
  br i1 %536, label %538, label %537

; <label>:537:                                    ; preds = %532
  call void @abort() #10
  unreachable

; <label>:538:                                    ; preds = %532
  %539 = load %11*, %11** %3, align 8
  %540 = getelementptr inbounds %11, %11* %539, i32 0, i32 4
  %541 = load i8*, i8** %540, align 8
  %542 = load %12*, %12** %4, align 8
  %543 = getelementptr inbounds %12, %12* %542, i32 0, i32 9
  %544 = load i64, i64* %543, align 8
  %545 = getelementptr inbounds i8, i8* %541, i64 %544
  store i8 0, i8* %545, align 1
  %546 = load %12*, %12** %4, align 8
  %547 = getelementptr inbounds %12, %12* %546, i32 0, i32 11
  %548 = load i64, i64* %547, align 8
  %549 = icmp eq i64 %548, 0
  br i1 %549, label %550, label %601

; <label>:550:                                    ; preds = %538
  %551 = load %11*, %11** %3, align 8
  %552 = getelementptr inbounds %11, %11* %551, i32 0, i32 13
  call void @161(%16* %552)
  %553 = load %11*, %11** %3, align 8
  %554 = getelementptr inbounds %11, %11* %553, i32 0, i32 10
  %555 = load i32, i32* %554, align 8
  %556 = and i32 %555, 4
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %.critedge, label %558

; <label>:558:                                    ; preds = %550
  %559 = load %11*, %11** %3, align 8
  %560 = getelementptr inbounds %11, %11* %559, i32 0, i32 10
  %561 = load i32, i32* %560, align 8
  %562 = and i32 %561, 512
  %563 = icmp ne i32 %562, 0
  %564 = load %11*, %11** %3, align 8
  br i1 %563, label %565, label %577

; <label>:565:                                    ; preds = %558
  %566 = load %11*, %11** %3, align 8
  %567 = getelementptr inbounds %11, %11* %566, i32 0, i32 10
  %568 = load i32, i32* %567, align 8
  %569 = and i32 %568, 512
  %570 = icmp ne i32 %569, 0
  br i1 %570, label %575, label %571

; <label>:571:                                    ; preds = %565
  %572 = load %11*, %11** %3, align 8
  %573 = getelementptr inbounds %11, %11* %572, i32 0, i32 5
  %574 = load i32, i32* %573, align 8
  br label %575

; <label>:575:                                    ; preds = %565, %571
  %576 = phi i32 [ %574, %571 ], [ -100, %565 ]
  call void @166(%11* %564, i32 %576, i1 zeroext true)
  br label %589

; <label>:577:                                    ; preds = %558
  %578 = getelementptr inbounds %11, %11* %564, i32 0, i32 10
  %579 = load i32, i32* %578, align 8
  %580 = and i32 %579, 512
  %581 = icmp ne i32 %580, 0
  br i1 %581, label %586, label %582

; <label>:582:                                    ; preds = %577
  %583 = load %11*, %11** %3, align 8
  %584 = getelementptr inbounds %11, %11* %583, i32 0, i32 5
  %585 = load i32, i32* %584, align 8
  br label %586

; <label>:586:                                    ; preds = %577, %582
  %587 = phi i32 [ %585, %582 ], [ -100, %577 ]
  %588 = call i32 @fchdir(i32 %587) #7
  br label %589

; <label>:589:                                    ; preds = %586, %575
  %590 = phi i32 [ 0, %575 ], [ %588, %586 ]
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %592, label %.critedge

; <label>:592:                                    ; preds = %589
  %593 = call i32* @__errno_location() #13
  %594 = load i32, i32* %593, align 4
  %595 = load %12*, %12** %4, align 8
  %596 = getelementptr inbounds %12, %12* %595, i32 0, i32 7
  store i32 %594, i32* %596, align 8
  %597 = load %11*, %11** %3, align 8
  %598 = getelementptr inbounds %11, %11* %597, i32 0, i32 10
  %599 = load i32, i32* %598, align 8
  %600 = or i32 %599, 8192
  store i32 %600, i32* %598, align 8
  br label %.critedge

; <label>:601:                                    ; preds = %538
  %602 = load %12*, %12** %4, align 8
  %603 = getelementptr inbounds %12, %12* %602, i32 0, i32 15
  %604 = load i16, i16* %603, align 2
  %605 = zext i16 %604 to i32
  %606 = and i32 %605, 2
  %607 = icmp ne i32 %606, 0
  br i1 %607, label %608, label %653

; <label>:608:                                    ; preds = %601
  %609 = load %11*, %11** %3, align 8
  %610 = getelementptr inbounds %11, %11* %609, i32 0, i32 10
  %611 = load i32, i32* %610, align 8
  %612 = and i32 %611, 4
  %613 = icmp ne i32 %612, 0
  br i1 %613, label %648, label %614

; <label>:614:                                    ; preds = %608
  %615 = load %11*, %11** %3, align 8
  %616 = getelementptr inbounds %11, %11* %615, i32 0, i32 10
  %617 = load i32, i32* %616, align 8
  %618 = and i32 %617, 512
  %619 = icmp ne i32 %618, 0
  br i1 %619, label %620, label %625

; <label>:620:                                    ; preds = %614
  %621 = load %11*, %11** %3, align 8
  %622 = load %12*, %12** %4, align 8
  %623 = getelementptr inbounds %12, %12* %622, i32 0, i32 8
  %624 = load i32, i32* %623, align 4
  call void @166(%11* %621, i32 %624, i1 zeroext true)
  br label %648

; <label>:625:                                    ; preds = %614
  %626 = load %12*, %12** %4, align 8
  %627 = getelementptr inbounds %12, %12* %626, i32 0, i32 8
  %628 = load i32, i32* %627, align 4
  %629 = call i32 @fchdir(i32 %628) #7
  %630 = icmp ne i32 %629, 0
  br i1 %630, label %631, label %648

; <label>:631:                                    ; preds = %625
  %632 = call i32* @__errno_location() #13
  %633 = load i32, i32* %632, align 4
  store i32 %633, i32* %9, align 4
  %634 = load %12*, %12** %4, align 8
  %635 = getelementptr inbounds %12, %12* %634, i32 0, i32 8
  %636 = load i32, i32* %635, align 4
  %637 = call i32 @close(i32 %636)
  %638 = load i32, i32* %9, align 4
  %639 = call i32* @__errno_location() #13
  store i32 %638, i32* %639, align 4
  %640 = call i32* @__errno_location() #13
  %641 = load i32, i32* %640, align 4
  %642 = load %12*, %12** %4, align 8
  %643 = getelementptr inbounds %12, %12* %642, i32 0, i32 7
  store i32 %641, i32* %643, align 8
  %644 = load %11*, %11** %3, align 8
  %645 = getelementptr inbounds %11, %11* %644, i32 0, i32 10
  %646 = load i32, i32* %645, align 8
  %647 = or i32 %646, 8192
  store i32 %647, i32* %645, align 8
  br label %648

; <label>:648:                                    ; preds = %620, %631, %625, %608
  %649 = load %12*, %12** %4, align 8
  %650 = getelementptr inbounds %12, %12* %649, i32 0, i32 8
  %651 = load i32, i32* %650, align 4
  %652 = call i32 @close(i32 %651)
  br label %.critedge

; <label>:653:                                    ; preds = %601
  %654 = load %12*, %12** %4, align 8
  %655 = getelementptr inbounds %12, %12* %654, i32 0, i32 15
  %656 = load i16, i16* %655, align 2
  %657 = zext i16 %656 to i32
  %658 = and i32 %657, 1
  %659 = icmp ne i32 %658, 0
  br i1 %659, label %.critedge, label %660

; <label>:660:                                    ; preds = %653
  %661 = load %11*, %11** %3, align 8
  %662 = load %12*, %12** %4, align 8
  %663 = getelementptr inbounds %12, %12* %662, i32 0, i32 1
  %664 = load %12*, %12** %663, align 8
  %665 = call i32 @164(%11* %661, %12* %664, i32 -1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @100, i32 0, i32 0))
  %666 = icmp ne i32 %665, 0
  br i1 %666, label %667, label %.critedge

; <label>:667:                                    ; preds = %660
  %668 = call i32* @__errno_location() #13
  %669 = load i32, i32* %668, align 4
  %670 = load %12*, %12** %4, align 8
  %671 = getelementptr inbounds %12, %12* %670, i32 0, i32 7
  store i32 %669, i32* %671, align 8
  %672 = load %11*, %11** %3, align 8
  %673 = getelementptr inbounds %11, %11* %672, i32 0, i32 10
  %674 = load i32, i32* %673, align 8
  %675 = or i32 %674, 8192
  store i32 %675, i32* %673, align 8
  br label %.critedge

.critedge:                                        ; preds = %648, %667, %660, %653, %589, %592, %550
  %676 = load %12*, %12** %4, align 8
  %677 = getelementptr inbounds %12, %12* %676, i32 0, i32 7
  %678 = load i32, i32* %677, align 8
  %679 = icmp ne i32 %678, 0
  %680 = zext i1 %679 to i64
  %681 = select i1 %679, i32 7, i32 6
  %682 = trunc i32 %681 to i16
  %683 = load %12*, %12** %4, align 8
  %684 = getelementptr inbounds %12, %12* %683, i32 0, i32 14
  store i16 %682, i16* %684, align 8
  %685 = load %12*, %12** %4, align 8
  %686 = getelementptr inbounds %12, %12* %685, i32 0, i32 7
  %687 = load i32, i32* %686, align 8
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %689, label %692

; <label>:689:                                    ; preds = %.critedge
  %690 = load %11*, %11** %3, align 8
  %691 = load %12*, %12** %4, align 8
  call void @163(%11* %690, %12* %691)
  br label %692

; <label>:692:                                    ; preds = %689, %.critedge
  %693 = load %11*, %11** %3, align 8
  %694 = getelementptr inbounds %11, %11* %693, i32 0, i32 10
  %695 = load i32, i32* %694, align 8
  %696 = and i32 %695, 8192
  %697 = icmp ne i32 %696, 0
  %698 = load %12*, %12** %4, align 8
  %699 = select i1 %697, %12* null, %12* %698
  store %12* %699, %12** %2, align 8
  br label %700

; <label>:700:                                    ; preds = %692, %527, %511, %509, %308, %236, %221, %142, %33, %20
  %701 = load %12*, %12** %2, align 8
  ret %12* %701
}

; Function Attrs: noinline nounwind uwtable
define internal void @163(%11*, %12*) #2 {
  %3 = alloca %11*, align 8
  %4 = alloca %12*, align 8
  %5 = alloca %8*, align 8
  %6 = alloca %19, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %12*, align 8
  store %11* %0, %11** %3, align 8
  store %12* %1, %12** %4, align 8
  %9 = load %12*, %12** %4, align 8
  %10 = getelementptr inbounds %12, %12* %9, i32 0, i32 17
  %11 = getelementptr inbounds [1 x %8], [1 x %8]* %10, i32 0, i32 0
  store %8* %11, %8** %5, align 8
  %12 = load %11*, %11** %3, align 8
  %13 = getelementptr inbounds %11, %11* %12, i32 0, i32 10
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
  %26 = load %11*, %11** %3, align 8
  %27 = getelementptr inbounds %11, %11* %26, i32 0, i32 12
  %28 = bitcast %15* %27 to %13**
  %29 = load %13*, %13** %28, align 8
  %30 = bitcast %19* %6 to i8*
  %31 = call i8* @hash_delete(%13* %29, i8* %30)
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

; <label>:34:                                     ; preds = %17
  call void @abort() #10
  unreachable

; <label>:35:                                     ; preds = %17
  %36 = load i8*, i8** %7, align 8
  call void @free(i8* %36) #7
  br label %104

; <label>:37:                                     ; preds = %2
  %38 = load %12*, %12** %4, align 8
  %39 = getelementptr inbounds %12, %12* %38, i32 0, i32 1
  %40 = load %12*, %12** %39, align 8
  store %12* %40, %12** %8, align 8
  %41 = load %12*, %12** %8, align 8
  %42 = icmp ne %12* %41, null
  br i1 %42, label %43, label %104

; <label>:43:                                     ; preds = %37
  %44 = load %12*, %12** %8, align 8
  %45 = getelementptr inbounds %12, %12* %44, i32 0, i32 11
  %46 = load i64, i64* %45, align 8
  %47 = icmp sle i64 0, %46
  br i1 %47, label %48, label %104

; <label>:48:                                     ; preds = %43
  %49 = load %11*, %11** %3, align 8
  %50 = getelementptr inbounds %11, %11* %49, i32 0, i32 12
  %51 = bitcast %15* %50 to %18**
  %52 = load %18*, %18** %51, align 8
  %53 = getelementptr inbounds %18, %18* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %48
  call void @abort() #10
  unreachable

; <label>:57:                                     ; preds = %48
  %58 = load %11*, %11** %3, align 8
  %59 = getelementptr inbounds %11, %11* %58, i32 0, i32 12
  %60 = bitcast %15* %59 to %18**
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
  %70 = load %11*, %11** %3, align 8
  %71 = getelementptr inbounds %11, %11* %70, i32 0, i32 12
  %72 = bitcast %15* %71 to %18**
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
  %82 = load %12*, %12** %8, align 8
  %83 = getelementptr inbounds %12, %12* %82, i32 0, i32 17
  %84 = getelementptr inbounds [1 x %8], [1 x %8]* %83, i32 0, i32 0
  %85 = getelementptr inbounds %8, %8* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %11*, %11** %3, align 8
  %88 = getelementptr inbounds %11, %11* %87, i32 0, i32 12
  %89 = bitcast %15* %88 to %18**
  %90 = load %18*, %18** %89, align 8
  %91 = getelementptr inbounds %18, %18* %90, i32 0, i32 0
  %92 = getelementptr inbounds %3, %3* %91, i32 0, i32 1
  store i64 %86, i64* %92, align 8
  %93 = load %12*, %12** %8, align 8
  %94 = getelementptr inbounds %12, %12* %93, i32 0, i32 17
  %95 = getelementptr inbounds [1 x %8], [1 x %8]* %94, i32 0, i32 0
  %96 = getelementptr inbounds %8, %8* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %11*, %11** %3, align 8
  %99 = getelementptr inbounds %11, %11* %98, i32 0, i32 12
  %100 = bitcast %15* %99 to %18**
  %101 = load %18*, %18** %100, align 8
  %102 = getelementptr inbounds %18, %18* %101, i32 0, i32 0
  %103 = getelementptr inbounds %3, %3* %102, i32 0, i32 0
  store i64 %97, i64* %103, align 8
  br label %104

; <label>:104:                                    ; preds = %37, %43, %57, %69, %81, %35
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @164(%11*, %12*, i32, i8*) #2 {
  %5 = alloca i32, align 4
  %6 = alloca %11*, align 8
  %7 = alloca %12*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %8, align 8
  %15 = alloca i32, align 4
  store %11* %0, %11** %6, align 8
  store %12* %1, %12** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %22

; <label>:18:                                     ; preds = %4
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @100, i32 0, i32 0)) #11
  %21 = icmp eq i32 %20, 0
  br label %22

; <label>:22:                                     ; preds = %18, %4
  %23 = phi i1 [ false, %4 ], [ %21, %18 ]
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %11, align 1
  %25 = load %11*, %11** %6, align 8
  %26 = getelementptr inbounds %11, %11* %25, i32 0, i32 10
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

; <label>:30:                                     ; preds = %22
  %31 = load %11*, %11** %6, align 8
  %32 = getelementptr inbounds %11, %11* %31, i32 0, i32 10
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
  %49 = load %11*, %11** %6, align 8
  %50 = getelementptr inbounds %11, %11* %49, i32 0, i32 10
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, 512
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

; <label>:54:                                     ; preds = %48
  %55 = load %11*, %11** %6, align 8
  %56 = getelementptr inbounds %11, %11* %55, i32 0, i32 13
  %57 = call zeroext i1 @i_ring_empty(%16* %56)
  br i1 %57, label %66, label %58

; <label>:58:                                     ; preds = %54
  %59 = load %11*, %11** %6, align 8
  %60 = getelementptr inbounds %11, %11* %59, i32 0, i32 13
  %61 = call i32 @i_ring_pop(%16* %60)
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
  %71 = load %11*, %11** %6, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 @156(%11* %71, i8* %72)
  store i32 %73, i32* %12, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

; <label>:75:                                     ; preds = %70
  store i32 -1, i32* %5, align 4
  br label %141

; <label>:76:                                     ; preds = %70, %66
  %77 = load %11*, %11** %6, align 8
  %78 = getelementptr inbounds %11, %11* %77, i32 0, i32 10
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
  %87 = call i32 @strcmp(i8* %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @100, i32 0, i32 0)) #11
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %114

; <label>:89:                                     ; preds = %85, %76
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @fstat(i32 %90, %8* %14) #7
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

; <label>:93:                                     ; preds = %89
  store i32 -1, i32* %10, align 4
  br label %129

; <label>:94:                                     ; preds = %89
  %95 = load %12*, %12** %7, align 8
  %96 = getelementptr inbounds %12, %12* %95, i32 0, i32 17
  %97 = getelementptr inbounds [1 x %8], [1 x %8]* %96, i32 0, i32 0
  %98 = getelementptr inbounds %8, %8* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %8, %8* %14, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %99, %101
  br i1 %102, label %112, label %103

; <label>:103:                                    ; preds = %94
  %104 = load %12*, %12** %7, align 8
  %105 = getelementptr inbounds %12, %12* %104, i32 0, i32 17
  %106 = getelementptr inbounds [1 x %8], [1 x %8]* %105, i32 0, i32 0
  %107 = getelementptr inbounds %8, %8* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %8, %8* %14, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %108, %110
  br i1 %111, label %112, label %114

; <label>:112:                                    ; preds = %103, %94
  %113 = call i32* @__errno_location() #13
  store i32 2, i32* %113, align 4
  store i32 -1, i32* %10, align 4
  br label %129

; <label>:114:                                    ; preds = %103, %85, %82
  %115 = load %11*, %11** %6, align 8
  %116 = getelementptr inbounds %11, %11* %115, i32 0, i32 10
  %117 = load i32, i32* %116, align 8
  %118 = and i32 %117, 512
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

; <label>:120:                                    ; preds = %114
  %121 = load %11*, %11** %6, align 8
  %122 = load i32, i32* %12, align 4
  %123 = load i8, i8* %11, align 1
  %124 = trunc i8 %123 to i1
  %125 = xor i1 %124, true
  call void @166(%11* %121, i32 %122, i1 zeroext %125)
  store i32 0, i32* %5, align 4
  br label %141

; <label>:126:                                    ; preds = %114
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @fchdir(i32 %127) #7
  store i32 %128, i32* %10, align 4
  br label %129

; <label>:129:                                    ; preds = %126, %112, %93
  %130 = load i32, i32* %8, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %139

; <label>:132:                                    ; preds = %129
  %133 = call i32* @__errno_location() #13
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %12, align 4
  %136 = call i32 @close(i32 %135)
  %137 = load i32, i32* %15, align 4
  %138 = call i32* @__errno_location() #13
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
define internal %12* @165(%11*, i32) #2 {
  %3 = alloca %12*, align 8
  %4 = alloca %11*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %20*, align 8
  %7 = alloca %12*, align 8
  %8 = alloca %12*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %12*, align 8
  %11 = alloca %12*, align 8
  %12 = alloca %21*, align 8
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
  store %11* %0, %11** %4, align 8
  store i32 %1, i32* %5, align 4
  %27 = load %11*, %11** %4, align 8
  %28 = getelementptr inbounds %11, %11* %27, i32 0, i32 0
  %29 = load %12*, %12** %28, align 8
  store %12* %29, %12** %10, align 8
  %30 = load %11*, %11** %4, align 8
  %31 = getelementptr inbounds %11, %11* %30, i32 0, i32 10
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %49, label %35

; <label>:35:                                     ; preds = %2
  %36 = load %11*, %11** %4, align 8
  %37 = getelementptr inbounds %11, %11* %36, i32 0, i32 10
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, 512
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

; <label>:41:                                     ; preds = %35
  %42 = load %11*, %11** %4, align 8
  %43 = getelementptr inbounds %11, %11* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = load %12*, %12** %10, align 8
  %46 = getelementptr inbounds %12, %12* %45, i32 0, i32 5
  %47 = load i8*, i8** %46, align 8
  %48 = call %21* @173(i32 %44, i8* %47)
  br label %54

; <label>:49:                                     ; preds = %35, %2
  %50 = load %12*, %12** %10, align 8
  %51 = getelementptr inbounds %12, %12* %50, i32 0, i32 5
  %52 = load i8*, i8** %51, align 8
  %53 = call %21* @opendir_safer(i8* %52)
  br label %54

; <label>:54:                                     ; preds = %49, %41
  %55 = phi %21* [ %48, %41 ], [ %53, %49 ]
  store %21* %55, %21** %12, align 8
  %56 = icmp eq %21* %55, null
  br i1 %56, label %57, label %68

; <label>:57:                                     ; preds = %54
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, 3
  br i1 %59, label %60, label %67

; <label>:60:                                     ; preds = %57
  %61 = load %12*, %12** %10, align 8
  %62 = getelementptr inbounds %12, %12* %61, i32 0, i32 14
  store i16 4, i16* %62, align 8
  %63 = call i32* @__errno_location() #13
  %64 = load i32, i32* %63, align 4
  %65 = load %12*, %12** %10, align 8
  %66 = getelementptr inbounds %12, %12* %65, i32 0, i32 7
  store i32 %64, i32* %66, align 8
  br label %67

; <label>:67:                                     ; preds = %60, %57
  store %12* null, %12** %3, align 8
  br label %678

; <label>:68:                                     ; preds = %54
  %69 = load %12*, %12** %10, align 8
  %70 = getelementptr inbounds %12, %12* %69, i32 0, i32 14
  %71 = load i16, i16* %70, align 8
  %72 = zext i16 %71 to i32
  %73 = icmp eq i32 %72, 11
  %74 = load %11*, %11** %4, align 8
  br i1 %73, label %75, label %80

; <label>:75:                                     ; preds = %68
  %76 = load %12*, %12** %10, align 8
  %77 = call zeroext i16 @153(%11* %74, %12* %76, i1 zeroext false)
  %78 = load %12*, %12** %10, align 8
  %79 = getelementptr inbounds %12, %12* %78, i32 0, i32 14
  store i16 %77, i16* %79, align 8
  br label %96

; <label>:80:                                     ; preds = %68
  %81 = getelementptr inbounds %11, %11* %74, i32 0, i32 10
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, 256
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %96

; <label>:85:                                     ; preds = %80
  %86 = load %11*, %11** %4, align 8
  %87 = load %12*, %12** %10, align 8
  call void @163(%11* %86, %12* %87)
  %88 = load %11*, %11** %4, align 8
  %89 = load %12*, %12** %10, align 8
  %90 = call zeroext i16 @153(%11* %88, %12* %89, i1 zeroext false)
  %91 = load %11*, %11** %4, align 8
  %92 = load %12*, %12** %10, align 8
  %93 = call zeroext i1 @169(%11* %91, %12* %92)
  br i1 %93, label %96, label %94

; <label>:94:                                     ; preds = %85
  %95 = call i32* @__errno_location() #13
  store i32 12, i32* %95, align 4
  store %12* null, %12** %3, align 8
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
  %101 = load %11*, %11** %4, align 8
  %102 = getelementptr inbounds %11, %11* %101, i32 0, i32 10
  %103 = load i32, i32* %102, align 8
  %104 = and i32 %103, 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %127

; <label>:106:                                    ; preds = %100
  %107 = load %11*, %11** %4, align 8
  %108 = getelementptr inbounds %11, %11* %107, i32 0, i32 10
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, 16
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %127

; <label>:112:                                    ; preds = %106
  %113 = load %12*, %12** %10, align 8
  %114 = getelementptr inbounds %12, %12* %113, i32 0, i32 17
  %115 = getelementptr inbounds [1 x %8], [1 x %8]* %114, i32 0, i32 0
  %116 = getelementptr inbounds %8, %8* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load %11*, %11** %4, align 8
  %119 = getelementptr inbounds %11, %11* %118, i32 0, i32 10
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
  %134 = load %21*, %21** %12, align 8
  %135 = call i32 @dirfd(%21* %134) #7
  store i32 %135, i32* %24, align 4
  %136 = load %11*, %11** %4, align 8
  %137 = getelementptr inbounds %11, %11* %136, i32 0, i32 10
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
  %152 = load %11*, %11** %4, align 8
  %153 = load %12*, %12** %10, align 8
  %154 = load i32, i32* %24, align 4
  %155 = call i32 @164(%11* %152, %12* %153, i32 %154, i8* null)
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
  %163 = call i32* @__errno_location() #13
  %164 = load i32, i32* %163, align 4
  %165 = load %12*, %12** %10, align 8
  %166 = getelementptr inbounds %12, %12* %165, i32 0, i32 7
  store i32 %164, i32* %166, align 8
  br label %167

; <label>:167:                                    ; preds = %162, %157
  %168 = load %12*, %12** %10, align 8
  %169 = getelementptr inbounds %12, %12* %168, i32 0, i32 15
  %170 = load i16, i16* %169, align 2
  %171 = zext i16 %170 to i32
  %172 = or i32 %171, 1
  %173 = trunc i32 %172 to i16
  store i16 %173, i16* %169, align 2
  store i8 0, i8* %15, align 1
  %174 = load %21*, %21** %12, align 8
  %175 = call i32 @closedir(%21* %174)
  %176 = load %11*, %11** %4, align 8
  %177 = getelementptr inbounds %11, %11* %176, i32 0, i32 10
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
  store %21* null, %21** %12, align 8
  br label %189

; <label>:187:                                    ; preds = %151
  store i8 1, i8* %15, align 1
  br label %189

; <label>:188:                                    ; preds = %128
  store i8 0, i8* %15, align 1
  br label %189

; <label>:189:                                    ; preds = %186, %187, %188
  %190 = load %12*, %12** %10, align 8
  %191 = getelementptr inbounds %12, %12* %190, i32 0, i32 6
  %192 = load i8*, i8** %191, align 8
  %193 = load %12*, %12** %10, align 8
  %194 = getelementptr inbounds %12, %12* %193, i32 0, i32 9
  %195 = load i64, i64* %194, align 8
  %196 = sub i64 %195, 1
  %197 = getelementptr inbounds i8, i8* %192, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp eq i32 %199, 47
  %201 = load %12*, %12** %10, align 8
  %202 = getelementptr inbounds %12, %12* %201, i32 0, i32 9
  %203 = load i64, i64* %202, align 8
  %204 = sub i64 %203, 1
  %205 = select i1 %200, i64 %204, i64 %203
  store i64 %205, i64* %20, align 8
  %206 = load %11*, %11** %4, align 8
  %207 = getelementptr inbounds %11, %11* %206, i32 0, i32 10
  %208 = load i32, i32* %207, align 8
  %209 = and i32 %208, 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %219

; <label>:211:                                    ; preds = %189
  %212 = load %11*, %11** %4, align 8
  %213 = getelementptr inbounds %11, %11* %212, i32 0, i32 4
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
  %223 = load %11*, %11** %4, align 8
  %224 = getelementptr inbounds %11, %11* %223, i32 0, i32 7
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* %20, align 8
  %227 = sub i64 %225, %226
  store i64 %227, i64* %21, align 8
  %228 = load %12*, %12** %10, align 8
  %229 = getelementptr inbounds %12, %12* %228, i32 0, i32 11
  %230 = load i64, i64* %229, align 8
  %231 = add nsw i64 %230, 1
  store i64 %231, i64* %17, align 8
  store i8 0, i8* %16, align 1
  store %12* null, %12** %11, align 8
  store %12* null, %12** %8, align 8
  store i64 0, i64* %9, align 8
  br label %232

; <label>:232:                                    ; preds = %524, %271, %220
  %233 = load %21*, %21** %12, align 8
  %234 = icmp ne %21* %233, null
  br i1 %234, label %235, label %.critedge

; <label>:235:                                    ; preds = %232
  %236 = load %21*, %21** %12, align 8
  %237 = call %20* @readdir(%21* %236)
  store %20* %237, %20** %6, align 8
  %238 = icmp ne %20* %237, null
  br i1 %238, label %239, label %.critedge

; <label>:239:                                    ; preds = %235
  %240 = load %11*, %11** %4, align 8
  %241 = getelementptr inbounds %11, %11* %240, i32 0, i32 10
  %242 = load i32, i32* %241, align 8
  %243 = and i32 %242, 32
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %272, label %245

; <label>:245:                                    ; preds = %239
  %246 = load %20*, %20** %6, align 8
  %247 = getelementptr inbounds %20, %20* %246, i32 0, i32 4
  %248 = getelementptr inbounds [256 x i8], [256 x i8]* %247, i64 0, i64 0
  %249 = load i8, i8* %248, align 1
  %250 = sext i8 %249 to i32
  %251 = icmp eq i32 %250, 46
  br i1 %251, label %252, label %272

; <label>:252:                                    ; preds = %245
  %253 = load %20*, %20** %6, align 8
  %254 = getelementptr inbounds %20, %20* %253, i32 0, i32 4
  %255 = getelementptr inbounds [256 x i8], [256 x i8]* %254, i64 0, i64 1
  %256 = load i8, i8* %255, align 1
  %257 = icmp ne i8 %256, 0
  br i1 %257, label %258, label %271

; <label>:258:                                    ; preds = %252
  %259 = load %20*, %20** %6, align 8
  %260 = getelementptr inbounds %20, %20* %259, i32 0, i32 4
  %261 = getelementptr inbounds [256 x i8], [256 x i8]* %260, i64 0, i64 1
  %262 = load i8, i8* %261, align 1
  %263 = sext i8 %262 to i32
  %264 = icmp eq i32 %263, 46
  br i1 %264, label %265, label %272

; <label>:265:                                    ; preds = %258
  %266 = load %20*, %20** %6, align 8
  %267 = getelementptr inbounds %20, %20* %266, i32 0, i32 4
  %268 = getelementptr inbounds [256 x i8], [256 x i8]* %267, i64 0, i64 2
  %269 = load i8, i8* %268, align 1
  %270 = icmp ne i8 %269, 0
  br i1 %270, label %272, label %271

; <label>:271:                                    ; preds = %265, %252
  br label %232

; <label>:272:                                    ; preds = %265, %258, %245, %239
  %273 = load %11*, %11** %4, align 8
  %274 = load %20*, %20** %6, align 8
  %275 = getelementptr inbounds %20, %20* %274, i32 0, i32 4
  %276 = getelementptr inbounds [256 x i8], [256 x i8]* %275, i32 0, i32 0
  %277 = load %20*, %20** %6, align 8
  %278 = getelementptr inbounds %20, %20* %277, i32 0, i32 4
  %279 = getelementptr inbounds [256 x i8], [256 x i8]* %278, i32 0, i32 0
  %280 = call i64 @strlen(i8* %279) #11
  %281 = call %12* @151(%11* %273, i8* %276, i64 %280)
  store %12* %281, %12** %7, align 8
  %282 = icmp eq %12* %281, null
  br i1 %282, label %303, label %283

; <label>:283:                                    ; preds = %272
  %284 = load %20*, %20** %6, align 8
  %285 = getelementptr inbounds %20, %20* %284, i32 0, i32 4
  %286 = getelementptr inbounds [256 x i8], [256 x i8]* %285, i32 0, i32 0
  %287 = call i64 @strlen(i8* %286) #11
  %288 = load i64, i64* %21, align 8
  %289 = icmp uge i64 %287, %288
  br i1 %289, label %290, label %343

; <label>:290:                                    ; preds = %283
  %291 = load %11*, %11** %4, align 8
  %292 = getelementptr inbounds %11, %11* %291, i32 0, i32 4
  %293 = load i8*, i8** %292, align 8
  store i8* %293, i8** %13, align 8
  %294 = load %11*, %11** %4, align 8
  %295 = load %20*, %20** %6, align 8
  %296 = getelementptr inbounds %20, %20* %295, i32 0, i32 4
  %297 = getelementptr inbounds [256 x i8], [256 x i8]* %296, i32 0, i32 0
  %298 = call i64 @strlen(i8* %297) #11
  %299 = load i64, i64* %20, align 8
  %300 = add i64 %298, %299
  %301 = add i64 %300, 1
  %302 = call zeroext i1 @150(%11* %294, i64 %301)
  br i1 %302, label %319, label %303

; <label>:303:                                    ; preds = %290, %272
  %304 = call i32* @__errno_location() #13
  %305 = load i32, i32* %304, align 4
  store i32 %305, i32* %14, align 4
  %306 = load %12*, %12** %7, align 8
  %307 = bitcast %12* %306 to i8*
  call void @free(i8* %307) #7
  %308 = load %12*, %12** %8, align 8
  call void @157(%12* %308)
  %309 = load %21*, %21** %12, align 8
  %310 = call i32 @closedir(%21* %309)
  %311 = load %12*, %12** %10, align 8
  %312 = getelementptr inbounds %12, %12* %311, i32 0, i32 14
  store i16 7, i16* %312, align 8
  %313 = load %11*, %11** %4, align 8
  %314 = getelementptr inbounds %11, %11* %313, i32 0, i32 10
  %315 = load i32, i32* %314, align 8
  %316 = or i32 %315, 8192
  store i32 %316, i32* %314, align 8
  %317 = load i32, i32* %14, align 4
  %318 = call i32* @__errno_location() #13
  store i32 %317, i32* %318, align 4
  store %12* null, %12** %3, align 8
  br label %678

; <label>:319:                                    ; preds = %290
  %320 = load i8*, i8** %13, align 8
  %321 = load %11*, %11** %4, align 8
  %322 = getelementptr inbounds %11, %11* %321, i32 0, i32 4
  %323 = load i8*, i8** %322, align 8
  %324 = icmp ne i8* %320, %323
  br i1 %324, label %325, label %337

; <label>:325:                                    ; preds = %319
  store i8 1, i8* %16, align 1
  %326 = load %11*, %11** %4, align 8
  %327 = getelementptr inbounds %11, %11* %326, i32 0, i32 10
  %328 = load i32, i32* %327, align 8
  %329 = and i32 %328, 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %337

; <label>:331:                                    ; preds = %325
  %332 = load %11*, %11** %4, align 8
  %333 = getelementptr inbounds %11, %11* %332, i32 0, i32 4
  %334 = load i8*, i8** %333, align 8
  %335 = load i64, i64* %20, align 8
  %336 = getelementptr inbounds i8, i8* %334, i64 %335
  store i8* %336, i8** %23, align 8
  br label %337

; <label>:337:                                    ; preds = %325, %331, %319
  %338 = load %11*, %11** %4, align 8
  %339 = getelementptr inbounds %11, %11* %338, i32 0, i32 7
  %340 = load i64, i64* %339, align 8
  %341 = load i64, i64* %20, align 8
  %342 = sub i64 %340, %341
  store i64 %342, i64* %21, align 8
  br label %343

; <label>:343:                                    ; preds = %337, %283
  %344 = load i64, i64* %20, align 8
  %345 = load %20*, %20** %6, align 8
  %346 = getelementptr inbounds %20, %20* %345, i32 0, i32 4
  %347 = getelementptr inbounds [256 x i8], [256 x i8]* %346, i32 0, i32 0
  %348 = call i64 @strlen(i8* %347) #11
  %349 = add i64 %344, %348
  store i64 %349, i64* %22, align 8
  %350 = load i64, i64* %22, align 8
  %351 = load i64, i64* %20, align 8
  %352 = icmp ult i64 %350, %351
  br i1 %352, label %353, label %366

; <label>:353:                                    ; preds = %343
  %354 = load %12*, %12** %7, align 8
  %355 = bitcast %12* %354 to i8*
  call void @free(i8* %355) #7
  %356 = load %12*, %12** %8, align 8
  call void @157(%12* %356)
  %357 = load %21*, %21** %12, align 8
  %358 = call i32 @closedir(%21* %357)
  %359 = load %12*, %12** %10, align 8
  %360 = getelementptr inbounds %12, %12* %359, i32 0, i32 14
  store i16 7, i16* %360, align 8
  %361 = load %11*, %11** %4, align 8
  %362 = getelementptr inbounds %11, %11* %361, i32 0, i32 10
  %363 = load i32, i32* %362, align 8
  %364 = or i32 %363, 8192
  store i32 %364, i32* %362, align 8
  %365 = call i32* @__errno_location() #13
  store i32 36, i32* %365, align 4
  store %12* null, %12** %3, align 8
  br label %678

; <label>:366:                                    ; preds = %343
  %367 = load i64, i64* %17, align 8
  %368 = load %12*, %12** %7, align 8
  %369 = getelementptr inbounds %12, %12* %368, i32 0, i32 11
  store i64 %367, i64* %369, align 8
  %370 = load %11*, %11** %4, align 8
  %371 = getelementptr inbounds %11, %11* %370, i32 0, i32 0
  %372 = load %12*, %12** %371, align 8
  %373 = load %12*, %12** %7, align 8
  %374 = getelementptr inbounds %12, %12* %373, i32 0, i32 1
  store %12* %372, %12** %374, align 8
  %375 = load i64, i64* %22, align 8
  %376 = load %12*, %12** %7, align 8
  %377 = getelementptr inbounds %12, %12* %376, i32 0, i32 9
  store i64 %375, i64* %377, align 8
  %378 = load %20*, %20** %6, align 8
  %379 = getelementptr inbounds %20, %20* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = load %12*, %12** %7, align 8
  %382 = getelementptr inbounds %12, %12* %381, i32 0, i32 17
  %383 = getelementptr inbounds [1 x %8], [1 x %8]* %382, i32 0, i32 0
  %384 = getelementptr inbounds %8, %8* %383, i32 0, i32 1
  store i64 %380, i64* %384, align 8
  %385 = load %11*, %11** %4, align 8
  %386 = getelementptr inbounds %11, %11* %385, i32 0, i32 10
  %387 = load i32, i32* %386, align 8
  %388 = and i32 %387, 4
  %389 = icmp ne i32 %388, 0
  %390 = load %12*, %12** %7, align 8
  br i1 %389, label %391, label %404

; <label>:391:                                    ; preds = %366
  %392 = getelementptr inbounds %12, %12* %390, i32 0, i32 6
  %393 = load i8*, i8** %392, align 8
  %394 = load %12*, %12** %7, align 8
  %395 = getelementptr inbounds %12, %12* %394, i32 0, i32 5
  store i8* %393, i8** %395, align 8
  %396 = load i8*, i8** %23, align 8
  %397 = load %12*, %12** %7, align 8
  %398 = getelementptr inbounds %12, %12* %397, i32 0, i32 18
  %399 = getelementptr inbounds [1 x i8], [1 x i8]* %398, i32 0, i32 0
  %400 = load %12*, %12** %7, align 8
  %401 = getelementptr inbounds %12, %12* %400, i32 0, i32 12
  %402 = load i64, i64* %401, align 8
  %403 = add i64 %402, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %396, i8* %399, i64 %403, i32 1, i1 false)
  br label %409

; <label>:404:                                    ; preds = %366
  %405 = getelementptr inbounds %12, %12* %390, i32 0, i32 18
  %406 = getelementptr inbounds [1 x i8], [1 x i8]* %405, i32 0, i32 0
  %407 = load %12*, %12** %7, align 8
  %408 = getelementptr inbounds %12, %12* %407, i32 0, i32 5
  store i8* %406, i8** %408, align 8
  br label %409

; <label>:409:                                    ; preds = %404, %391
  %410 = load %11*, %11** %4, align 8
  %411 = getelementptr inbounds %11, %11* %410, i32 0, i32 9
  %412 = load i32 (%12**, %12**)*, i32 (%12**, %12**)** %411, align 8
  %413 = icmp eq i32 (%12**, %12**)* %412, null
  br i1 %413, label %420, label %414

; <label>:414:                                    ; preds = %409
  %415 = load %11*, %11** %4, align 8
  %416 = getelementptr inbounds %11, %11* %415, i32 0, i32 10
  %417 = load i32, i32* %416, align 8
  %418 = and i32 %417, 1024
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %475

; <label>:420:                                    ; preds = %414, %409
  %421 = load %11*, %11** %4, align 8
  %422 = getelementptr inbounds %11, %11* %421, i32 0, i32 10
  %423 = load i32, i32* %422, align 8
  %424 = and i32 %423, 16
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %445

; <label>:426:                                    ; preds = %420
  %427 = load %11*, %11** %4, align 8
  %428 = getelementptr inbounds %11, %11* %427, i32 0, i32 10
  %429 = load i32, i32* %428, align 8
  %430 = and i32 %429, 8
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %445

; <label>:432:                                    ; preds = %426
  %433 = load %20*, %20** %6, align 8
  %434 = getelementptr inbounds %20, %20* %433, i32 0, i32 3
  %435 = load i8, i8* %434, align 2
  %436 = zext i8 %435 to i32
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %445

; <label>:438:                                    ; preds = %432
  %439 = load %20*, %20** %6, align 8
  %440 = getelementptr inbounds %20, %20* %439, i32 0, i32 3
  %441 = load i8, i8* %440, align 2
  %442 = zext i8 %441 to i32
  %443 = icmp eq i32 %442, 4
  %444 = xor i1 %443, true
  br label %445

; <label>:445:                                    ; preds = %438, %432, %426, %420
  %446 = phi i1 [ false, %432 ], [ false, %426 ], [ false, %420 ], [ %444, %438 ]
  %447 = zext i1 %446 to i8
  store i8 %447, i8* %26, align 1
  %448 = load %12*, %12** %7, align 8
  %449 = getelementptr inbounds %12, %12* %448, i32 0, i32 14
  store i16 11, i16* %449, align 8
  %450 = load %12*, %12** %7, align 8
  %451 = getelementptr inbounds %12, %12* %450, i32 0, i32 17
  %452 = getelementptr inbounds [1 x %8], [1 x %8]* %451, i32 0, i32 0
  %453 = load %20*, %20** %6, align 8
  %454 = getelementptr inbounds %20, %20* %453, i32 0, i32 3
  %455 = load i8, i8* %454, align 2
  %456 = zext i8 %455 to i32
  call void @174(%8* %452, i32 %456)
  %457 = load %12*, %12** %7, align 8
  %458 = load i8, i8* %26, align 1
  %459 = trunc i8 %458 to i1
  %460 = xor i1 %459, true
  call void @152(%12* %457, i1 zeroext %460)
  %461 = load %11*, %11** %4, align 8
  %462 = getelementptr inbounds %11, %11* %461, i32 0, i32 10
  %463 = load i32, i32* %462, align 8
  %464 = and i32 %463, 16
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %472

; <label>:466:                                    ; preds = %445
  %467 = load %20*, %20** %6, align 8
  %468 = getelementptr inbounds %20, %20* %467, i32 0, i32 3
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
  %476 = load %11*, %11** %4, align 8
  %477 = load %12*, %12** %7, align 8
  %478 = call zeroext i16 @153(%11* %476, %12* %477, i1 zeroext false)
  %479 = load %12*, %12** %7, align 8
  %480 = getelementptr inbounds %12, %12* %479, i32 0, i32 14
  store i16 %478, i16* %480, align 8
  %481 = load %12*, %12** %7, align 8
  %482 = getelementptr inbounds %12, %12* %481, i32 0, i32 14
  %483 = load i16, i16* %482, align 8
  %484 = zext i16 %483 to i32
  %485 = icmp eq i32 %484, 1
  br i1 %485, label %498, label %486

; <label>:486:                                    ; preds = %475
  %487 = load %12*, %12** %7, align 8
  %488 = getelementptr inbounds %12, %12* %487, i32 0, i32 14
  %489 = load i16, i16* %488, align 8
  %490 = zext i16 %489 to i32
  %491 = icmp eq i32 %490, 2
  br i1 %491, label %498, label %492

; <label>:492:                                    ; preds = %486
  %493 = load %12*, %12** %7, align 8
  %494 = getelementptr inbounds %12, %12* %493, i32 0, i32 14
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
  %514 = load %12*, %12** %7, align 8
  %515 = getelementptr inbounds %12, %12* %514, i32 0, i32 2
  store %12* null, %12** %515, align 8
  %516 = load %12*, %12** %8, align 8
  %517 = icmp eq %12* %516, null
  %518 = load %12*, %12** %7, align 8
  br i1 %517, label %519, label %520

; <label>:519:                                    ; preds = %513
  store %12* %518, %12** %11, align 8
  store %12* %518, %12** %8, align 8
  br label %524

; <label>:520:                                    ; preds = %513
  %521 = load %12*, %12** %11, align 8
  %522 = getelementptr inbounds %12, %12* %521, i32 0, i32 2
  store %12* %518, %12** %522, align 8
  %523 = load %12*, %12** %7, align 8
  store %12* %523, %12** %11, align 8
  br label %524

; <label>:524:                                    ; preds = %520, %519
  %525 = load i64, i64* %9, align 8
  %526 = add i64 %525, 1
  store i64 %526, i64* %9, align 8
  br label %232

.critedge:                                        ; preds = %232, %235
  %527 = load %21*, %21** %12, align 8
  %528 = icmp ne %21* %527, null
  br i1 %528, label %529, label %532

; <label>:529:                                    ; preds = %.critedge
  %530 = load %21*, %21** %12, align 8
  %531 = call i32 @closedir(%21* %530)
  br label %532

; <label>:532:                                    ; preds = %529, %.critedge
  %533 = load i8, i8* %16, align 1
  %534 = trunc i8 %533 to i1
  br i1 %534, label %535, label %538

; <label>:535:                                    ; preds = %532
  %536 = load %11*, %11** %4, align 8
  %537 = load %12*, %12** %8, align 8
  call void @175(%11* %536, %12* %537)
  br label %538

; <label>:538:                                    ; preds = %535, %532
  %539 = load %11*, %11** %4, align 8
  %540 = getelementptr inbounds %11, %11* %539, i32 0, i32 10
  %541 = load i32, i32* %540, align 8
  %542 = and i32 %541, 4
  %543 = icmp ne i32 %542, 0
  br i1 %543, label %544, label %557

; <label>:544:                                    ; preds = %538
  %545 = load i64, i64* %20, align 8
  %546 = load %11*, %11** %4, align 8
  %547 = getelementptr inbounds %11, %11* %546, i32 0, i32 7
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
  %566 = load %12*, %12** %10, align 8
  %567 = getelementptr inbounds %12, %12* %566, i32 0, i32 11
  %568 = load i64, i64* %567, align 8
  %569 = icmp eq i64 %568, 0
  %570 = load %11*, %11** %4, align 8
  br i1 %569, label %571, label %612

; <label>:571:                                    ; preds = %565
  %572 = getelementptr inbounds %11, %11* %570, i32 0, i32 13
  call void @161(%16* %572)
  %573 = load %11*, %11** %4, align 8
  %574 = getelementptr inbounds %11, %11* %573, i32 0, i32 10
  %575 = load i32, i32* %574, align 8
  %576 = and i32 %575, 4
  %577 = icmp ne i32 %576, 0
  br i1 %577, label %.critedge12, label %578

; <label>:578:                                    ; preds = %571
  %579 = load %11*, %11** %4, align 8
  %580 = getelementptr inbounds %11, %11* %579, i32 0, i32 10
  %581 = load i32, i32* %580, align 8
  %582 = and i32 %581, 512
  %583 = icmp ne i32 %582, 0
  %584 = load %11*, %11** %4, align 8
  br i1 %583, label %585, label %597

; <label>:585:                                    ; preds = %578
  %586 = load %11*, %11** %4, align 8
  %587 = getelementptr inbounds %11, %11* %586, i32 0, i32 10
  %588 = load i32, i32* %587, align 8
  %589 = and i32 %588, 512
  %590 = icmp ne i32 %589, 0
  br i1 %590, label %595, label %591

; <label>:591:                                    ; preds = %585
  %592 = load %11*, %11** %4, align 8
  %593 = getelementptr inbounds %11, %11* %592, i32 0, i32 5
  %594 = load i32, i32* %593, align 8
  br label %595

; <label>:595:                                    ; preds = %585, %591
  %596 = phi i32 [ %594, %591 ], [ -100, %585 ]
  call void @166(%11* %584, i32 %596, i1 zeroext true)
  br label %609

; <label>:597:                                    ; preds = %578
  %598 = getelementptr inbounds %11, %11* %584, i32 0, i32 10
  %599 = load i32, i32* %598, align 8
  %600 = and i32 %599, 512
  %601 = icmp ne i32 %600, 0
  br i1 %601, label %606, label %602

; <label>:602:                                    ; preds = %597
  %603 = load %11*, %11** %4, align 8
  %604 = getelementptr inbounds %11, %11* %603, i32 0, i32 5
  %605 = load i32, i32* %604, align 8
  br label %606

; <label>:606:                                    ; preds = %597, %602
  %607 = phi i32 [ %605, %602 ], [ -100, %597 ]
  %608 = call i32 @fchdir(i32 %607) #7
  br label %609

; <label>:609:                                    ; preds = %606, %595
  %610 = phi i32 [ 0, %595 ], [ %608, %606 ]
  %611 = icmp ne i32 %610, 0
  br i1 %611, label %618, label %.critedge12

; <label>:612:                                    ; preds = %565
  %613 = load %12*, %12** %10, align 8
  %614 = getelementptr inbounds %12, %12* %613, i32 0, i32 1
  %615 = load %12*, %12** %614, align 8
  %616 = call i32 @164(%11* %570, %12* %615, i32 -1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @100, i32 0, i32 0))
  %617 = icmp ne i32 %616, 0
  br i1 %617, label %618, label %.critedge12

; <label>:618:                                    ; preds = %612, %609
  %619 = load %12*, %12** %10, align 8
  %620 = getelementptr inbounds %12, %12* %619, i32 0, i32 14
  store i16 7, i16* %620, align 8
  %621 = load %11*, %11** %4, align 8
  %622 = getelementptr inbounds %11, %11* %621, i32 0, i32 10
  %623 = load i32, i32* %622, align 8
  %624 = or i32 %623, 8192
  store i32 %624, i32* %622, align 8
  %625 = load %12*, %12** %8, align 8
  call void @157(%12* %625)
  store %12* null, %12** %3, align 8
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
  %632 = load %12*, %12** %10, align 8
  %633 = getelementptr inbounds %12, %12* %632, i32 0, i32 14
  store i16 6, i16* %633, align 8
  br label %634

; <label>:634:                                    ; preds = %631, %628
  %635 = load %12*, %12** %8, align 8
  call void @157(%12* %635)
  store %12* null, %12** %3, align 8
  br label %678

; <label>:636:                                    ; preds = %.critedge12
  %637 = load i64, i64* %9, align 8
  %638 = icmp ugt i64 %637, 10000
  br i1 %638, label %639, label %664

; <label>:639:                                    ; preds = %636
  %640 = load %11*, %11** %4, align 8
  %641 = getelementptr inbounds %11, %11* %640, i32 0, i32 9
  %642 = load i32 (%12**, %12**)*, i32 (%12**, %12**)** %641, align 8
  %643 = icmp ne i32 (%12**, %12**)* %642, null
  br i1 %643, label %664, label %644

; <label>:644:                                    ; preds = %639
  %645 = load %11*, %11** %4, align 8
  %646 = getelementptr inbounds %11, %11* %645, i32 0, i32 10
  %647 = load i32, i32* %646, align 8
  %648 = and i32 %647, 512
  %649 = icmp ne i32 %648, 0
  br i1 %649, label %650, label %664

; <label>:650:                                    ; preds = %644
  %651 = load %11*, %11** %4, align 8
  %652 = getelementptr inbounds %11, %11* %651, i32 0, i32 6
  %653 = load i32, i32* %652, align 4
  %654 = call zeroext i1 @176(i32 %653)
  br i1 %654, label %655, label %664

; <label>:655:                                    ; preds = %650
  %656 = load %11*, %11** %4, align 8
  %657 = getelementptr inbounds %11, %11* %656, i32 0, i32 9
  store i32 (%12**, %12**)* @177, i32 (%12**, %12**)** %657, align 8
  %658 = load %11*, %11** %4, align 8
  %659 = load %12*, %12** %8, align 8
  %660 = load i64, i64* %9, align 8
  %661 = call %12* @154(%11* %658, %12* %659, i64 %660)
  store %12* %661, %12** %8, align 8
  %662 = load %11*, %11** %4, align 8
  %663 = getelementptr inbounds %11, %11* %662, i32 0, i32 9
  store i32 (%12**, %12**)* null, i32 (%12**, %12**)** %663, align 8
  br label %664

; <label>:664:                                    ; preds = %655, %650, %644, %639, %636
  %665 = load %11*, %11** %4, align 8
  %666 = getelementptr inbounds %11, %11* %665, i32 0, i32 9
  %667 = load i32 (%12**, %12**)*, i32 (%12**, %12**)** %666, align 8
  %668 = icmp ne i32 (%12**, %12**)* %667, null
  %669 = load i64, i64* %9, align 8
  %670 = icmp ugt i64 %669, 1
  %or.cond14 = and i1 %668, %670
  br i1 %or.cond14, label %671, label %676

; <label>:671:                                    ; preds = %664
  %672 = load %11*, %11** %4, align 8
  %673 = load %12*, %12** %8, align 8
  %674 = load i64, i64* %9, align 8
  %675 = call %12* @154(%11* %672, %12* %673, i64 %674)
  store %12* %675, %12** %8, align 8
  br label %676

; <label>:676:                                    ; preds = %671, %664
  %677 = load %12*, %12** %8, align 8
  store %12* %677, %12** %3, align 8
  br label %678

; <label>:678:                                    ; preds = %676, %634, %618, %353, %303, %94, %67
  %679 = load %12*, %12** %3, align 8
  ret %12* %679
}

; Function Attrs: noinline nounwind uwtable
define internal void @166(%11*, i32, i1 zeroext) #2 {
  %4 = alloca %11*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %11* %0, %11** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = zext i1 %2 to i8
  store i8 %9, i8* %6, align 1
  %10 = load %11*, %11** %4, align 8
  %11 = getelementptr inbounds %11, %11* %10, i32 0, i32 6
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
  call void @abort() #10
  unreachable

; <label>:19:                                     ; preds = %3
  %20 = load i8, i8* %6, align 1
  %21 = trunc i8 %20 to i1
  %22 = load %11*, %11** %4, align 8
  br i1 %21, label %23, label %32

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %11, %11* %22, i32 0, i32 13
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @i_ring_push(%16* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp sle i32 0, %27
  br i1 %28, label %29, label %42

; <label>:29:                                     ; preds = %23
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @close(i32 %30)
  br label %42

; <label>:32:                                     ; preds = %19
  %33 = getelementptr inbounds %11, %11* %22, i32 0, i32 10
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
  %44 = load %11*, %11** %4, align 8
  %45 = getelementptr inbounds %11, %11* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @167(%11*, %12*) #2 {
  %3 = alloca %11*, align 8
  %4 = alloca %12*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %11* %0, %11** %3, align 8
  store %12* %1, %12** %4, align 8
  %7 = load %12*, %12** %4, align 8
  %8 = getelementptr inbounds %12, %12* %7, i32 0, i32 12
  %9 = load i64, i64* %8, align 8
  %10 = load %12*, %12** %4, align 8
  %11 = getelementptr inbounds %12, %12* %10, i32 0, i32 9
  store i64 %9, i64* %11, align 8
  store i64 %9, i64* %5, align 8
  %12 = load %11*, %11** %3, align 8
  %13 = getelementptr inbounds %11, %11* %12, i32 0, i32 4
  %14 = load i8*, i8** %13, align 8
  %15 = load %12*, %12** %4, align 8
  %16 = getelementptr inbounds %12, %12* %15, i32 0, i32 18
  %17 = getelementptr inbounds [1 x i8], [1 x i8]* %16, i32 0, i32 0
  %18 = load i64, i64* %5, align 8
  %19 = add i64 %18, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %14, i8* %17, i64 %19, i32 1, i1 false)
  %20 = load %12*, %12** %4, align 8
  %21 = getelementptr inbounds %12, %12* %20, i32 0, i32 18
  %22 = getelementptr inbounds [1 x i8], [1 x i8]* %21, i32 0, i32 0
  %23 = call i8* @strrchr(i8* %22, i32 47) #11
  store i8* %23, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %50

; <label>:25:                                     ; preds = %2
  %26 = load i8*, i8** %6, align 8
  %27 = load %12*, %12** %4, align 8
  %28 = getelementptr inbounds %12, %12* %27, i32 0, i32 18
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
  %40 = call i64 @strlen(i8* %39) #11
  store i64 %40, i64* %5, align 8
  %41 = load %12*, %12** %4, align 8
  %42 = getelementptr inbounds %12, %12* %41, i32 0, i32 18
  %43 = getelementptr inbounds [1 x i8], [1 x i8]* %42, i32 0, i32 0
  %44 = load i8*, i8** %6, align 8
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %45, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %43, i8* %44, i64 %46, i32 1, i1 false)
  %47 = load i64, i64* %5, align 8
  %48 = load %12*, %12** %4, align 8
  %49 = getelementptr inbounds %12, %12* %48, i32 0, i32 12
  store i64 %47, i64* %49, align 8
  br label %50

; <label>:50:                                     ; preds = %37, %31, %2
  %51 = load %11*, %11** %3, align 8
  %52 = getelementptr inbounds %11, %11* %51, i32 0, i32 4
  %53 = load i8*, i8** %52, align 8
  %54 = load %12*, %12** %4, align 8
  %55 = getelementptr inbounds %12, %12* %54, i32 0, i32 6
  store i8* %53, i8** %55, align 8
  %56 = load %12*, %12** %4, align 8
  %57 = getelementptr inbounds %12, %12* %56, i32 0, i32 5
  store i8* %53, i8** %57, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @168(%12*) #2 {
  %2 = alloca i1, align 1
  %3 = alloca %12*, align 8
  %4 = alloca %11*, align 8
  %5 = alloca %13*, align 8
  %6 = alloca %22, align 8
  %7 = alloca %22*, align 8
  %8 = alloca i8, align 1
  %9 = alloca %22*, align 8
  store %12* %0, %12** %3, align 8
  %10 = load %12*, %12** %3, align 8
  %11 = getelementptr inbounds %12, %12* %10, i32 0, i32 10
  %12 = load %11*, %11** %11, align 8
  store %11* %12, %11** %4, align 8
  %13 = load %11*, %11** %4, align 8
  %14 = getelementptr inbounds %11, %11* %13, i32 0, i32 11
  %15 = load %13*, %13** %14, align 8
  store %13* %15, %13** %5, align 8
  %16 = load %11*, %11** %4, align 8
  %17 = getelementptr inbounds %11, %11* %16, i32 0, i32 10
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, 512
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

; <label>:21:                                     ; preds = %1
  store i1 false, i1* %2, align 1
  br label %92

; <label>:22:                                     ; preds = %1
  %23 = load %13*, %13** %5, align 8
  %24 = icmp eq %13* %23, null
  br i1 %24, label %25, label %32

; <label>:25:                                     ; preds = %22
  %26 = call %13* @hash_initialize(i64 13, %4* null, i64 (i8*, i64)* @170, i1 (i8*, i8*)* @171, void (i8*)* @free)
  %27 = load %11*, %11** %4, align 8
  %28 = getelementptr inbounds %11, %11* %27, i32 0, i32 11
  store %13* %26, %13** %28, align 8
  store %13* %26, %13** %5, align 8
  %29 = load %13*, %13** %5, align 8
  %30 = icmp eq %13* %29, null
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %25
  store i1 false, i1* %2, align 1
  br label %92

; <label>:32:                                     ; preds = %25, %22
  %33 = load %12*, %12** %3, align 8
  %34 = getelementptr inbounds %12, %12* %33, i32 0, i32 17
  %35 = getelementptr inbounds [1 x %8], [1 x %8]* %34, i32 0, i32 0
  %36 = getelementptr inbounds %8, %8* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %22, %22* %6, i32 0, i32 0
  store i64 %37, i64* %38, align 8
  %39 = load %13*, %13** %5, align 8
  %40 = bitcast %22* %6 to i8*
  %41 = call i8* @hash_lookup(%13* %39, i8* %40)
  %42 = bitcast i8* %41 to %22*
  store %22* %42, %22** %7, align 8
  %43 = load %22*, %22** %7, align 8
  %44 = icmp ne %22* %43, null
  br i1 %44, label %45, label %50

; <label>:45:                                     ; preds = %32
  %46 = load %22*, %22** %7, align 8
  %47 = getelementptr inbounds %22, %22* %46, i32 0, i32 1
  %48 = load i8, i8* %47, align 8
  %49 = trunc i8 %48 to i1
  store i1 %49, i1* %2, align 1
  br label %92

; <label>:50:                                     ; preds = %32
  %51 = call noalias i8* @malloc(i64 16) #7
  %52 = bitcast i8* %51 to %22*
  store %22* %52, %22** %9, align 8
  %53 = load %22*, %22** %9, align 8
  %54 = icmp eq %22* %53, null
  br i1 %54, label %55, label %56

; <label>:55:                                     ; preds = %50
  store i1 false, i1* %2, align 1
  br label %92

; <label>:56:                                     ; preds = %50
  %57 = load %11*, %11** %4, align 8
  %58 = getelementptr inbounds %11, %11* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = call zeroext i1 @172(i32 %59)
  %61 = zext i1 %60 to i8
  store i8 %61, i8* %8, align 1
  %62 = load i8, i8* %8, align 1
  %63 = trunc i8 %62 to i1
  %64 = load %22*, %22** %9, align 8
  %65 = getelementptr inbounds %22, %22* %64, i32 0, i32 1
  %66 = zext i1 %63 to i8
  store i8 %66, i8* %65, align 8
  %67 = load %12*, %12** %3, align 8
  %68 = getelementptr inbounds %12, %12* %67, i32 0, i32 17
  %69 = getelementptr inbounds [1 x %8], [1 x %8]* %68, i32 0, i32 0
  %70 = getelementptr inbounds %8, %8* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %22*, %22** %9, align 8
  %73 = getelementptr inbounds %22, %22* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %13*, %13** %5, align 8
  %75 = load %22*, %22** %9, align 8
  %76 = bitcast %22* %75 to i8*
  %77 = call i8* @hash_insert(%13* %74, i8* %76)
  %78 = bitcast i8* %77 to %22*
  store %22* %78, %22** %7, align 8
  %79 = load %22*, %22** %7, align 8
  %80 = icmp eq %22* %79, null
  br i1 %80, label %81, label %84

; <label>:81:                                     ; preds = %56
  %82 = load %22*, %22** %9, align 8
  %83 = bitcast %22* %82 to i8*
  call void @free(i8* %83) #7
  store i1 false, i1* %2, align 1
  br label %92

; <label>:84:                                     ; preds = %56
  %85 = load %22*, %22** %7, align 8
  %86 = load %22*, %22** %9, align 8
  %87 = icmp eq %22* %85, %86
  br i1 %87, label %89, label %88

; <label>:88:                                     ; preds = %84
  call void @abort() #10
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
define internal zeroext i1 @169(%11*, %12*) #2 {
  %3 = alloca i1, align 1
  %4 = alloca %11*, align 8
  %5 = alloca %12*, align 8
  %6 = alloca %8*, align 8
  %7 = alloca %19*, align 8
  %8 = alloca %19*, align 8
  store %11* %0, %11** %4, align 8
  store %12* %1, %12** %5, align 8
  %9 = load %11*, %11** %4, align 8
  %10 = getelementptr inbounds %11, %11* %9, i32 0, i32 10
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, 258
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %62

; <label>:14:                                     ; preds = %2
  %15 = load %12*, %12** %5, align 8
  %16 = getelementptr inbounds %12, %12* %15, i32 0, i32 17
  %17 = getelementptr inbounds [1 x %8], [1 x %8]* %16, i32 0, i32 0
  store %8* %17, %8** %6, align 8
  %18 = call noalias i8* @malloc(i64 24) #7
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
  %34 = load %12*, %12** %5, align 8
  %35 = load %19*, %19** %7, align 8
  %36 = getelementptr inbounds %19, %19* %35, i32 0, i32 2
  store %12* %34, %12** %36, align 8
  %37 = load %11*, %11** %4, align 8
  %38 = getelementptr inbounds %11, %11* %37, i32 0, i32 12
  %39 = bitcast %15* %38 to %13**
  %40 = load %13*, %13** %39, align 8
  %41 = load %19*, %19** %7, align 8
  %42 = bitcast %19* %41 to i8*
  %43 = call i8* @hash_insert(%13* %40, i8* %42)
  %44 = bitcast i8* %43 to %19*
  store %19* %44, %19** %8, align 8
  %45 = load %19*, %19** %8, align 8
  %46 = load %19*, %19** %7, align 8
  %47 = icmp ne %19* %45, %46
  br i1 %47, label %48, label %77

; <label>:48:                                     ; preds = %23
  %49 = load %19*, %19** %7, align 8
  %50 = bitcast %19* %49 to i8*
  call void @free(i8* %50) #7
  %51 = load %19*, %19** %8, align 8
  %52 = icmp ne %19* %51, null
  br i1 %52, label %54, label %53

; <label>:53:                                     ; preds = %48
  store i1 false, i1* %3, align 1
  br label %78

; <label>:54:                                     ; preds = %48
  %55 = load %19*, %19** %8, align 8
  %56 = getelementptr inbounds %19, %19* %55, i32 0, i32 2
  %57 = load %12*, %12** %56, align 8
  %58 = load %12*, %12** %5, align 8
  %59 = getelementptr inbounds %12, %12* %58, i32 0, i32 0
  store %12* %57, %12** %59, align 8
  %60 = load %12*, %12** %5, align 8
  %61 = getelementptr inbounds %12, %12* %60, i32 0, i32 14
  store i16 2, i16* %61, align 8
  br label %77

; <label>:62:                                     ; preds = %2
  %63 = load %11*, %11** %4, align 8
  %64 = getelementptr inbounds %11, %11* %63, i32 0, i32 12
  %65 = bitcast %15* %64 to %18**
  %66 = load %18*, %18** %65, align 8
  %67 = load %12*, %12** %5, align 8
  %68 = getelementptr inbounds %12, %12* %67, i32 0, i32 17
  %69 = getelementptr inbounds [1 x %8], [1 x %8]* %68, i32 0, i32 0
  %70 = call zeroext i1 @cycle_check(%18* %66, %8* %69)
  br i1 %70, label %71, label %77

; <label>:71:                                     ; preds = %62
  %72 = load %12*, %12** %5, align 8
  %73 = load %12*, %12** %5, align 8
  %74 = getelementptr inbounds %12, %12* %73, i32 0, i32 0
  store %12* %72, %12** %74, align 8
  %75 = load %12*, %12** %5, align 8
  %76 = getelementptr inbounds %12, %12* %75, i32 0, i32 14
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
define internal i64 @170(i8*, i64) #2 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %22*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %22*
  store %22* %7, %22** %5, align 8
  %8 = load %22*, %22** %5, align 8
  %9 = getelementptr inbounds %22, %22* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = urem i64 %10, %11
  ret i64 %12
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @171(i8*, i8*) #2 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %22*, align 8
  %6 = alloca %22*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %22*
  store %22* %8, %22** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %22*
  store %22* %10, %22** %6, align 8
  %11 = load %22*, %22** %5, align 8
  %12 = getelementptr inbounds %22, %22* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %22*, %22** %6, align 8
  %15 = getelementptr inbounds %22, %22* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  ret i1 %17
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @172(i32) #2 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca %23, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @fstatfs(i32 %5, %23* %4) #7
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  store i1 false, i1* %2, align 1
  br label %14

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %23, %23* %4, i32 0, i32 0
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
declare i32 @fstatfs(i32, %23*) #4

; Function Attrs: noinline nounwind uwtable
define internal %21* @173(i32, i8*) #2 {
  %3 = alloca %21*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %21*, align 8
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
  store %21* null, %21** %3, align 8
  br label %31

; <label>:15:                                     ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @set_cloexec_flag(i32 %16, i1 zeroext true)
  %18 = load i32, i32* %6, align 4
  %19 = call %21* @rpl_fdopendir(i32 %18)
  store %21* %19, %21** %7, align 8
  %20 = load %21*, %21** %7, align 8
  %21 = icmp eq %21* %20, null
  br i1 %21, label %22, label %29

; <label>:22:                                     ; preds = %15
  %23 = call i32* @__errno_location() #13
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @close(i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = call i32* @__errno_location() #13
  store i32 %27, i32* %28, align 4
  br label %29

; <label>:29:                                     ; preds = %22, %15
  %30 = load %21*, %21** %7, align 8
  store %21* %30, %21** %3, align 8
  br label %31

; <label>:31:                                     ; preds = %29, %14
  %32 = load %21*, %21** %3, align 8
  ret %21* %32
}

; Function Attrs: nounwind
declare i32 @dirfd(%21*) #4

declare i32 @closedir(%21*) #1

declare %20* @readdir(%21*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @174(%8*, i32) #2 {
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
define internal void @175(%11*, %12*) #2 {
  %3 = alloca %11*, align 8
  %4 = alloca %12*, align 8
  %5 = alloca %12*, align 8
  %6 = alloca i8*, align 8
  store %11* %0, %11** %3, align 8
  store %12* %1, %12** %4, align 8
  %7 = load %11*, %11** %3, align 8
  %8 = getelementptr inbounds %11, %11* %7, i32 0, i32 4
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %6, align 8
  %10 = load %11*, %11** %3, align 8
  %11 = getelementptr inbounds %11, %11* %10, i32 0, i32 1
  %12 = load %12*, %12** %11, align 8
  store %12* %12, %12** %5, align 8
  br label %13

; <label>:13:                                     ; preds = %38, %2
  %14 = load %12*, %12** %5, align 8
  %15 = icmp ne %12* %14, null
  br i1 %15, label %16, label %45

; <label>:16:                                     ; preds = %13
  %17 = load %12*, %12** %5, align 8
  %18 = getelementptr inbounds %12, %12* %17, i32 0, i32 5
  %19 = load i8*, i8** %18, align 8
  %20 = load %12*, %12** %5, align 8
  %21 = getelementptr inbounds %12, %12* %20, i32 0, i32 18
  %22 = getelementptr inbounds [1 x i8], [1 x i8]* %21, i32 0, i32 0
  %23 = icmp ne i8* %19, %22
  br i1 %23, label %24, label %38

; <label>:24:                                     ; preds = %16
  %25 = load i8*, i8** %6, align 8
  %26 = load %12*, %12** %5, align 8
  %27 = getelementptr inbounds %12, %12* %26, i32 0, i32 5
  %28 = load i8*, i8** %27, align 8
  %29 = load %12*, %12** %5, align 8
  %30 = getelementptr inbounds %12, %12* %29, i32 0, i32 6
  %31 = load i8*, i8** %30, align 8
  %32 = ptrtoint i8* %28 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  %35 = getelementptr inbounds i8, i8* %25, i64 %34
  %36 = load %12*, %12** %5, align 8
  %37 = getelementptr inbounds %12, %12* %36, i32 0, i32 5
  store i8* %35, i8** %37, align 8
  br label %38

; <label>:38:                                     ; preds = %24, %16
  %39 = load i8*, i8** %6, align 8
  %40 = load %12*, %12** %5, align 8
  %41 = getelementptr inbounds %12, %12* %40, i32 0, i32 6
  store i8* %39, i8** %41, align 8
  %42 = load %12*, %12** %5, align 8
  %43 = getelementptr inbounds %12, %12* %42, i32 0, i32 2
  %44 = load %12*, %12** %43, align 8
  store %12* %44, %12** %5, align 8
  br label %13

; <label>:45:                                     ; preds = %13
  %46 = load %12*, %12** %4, align 8
  store %12* %46, %12** %5, align 8
  br label %47

; <label>:47:                                     ; preds = %89, %45
  %48 = load %12*, %12** %5, align 8
  %49 = getelementptr inbounds %12, %12* %48, i32 0, i32 11
  %50 = load i64, i64* %49, align 8
  %51 = icmp sge i64 %50, 0
  br i1 %51, label %52, label %91

; <label>:52:                                     ; preds = %47
  %53 = load %12*, %12** %5, align 8
  %54 = getelementptr inbounds %12, %12* %53, i32 0, i32 5
  %55 = load i8*, i8** %54, align 8
  %56 = load %12*, %12** %5, align 8
  %57 = getelementptr inbounds %12, %12* %56, i32 0, i32 18
  %58 = getelementptr inbounds [1 x i8], [1 x i8]* %57, i32 0, i32 0
  %59 = icmp ne i8* %55, %58
  br i1 %59, label %60, label %74

; <label>:60:                                     ; preds = %52
  %61 = load i8*, i8** %6, align 8
  %62 = load %12*, %12** %5, align 8
  %63 = getelementptr inbounds %12, %12* %62, i32 0, i32 5
  %64 = load i8*, i8** %63, align 8
  %65 = load %12*, %12** %5, align 8
  %66 = getelementptr inbounds %12, %12* %65, i32 0, i32 6
  %67 = load i8*, i8** %66, align 8
  %68 = ptrtoint i8* %64 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = getelementptr inbounds i8, i8* %61, i64 %70
  %72 = load %12*, %12** %5, align 8
  %73 = getelementptr inbounds %12, %12* %72, i32 0, i32 5
  store i8* %71, i8** %73, align 8
  br label %74

; <label>:74:                                     ; preds = %60, %52
  %75 = load i8*, i8** %6, align 8
  %76 = load %12*, %12** %5, align 8
  %77 = getelementptr inbounds %12, %12* %76, i32 0, i32 6
  store i8* %75, i8** %77, align 8
  %78 = load %12*, %12** %5, align 8
  %79 = getelementptr inbounds %12, %12* %78, i32 0, i32 2
  %80 = load %12*, %12** %79, align 8
  %81 = icmp ne %12* %80, null
  %82 = load %12*, %12** %5, align 8
  br i1 %81, label %83, label %86

; <label>:83:                                     ; preds = %74
  %84 = getelementptr inbounds %12, %12* %82, i32 0, i32 2
  %85 = load %12*, %12** %84, align 8
  br label %89

; <label>:86:                                     ; preds = %74
  %87 = getelementptr inbounds %12, %12* %82, i32 0, i32 1
  %88 = load %12*, %12** %87, align 8
  br label %89

; <label>:89:                                     ; preds = %86, %83
  %90 = phi %12* [ %85, %83 ], [ %88, %86 ]
  store %12* %90, %12** %5, align 8
  br label %47

; <label>:91:                                     ; preds = %47
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @176(i32) #2 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca %23, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @fstatfs(i32 %5, %23* %4) #7
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  store i1 true, i1* %2, align 1
  br label %14

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %23, %23* %4, i32 0, i32 0
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
define internal i32 @177(%12**, %12**) #2 {
  %3 = alloca %12**, align 8
  %4 = alloca %12**, align 8
  store %12** %0, %12*** %3, align 8
  store %12** %1, %12*** %4, align 8
  %5 = load %12**, %12*** %3, align 8
  %6 = getelementptr inbounds %12*, %12** %5, i64 0
  %7 = load %12*, %12** %6, align 8
  %8 = getelementptr inbounds %12, %12* %7, i32 0, i32 17
  %9 = getelementptr inbounds [1 x %8], [1 x %8]* %8, i32 0, i32 0
  %10 = getelementptr inbounds %8, %8* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load %12**, %12*** %4, align 8
  %13 = getelementptr inbounds %12*, %12** %12, i64 0
  %14 = load %12*, %12** %13, align 8
  %15 = getelementptr inbounds %12, %12* %14, i32 0, i32 17
  %16 = getelementptr inbounds [1 x %8], [1 x %8]* %15, i32 0, i32 0
  %17 = getelementptr inbounds %8, %8* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %11, %18
  br i1 %19, label %38, label %20

; <label>:20:                                     ; preds = %2
  %21 = load %12**, %12*** %4, align 8
  %22 = getelementptr inbounds %12*, %12** %21, i64 0
  %23 = load %12*, %12** %22, align 8
  %24 = getelementptr inbounds %12, %12* %23, i32 0, i32 17
  %25 = getelementptr inbounds [1 x %8], [1 x %8]* %24, i32 0, i32 0
  %26 = getelementptr inbounds %8, %8* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %12**, %12*** %3, align 8
  %29 = getelementptr inbounds %12*, %12** %28, i64 0
  %30 = load %12*, %12** %29, align 8
  %31 = getelementptr inbounds %12, %12* %30, i32 0, i32 17
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

; Function Attrs: noinline nounwind uwtable
define i32 @fts_set(%11*, %12*, i32) #2 {
  %4 = alloca i32, align 4
  %5 = alloca %12*, align 8
  %6 = alloca i32, align 4
  store %12* %1, %12** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 1
  %or.cond = and i1 %8, %10
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 2
  %or.cond3 = and i1 %or.cond, %12
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 3
  %or.cond5 = and i1 %or.cond3, %14
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 4
  %or.cond7 = and i1 %or.cond5, %16
  br i1 %or.cond7, label %17, label %19

; <label>:17:                                     ; preds = %3
  %18 = call i32* @__errno_location() #13
  store i32 22, i32* %18, align 4
  store i32 1, i32* %4, align 4
  br label %24

; <label>:19:                                     ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = trunc i32 %20 to i16
  %22 = load %12*, %12** %5, align 8
  %23 = getelementptr inbounds %12, %12* %22, i32 0, i32 16
  store i16 %21, i16* %23, align 4
  store i32 0, i32* %4, align 4
  br label %24

; <label>:24:                                     ; preds = %19, %17
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define i64 @hash_get_n_buckets(%13*) #2 {
  %2 = alloca %13*, align 8
  store %13* %0, %13** %2, align 8
  %3 = load %13*, %13** %2, align 8
  %4 = getelementptr inbounds %13, %13* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: noinline nounwind uwtable
define i64 @hash_get_n_buckets_used(%13*) #2 {
  %2 = alloca %13*, align 8
  store %13* %0, %13** %2, align 8
  %3 = load %13*, %13** %2, align 8
  %4 = getelementptr inbounds %13, %13* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: noinline nounwind uwtable
define i64 @hash_get_n_entries(%13*) #2 {
  %2 = alloca %13*, align 8
  store %13* %0, %13** %2, align 8
  %3 = load %13*, %13** %2, align 8
  %4 = getelementptr inbounds %13, %13* %3, i32 0, i32 4
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: noinline nounwind uwtable
define i64 @hash_get_max_bucket_length(%13*) #2 {
  %2 = alloca %13*, align 8
  %3 = alloca %14*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %14*, align 8
  %6 = alloca i64, align 8
  store %13* %0, %13** %2, align 8
  store i64 0, i64* %4, align 8
  %7 = load %13*, %13** %2, align 8
  %8 = getelementptr inbounds %13, %13* %7, i32 0, i32 0
  %9 = load %14*, %14** %8, align 8
  store %14* %9, %14** %3, align 8
  br label %10

; <label>:10:                                     ; preds = %37, %1
  %11 = load %14*, %14** %3, align 8
  %12 = load %13*, %13** %2, align 8
  %13 = getelementptr inbounds %13, %13* %12, i32 0, i32 1
  %14 = load %14*, %14** %13, align 8
  %15 = icmp ult %14* %11, %14
  br i1 %15, label %16, label %40

; <label>:16:                                     ; preds = %10
  %17 = load %14*, %14** %3, align 8
  %18 = getelementptr inbounds %14, %14* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %37

; <label>:21:                                     ; preds = %16
  %22 = load %14*, %14** %3, align 8
  store %14* %22, %14** %5, align 8
  store i64 1, i64* %6, align 8
  br label %23

; <label>:23:                                     ; preds = %30, %21
  %24 = load %14*, %14** %5, align 8
  %25 = getelementptr inbounds %14, %14* %24, i32 0, i32 1
  %26 = load %14*, %14** %25, align 8
  store %14* %26, %14** %5, align 8
  %27 = load %14*, %14** %5, align 8
  %28 = icmp ne %14* %27, null
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
  %38 = load %14*, %14** %3, align 8
  %39 = getelementptr inbounds %14, %14* %38, i32 1
  store %14* %39, %14** %3, align 8
  br label %10

; <label>:40:                                     ; preds = %10
  %41 = load i64, i64* %4, align 8
  ret i64 %41
}

; Function Attrs: noinline nounwind uwtable
define i8* @hash_lookup(%13*, i8*) #2 {
  %3 = alloca i8*, align 8
  %4 = alloca %13*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %14*, align 8
  %7 = alloca %14*, align 8
  store %13* %0, %13** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %13*, %13** %4, align 8
  %9 = getelementptr inbounds %13, %13* %8, i32 0, i32 0
  %10 = load %14*, %14** %9, align 8
  %11 = load %13*, %13** %4, align 8
  %12 = getelementptr inbounds %13, %13* %11, i32 0, i32 6
  %13 = load i64 (i8*, i64)*, i64 (i8*, i64)** %12, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load %13*, %13** %4, align 8
  %16 = getelementptr inbounds %13, %13* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = call i64 %13(i8* %14, i64 %17)
  %19 = getelementptr inbounds %14, %14* %10, i64 %18
  store %14* %19, %14** %6, align 8
  %20 = load %14*, %14** %6, align 8
  %21 = load %13*, %13** %4, align 8
  %22 = getelementptr inbounds %13, %13* %21, i32 0, i32 1
  %23 = load %14*, %14** %22, align 8
  %24 = icmp ult %14* %20, %23
  br i1 %24, label %26, label %25

; <label>:25:                                     ; preds = %2
  call void @abort() #10
  unreachable

; <label>:26:                                     ; preds = %2
  %27 = load %14*, %14** %6, align 8
  %28 = getelementptr inbounds %14, %14* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %26
  store i8* null, i8** %3, align 8
  br label %61

; <label>:32:                                     ; preds = %26
  %33 = load %14*, %14** %6, align 8
  store %14* %33, %14** %7, align 8
  br label %34

; <label>:34:                                     ; preds = %56, %32
  %35 = load %14*, %14** %7, align 8
  %36 = icmp ne %14* %35, null
  br i1 %36, label %37, label %60

; <label>:37:                                     ; preds = %34
  %38 = load i8*, i8** %5, align 8
  %39 = load %14*, %14** %7, align 8
  %40 = getelementptr inbounds %14, %14* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = icmp eq i8* %38, %41
  br i1 %42, label %52, label %43

; <label>:43:                                     ; preds = %37
  %44 = load %13*, %13** %4, align 8
  %45 = getelementptr inbounds %13, %13* %44, i32 0, i32 7
  %46 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %45, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load %14*, %14** %7, align 8
  %49 = getelementptr inbounds %14, %14* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call zeroext i1 %46(i8* %47, i8* %50)
  br i1 %51, label %52, label %56

; <label>:52:                                     ; preds = %43, %37
  %53 = load %14*, %14** %7, align 8
  %54 = getelementptr inbounds %14, %14* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %3, align 8
  br label %61

; <label>:56:                                     ; preds = %43
  %57 = load %14*, %14** %7, align 8
  %58 = getelementptr inbounds %14, %14* %57, i32 0, i32 1
  %59 = load %14*, %14** %58, align 8
  store %14* %59, %14** %7, align 8
  br label %34

; <label>:60:                                     ; preds = %34
  store i8* null, i8** %3, align 8
  br label %61

; <label>:61:                                     ; preds = %60, %52, %31
  %62 = load i8*, i8** %3, align 8
  ret i8* %62
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #9

; Function Attrs: noinline nounwind uwtable
define %13* @hash_initialize(i64, %4*, i64 (i8*, i64)*, i1 (i8*, i8*)*, void (i8*)*) #2 {
  %6 = alloca %13*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %4*, align 8
  %9 = alloca i64 (i8*, i64)*, align 8
  %10 = alloca i1 (i8*, i8*)*, align 8
  %11 = alloca void (i8*)*, align 8
  %12 = alloca %13*, align 8
  store i64 %0, i64* %7, align 8
  store %4* %1, %4** %8, align 8
  store i64 (i8*, i64)* %2, i64 (i8*, i64)** %9, align 8
  store i1 (i8*, i8*)* %3, i1 (i8*, i8*)** %10, align 8
  store void (i8*)* %4, void (i8*)** %11, align 8
  %13 = load i64 (i8*, i64)*, i64 (i8*, i64)** %9, align 8
  %14 = icmp eq i64 (i8*, i64)* %13, null
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %5
  store i64 (i8*, i64)* @178, i64 (i8*, i64)** %9, align 8
  br label %16

; <label>:16:                                     ; preds = %15, %5
  %17 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %10, align 8
  %18 = icmp eq i1 (i8*, i8*)* %17, null
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %16
  store i1 (i8*, i8*)* @179, i1 (i8*, i8*)** %10, align 8
  br label %20

; <label>:20:                                     ; preds = %19, %16
  %21 = call noalias i8* @malloc(i64 80) #7
  %22 = bitcast i8* %21 to %13*
  store %13* %22, %13** %12, align 8
  %23 = load %13*, %13** %12, align 8
  %24 = icmp eq %13* %23, null
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %20
  store %13* null, %13** %6, align 8
  br label %87

; <label>:26:                                     ; preds = %20
  %27 = load %4*, %4** %8, align 8
  %28 = icmp ne %4* %27, null
  br i1 %28, label %30, label %29

; <label>:29:                                     ; preds = %26
  store %4* @105, %4** %8, align 8
  br label %30

; <label>:30:                                     ; preds = %29, %26
  %31 = load %4*, %4** %8, align 8
  %32 = load %13*, %13** %12, align 8
  %33 = getelementptr inbounds %13, %13* %32, i32 0, i32 5
  store %4* %31, %4** %33, align 8
  %34 = load %13*, %13** %12, align 8
  %35 = call zeroext i1 @180(%13* %34)
  br i1 %35, label %36, label %84

; <label>:36:                                     ; preds = %30
  %37 = load i64, i64* %7, align 8
  %38 = load %4*, %4** %8, align 8
  %39 = call i64 @181(i64 %37, %4* %38)
  %40 = load %13*, %13** %12, align 8
  %41 = getelementptr inbounds %13, %13* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  %42 = load %13*, %13** %12, align 8
  %43 = getelementptr inbounds %13, %13* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %84

; <label>:46:                                     ; preds = %36
  %47 = load %13*, %13** %12, align 8
  %48 = getelementptr inbounds %13, %13* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call noalias i8* @calloc(i64 %49, i64 16) #7
  %51 = bitcast i8* %50 to %14*
  %52 = load %13*, %13** %12, align 8
  %53 = getelementptr inbounds %13, %13* %52, i32 0, i32 0
  store %14* %51, %14** %53, align 8
  %54 = load %13*, %13** %12, align 8
  %55 = getelementptr inbounds %13, %13* %54, i32 0, i32 0
  %56 = load %14*, %14** %55, align 8
  %57 = icmp eq %14* %56, null
  br i1 %57, label %84, label %58

; <label>:58:                                     ; preds = %46
  %59 = load %13*, %13** %12, align 8
  %60 = getelementptr inbounds %13, %13* %59, i32 0, i32 0
  %61 = load %14*, %14** %60, align 8
  %62 = load %13*, %13** %12, align 8
  %63 = getelementptr inbounds %13, %13* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %14, %14* %61, i64 %64
  %66 = load %13*, %13** %12, align 8
  %67 = getelementptr inbounds %13, %13* %66, i32 0, i32 1
  store %14* %65, %14** %67, align 8
  %68 = load %13*, %13** %12, align 8
  %69 = getelementptr inbounds %13, %13* %68, i32 0, i32 3
  store i64 0, i64* %69, align 8
  %70 = load %13*, %13** %12, align 8
  %71 = getelementptr inbounds %13, %13* %70, i32 0, i32 4
  store i64 0, i64* %71, align 8
  %72 = load i64 (i8*, i64)*, i64 (i8*, i64)** %9, align 8
  %73 = load %13*, %13** %12, align 8
  %74 = getelementptr inbounds %13, %13* %73, i32 0, i32 6
  store i64 (i8*, i64)* %72, i64 (i8*, i64)** %74, align 8
  %75 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %10, align 8
  %76 = load %13*, %13** %12, align 8
  %77 = getelementptr inbounds %13, %13* %76, i32 0, i32 7
  store i1 (i8*, i8*)* %75, i1 (i8*, i8*)** %77, align 8
  %78 = load void (i8*)*, void (i8*)** %11, align 8
  %79 = load %13*, %13** %12, align 8
  %80 = getelementptr inbounds %13, %13* %79, i32 0, i32 8
  store void (i8*)* %78, void (i8*)** %80, align 8
  %81 = load %13*, %13** %12, align 8
  %82 = getelementptr inbounds %13, %13* %81, i32 0, i32 9
  store %14* null, %14** %82, align 8
  %83 = load %13*, %13** %12, align 8
  store %13* %83, %13** %6, align 8
  br label %87

; <label>:84:                                     ; preds = %46, %36, %30
  %85 = load %13*, %13** %12, align 8
  %86 = bitcast %13* %85 to i8*
  call void @free(i8* %86) #7
  store %13* null, %13** %6, align 8
  br label %87

; <label>:87:                                     ; preds = %84, %58, %25
  %88 = load %13*, %13** %6, align 8
  ret %13* %88
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @178(i8*, i64) #2 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = ptrtoint i8* %6 to i64
  %8 = call i64 @184(i64 %7, i32 3)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = urem i64 %9, %10
  ret i64 %11
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @179(i8*, i8*) #2 {
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
define internal zeroext i1 @180(%13*) #2 {
  %2 = alloca i1, align 1
  %3 = alloca %13*, align 8
  %4 = alloca %4*, align 8
  %5 = alloca float, align 4
  store %13* %0, %13** %3, align 8
  %6 = load %13*, %13** %3, align 8
  %7 = getelementptr inbounds %13, %13* %6, i32 0, i32 5
  %8 = load %4*, %4** %7, align 8
  store %4* %8, %4** %4, align 8
  %9 = load %4*, %4** %4, align 8
  %10 = icmp eq %4* %9, @105
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
  %64 = load %13*, %13** %3, align 8
  %65 = getelementptr inbounds %13, %13* %64, i32 0, i32 5
  store %4* @105, %4** %65, align 8
  store i1 false, i1* %2, align 1
  br label %66

; <label>:66:                                     ; preds = %63, %62, %11
  %67 = load i1, i1* %2, align 1
  ret i1 %67
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @181(i64, %4*) #2 {
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
  %26 = call i64 @182(i64 %25)
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

; Function Attrs: noinline nounwind uwtable
define internal i64 @182(i64) #2 {
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
  %12 = call zeroext i1 @183(i64 %11)
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
define internal zeroext i1 @183(i64) #2 {
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
define internal i64 @184(i64, i32) #2 {
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
define void @hash_free(%13*) #2 {
  %2 = alloca %13*, align 8
  %3 = alloca %14*, align 8
  %4 = alloca %14*, align 8
  %5 = alloca %14*, align 8
  store %13* %0, %13** %2, align 8
  %6 = load %13*, %13** %2, align 8
  %7 = getelementptr inbounds %13, %13* %6, i32 0, i32 8
  %8 = load void (i8*)*, void (i8*)** %7, align 8
  %9 = icmp ne void (i8*)* %8, null
  br i1 %9, label %10, label %48

; <label>:10:                                     ; preds = %1
  %11 = load %13*, %13** %2, align 8
  %12 = getelementptr inbounds %13, %13* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %48

; <label>:15:                                     ; preds = %10
  %16 = load %13*, %13** %2, align 8
  %17 = getelementptr inbounds %13, %13* %16, i32 0, i32 0
  %18 = load %14*, %14** %17, align 8
  store %14* %18, %14** %3, align 8
  br label %19

; <label>:19:                                     ; preds = %45, %15
  %20 = load %14*, %14** %3, align 8
  %21 = load %13*, %13** %2, align 8
  %22 = getelementptr inbounds %13, %13* %21, i32 0, i32 1
  %23 = load %14*, %14** %22, align 8
  %24 = icmp ult %14* %20, %23
  br i1 %24, label %25, label %48

; <label>:25:                                     ; preds = %19
  %26 = load %14*, %14** %3, align 8
  %27 = getelementptr inbounds %14, %14* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %45

; <label>:30:                                     ; preds = %25
  %31 = load %14*, %14** %3, align 8
  store %14* %31, %14** %4, align 8
  br label %32

; <label>:32:                                     ; preds = %35, %30
  %33 = load %14*, %14** %4, align 8
  %34 = icmp ne %14* %33, null
  br i1 %34, label %35, label %45

; <label>:35:                                     ; preds = %32
  %36 = load %13*, %13** %2, align 8
  %37 = getelementptr inbounds %13, %13* %36, i32 0, i32 8
  %38 = load void (i8*)*, void (i8*)** %37, align 8
  %39 = load %14*, %14** %4, align 8
  %40 = getelementptr inbounds %14, %14* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  call void %38(i8* %41)
  %42 = load %14*, %14** %4, align 8
  %43 = getelementptr inbounds %14, %14* %42, i32 0, i32 1
  %44 = load %14*, %14** %43, align 8
  store %14* %44, %14** %4, align 8
  br label %32

; <label>:45:                                     ; preds = %25, %32
  %46 = load %14*, %14** %3, align 8
  %47 = getelementptr inbounds %14, %14* %46, i32 1
  store %14* %47, %14** %3, align 8
  br label %19

; <label>:48:                                     ; preds = %19, %10, %1
  %49 = load %13*, %13** %2, align 8
  %50 = getelementptr inbounds %13, %13* %49, i32 0, i32 0
  %51 = load %14*, %14** %50, align 8
  store %14* %51, %14** %3, align 8
  br label %52

; <label>:52:                                     ; preds = %72, %48
  %53 = load %14*, %14** %3, align 8
  %54 = load %13*, %13** %2, align 8
  %55 = getelementptr inbounds %13, %13* %54, i32 0, i32 1
  %56 = load %14*, %14** %55, align 8
  %57 = icmp ult %14* %53, %56
  br i1 %57, label %58, label %75

; <label>:58:                                     ; preds = %52
  %59 = load %14*, %14** %3, align 8
  %60 = getelementptr inbounds %14, %14* %59, i32 0, i32 1
  %61 = load %14*, %14** %60, align 8
  store %14* %61, %14** %4, align 8
  br label %62

; <label>:62:                                     ; preds = %65, %58
  %63 = load %14*, %14** %4, align 8
  %64 = icmp ne %14* %63, null
  br i1 %64, label %65, label %72

; <label>:65:                                     ; preds = %62
  %66 = load %14*, %14** %4, align 8
  %67 = getelementptr inbounds %14, %14* %66, i32 0, i32 1
  %68 = load %14*, %14** %67, align 8
  store %14* %68, %14** %5, align 8
  %69 = load %14*, %14** %4, align 8
  %70 = bitcast %14* %69 to i8*
  call void @free(i8* %70) #7
  %71 = load %14*, %14** %5, align 8
  store %14* %71, %14** %4, align 8
  br label %62

; <label>:72:                                     ; preds = %62
  %73 = load %14*, %14** %3, align 8
  %74 = getelementptr inbounds %14, %14* %73, i32 1
  store %14* %74, %14** %3, align 8
  br label %52

; <label>:75:                                     ; preds = %52
  %76 = load %13*, %13** %2, align 8
  %77 = getelementptr inbounds %13, %13* %76, i32 0, i32 9
  %78 = load %14*, %14** %77, align 8
  store %14* %78, %14** %4, align 8
  br label %79

; <label>:79:                                     ; preds = %82, %75
  %80 = load %14*, %14** %4, align 8
  %81 = icmp ne %14* %80, null
  br i1 %81, label %82, label %89

; <label>:82:                                     ; preds = %79
  %83 = load %14*, %14** %4, align 8
  %84 = getelementptr inbounds %14, %14* %83, i32 0, i32 1
  %85 = load %14*, %14** %84, align 8
  store %14* %85, %14** %5, align 8
  %86 = load %14*, %14** %4, align 8
  %87 = bitcast %14* %86 to i8*
  call void @free(i8* %87) #7
  %88 = load %14*, %14** %5, align 8
  store %14* %88, %14** %4, align 8
  br label %79

; <label>:89:                                     ; preds = %79
  %90 = load %13*, %13** %2, align 8
  %91 = getelementptr inbounds %13, %13* %90, i32 0, i32 0
  %92 = load %14*, %14** %91, align 8
  %93 = bitcast %14* %92 to i8*
  call void @free(i8* %93) #7
  %94 = load %13*, %13** %2, align 8
  %95 = bitcast %13* %94 to i8*
  call void @free(i8* %95) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define zeroext i1 @hash_rehash(%13*, i64) #2 {
  %3 = alloca i1, align 1
  %4 = alloca %13*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %13, align 8
  %7 = alloca %13*, align 8
  %8 = alloca i64, align 8
  store %13* %0, %13** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %13*, %13** %4, align 8
  %11 = getelementptr inbounds %13, %13* %10, i32 0, i32 5
  %12 = load %4*, %4** %11, align 8
  %13 = call i64 @181(i64 %9, %4* %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

; <label>:16:                                     ; preds = %2
  store i1 false, i1* %3, align 1
  br label %127

; <label>:17:                                     ; preds = %2
  %18 = load i64, i64* %8, align 8
  %19 = load %13*, %13** %4, align 8
  %20 = getelementptr inbounds %13, %13* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %17
  store i1 true, i1* %3, align 1
  br label %127

; <label>:24:                                     ; preds = %17
  store %13* %6, %13** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call noalias i8* @calloc(i64 %25, i64 16) #7
  %27 = bitcast i8* %26 to %14*
  %28 = load %13*, %13** %7, align 8
  %29 = getelementptr inbounds %13, %13* %28, i32 0, i32 0
  store %14* %27, %14** %29, align 8
  %30 = load %13*, %13** %7, align 8
  %31 = getelementptr inbounds %13, %13* %30, i32 0, i32 0
  %32 = load %14*, %14** %31, align 8
  %33 = icmp eq %14* %32, null
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %24
  store i1 false, i1* %3, align 1
  br label %127

; <label>:35:                                     ; preds = %24
  %36 = load i64, i64* %8, align 8
  %37 = load %13*, %13** %7, align 8
  %38 = getelementptr inbounds %13, %13* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  %39 = load %13*, %13** %7, align 8
  %40 = getelementptr inbounds %13, %13* %39, i32 0, i32 0
  %41 = load %14*, %14** %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds %14, %14* %41, i64 %42
  %44 = load %13*, %13** %7, align 8
  %45 = getelementptr inbounds %13, %13* %44, i32 0, i32 1
  store %14* %43, %14** %45, align 8
  %46 = load %13*, %13** %7, align 8
  %47 = getelementptr inbounds %13, %13* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load %13*, %13** %7, align 8
  %49 = getelementptr inbounds %13, %13* %48, i32 0, i32 4
  store i64 0, i64* %49, align 8
  %50 = load %13*, %13** %4, align 8
  %51 = getelementptr inbounds %13, %13* %50, i32 0, i32 5
  %52 = load %4*, %4** %51, align 8
  %53 = load %13*, %13** %7, align 8
  %54 = getelementptr inbounds %13, %13* %53, i32 0, i32 5
  store %4* %52, %4** %54, align 8
  %55 = load %13*, %13** %4, align 8
  %56 = getelementptr inbounds %13, %13* %55, i32 0, i32 6
  %57 = load i64 (i8*, i64)*, i64 (i8*, i64)** %56, align 8
  %58 = load %13*, %13** %7, align 8
  %59 = getelementptr inbounds %13, %13* %58, i32 0, i32 6
  store i64 (i8*, i64)* %57, i64 (i8*, i64)** %59, align 8
  %60 = load %13*, %13** %4, align 8
  %61 = getelementptr inbounds %13, %13* %60, i32 0, i32 7
  %62 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %61, align 8
  %63 = load %13*, %13** %7, align 8
  %64 = getelementptr inbounds %13, %13* %63, i32 0, i32 7
  store i1 (i8*, i8*)* %62, i1 (i8*, i8*)** %64, align 8
  %65 = load %13*, %13** %4, align 8
  %66 = getelementptr inbounds %13, %13* %65, i32 0, i32 8
  %67 = load void (i8*)*, void (i8*)** %66, align 8
  %68 = load %13*, %13** %7, align 8
  %69 = getelementptr inbounds %13, %13* %68, i32 0, i32 8
  store void (i8*)* %67, void (i8*)** %69, align 8
  %70 = load %13*, %13** %4, align 8
  %71 = getelementptr inbounds %13, %13* %70, i32 0, i32 9
  %72 = load %14*, %14** %71, align 8
  %73 = load %13*, %13** %7, align 8
  %74 = getelementptr inbounds %13, %13* %73, i32 0, i32 9
  store %14* %72, %14** %74, align 8
  %75 = load %13*, %13** %7, align 8
  %76 = load %13*, %13** %4, align 8
  %77 = call zeroext i1 @185(%13* %75, %13* %76, i1 zeroext false)
  br i1 %77, label %78, label %108

; <label>:78:                                     ; preds = %35
  %79 = load %13*, %13** %4, align 8
  %80 = getelementptr inbounds %13, %13* %79, i32 0, i32 0
  %81 = load %14*, %14** %80, align 8
  %82 = bitcast %14* %81 to i8*
  call void @free(i8* %82) #7
  %83 = load %13*, %13** %7, align 8
  %84 = getelementptr inbounds %13, %13* %83, i32 0, i32 0
  %85 = load %14*, %14** %84, align 8
  %86 = load %13*, %13** %4, align 8
  %87 = getelementptr inbounds %13, %13* %86, i32 0, i32 0
  store %14* %85, %14** %87, align 8
  %88 = load %13*, %13** %7, align 8
  %89 = getelementptr inbounds %13, %13* %88, i32 0, i32 1
  %90 = load %14*, %14** %89, align 8
  %91 = load %13*, %13** %4, align 8
  %92 = getelementptr inbounds %13, %13* %91, i32 0, i32 1
  store %14* %90, %14** %92, align 8
  %93 = load %13*, %13** %7, align 8
  %94 = getelementptr inbounds %13, %13* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load %13*, %13** %4, align 8
  %97 = getelementptr inbounds %13, %13* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  %98 = load %13*, %13** %7, align 8
  %99 = getelementptr inbounds %13, %13* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load %13*, %13** %4, align 8
  %102 = getelementptr inbounds %13, %13* %101, i32 0, i32 3
  store i64 %100, i64* %102, align 8
  %103 = load %13*, %13** %7, align 8
  %104 = getelementptr inbounds %13, %13* %103, i32 0, i32 9
  %105 = load %14*, %14** %104, align 8
  %106 = load %13*, %13** %4, align 8
  %107 = getelementptr inbounds %13, %13* %106, i32 0, i32 9
  store %14* %105, %14** %107, align 8
  store i1 true, i1* %3, align 1
  br label %127

; <label>:108:                                    ; preds = %35
  %109 = load %13*, %13** %7, align 8
  %110 = getelementptr inbounds %13, %13* %109, i32 0, i32 9
  %111 = load %14*, %14** %110, align 8
  %112 = load %13*, %13** %4, align 8
  %113 = getelementptr inbounds %13, %13* %112, i32 0, i32 9
  store %14* %111, %14** %113, align 8
  %114 = load %13*, %13** %4, align 8
  %115 = load %13*, %13** %7, align 8
  %116 = call zeroext i1 @185(%13* %114, %13* %115, i1 zeroext true)
  br i1 %116, label %117, label %121

; <label>:117:                                    ; preds = %108
  %118 = load %13*, %13** %4, align 8
  %119 = load %13*, %13** %7, align 8
  %120 = call zeroext i1 @185(%13* %118, %13* %119, i1 zeroext false)
  br i1 %120, label %122, label %121

; <label>:121:                                    ; preds = %117, %108
  call void @abort() #10
  unreachable

; <label>:122:                                    ; preds = %117
  %123 = load %13*, %13** %7, align 8
  %124 = getelementptr inbounds %13, %13* %123, i32 0, i32 0
  %125 = load %14*, %14** %124, align 8
  %126 = bitcast %14* %125 to i8*
  call void @free(i8* %126) #7
  store i1 false, i1* %3, align 1
  br label %127

; <label>:127:                                    ; preds = %122, %78, %34, %23, %16
  %128 = load i1, i1* %3, align 1
  ret i1 %128
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @185(%13*, %13*, i1 zeroext) #2 {
  %4 = alloca i1, align 1
  %5 = alloca %13*, align 8
  %6 = alloca %13*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %14*, align 8
  %9 = alloca %14*, align 8
  %10 = alloca %14*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %14*, align 8
  %13 = alloca %14*, align 8
  store %13* %0, %13** %5, align 8
  store %13* %1, %13** %6, align 8
  %14 = zext i1 %2 to i8
  store i8 %14, i8* %7, align 1
  %15 = load %13*, %13** %6, align 8
  %16 = getelementptr inbounds %13, %13* %15, i32 0, i32 0
  %17 = load %14*, %14** %16, align 8
  store %14* %17, %14** %8, align 8
  br label %18

; <label>:18:                                     ; preds = %152, %3
  %19 = load %14*, %14** %8, align 8
  %20 = load %13*, %13** %6, align 8
  %21 = getelementptr inbounds %13, %13* %20, i32 0, i32 1
  %22 = load %14*, %14** %21, align 8
  %23 = icmp ult %14* %19, %22
  br i1 %23, label %24, label %155

; <label>:24:                                     ; preds = %18
  %25 = load %14*, %14** %8, align 8
  %26 = getelementptr inbounds %14, %14* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %152

; <label>:29:                                     ; preds = %24
  %30 = load %14*, %14** %8, align 8
  %31 = getelementptr inbounds %14, %14* %30, i32 0, i32 1
  %32 = load %14*, %14** %31, align 8
  store %14* %32, %14** %9, align 8
  br label %33

; <label>:33:                                     ; preds = %85, %29
  %34 = load %14*, %14** %9, align 8
  %35 = icmp ne %14* %34, null
  br i1 %35, label %36, label %87

; <label>:36:                                     ; preds = %33
  %37 = load %14*, %14** %9, align 8
  %38 = getelementptr inbounds %14, %14* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %11, align 8
  %40 = load %13*, %13** %5, align 8
  %41 = getelementptr inbounds %13, %13* %40, i32 0, i32 0
  %42 = load %14*, %14** %41, align 8
  %43 = load %13*, %13** %5, align 8
  %44 = getelementptr inbounds %13, %13* %43, i32 0, i32 6
  %45 = load i64 (i8*, i64)*, i64 (i8*, i64)** %44, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load %13*, %13** %5, align 8
  %48 = getelementptr inbounds %13, %13* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call i64 %45(i8* %46, i64 %49)
  %51 = getelementptr inbounds %14, %14* %42, i64 %50
  store %14* %51, %14** %12, align 8
  %52 = load %14*, %14** %12, align 8
  %53 = load %13*, %13** %5, align 8
  %54 = getelementptr inbounds %13, %13* %53, i32 0, i32 1
  %55 = load %14*, %14** %54, align 8
  %56 = icmp ult %14* %52, %55
  br i1 %56, label %58, label %57

; <label>:57:                                     ; preds = %36
  call void @abort() #10
  unreachable

; <label>:58:                                     ; preds = %36
  %59 = load %14*, %14** %9, align 8
  %60 = getelementptr inbounds %14, %14* %59, i32 0, i32 1
  %61 = load %14*, %14** %60, align 8
  store %14* %61, %14** %10, align 8
  %62 = load %14*, %14** %12, align 8
  %63 = getelementptr inbounds %14, %14* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %75

; <label>:66:                                     ; preds = %58
  %67 = load %14*, %14** %12, align 8
  %68 = getelementptr inbounds %14, %14* %67, i32 0, i32 1
  %69 = load %14*, %14** %68, align 8
  %70 = load %14*, %14** %9, align 8
  %71 = getelementptr inbounds %14, %14* %70, i32 0, i32 1
  store %14* %69, %14** %71, align 8
  %72 = load %14*, %14** %9, align 8
  %73 = load %14*, %14** %12, align 8
  %74 = getelementptr inbounds %14, %14* %73, i32 0, i32 1
  store %14* %72, %14** %74, align 8
  br label %85

; <label>:75:                                     ; preds = %58
  %76 = load i8*, i8** %11, align 8
  %77 = load %14*, %14** %12, align 8
  %78 = getelementptr inbounds %14, %14* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  %79 = load %13*, %13** %5, align 8
  %80 = getelementptr inbounds %13, %13* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %80, align 8
  %83 = load %13*, %13** %5, align 8
  %84 = load %14*, %14** %9, align 8
  call void @186(%13* %83, %14* %84)
  br label %85

; <label>:85:                                     ; preds = %66, %75
  %86 = load %14*, %14** %10, align 8
  store %14* %86, %14** %9, align 8
  br label %33

; <label>:87:                                     ; preds = %33
  %88 = load %14*, %14** %8, align 8
  %89 = getelementptr inbounds %14, %14* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  store i8* %90, i8** %11, align 8
  %91 = load %14*, %14** %8, align 8
  %92 = getelementptr inbounds %14, %14* %91, i32 0, i32 1
  store %14* null, %14** %92, align 8
  %93 = load i8, i8* %7, align 1
  %94 = trunc i8 %93 to i1
  br i1 %94, label %152, label %95

; <label>:95:                                     ; preds = %87
  %96 = load %13*, %13** %5, align 8
  %97 = getelementptr inbounds %13, %13* %96, i32 0, i32 0
  %98 = load %14*, %14** %97, align 8
  %99 = load %13*, %13** %5, align 8
  %100 = getelementptr inbounds %13, %13* %99, i32 0, i32 6
  %101 = load i64 (i8*, i64)*, i64 (i8*, i64)** %100, align 8
  %102 = load i8*, i8** %11, align 8
  %103 = load %13*, %13** %5, align 8
  %104 = getelementptr inbounds %13, %13* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = call i64 %101(i8* %102, i64 %105)
  %107 = getelementptr inbounds %14, %14* %98, i64 %106
  store %14* %107, %14** %12, align 8
  %108 = load %14*, %14** %12, align 8
  %109 = load %13*, %13** %5, align 8
  %110 = getelementptr inbounds %13, %13* %109, i32 0, i32 1
  %111 = load %14*, %14** %110, align 8
  %112 = icmp ult %14* %108, %111
  br i1 %112, label %114, label %113

; <label>:113:                                    ; preds = %95
  call void @abort() #10
  unreachable

; <label>:114:                                    ; preds = %95
  %115 = load %14*, %14** %12, align 8
  %116 = getelementptr inbounds %14, %14* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %137

; <label>:119:                                    ; preds = %114
  %120 = load %13*, %13** %5, align 8
  %121 = call %14* @187(%13* %120)
  store %14* %121, %14** %13, align 8
  %122 = load %14*, %14** %13, align 8
  %123 = icmp eq %14* %122, null
  br i1 %123, label %124, label %125

; <label>:124:                                    ; preds = %119
  store i1 false, i1* %4, align 1
  br label %156

; <label>:125:                                    ; preds = %119
  %126 = load i8*, i8** %11, align 8
  %127 = load %14*, %14** %13, align 8
  %128 = getelementptr inbounds %14, %14* %127, i32 0, i32 0
  store i8* %126, i8** %128, align 8
  %129 = load %14*, %14** %12, align 8
  %130 = getelementptr inbounds %14, %14* %129, i32 0, i32 1
  %131 = load %14*, %14** %130, align 8
  %132 = load %14*, %14** %13, align 8
  %133 = getelementptr inbounds %14, %14* %132, i32 0, i32 1
  store %14* %131, %14** %133, align 8
  %134 = load %14*, %14** %13, align 8
  %135 = load %14*, %14** %12, align 8
  %136 = getelementptr inbounds %14, %14* %135, i32 0, i32 1
  store %14* %134, %14** %136, align 8
  br label %145

; <label>:137:                                    ; preds = %114
  %138 = load i8*, i8** %11, align 8
  %139 = load %14*, %14** %12, align 8
  %140 = getelementptr inbounds %14, %14* %139, i32 0, i32 0
  store i8* %138, i8** %140, align 8
  %141 = load %13*, %13** %5, align 8
  %142 = getelementptr inbounds %13, %13* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %142, align 8
  br label %145

; <label>:145:                                    ; preds = %137, %125
  %146 = load %14*, %14** %8, align 8
  %147 = getelementptr inbounds %14, %14* %146, i32 0, i32 0
  store i8* null, i8** %147, align 8
  %148 = load %13*, %13** %6, align 8
  %149 = getelementptr inbounds %13, %13* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = add i64 %150, -1
  store i64 %151, i64* %149, align 8
  br label %152

; <label>:152:                                    ; preds = %24, %145, %87
  %153 = load %14*, %14** %8, align 8
  %154 = getelementptr inbounds %14, %14* %153, i32 1
  store %14* %154, %14** %8, align 8
  br label %18

; <label>:155:                                    ; preds = %18
  store i1 true, i1* %4, align 1
  br label %156

; <label>:156:                                    ; preds = %155, %124
  %157 = load i1, i1* %4, align 1
  ret i1 %157
}

; Function Attrs: noinline nounwind uwtable
define internal void @186(%13*, %14*) #2 {
  %3 = alloca %13*, align 8
  %4 = alloca %14*, align 8
  store %13* %0, %13** %3, align 8
  store %14* %1, %14** %4, align 8
  %5 = load %14*, %14** %4, align 8
  %6 = getelementptr inbounds %14, %14* %5, i32 0, i32 0
  store i8* null, i8** %6, align 8
  %7 = load %13*, %13** %3, align 8
  %8 = getelementptr inbounds %13, %13* %7, i32 0, i32 9
  %9 = load %14*, %14** %8, align 8
  %10 = load %14*, %14** %4, align 8
  %11 = getelementptr inbounds %14, %14* %10, i32 0, i32 1
  store %14* %9, %14** %11, align 8
  %12 = load %14*, %14** %4, align 8
  %13 = load %13*, %13** %3, align 8
  %14 = getelementptr inbounds %13, %13* %13, i32 0, i32 9
  store %14* %12, %14** %14, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal %14* @187(%13*) #2 {
  %2 = alloca %13*, align 8
  %3 = alloca %14*, align 8
  store %13* %0, %13** %2, align 8
  %4 = load %13*, %13** %2, align 8
  %5 = getelementptr inbounds %13, %13* %4, i32 0, i32 9
  %6 = load %14*, %14** %5, align 8
  %7 = icmp ne %14* %6, null
  br i1 %7, label %8, label %17

; <label>:8:                                      ; preds = %1
  %9 = load %13*, %13** %2, align 8
  %10 = getelementptr inbounds %13, %13* %9, i32 0, i32 9
  %11 = load %14*, %14** %10, align 8
  store %14* %11, %14** %3, align 8
  %12 = load %14*, %14** %3, align 8
  %13 = getelementptr inbounds %14, %14* %12, i32 0, i32 1
  %14 = load %14*, %14** %13, align 8
  %15 = load %13*, %13** %2, align 8
  %16 = getelementptr inbounds %13, %13* %15, i32 0, i32 9
  store %14* %14, %14** %16, align 8
  br label %20

; <label>:17:                                     ; preds = %1
  %18 = call noalias i8* @malloc(i64 16) #7
  %19 = bitcast i8* %18 to %14*
  store %14* %19, %14** %3, align 8
  br label %20

; <label>:20:                                     ; preds = %17, %8
  %21 = load %14*, %14** %3, align 8
  ret %14* %21
}

; Function Attrs: noinline nounwind uwtable
define i8* @hash_insert(%13*, i8*) #2 {
  %3 = alloca i8*, align 8
  %4 = alloca %13*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %14*, align 8
  %8 = alloca %4*, align 8
  %9 = alloca float, align 4
  %10 = alloca %14*, align 8
  store %13* %0, %13** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

; <label>:13:                                     ; preds = %2
  call void @abort() #10
  unreachable

; <label>:14:                                     ; preds = %2
  %15 = load %13*, %13** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i8* @188(%13* %15, i8* %16, %14** %7, i1 zeroext false)
  store i8* %17, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %21

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** %3, align 8
  br label %134

; <label>:21:                                     ; preds = %14
  %22 = load %13*, %13** %4, align 8
  %23 = getelementptr inbounds %13, %13* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = uitofp i64 %24 to float
  %26 = load %13*, %13** %4, align 8
  %27 = getelementptr inbounds %13, %13* %26, i32 0, i32 5
  %28 = load %4*, %4** %27, align 8
  %29 = getelementptr inbounds %4, %4* %28, i32 0, i32 2
  %30 = load float, float* %29, align 4
  %31 = load %13*, %13** %4, align 8
  %32 = getelementptr inbounds %13, %13* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = uitofp i64 %33 to float
  %35 = fmul float %30, %34
  %36 = fcmp ogt float %25, %35
  br i1 %36, label %37, label %93

; <label>:37:                                     ; preds = %21
  %38 = load %13*, %13** %4, align 8
  %39 = call zeroext i1 @180(%13* %38)
  %40 = load %13*, %13** %4, align 8
  %41 = getelementptr inbounds %13, %13* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = uitofp i64 %42 to float
  %44 = load %13*, %13** %4, align 8
  %45 = getelementptr inbounds %13, %13* %44, i32 0, i32 5
  %46 = load %4*, %4** %45, align 8
  %47 = getelementptr inbounds %4, %4* %46, i32 0, i32 2
  %48 = load float, float* %47, align 4
  %49 = load %13*, %13** %4, align 8
  %50 = getelementptr inbounds %13, %13* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = uitofp i64 %51 to float
  %53 = fmul float %48, %52
  %54 = fcmp ogt float %43, %53
  br i1 %54, label %55, label %93

; <label>:55:                                     ; preds = %37
  %56 = load %13*, %13** %4, align 8
  %57 = getelementptr inbounds %13, %13* %56, i32 0, i32 5
  %58 = load %4*, %4** %57, align 8
  store %4* %58, %4** %8, align 8
  %59 = load %4*, %4** %8, align 8
  %60 = getelementptr inbounds %4, %4* %59, i32 0, i32 4
  %61 = load i8, i8* %60, align 4
  %62 = trunc i8 %61 to i1
  %63 = load %13*, %13** %4, align 8
  %64 = getelementptr inbounds %13, %13* %63, i32 0, i32 2
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
  %82 = load %13*, %13** %4, align 8
  %83 = load float, float* %9, align 4
  %84 = fptoui float %83 to i64
  %85 = call zeroext i1 @hash_rehash(%13* %82, i64 %84)
  br i1 %85, label %87, label %86

; <label>:86:                                     ; preds = %81
  store i8* null, i8** %3, align 8
  br label %134

; <label>:87:                                     ; preds = %81
  %88 = load %13*, %13** %4, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = call i8* @188(%13* %88, i8* %89, %14** %7, i1 zeroext false)
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %93

; <label>:92:                                     ; preds = %87
  call void @abort() #10
  unreachable

; <label>:93:                                     ; preds = %37, %87, %21
  %94 = load %14*, %14** %7, align 8
  %95 = getelementptr inbounds %14, %14* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %121

; <label>:98:                                     ; preds = %93
  %99 = load %13*, %13** %4, align 8
  %100 = call %14* @187(%13* %99)
  store %14* %100, %14** %10, align 8
  %101 = load %14*, %14** %10, align 8
  %102 = icmp eq %14* %101, null
  br i1 %102, label %103, label %104

; <label>:103:                                    ; preds = %98
  store i8* null, i8** %3, align 8
  br label %134

; <label>:104:                                    ; preds = %98
  %105 = load i8*, i8** %5, align 8
  %106 = load %14*, %14** %10, align 8
  %107 = getelementptr inbounds %14, %14* %106, i32 0, i32 0
  store i8* %105, i8** %107, align 8
  %108 = load %14*, %14** %7, align 8
  %109 = getelementptr inbounds %14, %14* %108, i32 0, i32 1
  %110 = load %14*, %14** %109, align 8
  %111 = load %14*, %14** %10, align 8
  %112 = getelementptr inbounds %14, %14* %111, i32 0, i32 1
  store %14* %110, %14** %112, align 8
  %113 = load %14*, %14** %10, align 8
  %114 = load %14*, %14** %7, align 8
  %115 = getelementptr inbounds %14, %14* %114, i32 0, i32 1
  store %14* %113, %14** %115, align 8
  %116 = load %13*, %13** %4, align 8
  %117 = getelementptr inbounds %13, %13* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %117, align 8
  %120 = load i8*, i8** %5, align 8
  store i8* %120, i8** %3, align 8
  br label %134

; <label>:121:                                    ; preds = %93
  %122 = load i8*, i8** %5, align 8
  %123 = load %14*, %14** %7, align 8
  %124 = getelementptr inbounds %14, %14* %123, i32 0, i32 0
  store i8* %122, i8** %124, align 8
  %125 = load %13*, %13** %4, align 8
  %126 = getelementptr inbounds %13, %13* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %126, align 8
  %129 = load %13*, %13** %4, align 8
  %130 = getelementptr inbounds %13, %13* %129, i32 0, i32 3
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
define internal i8* @188(%13*, i8*, %14**, i1 zeroext) #2 {
  %5 = alloca i8*, align 8
  %6 = alloca %13*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %14**, align 8
  %9 = alloca i8, align 1
  %10 = alloca %14*, align 8
  %11 = alloca %14*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %14*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %14*, align 8
  store %13* %0, %13** %6, align 8
  store i8* %1, i8** %7, align 8
  store %14** %2, %14*** %8, align 8
  %16 = zext i1 %3 to i8
  store i8 %16, i8* %9, align 1
  %17 = load %13*, %13** %6, align 8
  %18 = getelementptr inbounds %13, %13* %17, i32 0, i32 0
  %19 = load %14*, %14** %18, align 8
  %20 = load %13*, %13** %6, align 8
  %21 = getelementptr inbounds %13, %13* %20, i32 0, i32 6
  %22 = load i64 (i8*, i64)*, i64 (i8*, i64)** %21, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load %13*, %13** %6, align 8
  %25 = getelementptr inbounds %13, %13* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i64 %22(i8* %23, i64 %26)
  %28 = getelementptr inbounds %14, %14* %19, i64 %27
  store %14* %28, %14** %10, align 8
  %29 = load %14*, %14** %10, align 8
  %30 = load %13*, %13** %6, align 8
  %31 = getelementptr inbounds %13, %13* %30, i32 0, i32 1
  %32 = load %14*, %14** %31, align 8
  %33 = icmp ult %14* %29, %32
  br i1 %33, label %35, label %34

; <label>:34:                                     ; preds = %4
  call void @abort() #10
  unreachable

; <label>:35:                                     ; preds = %4
  %36 = load %14*, %14** %10, align 8
  %37 = load %14**, %14*** %8, align 8
  store %14* %36, %14** %37, align 8
  %38 = load %14*, %14** %10, align 8
  %39 = getelementptr inbounds %14, %14* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %35
  store i8* null, i8** %5, align 8
  br label %135

; <label>:43:                                     ; preds = %35
  %44 = load i8*, i8** %7, align 8
  %45 = load %14*, %14** %10, align 8
  %46 = getelementptr inbounds %14, %14* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = icmp eq i8* %44, %47
  br i1 %48, label %58, label %49

; <label>:49:                                     ; preds = %43
  %50 = load %13*, %13** %6, align 8
  %51 = getelementptr inbounds %13, %13* %50, i32 0, i32 7
  %52 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %51, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load %14*, %14** %10, align 8
  %55 = getelementptr inbounds %14, %14* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call zeroext i1 %52(i8* %53, i8* %56)
  br i1 %57, label %58, label %83

; <label>:58:                                     ; preds = %49, %43
  %59 = load %14*, %14** %10, align 8
  %60 = getelementptr inbounds %14, %14* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %12, align 8
  %62 = load i8, i8* %9, align 1
  %63 = trunc i8 %62 to i1
  br i1 %63, label %64, label %81

; <label>:64:                                     ; preds = %58
  %65 = load %14*, %14** %10, align 8
  %66 = getelementptr inbounds %14, %14* %65, i32 0, i32 1
  %67 = load %14*, %14** %66, align 8
  %68 = icmp ne %14* %67, null
  %69 = load %14*, %14** %10, align 8
  br i1 %68, label %70, label %79

; <label>:70:                                     ; preds = %64
  %71 = getelementptr inbounds %14, %14* %69, i32 0, i32 1
  %72 = load %14*, %14** %71, align 8
  store %14* %72, %14** %13, align 8
  %73 = load %14*, %14** %10, align 8
  %74 = load %14*, %14** %13, align 8
  %75 = bitcast %14* %73 to i8*
  %76 = bitcast %14* %74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %76, i64 16, i32 8, i1 false)
  %77 = load %13*, %13** %6, align 8
  %78 = load %14*, %14** %13, align 8
  call void @186(%13* %77, %14* %78)
  br label %81

; <label>:79:                                     ; preds = %64
  %80 = getelementptr inbounds %14, %14* %69, i32 0, i32 0
  store i8* null, i8** %80, align 8
  br label %81

; <label>:81:                                     ; preds = %70, %79, %58
  %82 = load i8*, i8** %12, align 8
  store i8* %82, i8** %5, align 8
  br label %135

; <label>:83:                                     ; preds = %49
  %84 = load %14*, %14** %10, align 8
  store %14* %84, %14** %11, align 8
  br label %85

; <label>:85:                                     ; preds = %130, %83
  %86 = load %14*, %14** %11, align 8
  %87 = getelementptr inbounds %14, %14* %86, i32 0, i32 1
  %88 = load %14*, %14** %87, align 8
  %89 = icmp ne %14* %88, null
  br i1 %89, label %90, label %134

; <label>:90:                                     ; preds = %85
  %91 = load i8*, i8** %7, align 8
  %92 = load %14*, %14** %11, align 8
  %93 = getelementptr inbounds %14, %14* %92, i32 0, i32 1
  %94 = load %14*, %14** %93, align 8
  %95 = getelementptr inbounds %14, %14* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = icmp eq i8* %91, %96
  br i1 %97, label %109, label %98

; <label>:98:                                     ; preds = %90
  %99 = load %13*, %13** %6, align 8
  %100 = getelementptr inbounds %13, %13* %99, i32 0, i32 7
  %101 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %100, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = load %14*, %14** %11, align 8
  %104 = getelementptr inbounds %14, %14* %103, i32 0, i32 1
  %105 = load %14*, %14** %104, align 8
  %106 = getelementptr inbounds %14, %14* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call zeroext i1 %101(i8* %102, i8* %107)
  br i1 %108, label %109, label %130

; <label>:109:                                    ; preds = %98, %90
  %110 = load %14*, %14** %11, align 8
  %111 = getelementptr inbounds %14, %14* %110, i32 0, i32 1
  %112 = load %14*, %14** %111, align 8
  %113 = getelementptr inbounds %14, %14* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  store i8* %114, i8** %14, align 8
  %115 = load i8, i8* %9, align 1
  %116 = trunc i8 %115 to i1
  br i1 %116, label %117, label %128

; <label>:117:                                    ; preds = %109
  %118 = load %14*, %14** %11, align 8
  %119 = getelementptr inbounds %14, %14* %118, i32 0, i32 1
  %120 = load %14*, %14** %119, align 8
  store %14* %120, %14** %15, align 8
  %121 = load %14*, %14** %15, align 8
  %122 = getelementptr inbounds %14, %14* %121, i32 0, i32 1
  %123 = load %14*, %14** %122, align 8
  %124 = load %14*, %14** %11, align 8
  %125 = getelementptr inbounds %14, %14* %124, i32 0, i32 1
  store %14* %123, %14** %125, align 8
  %126 = load %13*, %13** %6, align 8
  %127 = load %14*, %14** %15, align 8
  call void @186(%13* %126, %14* %127)
  br label %128

; <label>:128:                                    ; preds = %117, %109
  %129 = load i8*, i8** %14, align 8
  store i8* %129, i8** %5, align 8
  br label %135

; <label>:130:                                    ; preds = %98
  %131 = load %14*, %14** %11, align 8
  %132 = getelementptr inbounds %14, %14* %131, i32 0, i32 1
  %133 = load %14*, %14** %132, align 8
  store %14* %133, %14** %11, align 8
  br label %85

; <label>:134:                                    ; preds = %85
  store i8* null, i8** %5, align 8
  br label %135

; <label>:135:                                    ; preds = %134, %128, %81, %42
  %136 = load i8*, i8** %5, align 8
  ret i8* %136
}

; Function Attrs: noinline nounwind uwtable
define i8* @hash_delete(%13*, i8*) #2 {
  %3 = alloca i8*, align 8
  %4 = alloca %13*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %14*, align 8
  %8 = alloca %4*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %14*, align 8
  %11 = alloca %14*, align 8
  store %13* %0, %13** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %13*, %13** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i8* @188(%13* %12, i8* %13, %14** %7, i1 zeroext true)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

; <label>:17:                                     ; preds = %2
  store i8* null, i8** %3, align 8
  br label %111

; <label>:18:                                     ; preds = %2
  %19 = load %13*, %13** %4, align 8
  %20 = getelementptr inbounds %13, %13* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* %20, align 8
  %23 = load %14*, %14** %7, align 8
  %24 = getelementptr inbounds %14, %14* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %109, label %27

; <label>:27:                                     ; preds = %18
  %28 = load %13*, %13** %4, align 8
  %29 = getelementptr inbounds %13, %13* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, -1
  store i64 %31, i64* %29, align 8
  %32 = load %13*, %13** %4, align 8
  %33 = getelementptr inbounds %13, %13* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = uitofp i64 %34 to float
  %36 = load %13*, %13** %4, align 8
  %37 = getelementptr inbounds %13, %13* %36, i32 0, i32 5
  %38 = load %4*, %4** %37, align 8
  %39 = getelementptr inbounds %4, %4* %38, i32 0, i32 0
  %40 = load float, float* %39, align 4
  %41 = load %13*, %13** %4, align 8
  %42 = getelementptr inbounds %13, %13* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = uitofp i64 %43 to float
  %45 = fmul float %40, %44
  %46 = fcmp olt float %35, %45
  br i1 %46, label %47, label %109

; <label>:47:                                     ; preds = %27
  %48 = load %13*, %13** %4, align 8
  %49 = call zeroext i1 @180(%13* %48)
  %50 = load %13*, %13** %4, align 8
  %51 = getelementptr inbounds %13, %13* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = uitofp i64 %52 to float
  %54 = load %13*, %13** %4, align 8
  %55 = getelementptr inbounds %13, %13* %54, i32 0, i32 5
  %56 = load %4*, %4** %55, align 8
  %57 = getelementptr inbounds %4, %4* %56, i32 0, i32 0
  %58 = load float, float* %57, align 4
  %59 = load %13*, %13** %4, align 8
  %60 = getelementptr inbounds %13, %13* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = uitofp i64 %61 to float
  %63 = fmul float %58, %62
  %64 = fcmp olt float %53, %63
  br i1 %64, label %65, label %109

; <label>:65:                                     ; preds = %47
  %66 = load %13*, %13** %4, align 8
  %67 = getelementptr inbounds %13, %13* %66, i32 0, i32 5
  %68 = load %4*, %4** %67, align 8
  store %4* %68, %4** %8, align 8
  %69 = load %4*, %4** %8, align 8
  %70 = getelementptr inbounds %4, %4* %69, i32 0, i32 4
  %71 = load i8, i8* %70, align 4
  %72 = trunc i8 %71 to i1
  %73 = load %13*, %13** %4, align 8
  %74 = getelementptr inbounds %13, %13* %73, i32 0, i32 2
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
  %89 = load %13*, %13** %4, align 8
  %90 = load i64, i64* %9, align 8
  %91 = call zeroext i1 @hash_rehash(%13* %89, i64 %90)
  br i1 %91, label %109, label %92

; <label>:92:                                     ; preds = %86
  %93 = load %13*, %13** %4, align 8
  %94 = getelementptr inbounds %13, %13* %93, i32 0, i32 9
  %95 = load %14*, %14** %94, align 8
  store %14* %95, %14** %10, align 8
  br label %96

; <label>:96:                                     ; preds = %99, %92
  %97 = load %14*, %14** %10, align 8
  %98 = icmp ne %14* %97, null
  br i1 %98, label %99, label %106

; <label>:99:                                     ; preds = %96
  %100 = load %14*, %14** %10, align 8
  %101 = getelementptr inbounds %14, %14* %100, i32 0, i32 1
  %102 = load %14*, %14** %101, align 8
  store %14* %102, %14** %11, align 8
  %103 = load %14*, %14** %10, align 8
  %104 = bitcast %14* %103 to i8*
  call void @free(i8* %104) #7
  %105 = load %14*, %14** %11, align 8
  store %14* %105, %14** %10, align 8
  br label %96

; <label>:106:                                    ; preds = %96
  %107 = load %13*, %13** %4, align 8
  %108 = getelementptr inbounds %13, %13* %107, i32 0, i32 9
  store %14* null, %14** %108, align 8
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
define void @i_ring_init(%16*, i32) #2 {
  %3 = alloca %16*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %16* %0, %16** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %16*, %16** %3, align 8
  %7 = getelementptr inbounds %16, %16* %6, i32 0, i32 4
  store i8 1, i8* %7, align 4
  %8 = load %16*, %16** %3, align 8
  %9 = getelementptr inbounds %16, %16* %8, i32 0, i32 2
  store i32 0, i32* %9, align 4
  %10 = load %16*, %16** %3, align 8
  %11 = getelementptr inbounds %16, %16* %10, i32 0, i32 3
  store i32 0, i32* %11, align 4
  store i32 0, i32* %5, align 4
  br label %12

; <label>:12:                                     ; preds = %17, %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 4
  %15 = load i32, i32* %4, align 4
  %16 = load %16*, %16** %3, align 8
  br i1 %14, label %17, label %24

; <label>:17:                                     ; preds = %12
  %18 = getelementptr inbounds %16, %16* %16, i32 0, i32 0
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 %20
  store i32 %15, i32* %21, align 4
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %12

; <label>:24:                                     ; preds = %12
  %25 = getelementptr inbounds %16, %16* %16, i32 0, i32 1
  store i32 %15, i32* %25, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define zeroext i1 @i_ring_empty(%16*) #2 {
  %2 = alloca %16*, align 8
  store %16* %0, %16** %2, align 8
  %3 = load %16*, %16** %2, align 8
  %4 = getelementptr inbounds %16, %16* %3, i32 0, i32 4
  %5 = load i8, i8* %4, align 4
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: noinline nounwind uwtable
define i32 @i_ring_push(%16*, i32) #2 {
  %3 = alloca %16*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %16* %0, %16** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %16*, %16** %3, align 8
  %8 = getelementptr inbounds %16, %16* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %16*, %16** %3, align 8
  %11 = getelementptr inbounds %16, %16* %10, i32 0, i32 4
  %12 = load i8, i8* %11, align 4
  %13 = trunc i8 %12 to i1
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = add i32 %9, %15
  %17 = urem i32 %16, 4
  store i32 %17, i32* %5, align 4
  %18 = load %16*, %16** %3, align 8
  %19 = getelementptr inbounds %16, %16* %18, i32 0, i32 0
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load %16*, %16** %3, align 8
  %26 = getelementptr inbounds %16, %16* %25, i32 0, i32 0
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i64 0, i64 %28
  store i32 %24, i32* %29, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %16*, %16** %3, align 8
  %32 = getelementptr inbounds %16, %16* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load %16*, %16** %3, align 8
  %35 = getelementptr inbounds %16, %16* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %52

; <label>:38:                                     ; preds = %2
  %39 = load %16*, %16** %3, align 8
  %40 = getelementptr inbounds %16, %16* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %16*, %16** %3, align 8
  %43 = getelementptr inbounds %16, %16* %42, i32 0, i32 4
  %44 = load i8, i8* %43, align 4
  %45 = trunc i8 %44 to i1
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = add i32 %41, %47
  %49 = urem i32 %48, 4
  %50 = load %16*, %16** %3, align 8
  %51 = getelementptr inbounds %16, %16* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  br label %52

; <label>:52:                                     ; preds = %38, %2
  %53 = load %16*, %16** %3, align 8
  %54 = getelementptr inbounds %16, %16* %53, i32 0, i32 4
  store i8 0, i8* %54, align 4
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

; Function Attrs: noinline nounwind uwtable
define i32 @i_ring_pop(%16*) #2 {
  %2 = alloca %16*, align 8
  %3 = alloca i32, align 4
  store %16* %0, %16** %2, align 8
  %4 = load %16*, %16** %2, align 8
  %5 = call zeroext i1 @i_ring_empty(%16* %4)
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  call void @abort() #10
  unreachable

; <label>:7:                                      ; preds = %1
  %8 = load %16*, %16** %2, align 8
  %9 = getelementptr inbounds %16, %16* %8, i32 0, i32 0
  %10 = load %16*, %16** %2, align 8
  %11 = getelementptr inbounds %16, %16* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %3, align 4
  %16 = load %16*, %16** %2, align 8
  %17 = getelementptr inbounds %16, %16* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %16*, %16** %2, align 8
  %20 = getelementptr inbounds %16, %16* %19, i32 0, i32 0
  %21 = load %16*, %16** %2, align 8
  %22 = getelementptr inbounds %16, %16* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 %24
  store i32 %18, i32* %25, align 4
  %26 = load %16*, %16** %2, align 8
  %27 = getelementptr inbounds %16, %16* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %16*, %16** %2, align 8
  %30 = getelementptr inbounds %16, %16* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %28, %31
  %33 = load %16*, %16** %2, align 8
  br i1 %32, label %34, label %36

; <label>:34:                                     ; preds = %7
  %35 = getelementptr inbounds %16, %16* %33, i32 0, i32 4
  store i8 1, i8* %35, align 4
  br label %44

; <label>:36:                                     ; preds = %7
  %37 = getelementptr inbounds %16, %16* %33, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = add i32 %38, 4
  %40 = sub i32 %39, 1
  %41 = urem i32 %40, 4
  %42 = load %16*, %16** %2, align 8
  %43 = getelementptr inbounds %16, %16* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  br label %44

; <label>:44:                                     ; preds = %36, %34
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

; Function Attrs: noinline nounwind uwtable
define i32 @open_safer(i8*, i32, ...) #2 {
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

declare i32 @open(i8*, i32, ...) #1

; Function Attrs: noinline nounwind uwtable
define i32 @openat_safer(i32, i8*, i32, ...) #2 {
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
define %21* @opendir_safer(i8*) #2 {
  %2 = alloca i8*, align 8
  %3 = alloca %21*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %21*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call %21* @opendir(i8* %8)
  store %21* %9, %21** %3, align 8
  %10 = load %21*, %21** %3, align 8
  %11 = icmp ne %21* %10, null
  br i1 %11, label %12, label %37

; <label>:12:                                     ; preds = %1
  %13 = load %21*, %21** %3, align 8
  %14 = call i32 @dirfd(%21* %13) #7
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
  %23 = call %21* @rpl_fdopendir(i32 %22)
  store %21* %23, %21** %5, align 8
  %24 = call i32* @__errno_location() #13
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load %21*, %21** %5, align 8
  %27 = icmp ne %21* %26, null
  br i1 %27, label %31, label %28

; <label>:28:                                     ; preds = %19
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @close(i32 %29)
  br label %31

; <label>:31:                                     ; preds = %28, %19
  %32 = load %21*, %21** %3, align 8
  %33 = call i32 @closedir(%21* %32)
  %34 = load i32, i32* %6, align 4
  %35 = call i32* @__errno_location() #13
  store i32 %34, i32* %35, align 4
  %36 = load %21*, %21** %5, align 8
  store %21* %36, %21** %3, align 8
  br label %37

; <label>:37:                                     ; preds = %12, %31, %1
  %38 = load %21*, %21** %3, align 8
  ret %21* %38
}

declare %21* @opendir(i8*) #1

; Function Attrs: noinline nounwind uwtable
define i8* @quote_n(i32, i8*) #2 {
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
define i8* @quote(i8*) #2 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i8* @quote_n(i32 0, i8* %3)
  ret i8* %4
}

; Function Attrs: noinline nounwind uwtable
define i32 @set_char_quoting(%5*, i8 signext, i32) #2 {
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
  %15 = select i1 %13, %5* %14, %5* @114
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
define void @set_custom_quoting(%5*, i8*, i8*) #2 {
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
  store %5* @114, %5** %4, align 8
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
  call void @abort() #10
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
define internal i64 @189(i8*, i64, i8*, i64, i32, i32, i32*, i8*, i8*) #2 {
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
  %32 = alloca %25, align 4
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
  %37 = call i64 @__ctype_get_mb_cur_max() #7
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
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @115, i32 0, i32 0), i8** %22, align 8
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
  %67 = call i8* @190(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @116, i32 0, i32 0), i32 %66)
  store i8* %67, i8** %18, align 8
  %68 = load i32, i32* %15, align 4
  %69 = call i8* @190(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @117, i32 0, i32 0), i32 %68)
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
  %97 = call i64 @strlen(i8* %96) #11
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
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @117, i32 0, i32 0), i8** %22, align 8
  store i64 1, i64* %23, align 8
  br label %116

; <label>:114:                                    ; preds = %9
  store i8 0, i8* %26, align 1
  br label %116

; <label>:115:                                    ; preds = %9
  call void @abort() #10
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
  %154 = call i32 @memcmp(i8* %151, i8* %152, i64 %153) #11
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
  %399 = call i16** @__ctype_b_loc() #13
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
  %411 = bitcast %25* %32 to i8*
  call void @llvm.memset.p0i8.i64(i8* %411, i8 0, i64 8, i32 4, i1 false)
  store i64 0, i64* %30, align 8
  store i8 1, i8* %31, align 1
  %412 = load i64, i64* %14, align 8
  %413 = icmp eq i64 %412, -1
  br i1 %413, label %414, label %417

; <label>:414:                                    ; preds = %410
  %415 = load i8*, i8** %13, align 8
  %416 = call i64 @strlen(i8* %415) #11
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
  %429 = call i64 @mbrtowc(i32* %33, i8* %423, i64 %428, %25* %32) #7
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
  %483 = call i32 @iswprint(i32 %482) #7
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
  %490 = call i32 @mbsinit(%25* %32) #11
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
  %706 = call i64 @189(i8* %697, i64 %698, i8* %699, i64 %700, i32 %701, i32 %703, i32* null, i8* %704, i8* %705)
  store i64 %706, i64* %10, align 8
  br label %707

; <label>:707:                                    ; preds = %696, %694
  %708 = load i64, i64* %10, align 8
  ret i64 %708
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #4

; Function Attrs: noinline nounwind uwtable
define internal i8* @190(i8*, i32) #2 {
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
  %spec.store.select = select i1 %or.cond, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @115, i32 0, i32 0), i8* %6
  store i8* %spec.store.select, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  ret i8* %12
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #5

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %25*) #4

; Function Attrs: nounwind
declare i32 @iswprint(i32) #4

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%25*) #5

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %5*) #2 {
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
  %17 = select i1 %15, %5* %16, %5* @114
  store %5* %17, %5** %9, align 8
  %18 = call i32* @__errno_location() #13
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
  %43 = call i64 @189(i8* null, i64 0, i8* %28, i64 %29, i32 %32, i32 %33, i32* %36, i8* %39, i8* %42)
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
  %64 = call i64 @189(i8* %47, i64 %48, i8* %49, i64 %50, i32 %53, i32 %54, i32* %57, i8* %60, i8* %63)
  %65 = load i32, i32* %10, align 4
  %66 = call i32* @__errno_location() #13
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
define i8* @quotearg_n(i32, i8*) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i8*, i8** %4, align 8
  %7 = call i8* @191(i32 %5, i8* %6, i64 -1, %5* @114)
  ret i8* %7
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @191(i32, i8*, i64, %5*) #2 {
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
  %18 = call i32* @__errno_location() #13
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %6*, %6** @118, align 8
  store %6* %21, %6** %11, align 8
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %4
  call void @abort() #10
  unreachable

; <label>:25:                                     ; preds = %4
  %26 = load i32, i32* @119, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ule i32 %26, %27
  br i1 %28, label %29, label %67

; <label>:29:                                     ; preds = %25
  %30 = load i32, i32* %10, align 4
  %31 = add i32 %30, 1
  %32 = zext i32 %31 to i64
  store i64 %32, i64* %12, align 8
  %33 = load %6*, %6** %11, align 8
  %34 = icmp eq %6* %33, @121
  %35 = zext i1 %34 to i8
  store i8 %35, i8* %13, align 1
  %36 = load i64, i64* %12, align 8
  %37 = icmp ult i64 1152921504606846975, %36
  br i1 %37, label %38, label %39

; <label>:38:                                     ; preds = %29
  call void @xalloc_die() #12
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
  store %6* %48, %6** @118, align 8
  %49 = load i8, i8* %13, align 1
  %50 = trunc i8 %49 to i1
  br i1 %50, label %51, label %54

; <label>:51:                                     ; preds = %39
  %52 = load %6*, %6** %11, align 8
  %53 = bitcast %6* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* bitcast (%6* @121 to i8*), i64 16, i32 8, i1 false)
  br label %54

; <label>:54:                                     ; preds = %51, %39
  %55 = load %6*, %6** %11, align 8
  %56 = load i32, i32* @119, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %6, %6* %55, i64 %57
  %59 = bitcast %6* %58 to i8*
  %60 = load i64, i64* %12, align 8
  %61 = load i32, i32* @119, align 4
  %62 = zext i32 %61 to i64
  %63 = sub i64 %60, %62
  %64 = mul i64 %63, 16
  call void @llvm.memset.p0i8.i64(i8* %59, i8 0, i64 %64, i32 8, i1 false)
  %65 = load i64, i64* %12, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* @119, align 4
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
  %101 = call i64 @189(i8* %84, i64 %85, i8* %86, i64 %87, i32 %90, i32 %91, i32* %94, i8* %97, i8* %100)
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
  %114 = icmp ne i8* %113, getelementptr inbounds ([256 x i8], [256 x i8]* @120, i32 0, i32 0)
  br i1 %114, label %115, label %117

; <label>:115:                                    ; preds = %105
  %116 = load i8*, i8** %15, align 8
  call void @free(i8* %116) #7
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
  %142 = call i64 @189(i8* %125, i64 %126, i8* %127, i64 %128, i32 %131, i32 %132, i32* %135, i8* %138, i8* %141)
  br label %143

; <label>:143:                                    ; preds = %117, %67
  %144 = load i32, i32* %9, align 4
  %145 = call i32* @__errno_location() #13
  store i32 %144, i32* %145, align 4
  %146 = load i8*, i8** %15, align 8
  ret i8* %146
}

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
  %10 = call i8* @191(i32 %7, i8* %8, i64 %9, %5* @114)
  ret i8* %10
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_n_style(i32, i32, i8*) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %5, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* %5, align 4
  call void @192(%5* sret %7, i32 %8)
  %9 = load i32, i32* %4, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = call i8* @191(i32 %9, i8* %10, i64 -1, %5* %7)
  ret i8* %11
}

; Function Attrs: noinline nounwind uwtable
define internal void @192(%5* noalias sret, i32) #2 {
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
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) #2 {
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
  call void @192(%5* sret %9, i32 %10)
  %11 = load i32, i32* %5, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = load i64, i64* %8, align 8
  %14 = call i8* @191(i32 %11, i8* %12, i64 %13, %5* %9)
  ret i8* %14
}

; Function Attrs: noinline nounwind uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) #2 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %5, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8 %2, i8* %6, align 1
  %8 = bitcast %5* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast (%5* @114 to i8*), i64 56, i32 8, i1 false)
  %9 = load i8, i8* %6, align 1
  %10 = call i32 @set_char_quoting(%5* %7, i8 signext %9, i32 1)
  %11 = load i8*, i8** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i8* @191(i32 0, i8* %11, i64 %12, %5* %7)
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
  %11 = alloca %5, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = bitcast %5* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* bitcast (%5* @114 to i8*), i64 56, i32 8, i1 false)
  %13 = load i8*, i8** %7, align 8
  %14 = load i8*, i8** %8, align 8
  call void @set_custom_quoting(%5* %11, i8* %13, i8* %14)
  %15 = load i32, i32* %6, align 4
  %16 = load i8*, i8** %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = call i8* @191(i32 %15, i8* %16, i64 %17, %5* %11)
  ret i8* %18
}

; Function Attrs: noinline nounwind uwtable
define %3* @get_root_dev_ino(%3*) #2 {
  %2 = alloca %3*, align 8
  %3 = alloca %3*, align 8
  %4 = alloca %8, align 8
  store %3* %0, %3** %3, align 8
  %5 = call i32 @lstat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @122, i32 0, i32 0), %8* %4) #7
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
define i8* @umaxtostr(i64, i8*) #2 {
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
  br label %9

; <label>:9:                                      ; preds = %9, %2
  %10 = load i64, i64* %3, align 8
  %11 = urem i64 %10, 10
  %12 = add i64 48, %11
  %13 = trunc i64 %12 to i8
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 -1
  store i8* %15, i8** %5, align 8
  store i8 %13, i8* %15, align 1
  %16 = load i64, i64* %3, align 8
  %17 = udiv i64 %16, 10
  store i64 %17, i64* %3, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %9, label %19

; <label>:19:                                     ; preds = %9
  %20 = load i8*, i8** %5, align 8
  ret i8* %20
}

; Function Attrs: noinline nounwind uwtable
define i8* @parse_user_spec(i8*, i32*, i32*, i8**, i8**) #2 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i8** %4, i8*** %10, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i8* @strchr(i8* %14, i32 58) #11
  store i8* %15, i8** %11, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i8**, i8*** %9, align 8
  %21 = load i8**, i8*** %10, align 8
  %22 = call i8* @193(i8* %16, i8* %17, i32* %18, i32* %19, i8** %20, i8** %21)
  store i8* %22, i8** %12, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = icmp eq i8* %23, null
  %25 = load i8*, i8** %12, align 8
  %26 = icmp ne i8* %25, null
  %or.cond = and i1 %24, %26
  br i1 %or.cond, label %27, label %42

; <label>:27:                                     ; preds = %5
  %28 = load i8*, i8** %6, align 8
  %29 = call i8* @strchr(i8* %28, i32 46) #11
  store i8* %29, i8** %13, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %42

; <label>:32:                                     ; preds = %27
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i8**, i8*** %9, align 8
  %38 = load i8**, i8*** %10, align 8
  %39 = call i8* @193(i8* %33, i8* %34, i32* %35, i32* %36, i8** %37, i8** %38)
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

; <label>:41:                                     ; preds = %32
  store i8* null, i8** %12, align 8
  br label %42

; <label>:42:                                     ; preds = %27, %32, %41, %5
  %43 = load i8*, i8** %12, align 8
  ret i8* %43
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

; Function Attrs: noinline nounwind uwtable
define internal i8* @193(i8*, i8*, i32*, i32*, i8**, i8**) #2 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %10*, align 8
  %15 = alloca %9*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i8, align 1
  %23 = alloca i64, align 8
  %24 = alloca [21 x i8], align 16
  %25 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i8** %5, i8*** %12, align 8
  store i8* null, i8** %18, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %19, align 4
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %20, align 4
  store i8* null, i8** %13, align 8
  %30 = load i8**, i8*** %12, align 8
  store i8* null, i8** %30, align 8
  %31 = load i8**, i8*** %11, align 8
  store i8* null, i8** %31, align 8
  store i8* null, i8** %16, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %41

; <label>:34:                                     ; preds = %6
  %35 = load i8*, i8** %7, align 8
  %36 = load i8, i8* %35, align 1
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %38, label %57

; <label>:38:                                     ; preds = %34
  %39 = load i8*, i8** %7, align 8
  %40 = call noalias i8* @xstrdup(i8* %39)
  store i8* %40, i8** %16, align 8
  br label %57

; <label>:41:                                     ; preds = %6
  %42 = load i8*, i8** %8, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  store i64 %46, i64* %21, align 8
  %47 = load i64, i64* %21, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

; <label>:49:                                     ; preds = %41
  %50 = load i8*, i8** %7, align 8
  %51 = load i64, i64* %21, align 8
  %52 = add i64 %51, 1
  %53 = call noalias i8* @xmemdup(i8* %50, i64 %52)
  store i8* %53, i8** %16, align 8
  %54 = load i8*, i8** %16, align 8
  %55 = load i64, i64* %21, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8 0, i8* %56, align 1
  br label %57

; <label>:57:                                     ; preds = %41, %49, %34, %38
  %58 = load i8*, i8** %8, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %69, label %60

; <label>:60:                                     ; preds = %57
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

; <label>:66:                                     ; preds = %60
  %67 = load i8*, i8** %8, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  br label %69

; <label>:69:                                     ; preds = %57, %60, %66
  %70 = phi i8* [ %68, %66 ], [ null, %60 ], [ null, %57 ]
  store i8* %70, i8** %17, align 8
  %71 = load i8*, i8** %16, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %140

; <label>:73:                                     ; preds = %69
  %74 = load i8*, i8** %16, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 43
  br i1 %77, label %81, label %78

; <label>:78:                                     ; preds = %73
  %79 = load i8*, i8** %16, align 8
  %80 = call %10* @getpwnam(i8* %79)
  br label %81

; <label>:81:                                     ; preds = %73, %78
  %82 = phi %10* [ %80, %78 ], [ null, %73 ]
  store %10* %82, %10** %14, align 8
  %83 = load %10*, %10** %14, align 8
  %84 = icmp eq %10* %83, null
  br i1 %84, label %85, label %111

; <label>:85:                                     ; preds = %81
  %86 = load i8*, i8** %8, align 8
  %87 = icmp ne i8* %86, null
  %88 = load i8*, i8** %17, align 8
  %89 = icmp eq i8* %88, null
  %90 = select i1 %87, i1 %89, i1 false
  %91 = zext i1 %90 to i8
  store i8 %91, i8* %22, align 1
  %92 = load i8, i8* %22, align 1
  %93 = trunc i8 %92 to i1
  br i1 %93, label %94, label %96

; <label>:94:                                     ; preds = %85
  %95 = load i8*, i8** @123, align 8
  store i8* %95, i8** %13, align 8
  br label %139

; <label>:96:                                     ; preds = %85
  %97 = load i8*, i8** %16, align 8
  %98 = call i32 @xstrtoul(i8* %97, i8** null, i32 10, i64* %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @124, i32 0, i32 0))
  %99 = icmp eq i32 %98, 0
  %100 = load i64, i64* %23, align 8
  %101 = icmp ule i64 %100, 4294967295
  %or.cond = and i1 %99, %101
  br i1 %or.cond, label %102, label %109

; <label>:102:                                    ; preds = %96
  %103 = load i64, i64* %23, align 8
  %104 = trunc i64 %103 to i32
  %105 = icmp ne i32 %104, -1
  br i1 %105, label %106, label %109

; <label>:106:                                    ; preds = %102
  %107 = load i64, i64* %23, align 8
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %19, align 4
  br label %139

; <label>:109:                                    ; preds = %102, %96
  %110 = load i8*, i8** @125, align 8
  store i8* %110, i8** %13, align 8
  br label %139

; <label>:111:                                    ; preds = %81
  %112 = load %10*, %10** %14, align 8
  %113 = getelementptr inbounds %10, %10* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  store i32 %114, i32* %19, align 4
  %115 = load i8*, i8** %17, align 8
  %116 = icmp eq i8* %115, null
  %117 = load i8*, i8** %8, align 8
  %118 = icmp ne i8* %117, null
  %or.cond3 = and i1 %116, %118
  br i1 %or.cond3, label %119, label %139

; <label>:119:                                    ; preds = %111
  %120 = load %10*, %10** %14, align 8
  %121 = getelementptr inbounds %10, %10* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %20, align 4
  %123 = load i32, i32* %20, align 4
  %124 = call %9* @getgrgid(i32 %123)
  store %9* %124, %9** %15, align 8
  %125 = load %9*, %9** %15, align 8
  %126 = icmp ne %9* %125, null
  br i1 %126, label %127, label %131

; <label>:127:                                    ; preds = %119
  %128 = load %9*, %9** %15, align 8
  %129 = getelementptr inbounds %9, %9* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  br label %136

; <label>:131:                                    ; preds = %119
  %132 = load i32, i32* %20, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds [21 x i8], [21 x i8]* %24, i32 0, i32 0
  %135 = call i8* @umaxtostr(i64 %133, i8* %134)
  br label %136

; <label>:136:                                    ; preds = %131, %127
  %137 = phi i8* [ %130, %127 ], [ %135, %131 ]
  %138 = call noalias i8* @xstrdup(i8* %137)
  store i8* %138, i8** %18, align 8
  call void @endgrent()
  br label %139

; <label>:139:                                    ; preds = %111, %136, %94, %109, %106
  call void @endpwent()
  br label %140

; <label>:140:                                    ; preds = %139, %69
  %141 = load i8*, i8** %17, align 8
  %142 = icmp ne i8* %141, null
  %143 = load i8*, i8** %13, align 8
  %144 = icmp eq i8* %143, null
  %or.cond5 = and i1 %142, %144
  br i1 %or.cond5, label %145, label %179

; <label>:145:                                    ; preds = %140
  %146 = load i8*, i8** %17, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 43
  br i1 %149, label %153, label %150

; <label>:150:                                    ; preds = %145
  %151 = load i8*, i8** %17, align 8
  %152 = call %9* @getgrnam(i8* %151)
  br label %153

; <label>:153:                                    ; preds = %145, %150
  %154 = phi %9* [ %152, %150 ], [ null, %145 ]
  store %9* %154, %9** %15, align 8
  %155 = load %9*, %9** %15, align 8
  %156 = icmp eq %9* %155, null
  br i1 %156, label %157, label %172

; <label>:157:                                    ; preds = %153
  %158 = load i8*, i8** %17, align 8
  %159 = call i32 @xstrtoul(i8* %158, i8** null, i32 10, i64* %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @124, i32 0, i32 0))
  %160 = icmp eq i32 %159, 0
  %161 = load i64, i64* %25, align 8
  %162 = icmp ule i64 %161, 4294967295
  %or.cond7 = and i1 %160, %162
  br i1 %or.cond7, label %163, label %170

; <label>:163:                                    ; preds = %157
  %164 = load i64, i64* %25, align 8
  %165 = trunc i64 %164 to i32
  %166 = icmp ne i32 %165, -1
  br i1 %166, label %167, label %170

; <label>:167:                                    ; preds = %163
  %168 = load i64, i64* %25, align 8
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %20, align 4
  br label %176

; <label>:170:                                    ; preds = %163, %157
  %171 = load i8*, i8** @126, align 8
  store i8* %171, i8** %13, align 8
  br label %176

; <label>:172:                                    ; preds = %153
  %173 = load %9*, %9** %15, align 8
  %174 = getelementptr inbounds %9, %9* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  store i32 %175, i32* %20, align 4
  br label %176

; <label>:176:                                    ; preds = %167, %170, %172
  call void @endgrent()
  %177 = load i8*, i8** %17, align 8
  %178 = call noalias i8* @xstrdup(i8* %177)
  store i8* %178, i8** %18, align 8
  br label %179

; <label>:179:                                    ; preds = %176, %140
  %180 = load i8*, i8** %13, align 8
  %181 = icmp eq i8* %180, null
  br i1 %181, label %182, label %191

; <label>:182:                                    ; preds = %179
  %183 = load i32, i32* %19, align 4
  %184 = load i32*, i32** %9, align 8
  store i32 %183, i32* %184, align 4
  %185 = load i32, i32* %20, align 4
  %186 = load i32*, i32** %10, align 8
  store i32 %185, i32* %186, align 4
  %187 = load i8*, i8** %16, align 8
  %188 = load i8**, i8*** %11, align 8
  store i8* %187, i8** %188, align 8
  %189 = load i8*, i8** %18, align 8
  %190 = load i8**, i8*** %12, align 8
  store i8* %189, i8** %190, align 8
  store i8* null, i8** %16, align 8
  br label %193

; <label>:191:                                    ; preds = %179
  %192 = load i8*, i8** %18, align 8
  call void @free(i8* %192) #7
  br label %193

; <label>:193:                                    ; preds = %191, %182
  %194 = load i8*, i8** %16, align 8
  call void @free(i8* %194) #7
  %195 = load i8*, i8** %13, align 8
  ret i8* %195
}

declare %10* @getpwnam(i8*) #1

declare void @endgrent() #1

declare void @endpwent() #1

declare %9* @getgrnam(i8*) #1

; Function Attrs: noinline nounwind uwtable
define noalias i8* @xmalloc(i64) #2 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call noalias i8* @malloc(i64 %4) #7
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  %8 = load i64, i64* %2, align 8
  %9 = icmp ne i64 %8, 0
  %or.cond = and i1 %7, %9
  br i1 %or.cond, label %10, label %11

; <label>:10:                                     ; preds = %1
  call void @xalloc_die() #12
  unreachable

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** %3, align 8
  ret i8* %12
}

; Function Attrs: noinline nounwind uwtable
define i8* @xrealloc(i8*, i64) #2 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i8* @realloc(i8* %5, i64 %6) #7
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp eq i8* %8, null
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  %or.cond = and i1 %9, %11
  br i1 %or.cond, label %12, label %13

; <label>:12:                                     ; preds = %2
  call void @xalloc_die() #12
  unreachable

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %3, align 8
  ret i8* %14
}

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
  call void @xalloc_die() #12
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
  %5 = call i64 @strlen(i8* %4) #11
  %6 = add i64 %5, 1
  %7 = call noalias i8* @xmemdup(i8* %3, i64 %6)
  ret i8* %7
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
  call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @130, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @131, i32 0, i32 0), i32 83, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @132, i32 0, i32 0)) #10
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
  %35 = call i16** @__ctype_b_loc() #13
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
  %55 = call i32* @__errno_location() #13
  store i32 0, i32* %55, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = load i8**, i8*** %13, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i64 @strtoul(i8* %56, i8** %57, i32 %58) #7
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
  %79 = call i8* @strchr(i8* %74, i32 %78) #11
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %82

; <label>:81:                                     ; preds = %73
  store i64 1, i64* %14, align 8
  br label %93

; <label>:82:                                     ; preds = %73, %67, %64
  store i32 4, i32* %6, align 4
  br label %205

; <label>:83:                                     ; preds = %54
  %84 = call i32* @__errno_location() #13
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

; <label>:87:                                     ; preds = %83
  %88 = call i32* @__errno_location() #13
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
  %112 = call i8* @strchr(i8* %107, i32 %111) #11
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
  %121 = call i8* @strchr(i8* %120, i32 48) #11
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
  %150 = call i32 @194(i64* %14, i32 512)
  store i32 %150, i32* %20, align 4
  br label %185

; <label>:151:                                    ; preds = %144
  %152 = call i32 @194(i64* %14, i32 1024)
  store i32 %152, i32* %20, align 4
  br label %185

; <label>:153:                                    ; preds = %144
  store i32 0, i32* %20, align 4
  br label %185

; <label>:154:                                    ; preds = %144
  %155 = load i32, i32* %18, align 4
  %156 = call i32 @195(i64* %14, i32 %155, i32 6)
  store i32 %156, i32* %20, align 4
  br label %185

; <label>:157:                                    ; preds = %144, %144
  %158 = load i32, i32* %18, align 4
  %159 = call i32 @195(i64* %14, i32 %158, i32 3)
  store i32 %159, i32* %20, align 4
  br label %185

; <label>:160:                                    ; preds = %144, %144
  %161 = load i32, i32* %18, align 4
  %162 = call i32 @195(i64* %14, i32 %161, i32 1)
  store i32 %162, i32* %20, align 4
  br label %185

; <label>:163:                                    ; preds = %144, %144
  %164 = load i32, i32* %18, align 4
  %165 = call i32 @195(i64* %14, i32 %164, i32 2)
  store i32 %165, i32* %20, align 4
  br label %185

; <label>:166:                                    ; preds = %144
  %167 = load i32, i32* %18, align 4
  %168 = call i32 @195(i64* %14, i32 %167, i32 5)
  store i32 %168, i32* %20, align 4
  br label %185

; <label>:169:                                    ; preds = %144, %144
  %170 = load i32, i32* %18, align 4
  %171 = call i32 @195(i64* %14, i32 %170, i32 4)
  store i32 %171, i32* %20, align 4
  br label %185

; <label>:172:                                    ; preds = %144
  %173 = call i32 @194(i64* %14, i32 2)
  store i32 %173, i32* %20, align 4
  br label %185

; <label>:174:                                    ; preds = %144
  %175 = load i32, i32* %18, align 4
  %176 = call i32 @195(i64* %14, i32 %175, i32 8)
  store i32 %176, i32* %20, align 4
  br label %185

; <label>:177:                                    ; preds = %144
  %178 = load i32, i32* %18, align 4
  %179 = call i32 @195(i64* %14, i32 %178, i32 7)
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

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @194(i64*, i32) #2 {
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
define internal i32 @195(i64*, i32, i32) #2 {
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
  %15 = call i32 @194(i64* %13, i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %7, align 4
  br label %8

; <label>:18:                                     ; preds = %8
  %19 = load i32, i32* %7, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define %11* @xfts_open(i8**, i32, i32 (%12**, %12**)*) #2 {
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32 (%12**, %12**)*, align 8
  %7 = alloca %11*, align 8
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 (%12**, %12**)* %2, i32 (%12**, %12**)** %6, align 8
  %8 = load i8**, i8*** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = or i32 %9, 512
  %11 = load i32 (%12**, %12**)*, i32 (%12**, %12**)** %6, align 8
  %12 = call %11* @fts_open(i8** %8, i32 %10, i32 (%12**, %12**)* %11)
  store %11* %12, %11** %7, align 8
  %13 = load %11*, %11** %7, align 8
  %14 = icmp eq %11* %13, null
  br i1 %14, label %15, label %21

; <label>:15:                                     ; preds = %3
  %16 = call i32* @__errno_location() #13
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 22
  br i1 %18, label %20, label %19

; <label>:19:                                     ; preds = %15
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @133, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @134, i32 0, i32 0), i32 41, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @135, i32 0, i32 0)) #10
  unreachable

; <label>:20:                                     ; preds = %15
  call void @xalloc_die() #12
  unreachable

; <label>:21:                                     ; preds = %3
  %22 = load %11*, %11** %7, align 8
  ret %11* %22
}

; Function Attrs: noinline nounwind uwtable
define zeroext i1 @cycle_warning_required(%11*, %12*) #2 {
  %3 = alloca %11*, align 8
  %4 = alloca %12*, align 8
  store %11* %0, %11** %3, align 8
  store %12* %1, %12** %4, align 8
  %5 = load %11*, %11** %3, align 8
  %6 = getelementptr inbounds %11, %11* %5, i32 0, i32 10
  %7 = load i32, i32* %6, align 8
  %8 = and i32 %7, 16
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

; <label>:10:                                     ; preds = %2
  %11 = load %11*, %11** %3, align 8
  %12 = getelementptr inbounds %11, %11* %11, i32 0, i32 10
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %33

; <label>:16:                                     ; preds = %10, %2
  %17 = load %11*, %11** %3, align 8
  %18 = getelementptr inbounds %11, %11* %17, i32 0, i32 10
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 16
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

; <label>:22:                                     ; preds = %16
  %23 = load %11*, %11** %3, align 8
  %24 = getelementptr inbounds %11, %11* %23, i32 0, i32 10
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

; <label>:28:                                     ; preds = %22
  %29 = load %12*, %12** %4, align 8
  %30 = getelementptr inbounds %12, %12* %29, i32 0, i32 11
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br label %33

; <label>:33:                                     ; preds = %16, %22, %28, %10
  %34 = phi i1 [ true, %10 ], [ false, %22 ], [ false, %16 ], [ %32, %28 ]
  ret i1 %34
}

; Function Attrs: noinline noreturn nounwind uwtable
define void @xalloc_die() #0 {
  %1 = load volatile i32, i32* @exit_failure, align 4
  call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @136, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @137, i32 0, i32 0))
  call void @abort() #10
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define i32 @set_cloexec_flag(i32, i1 zeroext) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  %8 = zext i1 %1 to i8
  store i8 %8, i8* %5, align 1
  %9 = load i32, i32* %4, align 4
  %10 = call i32 (i32, i32, ...) @fcntl(i32 %9, i32 1, i32 0)
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
  %26 = call i32 (i32, i32, ...) @fcntl(i32 %24, i32 2, i32 %25)
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

declare i32 @fcntl(i32, i32, ...) #1

; Function Attrs: noinline nounwind uwtable
define i32 @close_stream(%0*) #2 {
  %2 = alloca i32, align 4
  %3 = alloca %0*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %0* %0, %0** %3, align 8
  %7 = load %0*, %0** %3, align 8
  %8 = call i64 @__fpending(%0* %7) #7
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %4, align 1
  %11 = load %0*, %0** %3, align 8
  %12 = call i32 @ferror_unlocked(%0* %11) #7
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
  %28 = call i32* @__errno_location() #13
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 9
  br i1 %30, label %31, label %37

; <label>:31:                                     ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1
  %33 = trunc i8 %32 to i1
  br i1 %33, label %36, label %34

; <label>:34:                                     ; preds = %31
  %35 = call i32* @__errno_location() #13
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

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%0*) #4

declare i32 @fclose(%0*) #1

; Function Attrs: noinline nounwind uwtable
define void @cycle_check_init(%18*) #2 {
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
define zeroext i1 @cycle_check(%18*, %8*) #2 {
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
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @138, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @139, i32 0, i32 0), i32 60, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @140, i32 0, i32 0)) #10
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
  %40 = call zeroext i1 @196(i64 %39)
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
define internal zeroext i1 @196(i64) #2 {
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
define i32 @dup_safer(i32) #2 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 (i32, i32, ...) @fcntl(i32 %3, i32 0, i32 3)
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define i32 @dup_safer_flag(i32, i32) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, 524288
  %8 = icmp ne i32 %7, 0
  %9 = load i32, i32* %4, align 4
  br i1 %8, label %10, label %12

; <label>:10:                                     ; preds = %2
  %11 = call i32 (i32, i32, ...) @fcntl(i32 %9, i32 1030, i32 3)
  store i32 %11, i32* %3, align 4
  br label %14

; <label>:12:                                     ; preds = %2
  %13 = call i32 @dup_safer(i32 %9)
  store i32 %13, i32* %3, align 4
  br label %14

; <label>:14:                                     ; preds = %12, %10
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define i32 @fd_safer(i32) #2 {
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
  %12 = call i32* @__errno_location() #13
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @close(i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = call i32* @__errno_location() #13
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %3, align 4
  store i32 %18, i32* %2, align 4
  br label %19

; <label>:19:                                     ; preds = %9, %1
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define %21* @rpl_fdopendir(i32) #2 {
  %2 = alloca %21*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %8, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @fstat(i32 %5, %8* %4) #7
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  store %21* null, %21** %2, align 8
  br label %19

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %8, %8* %4, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, 61440
  %13 = icmp eq i32 %12, 16384
  br i1 %13, label %16, label %14

; <label>:14:                                     ; preds = %9
  %15 = call i32* @__errno_location() #13
  store i32 20, i32* %15, align 4
  store %21* null, %21** %2, align 8
  br label %19

; <label>:16:                                     ; preds = %9
  %17 = load i32, i32* %3, align 4
  %18 = call %21* @fdopendir(i32 %17)
  store %21* %18, %21** %2, align 8
  br label %19

; <label>:19:                                     ; preds = %16, %14, %8
  %20 = load %21*, %21** %2, align 8
  ret %21* %20
}

declare %21* @fdopendir(i32) #1

attributes #0 = { noinline noreturn nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { argmemonly nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind readonly }
attributes #12 = { noreturn }
attributes #13 = { nounwind readnone }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}

!0 = !{!"clang version 6.0.0 (tags/RELEASE_600/final)"}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
