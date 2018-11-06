.class public final Landroid/hardware/radio/V1_0/CdmaInformationRecord;
.super Ljava/lang/Object;
.source "CdmaInformationRecord.java"


# instance fields
.field public final audioCtrl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/CdmaT53AudioControlInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final clir:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/CdmaT53ClirInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final display:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/CdmaDisplayInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final lineCtrl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field public name:I

.field public final number:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final redir:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final signal:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->display:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->number:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->signal:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->redir:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->lineCtrl:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->clir:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->audioCtrl:Ljava/util/ArrayList;

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
            "Landroid/hardware/radio/V1_0/CdmaInformationRecord;",
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

    mul-int/lit8 v1, v12, 0x78

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

    new-instance v11, Landroid/hardware/radio/V1_0/CdmaInformationRecord;

    invoke-direct {v11}, Landroid/hardware/radio/V1_0/CdmaInformationRecord;-><init>()V

    mul-int/lit8 v1, v9, 0x78

    int-to-long v2, v1

    invoke-virtual {v11, p0, v13, v2, v3}, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
            "Landroid/hardware/radio/V1_0/CdmaInformationRecord;",
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

    mul-int/lit8 v4, v2, 0x78

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CdmaInformationRecord;

    mul-int/lit8 v5, v1, 0x78

    int-to-long v6, v5

    invoke-virtual {v4, v3, v6, v7}, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

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

    const-class v2, Landroid/hardware/radio/V1_0/CdmaInformationRecord;

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;

    iget v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->name:I

    iget v2, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->name:I

    if-eq v1, v2, :cond_3

    return v3

    :cond_3
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->display:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->display:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    :cond_4
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->number:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->number:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    :cond_5
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->signal:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->signal:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    :cond_6
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->redir:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->redir:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    :cond_7
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->lineCtrl:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->lineCtrl:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v3

    :cond_8
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->clir:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->clir:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    :cond_9
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->audioCtrl:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->audioCtrl:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    :cond_a
    return v4
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->name:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->display:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->number:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->signal:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->redir:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->lineCtrl:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->clir:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->audioCtrl:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 25

    const-wide/16 v6, 0x0

    add-long v6, v6, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->name:I

    const-wide/16 v6, 0x8

    add-long v6, v6, p3

    const-wide/16 v8, 0x8

    add-long/2addr v6, v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v20

    mul-int/lit8 v5, v20, 0x10

    int-to-long v6, v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v8

    const-wide/16 v10, 0x8

    add-long v10, v10, p3

    const-wide/16 v22, 0x0

    add-long v10, v10, v22

    const/4 v12, 0x1

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->display:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    :goto_0
    move/from16 v0, v20

    if-ge v4, v0, :cond_0

    new-instance v13, Landroid/hardware/radio/V1_0/CdmaDisplayInfoRecord;

    invoke-direct {v13}, Landroid/hardware/radio/V1_0/CdmaDisplayInfoRecord;-><init>()V

    mul-int/lit8 v5, v4, 0x10

    int-to-long v6, v5

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1, v6, v7}, Landroid/hardware/radio/V1_0/CdmaDisplayInfoRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->display:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x18

    add-long v6, v6, p3

    const-wide/16 v8, 0x8

    add-long/2addr v6, v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v20

    mul-int/lit8 v5, v20, 0x18

    int-to-long v6, v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v8

    const-wide/16 v10, 0x18

    add-long v10, v10, p3

    const-wide/16 v22, 0x0

    add-long v10, v10, v22

    const/4 v12, 0x1

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->number:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    :goto_1
    move/from16 v0, v20

    if-ge v4, v0, :cond_1

    new-instance v15, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;

    invoke-direct {v15}, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;-><init>()V

    mul-int/lit8 v5, v4, 0x18

    int-to-long v6, v5

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1, v6, v7}, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->number:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v6, 0x28

    add-long v6, v6, p3

    const-wide/16 v8, 0x8

    add-long/2addr v6, v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v20

    mul-int/lit8 v5, v20, 0x4

    int-to-long v6, v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v8

    const-wide/16 v10, 0x28

    add-long v10, v10, p3

    const-wide/16 v22, 0x0

    add-long v10, v10, v22

    const/4 v12, 0x1

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->signal:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    :goto_2
    move/from16 v0, v20

    if-ge v4, v0, :cond_2

    new-instance v17, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    invoke-direct/range {v17 .. v17}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;-><init>()V

    mul-int/lit8 v5, v4, 0x4

    int-to-long v6, v5

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->signal:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    const-wide/16 v6, 0x38

    add-long v6, v6, p3

    const-wide/16 v8, 0x8

    add-long/2addr v6, v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v20

    mul-int/lit8 v5, v20, 0x20

    int-to-long v6, v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v8

    const-wide/16 v10, 0x38

    add-long v10, v10, p3

    const-wide/16 v22, 0x0

    add-long v10, v10, v22

    const/4 v12, 0x1

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->redir:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    :goto_3
    move/from16 v0, v20

    if-ge v4, v0, :cond_3

    new-instance v16, Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;

    invoke-direct/range {v16 .. v16}, Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;-><init>()V

    mul-int/lit8 v5, v4, 0x20

    int-to-long v6, v5

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->redir:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    const-wide/16 v6, 0x48

    add-long v6, v6, p3

    const-wide/16 v8, 0x8

    add-long/2addr v6, v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v20

    mul-int/lit8 v5, v20, 0x4

    int-to-long v6, v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v8

    const-wide/16 v10, 0x48

    add-long v10, v10, p3

    const-wide/16 v22, 0x0

    add-long v10, v10, v22

    const/4 v12, 0x1

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->lineCtrl:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    :goto_4
    move/from16 v0, v20

    if-ge v4, v0, :cond_4

    new-instance v14, Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;

    invoke-direct {v14}, Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;-><init>()V

    mul-int/lit8 v5, v4, 0x4

    int-to-long v6, v5

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1, v6, v7}, Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->lineCtrl:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    const-wide/16 v6, 0x58

    add-long v6, v6, p3

    const-wide/16 v8, 0x8

    add-long/2addr v6, v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v20

    mul-int/lit8 v5, v20, 0x1

    int-to-long v6, v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v8

    const-wide/16 v10, 0x58

    add-long v10, v10, p3

    const-wide/16 v22, 0x0

    add-long v10, v10, v22

    const/4 v12, 0x1

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->clir:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    :goto_5
    move/from16 v0, v20

    if-ge v4, v0, :cond_5

    new-instance v19, Landroid/hardware/radio/V1_0/CdmaT53ClirInfoRecord;

    invoke-direct/range {v19 .. v19}, Landroid/hardware/radio/V1_0/CdmaT53ClirInfoRecord;-><init>()V

    mul-int/lit8 v5, v4, 0x1

    int-to-long v6, v5

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/hardware/radio/V1_0/CdmaT53ClirInfoRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->clir:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    const-wide/16 v6, 0x68

    add-long v6, v6, p3

    const-wide/16 v8, 0x8

    add-long/2addr v6, v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v20

    mul-int/lit8 v5, v20, 0x2

    int-to-long v6, v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v8

    const-wide/16 v10, 0x68

    add-long v10, v10, p3

    const-wide/16 v22, 0x0

    add-long v10, v10, v22

    const/4 v12, 0x1

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->audioCtrl:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    :goto_6
    move/from16 v0, v20

    if-ge v4, v0, :cond_6

    new-instance v18, Landroid/hardware/radio/V1_0/CdmaT53AudioControlInfoRecord;

    invoke-direct/range {v18 .. v18}, Landroid/hardware/radio/V1_0/CdmaT53AudioControlInfoRecord;-><init>()V

    mul-int/lit8 v5, v4, 0x2

    int-to-long v6, v5

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/hardware/radio/V1_0/CdmaT53AudioControlInfoRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->audioCtrl:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_6
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 4

    const-wide/16 v2, 0x78

    invoke-virtual {p1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ".name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->name:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/CdmaInfoRecName;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .display = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->display:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->number:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .signal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->signal:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .redir = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->redir:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .lineCtrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->lineCtrl:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .clir = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->clir:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .audioCtrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->audioCtrl:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 8

    const-wide/16 v4, 0x0

    add-long/2addr v4, p2

    iget v3, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->name:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->display:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v4, 0x8

    add-long/2addr v4, p2

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x8

    add-long/2addr v4, p2

    const-wide/16 v6, 0xc

    add-long/2addr v4, v6

    const/4 v3, 0x0

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->display:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/CdmaDisplayInfoRecord;

    mul-int/lit8 v4, v0, 0x10

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/hardware/radio/V1_0/CdmaDisplayInfoRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x8

    add-long/2addr v4, p2

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->number:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v4, 0x18

    add-long/2addr v4, p2

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x18

    add-long/2addr v4, p2

    const-wide/16 v6, 0xc

    add-long/2addr v4, v6

    const/4 v3, 0x0

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x18

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->number:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;

    mul-int/lit8 v4, v0, 0x18

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x18

    add-long/2addr v4, p2

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->signal:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v4, 0x28

    add-long/2addr v4, p2

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x28

    add-long/2addr v4, p2

    const-wide/16 v6, 0xc

    add-long/2addr v4, v6

    const/4 v3, 0x0

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x4

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_2

    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->signal:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    mul-int/lit8 v4, v0, 0x4

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const-wide/16 v4, 0x28

    add-long/2addr v4, p2

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->redir:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v4, 0x38

    add-long/2addr v4, p2

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x38

    add-long/2addr v4, p2

    const-wide/16 v6, 0xc

    add-long/2addr v4, v6

    const/4 v3, 0x0

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x20

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_3

    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->redir:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;

    mul-int/lit8 v4, v0, 0x20

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    const-wide/16 v4, 0x38

    add-long/2addr v4, p2

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->lineCtrl:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v4, 0x48

    add-long/2addr v4, p2

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x48

    add-long/2addr v4, p2

    const-wide/16 v6, 0xc

    add-long/2addr v4, v6

    const/4 v3, 0x0

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x4

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_4

    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->lineCtrl:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;

    mul-int/lit8 v4, v0, 0x4

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    const-wide/16 v4, 0x48

    add-long/2addr v4, p2

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->clir:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v4, 0x58

    add-long/2addr v4, p2

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x58

    add-long/2addr v4, p2

    const-wide/16 v6, 0xc

    add-long/2addr v4, v6

    const/4 v3, 0x0

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x1

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_5

    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->clir:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/CdmaT53ClirInfoRecord;

    mul-int/lit8 v4, v0, 0x1

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/hardware/radio/V1_0/CdmaT53ClirInfoRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    const-wide/16 v4, 0x58

    add-long/2addr v4, p2

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->audioCtrl:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v4, 0x68

    add-long/2addr v4, p2

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x68

    add-long/2addr v4, p2

    const-wide/16 v6, 0xc

    add-long/2addr v4, v6

    const/4 v3, 0x0

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x2

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v1, :cond_6

    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->audioCtrl:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/CdmaT53AudioControlInfoRecord;

    mul-int/lit8 v4, v0, 0x2

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/hardware/radio/V1_0/CdmaT53AudioControlInfoRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    const-wide/16 v4, 0x68

    add-long/2addr v4, p2

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 4

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
