.class Lcom/android/server/wifi/WifiConnectivityMonitor$GoodLinkTarget;
.super Ljava/lang/Object;
.source "WifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GoodLinkTarget"
.end annotation


# instance fields
.field public final REDUCE_TIME_MS:I

.field public final RSSI_ADJ_DBM:I

.field public final SAMPLE_COUNT:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$GoodLinkTarget;->RSSI_ADJ_DBM:I

    iput p2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$GoodLinkTarget;->SAMPLE_COUNT:I

    iput p3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$GoodLinkTarget;->REDUCE_TIME_MS:I

    return-void
.end method
