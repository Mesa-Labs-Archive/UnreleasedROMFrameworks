.class public Lcom/android/internal/telephony/CallDetails;
.super Ljava/lang/Object;
.source "CallDetails.java"


# static fields
.field public static final CALL_DOMAIN_AUTOMATIC:I = 0x3

.field public static final CALL_DOMAIN_CS:I = 0x1

.field public static final CALL_DOMAIN_NOT_SET:I = 0x4

.field public static final CALL_DOMAIN_PS:I = 0x2

.field public static final CALL_DOMAIN_UNKNOWN:I = 0x0

.field public static final CALL_TYPE_UNKNOWN:I = 0xa

.field public static final CALL_TYPE_VOICE:I = 0x0

.field public static final CALL_TYPE_VS_RX:I = 0x2

.field public static final CALL_TYPE_VS_TX:I = 0x1

.field public static final CALL_TYPE_VT:I = 0x3


# instance fields
.field public call_domain:I

.field public call_isMpty:Z

.field public call_type:I

.field private mExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(II[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    iput p1, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    iput p2, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    invoke-static {p3}, Lcom/android/internal/telephony/CallDetails;->getMapFromExtras([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(II[Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    iput p1, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    iput p2, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    invoke-static {p3, p4}, Lcom/android/internal/telephony/CallDetails;->getMapFromExtras([Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Call$CallType;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->CS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_0

    iput v4, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    iput v3, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->CS_CALL_VIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_1

    iput v4, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_2

    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    iput v3, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HDVIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_3

    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string/jumbo v1, "resolution"

    const-string/jumbo v2, "hd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QCIFVIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_4

    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string/jumbo v1, "resolution"

    const-string/jumbo v2, "qcif"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QVGAVIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_5

    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string/jumbo v1, "resolution"

    const-string/jumbo v2, "qvga"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VIDEO_SHARE_TX:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_6

    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    iput v4, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VIDEO_SHARE_RX:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_7

    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HDVIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_8

    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string/jumbo v1, "resolution"

    const-string/jumbo v2, "hd_land"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HD720VIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_9

    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string/jumbo v1, "resolution"

    const-string/jumbo v2, "hd720"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_9
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CIFVIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_a

    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string/jumbo v1, "resolution"

    const-string/jumbo v2, "cif"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_a
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CIFVIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_b

    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string/jumbo v1, "resolution"

    const-string/jumbo v2, "cif_land"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_b
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QVGAVIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_c

    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string/jumbo v1, "resolution"

    const-string/jumbo v2, "qvga_land"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_c
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HD720VIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_d

    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string/jumbo v1, "resolution"

    const-string/jumbo v2, "hd720_land"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_d
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    iput v3, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    goto/16 :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CallDetails;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    iget v0, p1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    iget v0, p1, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    iget-object v0, p1, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    :goto_0
    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    goto :goto_0
.end method

.method public static callTypeToVideoState(IZ)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    or-int/lit8 v0, v0, 0x4

    :goto_1
    return v0

    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    and-int/lit8 v0, v0, -0x5

    goto :goto_1
.end method

.method public static getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/CallDetails;->getExtrasFromMap(Ljava/util/Map;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExtrasFromMap(Ljava/util/Map;Z)[Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)[",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v3, 0x0

    if-nez p0, :cond_0

    return-object v5

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    if-eqz v3, :cond_2

    const/4 v4, 0x0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz p1, :cond_1

    const-string/jumbo v0, "+"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v7, "+"

    invoke-static {v5, v7}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    goto :goto_1

    :cond_2
    return-object v3
.end method

.method public static getMapFromExtras([Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/CallDetails;->getMapFromExtras([Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getMapFromExtras([Ljava/lang/String;Z)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    array-length v7, p0

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_4

    aget-object v2, p0, v5

    const/16 v8, 0x3d

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_1

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_3

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    if-eqz p1, :cond_2

    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const-string/jumbo v4, ""

    goto :goto_2

    :cond_4
    return-object v1
.end method

.method public static videoStateToCallType(I)I
    .locals 3

    invoke-static {p0}, Lcom/android/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    move-result v1

    const/4 v0, 0x0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0
.end method


# virtual methods
.method public getBundleFromExtras()Landroid/os/Bundle;
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "+"

    invoke-static {v4, v5}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getCsvFromExtras()Ljava/lang/String;
    .locals 7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, ""

    return-object v4

    :cond_0
    const-string/jumbo v0, "+"

    iget-object v4, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v6, "+"

    invoke-static {v4, v6}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getExtraStrings()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CallDetails;->getExtraStrings(Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtraStrings(Z)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/CallDetails;->getExtrasFromMap(Ljava/util/Map;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtraValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isChanged(Lcom/android/internal/telephony/CallDetails;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-ne p1, p0, :cond_1

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    iget v2, p1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    iget v2, p1, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    if-eq v1, v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    return v1

    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    iget-boolean v2, p1, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public setExtraValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setExtras([Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/android/internal/telephony/CallDetails;->getMapFromExtras([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    return-void
.end method

.method public setExtrasFromBundle(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/CallDetails;->setExtraValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setExtrasFromCsv(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/CallDetails;->getMapFromExtras([Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    return-void
.end method

.method public setExtrasFromMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    return-void
.end method

.method public setIsMpty(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    return-void
.end method

.method public toCallType()Lcom/android/internal/telephony/Call$CallType;
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string/jumbo v3, "participants"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string/jumbo v3, "resolution"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    if-ne v2, v5, :cond_e

    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-nez v2, :cond_1

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CONFERENCE:Lcom/android/internal/telephony/Call$CallType;

    return-object v2

    :cond_0
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    return-object v2

    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-ne v2, v6, :cond_b

    if-eqz v0, :cond_2

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CONFERENCE:Lcom/android/internal/telephony/Call$CallType;

    return-object v2

    :cond_2
    const-string/jumbo v2, "qcif"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QCIFVIDEO:Lcom/android/internal/telephony/Call$CallType;

    return-object v2

    :cond_3
    const-string/jumbo v2, "qvga"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QVGAVIDEO:Lcom/android/internal/telephony/Call$CallType;

    return-object v2

    :cond_4
    const-string/jumbo v2, "hd_land"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HDVIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    return-object v2

    :cond_5
    const-string/jumbo v2, "hd720"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HD720VIDEO:Lcom/android/internal/telephony/Call$CallType;

    return-object v2

    :cond_6
    const-string/jumbo v2, "cif"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CIFVIDEO:Lcom/android/internal/telephony/Call$CallType;

    return-object v2

    :cond_7
    const-string/jumbo v2, "cif_land"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CIFVIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    return-object v2

    :cond_8
    const-string/jumbo v2, "qvga_land"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QVGAVIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    return-object v2

    :cond_9
    const-string/jumbo v2, "hd720_land"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HD720VIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    return-object v2

    :cond_a
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HDVIDEO:Lcom/android/internal/telephony/Call$CallType;

    return-object v2

    :cond_b
    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-ne v2, v4, :cond_c

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VIDEO_SHARE_TX:Lcom/android/internal/telephony/Call$CallType;

    return-object v2

    :cond_c
    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-ne v2, v5, :cond_d

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VIDEO_SHARE_RX:Lcom/android/internal/telephony/Call$CallType;

    return-object v2

    :cond_d
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->NO_CALL:Lcom/android/internal/telephony/Call$CallType;

    return-object v2

    :cond_e
    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    if-ne v2, v4, :cond_11

    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-nez v2, :cond_f

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->CS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    return-object v2

    :cond_f
    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-ne v2, v6, :cond_10

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->CS_CALL_VIDEO:Lcom/android/internal/telephony/Call$CallType;

    return-object v2

    :cond_10
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->NO_CALL:Lcom/android/internal/telephony/Call$CallType;

    return-object v2

    :cond_11
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->NO_CALL:Lcom/android/internal/telephony/Call$CallType;

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " domain "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " isMpty "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " extras : <MASKED>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " domain "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " isMpty "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallDetails;->getCsvFromExtras()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
