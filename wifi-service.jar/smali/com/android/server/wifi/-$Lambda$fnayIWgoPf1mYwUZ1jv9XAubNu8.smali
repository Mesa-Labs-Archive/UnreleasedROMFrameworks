.class final synthetic Lcom/android/server/wifi/-$Lambda$fnayIWgoPf1mYwUZ1jv9XAubNu8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$getInterfaceCallback;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/-$Lambda$fnayIWgoPf1mYwUZ1jv9XAubNu8;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;

    invoke-static {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->lambda$-com_android_server_wifi_SupplicantStaIfaceHal_13134(Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$Lambda$fnayIWgoPf1mYwUZ1jv9XAubNu8;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/-$Lambda$fnayIWgoPf1mYwUZ1jv9XAubNu8;->$m$0(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;)V

    return-void
.end method
