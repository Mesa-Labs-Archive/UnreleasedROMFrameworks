.class Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;
.super Ljava/lang/Object;
.source "WifiMaliciousHotspotDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMaliciousHotspotDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SslStripDetector"
.end annotation


# static fields
.field public static final DEFAULT_SSD_DELAYED_START_SEC:I = 0xa

.field public static final DEFAULT_SSD_INTERVAL_SEC:I = 0xa

.field public static final DEFAULT_SSD_REPEAT_MIN:I = 0x0

.field public static final DEFAULT_SSD_SETS:I = 0x3

.field public static final DEFAULT_SSD_TIMEOUT_SEC:I = 0xa

.field private static final TAG:Ljava/lang/String; = "WifiMHD::s"


# instance fields
.field private final DEFAULT_SSD_URL_LIST:[Ljava/lang/String;

.field private final DEFAULT_STATE:I

.field private final SSD_INIT_ID:I

.field private final SSD_MAX_CONSECUTIVE_TIMEOUT:I

.field private final SSD_RESULT_DETECTED:I

.field private final SSD_RESULT_NONE:I

.field private final SSD_RESULT_TIMEOUT:I

.field private mSSDConnectionToken:I

.field private mSSDDelayedStartSec:J

.field private mSSDIntervalSec:J

.field private mSSDRepeatMin:J

.field private mSSDRespCode:I

.field private mSSDRespType:I

.field private mSSDRespUrl:Ljava/lang/String;

.field private mSSDResultStack:Ljava/lang/String;

.field private mSSDSets:I

.field private mSSDStartUrlIndex:I

.field private mSSDTimeoutCount:I

.field private mSSDTimeoutSec:J

.field private mSSDUrlIdx:I

.field private mSSDUrlList:[Ljava/lang/String;

.field private mSSDUrlMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSslStripDetectionEnabled:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;


# direct methods
.method static synthetic -set0(Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRespCode:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRespType:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->getResponse(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->updateUrlList(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)V
    .locals 9

    const/4 v8, -0x1

    const-wide/16 v6, 0xa

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->DEFAULT_STATE:I

    iput v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSslStripDetectionEnabled:I

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "http://www.twitter.com"

    aput-object v1, v0, v3

    const-string/jumbo v1, "http://www.facebook.com"

    aput-object v1, v0, v4

    const-string/jumbo v1, "http://www.instagram.com"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "http://www.linkedin.com"

    aput-object v1, v0, v5

    const-string/jumbo v1, "http://www.dropbox.com"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "http://www.wikipedia.org"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "http://www.wordpress.com"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "http://accounts.google.com"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "http://www.yahoo.com"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "http://www.reddit.com"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "http://www.pinterest.com"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "http://mail.ru"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "http://www.tumblr.com"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "http://www.netflix.com"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "http://www.flickr.com"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "http://www.paypal.com"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->DEFAULT_SSD_URL_LIST:[Ljava/lang/String;

    iput v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->SSD_INIT_ID:I

    iput v8, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->SSD_RESULT_TIMEOUT:I

    iput v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->SSD_RESULT_NONE:I

    iput v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->SSD_RESULT_DETECTED:I

    iput v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->SSD_MAX_CONSECUTIVE_TIMEOUT:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->DEFAULT_SSD_URL_LIST:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlList:[Ljava/lang/String;

    iput v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDSets:I

    iput-wide v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDIntervalSec:J

    iput-wide v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDTimeoutSec:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRepeatMin:J

    iput-wide v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDDelayedStartSec:J

    iput v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlIdx:I

    iput v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDConnectionToken:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDResultStack:Ljava/lang/String;

    iput v8, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDStartUrlIndex:I

    invoke-static {p1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get5(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->updateUrlList(Ljava/lang/String;)V

    return-void
.end method

.method private getResponse(Ljava/lang/String;II)V
    .locals 22

    const/4 v10, 0x0

    const-string/jumbo v18, "WifiMHD::s"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "req("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "):"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlIdx:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->MHD_VERSION:I

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v12, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v10, v0

    const-string/jumbo v18, "ro.product.model"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v18, "ro.build.version.release"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get0()Z

    move-result v18

    if-nez v18, :cond_0

    if-nez v11, :cond_1

    :cond_0
    const-string/jumbo v11, "GT-I9500"

    :cond_1
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDTimeoutSec:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDTimeoutSec:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string/jumbo v18, "Connection"

    const-string/jumbo v19, "close"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v18, "Accept"

    const-string/jumbo v19, "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v18, "Accept-Encoding"

    const-string/jumbo v19, "gzip,deflate,sdch"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v18, "Accept-Language"

    const-string/jumbo v19, "en-GB,en;q=0.8,en-US;q=0.6,en;q=0.4"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRespCode:I

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRespType:I

    invoke-virtual {v12}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->isPrivateAddress(Ljava/net/InetAddress;)Z

    move-result v18

    if-eqz v18, :cond_4

    const-string/jumbo v18, "WifiMHD::s"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "url: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", addr: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", isPrivateAddress. Ignore the result"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->obtainMessage(III)Landroid/os/Message;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    :goto_1
    const/4 v10, 0x0

    :cond_3
    return-void

    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRespCode:I

    move/from16 v18, v0

    const/16 v19, 0x12c

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRespCode:I

    move/from16 v18, v0

    const/16 v19, 0x133

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRespCode:I

    move/from16 v18, v0

    const/16 v19, 0x132

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    new-instance v14, Ljava/net/URL;

    const-string/jumbo v18, "Location"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_2

    const-string/jumbo v18, "http"

    invoke-virtual {v14}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get12(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v17

    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->isAuthenticated()Z

    move-result v18

    if-eqz v18, :cond_2

    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->matchServerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v14}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v15

    if-eqz v16, :cond_6

    if-eqz v15, :cond_6

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_6

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRespType:I
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v9

    :try_start_2
    const-string/jumbo v18, "WifiMHD::s"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "close("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ") SE "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v20

    const/16 v21, 0x2

    aget-object v20, v20, v21

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_1

    :cond_6
    :try_start_3
    const-string/jumbo v18, "WifiMHD::s"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Redirected to nowhere - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRespType:I
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v6

    :try_start_4
    const-string/jumbo v18, "WifiMHD::s"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "close("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ") IAE "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v20

    const/16 v21, 0x2

    aget-object v20, v20, v21

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_1

    :catch_2
    move-exception v7

    :try_start_5
    const-string/jumbo v18, "WifiMHD::s"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "close("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ") OOME "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v20

    const/16 v21, 0x2

    aget-object v20, v20, v21

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_1

    :catch_3
    move-exception v8

    :try_start_6
    const-string/jumbo v18, "WifiMHD::s"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "close("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ") RE "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v20

    const/16 v21, 0x2

    aget-object v20, v20, v21

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_1

    :catch_4
    move-exception v5

    :try_start_7
    const-string/jumbo v18, "WifiMHD::s"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "close("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ") IOE "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v20

    const/16 v21, 0x2

    aget-object v20, v20, v21

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_1

    :catchall_0
    move-exception v18

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v10, 0x0

    :cond_7
    throw v18
.end method

.method private isPrivateAddress(Ljava/net/InetAddress;)Z
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz p1, :cond_4

    instance-of v4, p1, Ljava/net/Inet4Address;

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    aget-byte v4, v4, v6

    and-int/lit16 v0, v4, 0xff

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    aget-byte v4, v4, v7

    and-int/lit16 v1, v4, 0xff

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    and-int/lit16 v2, v4, 0xff

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    and-int/lit16 v3, v4, 0xff

    const/16 v4, 0xa

    if-eq v0, v4, :cond_0

    const/16 v4, 0xc0

    if-ne v0, v4, :cond_2

    const/16 v4, 0xa8

    if-ne v1, v4, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get0()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "WifiMHD::s"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Private Network IP Address !!! - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v7

    :cond_2
    const/16 v4, 0xac

    if-ne v0, v4, :cond_3

    const/16 v4, 0x10

    if-lt v1, v4, :cond_3

    const/16 v4, 0x1f

    if-le v1, v4, :cond_0

    :cond_3
    if-ne v0, v7, :cond_4

    const/16 v4, 0x21

    if-ne v1, v4, :cond_4

    const/16 v4, 0xcb

    if-ne v2, v4, :cond_4

    const/16 v4, 0x27

    if-eq v3, v4, :cond_0

    :cond_4
    return v6
.end method

.method private matchServerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x2

    const-string/jumbo v4, "//"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    const/4 v4, 0x1

    if-le v0, v4, :cond_1

    add-int/lit8 v4, v0, -0x1

    aget-object v4, v2, v4

    const-string/jumbo v5, "\\."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v1, v3

    if-lt v1, v6, :cond_1

    const/4 v4, 0x3

    if-lt v1, v4, :cond_0

    add-int/lit8 v4, v1, -0x2

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_0

    add-int/lit8 v4, v1, -0x3

    aget-object v4, v3, v4

    return-object v4

    :cond_0
    add-int/lit8 v4, v1, -0x2

    aget-object v4, v3, v4

    return-object v4

    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method private updateUrlList(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlMap:Ljava/util/HashMap;

    const-string/jumbo v2, "default"

    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->DEFAULT_SSD_URL_LIST:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlList:[Ljava/lang/String;

    :goto_0
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlList:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlIdx:I

    invoke-static {}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get0()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "WifiMHD::s"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->MHD_VERSION:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get5(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlIdx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlList:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlMap:Ljava/util/HashMap;

    const-string/jumbo v2, "default"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlList:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public checkResult(II)V
    .locals 4

    const/4 v3, -0x1

    invoke-static {}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiMHD::s"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "res("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRespCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRespType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDConnectionToken:I

    if-eq p2, v0, :cond_1

    const-string/jumbo v0, "WifiMHD::s"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ign token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "!="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDConnectionToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRespType:I

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDTimeoutCount:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDTimeoutCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDTimeoutCount:I

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->requestSSD(I)V

    return-void

    :cond_3
    iput v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDTimeoutCount:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDResultStack:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRespType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDResultStack:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDResultStack:Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlIdx:I

    iput v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDStartUrlIndex:I

    :cond_4
    iget v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDSets:I

    if-lt p1, v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->finishSSD()V

    return-void

    :cond_5
    iget v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRespType:I

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->finishSSD()V

    return-void

    :cond_6
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->requestSSD(I)V

    return-void
.end method

.method public finishSSD()V
    .locals 12

    const/4 v1, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v11, 0x0

    invoke-static {}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiMHD::s"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "RESULT:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDResultStack:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, "("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDResultStack:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, ")"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSslStripDetectionEnabled:I

    if-eqz v0, :cond_1

    const-string/jumbo v0, "111"

    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDResultStack:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get12(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v10

    if-eqz v10, :cond_1

    const-string/jumbo v0, "00:00:00:00:00:00"

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    iget v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSslStripDetectionEnabled:I

    invoke-virtual {v0, v4, v1, v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->handleMaliciousHotspotDetection(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get6(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get3(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get12(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const-string/jumbo v3, "MHDS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDStartUrlIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "O"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v3, v7}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap8(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get3(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MHDS - "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDStartUrlIndex:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, "O"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v3, v9}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap3(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    iget v7, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDStartUrlIndex:I

    move v8, v6

    invoke-static/range {v0 .. v8}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap9(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;IZILjava/lang/String;Ljava/lang/String;III)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->stop()V

    iget-wide v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRepeatMin:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    iget-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-virtual {v1, v2, v2, v11}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRepeatMin:J

    const-wide/16 v6, 0x3c

    mul-long/2addr v2, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const-string/jumbo v3, "MHDS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDStartUrlIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "S"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v3, v7}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap8(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get3(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MHDS - "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDStartUrlIndex:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, "S"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getEnabled()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSslStripDetectionEnabled:I

    return v0
.end method

.method public requestSSD(I)V
    .locals 10

    const/4 v6, 0x0

    iget v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSslStripDetectionEnabled:I

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->stop()V

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v4}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get4(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/ConnectivityManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get0()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "WifiMHD::s"

    const-string/jumbo v5, "no conn"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->stop()V

    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v4}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get12(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->isAuthenticated()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    :cond_3
    const-string/jumbo v4, "WifiMHD::s"

    const-string/jumbo v5, "no auth"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->stop()V

    return-void

    :cond_4
    iget-object v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap2(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->stop()V

    return-void

    :cond_5
    iget v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDTimeoutCount:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_7

    invoke-static {}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get0()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "WifiMHD::s"

    const-string/jumbo v5, "max timeout count reached"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->stop()V

    return-void

    :cond_7
    iget v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlIdx:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlIdx:I

    iget-object v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlList:[Ljava/lang/String;

    array-length v5, v5

    if-lt v4, v5, :cond_8

    iput v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlIdx:I

    :cond_8
    iget-object v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlList:[Ljava/lang/String;

    iget v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlIdx:I

    aget-object v1, v4, v5

    iget v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDConnectionToken:I

    add-int/lit8 v0, v4, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDConnectionToken:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    iget-object v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, p1, v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDTimeoutSec:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector$1;

    invoke-direct {v5, p0, v1, p1, v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector$1;-><init>(Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;Ljava/lang/String;II)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setEnabled(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSslStripDetectionEnabled:I

    return-void
.end method

.method public start()V
    .locals 10

    iget v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDSets:I

    iget-wide v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDDelayedStartSec:J

    iget-wide v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDTimeoutSec:J

    iget-wide v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDIntervalSec:J

    iget-wide v8, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRepeatMin:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->start(IJJJJ)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDTimeoutCount:I

    return-void
.end method

.method public start(IJJJJ)V
    .locals 6

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->stop()V

    iput p1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDSets:I

    iput-wide p4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDTimeoutSec:J

    iput-wide p6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDIntervalSec:J

    iput-wide p8, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRepeatMin:J

    iput-wide p2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDDelayedStartSec:J

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    iget-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v3, v2}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDDelayedStartSec:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public stop()V
    .locals 2

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDResultStack:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->removeMessages(I)V

    return-void
.end method

.method public updateVariables(Ljava/util/HashMap;IJJJJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;IJJJJ)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->stop()V

    iput-object p1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get5(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->updateUrlList(Ljava/lang/String;)V

    iput p2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDSets:I

    iput-wide p3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDTimeoutSec:J

    iput-wide p5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDIntervalSec:J

    iput-wide p7, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRepeatMin:J

    iput-wide p9, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDDelayedStartSec:J

    return-void
.end method
