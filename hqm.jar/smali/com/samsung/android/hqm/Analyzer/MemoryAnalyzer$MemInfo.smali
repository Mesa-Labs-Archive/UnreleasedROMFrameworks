.class Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;
.super Ljava/lang/Object;
.source "MemoryAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MemInfo"
.end annotation


# instance fields
.field avail_avg:I

.field avail_max:I

.field avail_min:I

.field avail_total:I

.field count:I


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;)I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->getAavg()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;)I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->getAcnt()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;)I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->getAmax()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;)I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->getAmin()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->addMemAvailable(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->resetMemAvailable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->avail_avg:I

    const v0, 0x5f5e0ff

    iput v0, p0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->avail_min:I

    iput v1, p0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->avail_max:I

    iput v1, p0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->avail_total:I

    iput v1, p0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->count:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;-><init>()V

    return-void
.end method

.method private addMemAvailable(I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->count:I

    iget v0, p0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->avail_min:I

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->avail_min:I

    :cond_0
    iget v0, p0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->avail_max:I

    if-le p1, v0, :cond_1

    iput p1, p0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->avail_max:I

    :cond_1
    iget v0, p0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->avail_total:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->avail_total:I

    iget v0, p0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->avail_total:I

    iget v1, p0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->count:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->avail_avg:I

    return-void
.end method

.method private getAavg()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->avail_avg:I

    return v0
.end method

.method private getAcnt()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->count:I

    return v0
.end method

.method private getAmax()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->avail_max:I

    return v0
.end method

.method private getAmin()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->avail_min:I

    return v0
.end method

.method private resetMemAvailable()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->avail_avg:I

    const v0, 0x5f5e0ff

    iput v0, p0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->avail_min:I

    iput v1, p0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->avail_max:I

    iput v1, p0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->avail_total:I

    iput v1, p0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->count:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v1, "min : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->avail_min:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " / max : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->avail_max:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " / avg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->avail_avg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " / cnt : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
