.class final synthetic Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$3;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/HalDeviceManager;->lambda$-com_android_server_wifi_HalDeviceManager_20682(J)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$3;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final serviceDied(J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$3;->$m$0(J)V

    return-void
.end method
