.class public final Landroid/hardware/radio/V1_0/CellIdentity;
.super Ljava/lang/Object;
.source "CellIdentity.java"


# instance fields
.field public final cellIdentityCdma:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/CellIdentityCdma;",
            ">;"
        }
    .end annotation
.end field

.field public final cellIdentityGsm:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/CellIdentityGsm;",
            ">;"
        }
    .end annotation
.end field

.field public final cellIdentityLte:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/CellIdentityLte;",
            ">;"
        }
    .end annotation
.end field

.field public final cellIdentityTdscdma:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/CellIdentityTdscdma;",
            ">;"
        }
    .end annotation
.end field

.field public final cellIdentityWcdma:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/CellIdentityWcdma;",
            ">;"
        }
    .end annotation
.end field

.field public cellInfoType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityGsm:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityWcdma:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityCdma:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityLte:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityTdscdma:Ljava/util/ArrayList;

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
            "Landroid/hardware/radio/V1_0/CellIdentity;",
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

    mul-int/lit8 v1, v12, 0x58

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

    new-instance v11, Landroid/hardware/radio/V1_0/CellIdentity;

    invoke-direct {v11}, Landroid/hardware/radio/V1_0/CellIdentity;-><init>()V

    mul-int/lit8 v1, v9, 0x58

    int-to-long v2, v1

    invoke-virtual {v11, p0, v13, v2, v3}, Landroid/hardware/radio/V1_0/CellIdentity;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
            "Landroid/hardware/radio/V1_0/CellIdentity;",
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

    mul-int/lit8 v4, v2, 0x58

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CellIdentity;

    mul-int/lit8 v5, v1, 0x58

    int-to-long v6, v5

    invoke-virtual {v4, v3, v6, v7}, Landroid/hardware/radio/V1_0/CellIdentity;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

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

    const-class v2, Landroid/hardware/radio/V1_0/CellIdentity;

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/hardware/radio/V1_0/CellIdentity;

    iget v1, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellInfoType:I

    iget v2, v0, Landroid/hardware/radio/V1_0/CellIdentity;->cellInfoType:I

    if-eq v1, v2, :cond_3

    return v3

    :cond_3
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityGsm:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityGsm:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    :cond_4
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityWcdma:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityWcdma:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    :cond_5
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityCdma:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityCdma:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    :cond_6
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityLte:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityLte:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    :cond_7
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityTdscdma:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityTdscdma:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v3

    :cond_8
    return v4
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellInfoType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityGsm:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityWcdma:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityCdma:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityLte:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityTdscdma:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 21

    const-wide/16 v4, 0x0

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/hardware/radio/V1_0/CellIdentity;->cellInfoType:I

    const-wide/16 v4, 0x8

    add-long v4, v4, p3

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v16

    mul-int/lit8 v3, v16, 0x30

    int-to-long v4, v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    const-wide/16 v8, 0x8

    add-long v8, v8, p3

    const-wide/16 v18, 0x0

    add-long v8, v8, v18

    const/4 v10, 0x1

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityGsm:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v2, v0, :cond_0

    new-instance v12, Landroid/hardware/radio/V1_0/CellIdentityGsm;

    invoke-direct {v12}, Landroid/hardware/radio/V1_0/CellIdentityGsm;-><init>()V

    mul-int/lit8 v3, v2, 0x30

    int-to-long v4, v3

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1, v4, v5}, Landroid/hardware/radio/V1_0/CellIdentityGsm;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityGsm:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x18

    add-long v4, v4, p3

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v16

    mul-int/lit8 v3, v16, 0x30

    int-to-long v4, v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    const-wide/16 v8, 0x18

    add-long v8, v8, p3

    const-wide/16 v18, 0x0

    add-long v8, v8, v18

    const/4 v10, 0x1

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityWcdma:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v2, v0, :cond_1

    new-instance v15, Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    invoke-direct {v15}, Landroid/hardware/radio/V1_0/CellIdentityWcdma;-><init>()V

    mul-int/lit8 v3, v2, 0x30

    int-to-long v4, v3

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1, v4, v5}, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityWcdma:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x28

    add-long v4, v4, p3

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v16

    mul-int/lit8 v3, v16, 0x14

    int-to-long v4, v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    const-wide/16 v8, 0x28

    add-long v8, v8, p3

    const-wide/16 v18, 0x0

    add-long v8, v8, v18

    const/4 v10, 0x1

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityCdma:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v2, v0, :cond_2

    new-instance v11, Landroid/hardware/radio/V1_0/CellIdentityCdma;

    invoke-direct {v11}, Landroid/hardware/radio/V1_0/CellIdentityCdma;-><init>()V

    mul-int/lit8 v3, v2, 0x14

    int-to-long v4, v3

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1, v4, v5}, Landroid/hardware/radio/V1_0/CellIdentityCdma;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityCdma:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const-wide/16 v4, 0x38

    add-long v4, v4, p3

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v16

    mul-int/lit8 v3, v16, 0x30

    int-to-long v4, v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    const-wide/16 v8, 0x38

    add-long v8, v8, p3

    const-wide/16 v18, 0x0

    add-long v8, v8, v18

    const/4 v10, 0x1

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityLte:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v2, v0, :cond_3

    new-instance v13, Landroid/hardware/radio/V1_0/CellIdentityLte;

    invoke-direct {v13}, Landroid/hardware/radio/V1_0/CellIdentityLte;-><init>()V

    mul-int/lit8 v3, v2, 0x30

    int-to-long v4, v3

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1, v4, v5}, Landroid/hardware/radio/V1_0/CellIdentityLte;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityLte:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    const-wide/16 v4, 0x48

    add-long v4, v4, p3

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v16

    mul-int/lit8 v3, v16, 0x30

    int-to-long v4, v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    const-wide/16 v8, 0x48

    add-long v8, v8, p3

    const-wide/16 v18, 0x0

    add-long v8, v8, v18

    const/4 v10, 0x1

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityTdscdma:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v2, v0, :cond_4

    new-instance v14, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;

    invoke-direct {v14}, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;-><init>()V

    mul-int/lit8 v3, v2, 0x30

    int-to-long v4, v3

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1, v4, v5}, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityTdscdma:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 4

    const-wide/16 v2, 0x58

    invoke-virtual {p1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/hardware/radio/V1_0/CellIdentity;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ".cellInfoType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellInfoType:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/CellInfoType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .cellIdentityGsm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityGsm:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .cellIdentityWcdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityWcdma:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .cellIdentityCdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityCdma:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .cellIdentityLte = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityLte:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .cellIdentityTdscdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityTdscdma:Ljava/util/ArrayList;

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

    iget v3, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellInfoType:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    iget-object v3, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityGsm:Ljava/util/ArrayList;

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

    mul-int/lit8 v3, v1, 0x30

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityGsm:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/CellIdentityGsm;

    mul-int/lit8 v4, v0, 0x30

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/hardware/radio/V1_0/CellIdentityGsm;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x8

    add-long/2addr v4, p2

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    iget-object v3, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityWcdma:Ljava/util/ArrayList;

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

    mul-int/lit8 v3, v1, 0x30

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityWcdma:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    mul-int/lit8 v4, v0, 0x30

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x18

    add-long/2addr v4, p2

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    iget-object v3, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityCdma:Ljava/util/ArrayList;

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

    mul-int/lit8 v3, v1, 0x14

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_2

    iget-object v3, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityCdma:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/CellIdentityCdma;

    mul-int/lit8 v4, v0, 0x14

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/hardware/radio/V1_0/CellIdentityCdma;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const-wide/16 v4, 0x28

    add-long/2addr v4, p2

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    iget-object v3, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityLte:Ljava/util/ArrayList;

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

    mul-int/lit8 v3, v1, 0x30

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_3

    iget-object v3, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityLte:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/CellIdentityLte;

    mul-int/lit8 v4, v0, 0x30

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/hardware/radio/V1_0/CellIdentityLte;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    const-wide/16 v4, 0x38

    add-long/2addr v4, p2

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    iget-object v3, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityTdscdma:Ljava/util/ArrayList;

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

    mul-int/lit8 v3, v1, 0x30

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_4

    iget-object v3, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityTdscdma:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;

    mul-int/lit8 v4, v0, 0x30

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    const-wide/16 v4, 0x48

    add-long/2addr v4, p2

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 4

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x58

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/hardware/radio/V1_0/CellIdentity;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
