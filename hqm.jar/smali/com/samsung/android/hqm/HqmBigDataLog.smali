.class public Lcom/samsung/android/hqm/HqmBigDataLog;
.super Ljava/lang/Object;
.source "HqmBigDataLog.java"


# static fields
.field private static final LOG_DATA_CONTINUE:I = 0x1

.field private static final LOG_DATA_END:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private componentId:Ljava/lang/String;

.field private feature:Ljava/lang/String;

.field private hitType:Ljava/lang/String;

.field private mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

.field private sb:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/samsung/android/hqm/HqmBigDataLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hqm/HqmBigDataLog;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "HQM"

    iput-object v0, p0, Lcom/samsung/android/hqm/HqmBigDataLog;->componentId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hqm/HqmBigDataLog;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    iput-object p1, p0, Lcom/samsung/android/hqm/HqmBigDataLog;->feature:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/hqm/HqmBigDataLog;->hitType:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hqm/HqmBigDataLog;->sb:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/samsung/android/hqm/HqmBigDataLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hqm/HqmBigDataLog;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "HQM"

    iput-object v0, p0, Lcom/samsung/android/hqm/HqmBigDataLog;->componentId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hqm/HqmBigDataLog;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    iput-object p1, p0, Lcom/samsung/android/hqm/HqmBigDataLog;->componentId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/hqm/HqmBigDataLog;->feature:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/hqm/HqmBigDataLog;->hitType:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hqm/HqmBigDataLog;->sb:Ljava/lang/StringBuilder;

    return-void
.end method

.method private makeJSonLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public addBigDataLog(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hqm/HqmBigDataLog;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public addBigDataLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hqm/HqmBigDataLog;->sb:Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/hqm/HqmBigDataLog;->makeJSonLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public sendBigData()V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v2, ""

    const-string/jumbo v0, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hqm/HqmBigDataLog;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/hqm/HqmBigDataLog;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "log is empty"

    invoke-static {v3, v4}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    if-ne v3, v4, :cond_3

    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/hqm/HqmBigDataLog;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    if-nez v3, :cond_1

    invoke-static {}, Lcom/samsung/android/hqm/BigDataModule;->getInstance()Lcom/samsung/android/hqm/BigDataModule;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/hqm/HqmBigDataLog;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/hqm/HqmBigDataLog;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/hqm/HqmBigDataLog;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendBigData "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hqm/HqmBigDataLog;->feature:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hqm/HqmBigDataLog;->componentId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/hqm/HqmBigDataLog;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    iget-object v4, p0, Lcom/samsung/android/hqm/HqmBigDataLog;->componentId:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/hqm/HqmBigDataLog;->feature:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v0}, Lcom/samsung/android/hqm/BigDataModule;->SendHQMInfoParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    return-void

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method
