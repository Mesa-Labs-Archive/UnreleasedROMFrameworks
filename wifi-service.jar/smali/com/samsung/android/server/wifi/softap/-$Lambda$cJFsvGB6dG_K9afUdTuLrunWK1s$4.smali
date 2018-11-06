.class final synthetic Lcom/samsung/android/server/wifi/softap/-$Lambda$cJFsvGB6dG_K9afUdTuLrunWK1s$4;
.super Ljava/lang/Object;

# interfaces
.implements Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$sendHostapdCommandCallback;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/-$Lambda$cJFsvGB6dG_K9afUdTuLrunWK1s$4;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$Mutable;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->lambda$-com_samsung_android_server_wifi_softap_SemHostapdApIfaceHal_26440(Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$Mutable;Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/softap/-$Lambda$cJFsvGB6dG_K9afUdTuLrunWK1s$4;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onValues(Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/softap/-$Lambda$cJFsvGB6dG_K9afUdTuLrunWK1s$4;->$m$0(Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;Ljava/lang/String;)V

    return-void
.end method
