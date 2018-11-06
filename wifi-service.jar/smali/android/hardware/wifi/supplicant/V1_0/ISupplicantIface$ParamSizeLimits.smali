.class public final Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$ParamSizeLimits;
.super Ljava/lang/Object;
.source "ISupplicantIface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParamSizeLimits"
.end annotation


# static fields
.field public static final WPS_DEVICE_NAME_MAX_LEN:I = 0x20

.field public static final WPS_MANUFACTURER_MAX_LEN:I = 0x40

.field public static final WPS_MODEL_NAME_MAX_LEN:I = 0x20

.field public static final WPS_MODEL_NUMBER_MAX_LEN:I = 0x20

.field public static final WPS_SERIAL_NUMBER_MAX_LEN:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x20

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    and-int/lit8 v2, p0, 0x20

    if-ne v2, v4, :cond_0

    const-string/jumbo v2, "WPS_DEVICE_NAME_MAX_LEN"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x20

    :cond_0
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_1

    const-string/jumbo v2, "WPS_MANUFACTURER_MAX_LEN"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x40

    :cond_1
    and-int/lit8 v2, p0, 0x20

    if-ne v2, v4, :cond_2

    const-string/jumbo v2, "WPS_MODEL_NAME_MAX_LEN"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x20

    :cond_2
    and-int/lit8 v2, p0, 0x20

    if-ne v2, v4, :cond_3

    const-string/jumbo v2, "WPS_MODEL_NUMBER_MAX_LEN"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x20

    :cond_3
    and-int/lit8 v2, p0, 0x20

    if-ne v2, v4, :cond_4

    const-string/jumbo v2, "WPS_SERIAL_NUMBER_MAX_LEN"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x20

    :cond_4
    if-eq p0, v0, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v0

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string/jumbo v2, " | "

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    const/16 v1, 0x20

    if-ne p0, v1, :cond_0

    const-string/jumbo v0, "WPS_DEVICE_NAME_MAX_LEN"

    return-object v0

    :cond_0
    const/16 v0, 0x40

    if-ne p0, v0, :cond_1

    const-string/jumbo v0, "WPS_MANUFACTURER_MAX_LEN"

    return-object v0

    :cond_1
    if-ne p0, v1, :cond_2

    const-string/jumbo v0, "WPS_MODEL_NAME_MAX_LEN"

    return-object v0

    :cond_2
    if-ne p0, v1, :cond_3

    const-string/jumbo v0, "WPS_MODEL_NUMBER_MAX_LEN"

    return-object v0

    :cond_3
    if-ne p0, v1, :cond_4

    const-string/jumbo v0, "WPS_SERIAL_NUMBER_MAX_LEN"

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
