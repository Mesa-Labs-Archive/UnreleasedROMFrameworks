.class final enum Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
.super Ljava/lang/Enum;
.source "OpenSSLX509CertPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLX509CertPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Encoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

.field public static final enum PKCS7:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

.field public static final enum PKI_PATH:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;


# instance fields
.field private final apiName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->apiName:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    const-string/jumbo v1, "PKI_PATH"

    const-string/jumbo v2, "PkiPath"

    invoke-direct {v0, v1, v3, v2}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->PKI_PATH:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    new-instance v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    const-string/jumbo v1, "PKCS7"

    const-string/jumbo v2, "PKCS7"

    invoke-direct {v0, v1, v4, v2}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->PKCS7:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->PKI_PATH:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->PKCS7:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->$VALUES:[Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->apiName:Ljava/lang/String;

    return-void
.end method

.method static findByApiName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->values()[Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget-object v4, v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->apiName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    .locals 1

    const-class v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    return-object v0
.end method

.method public static values()[Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    .locals 1

    sget-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->$VALUES:[Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    return-object v0
.end method
