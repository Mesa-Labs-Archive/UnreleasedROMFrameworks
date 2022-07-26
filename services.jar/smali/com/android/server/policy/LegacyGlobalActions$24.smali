.class Lcom/android/server/policy/LegacyGlobalActions$24;
.super Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;
.source "LegacyGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/LegacyGlobalActions;->makeActionsItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsFirstEmergency:Z

.field private mIsVT:Z

.field private mIsVoLTE:Z

.field private mShowConditionalEmergency:Z

.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;IIIII)V
    .locals 7

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$24;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;-><init>(IIIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions$24;->mIsFirstEmergency:Z

    iput-boolean v6, p0, Lcom/android/server/policy/LegacyGlobalActions$24;->mShowConditionalEmergency:Z

    iput-boolean v6, p0, Lcom/android/server/policy/LegacyGlobalActions$24;->mIsVT:Z

    iput-boolean v6, p0, Lcom/android/server/policy/LegacyGlobalActions$24;->mIsVoLTE:Z

    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 3

    const-string/jumbo v0, "LegacyGlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in changeStateFromPress of LongLifeMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$24;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-get54(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVideoCall()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions$24;->mIsVT:Z

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$24;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-get54(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    const-string/jumbo v1, "volte"

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions$24;->mIsVoLTE:Z

    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions$24;->mIsVT:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions$24;->mIsVoLTE:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->isEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPress()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string/jumbo v2, "LegacyGlobalActions"

    const-string/jumbo v3, "in onPress of LongLifeMode"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions$24;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const-string/jumbo v3, "0002"

    const-string/jumbo v4, "EmergencyMode"

    invoke-static {v2, v3, v4}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap32(Lcom/android/server/policy/LegacyGlobalActions;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "PAP"

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "FOP"

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "LDU"

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions$24;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/LegacyGlobalActions;->-get33(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions$24;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const v3, 0x10403d7

    invoke-static {v2, v3, v5}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap39(Lcom/android/server/policy/LegacyGlobalActions;II)V

    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions$24;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap5(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions$24;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const v3, 0x10403d8

    invoke-static {v2, v3, v5}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap39(Lcom/android/server/policy/LegacyGlobalActions;II)V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions$24;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/LegacyGlobalActions;->-get11(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "isBikeMode"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_4

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions$24;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/LegacyGlobalActions;->-get11(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "safety_care_user_agree"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eq v2, v5, :cond_4

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions$24;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const v3, 0x10403cb

    invoke-static {v2, v3, v5}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap39(Lcom/android/server/policy/LegacyGlobalActions;II)V

    return-void

    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "enabled"

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$24;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-get11(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "flag"

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions$24;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/LegacyGlobalActions;->-get11(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method onToggle(Z)V
    .locals 3

    const-string/jumbo v0, "LegacyGlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in onToggle of LongLifeMode on = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showConditional()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions$24;->mIsFirstEmergency:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/LegacyGlobalActions$24;->showConditionalInternal()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions$24;->mShowConditionalEmergency:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions$24;->mIsFirstEmergency:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions$24;->mShowConditionalEmergency:Z

    return v0
.end method

.method public showConditionalInternal()Z
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string/jumbo v5, "ril.domesticOtaStart"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "true"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get1()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "LegacyGlobalActions"

    const-string/jumbo v6, "EmergencyMode is disable on OTA mode"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v8

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string/jumbo v6, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v5, "lock"

    iget-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions$24;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/LegacyGlobalActions;->-get11(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "missing_phone_lock"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v8

    :cond_2
    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions$24;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/LegacyGlobalActions;->-get52(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions$24;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const-string/jumbo v6, "content://com.sec.knox.provider2/KioskMode"

    const-string/jumbo v7, "isKioskModeEnabled"

    invoke-static {v5, v6, v7, v10}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap19(Lcom/android/server/policy/LegacyGlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions$24;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/LegacyGlobalActions;->-get11(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "kids_home_mode"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_3

    const/4 v3, 0x1

    :goto_0
    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions$24;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/LegacyGlobalActions;->-get52(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions$24;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/LegacyGlobalActions;->-get52(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v5

    const/16 v6, 0x600

    invoke-virtual {v5, v6}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result v4

    :goto_1
    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions$24;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/LegacyGlobalActions;->-get52(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->canSetMode()Z

    move-result v0

    const-string/jumbo v5, "LegacyGlobalActions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "kioskModeEnabled ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "kidsModeEnabled ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "upsmModeEnabled ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "canSetMode ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_6

    xor-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_6

    xor-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_6

    xor-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_6

    return v9

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    const-string/jumbo v5, "LegacyGlobalActions"

    const-string/jumbo v6, "mEmergency : mSemEmergencyManager is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return v8

    :cond_7
    const-string/jumbo v5, "LegacyGlobalActions"

    const-string/jumbo v6, "mEmergency : SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE is false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public showDuringKeyguard()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
