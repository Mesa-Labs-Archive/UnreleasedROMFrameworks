.class Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;
.super Ljava/lang/Object;
.source "ImsServiceController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsDeathRecipient"
.end annotation


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field final synthetic this$0:Lcom/android/internal/telephony/ims/ImsServiceController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ims/ImsServiceController;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    const-string/jumbo v0, "ImsServiceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ImsService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") died. Restarting..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-wrap3(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-wrap1(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-wrap5(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    return-void
.end method
