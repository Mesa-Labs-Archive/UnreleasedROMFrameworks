.class final Lcom/android/org/conscrypt/OpenSSLEngineImpl;
.super Ljavax/net/ssl/SSLEngine;
.source "OpenSSLEngineImpl.java"

# interfaces
.implements Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
.implements Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;
.implements Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-org-conscrypt-OpenSSLEngineImpl$EngineStateSwitchesValues:[I

.field private static final CLOSED_NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult;

.field private static final EMPTY:Ljava/nio/ByteBuffer;

.field private static final EMPTY_ADDR:J

.field private static final NEED_UNWRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

.field private static final NEED_UNWRAP_OK:Ljavax/net/ssl/SSLEngineResult;

.field private static final NEED_WRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

.field private static final NEED_WRAP_OK:Ljavax/net/ssl/SSLEngineResult;


# instance fields
.field private channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

.field private engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

.field private handshakeFinished:Z

.field private handshakeListener:Lcom/android/org/conscrypt/HandshakeListener;

.field private handshakeSession:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

.field private maxSealOverhead:I

.field private networkBio:J

.field private final singleDstBuffer:[Ljava/nio/ByteBuffer;

.field private final singleSrcBuffer:[Ljava/nio/ByteBuffer;

.field private sniHostname:Ljava/lang/String;

.field private sslNativePointer:J

.field private final sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

.field private sslSession:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

.field private final stateLock:Ljava/lang/Object;


# direct methods
.method private static synthetic -getcom-android-org-conscrypt-OpenSSLEngineImpl$EngineStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->-com-android-org-conscrypt-OpenSSLEngineImpl$EngineStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->-com-android-org-conscrypt-OpenSSLEngineImpl$EngineStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->values()[Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_INBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_OUTBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->HANDSHAKE_COMPLETED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->HANDSHAKE_STARTED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->MODE_SET:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->NEW:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->READY:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->READY_HANDSHAKE_CUT_THROUGH:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->-com-android-org-conscrypt-OpenSSLEngineImpl$EngineStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1

    :catch_8
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v2, v3, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->NEED_UNWRAP_OK:Ljavax/net/ssl/SSLEngineResult;

    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v2, v3, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->NEED_UNWRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v2, v3, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->NEED_WRAP_OK:Ljavax/net/ssl/SSLEngineResult;

    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v2, v3, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->NEED_WRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v2, v3, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->CLOSED_NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult;

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->EMPTY:Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->EMPTY:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->getDirectBufferAddress(Ljava/nio/Buffer;)J

    move-result-wide v0

    sput-wide v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->EMPTY_ADDR:J

    return-void
.end method

.method constructor <init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljavax/net/ssl/SSLEngine;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->NEW:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    new-array v0, v1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    new-array v0, v1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLEngine;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->NEW:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    new-array v0, v1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    new-array v0, v1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    iput-object p3, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    return-void
.end method

.method private beginHandshakeInternal()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->-getcom-android-org-conscrypt-OpenSSLEngineImpl$EngineStateSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Client/server mode must be set before handshake"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Handshake has already been started"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Engine has already been closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_3
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->HANDSHAKE_STARTED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    const/4 v9, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v10

    iget-wide v2, v10, Lcom/android/org/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_new(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_BIO_new(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->networkBio:J

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getSniHostname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getPeerPort()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionToReuse(JLjava/lang/String;I)Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getSniHostname()Ljava/lang/String;

    move-result-object v6

    move-object v4, p0

    move-object v5, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/org/conscrypt/SSLParametersImpl;->setSSLParameters(JLcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-virtual {v1, v2, v3}, Lcom/android/org/conscrypt/SSLParametersImpl;->setCertificateValidation(J)V

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/org/conscrypt/SSLParametersImpl;->setTlsChannelId(JLcom/android/org/conscrypt/OpenSSLKey;)V

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getUseClientMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_connect_state(J)V

    :goto_0
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_max_seal_overhead(J)I

    move-result v1

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->maxSealOverhead:I

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, 0x0

    if-eqz v9, :cond_0

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->shutdownAndFreeSslNative()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_accept_state(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v1, "unexpected CCS"

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "ssl_unexpected_ccs: host=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getSniHostname()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/conscrypt/Platform;->logEvent(Ljava/lang/String;)V

    :cond_2
    new-instance v1, Ljavax/net/ssl/SSLException;

    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    if-eqz v9, :cond_3

    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->shutdownAndFreeSslNative()V

    :cond_3
    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private static calcDstsLength([Ljava/nio/ByteBuffer;II)I
    .locals 5

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    aget-object v1, p0, v2

    const-string/jumbo v3, "one of the dst"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v3}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v3

    :cond_0
    if-lt v2, p1, :cond_1

    add-int v3, p1, p2

    if-ge v2, v3, :cond_1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    add-int/2addr v0, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static calcSrcsLength([Ljava/nio/ByteBuffer;II)J
    .locals 7

    const-wide/16 v2, 0x0

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p0, v0

    if-nez v1, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "srcs["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] is null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method private static checkIndex(IIILjava/lang/String;)V
    .locals 3

    or-int v0, p1, p2

    if-ltz v0, :cond_0

    add-int v0, p1, p2

    if-le v0, p0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (expected: offset <= offset + length <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private static varargs checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object p0
.end method

.method private closeAll()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->closeOutbound()V

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->closeInbound()V

    return-void
.end method

.method private convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;
    .locals 1

    instance-of v0, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeFinished:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/android/org/conscrypt/SSLUtils;->toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {p1}, Lcom/android/org/conscrypt/SSLUtils;->toSSLException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    return-object v0
.end method

.method private finishHandshake()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeFinished:Z

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeListener:Lcom/android/org/conscrypt/HandshakeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeListener:Lcom/android/org/conscrypt/HandshakeListener;

    invoke-interface {v0}, Lcom/android/org/conscrypt/HandshakeListener;->onHandshakeFinished()V

    :cond_0
    return-void
.end method

.method private free()V
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_free(J)V

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->networkBio:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    iput-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    iput-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->networkBio:J

    return-void
.end method

.method private getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;
    .locals 2

    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->-getcom-android-org-conscrypt-OpenSSLEngineImpl$EngineStateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    return-object v0

    :pswitch_0
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getHandshakeStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 1

    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeFinished:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->pendingStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_0
.end method

.method private getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 3

    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeFinished:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->-getcom-android-org-conscrypt-OpenSSLEngineImpl$EngineStateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected engine state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->pendingOutboundEncryptedBytes()I

    move-result v0

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->pendingStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    return-object v0

    :pswitch_1
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0

    :pswitch_2
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const-wide/16 v12, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-static {v4, v5, p0}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_SSL_do_handshake(JLcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result v0

    if-gtz v0, :cond_1

    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-static {v4, v5, v0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_error(JI)I

    move-result v11

    packed-switch v11, :pswitch_data_0

    const-string/jumbo v1, "SSL_do_handshake"

    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->shutdownWithError(Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v10

    :try_start_1
    invoke-static {v10}, Lcom/android/org/conscrypt/SSLUtils;->toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    if-nez v4, :cond_0

    cmp-long v4, v2, v12

    if-eqz v4, :cond_0

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_free(J)V

    :cond_0
    throw v1

    :pswitch_0
    :try_start_2
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->pendingOutboundEncryptedBytes()I

    move-result v1

    invoke-static {v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->pendingStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    return-object v1

    :cond_1
    :try_start_3
    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get1_session(J)J

    move-result-wide v2

    cmp-long v1, v2, v12

    if-nez v1, :cond_2

    const-string/jumbo v1, "Failed to obtain session after handshake completed"

    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->shutdownWithError(Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1

    :cond_2
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getSniHostname()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getPeerPort()I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual/range {v1 .. v9}, Lcom/android/org/conscrypt/SSLParametersImpl;->setupSession(JJLcom/android/org/conscrypt/AbstractOpenSSLSession;Ljava/lang/String;IZ)Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->HANDSHAKE_STARTED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-ne v1, v4, :cond_4

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->READY_HANDSHAKE_CUT_THROUGH:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    :goto_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->finishHandshake()V

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    if-nez v4, :cond_3

    cmp-long v4, v2, v12

    if-eqz v4, :cond_3

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_free(J)V

    :cond_3
    return-object v1

    :cond_4
    :try_start_4
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->READY:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isHandshakeStarted()Z
    .locals 2

    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->-getcom-android-org-conscrypt-OpenSSLEngineImpl$EngineStateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeFinished:Z

    if-nez v0, :cond_0

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p1
.end method

.method private newResult(IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p3, v2, :cond_0

    :goto_0
    invoke-direct {p0, p3}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p3

    goto :goto_0
.end method

.method private pendingInboundCleartextBytes()I
    .locals 2

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_pending_readable_bytes(J)I

    move-result v0

    return v0
.end method

.method private pendingOutboundEncryptedBytes()I
    .locals 2

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->networkBio:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_pending_written_bytes_in_BIO(J)I

    move-result v0

    return v0
.end method

.method private static pendingStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 1

    if-lez p0, :cond_0

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_0
.end method

.method private readEncryptedData(Ljava/nio/ByteBuffer;I)I
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/16 v18, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    move/from16 v0, p2

    if-lt v2, v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v20

    sub-int v2, v20, v21

    move/from16 v0, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/android/org/conscrypt/NativeCrypto;->getDirectBufferAddress(Ljava/nio/Buffer;)J

    move-result-wide v2

    move/from16 v0, v21

    int-to-long v4, v0

    add-long v6, v2, v4

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->networkBio:J

    move-object/from16 v9, p0

    invoke-static/range {v2 .. v9}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_SSL_read_BIO_direct(JJJILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result v18

    if-lez v18, :cond_2

    add-int v2, v21, v18

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return v18

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->networkBio:J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    add-int v15, v2, v21

    move/from16 v16, p2

    move-object/from16 v17, p0

    invoke-static/range {v10 .. v17}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_SSL_read_BIO_heap(JJ[BIILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result v18

    if-lez v18, :cond_2

    add-int v2, v21, v18

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return v18

    :cond_1
    new-array v14, v8, [B

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->networkBio:J

    const/4 v15, 0x0

    move/from16 v16, p2

    move-object/from16 v17, p0

    invoke-static/range {v10 .. v17}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_SSL_read_BIO_heap(JJ[BIILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result v18

    if-lez v18, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v14, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v18

    :cond_2
    return v18

    :catch_0
    move-exception v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2
.end method

.method private readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->pendingOutboundEncryptedBytes()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-ge v0, v2, :cond_1

    new-instance v4, Ljavax/net/ssl/SSLEngineResult;

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p4, v6, :cond_0

    :goto_0
    invoke-direct {p0, p4}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    invoke-direct {v4, v5, v6, p2, p3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object v4

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p4

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->readEncryptedData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    if-gtz v3, :cond_2

    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_clear_error()V

    :goto_1
    new-instance v4, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v5

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p4, v6, :cond_3

    :goto_2
    invoke-direct {p0, p4}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    invoke-direct {v4, v5, v6, p2, p3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object v4

    :cond_2
    add-int/2addr p3, v3

    sub-int/2addr v2, v3

    goto :goto_1

    :cond_3
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    return-object v4

    :catch_0
    move-exception v1

    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v4

    throw v4
.end method

.method private readPlaintextData(Ljava/nio/ByteBuffer;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v15

    sub-int v2, v15, v16

    const/16 v3, 0x4145

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/android/org/conscrypt/NativeCrypto;->getDirectBufferAddress(Ljava/nio/Buffer;)J

    move-result-wide v2

    move/from16 v0, v16

    int-to-long v8, v0

    add-long v4, v2, v8

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    move-object/from16 v7, p0

    invoke-static/range {v2 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_SSL_read_direct(JJILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result v17

    if-lez v17, :cond_0

    add-int v2, v16, v17

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    :goto_0
    return v17

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    add-int v11, v2, v16

    move v12, v6

    move-object/from16 v13, p0

    invoke-static/range {v8 .. v13}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_SSL_read_heap(J[BIILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result v17

    if-lez v17, :cond_0

    add-int v2, v16, v17

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    :cond_2
    :try_start_1
    new-array v10, v6, [B

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    const/4 v11, 0x0

    move v12, v6

    move-object/from16 v13, p0

    invoke-static/range {v8 .. v13}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_SSL_read_heap(J[BIILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result v17

    if-lez v17, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v10, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private resetSingleDstBuffer()V
    .locals 3

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-void
.end method

.method private resetSingleSrcBuffer()V
    .locals 3

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-void
.end method

.method private shutdown()V
    .locals 4

    :try_start_0
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-static {v2, v3, p0}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_SSL_shutdown(JLcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private shutdownAndFreeSslNative()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->free()V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->free()V

    throw v0
.end method

.method private shutdownWithError(Ljava/lang/String;)Ljavax/net/ssl/SSLException;
    .locals 2

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->shutdown()V

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljavax/net/ssl/SSLException;

    invoke-direct {v0, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    invoke-direct {v0, p1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private singleDstBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private sslReadErrorResult(III)Ljavax/net/ssl/SSLEngineResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeFinished:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->pendingOutboundEncryptedBytes()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v2, p2, p3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object v0

    :cond_0
    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_error_string(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->shutdownWithError(Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0
.end method

.method private toHeapBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object p1

    :cond_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int v3, v2, p2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v3
.end method

.method private writeEncryptedData(Ljava/nio/ByteBuffer;I)I
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/android/org/conscrypt/NativeCrypto;->getDirectBufferAddress(Ljava/nio/Buffer;)J

    move-result-wide v2

    move/from16 v0, v19

    int-to-long v4, v0

    add-long v6, v2, v4

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->networkBio:J

    move/from16 v8, p2

    move-object/from16 v9, p0

    invoke-static/range {v2 .. v9}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_SSL_write_BIO_direct(JJJILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result v18

    :goto_0
    if-ltz v18, :cond_0

    add-int v2, v19, v18

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    return v18

    :cond_1
    invoke-direct/range {p0 .. p2}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->toHeapBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v17

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->networkBio:J

    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int v13, v2, v3

    move/from16 v14, p2

    move-object/from16 v15, p0

    invoke-static/range {v8 .. v15}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_SSL_write_BIO_heap(JJ[BIILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    goto :goto_0

    :catch_0
    move-exception v16

    new-instance v2, Ljavax/net/ssl/SSLException;

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private writePlaintextData(Ljava/nio/ByteBuffer;I)I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->getDirectBufferAddress(Ljava/nio/Buffer;)J

    move-result-wide v0

    int-to-long v4, v12

    add-long v2, v0, v4

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    move/from16 v4, p2

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_SSL_write_direct(JJILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result v13

    :goto_0
    if-lez v13, :cond_0

    add-int v0, v12, v13

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    return v13

    :cond_1
    invoke-direct/range {p0 .. p2}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->toHeapBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v11

    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int v7, v0, v1

    move/from16 v8, p2

    move-object v9, p0

    invoke-static/range {v4 .. v9}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_SSL_write_heap(J[BIILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    goto :goto_0

    :catch_0
    move-exception v10

    invoke-direct {p0, v10}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public beginHandshake()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->beginHandshakeInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public chooseClientAlias(Ljavax/net/ssl/X509KeyManager;[Ljavax/security/auth/x500/X500Principal;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    instance-of v1, p1, Ljavax/net/ssl/X509ExtendedKeyManager;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v0, p3, p2, p0}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, p3, p2, v1}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public chooseClientPSKIdentity(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1, p2, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->chooseClientKeyIdentity(Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseServerAlias(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    instance-of v1, p1, Ljavax/net/ssl/X509ExtendedKeyManager;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v0, p2, v2, p0}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-interface {p1, p2, v2, v2}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public chooseServerPSKIdentityHint(Lcom/android/org/conscrypt/PSKKeyManager;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->chooseServerKeyIdentityHint(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clientCertificateRequested([B[[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    move-object v2, p1

    move-object v3, p2

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/org/conscrypt/SSLParametersImpl;->chooseClientCertificate([B[[BJLcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;)V

    return-void
.end method

.method public clientPSKKeyRequested(Ljava/lang/String;[B[B)I
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clientPSKKeyRequested(Ljava/lang/String;[B[BLcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;)I

    move-result v0

    return v0
.end method

.method public closeInbound()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_OUTBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_2
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_INBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public closeOutbound()V
    .locals 3

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_OUTBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_1

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->MODE_SET:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->NEW:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-eq v0, v2, :cond_2

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->shutdownAndFreeSslNative()V

    :cond_2
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_INBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-ne v0, v2, :cond_3

    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v1

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->shutdown()V

    return-void

    :cond_3
    :try_start_2
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_OUTBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->free()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljavax/net/ssl/SSLEngine;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljavax/net/ssl/SSLEngine;->finalize()V

    throw v0
.end method

.method getAlpnSelectedProtocol()[B
    .locals 2

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get0_alpn_selected(J)[B

    move-result-object v0

    return-object v0
.end method

.method getChannelId()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Not allowed in client mode"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->isHandshakeStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Channel ID is only available after handshake completes"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_tls_channel_id(J)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method public getDelegatedTask()Ljava/lang/Runnable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnableSessionCreation()Z
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandshakeSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeSession:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    return-object v0
.end method

.method public getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 2

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getNeedClientAuth()Z
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getPSKKey(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 1

    invoke-interface {p1, p2, p3, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->getKey(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 2

    invoke-super {p0}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/Platform;->getSSLParameters(Ljavax/net/ssl/SSLParameters;Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/OpenSSLEngineImpl;)V

    return-object v0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeSession:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeSession:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->wrapSSLSession(Lcom/android/org/conscrypt/AbstractOpenSSLSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/org/conscrypt/SSLNullSession;->getNullSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->wrapSSLSession(Lcom/android/org/conscrypt/AbstractOpenSSLSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public getSniHostname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sniHostname:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sniHostname:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseClientMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public getWantClientAuth()Z
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public isInboundDone()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_INBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    monitor-exit v2

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_shutdown(J)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public isOutboundDone()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_OUTBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    monitor-exit v2

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_shutdown(J)I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method maxSealOverhead()I
    .locals 1

    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->maxSealOverhead:I

    return v0
.end method

.method public onSSLStateChange(II)V
    .locals 4

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    monitor-exit v1

    return-void

    :sswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->HANDSHAKE_STARTED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->READY_HANDSHAKE_CUT_THROUGH:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Completed handshake while in mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->HANDSHAKE_COMPLETED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->HANDSHAKE_STARTED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[BLcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;)I

    move-result v0

    return v0
.end method

.method setAlpnProtocols([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setAlpnProtocols([Ljava/lang/String;)V

    return-void
.end method

.method setChannelIdEnabled(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Not allowed in client mode"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->isHandshakeStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Could not enable/disable Channel ID after the initial handshake has begun."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iput-boolean p1, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void
.end method

.method setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getUseClientMode()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Not allowed in server mode"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->isHandshakeStarted()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Could not change Channel ID private key after the initial handshake has begun."

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_1
    if-nez p1, :cond_2

    :try_start_1
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return-void

    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    :try_start_3
    instance-of v3, p1, Ljava/security/interfaces/ECKey;

    if-eqz v3, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/ECKey;

    move-object v3, v0

    invoke-interface {v3}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    :cond_3
    if-nez v2, :cond_4

    const-string/jumbo v3, "prime256v1"

    invoke-static {v3}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getECParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    :cond_4
    invoke-static {p1, v2}, Lcom/android/org/conscrypt/OpenSSLKey;->fromECPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit v4

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setEnableSessionCreation(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnableSessionCreation(Z)V

    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnabledCipherSuites([Ljava/lang/String;)V

    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnabledProtocols([Ljava/lang/String;)V

    return-void
.end method

.method setHandshakeListener(Lcom/android/org/conscrypt/HandshakeListener;)V
    .locals 3

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->isHandshakeStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Handshake listener must be set before starting the handshake."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeListener:Lcom/android/org/conscrypt/HandshakeListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setNeedClientAuth(Z)V

    return-void
.end method

.method public setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .locals 1

    invoke-super {p0, p1}, Ljavax/net/ssl/SSLEngine;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-static {p1, v0, p0}, Lcom/android/org/conscrypt/Platform;->setSSLParameters(Ljavax/net/ssl/SSLParameters;Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/OpenSSLEngineImpl;)V

    return-void
.end method

.method public setSniHostname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sniHostname:Ljava/lang/String;

    return-void
.end method

.method public setUseClientMode(Z)V
    .locals 4

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->MODE_SET:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->NEW:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can not change mode after handshake: engineState == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->MODE_SET:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    return-void
.end method

.method setUseSessionTickets(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseSessionTickets(Z)V

    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setWantClientAuth(Z)V

    return-void
.end method

.method public unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->singleDstBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->resetSingleSrcBuffer()V

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->resetSingleDstBuffer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->resetSingleSrcBuffer()V

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->resetSingleDstBuffer()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->resetSingleSrcBuffer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->resetSingleSrcBuffer()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    iget-object v7, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->unwrap([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->resetSingleSrcBuffer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v7

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->resetSingleSrcBuffer()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method unwrap([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const-string/jumbo v4, "srcs"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "dsts"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p4

    invoke-static {v0, v4, v5}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    array-length v4, v0

    const-string/jumbo v5, "srcs"

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v4, v0, v1, v5}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->checkIndex(IIILjava/lang/String;)V

    move-object/from16 v0, p4

    array-length v4, v0

    const-string/jumbo v5, "dsts"

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-static {v4, v0, v1, v5}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->checkIndex(IIILjava/lang/String;)V

    invoke-static/range {p4 .. p6}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->calcDstsLength([Ljava/nio/ByteBuffer;II)I

    move-result v14

    add-int v16, p5, p6

    add-int v28, p2, p3

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->calcSrcsLength([Ljava/nio/ByteBuffer;II)J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    move-object/from16 v31, v0

    monitor-enter v31

    :try_start_0
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->-getcom-android-org-conscrypt-OpenSSLEngineImpl$EngineStateSwitchesValues()[I

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    invoke-virtual {v5}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :goto_0
    :pswitch_0
    sget-object v18, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeFinished:Z

    if-nez v4, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v18

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-object/from16 v0, v18

    if-ne v0, v4, :cond_0

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->NEED_WRAP_OK:Ljavax/net/ssl/SSLEngineResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v31

    return-object v4

    :pswitch_1
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->beginHandshakeInternal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v31

    throw v4

    :pswitch_2
    :try_start_2
    new-instance v4, Ljavax/net/ssl/SSLEngineResult;

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v31

    return-object v4

    :pswitch_3
    :try_start_3
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Client/server mode must be set before calling unwrap"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v5, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-ne v4, v5, :cond_1

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->NEED_WRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v31

    return-object v4

    :cond_1
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->pendingInboundCleartextBytes()I

    move-result v4

    if-gtz v4, :cond_2

    const/16 v21, 0x1

    :goto_1
    const/16 v20, 0x0

    const-wide/16 v4, 0x0

    cmp-long v4, v26, v4

    if-lez v4, :cond_a

    if-eqz v21, :cond_a

    const-wide/16 v4, 0x5

    cmp-long v4, v26, v4

    if-gez v4, :cond_3

    new-instance v4, Ljavax/net/ssl/SSLEngineResult;

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v31

    return-object v4

    :cond_2
    const/16 v21, 0x0

    goto :goto_1

    :cond_3
    :try_start_5
    invoke-static/range {p1 .. p2}, Lcom/android/org/conscrypt/SSLUtils;->getEncryptedPacketLength([Ljava/nio/ByteBuffer;I)I

    move-result v22

    if-gez v22, :cond_4

    new-instance v4, Ljavax/net/ssl/SSLException;

    const-string/jumbo v5, "Unable to parse TLS packet header"

    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    move/from16 v0, v22

    int-to-long v4, v0

    cmp-long v4, v26, v4

    if-gez v4, :cond_5

    new-instance v4, Ljavax/net/ssl/SSLEngineResult;

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v31

    return-object v4

    :cond_5
    move/from16 v20, v22

    :cond_6
    const/4 v10, 0x0

    if-lez v20, :cond_8

    move/from16 v0, p2

    move/from16 v1, v28

    if-ge v0, v1, :cond_8

    :cond_7
    :try_start_6
    aget-object v25, p1, p2

    invoke-virtual/range {v25 .. v25}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v24

    if-nez v24, :cond_b

    add-int/lit8 p2, p2, 0x1

    :goto_2
    move/from16 v0, p2

    move/from16 v1, v28

    if-lt v0, v1, :cond_7

    :cond_8
    :goto_3
    const/4 v11, 0x0

    if-lez v14, :cond_10

    move/from16 v19, p5

    :goto_4
    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_e

    aget-object v13, p4, v19

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_d

    :cond_9
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    :cond_a
    if-eqz v21, :cond_6

    new-instance v4, Ljavax/net/ssl/SSLEngineResult;

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v31

    return-object v4

    :cond_b
    :try_start_7
    move/from16 v0, v20

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v4}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->writeEncryptedData(Ljava/nio/ByteBuffer;I)I

    move-result v30

    if-lez v30, :cond_c

    add-int v10, v10, v30

    sub-int v20, v20, v30

    if-eqz v20, :cond_8

    move/from16 v0, v30

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_c
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_clear_error()V

    goto :goto_3

    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->readPlaintextData(Ljava/nio/ByteBuffer;)I

    move-result v12

    if-lez v12, :cond_f

    add-int/2addr v11, v12

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeFinished:Z

    if-eqz v4, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->pendingInboundCleartextBytes()I

    move-result v23

    :goto_5
    if-lez v23, :cond_13

    new-instance v4, Ljavax/net/ssl/SSLEngineResult;

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-object/from16 v0, v18

    if-ne v0, v6, :cond_12

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    invoke-direct {v4, v5, v6, v10, v11}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v31

    return-object v4

    :cond_f
    :try_start_8
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-static {v4, v5, v12}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_error(JI)I

    move-result v29

    packed-switch v29, :pswitch_data_1

    :pswitch_4
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_last_error_number()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10, v11}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslReadErrorResult(III)Ljavax/net/ssl/SSLEngineResult;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v4

    monitor-exit v31

    return-object v4

    :pswitch_5
    :try_start_9
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->closeAll()V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v10, v11, v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->newResult(IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v4

    monitor-exit v31

    return-object v4

    :pswitch_6
    :try_start_a
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v10, v11, v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->newResult(IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v4

    monitor-exit v31

    return-object v4

    :cond_10
    :try_start_b
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    sget-wide v6, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->EMPTY_ADDR:J

    const/4 v8, 0x0

    move-object/from16 v9, p0

    invoke-static/range {v4 .. v9}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_SSL_read_direct(JJILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result v4

    if-gtz v4, :cond_e

    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_last_error_number()I

    move-result v17

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v10, v11}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslReadErrorResult(III)Ljavax/net/ssl/SSLEngineResult;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v4

    monitor-exit v31

    return-object v4

    :catch_0
    move-exception v15

    :try_start_c
    new-instance v4, Ljavax/net/ssl/SSLException;

    invoke-direct {v4, v15}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :cond_11
    const/16 v23, 0x0

    goto :goto_5

    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v18

    goto :goto_6

    :cond_13
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v10, v11, v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->newResult(IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v4

    monitor-exit v31

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string/jumbo v0, "srcs"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "dsts"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2, v0, v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    array-length v3, p1

    array-length v6, p2

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->unwrap([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method

.method public verifyCertificateChain([JLjava/lang/String;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v5}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v18

    if-nez v18, :cond_0

    new-instance v5, Ljava/security/cert/CertificateException;

    const-string/jumbo v6, "No X.509 TrustManager"

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v17

    :try_start_1
    throw v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeSession:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    throw v5

    :cond_0
    if-eqz p1, :cond_1

    :try_start_2
    move-object/from16 v0, p1

    array-length v5, v0

    if-nez v5, :cond_2

    :cond_1
    new-instance v5, Ljavax/net/ssl/SSLException;

    const-string/jumbo v6, "Peer sent no certificate"

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    move-exception v16

    :try_start_3
    new-instance v5, Ljava/security/cert/CertificateException;

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :try_start_4
    invoke-static/range {p1 .. p1}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->createCertChain([J)[Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v9

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_ocsp_response(J)[B

    move-result-object v10

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_signed_cert_timestamp_list(J)[B

    move-result-object v11

    new-instance v5, Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get1_session(J)J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getSniHostname()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getPeerPort()I

    move-result v13

    const/4 v8, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v5 .. v14}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;-><init>(J[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ILcom/android/org/conscrypt/AbstractSessionContext;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeSession:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v5}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v15

    if-eqz v15, :cond_3

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    invoke-static {v0, v9, v1, v2}, Lcom/android/org/conscrypt/Platform;->checkServerTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/OpenSSLEngineImpl;)V
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeSession:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    return-void

    :cond_3
    const/4 v5, 0x0

    :try_start_5
    aget-object v5, v9, v5

    invoke-virtual {v5}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-static {v0, v9, v4, v1}, Lcom/android/org/conscrypt/Platform;->checkClientTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/OpenSSLEngineImpl;)V
    :try_end_5
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public final wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->wrap([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->resetSingleSrcBuffer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->resetSingleSrcBuffer()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const-string/jumbo v12, "srcs"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-static {v0, v12, v13}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v12, "dst"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v0, p4

    invoke-static {v0, v12, v13}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    array-length v12, v0

    const-string/jumbo v13, "srcs"

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v12, v0, v1, v13}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->checkIndex(IIILjava/lang/String;)V

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v12

    if-eqz v12, :cond_0

    new-instance v12, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v12}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v12

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_0
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->-getcom-android-org-conscrypt-OpenSSLEngineImpl$EngineStateSwitchesValues()[I

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    invoke-virtual {v14}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->ordinal()I

    move-result v14

    aget v12, v12, v14

    packed-switch v12, :pswitch_data_0

    :goto_0
    :pswitch_0
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeFinished:Z

    if-nez v12, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v5

    sget-object v12, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v5, v12, :cond_1

    sget-object v12, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->NEED_UNWRAP_OK:Ljavax/net/ssl/SSLEngineResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v13

    return-object v12

    :pswitch_1
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->beginHandshakeInternal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    :pswitch_2
    :try_start_2
    new-instance v12, Ljavax/net/ssl/SSLEngineResult;

    sget-object v14, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v12, v14, v15, v0, v1}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v13

    return-object v12

    :pswitch_3
    :try_start_3
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string/jumbo v14, "Client/server mode must be set before calling wrap"

    invoke-direct {v12, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v14, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-ne v12, v14, :cond_2

    sget-object v12, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->NEED_UNWRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v13

    return-object v12

    :cond_2
    const/4 v10, 0x0

    add-int v4, p2, p3

    move/from16 v6, p2

    :goto_1
    if-ge v6, v4, :cond_7

    :try_start_4
    aget-object v9, p1, v6

    if-nez v9, :cond_3

    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "srcs["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "] is null"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_3
    const/16 v12, 0x4000

    if-ne v10, v12, :cond_5

    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    add-int/2addr v10, v12

    const/16 v12, 0x4000

    if-gt v10, v12, :cond_6

    if-gez v10, :cond_4

    :cond_6
    const/16 v10, 0x4000

    goto :goto_2

    :cond_7
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    invoke-static {v10}, Lcom/android/org/conscrypt/SSLUtils;->calculateOutNetBufSize(I)I

    move-result v14

    if-ge v12, v14, :cond_8

    new-instance v12, Ljavax/net/ssl/SSLEngineResult;

    sget-object v14, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v12, v14, v15, v0, v1}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v13

    return-object v12

    :cond_8
    const/4 v3, 0x0

    const/4 v2, 0x0

    move/from16 v6, p2

    :goto_3
    if-ge v6, v4, :cond_c

    :try_start_5
    aget-object v9, p1, v6

    const-string/jumbo v12, "srcs[%d] is null"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-static {v9, v12, v14}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    rsub-int v14, v2, 0x4000

    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->writePlaintextData(Ljava/nio/ByteBuffer;I)I

    move-result v8

    if-lez v8, :cond_d

    add-int/2addr v2, v8

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v7

    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v12

    sget-object v14, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eq v12, v14, :cond_a

    monitor-exit v13

    return-object v7

    :cond_a
    :try_start_6
    invoke-virtual {v7}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v3

    :cond_b
    const/16 v12, 0x4000

    if-ne v2, v12, :cond_9

    :cond_c
    if-nez v2, :cond_12

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v12, v3, v5}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v7

    if-eqz v7, :cond_12

    monitor-exit v13

    return-object v7

    :cond_d
    :try_start_7
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-static {v14, v15, v8}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_error(JI)I

    move-result v11

    packed-switch v11, :pswitch_data_1

    :pswitch_4
    const-string/jumbo v12, "SSL_write"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->shutdownWithError(Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v12

    throw v12

    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->closeAll()V

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v7

    if-eqz v7, :cond_e

    :goto_4
    monitor-exit v13

    return-object v7

    :cond_e
    :try_start_8
    sget-object v7, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->CLOSED_NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult;

    goto :goto_4

    :pswitch_6
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v7

    if-eqz v7, :cond_f

    :goto_5
    monitor-exit v13

    return-object v7

    :cond_f
    :try_start_9
    new-instance v7, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v12

    sget-object v14, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v7, v12, v14, v2, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto :goto_5

    :pswitch_7
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v7

    if-eqz v7, :cond_10

    :goto_6
    monitor-exit v13

    return-object v7

    :cond_10
    :try_start_a
    sget-object v7, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->NEED_WRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    goto :goto_6

    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_12
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v5}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->newResult(IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v12

    monitor-exit v13

    return-object v12

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
