.class Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$1;
.super Landroid/hidl/manager/V1_0/IServiceNotification$Stub;
.source "SemHostapdApIfaceHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$1;->this$0:Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;

    invoke-direct {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistration(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$1;->this$0:Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->-get0(Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "SemHostapdApIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IServiceNotification.onRegistration for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " preexisting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$1;->this$0:Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->-wrap1(Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$1;->this$0:Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->-wrap0(Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "SemHostapdApIfaceHal"

    const-string/jumbo v2, "initalizing IHostapdApIfaces failed."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$1;->this$0:Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->-wrap2(Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v0, "SemHostapdApIfaceHal"

    const-string/jumbo v2, "Completed initialization of IHostapdAp interfaces."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
