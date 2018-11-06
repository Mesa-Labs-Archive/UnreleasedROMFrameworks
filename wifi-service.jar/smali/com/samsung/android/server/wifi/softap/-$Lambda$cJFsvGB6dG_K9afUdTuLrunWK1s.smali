.class final synthetic Lcom/samsung/android/server/wifi/softap/-$Lambda$cJFsvGB6dG_K9afUdTuLrunWK1s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(J)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/-$Lambda$cJFsvGB6dG_K9afUdTuLrunWK1s;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->lambda$-com_samsung_android_server_wifi_softap_SemHostapdApIfaceHal_3469(J)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/softap/-$Lambda$cJFsvGB6dG_K9afUdTuLrunWK1s;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final serviceDied(J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/softap/-$Lambda$cJFsvGB6dG_K9afUdTuLrunWK1s;->$m$0(J)V

    return-void
.end method
