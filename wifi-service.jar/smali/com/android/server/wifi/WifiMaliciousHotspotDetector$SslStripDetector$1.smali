.class Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector$1;
.super Ljava/lang/Object;
.source "WifiMaliciousHotspotDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->requestSSD(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

.field final synthetic val$connectionToken:I

.field final synthetic val$onGoingId:I

.field final synthetic val$targetUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector$1;->this$1:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    iput-object p2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector$1;->val$targetUrl:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector$1;->val$onGoingId:I

    iput p4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector$1;->val$connectionToken:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector$1;->this$1:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->-set0(Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;I)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector$1;->this$1:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->-set1(Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;I)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector$1;->this$1:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    iget-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector$1;->val$targetUrl:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector$1;->val$onGoingId:I

    iget v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector$1;->val$connectionToken:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->-wrap0(Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;Ljava/lang/String;II)V

    return-void
.end method
