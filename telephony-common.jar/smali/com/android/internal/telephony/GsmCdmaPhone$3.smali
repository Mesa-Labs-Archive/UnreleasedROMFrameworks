.class Lcom/android/internal/telephony/GsmCdmaPhone$3;
.super Landroid/database/ContentObserver;
.source "GsmCdmaPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/GsmCdmaPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/GsmCdmaPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$3;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    const/4 v5, -0x1

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone$3;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget v2, v2, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    if-nez v2, :cond_1

    const-string/jumbo v1, "voicecall_type"

    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone$3;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone$3;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "volteOnObserver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone$3;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-static {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->-get0(Lcom/android/internal/telephony/GsmCdmaPhone;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->-wrap0(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;)V

    if-eq v0, v5, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone$3;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-static {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->-get0(Lcom/android/internal/telephony/GsmCdmaPhone;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v1, "voicecall_type2"

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone$3;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->-wrap2(Lcom/android/internal/telephony/GsmCdmaPhone;Landroid/os/Message;)V

    return-void
.end method
