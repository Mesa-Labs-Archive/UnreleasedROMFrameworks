.class Lcom/android/internal/telephony/SubscriptionInfoUpdater$4;
.super Landroid/app/UserSwitchObserver;
.source "SubscriptionInfoUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SubscriptionInfoUpdater;->initializeCarrierApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$4;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$4;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-set0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)I

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get0()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$4;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get3(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get0()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$4;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get1(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)I

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;I)V

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
