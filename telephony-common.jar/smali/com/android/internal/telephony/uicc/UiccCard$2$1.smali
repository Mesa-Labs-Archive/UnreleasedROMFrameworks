.class Lcom/android/internal/telephony/uicc/UiccCard$2$1;
.super Ljava/lang/Object;
.source "UiccCard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/UiccCard$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/uicc/UiccCard$2;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccCard$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard$2$1;->this$1:Lcom/android/internal/telephony/uicc/UiccCard$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard$2$1;->this$1:Lcom/android/internal/telephony/uicc/UiccCard$2;

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->-get0(Lcom/android/internal/telephony/uicc/UiccCard;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string/jumbo v1, "SIM is removed/added."

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    return-void
.end method
