.class Lcom/android/internal/telephony/dataconnection/DcTracker$6;
.super Landroid/database/ContentObserver;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$6;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$6;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$6;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get11(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "hongbao_acceleration"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-set4(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$6;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hongbao_acceleration state changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$6;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get3(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    return-void
.end method
