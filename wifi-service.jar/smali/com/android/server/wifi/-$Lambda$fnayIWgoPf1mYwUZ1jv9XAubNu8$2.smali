.class final synthetic Lcom/android/server/wifi/-$Lambda$fnayIWgoPf1mYwUZ1jv9XAubNu8$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/-$Lambda$fnayIWgoPf1mYwUZ1jv9XAubNu8$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->lambda$-com_android_server_wifi_SupplicantStaIfaceHal_5937(J)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$Lambda$fnayIWgoPf1mYwUZ1jv9XAubNu8$2;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final serviceDied(J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/-$Lambda$fnayIWgoPf1mYwUZ1jv9XAubNu8$2;->$m$0(J)V

    return-void
.end method
