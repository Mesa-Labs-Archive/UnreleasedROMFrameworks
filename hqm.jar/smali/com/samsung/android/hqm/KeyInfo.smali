.class public Lcom/samsung/android/hqm/KeyInfo;
.super Ljava/lang/Object;
.source "KeyInfo.java"


# instance fields
.field private compID:Ljava/lang/String;

.field private desc1:Ljava/lang/String;

.field private desc2:Ljava/lang/String;

.field private desc3:Ljava/lang/String;

.field private desc4:Ljava/lang/String;

.field private feature:Ljava/lang/String;

.field private keyName:Ljava/lang/String;

.field private max:Ljava/lang/String;

.field private min:Ljava/lang/String;

.field private order:I

.field private status:Ljava/lang/String;

.field private time:J

.field private type1:I

.field private type2:I

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/hqm/KeyInfo;->time:J

    iput v2, p0, Lcom/samsung/android/hqm/KeyInfo;->type1:I

    iput v2, p0, Lcom/samsung/android/hqm/KeyInfo;->type2:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/hqm/KeyInfo;->compID:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/hqm/KeyInfo;->feature:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/hqm/KeyInfo;->keyName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/hqm/KeyInfo;->min:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/hqm/KeyInfo;->max:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/hqm/KeyInfo;->desc1:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/hqm/KeyInfo;->desc2:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/hqm/KeyInfo;->desc3:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/hqm/KeyInfo;->desc4:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/hqm/KeyInfo;->value:Ljava/lang/String;

    const-string/jumbo v0, "Empty"

    iput-object v0, p0, Lcom/samsung/android/hqm/KeyInfo;->status:Ljava/lang/String;

    const v0, 0xf423f

    iput v0, p0, Lcom/samsung/android/hqm/KeyInfo;->order:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getCompID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hqm/KeyInfo;->compID:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hqm/KeyInfo;->desc1:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hqm/KeyInfo;->desc2:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hqm/KeyInfo;->desc3:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hqm/KeyInfo;->desc4:Ljava/lang/String;

    return-object v0
.end method

.method public getFeature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hqm/KeyInfo;->feature:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hqm/KeyInfo;->keyName:Ljava/lang/String;

    return-object v0
.end method

.method public getMax()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hqm/KeyInfo;->max:Ljava/lang/String;

    return-object v0
.end method

.method public getMin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hqm/KeyInfo;->min:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/hqm/KeyInfo;->order:I

    return v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hqm/KeyInfo;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/hqm/KeyInfo;->time:J

    return-wide v0
.end method

.method public getType1()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/hqm/KeyInfo;->type1:I

    return v0
.end method

.method public getType2()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/hqm/KeyInfo;->type2:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hqm/KeyInfo;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setData(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/hqm/KeyInfo;->type1:I

    iput p2, p0, Lcom/samsung/android/hqm/KeyInfo;->type2:I

    iput-object p3, p0, Lcom/samsung/android/hqm/KeyInfo;->compID:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/hqm/KeyInfo;->feature:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/hqm/KeyInfo;->keyName:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/hqm/KeyInfo;->min:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/hqm/KeyInfo;->max:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/hqm/KeyInfo;->desc1:Ljava/lang/String;

    iput-object p9, p0, Lcom/samsung/android/hqm/KeyInfo;->desc2:Ljava/lang/String;

    iput-object p10, p0, Lcom/samsung/android/hqm/KeyInfo;->desc3:Ljava/lang/String;

    iput-object p11, p0, Lcom/samsung/android/hqm/KeyInfo;->desc4:Ljava/lang/String;

    iput p12, p0, Lcom/samsung/android/hqm/KeyInfo;->order:I

    return-void
.end method

.method public setTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/hqm/KeyInfo;->time:J

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hqm/KeyInfo;->value:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-wide v2, p0, Lcom/samsung/android/hqm/KeyInfo;->time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hqm/KeyInfo;->compID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hqm/KeyInfo;->feature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hqm/KeyInfo;->keyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hqm/KeyInfo;->min:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hqm/KeyInfo;->max:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hqm/KeyInfo;->desc1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hqm/KeyInfo;->desc2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hqm/KeyInfo;->desc3:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hqm/KeyInfo;->desc4:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hqm/KeyInfo;->desc4:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hqm/KeyInfo;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hqm/KeyInfo;->status:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/hqm/KeyInfo;->order:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/hqm/KeyInfo;->type2:I

    sparse-switch v0, :sswitch_data_0

    const-string/jumbo v0, "Check"

    iput-object v0, p0, Lcom/samsung/android/hqm/KeyInfo;->desc4:Ljava/lang/String;

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/hqm/KeyInfo;->updateType0()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/hqm/KeyInfo;->updateType0()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/hqm/KeyInfo;->updateType2()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/hqm/KeyInfo;->updateType10()V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/samsung/android/hqm/KeyInfo;->updateType99()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0xa -> :sswitch_3
        0x63 -> :sswitch_4
    .end sparse-switch
.end method

.method public updateType0()V
    .locals 5

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/hqm/KeyInfo;->min:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/hqm/KeyInfo;->max:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/hqm/KeyInfo;->value:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt v0, v3, :cond_0

    if-gt v0, v2, :cond_0

    const-string/jumbo v4, "Pass"

    iput-object v4, p0, Lcom/samsung/android/hqm/KeyInfo;->status:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v4, "Fail"

    iput-object v4, p0, Lcom/samsung/android/hqm/KeyInfo;->status:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v4, "Check"

    iput-object v4, p0, Lcom/samsung/android/hqm/KeyInfo;->desc4:Ljava/lang/String;

    goto :goto_0
.end method

.method public updateType1()V
    .locals 8

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/hqm/KeyInfo;->min:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hqm/KeyInfo;->max:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/hqm/KeyInfo;->value:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    const-string/jumbo v4, "Pass"

    iput-object v4, p0, Lcom/samsung/android/hqm/KeyInfo;->status:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v4, "Fail"

    iput-object v4, p0, Lcom/samsung/android/hqm/KeyInfo;->status:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v4, "Check"

    iput-object v4, p0, Lcom/samsung/android/hqm/KeyInfo;->desc4:Ljava/lang/String;

    goto :goto_0
.end method

.method public updateType10()V
    .locals 1

    const-string/jumbo v0, "Vendor"

    iput-object v0, p0, Lcom/samsung/android/hqm/KeyInfo;->status:Ljava/lang/String;

    return-void
.end method

.method public updateType2()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hqm/KeyInfo;->min:Ljava/lang/String;

    const-string/jumbo v2, ""

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "Fail"

    iput-object v1, p0, Lcom/samsung/android/hqm/KeyInfo;->status:Ljava/lang/String;

    const-string/jumbo v1, "Check"

    iput-object v1, p0, Lcom/samsung/android/hqm/KeyInfo;->desc4:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hqm/KeyInfo;->min:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/hqm/KeyInfo;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "Pass"

    iput-object v1, p0, Lcom/samsung/android/hqm/KeyInfo;->status:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Check"

    iput-object v1, p0, Lcom/samsung/android/hqm/KeyInfo;->desc4:Ljava/lang/String;

    goto :goto_0

    :cond_1
    :try_start_1
    const-string/jumbo v1, "Fail"

    iput-object v1, p0, Lcom/samsung/android/hqm/KeyInfo;->status:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public updateType99()V
    .locals 1

    const-string/jumbo v0, "N/A"

    iput-object v0, p0, Lcom/samsung/android/hqm/KeyInfo;->status:Ljava/lang/String;

    return-void
.end method
