.class public Lcom/whitepages/nameid/NameIDBlockingHelper;
.super Ljava/lang/Object;
.source "NameIDBlockingHelper.java"


# static fields
.field private static final NAME_ID_CHECK_TEXT_BLOCK_ACTION:Ljava/lang/String; = "com.whitepages.nameid.action.CHECK_TEXT_BLOCK"

.field public static final NAME_ID_DEFAULT_PACKAGE_NAME:Ljava/lang/String; = "com.whitepages.nameid.tmobile"

.field private static final NAME_ID_MMS_RECEIVER_COMPONENT_NAME:Ljava/lang/String; = "com.whitepages.nameid.tmobile/com.whitepages.nameid.service.MmsReceiver"

.field public static final NAME_ID_MMS_RECEIVER_COMPONENT_NAME_FORMAT:Ljava/lang/String; = "%s/com.whitepages.nameid.service.MmsReceiver"

.field private static final NAME_ID_ORIGINAL_INTENT:Ljava/lang/String; = "NAME_ID_ORIGINAL_INTENT"

.field public static final NAME_ID_PACKAGE_KEY:Ljava/lang/String; = "com.whitepages.nameid.NAME_ID_PACKAGE"

.field private static final NAME_ID_SMS_RECEIVER_COMPONENT_NAME:Ljava/lang/String; = "com.whitepages.nameid.tmobile/com.whitepages.nameid.service.SmsReceiver"

.field public static final NAME_ID_SMS_RECEIVER_COMPONENT_NAME_FORMAT:Ljava/lang/String; = "%s/com.whitepages.nameid.service.SmsReceiver"

.field public static final mEnableWhitePagesConfig:Ljava/lang/String; = "CscFeature_Contact_SupportWhitePages"

.field private static s_options:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getActivePackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "com.whitepages.nameid.NAME_ID_PACKAGE"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "com.whitepages.nameid.tmobile"

    :cond_0
    return-object v0
.end method

.method public static getLastOptions()Landroid/os/Bundle;
    .locals 2

    sget-object v0, Lcom/whitepages/nameid/NameIDBlockingHelper;->s_options:Landroid/os/Bundle;

    const/4 v1, 0x0

    sput-object v1, Lcom/whitepages/nameid/NameIDBlockingHelper;->s_options:Landroid/os/Bundle;

    return-object v0
.end method

.method public static getOriginalIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    const-string/jumbo v0, "NAME_ID_ORIGINAL_INTENT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public static isNameIDInstalledAndEnabled(Landroid/content/Context;)Z
    .locals 8

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {p0}, Lcom/whitepages/nameid/NameIDBlockingHelper;->getActivePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_0

    return v7

    :cond_0
    const-string/jumbo v4, "NameIDHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "got package info. enabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v0

    const-string/jumbo v4, "NameIDHelper"

    const-string/jumbo v5, "error trying to detect package -- we are probably not installed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v7
.end method

.method public static isNameIdAction(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "com.whitepages.nameid.action.CHECK_TEXT_BLOCK"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static wasAborted(I)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static wrapIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/whitepages/nameid/NameIDBlockingHelper;->isNameIDInstalledAndEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    sput-object p2, Lcom/whitepages/nameid/NameIDBlockingHelper;->s_options:Landroid/os/Bundle;

    const-string/jumbo v2, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "android.provider.Telephony.SMS_DELIVER"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    return-object p1

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.whitepages.nameid.action.CHECK_TEXT_BLOCK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "%s/com.whitepages.nameid.service.MmsReceiver"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/whitepages/nameid/NameIDBlockingHelper;->getActivePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_0
    const-string/jumbo v2, "NAME_ID_ORIGINAL_INTENT"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0

    :cond_2
    const-string/jumbo v2, "%s/com.whitepages.nameid.service.SmsReceiver"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/whitepages/nameid/NameIDBlockingHelper;->getActivePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method
