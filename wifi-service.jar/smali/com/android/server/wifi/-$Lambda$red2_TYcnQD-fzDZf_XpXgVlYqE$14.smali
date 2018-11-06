.class final synthetic Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$14;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPhase2MethodCallback;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$14;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wifi/SupplicantStaNetworkHal;

    iget-object v1, p0, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$14;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/util/MutableBoolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->lambda$-com_android_server_wifi_SupplicantStaNetworkHal_109701(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$14;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$14;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$14;->$m$0(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V

    return-void
.end method
