.class public final Lcom/android/internal/telephony/uicc/CsimFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "CsimFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "CsimFH"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    return-void
.end method


# virtual methods
.method protected getEFPath(I)Ljava/lang/String;
    .locals 2

    sparse-switch p1, :sswitch_data_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "3F007F105F3A"

    return-object v1

    :sswitch_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->isSelectTelecomDF()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "3F007F10"

    return-object v1

    :cond_0
    :sswitch_1
    const-string/jumbo v1, "3F007FFF"

    return-object v1

    :sswitch_2
    const-string/jumbo v1, "3F007F105F3C"

    return-object v1

    :cond_1
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x4f20 -> :sswitch_2
        0x4f21 -> :sswitch_2
        0x4f22 -> :sswitch_2
        0x6f22 -> :sswitch_1
        0x6f28 -> :sswitch_1
        0x6f31 -> :sswitch_1
        0x6f32 -> :sswitch_1
        0x6f3a -> :sswitch_1
        0x6f3b -> :sswitch_1
        0x6f3c -> :sswitch_0
        0x6f40 -> :sswitch_1
        0x6f41 -> :sswitch_1
        0x6f44 -> :sswitch_1
        0x6f47 -> :sswitch_1
        0x6f4d -> :sswitch_1
        0x6f5a -> :sswitch_1
        0x6f74 -> :sswitch_1
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "CsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "CsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
