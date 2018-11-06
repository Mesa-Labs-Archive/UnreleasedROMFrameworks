.class final synthetic Lcom/android/server/wifi/-$Lambda$fnayIWgoPf1mYwUZ1jv9XAubNu8$9;
.super Ljava/lang/Object;

# interfaces
.implements Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$getExtendedInfomationCallback;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/-$Lambda$fnayIWgoPf1mYwUZ1jv9XAubNu8$9;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wifi/SupplicantStaIfaceHal;

    iget-object v1, p0, Lcom/android/server/wifi/-$Lambda$fnayIWgoPf1mYwUZ1jv9XAubNu8$9;->-$f1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->lambda$-com_android_server_wifi_SupplicantStaIfaceHal_70657(Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$Lambda$fnayIWgoPf1mYwUZ1jv9XAubNu8$9;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/wifi/-$Lambda$fnayIWgoPf1mYwUZ1jv9XAubNu8$9;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/-$Lambda$fnayIWgoPf1mYwUZ1jv9XAubNu8$9;->$m$0(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V

    return-void
.end method
