.class final synthetic Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$18;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$isGoCallback;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$18;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    invoke-static {v0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->lambda$-com_android_server_wifi_p2p_SupplicantP2pIfaceHal_73478(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$18;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$18;->$m$0(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Z)V

    return-void
.end method
