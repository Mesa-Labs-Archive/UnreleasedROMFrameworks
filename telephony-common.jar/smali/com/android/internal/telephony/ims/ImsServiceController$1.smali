.class Lcom/android/internal/telephony/ims/ImsServiceController$1;
.super Ljava/lang/Object;
.source "ImsServiceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ims/ImsServiceController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$1;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$1;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-get5(Lcom/android/internal/telephony/ims/ImsServiceController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$1;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-get4(Lcom/android/internal/telephony/ims/ImsServiceController;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$1;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController$1;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->-get2(Lcom/android/internal/telephony/ims/ImsServiceController;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->bind(Ljava/util/HashSet;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
