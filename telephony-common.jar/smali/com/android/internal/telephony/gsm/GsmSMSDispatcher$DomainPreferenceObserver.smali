.class Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$DomainPreferenceObserver;
.super Landroid/database/ContentObserver;
.source "GsmSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DomainPreferenceObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;)V
    .locals 2

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$DomainPreferenceObserver;->this$0:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$DomainPreferenceObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$DomainPreferenceObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 6

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$DomainPreferenceObserver;->this$0:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->-get0(Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$DomainPreferenceObserver;->this$0:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->-get1(Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    const-string/jumbo v5, "CscFeature_RIL_SmsShowHiddenMenuSmsPrefmode"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string/jumbo v3, "sms_prefmode"

    const/4 v4, 0x2

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "sms_prefmode_domestic"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "ril.sms_preference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public register()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$DomainPreferenceObserver;->this$0:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->-get0(Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$DomainPreferenceObserver;->this$0:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->-get1(Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    const-string/jumbo v3, "CscFeature_RIL_SmsShowHiddenMenuSmsPrefmode"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "sms_prefmode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "sms_prefmode_domestic"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public unRegister()V
    .locals 2

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$DomainPreferenceObserver;->this$0:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->-get0(Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
