.class final synthetic Lcom/android/server/wifi/-$Lambda$YuIVlKWZZmb4gGMvJqVJEVQ4abs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/wifi/WifiNative$VendorHalDeathEventHandler;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/-$Lambda$YuIVlKWZZmb4gGMvJqVJEVQ4abs;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->lambda$-com_android_server_wifi_WifiStateMachine_16781()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$Lambda$YuIVlKWZZmb4gGMvJqVJEVQ4abs;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onDeath()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/-$Lambda$YuIVlKWZZmb4gGMvJqVJEVQ4abs;->$m$0()V

    return-void
.end method
