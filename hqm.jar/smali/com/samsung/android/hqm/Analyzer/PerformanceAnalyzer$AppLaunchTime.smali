.class Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;
.super Ljava/lang/Object;
.source "PerformanceAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppLaunchTime"
.end annotation


# instance fields
.field avg:I

.field cnt:I

.field firstTime:J

.field max:I

.field min:I

.field pkgName:Ljava/lang/String;

.field total:I


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->update(I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->pkgName:Ljava/lang/String;

    const v0, 0xf423f

    iput v0, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->min:I

    iput v1, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->max:I

    iput v1, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->avg:I

    iput v1, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->total:I

    iput v1, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->cnt:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->firstTime:J

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->pkgName:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->min:I

    iput p2, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->max:I

    iput p2, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->avg:I

    iput p2, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->total:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->cnt:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->firstTime:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private makeSimpleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    move-object v1, p1

    invoke-static {}, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;->-get0()[Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    const-string/jumbo v5, ""

    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private update(I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->min:I

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->min:I

    :cond_0
    iget v0, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->max:I

    if-le p1, v0, :cond_1

    iput p1, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->max:I

    :cond_1
    iget v0, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->total:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->total:I

    iget v0, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->cnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->cnt:I

    iget v0, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->total:I

    iget v1, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->cnt:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->avg:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v1, "name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " / min: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->min:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/ max: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->max:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/ avg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->avg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/ cnt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->cnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/ firstTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->firstTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toStringBigData_key()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v1, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->pkgName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->makeSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toStringBigData_val()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v1, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->pkgName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->makeSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->min:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->max:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->avg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->cnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->firstTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toStringUserBigData_val()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget v1, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->min:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->max:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->avg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->cnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->firstTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
