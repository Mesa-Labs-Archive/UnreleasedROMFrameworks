.class public Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;
.super Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;
.source "NonEAPInnerAuth.java"


# static fields
.field public static final AUTH_TYPE_CHAP:I = 0x2

.field private static final AUTH_TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final AUTH_TYPE_MSCHAP:I = 0x3

.field public static final AUTH_TYPE_MSCHAPV2:I = 0x4

.field public static final AUTH_TYPE_PAP:I = 0x1

.field public static final AUTH_TYPE_UNKNOWN:I = 0x0

.field public static final EXPECTED_LENGTH_VALUE:I = 0x1


# instance fields
.field private final mAuthType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;->AUTH_TYPE_MAP:Ljava/util/Map;

    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;->AUTH_TYPE_MAP:Ljava/util/Map;

    const-string/jumbo v1, "PAP"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;->AUTH_TYPE_MAP:Ljava/util/Map;

    const-string/jumbo v1, "CHAP"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;->AUTH_TYPE_MAP:Ljava/util/Map;

    const-string/jumbo v1, "MS-CHAP"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;->AUTH_TYPE_MAP:Ljava/util/Map;

    const-string/jumbo v1, "MS-CHAP-V2"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;-><init>(I)V

    iput p1, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;->mAuthType:I

    return-void
.end method

.method public static getAuthTypeID(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;->AUTH_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;->AUTH_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static parse(Ljava/nio/ByteBuffer;I)Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v0, v1, 0xff

    new-instance v1, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;

    invoke-direct {v1, v0}, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;-><init>(I)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_0

    return v1

    :cond_0
    instance-of v3, p1, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;

    if-nez v3, :cond_1

    return v2

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;

    iget v3, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;->mAuthType:I

    iget v4, v0, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;->mAuthType:I

    if-ne v3, v4, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;->mAuthType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NonEAPInnerAuth{mAuthType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;->mAuthType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
