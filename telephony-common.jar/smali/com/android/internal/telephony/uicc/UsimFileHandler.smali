.class public final Lcom/android/internal/telephony/uicc/UsimFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "UsimFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "UsimFH"


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

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UsimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

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
    const-string/jumbo v1, "3F007FFF5F3D"

    return-object v1

    :sswitch_3
    const-string/jumbo v1, "3F007F105F3A"

    return-object v1

    :sswitch_4
    const-string/jumbo v1, "3F007FFF5F50"

    return-object v1

    :sswitch_5
    const-string/jumbo v1, "3F007F43"

    return-object v1

    :sswitch_6
    const-string/jumbo v1, "3F00"

    return-object v1

    :cond_1
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x2ff0 -> :sswitch_6
        0x4f22 -> :sswitch_2
        0x4f30 -> :sswitch_3
        0x4f55 -> :sswitch_2
        0x4f84 -> :sswitch_4
        0x6f02 -> :sswitch_5
        0x6f05 -> :sswitch_1
        0x6f11 -> :sswitch_1
        0x6f13 -> :sswitch_1
        0x6f14 -> :sswitch_1
        0x6f15 -> :sswitch_1
        0x6f16 -> :sswitch_1
        0x6f17 -> :sswitch_1
        0x6f18 -> :sswitch_1
        0x6f31 -> :sswitch_1
        0x6f38 -> :sswitch_1
        0x6f3b -> :sswitch_1
        0x6f3c -> :sswitch_0
        0x6f3e -> :sswitch_1
        0x6f3f -> :sswitch_1
        0x6f40 -> :sswitch_1
        0x6f42 -> :sswitch_1
        0x6f46 -> :sswitch_1
        0x6f49 -> :sswitch_1
        0x6f4b -> :sswitch_1
        0x6f4c -> :sswitch_1
        0x6f4e -> :sswitch_1
        0x6f60 -> :sswitch_1
        0x6f61 -> :sswitch_1
        0x6f62 -> :sswitch_1
        0x6f7b -> :sswitch_1
        0x6fad -> :sswitch_1
        0x6fc5 -> :sswitch_1
        0x6fc6 -> :sswitch_1
        0x6fc7 -> :sswitch_1
        0x6fc8 -> :sswitch_1
        0x6fc9 -> :sswitch_1
        0x6fca -> :sswitch_1
        0x6fcb -> :sswitch_1
        0x6fcd -> :sswitch_1
        0x6fd9 -> :sswitch_1
        0x6fdc -> :sswitch_1
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "UsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "UsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
