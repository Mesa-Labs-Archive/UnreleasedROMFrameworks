.class Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;
.super Ljava/lang/Object;
.source "LogAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnalyzeItem"
.end annotation


# instance fields
.field componentId:Ljava/lang/String;

.field feature:Ljava/lang/String;

.field hitType:Ljava/lang/String;

.field maxRetry:I

.field resultChkCnt:I

.field resultFile:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;->componentId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;->feature:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;->hitType:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;->resultFile:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;->resultChkCnt:I

    iput p5, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;->maxRetry:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;->componentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;->feature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;->hitType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;->resultFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
