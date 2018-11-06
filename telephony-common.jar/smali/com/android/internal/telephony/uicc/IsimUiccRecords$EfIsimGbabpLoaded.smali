.class Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;
.super Ljava/lang/Object;
.source "IsimUiccRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IsimUiccRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfIsimGbabpLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "EF_ISIM_GBABP"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 10

    const/4 v9, 0x0

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    :try_start_0
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v0, v6

    check-cast v0, [B

    move-object v1, v0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    aget-byte v5, v1, v6

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-array v7, v5, [B

    invoke-static {v6, v7}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-set11(Lcom/android/internal/telephony/uicc/IsimUiccRecords;[B)[B

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-get10(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v1, v3, v6, v7, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    add-int/lit8 v3, v5, 0x1

    add-int/lit8 v4, v3, 0x1

    aget-byte v5, v1, v3

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v7, Ljava/lang/String;

    const-string/jumbo v8, "UTF-8"

    invoke-direct {v7, v1, v4, v5, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v6, v7}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-set0(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Ljava/lang/String;)Ljava/lang/String;

    add-int v3, v4, v5

    add-int/lit8 v4, v3, 0x1

    aget-byte v5, v1, v3

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v7, Ljava/lang/String;

    const-string/jumbo v8, "UTF-8"

    invoke-direct {v7, v1, v4, v5, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v6, v7}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-set10(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Ljava/lang/String;)Ljava/lang/String;

    sget-boolean v6, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    const-string/jumbo v7, "mRand=**"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    const-string/jumbo v7, "mBtid=**"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    const-string/jumbo v7, "mKeyLifetime=**"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mRand="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-get10(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mBtid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-get0(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mKeyLifetime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-get9(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to parse GBABP contents: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-static {v6, v9}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-set11(Lcom/android/internal/telephony/uicc/IsimUiccRecords;[B)[B

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-static {v6, v9}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-set0(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Ljava/lang/String;)Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-static {v6, v9}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-set10(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0
.end method
