.class Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;
.super Ljava/lang/Object;
.source "PasspointNetworkEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PasspointNetworkCandidate"
.end annotation


# instance fields
.field mMatchStatus:Lcom/android/server/wifi/hotspot2/PasspointMatch;

.field mProvider:Lcom/android/server/wifi/hotspot2/PasspointProvider;

.field mScanDetail:Lcom/android/server/wifi/ScanDetail;

.field final synthetic this$0:Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;Lcom/android/server/wifi/hotspot2/PasspointProvider;Lcom/android/server/wifi/hotspot2/PasspointMatch;Lcom/android/server/wifi/ScanDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;->this$0:Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;->mProvider:Lcom/android/server/wifi/hotspot2/PasspointProvider;

    iput-object p3, p0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;->mMatchStatus:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    iput-object p4, p0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;->mScanDetail:Lcom/android/server/wifi/ScanDetail;

    return-void
.end method
