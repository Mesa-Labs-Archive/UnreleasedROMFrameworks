.class Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer$AppErrorInfo;
.super Ljava/lang/Object;
.source "AppCrashAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppErrorInfo"
.end annotation


# instance fields
.field errMsg:Ljava/lang/String;

.field pkgName:Ljava/lang/String;

.field stack:Ljava/lang/String;

.field type:I

.field ver:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer$AppErrorInfo;->type:I

    iput-object p2, p0, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer$AppErrorInfo;->pkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer$AppErrorInfo;->errMsg:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer$AppErrorInfo;->ver:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer$AppErrorInfo;->stack:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer$AppErrorInfo;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer$AppErrorInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getErrMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer$AppErrorInfo;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer$AppErrorInfo;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getStack()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer$AppErrorInfo;->stack:Ljava/lang/String;

    return-object v0
.end method

.method public getStrType()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer$AppErrorInfo;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "FC"

    return-object v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer$AppErrorInfo;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "ANR"

    return-object v0

    :cond_1
    const-string/jumbo v0, "UNKNOWN"

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer$AppErrorInfo;->type:I

    return v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer$AppErrorInfo;->ver:Ljava/lang/String;

    return-object v0
.end method
