.class Lcom/android/internal/telephony/cat/GetChannelStatusResponse;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field channelIds:[Z

.field i:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;[Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponse;->i:Ljava/util/Iterator;

    iput-object p1, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponse;->i:Ljava/util/Iterator;

    iput-object p2, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponse;->channelIds:[Z

    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 11

    const/4 v10, 0x7

    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v6, v10, :cond_5

    iget-object v7, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponse;->channelIds:[Z

    aget-boolean v7, v7, v6

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponse;->i:Ljava/util/Iterator;

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPConnection;

    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v7

    or-int/lit16 v4, v7, 0x80

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v2, 0x0

    iget v7, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    and-int/lit8 v7, v7, 0x7

    int-to-byte v2, v7

    iget-object v7, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/TransportLevel;->isLocal()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    move-object v3, v0

    check-cast v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-byte v7, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkState:B

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v7, v2

    int-to-byte v2, v7

    :cond_1
    :goto_1
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-byte v7, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->linkStateCause:B

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string/jumbo v7, "GetChannelStatusResponse-wrote all"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-boolean v7, v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    if-eqz v7, :cond_1

    or-int/lit8 v7, v2, -0x80

    int-to-byte v2, v7

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_RIL_SIMSendDeactivatedChannelStatus"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "GetChannelStatusResponse-ID not there"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v7

    or-int/lit16 v4, v7, 0x80

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string/jumbo v7, "GetChannelStatusResponse-wrote all"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    return-void
.end method
