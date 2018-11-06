.class public Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;
.super Ljava/lang/Object;
.source "EAPMethod.java"


# instance fields
.field private final mAuthParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mEAPMethodID:I


# direct methods
.method public constructor <init>(ILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;->mEAPMethodID:I

    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    return-void
.end method

.method private static addAuthParam(Ljava/util/Map;Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;",
            ">;>;",
            "Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;->getAuthTypeID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;->getAuthTypeID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v2, v4, 0xff

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-le v2, v4, :cond_0

    new-instance v4, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid data length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v3, v4, 0xff

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v0, v4, 0xff

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :goto_0
    if-lez v0, :cond_1

    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;->parseAuthParam(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;->addAuthParam(Ljava/util/Map;Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;

    invoke-direct {v4, v3, v1}, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;-><init>(ILjava/util/Map;)V

    return-object v4
.end method

.method private static parseAuthParam(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v0, v2, 0xff

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v1, v2, 0xff

    sparse-switch v0, :sswitch_data_0

    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknow Auth Type ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_0
    invoke-static {p0, v1, v3}, Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;->parse(Ljava/nio/ByteBuffer;IZ)Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;

    move-result-object v2

    return-object v2

    :sswitch_1
    invoke-static {p0, v1}, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;->parse(Ljava/nio/ByteBuffer;I)Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;

    move-result-object v2

    return-object v2

    :sswitch_2
    invoke-static {p0, v1}, Lcom/android/server/wifi/hotspot2/anqp/eap/InnerAuthEAP;->parse(Ljava/nio/ByteBuffer;I)Lcom/android/server/wifi/hotspot2/anqp/eap/InnerAuthEAP;

    move-result-object v2

    return-object v2

    :sswitch_3
    invoke-static {p0, v1, v4}, Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;->parse(Ljava/nio/ByteBuffer;IZ)Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;

    move-result-object v2

    return-object v2

    :sswitch_4
    invoke-static {p0, v1, v3}, Lcom/android/server/wifi/hotspot2/anqp/eap/CredentialType;->parse(Ljava/nio/ByteBuffer;IZ)Lcom/android/server/wifi/hotspot2/anqp/eap/CredentialType;

    move-result-object v2

    return-object v2

    :sswitch_5
    invoke-static {p0, v1, v4}, Lcom/android/server/wifi/hotspot2/anqp/eap/CredentialType;->parse(Ljava/nio/ByteBuffer;IZ)Lcom/android/server/wifi/hotspot2/anqp/eap/CredentialType;

    move-result-object v2

    return-object v2

    :sswitch_6
    invoke-static {p0, v1}, Lcom/android/server/wifi/hotspot2/anqp/eap/VendorSpecificAuth;->parse(Ljava/nio/ByteBuffer;I)Lcom/android/server/wifi/hotspot2/anqp/eap/VendorSpecificAuth;

    move-result-object v2

    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0xdd -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    instance-of v2, p1, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;

    if-nez v2, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;

    iget v2, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;->mEAPMethodID:I

    iget v3, v0, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;->mEAPMethodID:I

    if-ne v2, v3, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    iget-object v2, v0, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public getAuthParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getEAPMethodID()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;->mEAPMethodID:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;->mEAPMethodID:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "EAPMethod{mEAPMethodID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;->mEAPMethodID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mAuthParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
