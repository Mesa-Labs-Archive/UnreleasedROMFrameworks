.class final Lcom/android/internal/telephony/DeviceReportingSecurityChecker$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceReportingSecurityChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DeviceReportingSecurityChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "DeviceReportingSecurityChecker"

    const-string/jumbo v2, "onReceive mSimStateReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->-get4()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->-wrap0()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->-set1(Z)Z

    :goto_0
    const-string/jumbo v1, "DeviceReportingSecurityChecker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIsTmoSim: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->-get3()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v1, "DeviceReportingSecurityChecker"

    const-string/jumbo v2, "SIM card is not TMO\'s SIM!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->-set1(Z)Z

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "DeviceReportingSecurityChecker"

    const-string/jumbo v2, "SIM state is not ready!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->-set1(Z)Z

    goto :goto_0
.end method
