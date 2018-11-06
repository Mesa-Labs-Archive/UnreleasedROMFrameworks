.class public final Landroid/hardware/wifi/V1_0/NanEnableRequest;
.super Ljava/lang/Object;
.source "NanEnableRequest.java"


# instance fields
.field public final configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

.field public final debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

.field public hopCountMax:B

.field public final operateInBand:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->operateInBand:[Z

    new-instance v0, Landroid/hardware/wifi/V1_0/NanConfigRequest;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/NanConfigRequest;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

    new-instance v0, Landroid/hardware/wifi/V1_0/NanDebugConfig;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/NanDebugConfig;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/wifi/V1_0/NanEnableRequest;",
            ">;"
        }
    .end annotation

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v2, 0x10

    invoke-virtual {p0, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v12

    mul-int/lit8 v1, v12, 0x50

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v13

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v12, :cond_0

    new-instance v11, Landroid/hardware/wifi/V1_0/NanEnableRequest;

    invoke-direct {v11}, Landroid/hardware/wifi/V1_0/NanEnableRequest;-><init>()V

    mul-int/lit8 v1, v9, 0x50

    int-to-long v2, v1

    invoke-virtual {v11, p0, v13, v2, v3}, Landroid/hardware/wifi/V1_0/NanEnableRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    return-object v10
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/wifi/V1_0/NanEnableRequest;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/16 v4, 0x8

    invoke-virtual {v0, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0xc

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x50

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/wifi/V1_0/NanEnableRequest;

    mul-int/lit8 v5, v1, 0x50

    int-to-long v6, v5

    invoke-virtual {v4, v3, v6, v7}, Landroid/hardware/wifi/V1_0/NanEnableRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_0

    return v4

    :cond_0
    if-nez p1, :cond_1

    return v3

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/hardware/wifi/V1_0/NanEnableRequest;

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/hardware/wifi/V1_0/NanEnableRequest;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->operateInBand:[Z

    iget-object v2, v0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->operateInBand:[Z

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :cond_3
    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->hopCountMax:B

    iget-byte v2, v0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->hopCountMax:B

    if-eq v1, v2, :cond_4

    return v3

    :cond_4
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

    iget-object v2, v0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    :cond_5
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    iget-object v2, v0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    :cond_6
    return v4
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->operateInBand:[Z

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->hopCountMax:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 7

    const-wide/16 v4, 0x0

    add-long v0, p3, v4

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->operateInBand:[Z

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v4

    aput-boolean v4, v3, v2

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x2

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v3

    iput-byte v3, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->hopCountMax:B

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

    const-wide/16 v4, 0x4

    add-long/2addr v4, p3

    invoke-virtual {v3, p1, p2, v4, v5}, Landroid/hardware/wifi/V1_0/NanConfigRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    const-wide/16 v4, 0x24

    add-long/2addr v4, p3

    invoke-virtual {v3, p1, p2, v4, v5}, Landroid/hardware/wifi/V1_0/NanDebugConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 4

    const-wide/16 v2, 0x50

    invoke-virtual {p1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/hardware/wifi/V1_0/NanEnableRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ".operateInBand = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->operateInBand:[Z

    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .hopCountMax = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->hopCountMax:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .configParams = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .debugConfigs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 6

    const-wide/16 v4, 0x0

    add-long v0, p2, v4

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->operateInBand:[Z

    aget-boolean v3, v3, v2

    invoke-virtual {p1, v0, v1, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x2

    add-long/2addr v4, p2

    iget-byte v3, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->hopCountMax:B

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt8(JB)V

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

    const-wide/16 v4, 0x4

    add-long/2addr v4, p2

    invoke-virtual {v3, p1, v4, v5}, Landroid/hardware/wifi/V1_0/NanConfigRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    const-wide/16 v4, 0x24

    add-long/2addr v4, p2

    invoke-virtual {v3, p1, v4, v5}, Landroid/hardware/wifi/V1_0/NanDebugConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 4

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/hardware/wifi/V1_0/NanEnableRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
