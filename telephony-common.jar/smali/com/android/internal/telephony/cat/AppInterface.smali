.class public interface abstract Lcom/android/internal/telephony/cat/AppInterface;
.super Ljava/lang/Object;
.source "AppInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    }
.end annotation


# static fields
.field public static final ALPHA_STRING:Ljava/lang/String; = "alpha_string"

.field public static final BROWSER_HOMEPAGE:Ljava/lang/String; = "homepage"

.field public static final CARD_STATUS:Ljava/lang/String; = "card_status"

.field public static final CAT_ALPHA_NOTIFY_ACTION:Ljava/lang/String; = "com.android.internal.stk.alpha_notify"

.field public static final CAT_CMD_ACTION:Ljava/lang/String; = "com.android.internal.stk.command"

.field public static final CAT_CMD_ACTION2:Ljava/lang/String; = "com.samsung.intent.internal.stk2.command"

.field public static final CAT_CMD_BROWSER_HOMEPAGE:Ljava/lang/String; = "com.samsung.intent.action.STK_BROWSER_HOMEPAGE"

.field public static final CAT_CMD_BROWSER_HOMEPAGE2:Ljava/lang/String; = "com.samsung.intent.action.STK_BROWSER_HOMEPAGE2"

.field public static final CAT_CMD_BROWSER_TERMINATION:Ljava/lang/String; = "com.samsung.intent.internal.STK_BROWSER_TERMINATION"

.field public static final CAT_CMD_GET_BROWSER_HOMEPAGE:Ljava/lang/String; = "com.samsung.intent.action.STK_BROWSER_GET_HOMEPAGE"

.field public static final CAT_CMD_GET_BROWSER_HOMEPAGE2:Ljava/lang/String; = "com.samsung.intent.action.STK_BROWSER_GET_HOMEPAGE2"

.field public static final CAT_ICC_STATUS_CHANGE:Ljava/lang/String; = "com.android.internal.stk.icc_status_change"

.field public static final CAT_IDLE_SCREEN_ACTION:Ljava/lang/String; = "com.samsung.intent.internal.stk.idle_screen"

.field public static final CAT_REMOVE_ACTION:Ljava/lang/String; = "com.samsung.intent.internal.stk.remove"

.field public static final CAT_REMOVE_ACTION2:Ljava/lang/String; = "com.samsung.intent.internal.stk2.remove"

.field public static final CAT_SESSION_END_ACTION:Ljava/lang/String; = "com.android.internal.stk.session_end"

.field public static final CAT_SESSION_END_ACTION2:Ljava/lang/String; = "com.samsung.intent.internal.stk2.session_end"

.field public static final CHECK_SCREEN_IDLE_ACTION:Ljava/lang/String; = "android.intent.internal.stk.check_screen_idle"

.field public static final REFRESH_RESULT:Ljava/lang/String; = "refresh_result"

.field public static final START_MAIN_ACTIVITY:Ljava/lang/String; = "com.samsung.intent.internal.stk.start_main_activity"

.field public static final START_MAIN_ACTIVITY2:Ljava/lang/String; = "com.samsung.intent.internal.stk2.start_main_activity"

.field public static final STK_PERMISSION:Ljava/lang/String; = "android.permission.RECEIVE_STK_COMMANDS"


# direct methods
.method public static getDefaultSTK2Application()Landroid/content/ComponentName;
    .locals 1

    const-string/jumbo v0, "com.android.stk2/.StkCmdReceiver"

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultSTKApplication()Landroid/content/ComponentName;
    .locals 1

    const-string/jumbo v0, "com.android.stk/.StkCmdReceiver"

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract isAirplaneMode()Z
.end method

.method public abstract onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
.end method

.method public abstract onEventDownload(Lcom/android/internal/telephony/cat/CatEnvelopeMessage;)V
.end method

.method public abstract sendEnvelopeToTriggerBip()V
.end method

.method public abstract sendEnvelopeToTriggerBipforOTA(Z)V
.end method

.method public abstract sendEnvelopeforSMSPPdownload([B[B)V
.end method

.method public abstract sentTerminalResponseForSetupMenu(Z)V
.end method

.method public abstract setEventListChannelStatus(Z)V
.end method

.method public abstract setEventListDataAvailable(Z)V
.end method
