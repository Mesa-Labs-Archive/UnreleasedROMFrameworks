.class public Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;
.super Ljava/lang/Object;
.source "VoicemailNotificationSettingsUtil.java"


# static fields
.field private static final OLD_VOICEMAIL_NOTIFICATION_RINGTONE_SHARED_PREFS_KEY:Ljava/lang/String; = "button_voicemail_notification_ringtone_key"

.field private static final OLD_VOICEMAIL_NOTIFICATION_VIBRATION_SHARED_PREFS_KEY:Ljava/lang/String; = "button_voicemail_notification_vibrate_key"

.field private static final OLD_VOICEMAIL_RINGTONE_SHARED_PREFS_KEY:Ljava/lang/String; = "button_voicemail_notification_ringtone_key"

.field private static final OLD_VOICEMAIL_VIBRATE_WHEN_SHARED_PREFS_KEY:Ljava/lang/String; = "button_voicemail_notification_vibrate_when_key"

.field private static final OLD_VOICEMAIL_VIBRATION_ALWAYS:Ljava/lang/String; = "always"

.field private static final OLD_VOICEMAIL_VIBRATION_NEVER:Ljava/lang/String; = "never"

.field private static final VOICEMAIL_NOTIFICATION_RINGTONE_SHARED_PREFS_KEY_PREFIX:Ljava/lang/String; = "voicemail_notification_ringtone_"

.field private static final VOICEMAIL_NOTIFICATION_VIBRATION_SHARED_PREFS_KEY_PREFIX:Ljava/lang/String; = "voicemail_notification_vibrate_"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRingTonePreference(Landroid/content/Context;)Landroid/net/Uri;
    .locals 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;->migrateVoicemailRingtoneSettingsIfNeeded(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    invoke-static {}, Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;->getVoicemailRingtoneSharedPrefsKey()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    const-string/jumbo v1, "voiceMail"

    invoke-static {v1, p0}, Lcom/android/internal/telephony/util/NotificationChannelController;->getChannel(Ljava/lang/String;Landroid/content/Context;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;->getRingTonePreference(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public static getVibrationPreference(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;->migrateVoicemailVibrationSettingsIfNeeded(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    invoke-static {}, Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;->getVoicemailVibrationSharedPrefsKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private static getVoicemailRingtoneSharedPrefsKey()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "voicemail_notification_ringtone_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getVoicemailVibrationSharedPrefsKey()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "voicemail_notification_vibrate_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isVibrationEnabled(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v1, "voiceMail"

    invoke-static {v1, p0}, Lcom/android/internal/telephony/util/NotificationChannelController;->getChannel(Ljava/lang/String;Landroid/content/Context;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;->getVibrationPreference(Landroid/content/Context;)Z

    move-result v1

    goto :goto_0
.end method

.method private static migrateVoicemailRingtoneSettingsIfNeeded(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 6

    invoke-static {}, Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;->getVoicemailRingtoneSharedPrefsKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v4, "button_voicemail_notification_ringtone_key"

    invoke-interface {p1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "button_voicemail_notification_ringtone_key"

    const/4 v5, 0x0

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "button_voicemail_notification_ringtone_key"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    return-void
.end method

.method private static migrateVoicemailVibrationSettingsIfNeeded(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 7

    invoke-static {}, Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;->getVoicemailVibrationSharedPrefsKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v5, "button_voicemail_notification_vibrate_key"

    invoke-interface {p1, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "button_voicemail_notification_vibrate_key"

    const/4 v6, 0x0

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string/jumbo v6, "button_voicemail_notification_vibrate_when_key"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    const-string/jumbo v5, "button_voicemail_notification_vibrate_when_key"

    invoke-interface {p1, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "button_voicemail_notification_vibrate_when_key"

    const-string/jumbo v6, "never"

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "always"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string/jumbo v6, "button_voicemail_notification_vibrate_key"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    return-void
.end method

.method public static setRingtoneUri(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;->getVoicemailRingtoneSharedPrefsKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public static setVibrationEnabled(Landroid/content/Context;Z)V
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;->getVoicemailVibrationSharedPrefsKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
