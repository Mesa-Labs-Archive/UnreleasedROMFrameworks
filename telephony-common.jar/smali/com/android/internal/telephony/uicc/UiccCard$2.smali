.class Lcom/android/internal/telephony/uicc/UiccCard$2;
.super Ljava/lang/Object;
.source "UiccCard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/UiccCard;->promptForRestart(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccCard;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->-get1(Lcom/android/internal/telephony/uicc/UiccCard;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSimHotswapSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    :cond_0
    monitor-exit v2

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string/jumbo v3, "Reboot due to SIM swap"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->-wrap1(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCard$2$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCard$2$1;-><init>(Lcom/android/internal/telephony/uicc/UiccCard$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v2

    return-void

    :cond_3
    const/4 v1, -0x2

    if-ne p2, v1, :cond_2

    :try_start_2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string/jumbo v3, "Do not reboot device"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->-wrap1(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
