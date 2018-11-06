.class Lcom/android/server/policy/CombinationKeyManager$5;
.super Ljava/lang/Object;
.source "CombinationKeyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/CombinationKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/CombinationKeyManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/CombinationKeyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/CombinationKeyManager$5;->this$0:Lcom/android/server/policy/CombinationKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v1, p0, Lcom/android/server/policy/CombinationKeyManager$5;->this$0:Lcom/android/server/policy/CombinationKeyManager;

    iget-object v1, v1, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getSBikeModeState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/CombinationKeyManager$5;->this$0:Lcom/android/server/policy/CombinationKeyManager;

    iget-object v1, v1, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "S bike mode"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x1040077

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/CombinationKeyManager$5;->this$0:Lcom/android/server/policy/CombinationKeyManager;

    iget-object v1, v1, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->showToast(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v1, "CombinationKeyManager"

    const-string/jumbo v2, "interceptAccessShortcut"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/policy/CombinationKeyManager$5;->this$0:Lcom/android/server/policy/CombinationKeyManager;

    iget-object v1, v1, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->accessibilityShortcutActivated()V

    return-void
.end method
