.class public Lcom/samsung/android/hqm/HWParam/HWParamResult;
.super Ljava/lang/Object;
.source "HWParamResult.java"


# instance fields
.field private compID:Ljava/lang/String;

.field private compManufacture:Ljava/lang/String;

.field private compVer:Ljava/lang/String;

.field private customDataSet:Ljava/lang/String;

.field private data:Ljava/util/Date;

.field private feature:Ljava/lang/String;

.field private hitType:Ljava/lang/String;

.field private pri_customDataSet:Ljava/lang/String;

.field private server:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/samsung/android/hqm/HWParam/HWParamConst;->NONE_SERVER:I

    iput v0, p0, Lcom/samsung/android/hqm/HWParam/HWParamResult;->server:I

    iput-object v1, p0, Lcom/samsung/android/hqm/HWParam/HWParamResult;->compID:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/hqm/HWParam/HWParamResult;->compVer:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/hqm/HWParam/HWParamResult;->compManufacture:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/hqm/HWParam/HWParamResult;->hitType:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/hqm/HWParam/HWParamResult;->feature:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/hqm/HWParam/HWParamResult;->customDataSet:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/hqm/HWParam/HWParamResult;->pri_customDataSet:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setBasicParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hqm/HWParam/HWParamResult;->compID:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/hqm/HWParam/HWParamResult;->compVer:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/hqm/HWParam/HWParamResult;->compManufacture:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/hqm/HWParam/HWParamResult;->hitType:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/hqm/HWParam/HWParamResult;->feature:Ljava/lang/String;

    return-void
.end method

.method public setLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hqm/HWParam/HWParamResult;->customDataSet:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/hqm/HWParam/HWParamResult;->pri_customDataSet:Ljava/lang/String;

    return-void
.end method

.method public setServer(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/hqm/HWParam/HWParamResult;->server:I

    return-void
.end method

.method public setTime(J)V
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/samsung/android/hqm/HWParam/HWParamResult;->data:Ljava/util/Date;

    return-void
.end method

.method public setTime(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hqm/HWParam/HWParamResult;->data:Ljava/util/Date;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    iget v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamResult;->server:I

    sget v3, Lcom/samsung/android/hqm/HWParam/HWParamConst;->NONE_SERVER:I

    if-ne v2, v3, :cond_8

    const-string/jumbo v2, "N "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamResult;->data:Ljava/util/Date;

    if-eqz v2, :cond_b

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamResult;->data:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamResult;->compID:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamResult;->compID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamResult;->compVer:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamResult;->compVer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamResult;->compManufacture:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamResult;->compManufacture:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamResult;->hitType:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamResult;->hitType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamResult;->feature:Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamResult;->feature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamResult;->customDataSet:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamResult;->customDataSet:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamResult;->pri_customDataSet:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamResult;->pri_customDataSet:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_8
    iget v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamResult;->server:I

    sget v3, Lcom/samsung/android/hqm/HWParam/HWParamConst;->DV_SERVER:I

    if-ne v2, v3, :cond_9

    const-string/jumbo v2, "D "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_9
    iget v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamResult;->server:I

    sget v3, Lcom/samsung/android/hqm/HWParam/HWParamConst;->CF_SERVER:I

    if-ne v2, v3, :cond_a

    const-string/jumbo v2, "C "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_a
    iget v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamResult;->server:I

    sget v3, Lcom/samsung/android/hqm/HWParam/HWParamConst;->FACTORY_SERVER:I

    if-ne v2, v3, :cond_0

    const-string/jumbo v2, "F "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v2, "---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method
