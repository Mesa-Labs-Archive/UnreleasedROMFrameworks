.class Lcom/android/server/wifi/HalDeviceManager$1;
.super Landroid/hidl/manager/V1_0/IServiceNotification$Stub;
.source "HalDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/HalDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/HalDeviceManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/HalDeviceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/HalDeviceManager$1;->this$0:Lcom/android/server/wifi/HalDeviceManager;

    invoke-direct {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistration(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    const-string/jumbo v0, "HalDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IWifi registration notification: fqName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", preexisting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager$1;->this$0:Lcom/android/server/wifi/HalDeviceManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/HalDeviceManager;->-set0(Lcom/android/server/wifi/HalDeviceManager;Landroid/hardware/wifi/V1_0/IWifi;)Landroid/hardware/wifi/V1_0/IWifi;

    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager$1;->this$0:Lcom/android/server/wifi/HalDeviceManager;

    invoke-static {v0}, Lcom/android/server/wifi/HalDeviceManager;->-wrap1(Lcom/android/server/wifi/HalDeviceManager;)V

    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager$1;->this$0:Lcom/android/server/wifi/HalDeviceManager;

    invoke-static {v0}, Lcom/android/server/wifi/HalDeviceManager;->-get2(Lcom/android/server/wifi/HalDeviceManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager$1;->this$0:Lcom/android/server/wifi/HalDeviceManager;

    invoke-static {v0}, Lcom/android/server/wifi/HalDeviceManager;->-wrap2(Lcom/android/server/wifi/HalDeviceManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
