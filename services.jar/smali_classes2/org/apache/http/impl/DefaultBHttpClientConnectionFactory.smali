.class public Lorg/apache/http/impl/DefaultBHttpClientConnectionFactory;
.super Ljava/lang/Object;
.source "DefaultBHttpClientConnectionFactory.java"

# interfaces
.implements Lorg/apache/http/HttpConnectionFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/HttpConnectionFactory",
        "<",
        "Lorg/apache/http/impl/DefaultBHttpClientConnection;",
        ">;"
    }
.end annotation

.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->IMMUTABLE_CONDITIONAL:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/http/impl/DefaultBHttpClientConnectionFactory;


# instance fields
.field private final cconfig:Lorg/apache/http/config/ConnectionConfig;

.field private final incomingContentStrategy:Lorg/apache/http/entity/ContentLengthStrategy;

.field private final outgoingContentStrategy:Lorg/apache/http/entity/ContentLengthStrategy;

.field private final requestWriterFactory:Lorg/apache/http/io/HttpMessageWriterFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/io/HttpMessageWriterFactory",
            "<",
            "Lorg/apache/http/HttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final responseParserFactory:Lorg/apache/http/io/HttpMessageParserFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/io/HttpMessageParserFactory",
            "<",
            "Lorg/apache/http/HttpResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/http/impl/DefaultBHttpClientConnectionFactory;

    invoke-direct {v0}, Lorg/apache/http/impl/DefaultBHttpClientConnectionFactory;-><init>()V

    sput-object v0, Lorg/apache/http/impl/DefaultBHttpClientConnectionFactory;->INSTANCE:Lorg/apache/http/impl/DefaultBHttpClientConnectionFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/apache/http/impl/DefaultBHttpClientConnectionFactory;-><init>(Lorg/apache/http/config/ConnectionConfig;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/io/HttpMessageWriterFactory;Lorg/apache/http/io/HttpMessageParserFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/config/ConnectionConfig;)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/apache/http/impl/DefaultBHttpClientConnectionFactory;-><init>(Lorg/apache/http/config/ConnectionConfig;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/io/HttpMessageWriterFactory;Lorg/apache/http/io/HttpMessageParserFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/config/ConnectionConfig;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/io/HttpMessageWriterFactory;Lorg/apache/http/io/HttpMessageParserFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/config/ConnectionConfig;",
            "Lorg/apache/http/entity/ContentLengthStrategy;",
            "Lorg/apache/http/entity/ContentLengthStrategy;",
            "Lorg/apache/http/io/HttpMessageWriterFactory",
            "<",
            "Lorg/apache/http/HttpRequest;",
            ">;",
            "Lorg/apache/http/io/HttpMessageParserFactory",
            "<",
            "Lorg/apache/http/HttpResponse;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/http/config/ConnectionConfig;->DEFAULT:Lorg/apache/http/config/ConnectionConfig;

    :cond_0
    iput-object p1, p0, Lorg/apache/http/impl/DefaultBHttpClientConnectionFactory;->cconfig:Lorg/apache/http/config/ConnectionConfig;

    iput-object p2, p0, Lorg/apache/http/impl/DefaultBHttpClientConnectionFactory;->incomingContentStrategy:Lorg/apache/http/entity/ContentLengthStrategy;

    iput-object p3, p0, Lorg/apache/http/impl/DefaultBHttpClientConnectionFactory;->outgoingContentStrategy:Lorg/apache/http/entity/ContentLengthStrategy;

    iput-object p4, p0, Lorg/apache/http/impl/DefaultBHttpClientConnectionFactory;->requestWriterFactory:Lorg/apache/http/io/HttpMessageWriterFactory;

    iput-object p5, p0, Lorg/apache/http/impl/DefaultBHttpClientConnectionFactory;->responseParserFactory:Lorg/apache/http/io/HttpMessageParserFactory;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/config/ConnectionConfig;Lorg/apache/http/io/HttpMessageWriterFactory;Lorg/apache/http/io/HttpMessageParserFactory;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/config/ConnectionConfig;",
            "Lorg/apache/http/io/HttpMessageWriterFactory",
            "<",
            "Lorg/apache/http/HttpRequest;",
            ">;",
            "Lorg/apache/http/io/HttpMessageParserFactory",
            "<",
            "Lorg/apache/http/HttpResponse;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/http/impl/DefaultBHttpClientConnectionFactory;-><init>(Lorg/apache/http/config/ConnectionConfig;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/io/HttpMessageWriterFactory;Lorg/apache/http/io/HttpMessageParserFactory;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createConnection(Ljava/net/Socket;)Lorg/apache/http/HttpConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/DefaultBHttpClientConnectionFactory;->createConnection(Ljava/net/Socket;)Lorg/apache/http/impl/DefaultBHttpClientConnection;

    move-result-object v0

    return-object v0
.end method

.method public createConnection(Ljava/net/Socket;)Lorg/apache/http/impl/DefaultBHttpClientConnection;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/http/impl/DefaultBHttpClientConnection;

    iget-object v1, p0, Lorg/apache/http/impl/DefaultBHttpClientConnectionFactory;->cconfig:Lorg/apache/http/config/ConnectionConfig;

    invoke-virtual {v1}, Lorg/apache/http/config/ConnectionConfig;->getBufferSize()I

    move-result v1

    iget-object v2, p0, Lorg/apache/http/impl/DefaultBHttpClientConnectionFactory;->cconfig:Lorg/apache/http/config/ConnectionConfig;

    invoke-virtual {v2}, Lorg/apache/http/config/ConnectionConfig;->getFragmentSizeHint()I

    move-result v2

    iget-object v3, p0, Lorg/apache/http/impl/DefaultBHttpClientConnectionFactory;->cconfig:Lorg/apache/http/config/ConnectionConfig;

    invoke-static {v3}, Lorg/apache/http/impl/ConnSupport;->createDecoder(Lorg/apache/http/config/ConnectionConfig;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/http/impl/DefaultBHttpClientConnectionFactory;->cconfig:Lorg/apache/http/config/ConnectionConfig;

    invoke-static {v4}, Lorg/apache/http/impl/ConnSupport;->createEncoder(Lorg/apache/http/config/ConnectionConfig;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/http/impl/DefaultBHttpClientConnectionFactory;->cconfig:Lorg/apache/http/config/ConnectionConfig;

    invoke-virtual {v5}, Lorg/apache/http/config/ConnectionConfig;->getMessageConstraints()Lorg/apache/http/config/MessageConstraints;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/http/impl/DefaultBHttpClientConnectionFactory;->incomingContentStrategy:Lorg/apache/http/entity/ContentLengthStrategy;

    iget-object v7, p0, Lorg/apache/http/impl/DefaultBHttpClientConnectionFactory;->outgoingContentStrategy:Lorg/apache/http/entity/ContentLengthStrategy;

    iget-object v8, p0, Lorg/apache/http/impl/DefaultBHttpClientConnectionFactory;->requestWriterFactory:Lorg/apache/http/io/HttpMessageWriterFactory;

    iget-object v9, p0, Lorg/apache/http/impl/DefaultBHttpClientConnectionFactory;->responseParserFactory:Lorg/apache/http/io/HttpMessageParserFactory;

    invoke-direct/range {v0 .. v9}, Lorg/apache/http/impl/DefaultBHttpClientConnection;-><init>(IILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/http/config/MessageConstraints;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/io/HttpMessageWriterFactory;Lorg/apache/http/io/HttpMessageParserFactory;)V

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/DefaultBHttpClientConnection;->bind(Ljava/net/Socket;)V

    return-object v0
.end method
