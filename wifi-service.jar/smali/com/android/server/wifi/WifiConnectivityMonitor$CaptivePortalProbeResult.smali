.class public final Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;
.super Ljava/lang/Object;
.source "WifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CaptivePortalProbeResult"
.end annotation


# static fields
.field static final FAILED:Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;


# instance fields
.field final mHttpResponseCode:I

.field final mRedirectUrl:Ljava/lang/String;

.field final mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;

    const/16 v1, 0x257

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;->FAILED:Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;->mHttpResponseCode:I

    iput-object p2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;->mRedirectUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;->mUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method isPortal()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;->mHttpResponseCode:I

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;->mHttpResponseCode:I

    const/16 v2, 0x18f

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isSuccessful()Z
    .locals 2

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;->mHttpResponseCode:I

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
