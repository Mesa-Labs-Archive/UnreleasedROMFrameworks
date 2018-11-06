.class public Lcom/android/org/conscrypt/OpenSSLX509CertPath;
.super Ljava/security/cert/CertPath;
.source "OpenSSLX509CertPath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-org-conscrypt-OpenSSLX509CertPath$EncodingSwitchesValues:[I = null

.field private static final ALL_ENCODINGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ENCODING:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

.field private static final PKCS7_MARKER:[B

.field private static final PUSHBACK_SIZE:I = 0x40

.field private static final serialVersionUID:J = -0x2d1724b280d2aac9L


# instance fields
.field private final mCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic -getcom-android-org-conscrypt-OpenSSLX509CertPath$EncodingSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->-com-android-org-conscrypt-OpenSSLX509CertPath$EncodingSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->-com-android-org-conscrypt-OpenSSLX509CertPath$EncodingSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->values()[Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->PKCS7:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->PKI_PATH:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->-com-android-org-conscrypt-OpenSSLX509CertPath$EncodingSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->PKCS7_MARKER:[B

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->PKI_PATH:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    invoke-static {v1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->-get0(Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->PKCS7:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    invoke-static {v1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->-get0(Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->ALL_ENCODINGS:Ljava/util/List;

    sget-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->PKI_PATH:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->DEFAULT_ENCODING:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    return-void

    nop

    :array_0
    .array-data 1
        0x2dt
        0x2dt
        0x2dt
        0x2dt
        0x2dt
        0x42t
        0x45t
        0x47t
        0x49t
        0x4et
        0x20t
        0x50t
        0x4bt
        0x43t
        0x53t
        0x37t
    .end array-data
.end method

.method protected constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "X.509"

    invoke-direct {p0, v0}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->mCertificates:Ljava/util/List;

    return-void
.end method

.method public static fromEncoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "inStream == null"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->DEFAULT_ENCODING:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    invoke-static {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->fromEncoding(Ljava/io/InputStream;Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0
.end method

.method private static fromEncoding(Ljava/io/InputStream;Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/security/cert/CertPath;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->-getcom-android-org-conscrypt-OpenSSLX509CertPath$EncodingSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    const-string/jumbo v1, "Unknown encoding"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->fromPkiPathEncoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->fromPkcs7Encoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static fromEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v1, Ljava/security/cert/CertificateException;

    const-string/jumbo v2, "inStream == null"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->findByApiName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->fromEncoding(Ljava/io/InputStream;Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/security/cert/CertPath;

    move-result-object v1

    return-object v1
.end method

.method private static fromPkcs7Encoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/16 v8, 0x40

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    new-instance v7, Lcom/android/org/conscrypt/OpenSSLX509CertPath;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception v1

    new-instance v7, Ljava/security/cert/CertificateException;

    const-string/jumbo v8, "Problem reading input stream"

    invoke-direct {v7, v8, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v8}, Ljava/io/InputStream;->mark(I)V

    :cond_2
    new-instance v6, Ljava/io/PushbackInputStream;

    invoke-direct {v6, p0, v8}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    :try_start_1
    sget-object v7, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->PKCS7_MARKER:[B

    array-length v7, v7

    new-array v0, v7, [B

    invoke-virtual {v6, v0}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v4

    if-gez v4, :cond_4

    new-instance v7, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string/jumbo v8, "inStream is empty"

    invoke-direct {v7, v8}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v2

    if-eqz v5, :cond_3

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :goto_0
    new-instance v7, Ljava/security/cert/CertificateException;

    invoke-direct {v7, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    :cond_4
    const/4 v7, 0x0

    :try_start_3
    invoke-virtual {v6, v0, v7, v4}, Ljava/io/PushbackInputStream;->unread([BII)V

    sget-object v7, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->PKCS7_MARKER:[B

    array-length v7, v7

    if-ne v4, v7, :cond_5

    sget-object v7, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->PKCS7_MARKER:[B

    invoke-static {v7, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v7, Lcom/android/org/conscrypt/OpenSSLX509CertPath;

    invoke-static {v6}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V

    return-object v7

    :cond_5
    new-instance v7, Lcom/android/org/conscrypt/OpenSSLX509CertPath;

    invoke-static {v6}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object v7

    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method private static fromPkiPathEncoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    const/4 v7, 0x1

    invoke-direct {v0, p0, v7}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v7, 0x40

    invoke-virtual {p0, v7}, Ljava/io/InputStream;->mark(I)V

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/org/conscrypt/NativeCrypto;->ASN1_seq_unpack_X509_bio(J)[J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    if-nez v1, :cond_2

    new-instance v7, Lcom/android/org/conscrypt/OpenSSLX509CertPath;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V

    return-object v7

    :catch_0
    move-exception v3

    if-eqz v6, :cond_1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    :try_start_2
    new-instance v7, Ljava/security/cert/CertificateException;

    invoke-direct {v7, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v7

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    throw v7

    :catch_1
    move-exception v5

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    array-length v7, v1

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    array-length v7, v1

    add-int/lit8 v4, v7, -0x1

    :goto_1
    if-ltz v4, :cond_4

    aget-wide v8, v1, v4

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_3

    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_3
    new-instance v7, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    aget-wide v8, v1, v4

    invoke-direct {v7, v8, v9}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v7, Lcom/android/org/conscrypt/OpenSSLX509CertPath;

    invoke-direct {v7, v2}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V

    return-object v7
.end method

.method private getEncoded(Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->mCertificates:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v2, v5, [Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    array-length v5, v2

    new-array v1, v5, [J

    const/4 v3, 0x0

    array-length v5, v2

    add-int/lit8 v4, v5, -0x1

    :goto_0
    if-ltz v4, :cond_1

    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->mCertificates:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    instance-of v5, v0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    if-eqz v5, :cond_0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    aput-object v0, v2, v4

    :goto_1
    aget-object v5, v2, v4

    invoke-virtual {v5}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v6

    aput-wide v6, v1, v4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromX509Der([B)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v5

    aput-object v5, v2, v4

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->-getcom-android-org-conscrypt-OpenSSLX509CertPath$EncodingSwitchesValues()[I

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    new-instance v5, Ljava/security/cert/CertificateEncodingException;

    const-string/jumbo v6, "Unknown encoding"

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_0
    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->ASN1_seq_pack_X509([J)[B

    move-result-object v5

    return-object v5

    :pswitch_1
    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_PKCS7([J)[B

    move-result-object v5

    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getEncodingsIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->ALL_ENCODINGS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->mCertificates:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    sget-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->DEFAULT_ENCODING:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->getEncoded(Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncoded(Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->findByApiName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->getEncoded(Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)[B

    move-result-object v1

    return-object v1
.end method

.method public getEncodings()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->getEncodingsIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
